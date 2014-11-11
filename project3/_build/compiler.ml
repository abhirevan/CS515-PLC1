(* compiler.ml *)
(* A compiler for simple arithmetic expressions. *)

(******************************************************************************)

open Printf
open Ast
open X86simplified   

(* Note that Ast has similarly named constructors that must be
              disambiguated.  For example: Ast.Shl vs. X86simplified.Shl *)

(* Parse an AST from a preexisting lexbuf. 
 * The filename is used to generate error messages.
*)
let parse (filename : string) (buf : Lexing.lexbuf) : exp =
  try
    Lexer.reset_lexbuf filename buf;
    Parser.toplevel Lexer.token buf
  with Parsing.Parse_error ->
    failwith (sprintf "Parse error at %s."
        (Range.string_of_range (Lexer.lex_range buf)))

let loc0l=stack_offset(0l)
let loc4l = stack_offset(4l)
(*let incrEsp = Add(Imm 4l, esp) *)
let cmpEax = Cmp(loc0l, eax)
let setEax1 = Mov(Imm 0l, eax)
let mov0lEcx = Mov(loc0l, ecx)

   
let binop_exp (oper:binop) : insn list =
	let op_variant = 
		begin match oper with
			| Plus 	-> Add(loc0l, eax) :: []
			| Times -> Imul(loc0l, Eax) :: []
			| Minus -> Sub(loc0l, eax) :: []
			| Eq    -> Setb(Eq,eax) ::setEax1:: cmpEax :: []
			| Neq   -> Setb(NotEq,eax) ::setEax1:: cmpEax :: []
			| Lt    -> Setb(Slt,eax) ::setEax1:: cmpEax :: []
			| Lte   -> Setb(Sle,eax) ::setEax1:: cmpEax :: []
			| Gt    -> Setb(Sgt,eax) ::setEax1:: cmpEax :: []
			| Gte   -> Setb(Sge,eax) ::setEax1:: cmpEax :: []
			| And   -> And(loc0l, eax) :: []
			| Or    -> Or(loc0l, eax) :: []
			| Shl   -> Shl(ecx,eax) ::mov0lEcx:: [] 
			| Shr   -> Shr(ecx,eax)::mov0lEcx :: []
			| Sar   -> Sar(ecx,eax)::mov0lEcx :: []
		end in 
			let incrEsp = Add(Imm 4l, esp)::[] in
				incrEsp @  op_variant 

	
let unop_exp (oper: unop) : insn list = 
	let op_variant = 
		begin match oper with
			| Neg   -> Neg(eax) :: []
			| Lognot -> Setb(Eq,eax) ::setEax1:: Cmp(Imm 0l, eax)::[]
			| Not    -> Not(eax) :: []
		end in
			let incrEsp = Add(Imm 4l, esp)::[] in
				incrEsp @  op_variant 
 
     
let rec emit_exp (e:exp) (stream : insn list) : insn list = 
begin
	match e with 
	| Cint i -> Mov (Imm i, eax) :: stream
    | Arg -> Mov (edx, eax) :: stream
    | Binop (op, l_exp, r_exp) -> (binop_exp op) @ (evaluate_binop_exp l_exp r_exp stream)
    | Unop (op, u_exp) -> (unop_exp op) @ (evaluate_unop_exp u_exp stream)
end
and evaluate_binop_exp (l_exp: exp) (r_exp:exp) (stream: insn list) =
		let right_stream = (Push eax) :: (emit_exp r_exp stream) in
			emit_exp l_exp right_stream
and evaluate_unop_exp (u_exp: exp) (stream: insn list) = (Push eax) :: (emit_exp u_exp stream)
			

(* Builds a globally-visible X86 instruction block that acts like the C fuction:

   int program(int X) { return <expression>; }

   Follows cdecl calling conventions and platform-specific name mangling policy. *)

let compile_exp (ast:exp) : Cunit.cunit =
	let block_name = (Platform.decorate_cdecl "program") in
		let init_data: insn list = Mov(loc4l, edx)::[] in
			let eval_ast : insn list = emit_exp ast [] in 
				let insns_list = List.rev ([Ret] @ eval_ast @ init_data ) in
					let main :X86simplified.insn_block  = { global = true; label = (mk_lbl_named block_name); insns = insns_list; } in
						let comp_code = Cunit.Code main in [comp_code]
									
