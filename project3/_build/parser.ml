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

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
open Ast;;
# 30 "parser.ml"
let yytransl_const = [|
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* X *);
  259 (* INT_CONST *);
  260 (* UN_BIT_NOT *);
  261 (* BIN_BIT_AND *);
  262 (* BIN_BIT_OR *);
  263 (* LPAREN *);
  264 (* RPAREN *);
  265 (* BIN_ADD *);
  266 (* MINUS *);
  267 (* BIN_MUL *);
  268 (* BIN_EQUAL *);
  269 (* BIN_NOTEQUAL *);
  270 (* BIN_LSHIFT *);
  271 (* BIN_ARSHIFT *);
  272 (* BIN_LRSHIFT *);
  273 (* BIN_LT *);
  274 (* BIN_LTE *);
  275 (* BIN_GT *);
  276 (* BIN_GTE *);
  277 (* UN_NOT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\003\000\003\000\004\000\004\000\005\000\005\000\
\005\000\006\000\006\000\006\000\006\000\006\000\007\000\007\000\
\007\000\007\000\008\000\008\000\008\000\009\000\009\000\010\000\
\010\000\010\000\010\000\011\000\011\000\011\000\000\000"

let yylen = "\002\000\
\002\000\001\000\003\000\001\000\003\000\001\000\003\000\003\000\
\001\000\003\000\003\000\003\000\003\000\001\000\003\000\003\000\
\003\000\001\000\003\000\003\000\001\000\003\000\001\000\002\000\
\002\000\002\000\001\000\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\029\000\028\000\000\000\000\000\000\000\000\000\
\031\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\
\000\000\023\000\027\000\025\000\000\000\026\000\024\000\001\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\030\000\003\000\
\005\000\007\000\008\000\010\000\011\000\012\000\013\000\000\000\
\000\000\015\000\016\000\017\000\022\000"

let yydgoto = "\002\000\
\009\000\010\000\011\000\012\000\013\000\014\000\015\000\016\000\
\017\000\018\000\019\000"

let yysindex = "\008\000\
\006\255\000\000\000\000\000\000\006\255\006\255\006\255\006\255\
\000\000\002\000\000\000\012\255\026\255\255\254\020\255\014\255\
\021\255\000\000\000\000\000\000\027\255\000\000\000\000\000\000\
\006\255\006\255\006\255\006\255\006\255\006\255\006\255\006\255\
\006\255\006\255\006\255\006\255\006\255\006\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\021\255\
\021\255\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\004\000\050\000\074\000\065\000\049\000\
\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\017\000\
\033\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\250\255\019\000\243\255\012\000\241\255\000\000\
\248\255\254\255\000\000"

let yytablesize = 338
let yytable = "\021\000\
\021\000\024\000\020\000\004\000\022\000\023\000\003\000\004\000\
\001\000\005\000\027\000\028\000\006\000\042\000\043\000\007\000\
\019\000\025\000\040\000\050\000\051\000\052\000\033\000\034\000\
\048\000\049\000\008\000\035\000\036\000\037\000\026\000\038\000\
\020\000\000\000\039\000\053\000\029\000\030\000\031\000\032\000\
\044\000\045\000\046\000\047\000\041\000\000\000\000\000\000\000\
\018\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\014\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\009\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\021\000\021\000\000\000\
\021\000\021\000\021\000\004\000\021\000\021\000\021\000\021\000\
\021\000\021\000\021\000\021\000\021\000\019\000\019\000\000\000\
\019\000\019\000\019\000\000\000\019\000\019\000\019\000\019\000\
\019\000\019\000\019\000\019\000\019\000\020\000\020\000\000\000\
\020\000\020\000\020\000\000\000\020\000\020\000\020\000\020\000\
\020\000\020\000\020\000\020\000\020\000\018\000\018\000\006\000\
\018\000\006\000\000\000\000\000\018\000\018\000\000\000\000\000\
\000\000\018\000\018\000\018\000\018\000\014\000\014\000\000\000\
\014\000\000\000\000\000\000\000\014\000\014\000\009\000\009\000\
\000\000\009\000"

let yycheck = "\006\000\
\000\000\000\000\005\000\000\000\007\000\008\000\001\001\002\001\
\001\000\004\001\012\001\013\001\007\001\027\000\028\000\010\001\
\000\000\006\001\025\000\035\000\036\000\037\000\009\001\010\001\
\033\000\034\000\021\001\014\001\015\001\016\001\005\001\011\001\
\000\000\255\255\008\001\038\000\017\001\018\001\019\001\020\001\
\029\000\030\000\031\000\032\000\026\000\255\255\255\255\255\255\
\000\000\000\000\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\000\000\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\005\001\006\001\255\255\
\008\001\009\001\010\001\008\001\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\005\001\006\001\255\255\
\008\001\009\001\010\001\255\255\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\005\001\006\001\255\255\
\008\001\009\001\010\001\255\255\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\005\001\006\001\006\001\
\008\001\008\001\255\255\255\255\012\001\013\001\255\255\255\255\
\255\255\017\001\018\001\019\001\020\001\005\001\006\001\255\255\
\008\001\255\255\255\255\255\255\012\001\013\001\005\001\006\001\
\255\255\008\001"

let yynames_const = "\
  EOF\000\
  "

let yynames_block = "\
  INT\000\
  X\000\
  INT_CONST\000\
  UN_BIT_NOT\000\
  BIN_BIT_AND\000\
  BIN_BIT_OR\000\
  LPAREN\000\
  RPAREN\000\
  BIN_ADD\000\
  MINUS\000\
  BIN_MUL\000\
  BIN_EQUAL\000\
  BIN_NOTEQUAL\000\
  BIN_LSHIFT\000\
  BIN_ARSHIFT\000\
  BIN_LRSHIFT\000\
  BIN_LT\000\
  BIN_LTE\000\
  BIN_GT\000\
  BIN_GTE\000\
  UN_NOT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Ast.exp) in
    Obj.repr(
# 39 "parser.mly"
           ( _1 )
# 232 "parser.ml"
               : Ast.exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'B1) in
    Obj.repr(
# 44 "parser.mly"
      ( _1 )
# 239 "parser.ml"
               : Ast.exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'B2) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'B1) in
    Obj.repr(
# 47 "parser.mly"
                    ( Binop (Or, _1, _3) )
# 248 "parser.ml"
               : 'B1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'B2) in
    Obj.repr(
# 48 "parser.mly"
      ( _1 )
# 255 "parser.ml"
               : 'B1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'B3) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'B2) in
    Obj.repr(
# 51 "parser.mly"
                     ( Binop (And, _1, _3) )
# 264 "parser.ml"
               : 'B2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'B3) in
    Obj.repr(
# 52 "parser.mly"
      ( _1 )
# 271 "parser.ml"
               : 'B2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'B4) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'B3) in
    Obj.repr(
# 55 "parser.mly"
                   ( Binop (Eq, _1, _3) )
# 280 "parser.ml"
               : 'B3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'B4) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'B3) in
    Obj.repr(
# 56 "parser.mly"
                      ( Binop (Neq, _1, _3) )
# 289 "parser.ml"
               : 'B3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'B4) in
    Obj.repr(
# 57 "parser.mly"
      ( _1 )
# 296 "parser.ml"
               : 'B3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'B5) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'B4) in
    Obj.repr(
# 60 "parser.mly"
                ( Binop (Lt, _1, _3) )
# 305 "parser.ml"
               : 'B4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'B5) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'B4) in
    Obj.repr(
# 61 "parser.mly"
                 ( Binop (Lte, _1, _3) )
# 314 "parser.ml"
               : 'B4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'B5) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'B4) in
    Obj.repr(
# 62 "parser.mly"
                ( Binop (Gt, _1, _3) )
# 323 "parser.ml"
               : 'B4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'B5) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'B4) in
    Obj.repr(
# 63 "parser.mly"
                 ( Binop (Gte, _1, _3) )
# 332 "parser.ml"
               : 'B4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'B5) in
    Obj.repr(
# 64 "parser.mly"
      ( _1 )
# 339 "parser.ml"
               : 'B4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'B6) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'B5) in
    Obj.repr(
# 67 "parser.mly"
                    ( Binop (Shl, _1, _3) )
# 348 "parser.ml"
               : 'B5))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'B6) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'B5) in
    Obj.repr(
# 68 "parser.mly"
                     ( Binop (Sar, _1, _3) )
# 357 "parser.ml"
               : 'B5))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'B6) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'B5) in
    Obj.repr(
# 69 "parser.mly"
                     ( Binop (Shr, _1, _3) )
# 366 "parser.ml"
               : 'B5))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'B6) in
    Obj.repr(
# 70 "parser.mly"
      ( _1 )
# 373 "parser.ml"
               : 'B5))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'B6) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'B7) in
    Obj.repr(
# 73 "parser.mly"
                 ( Binop (Plus, _1, _3) )
# 382 "parser.ml"
               : 'B6))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'B6) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'B7) in
    Obj.repr(
# 74 "parser.mly"
               ( Binop (Minus, _1, _3) )
# 391 "parser.ml"
               : 'B6))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'B7) in
    Obj.repr(
# 75 "parser.mly"
      ( _1 )
# 398 "parser.ml"
               : 'B6))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'B7) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'B8) in
    Obj.repr(
# 78 "parser.mly"
                 ( Binop (Times, _1, _3) )
# 407 "parser.ml"
               : 'B7))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'B8) in
    Obj.repr(
# 79 "parser.mly"
      ( _1 )
# 414 "parser.ml"
               : 'B7))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'B8) in
    Obj.repr(
# 82 "parser.mly"
             ( Unop (Lognot, _2) )
# 422 "parser.ml"
               : 'B8))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'B8) in
    Obj.repr(
# 83 "parser.mly"
                 ( Unop (Not, _2) )
# 430 "parser.ml"
               : 'B8))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Range.t) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'B8) in
    Obj.repr(
# 84 "parser.mly"
            ( Unop (Neg, _2) )
# 438 "parser.ml"
               : 'B8))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'B9) in
    Obj.repr(
# 85 "parser.mly"
      ( _1 )
# 445 "parser.ml"
               : 'B8))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Range.t) in
    Obj.repr(
# 88 "parser.mly"
       ( Arg )
# 452 "parser.ml"
               : 'B9))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Range.t * int32) in
    Obj.repr(
# 89 "parser.mly"
       ( Cint (snd _1) )
# 459 "parser.ml"
               : 'B9))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Range.t) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'B1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Range.t) in
    Obj.repr(
# 90 "parser.mly"
                    ( _2 )
# 468 "parser.ml"
               : 'B9))
(* Entry toplevel *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let toplevel (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.exp)
