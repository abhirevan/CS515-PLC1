open LibUtil
open Ast
open Ll
open X86simplified

(* 
 * Parse and AST from a lexbuf 
 * - the filename is used to generate error messages
 *)
let parse (filename : string) (buf : Lexing.lexbuf) : Ast.prog =
  try
    Lexer.reset_lexbuf filename buf;
    Parser.toplevel Lexer.token buf
  with Parsing.Parse_error ->
    failwithf  "Parse error at %s." (Range.string_of_range (Lexer.lex_range buf))


(* 
 * Compile a source binop in to an LL instruction.
 *)
let compile_binop (b : Ast.binop) : Ll.uid -> Ll.operand -> Ll.operand -> Ll.insn  =
  let ib b id op1 op2 = (Ll.Binop (id, b, op1, op2)) in
  let ic c id op1 op2 = (Ll.Icmp (id, c, op1, op2)) in
  match b with
  | Ast.Plus  -> ib Ll.Add
  | Ast.Times -> ib Ll.Mul
  | Ast.Minus -> ib Ll.Sub
  | Ast.And   -> ib Ll.And
  | Ast.Or    -> ib Ll.Or
  | Ast.Shl   -> ib Ll.Shl
  | Ast.Shr   -> ib Ll.Lshr
  | Ast.Sar   -> ib Ll.Ashr
  | Ast.Eq    -> ic Ll.Eq
  | Ast.Neq   -> ic Ll.Ne
  | Ast.Lt    -> ic Ll.Slt
  | Ast.Lte   -> ic Ll.Sle
  | Ast.Gt    -> ic Ll.Sgt
  | Ast.Gte   -> ic Ll.Sge
  
let compile_unop (u : Ast.unop) (i_uid: Ll.uid) (exp_uid : Ll.uid) : Ll.insn =
	begin match u with
	| Ast.Neg    -> (Ll.Binop (i_uid, Ll.Mul, Ll.Local exp_uid , Ll.Const (-1l)))
	| Ast.Lognot -> (Ll.Icmp  (i_uid, Ll.Eq,  Ll.Local exp_uid, Ll.Const (0l )))
	| Ast.Not 	 -> (Ll.Binop (i_uid, Ll.Xor, Ll.Local exp_uid, Ll.Const (-1l)))
	end


let rec compile_exp (ip_exp: Ast.exp) (curr_ctxt:Ctxt.t) : (Ll.insn list*Ll.uid) =
	begin match ip_exp with
	| Cint i -> let new_uid = Ll.gen_sym () in
				let const_insn = [Ll.Binop (new_uid,Ll.Add,Ll.Const 0l, Ll.Const i)] in
				(const_insn,new_uid)
	| Id s -> 	begin match Ctxt.lookup s curr_ctxt with
				| c_uid -> let new_uid = Ll.gen_sym () in 
									([Ll.Load (new_uid,Ll.Local c_uid)],new_uid)
				end
	| Binop (b, exp1, exp2)  -> 
		let (exp1_insns,exp1_uid) = compile_exp exp1 curr_ctxt in
		let (exp2_insns,exp2_uid) = compile_exp exp2 curr_ctxt in
		let new_uid = Ll.gen_sym () in
		let binop_insns = compile_binop b new_uid (Ll.Local exp1_uid) (Ll.Local exp2_uid) in
		let bin_insns = exp1_insns @ exp2_insns @ [binop_insns] in
		(bin_insns,new_uid)	
	| Unop (u, exp1) -> 
		let (exp1_insns,exp1_uid) = compile_exp exp1 curr_ctxt in
		let new_uid = Ll.gen_sym () in
		let unop_insns = compile_unop u new_uid exp1_uid in
		let un_insns = exp1_insns @ [unop_insns] in
		(un_insns,new_uid)	
	end

let complile_stmt_assign (l_sym_str: string) (ass_exp: Ast.exp) (ip_ctxt : Ctxt.t) : (Ll.insn list)= 
	let l_uid = Ctxt.lookup l_sym_str ip_ctxt in
		let exp_insn_lst, exp_uid = compile_exp ass_exp ip_ctxt in
			(exp_insn_lst @ [Ll.Store(Ll.Local(exp_uid), Ll.Local(l_uid))])



let rec compile_stmt (curr_stmt: Ast.stmt) (ip_ctxt : Ctxt.t) (entry_lbl: Ll.lbl):  Ll.bblock list*Ll.lbl  = 
	let ret_lbl = X86simplified.mk_lbl () in 
	begin match curr_stmt with
		| Assign (l_sym,ass_exp) -> let stmt_insns= begin match l_sym with 
													| Ast.Var l_sym_str -> complile_stmt_assign l_sym_str ass_exp ip_ctxt 
													end in
									let ret_bblock = [{label= entry_lbl; insns= stmt_insns ;terminator= Ll.Br(ret_lbl);}] in
										(ret_bblock,ret_lbl)
		| If (cond_exp,then_stmt,else_stmt1) -> 	let c_exp_insns, c_uid = compile_exp cond_exp ip_ctxt in
													let then_lbl = X86simplified.mk_lbl ()  in
													let then_bblocks,then_ret_lbl = compile_stmt then_stmt ip_ctxt then_lbl in
														begin match else_stmt1 with
																| None -> 	let ret_bblock = [{label= entry_lbl; insns= c_exp_insns ;terminator= Ll.Br(then_lbl);}] @ then_bblocks in
																			(ret_bblock,then_ret_lbl) 
		
																| Some else_stmt ->	let else_lbl = X86simplified.mk_lbl ()  in
																						let else_bblocks,else_ret_lbl = compile_stmt else_stmt ip_ctxt else_lbl in
																							let temp_bblock = [{label= entry_lbl; insns= c_exp_insns ;terminator= Ll.Cbr (Ll.Local (c_uid), then_lbl, else_lbl) }] @ then_bblocks @ else_bblocks in
																							let ret_lbl = X86simplified.mk_lbl ()  in
																							let dummy_then_ret_bblock = [{label= then_ret_lbl; insns= [] ;terminator= Ll.Br(ret_lbl);} ] in
																							let dummy_else_ret_bblock = [{label= else_ret_lbl; insns= [] ;terminator= Ll.Br(ret_lbl);} ] in
																							let ret_bblock = temp_bblock @ dummy_then_ret_bblock @ dummy_else_ret_bblock in 
																								(ret_bblock,ret_lbl)
														end
		| While (cond_exp,loop_stmt) -> let c_exp_insns, c_uid = compile_exp cond_exp ip_ctxt in
										let loop_true_lbl = X86simplified.mk_lbl () in
										let ret_lbl = X86simplified.mk_lbl () in
										let cond_bblock = 
											[{label= entry_lbl; insns= c_exp_insns ;terminator= Ll.Cbr (Ll.Local (c_uid), loop_true_lbl, ret_lbl) }] in
										let loop_stmt_bblocks,loop_ret_lbl = compile_stmt loop_stmt ip_ctxt loop_true_lbl in
										let loop_dummy_ret_bblock = 
											[{label= loop_ret_lbl; insns= [] ;terminator= Ll.Br(entry_lbl);}] in
										let ret_bblock = cond_bblock @ loop_stmt_bblocks @ loop_dummy_ret_bblock in
											(ret_bblock,ret_lbl)
		| For (vdecls,cond_exp1,for_stmt1,loop_stmt) -> 
			let vdecl_bblock,new_ctxt,vdecl_ret_lbl = compile_vdecl_lst vdecls ip_ctxt entry_lbl in
			let ret_lbl = X86simplified.mk_lbl () in
			let for_etc_bblocks,for_etc_ret_lbl = 	begin match cond_exp1,for_stmt1 with
																| None,None -> 	let for_etc_bblock_ret_lbl =  X86simplified.mk_lbl () in
																				let for_etc_bblock = 
																					[{label= vdecl_ret_lbl; insns= [] ;terminator= Ll.Br(for_etc_bblock_ret_lbl);}] in
																				(for_etc_bblock,for_etc_bblock_ret_lbl)
																| Some cond_exp,None -> 
																	let c_exp_ret_lbl =  X86simplified.mk_lbl () in
																	let c_exp_insns, c_uid = compile_exp cond_exp new_ctxt in
																	let cond_bblock = 
																		[{label= vdecl_ret_lbl; insns= c_exp_insns ;terminator= Ll.Cbr (Ll.Local (c_uid), c_exp_ret_lbl, ret_lbl) }] in
																	(cond_bblock,c_exp_ret_lbl)
													
																| None, Some  for_stmt ->
																	let for_stmt_bblocks,for_stmt_ret_lbl = compile_stmt for_stmt new_ctxt vdecl_ret_lbl in
																	(for_stmt_bblocks,for_stmt_ret_lbl)
																	
																| Some cond_exp, Some for_stmt ->
																	let c_exp_ret_lbl =  X86simplified.mk_lbl () in
																	let c_exp_insns, c_uid = compile_exp cond_exp new_ctxt in
																	let cond_bblock = 
																		[{label= vdecl_ret_lbl; insns= c_exp_insns ;terminator= Ll.Cbr (Ll.Local (c_uid), c_exp_ret_lbl, ret_lbl) }] in
																	let for_stmt_bblocks,for_stmt_ret_lbl = compile_stmt for_stmt new_ctxt c_exp_ret_lbl in
																	let ret_bblocks = cond_bblock @ for_stmt_bblocks in
																		(ret_bblocks,for_stmt_ret_lbl)
													end in
			let loop_stmt_bblocks,loop_stmt_ret_lbl = compile_stmt loop_stmt new_ctxt for_etc_ret_lbl in
			let loop_dummy_bblock = [{label= loop_stmt_ret_lbl; insns= [] ;terminator= Ll.Br(vdecl_ret_lbl);}] in
			let ret_bblocks = [vdecl_bblock] @ for_etc_bblocks @ loop_stmt_bblocks @ loop_dummy_bblock in 
				(ret_bblocks,ret_lbl)	
				
		| Block b -> let bblocks, new_ctxt, blk_ret_lbl=  compile_block b ip_ctxt entry_lbl in
						(bblocks, blk_ret_lbl)
															
	end 
														
and compile_stmt_lst (stmt_lst: Ast.stmt list) (ip_ctxt : Ctxt.t)  (entry_lbl: Ll.lbl) :  Ll.bblock list* Ll.lbl =
		let left_rec_stmt_lst (bb_list,e_lbl: Ll.bblock list*Ll.lbl ) (st: Ast.stmt)  =
			let s_bb,s_lbl = compile_stmt st ip_ctxt e_lbl in ((bb_list @ s_bb),s_lbl) in
		let stmt_bblock_lst,ret_bblock_lst_lbl = 
			List.fold_left left_rec_stmt_lst ([] , entry_lbl) stmt_lst in
				(stmt_bblock_lst,ret_bblock_lst_lbl) 
				
				
and left_rec_vdecl_lst (alloca_insns,exp_insns,store_insns,old_ctxt : Ll.insn list*Ll.insn list*Ll.insn list*Ctxt.t) (vardecl : Ast.var_decl) :
(Ll.insn list*Ll.insn list*Ll.insn list*Ctxt.t) =
	let var_id = vardecl.v_id in
	let int_exp = vardecl.v_init in
			let new_ctxt,new_uid = Ctxt.alloc var_id old_ctxt in
			let alloca_insns_blk = alloca_insns @ [Ll.Alloca(new_uid)] in
				let exp_insn_lst, exp_uid = compile_exp int_exp old_ctxt in
				let exp_insns_blk = exp_insns @ exp_insn_lst in
					let store_insns_blk = store_insns @ [Ll.Store(Ll.Local(exp_uid), Ll.Local(new_uid))] in
						(alloca_insns_blk,exp_insns_blk,store_insns_blk,new_ctxt)
			
			
and compile_vdecl_lst (var_decl_lst : Ast.var_decl list) (ip_ctxt : Ctxt.t) (entry_lbl: Ll.lbl) : Ll.bblock*Ctxt.t*Ll.lbl = 
	let alloca_insns_blk,exp_insns_blk,store_insns_blk,new_ctxt = 
		List.fold_left left_rec_vdecl_lst ([],[],[],ip_ctxt) var_decl_lst in 
			let vdecl_isns = alloca_insns_blk@exp_insns_blk@store_insns_blk in
				let ret_lbl = X86simplified.mk_lbl () in
					let ret_bblock = {label= entry_lbl; insns=vdecl_isns ;terminator= Ll.Br(ret_lbl);} in (ret_bblock,new_ctxt,ret_lbl)


and compile_block ((ip_var_decl_lst, ip_stmt_lst): Ast.block) (ip_ctxt: Ctxt.t) (entry_lbl: Ll.lbl) : (Ll.bblock list*Ctxt.t*Ll.lbl) =  
	let vdecl_bblock,new_ctxt,ret_vdecl_lbl = compile_vdecl_lst ip_var_decl_lst ip_ctxt entry_lbl in
		let  stmt_bblock_lst,ret_bblock_lst_lbl = compile_stmt_lst ip_stmt_lst new_ctxt ret_vdecl_lbl in
			(vdecl_bblock :: stmt_bblock_lst , new_ctxt,ret_bblock_lst_lbl)

let compile_prog ((block, ret):Ast.prog) : Ll.prog =
	let ll_entry_lbl = X86simplified.mk_lbl () in
			let c_bblock_lst, c_blk_ctxt, c_ret_lbl = compile_block block Ctxt.empty ll_entry_lbl in
				let c_ret_insn_lst,c_ret_uid = compile_exp ret c_blk_ctxt in
					let ret_operand = Ll.Local(c_ret_uid) in
						let ll_end_bblock = {label= c_ret_lbl; insns= c_ret_insn_lst;terminator= Ret(ret_operand);} in
							{ll_cfg = c_bblock_lst @ [ll_end_bblock];ll_entry = ll_entry_lbl}
