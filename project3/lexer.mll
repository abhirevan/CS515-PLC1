(** Author: Abhijit Shanbhag **)
(** CS515 **)

{
  open Lexing
  open Parser
  open Range
  
  exception Lexer_error of Range.t * string

  let pos_of_lexpos (p:Lexing.position) : pos =
    mk_pos (p.pos_lnum) (p.pos_cnum - p.pos_bol)
    
  let mk_lex_range (p1:Lexing.position) (p2:Lexing.position) : Range.t =
    mk_range p1.pos_fname (pos_of_lexpos p1) (pos_of_lexpos p2)

  let lex_range lexbuf : Range.t = mk_lex_range (lexeme_start_p lexbuf)
      (lexeme_end_p lexbuf)

  let reset_lexbuf (filename:string) lexbuf : unit =
    lexbuf.lex_curr_p <- {
      pos_fname = filename;
      pos_cnum = 0;
      pos_bol = 0;
      pos_lnum = 1;
    }
    
  (* Boilerplate to define exceptional cases in the lexer. *)
  let unexpected_char lexbuf (c:char) : 'a =
    raise (Lexer_error (lex_range lexbuf,
        Printf.sprintf "Unexpected character: '%c'" c))

}

(* Basic regular expressions for the tokens of this grammar *)
let lowercase = ['a'-'z']
let uppercase = ['A'-'Z']
let character = uppercase | lowercase
let whitespace = ['\t' ' ' '\r' '\n']
let digit = ['0'-'9']
let int_const = digit+


(* Declare your aliases (let foo = regex) and rules here. *)


rule token = parse
	| eof 					{ EOF }
	| 'X' 					{ X (lex_range lexbuf) }
	| whitespace+ 			{ token lexbuf }  (* skip whitespace *)
	| int_const as i		{ INT (lex_range lexbuf, Int32.of_string i)}
	| '+'					{ BIN_ADD (lex_range lexbuf)}
	| '-'					{ MINUS (lex_range lexbuf)}
	| '*'					{ BIN_MUL (lex_range lexbuf)}
	| "=="					{ BIN_EQUAL (lex_range lexbuf)}
	| "<<"					{ BIN_LSHIFT (lex_range lexbuf)}
	| ">>"					{ BIN_ARSHIFT (lex_range lexbuf)}
	| ">>>"					{ BIN_LRSHIFT (lex_range lexbuf)}
	| "!="					{ BIN_NOTEQUAL (lex_range lexbuf)}
	| "<"					{ BIN_LT (lex_range lexbuf)}
	| "<="					{ BIN_LTE (lex_range lexbuf)}
	| ">"					{ BIN_GT (lex_range lexbuf)}
	| ">="					{ BIN_GTE (lex_range lexbuf)}
	| "!"					{ UN_NOT (lex_range lexbuf)}
	| '~'					{ UN_BIT_NOT (lex_range lexbuf)}
	| '&'					{ BIN_BIT_AND (lex_range lexbuf)}
	| '|' 					{ BIN_BIT_OR (lex_range lexbuf)}
	| '('         			{ LPAREN (lex_range lexbuf) }
	| ')'         			{ RPAREN (lex_range lexbuf) }
	| _ as c { unexpected_char lexbuf c }
  

