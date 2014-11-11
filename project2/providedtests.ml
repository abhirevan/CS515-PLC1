open Assert
open X86interpreter
open X86simplified
open Gradedtests
(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let provided_tests : suite = [
Test ("Greatest common divider",[("GCD", run_test 16l
      [(mk_insn_block (mk_lbl_named "gcd") [
      Push (ebp);
      Mov (esp, ebp);
      Mov ((stack_offset 12l), eax);
      Mov ((stack_offset 8l), ebx);
      Jmp (Lbl (mk_lbl_named "gcd_recurse"));
      Ret
    ]); 
    (mk_insn_block (mk_lbl_named "greater_than") [
      Sub (eax, ebx);
      Call (Lbl (mk_lbl_named "gcd_recurse"));
      Ret
    ]);
 (mk_insn_block (mk_lbl_named "gcd_recurse") [
      Cmp ((Imm 0l),ebx);
      J (NotEq, (mk_lbl_named "compare"));
      Pop ebp;
      Ret;
    ]); 
 (mk_insn_block (mk_lbl_named "compare") [
      Cmp (eax, ebx);
      J (Sgt, (mk_lbl_named "greater_than"));
      J (Slt, (mk_lbl_named "Less_than"));
      Ret
    ]); 
 (mk_insn_block (mk_lbl_named "Less_than") [
      Sub (ebx, eax);
      Call (Lbl (mk_lbl_named "gcd_recurse"));
      Ret
    ]); 

     (mk_insn_block (mk_lbl_named "main") [
      Push (Imm 16l);
      Push (Imm 32l);
      Call (Lbl (mk_lbl_named "gcd"));
      Add ((Imm 8l), esp);
      Ret;
	   ])
])	
]);
Test ("Power function",[("Power", run_test 128l
      [(mk_insn_block (mk_lbl_named "power") [
      Push (ebp);
      Mov (esp, ebp);
      Mov ((stack_offset 12l), eax);
      Mov ((stack_offset 12l), ebx);
      Mov ((stack_offset 8l),ecx);
      Call (Lbl (mk_lbl_named "power_recurse"));
      Ret
    ]); 
    (mk_insn_block (mk_lbl_named "power_recurse") [
      Cmp ((Imm 1l),ecx);
      J (NotEq, (mk_lbl_named "power_mul"));
      Pop ebp;
      Ret;
    ]); 
     (mk_insn_block (mk_lbl_named "power_mul") [
     Imul (ebx,Eax);
      Jmp (Lbl (mk_lbl_named "counter"));
     Ret
    ]);
 (mk_insn_block (mk_lbl_named "counter") [
      Sub ((Imm 1l), ecx);
      Jmp (Lbl (mk_lbl_named "power_recurse"));
      Ret
    ]);
     (mk_insn_block (mk_lbl_named "main") [
      Push (Imm 2l);
      Push (Imm 7l);
      Call (Lbl (mk_lbl_named "power"));
      Add ((Imm 8l), esp);
      Ret;
	   ])
])	
]);

Test ("Reminder",[("Rem", run_test 2l
      [(mk_insn_block (mk_lbl_named "remainder") [
      Push (ebp);
      Mov (esp, ebp);
      Mov ((stack_offset 12l), eax);
      Mov ((stack_offset 8l), ebx);
      Jmp (Lbl (mk_lbl_named "rem_recurse"));
      Ret
    ]); 
    (mk_insn_block (mk_lbl_named "iterate") [
      Sub (ebx, eax);
      Call (Lbl (mk_lbl_named "recurse1"));
      Ret
    ]);
     (mk_insn_block (mk_lbl_named "recurse1") [
     Call (Lbl (mk_lbl_named "compare"));
      J (Sge, (mk_lbl_named "iterate")); 
     Ret
    ]);
 (mk_insn_block (mk_lbl_named "rem_recurse") [
      Cmp ((Imm 0l),eax);
      J (NotEq, (mk_lbl_named "recurse1"));
      Pop ebp;
      Ret;
    ]); 
     (mk_insn_block (mk_lbl_named "compare") [
     Cmp (ebx,eax);
      Ret
    ]);
     (mk_insn_block (mk_lbl_named "main") [
      Push (Imm 128l);
      Push (Imm 21l);
      Call (Lbl (mk_lbl_named "remainder"));
      Add ((Imm 8l), esp);
      Ret;
	   ])
])	
])] 
   
  
  
 
