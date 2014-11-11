open Assert
open X86interpreter
open X86simplified
open Gradedtests
(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let provided_tests : suite = [
  Test ("Student-Provided Big Test for Part II",[("Sum", run_test 15l
      [(mk_insn_block (mk_lbl_named "sum") [
      Push (ebp);
      Mov (esp, ebp);
      Mov ((stack_offset 8l), eax);
      Cmp (Imm 0l, eax);
      J (Sgt, (mk_lbl_named "sum_recurse"));
      Mov (Imm 0l, eax);
      Pop (ebp);
      Ret
    ]); 
     (mk_insn_block (mk_lbl_named "sum_recurse") [
      Sub (Imm 1l, eax);
      Push (eax);
      Call (Lbl (mk_lbl_named "sum"));
      Add ((Imm 4l), esp);
      Mov ((stack_offset 8l), ebx);
      Add (ebx, eax);
      Pop (ebp);
      Ret
    ]); 
     (mk_insn_block (mk_lbl_named "main") [
      Push (Imm 5l);
      Call (Lbl (mk_lbl_named "sum"));
      Add ((Imm 5l), esp);
      Ret;
    ])
])	
]);
Test ("GCD Test",[("Gcd", run_test 512l
      [(mk_insn_block (mk_lbl_named "gcd") [
      Push (ebp);
      Mov (esp, ebp);
      Mov ((stack_offset 12l), eax);
      Mov ((stack_offset 8l), ebx);
      Jmp (Lbl (mk_lbl_named "gcd_recurse"));
      Ret
    ]); 
 (mk_insn_block (mk_lbl_named "gcd_recurse") [
      Cmp ((Imm 0l),ebx);
      J (NotEq, (mk_lbl_named "gcd_re1"));
      Pop ebp;
      Ret;
    ]); 
 (mk_insn_block (mk_lbl_named "gcd_re1") [
      Cmp (eax, ebx);
      J (Sgt, (mk_lbl_named "gcd_gt"));
      J (Slt, (mk_lbl_named "gcd_lt"));
      Ret
    ]); 
     (mk_insn_block (mk_lbl_named "gcd_gt") [
      Sub (eax, ebx);
      Call (Lbl (mk_lbl_named "gcd_recurse"));
      Ret
    ]);
 (mk_insn_block (mk_lbl_named "gcd_lt") [
      Sub (ebx, eax);
      Call (Lbl (mk_lbl_named "gcd_recurse"));
      Ret
    ]); 

     (mk_insn_block (mk_lbl_named "main") [
      Push (Imm 512l);
      Push (Imm 1024l);
      Call (Lbl (mk_lbl_named "gcd"));
      Add ((Imm 8l), esp);
      Ret;
	   ])
])	
]);
Test ("Remainder Test",[("Rem", run_test 2l
      [(mk_insn_block (mk_lbl_named "dtob") [
      Push (ebp);
      Mov (esp, ebp);
      Mov ((stack_offset 12l), eax);
      Mov ((stack_offset 8l), ebx);
      Jmp (Lbl (mk_lbl_named "d2b_recurse"));
      Ret
    ]); 
 (mk_insn_block (mk_lbl_named "d2b_recurse") [
      Cmp ((Imm 0l),eax);
      J (NotEq, (mk_lbl_named "d2b_re1"));
      Pop ebp;
      Ret;
    ]); 
 (mk_insn_block (mk_lbl_named "d2b_re1") [
      Cmp (ebx,eax);
      J (Sle, (mk_lbl_named "gcd_gt")); 
     Ret
    ]);
 (mk_insn_block (mk_lbl_named "gcd_gt") [
      Sub (ebx, eax);
      Call (Lbl (mk_lbl_named "d2b_re1"));
      Ret
    ]);

     (mk_insn_block (mk_lbl_named "main") [
      Push (Imm 128l);
      Push (Imm 21l);
      Call (Lbl (mk_lbl_named "dtob"));
      Add ((Imm 8l), esp);
      Ret;
	   ])
])	
])] 
   
  
  
 
