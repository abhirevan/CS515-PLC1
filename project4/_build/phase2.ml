open Ll
open X86simplified
open LibUtil


let (+@) = Int32.add
let (-@) = Int32.sub
let (/@) = Int32.div
let ( *@ ) = Int32.mul


let prologue = Push (ebp) :: Mov (esp,ebp) :: Sub (Imm (800l),esp)  :: []
let epilogue =  Add(Imm (800l),esp)::Mov(esp,ebp)::Pop(ebp) :: X86simplified.Ret :: []


let get_stack_addr (index: int32) : X86simplified.operand = 
	let offset = index *@ -4l in  
	let ind = 
		{ 	i_base = Some (Ebp);          
			i_iscl = None; 
			i_disp = Some (DImm offset)
		} in (Ind ind)

    let rec index_of (u : uid) (l : uid list) : int32 = 
        begin match l with
        | [] -> failwith ("u not found in memory")
        | h::tl -> 	if ( h = u) then 1l else (1l +@ index_of u tl)
        end 

let find_index (u : Ll.uid) (l : Ll.uid list) : (int32) = 
	index_of u l
  


let get_uid_from_list (uid_list: Ll.uid list) (curr_insn: Ll.insn) =
	begin match curr_insn with
		| Binop (u,_,_,_)  -> uid_list @ [u]
		| Load (u,_) -> uid_list @ [u]
		| Alloca u  -> uid_list @ [u]
		| Icmp (u,_,_,_) -> uid_list @ [u]
		| _ -> uid_list
	end


let get_uid_from_bblock  (uid_list: Ll.uid list) (i_bblock: Ll.bblock) : (Ll.uid list) = 
	let bb_insn_list = i_bblock.insns in
	let ret_uid_list = List.fold_left get_uid_from_list uid_list bb_insn_list in
		ret_uid_list

        
let compile_operand (op: Ll.operand) (uid_list: Ll.uid list): X86simplified.operand =
  begin match op with
    | Ll.Const i-> X86simplified.Imm i
    | Ll.Local u -> (get_stack_addr (find_index u uid_list))
  end

let compile_bblock_insn ((uid_list,insn_accum): Ll.uid list *X86simplified.insn list ) (bb_insn: Ll.insn) : (Ll.uid list *X86simplified.insn list) = 
	let c_insn = 
		begin match bb_insn with 
			       | Binop (u, b, o1, o2) ->
						let loc_offset = get_stack_addr (find_index u uid_list) in 
						let op1_insn = Mov (compile_operand o2 uid_list, ecx) in
						let op2_insn = Mov (compile_operand o1 uid_list, eax) in
						let binop_insn = begin match b with
											| Ll.Add  -> Add (ecx,eax)
											| Ll.Sub  -> Sub (ecx,eax)
											| Ll.Mul  -> Imul(ecx,Eax)
											| Ll.Shl  -> Shl (ecx,eax)
											| Ll.Lshr -> Shr (ecx,eax)
											| Ll.Ashr -> Sar (ecx,eax)
											| Ll.And  -> And (ecx,eax)
											| Ll.Or   -> Or  (ecx,eax)
											| Ll.Xor  -> Xor (ecx,eax)
										end in
						(op1_insn :: op2_insn :: binop_insn :: [(Mov (eax, loc_offset))])
					| Alloca u -> []
					| Load (u, o) -> 
						let loc_offset = get_stack_addr (find_index u uid_list) in
						let oper_insn = Mov (compile_operand o uid_list, ecx) :: Mov (ecx, loc_offset) :: [] in oper_insn

					| Store (o1, o2) -> 
						let store_insn = Mov ( compile_operand o1 uid_list, ecx) :: Mov (ecx,compile_operand o2 uid_list ) :: [] in store_insn
						
					| Icmp (u, c, o1, o2) -> 
						let loc_offset = get_stack_addr (find_index u uid_list) in
						let icmp_op = begin match c with
										| Ll.Eq   -> Eq
										| Ll.Ne   -> NotEq
										| Ll.Slt   -> Slt
										| Ll.Sle   -> Sle
										| Ll.Sgt   -> Sgt
										| Ll.Sge   -> Sge
									end in
						let cmpr_insn = Mov (compile_operand o1 uid_list,ebx) :: Mov (compile_operand o2 uid_list,ecx) ::
										Mov ( Imm 0l , loc_offset) :: Cmp (ecx, ebx) :: Setb ((icmp_op), loc_offset) :: [] in cmpr_insn
		end in
			(uid_list,  insn_accum @c_insn) 


let compile_bblock_insn_list (i_bblock: Ll.bblock) (uid_list: Ll.uid list) : (X86simplified.insn list) = 
	let bb_insns = i_bblock.insns in
	let uid_list, c_insn = List.fold_left compile_bblock_insn (uid_list,[]) bb_insns in c_insn
	

let compile_bblock_terminators (i_bblock: Ll.bblock) (uid_list: Ll.uid list) : (X86simplified.insn list) = 
	begin match i_bblock.terminator with
      | Ll.Ret op  -> [Mov ( compile_operand op uid_list,eax)] @ epilogue
      | Ll.Br l   ->  [Jmp (Lbl l)]
      | Cbr (op, l1, l2) ->	Cmp (Imm 0l, compile_operand op uid_list ) :: J (Eq, l2) :: J (NotEq, l1) :: []
	end
 


let compile_block ((blk_isns, uid_list) : insn_block list * uid list) (i_bblock: Ll.bblock) : (X86simplified.insn_block list * Ll.uid list)  = 
	let u_uid_list = get_uid_from_bblock uid_list i_bblock in
	let bblock_isns = compile_bblock_insn_list i_bblock u_uid_list in
	let bblock_terminators = compile_bblock_terminators i_bblock u_uid_list in  
	let blk_insn = 
		{ 	global = false;
			label = i_bblock.label;
			insns = bblock_isns @ bblock_terminators;
		} in 
	let ret_blk_insn = blk_isns @ [blk_insn] in (ret_blk_insn,u_uid_list)
	

let compile_bblocks (i_bblocks: Ll.bblock list) : (X86simplified.insn_block list) = 
	let blk_isns, uid_list = List.fold_left compile_block ([],[]) i_bblocks in blk_isns 


let rec convert_to_cunit (insn_blocks :X86simplified.insn_block list): (Cunit.cunit) = 
	begin match insn_blocks with 
	| 	[] -> []
	|	h::tl -> Cunit.Code h :: convert_to_cunit tl
	end


let compile_prog (prog : Ll.prog) : Cunit.cunit =
	let block_name = (Platform.decorate_cdecl "program") in 
	let ll_bblocks = prog.ll_cfg in
    let entry_lbl= prog.ll_entry in
	let prologue_insns = prologue @ [Jmp (Lbl entry_lbl)] in
	let entry_block = 
		{ 	global = true;
			label = mk_lbl_named block_name;
            insns = prologue_insns
        } in 
    let prologue_cunit = Cunit.Code entry_block in 
	let c_bblock_cunits = convert_to_cunit (compile_bblocks ll_bblocks) in
	[prologue_cunit] @ c_bblock_cunits 
	
	
