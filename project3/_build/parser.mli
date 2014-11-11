type token =
  | EOF
  | INT of (Range.t * int32)
  | X of (Range.t)
  | INT_CONST of (Range.t * string)
  | UN_BIT_NOT of (Range.t)
  | BIN_BIT_AND of (Range.t)
  | BIN_BIT_OR of (Range.t)
  | LPAREN of (Range.t)
  | RPAREN of (Range.t)
  | BIN_ADD of (Range.t)
  | MINUS of (Range.t)
  | BIN_MUL of (Range.t)
  | BIN_EQUAL of (Range.t)
  | BIN_NOTEQUAL of (Range.t)
  | BIN_LSHIFT of (Range.t)
  | BIN_ARSHIFT of (Range.t)
  | BIN_LRSHIFT of (Range.t)
  | BIN_LT of (Range.t)
  | BIN_LTE of (Range.t)
  | BIN_GT of (Range.t)
  | BIN_GTE of (Range.t)
  | UN_NOT of (Range.t)

val toplevel :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.exp
