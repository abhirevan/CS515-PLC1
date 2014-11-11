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

   
let evaluate_binop (oper:binop) (insn_stream:insn list) : insn list =
	begin match oper with
		| Plus -> Add(ecx, eax) :: insn_stream
		| Times -> Imul(ecx, Eax) :: insn_stream
		| Minus -> Sub(ecx, eax) :: insn_stream
		| Eq    (* binary equality *)
		| Neq   (* binary inequality *)
		| Lt    (* binary signed less-than *)
		| Lte   (* binary signed less-than or equals *)
		| Gt    (* binary signed greater-than *)
		| Gte   (* binary signed greater-than or equals *)
		| And   -> Sub(ecx, eax) :: insn_stream
		| Or    -> Sub(ecx, eax) :: insn_stream
		| Shl   -> Sub(ecx, eax) :: insn_stream
		| Shr   -> Sub(ecx, eax) :: insn_stream
		| Sar   -> Sub(ecx, eax) :: insn_stream
	end
 

     
let rec emit_exp (e:exp) (stream : insn list) : insn list = 
begin
	match e with 
	| Cint i -> Mov (Imm i, eax) :: stream
    | Arg -> Mov (edx, eax) :: stream     
end


(* Builds a globally-visible X86 instruction block that acts like the C fuction:

   int program(int X) { return <expression>; }

   Follows cdecl calling conventions and platform-specific name mangling policy. *)

let compile_exp (ast:exp) : Cunit.cunit =
	let block_name = (Platform.decorate_cdecl "program") in
		let init_insn: insn list = Mov(edx, stack_offset(4l))::[] in
			let rev_insn_list: insn list = Ret :: (emit_exp ast init_insn) in
				let insns_list = List.rev (rev_insn_list) in
					let main :X86simplified.insn_block  = { global = true; label = (mk_lbl_named block_name); insns = insns_list; } in
						let comp_code = Cunit.Code main in [comp_code]
									
