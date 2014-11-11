(* CIS515 Fall 2014 graded tests *)
(* Author: Prof. Santosh Nagarakatte  *)

(* Do NOT modify this file -- we will overwrite it with our *)
(* own version when we test your project.                   *)

(* These tests will be used to grade your assignment *)


open Assert
open Hellocaml

(* Test suite for hellocaml.ml *)

(*** Part 1 Tests ***)
let part1_tests : suite = [
  
  (* assert_eq asserts that the two values are equal *)
  GradedTest ("Problem1-1", 3, [
    ("pieces", assert_eq pieces 10);  

  (* assert_eqf f v 
   * asserts that applying a unit-accepting function f 
   * returns the value v *)
    ("fourthpower0", assert_eqf (fun () -> fourthpower 0) 0);
    ("fourthpower1", assert_eqf (fun () -> fourthpower 1) 1);
    ("fourthpower2", assert_eqf (fun () -> fourthpower 2) 16);
    ("fourthpower3", assert_eqf (fun () -> fourthpower (-1)) (1));
    ("fourthpower/D1", assert_eqf (fun () -> fourthpower (-2)) 16);
    ("fourthpower/D2", assert_eqf (fun () -> fourthpower 10) 10000);
    ("fourthpower/D3", assert_eqf (fun () -> fourthpower (-3)) 81);
  ]);
  
  
  
  GradedTest ("Problem1-2", 3, [
    ("cents_of1", assert_eqf (fun () -> cents_of 0 0 0 0) 0);
    ("cents_of2", assert_eqf (fun () -> cents_of 1 1 1 1) 41);
    ("cents_of3", assert_eqf (fun () -> cents_of 1 2 3 4) 64);
    ("cents_of4", assert_eqf (fun () -> cents_of 1 0 0 0) 25);
    ("cents_of5", assert_eqf (fun () -> cents_of 0 1 0 0) 10);
    ("cents_of6", assert_eqf (fun () -> cents_of 0 0 1 0) 5);
    ("cents_of7", assert_eqf (fun () -> cents_of 0 0 0 1) 1);
    ("cents_of/D1", assert_eqf (fun () -> cents_of 3 2 1 4) 104);
    ("cents_of/D2", assert_eqf (fun () -> cents_of 3 2 0 4) 99);
    ("cents_of/D3", assert_eqf (fun () -> cents_of 4 10 20 100) 400);
  ]);
  
  GradedTest ("Problem1-3", 3, [
    
  ]);
]

(*** Part 2 Tests ***)
let part2_tests : suite = [
  GradedTest ("Problem2-1", 3, [
    ("third_of_three1", assert_eqf (fun () -> third_of_three triple) "some string");
    ("third_of_three2", assert_eqf (fun () -> third_of_three (1,2,3)) 3);
    ("third_of_three3", assert_eqf (fun () -> third_of_three ((),"a",false)) false);
    ("third_of_three/D1", assert_eqf (fun () -> third_of_three ("", [], (1,2))) (1,2));
    ("third_of_three/D2", assert_eqf (fun () -> third_of_three ((1,2,3),4,5)) 5);
    ("third_of_three/D3", assert_eqf (fun () -> third_of_three (true,false,(1,2,3))) (1,2,3));
  ]);
  
  GradedTest ("Problem2-1Manual", 3, [
    
  ]);
  
  GradedTest ("Problem2-2", 5, 
    let id (x:int) : int = x in
    let const3 (x:string) : int = 3 in [
    ("compose_pair1", assert_eqf (fun () -> compose_pair (id, const3) "a") 3);
    ("compose_pair2", assert_eqf (fun () -> compose_pair (fst, pair_up) "a") "a");
    ("compose_pair3", assert_eqf (fun () -> compose_pair (double, fst) (pair_up 5)) 10); 
    ("compose_pair/D1", assert_eqf (fun () -> compose_pair ((fun x -> x+1), (fun x -> x * 2)) 10) 21);
    ("compose_pair/D2", assert_eqf (fun () -> compose_pair ((fun _ -> false), (fun _ -> true)) ()) false);
    ("compose_pair/D3", assert_eqf (fun () -> compose_pair ((fun x -> (x,x)), (fun (x,y) -> x)) (1,2)) (1,1));
  ]);

  GradedTest ("Problem2-3", 5,
    let id (x:int) : int = x in
    let const3 (x:string) : int = 3 in [
    ("apply_pair1", assert_eqf (fun () -> apply_pair (const3, id) "a") 3);
    ("apply_pair2", assert_eqf (fun () -> apply_pair (pair_up, fst) "a") "a");
    ("apply_pair3", assert_eqf (fun () -> apply_pair (fst, double) (pair_up 5)) 10); 
    ("apply_pair/D1", assert_eqf (fun () -> apply_pair ((fun x -> x+1), (fun x -> x * 2)) 10) 22);
    ("apply_pair/D2", assert_eqf (fun () -> apply_pair ((fun _ -> false), (fun _ -> true)) ()) true);
    ("apply_pair/D3", assert_eqf (fun () -> apply_pair ((fun x -> (x,x)), (fun (x,y) -> x)) (1,2)) (1,2));
  ]);
             

]

(*** Part 3 Tests ***)
let part3_tests : suite = [
  GradedTest ("Problem3-1", 5, [
    ("list_to_mylist1", assert_eqf (fun () -> list_to_mylist []) Nil);
    ("list_to_mylist2", assert_eqf (fun () -> list_to_mylist [1]) (Cons(1,Nil)));
    ("list_to_mylist3", assert_eqf (fun () -> list_to_mylist ["a";"b"]) (Cons("a",Cons("b",Nil))));
    ("list_to_mylist4", assert_eqf (fun () -> mylist_to_list (list_to_mylist [1;2;3;4;5])) [1;2;3;4;5]);
    ("list_to_mylist/D1", assert_eqf (fun () -> list_to_mylist [5;6]) (Cons(5, Cons(6,Nil))));
    ("list_to_mylist/D2", assert_eqf (fun () -> list_to_mylist [[1]]) (Cons([1],Nil)));
    ("list_to_mylist/D3", assert_eqf (fun () -> list_to_mylist [true;false;true]) (Cons(true,Cons(false,Cons(true,Nil)))));
  ]);
  
  GradedTest ("Problem3-2", 5, [
    ("append1", assert_eqf (fun () -> append [] []) []);
    ("append2", assert_eqf (fun () -> append [] [1]) [1]);
    ("append3", assert_eqf (fun () -> append [1] []) [1]);
    ("append4", assert_eqf (fun () -> append [1] [1]) [1;1]);
    ("append5", assert_eqf (fun () -> append [1;2] [3]) [1;2;3]);
    ("append6", assert_eqf (fun () -> append [1] [2;3]) [1;2;3]);
    ("append7", assert_eqf (fun () -> append [true] [false]) [true;false]);
    ("append/D1", assert_eqf (fun () -> append [] [1;2;3]) [1;2;3]);
    ("append/D2", assert_eqf (fun () -> append [3;2;1] []) [3;2;1]);
    ("append/D3", assert_eqf (fun () -> append [6;5;4] [1;2;3]) [6;5;4;1;2;3]);
  ]);
  
  GradedTest ("Problem3-3", 5, [
    ("rev1", assert_eqf (fun () -> rev []) []);
    ("rev2", assert_eqf (fun () -> rev [1]) [1]);
    ("rev3", assert_eqf (fun () -> rev [1;2]) [2;1]);
    ("rev4", assert_eqf (fun () -> rev ["a";"b"]) ["b";"a"]);
    ("rev/D1", assert_eqf (fun () -> rev [3;2;1]) [1;2;3]);
    ("rev/D2", assert_eqf (fun () -> rev [1;2;3;4;5;6]) [6;5;4;3;2;1]);
    ("rev/D3", assert_eqf (fun () -> rev [true;false;true]) [true;false;true]);
  ]);
  
  GradedTest ("Problem3-4", 5, [
    ("rev_t1", assert_eqf (fun () -> rev_t []) []);
    ("rev_t2", assert_eqf (fun () -> rev_t [1]) [1]);
    ("rev_t3", assert_eqf (fun () -> rev_t [1;2]) [2;1]);
    ("rev_t4", assert_eqf (fun () -> rev_t ["a";"b"]) ["b";"a"]);
    ("rev_t/D1", assert_eqf (fun () -> rev_t [3;2;1]) [1;2;3]);
    ("rev_t/D2", assert_eqf (fun () -> rev_t [1;2;3;4;5;6]) [6;5;4;3;2;1]);
    ("rev_t/D3", assert_eqf (fun () -> rev_t [true;false;true]) [true;false;true]);    
  ]);
  
  GradedTest ("Problem3-4Manual", 5, [
    
  ]);
  
  GradedTest ("Problem3-5", 5, [
    ("insert1", assert_eqf (fun () -> insert 1 []) [1]);
    ("insert2", assert_eqf (fun () -> insert 1 [1]) [1]);
    ("insert3", assert_eqf (fun () -> insert 1 [2]) [1;2]);
    ("insert4", assert_eqf (fun () -> insert 1 [0]) [0;1]);
    ("insert5", assert_eqf (fun () -> insert 1 [0;2]) [0;1;2]);
    ("insert6", assert_eqf (fun () -> insert "b" ["a";"c"]) ["a";"b";"c"]);
    ("insert/D1", assert_eqf (fun () -> insert "a" ["a"]) ["a"]);
    ("insert/D2", assert_eqf (fun () -> insert 6 [1;2;3;4;5;6]) [1;2;3;4;5;6]);
    ("insert/D3", assert_eqf (fun () -> insert 3 [1;2;4;5;6]) [1;2;3;4;5;6]);
  ]); 
  
  GradedTest ("Problem3-6", 5, [
    ("union1", assert_eqf (fun () -> union [] []) []);
    ("union2", assert_eqf (fun () -> union [1] []) [1]);
    ("union3", assert_eqf (fun () -> union [] [1]) [1]);
    ("union4", assert_eqf (fun () -> union [1] [1]) [1]);
    ("union5", assert_eqf (fun () -> union [1] [2]) [1;2]);
    ("union6", assert_eqf (fun () -> union [2] [1]) [1;2]);
    ("union7", assert_eqf (fun () -> union [1;3] [0;2]) [0;1;2;3]);
    ("union8", assert_eqf (fun () -> union [0;2] [1;3]) [0;1;2;3]);
    ("union/D1", assert_eqf (fun () -> union [1;3;5] [2;4;6]) [1;2;3;4;5;6]);
    ("union/D2", assert_eqf (fun () -> union ["a";"c";"e"] ["b";"c";"d"]) ["a";"b";"c";"d";"e"]);
    ("union/D3", assert_eqf (fun () -> union ["b";"f"] []) ["b";"f"]);
  ]);

  GradedTest ("Problem3-7", 5, [
    ("msort1", assert_eqf (fun () -> msort []) []);
    ("msort2", assert_eqf (fun () -> msort [1]) [1]);
    ("msort3", assert_eqf (fun () -> msort [3;2;1]) [1;2;3]);
    ("msort4", assert_eqf (fun () -> msort [3;2;1;4]) [1;2;3;4]);
    ("msort/D1", assert_eqf (fun () -> msort ["c";"d";"m";"a"]) ["a";"c";"d";"m"]);
    ("msort/D2", assert_eqf (fun () -> msort [11;200;4;19;19]) [4;11;19;19;200]);
    ("msort/D3", assert_eqf (fun () -> msort ["a";"b";"b";"a"]) ["a";"a";"b";"b"]); 
  ]);
]


(*** Part 4 Tests ***)

let e4 = Neg (Add (Const 0l, Neg (Var "x")))   (* -(0+x) *)
let e5 = Mult (Add (Const 1l, Neg (Const 1l)), Var "x")  (* (1+(-1)) * x *)
let e6 = Add (Mult (Var "x", Var "y"), Neg (Mult (Const 3l, Var "y"))) (* (x*y) + -(3*y) *)
let e7 = Add (Var "x", Var "x")
let e8 = Mult(e6, e7)  (* ((x*y) - (3*y))*(x+x) *)
let e9 = Neg(Add(Var "z", Neg e8))

let part4_tests : suite = [
  GradedTest ("Problem4-1", 5, [
    ("vars_of1", assert_eqf (fun () -> vars_of e1) []);
    ("vars_of2", assert_eqf (fun () -> vars_of e2) ["x"]);
    ("vars_of3", assert_eqf (fun () -> vars_of e3) ["x"; "y"]);
    ("vars_of/D1", assert_eqf (fun () -> vars_of e7) ["x"]);
    ("vars_of/D2", assert_eqf (fun () -> vars_of e8) ["x"; "y"]);
    ("vars_of/D3", assert_eqf (fun () -> vars_of e9) ["x";"y";"z"]);
  ]);
  
  GradedTest ("Problem4-2", 5, [
    ("lookup1", assert_eqf (fun () -> lookup "x" ctxt1) 3l);
    ("lookup2", assert_eqf (fun () -> lookup "x" ctxt2) 2l);
    ("lookup3", assert_eqf (fun () -> lookup "y" ctxt2) 7l);
    ("lookup4", (fun () -> try ignore (lookup "y" ctxt1); failwith "bad lookup" with Not_found -> ()));
    ("lookup5", assert_eqf (fun () -> lookup "x" [("x", 1l);("x", 2l)]) 1l);
    ("lookup/D1", assert_eqf (fun () -> lookup "z" [("x",0l);("z",5l);("x",2l);("z",3l)]) 5l);
    ("lookup/D2", assert_eqf (fun () -> lookup "a" [("x",0l);("c",1l);("A",2l);("aa",3l);("a",4l);("b",5l)]) 4l);
    ("lookup/D3", (fun () -> try ignore (lookup "abc" [("a",0l);("b",0l);("c",0l)]); failwith "bad lookup" with Not_found -> ()));
  ]);
  
  GradedTest ("Problem4-3", 5, [
    ("interpret1", assert_eqf (fun () -> interpret ctxt1 e1) 6l);
    ("interpret2", assert_eqf (fun () -> interpret ctxt1 e2) 4l);
    ("interpret3", (fun () -> try ignore (interpret ctxt1 e3); failwith "bad interpret" with Not_found -> ()));
    ("interpret/D1", assert_eqf (fun () -> interpret [] (Const 0l)) 0l);
    ("interpret/D2", assert_eqf (fun () -> interpret [("x",10l);("x",0l)] e7) 20l);
    ("interpret/D3", (fun () -> try ignore (interpret [("a",0l)] (Mult(Const 0l, Var "x"))); failwith "bad interpet" with Not_found -> ()));
  ]);
  
  GradedTest ("Problem4-3harder", 5, [
    ("interpret/D4", assert_eqf (fun () -> interpret ctxt1 e4) 3l);
    ("interpret/D5", assert_eqf (fun () -> interpret ctxt1 e5) 0l);
    ("interpret/D6", assert_eqf (fun () -> interpret ctxt2 e6) (-7l));
  ]);
  
  GradedTest ("Problem4-4", 5, [
    ("optimize1", assert_eqf (fun () -> optimize (Add(Const 3l, Const 4l))) (Const 7l));
    ("optimize2", assert_eqf (fun () -> optimize (Mult(Const 0l, Var "x"))) (Const 0l));
    ("optimize3", assert_eqf (fun () -> optimize (Add(Const 3l, Mult(Const 0l, Var "x")))) (Const 3l));
    ("optimize/D1", assert_eqf (fun () -> optimize (Mult(Const 1l, Var "abc"))) (Var "abc"));
    ("optimize/D2", assert_eqf (fun () -> optimize (Add(Var "x", Const 0l))) (Var "x"));
    ("optimize/D2", assert_eqf (fun () -> optimize (Mult(Var "X", Const 1l))) (Var "X"));
  ]);
  
  GradedTest ("Problem4-4harder", 5, [
    ("optimize/D4", assert_eqf (fun () -> optimize (Neg(Add(Const 4l, Const 6l)))) (Const (-10l)));
    ("optimize/D5", assert_eqf (fun () -> optimize e4) (Var "x"));
    ("optimize/D6", assert_eqf (fun () -> optimize e5) (Const 0l));
  ]);
  
  GradedTest ("Problem4-4hardest", 5, [
    ("optimize/D7", assert_eqf (fun () -> optimize (Mult(Add(Const 1l, Mult(Var "x", Const 0l)), Var "y"))) (Var "y"));
    ("optimize/D8", assert_eqf (fun () -> optimize (Neg(Neg(Neg(Var "x"))))) (Neg(Var "x")));
    ("optimize/D9", assert_eqf (fun () -> optimize (Mult(Var "x", Neg(Const 0l)))) (Const 0l));
  ]);
 
  GradedTest ("Problem5", 5, [
    ("compile/D1", assert_eqf (fun () -> run ctxt1 (compile e1)) 6l);
    ("compile/D2", assert_eqf (fun () -> run ctxt1 (compile e2)) 4l);
    ("compile/D3", (fun () -> try ignore (run ctxt1 (compile e3)); failwith "bad interpret" with Not_found -> ()));
    ("compile/D4", assert_eqf (fun () -> run ctxt2 (compile e8)) (-28l));
  ]);
]

let style_test : suite = [
  GradedTest ("StyleManual", 5, [
  
  ]);
]

let graded_tests : suite = 
  part1_tests @
  part2_tests @
  part3_tests @
  part4_tests @
  style_test
