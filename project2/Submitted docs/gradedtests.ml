open Assert
open X86simplified
open X86interpreter

(* Test suite for hellocaml.ml *)

(* Do NOT modify this file -- we will overwrite it with our *)
(* own version when we test your project.                   *)

(* These tests will be used to grade your assignment *)

let run_test (ans:int32) (code:X86simplified.insn_block list) () =
  let res = X86interpreter.run code in
    if res = ans then () else failwith (Printf.sprintf("Expected %lx got %lx") ans res)

let assert_bool (s:string) (b:bool) : unit =
  if b then () else failwith s

let map_addr_test =
  let test_sf addr () =
    try ignore (map_addr addr); 
      failwith "Should have raised X86_segmentation_fault"
    with 
      |	X86_segmentation_fault _ -> () 
      | _ -> failwith "Should have raised X86_segmentation_fault"
  in
  GradedTest("map_addr", 6,
	     [("map_addr1", assert_eqf (fun () -> map_addr 0xfffffffcl) 1023);
	      ("map_addr2", assert_eqf (fun () -> map_addr 0xfffff000l) 0);
	      ("map_addr3", assert_eqf (fun () -> map_addr 0xffffff08l) 962);
              ("map_addr4", test_sf 0xfffffffbl);
	      ("map_addr5", test_sf 0x00000000l);
	      ("map_addr6", test_sf 0xfffffffdl);
	      ("*map_addr7", test_sf 0xDEADBEEFl);
	      ("*map_addr8", test_sf 0xFFFFFFFFl);
	      ("*map_addr9", test_sf 0xFFFFF001l);
	      ("*map_addrA", assert_eqf (fun () -> map_addr 0xfffff004l) 1);
	      ("*map_addrB", assert_eqf (fun () -> map_addr 0xfffff100l) 64);
	      ("*map_addrC", assert_eqf (fun () -> map_addr 0xffffff00l) 960);
	      ])

let cnd_code_test = 
  let st = mk_init_state () in
  let ccs (fof,fsf,fzf) tru () =
    st.s_of <- fof; st.s_sf <- fsf; st.s_zf <- fzf;
    let allcc = [Eq;NotEq;Zero;NotZero;Sgt;Sle;Slt;Sge] in
    let fls = List.filter (fun i -> not (List.mem i tru)) allcc in
      List.iter (fun cc ->
		   assert_bool (Printf.sprintf "o:%b s:%b f:%b %s expected" fof fsf fzf
				  (string_of_ccode cc)) (condition_matches st cc)) tru;
      List.iter (fun cc ->
		   assert_bool (Printf.sprintf "o:%b s:%b f:%b %s !expected" fof fsf fzf
				  (string_of_ccode cc)) (not (condition_matches st cc))) fls
  in
    GradedTest("Condition Codes", 5,
	       [("ccs0", ccs (false,false,false) [NotEq;NotZero;Sgt;Sge]);
		("ccs1", ccs (false,false,true) [Eq;Zero;Sle;Sge]);
		("ccs2", ccs (false,true,false) [NotEq;NotZero;Sle;Slt]);
		("ccs3", ccs (false,true,true) [Eq;Zero;Sle;Slt]);   (* negative zero *)
		("*ccs4", ccs (true,false,false) [NotEq;NotZero;Slt;Sle]);
		("*ccs5", ccs (true,false,true) [Eq;Zero;Slt;Sle]);
		("*ccs6", ccs (true,true,false) [NotEq;NotZero;Sge;Sgt]);
		("*ccs7", ccs (true,true,true) [Eq;Zero;Sge;Sle]);   (* negative zero *)
		])


let st_test (s:string) (code:insn_block list) (f:x86_state -> bool) () =
  let st = mk_init_state () in
  let _ = interpret code st (mk_lbl_named "main") in
    if (f st) then () else failwith ("expected " ^ s)

let cc_test (s:string) (fof, fsf, fzf) (code:insn_block list) (f:x86_state -> bool) () =
  let st = {(mk_init_state ()) with s_of = fof; s_sf = fsf; s_zf = fzf} in
  let _ = interpret code st (mk_lbl_named "main") in
    if (f st) then () else failwith ("expected " ^ s)

let cs_test block (eof,esf,ezf) =
  cc_test (Printf.sprintf "OF:%b SF:%b ZF:%b" eof esf ezf)
    (not eof,not esf,not ezf) block
    (fun st -> st.s_of = eof && st.s_sf = esf && st.s_zf = ezf)
    
let cso_test mbbs eof =
  cc_test (Printf.sprintf "expected OF:%b" eof) (not eof,false,false) mbbs
    (fun st -> st.s_of = eof)

let csi_test mbbs =
  cc_test "expected TTT ccodes" 
    (true,true,true) mbbs
    (fun st -> st.s_of && st.s_sf && st.s_zf)

let factorial_test =  
  let fac_code = [(mk_insn_block (mk_lbl_named "fact") [
      Push (ebp);
      Mov (esp, ebp);
      Mov ((stack_offset 8l), eax);
      Cmp (Imm 0l, eax);
      J (Sgt, (mk_lbl_named "fact_recurse"));
      Mov (Imm 1l, eax);
      Pop (ebp);
      Ret
    ]); 
     (mk_insn_block (mk_lbl_named "fact_recurse") [
      Sub (Imm 1l, eax);
      Push (eax);
      Call (Lbl (mk_lbl_named "fact"));
      Add ((Imm 4l), esp);
      Mov ((stack_offset 8l), ebx);
      Imul (ebx, Eax);
      Pop (ebp);
      Ret
    ])]
  in GradedTest("Factorial", 10, 
   [("fact 4", run_test 24l
    ((mk_insn_block (mk_lbl_named "main") [
      Push (Imm 4l);
      Call (Lbl (mk_lbl_named "fact"));
      Add ((Imm 4l), esp);
      Ret
    ]) :: fac_code)
   );
   ("*fact 0", run_test 1l
     ((mk_insn_block (mk_lbl_named "main") [
      Push (Imm 0l);
      Call (Lbl (mk_lbl_named "fact"));
      Add ((Imm 4l), esp);
      Ret
    ]) :: fac_code)
   );
   ("*fact 10", run_test 3628800l
     ((mk_insn_block (mk_lbl_named "main") [
      Push (Imm 10l);
      Call (Lbl (mk_lbl_named "fact"));
      Add ((Imm 4l), esp);
      Ret
    ]) :: fac_code)
   )])

let fun_tests = 
  GradedTest("FunctionalityTests", 5,
  [("mov_ri",  
    st_test "eax=42" 
      [(mk_block "main" [
	  Mov (Imm 42l, eax);
	  Ret;
	])] 
      (fun state -> state.s_regs.(0) = 42l));


  ("add", 
   st_test "eax=ebx=*1023=1" 
     [(mk_block "main" [
	 Add (Imm 1l, eax);
	 Add (eax, ebx);
	 Add (ebx, stack_offset 0l);
	 Ret;
       ])] 
     (fun state -> 
	state.s_regs.(0) = 1l &&
        state.s_regs.(1) = 1l && 
	state.s_memory.(mem_size-1) = 1l));

  ("*mov_mi_1",
    st_test "*0=1; *2=2"
      [(mk_block "main" [
          Mov (Imm 2l, eax);
          Mov (Imm 1l, Ind{i_base = None; i_iscl = None; i_disp = Some (DImm 0xfffff000l)});
          Mov (Imm 2l, Ind{i_base = None; i_iscl = Some (Eax, 4l); i_disp = Some (DImm 0xfffff000l)});
          Ret;
        ])]
      (fun state -> 
        state.s_memory.(0) = 1l &&
        state.s_memory.(2) = 2l));

  ("*mov_mi_2",
    st_test "*0=1; *2=2; *1021=3; *1020=4"
      [(mk_block "main" [
          Mov (Imm 2l, eax);
          Mov (Imm 3l, Ind{i_base = Some Ebx; i_iscl = None; i_disp = Some (DImm (-12l))});
          Mov (Imm 2l, ebx);
          Mov (Imm 4l, Ind{i_base = Some Ebx; i_iscl = Some (Eax, 1l); i_disp = Some (DImm (-20l))});
          Ret;
        ])]
      (fun state -> 
        state.s_memory.(mem_size-3) = 3l &&
        state.s_memory.(mem_size-4) = 4l));

  ("*imul_rm",
    st_test "eax=C"
      [(mk_block "main" [
          Mov (Imm 4l, eax);
          Add (Imm 3l, Ind{i_base = Some Eax; i_iscl = None; i_disp = Some (DImm 0xfffffab8l)});
          Imul (Ind{i_base = None; i_iscl = None; i_disp = Some (DImm 0xfffffabcl)}, Eax);
          Ret;
        ])]
      (fun state -> 
        state.s_regs.(0) = 12l;
        ));
  ])

let insn_tests = 
  GradedTest("InstructionTests", 15, [
  ("mov_mr", st_test "*1022=42" [(mk_block "main"  [
      Mov (Imm 42l, eax);
      Mov (eax, stack_offset (-4l));
      Ret
    ])] 
     (fun state -> state.s_memory.(mem_size-2) = 42l)); 

  ("sub", st_test "eax=*1023=-1; ebx=1" [(mk_block "main"  [
      Sub (Imm 1l, eax);
      Sub (eax, ebx);
      Sub (ebx, stack_offset 0l);
      Ret;
    ])] 
     (fun state -> state.s_regs.(0) = -1l &&
        state.s_regs.(1) = 1l && state.s_memory.(mem_size-1) = -1l));

  ("and", st_test "eax=2 ebx=2 ecx=1 *1023=1" [(mk_block "main"  [
      Mov (Imm 2l, eax);
      Mov (Imm 3l, ebx);
      Mov (Imm 255l, ecx);
      Mov (Imm 1l , stack_offset 0l);
      And (eax, eax);
      And (Imm 2l, eax);
      And (eax, ebx);
      And (stack_offset 0l, ecx);
      Ret;
    ])] 
     (fun state ->
        state.s_regs.(0) = 2l &&
        state.s_regs.(1) = 2l &&
        state.s_regs.(2) = 1l &&
        state.s_memory.(mem_size-1) = 1l));

  ("neg", st_test "eax=-42 ebx=min_int32 *1023=24" [(mk_block "main"  [
      Mov (Imm 42l, eax);
      Mov (Imm (-24l), stack_offset 0l);
      Mov (Imm Int32.min_int, ebx);
      Neg eax;
      Neg (stack_offset 0l);
      Neg ebx;
      Ret;
    ])] 
     (fun state ->
        state.s_regs.(0) = (-42l) &&
        state.s_regs.(1) = Int32.min_int &&
        state.s_memory.(mem_size-1) = 24l
        ));

  ("*not", st_test "eax=3735928559" [(mk_block "main" [
      Mov (Imm 559038736l, eax);
      Not eax;
      Ret;
    ])]
    (fun state ->
      state.s_regs.(0) = 0xdeadbeefl));

  ("*or", st_test "eax=ecx=feeffeef" [(mk_block "main" [
      Mov (Imm 0xdeadbeefl, ecx);
      Or (Imm 0xbeefdeadl, ecx);
      Or (ecx, eax);
      Ret;
    ])]
    (fun state ->
        state.s_regs.(0) = 0xfeeffeefl &&
        state.s_regs.(2) = 0xfeeffeefl));

  ("*xor", st_test "eax=60429fbd; ecx=60426042" [(mk_block "main" [
      Mov (Imm 0xffffl, eax);
      Mov (Imm 0xdeadbeefl, ecx);
      Xor (Imm 0xbeefdeadl, ecx);
      Xor (ecx, eax);
      Ret;
    ])]
    (fun state ->
        state.s_regs.(0) = 0x60429fbdl &&
        state.s_regs.(2) = 0x60426042l));

  ("shl", st_test "eax = 4; *1023 = 16" [(mk_block "main"  [
      Mov (Imm 1l, eax);
      Mov (Imm 2l, stack_offset 0l);
      Mov (Imm 3l, ecx);
      Shl (Imm 2l, eax);
      Shl (ecx, stack_offset 0l);
      Ret;
    ])] 
     (fun state ->
        state.s_regs.(0) = 4l &&
        state.s_memory.(mem_size-1) = 16l
        ));

  ("*shr", st_test "eax=2; *1023=ffff000" [(mk_block "main" [
      Mov (Imm 8l, eax);
      Mov (Imm 0xffff000fl, stack_offset 0l);
      Mov (Imm 4l, ecx);
      Shr (Imm 2l, eax);
      Shr (ecx, stack_offset 0l);
      Ret;
    ])]
    (fun state ->
        state.s_regs.(0) = 2l &&
        state.s_memory.(mem_size-1) = 0xffff000l
      ));

  ("*sar", st_test "eax=2; *1023=fffff000" [(mk_block "main" [
      Mov (Imm 8l, eax);
      Mov (Imm 0xffff000fl, stack_offset 0l);
      Mov (Imm 4l, ecx);
      Sar (Imm 2l, eax);
      Sar (ecx, stack_offset 0l);
      Ret;
    ])]
    (fun state ->
        state.s_regs.(0) = 2l &&
        state.s_memory.(mem_size-1) = 0xfffff000l
      ));

  ("*setb_0", st_test "edx=abacad00, *1023=1" [(mk_block "main" [
      Mov (Imm 0xabacadbal, edx);
      Setb (Sle, edx);
      Setb (NotEq, stack_offset 0l);
      Ret;
    ])]
    (fun state ->
      state.s_regs.(3) = 0xabacad00l &&
      state.s_memory.(mem_size-1) = 1l));

  ("*setb_1", cc_test "eax=abacad01, *1023=0" (true,true,true) [(mk_block "main" [
      Mov (Imm 0xabacadbal, eax);
      Setb (Sle, eax);
      Setb (NotEq, stack_offset 0l);
      Ret;
    ])]
    (fun state ->
      state.s_regs.(0) = 0xabacad01l &&
      state.s_memory.(mem_size-1) = 0l));


  ("*lea", st_test "ecx = fffff000; edx=fffff008; esi=2; edi=14" [(mk_block "main" [
      Mov (Imm 2l, eax);
      Mov (Imm 3l, ebx);
      Lea ({i_base = None; i_iscl = None; i_disp = Some (DImm 0xfffff000l)}, Ecx);
      Lea ({i_base = None; i_iscl = Some (Eax, 4l); i_disp = Some (DImm 0xfffff000l)}, Edx);
      Lea ({i_base = Some Eax; i_iscl = None; i_disp = None}, Esi);
      Lea ({i_base = Some Eax; i_iscl = Some (Ebx, 4l); i_disp = None}, Edi);
      Ret;
    ])]
    (fun state ->
      state.s_regs.(2) = 0xfffff000l &&
      state.s_regs.(3) = 0xfffff008l &&
      state.s_regs.(4) = 2l &&
      state.s_regs.(5) = 14l));

  ("imul", st_test "eax=44" [(mk_block "main"  [
      Mov (Imm 2l, eax);
      Mov (Imm 22l, ebx);
      Imul (ebx, Eax);
      Ret;
    ])] 
     (fun state -> state.s_regs.(0) = 44l))        ;

  ("push", st_test "esp-4; s_mem.(1022)=2a" [(mk_block "main"  [
					   Push (Imm 42l);
					   Ret;
    ])] 
     (fun state -> state.s_regs.(7) = 0xFFFFFFFCl &&
        state.s_memory.(mem_size-2) = 0x2Al));

  ("pop", st_test "esp; eax=2a" [(mk_block "main"  [
      Add (Imm (-8l), esp);
      Mov (Imm (42l),  stack_offset 0l);
      Pop (eax);
      Ret;
    ])] 
     (fun state -> state.s_regs.(0) = 0x2al &&
        state.s_regs.(7) = 0xFFFFFFFCl));

  ("cmp", st_test "eax=4 ebx=0 *1023=2" [(mk_block "main"  [
      Mov (Imm 4l, eax);
      Mov (Imm 2l, stack_offset 0l);
      Cmp (Imm 1l, eax);
      Cmp (eax, ebx);
      Cmp (ebx, stack_offset 0l);
      Ret;
    ])] 
     (fun state -> state.s_regs.(0) = 4l &&
        state.s_regs.(1) = 0l && state.s_memory.(mem_size-1) = 2l))        ;


  ("*call/ret", st_test "eax=4" [
    (mk_block "main" [
      Call (Lbl (mk_lbl_named "good"));
      Add (Imm 1l, eax);
      Ret;
      ]);
    (mk_block "good" [
      Mov (Imm 3l, eax);
      Ret;
      Mov (Imm 100l, eax);
      ])
    ]
    (fun state ->
      state.s_regs.(0) = 4l));

  ("*jmp", st_test "eax=3" [
    (mk_block "main" [
      Jmp (Lbl (mk_lbl_named "good"));
      Add (Imm 10l, eax);
      Ret;
      ]);
    (mk_block "good" [
      Add (Imm 3l, eax);
      Ret;
      Add (Imm 100l, eax);
      Ret;
      ])
    ]
    (fun state ->
      state.s_regs.(0) = 3l));

  ("*jcc", cc_test "eax=1" (true,false,true) [
    (mk_block "main" [
      J (Sge, mk_lbl_named "bad");
      J (Sgt, mk_lbl_named "bad");
      J (Slt, mk_lbl_named "good");
      Ret;
      ]);
    (mk_block "bad" [
      Ret;
      ]);
    (mk_block "good" [
      Add (Imm 1l, eax);
      Ret;
      ]);
    ]
    (fun state ->
      state.s_regs.(0) = 1l));

	     ])


let cnd_set_tests =
  GradedTest("ConditionFlagSetTests", 10, [
  ("cc_add_1", cs_test [(mk_block "main" [
      Mov (Imm 0xFFFFFFFFl, eax);
      Add (Imm 1l, eax);
      Ret;
    ])] (false, false, true));

  ("cc_add_2", cs_test [(mk_block "main" [
      Mov (Imm 0xFFFFFFFFl, eax);
      Add (Imm 0xFFFFFFFFl, eax);
      Ret;
    ])] (false, true, false));

  ("cc_add_3", cs_test [(mk_block "main" [
      Mov (Imm 0x7FFFFFFFl, eax);
      Add (Imm 42l, eax);
      Ret;
    ])] (true, true, false));

  ("cc_add_4", cs_test [(mk_block "main" [
      Mov (Imm 0x90000000l, eax);
      Add (Imm 0xA0000000l, eax);
      Ret;
    ])] (true, false, false));

  ("*cc_add_5", cs_test [(mk_block "main" [
      Mov (Imm 100l, eax);
      Add (Imm (-100l), eax);
      Ret;
    ])] (false, false, true));

  ("*cc_add_6", cs_test [(mk_block "main" [
      Mov (Imm 0x80000000l, eax);
      Add (Imm 0x80000000l, eax);
      Ret;
    ])] (true, false, true));


  ("*cc_sub_1", cs_test [(mk_block "main" [
        Mov (Imm 0l, eax);
        Sub (Imm 0x80000000l, eax);
	Ret;
      ])] (true, true, false));

  ("*cc_sub_2", cs_test [(mk_block "main" [
        Mov (Imm 0x80000000l, eax);
        Sub (Imm 0l, eax);
	Ret;
      ])] (false, true, false));

  ("*cc_sub_3", cs_test [(mk_block "main" [
        Mov (Imm 0x80000000l, eax);
        Sub (Imm 0x80000000l, eax);
	Ret;
      ])] (false, false, true));

  ("*cc_sub_4", cs_test [(mk_block "main" [
        Mov (Imm 0x80000000l, eax);
        Sub (Imm 1l, eax);
	Ret;
      ])] (true, false, false));

  ("cc_neg_1", cs_test [(mk_block "main" [
      Mov (Imm (Int32.min_int), ebx);
      Neg (ebx);
      Ret;
    ])] (true, true, false));

  ("cc_neg_2", cs_test [(mk_block "main" [
      Mov ( Imm 1l, eax);
      Neg (eax);
      Ret;
    ])] (false, true, false));
    
  ("*cc_neg_3", cs_test [(mk_block "main" [
      Mov (Imm 0x80000000l, eax);
      Neg eax;
      Ret;
    ])] (true,true,false));

  ("cc_cmp_1", cs_test [(mk_block "main" [
        Mov (Imm 0l, eax);
        Cmp (Imm 0x80000000l, eax);
	Ret;
      ])] (true, true, false));

  ("cc_cmp_2", cs_test [(mk_block "main" [
        Mov (Imm 0x80000000l, eax);
        Cmp (Imm 0l, eax);
	Ret;
      ])] (false, true, false));

  ("*cc_cmp_3", cs_test [(mk_block "main" [
        Mov (Imm 0x80000000l, eax);
        Cmp (Imm 0x80000000l, eax);
	Ret;
      ])] (false, false, true));

  ("*cc_cmp_4", cs_test [(mk_block "main" [
        Mov (Imm 0x80000000l, eax);
        Cmp (Imm 1l, eax);
	Ret;
      ])] (true, false, false));

  ("cc_imul_1", cso_test [(mk_block "main" [
        Mov (Imm (-1l), eax);
        Imul (Imm (-1l), Eax);
	Ret;
      ])] false);

  ("*cc_imul_2", cso_test [(mk_block "main" [
        Mov (Imm 0x10000l, eax);
        Imul (Imm 0x10000l, Eax);
	Ret;
      ])] true);

  ("*cc_imul_3", cso_test [(mk_block "main" [
        Mov (Imm 100l, eax);
        Imul (Imm 100l, Eax);
	Ret;
      ])] false);

  ("cc_and_1", cs_test [(mk_block "main" [
      Mov (Imm 0x0F0F0F0Fl, eax);
      And (Imm 0xF0F0F0F0l, eax);
      Ret;
    ])] (false,false,true));

  ("*cc_and_2", cs_test [(mk_block "main" [
      Mov (Imm 0xDF0F0F0Fl, eax);
      And (Imm 0xD0000000l, eax);
      Ret;
    ])] (false,true,false));

  ("cc_or_1", cs_test [(mk_block "main" [
      Mov (Imm 0xFFFFFFFFl, eax);
      Or (Imm 0xF0F0F0F0l, eax);
      Ret;
    ])] (false,true,false));

  ("*cc_or_2", cs_test [(mk_block "main" [
      Mov (Imm 0l, eax);
      Or (Imm 0l, eax);
      Ret;
    ])] (false,false,true));

  ("*cc_xor_1", cs_test [(mk_block "main" [
      Mov (Imm 0x7FFFFFFFl, eax);
      Xor (Imm 0xF0F0F0F0l, eax);
      Ret;
    ])] (false,true,false));

  ("*cc_xor_2", cs_test [(mk_block "main" [
      Mov (Imm 0xFFFFFFFFl, eax);
      Xor (Imm 0xffffffffl, eax);
      Ret;
    ])] (false,false,true));


  ("*cc_sar_1", csi_test [(mk_block "main" [
      Mov (Imm 0xDEADBEEFl, eax);
      Sar (Imm 0l, eax);
      Ret;
    ])]);

  ("*cc_sar_2", cs_test [(mk_block "main" [
      Mov (Imm 0xDEADBEEFl, eax);
      Sar (Imm 1l, eax);
      Ret;
    ])]
    (false,true,false));

  ("*cc_sar_3", cc_test "OF:true SF:true ZF:false" (true,false,true) [(mk_block "main" [
      Mov (Imm 0xDEADBEEFl, eax);
      Sar (Imm 2l, eax);
      Ret;
    ])]
    (fun state -> state.s_of && state.s_sf && not state.s_zf));

  ("*cc_sar_4", cc_test "OF:false SF:true ZF:false" (false,false,true) [(mk_block "main" [
      Mov (Imm 0xDEADBEEFl, eax);
      Sar (Imm 2l, eax);
      Ret;
    ])]
    (fun state -> not state.s_of && state.s_sf && not state.s_zf));

  ("*cc_shl_1", csi_test [(mk_block "main" [
      Mov (Imm 0xDEADBEEFl, eax);
      Shl (Imm 0l, eax);
      Ret;
    ])]);

  ("*cc_shl_2", cc_test "OF:false SF:true ZF:false" (false,false,true) [(mk_block "main" [
      Mov (Imm (-1l), eax);
      Shl (Imm 1l, eax);
      Ret;
    ])]
    (fun state -> not state.s_of && state.s_sf && not state.s_zf));

  ("*cc_shl_3", cc_test "OF:true SF:true ZF:false" (true,false,true) [(mk_block "main" [
      Mov (Imm (-1l), eax);
      Shl (Imm 1l, eax);
      Ret;
    ])]
    (fun state -> state.s_of && state.s_sf && not state.s_zf));

  ("*cc_shl_4", cc_test "OF:false SF:false ZF:true" (false,true,false) [(mk_block "main" [
      Mov (Imm 0l, eax);
      Shl (Imm 1l, eax);
      Ret;
    ])]
    (fun state -> not state.s_of && not state.s_sf && state.s_zf));

  ("*cc_shl_5", cc_test "OF:true SF:false ZF:true" (true,true,false) [(mk_block "main" [
      Mov (Imm 0l, eax);
      Shl (Imm 1l, eax);
      Ret;
    ])]
    (fun state -> state.s_of && not state.s_sf && state.s_zf));

  ("*cc_shl_6", cs_test [(mk_block "main" [
      Mov (Imm 0x70000000l, eax);
      Shl (Imm 1l, eax);
      Ret;
    ])]
    (true,true,false));

  ("*cc_shl_7", cs_test [(mk_block "main" [
      Mov (Imm 0x80000000l, eax);
      Shl (Imm 1l, eax);
      Ret;
    ])]
    (true,false,true));

  ("*cc_shl_8", cc_test "OF:true SF:false ZF:false" (true,true,true) [(mk_block "main" [
      Mov (Imm 0xDEADBEEFl, eax);
      Shl (Imm 2l, eax);
      Ret;
    ])]
    (fun state -> state.s_of && not state.s_sf && not state.s_zf));

  ("*cc_shl_9", cc_test "OF:false SF:false ZF:false" (false,true,true) [(mk_block "main" [
      Mov (Imm 0xDEADBEEFl, eax);
      Shl (Imm 2l, eax);
      Ret;
    ])]
    (fun state -> not state.s_of && not state.s_sf && not state.s_zf));

  ("*cc_shr_1", csi_test [(mk_block "main" [
      Mov (Imm 0xDEADBEEFl, eax);
      Shr (Imm 0l, eax);
      Ret;
    ])]);

  ("*cc_shr_2", cs_test [(mk_block "main" [
      Mov (Imm 0x80000000l, eax);
      Shr (Imm 1l, eax);
      Ret;
    ])] (true,false,false));

  ("*cc_shr_3", cs_test [(mk_block "main" [
      Mov (Imm 0x7fffffffl, eax);
      Shr (Imm 1l, eax);
      Ret;
    ])] (false,false,false));

  ("*cc_shr_4", cs_test [(mk_block "main" [
      Mov (Imm 1l, eax);
      Shr (Imm 1l, eax);
      Ret;
    ])] (false,false,true));

  ("*cc_shr_5", cc_test "OF:false SF:false ZF:true" (false,true,false) [(mk_block "main" [
      Mov (Imm 2l, eax);
      Shr (Imm 2l, eax);
      Ret;
    ])] (fun state -> not state.s_of && not state.s_sf && state.s_zf));

  ("*cc_shr_6", cc_test "OF:true SF:false ZF:false" (true,true,true) [(mk_block "main" [
      Mov (Imm 6l, eax);
      Shr (Imm 2l, eax);
      Ret;
    ])] (fun state -> state.s_of && not state.s_sf && not state.s_zf));

  ("*csi_not", csi_test [(mk_block "main" [
      Not eax;
      Ret;
    ])]);

  ("csi_push", csi_test [(mk_block "main" [
      Push (Imm 0l);
      Ret;
    ])]);

  ("*csi_pop", csi_test [(mk_block "main" [ 
   			   Mov (Imm 0xfffffff8l, esp);
   			   Pop (eax); 
   			   Ret; 
     ])]); 

  ("csi_setb", csi_test [(mk_block "main" [
      Setb (NotZero, eax);
			    Ret;
    ])]);

  ("csi_jmp", csi_test [(mk_block "main" [
      Jmp (Lbl (mk_lbl_named "out"))
    ]); (mk_block "out" [
      Ret
    ])]);

  ("csi_call", csi_test [(mk_block "main" [
      Call (Lbl (mk_lbl_named "out"));
			    Ret;
    ]); (mk_block "out" [
      Ret
    ])]);

  ("csi_ret", csi_test [(mk_block "main" [
      Ret
    ])]);

  ("csi_js", csi_test [(mk_block "main" [
      J (NotZero, mk_lbl_named "out");
      Ret;
    ]); (mk_block "out" [
      Ret
    ])]);

  ("csi_jf", csi_test [(mk_block "main" [
      J (Zero, mk_lbl_named "out");
      Ret
    ]); (mk_block "out" [
      Ret
    ])]);

  ("csi_lea", csi_test [(mk_block "main" [
      Lea ({i_base = None; i_iscl = None; i_disp = Some (DImm 0l)}, Eax);
			   Ret;
    ])]);

  ("csi_mov", csi_test [(mk_block "main" [
      Mov (Imm 0l, eax);
			   Ret;
    ])]);
	     ])


(*** Easy Tests ***)
let easy_tests : suite = [
  map_addr_test; cnd_code_test;
]

(*** Small Tests ***)
let medium_tests : suite = [
 fun_tests; insn_tests; cnd_set_tests; 
]

(*** Part 3 Tests ***)
let hard_tests : suite = [
  factorial_test; GradedTest("Hard", 10, [
  
  ("*sum [1,2,3,4]", 
  let base_offset (o:int32) : operand = Ind{i_base = Some Ebp; i_iscl = None; i_disp = Some (DImm o)}
  in run_test 10l 
  [
    mk_insn_block (mk_lbl_named "sum") [
      Push ebp;
      Mov (esp, ebp);
      Push ebx;
      Mov (base_offset 8l, ebx);
      Mov (base_offset 12l, edx);
      Mov (Imm 0l, eax);
      Mov (Imm 0l, ecx);
      Jmp (Lbl (mk_lbl_named "loop"))
    ];
    mk_insn_block (mk_lbl_named "loop") [
      Cmp (edx, ecx);
      J (Sge, mk_lbl_named "done");
      Add (Ind{i_base = Some Ebx; i_iscl = Some (Ecx, 4l); i_disp = None}, eax);
      Add (Imm 1l, ecx);
      Jmp (Lbl (mk_lbl_named "loop"))
    ];
    mk_insn_block (mk_lbl_named "done") [
      Pop ebx;
      Pop ebp;
      Ret;
    ];
    mk_insn_block (mk_lbl_named "main") [
      Mov (Imm (-4096l), ebx);
      Mov (Imm 1l, Ind{i_base = Some Ebx; i_iscl = None; i_disp = None});
      Mov (Imm 2l, Ind{i_base = Some Ebx; i_iscl = None; i_disp = Some (DImm 4l)});
      Mov (Imm 3l, Ind{i_base = Some Ebx; i_iscl = None; i_disp = Some (DImm 8l)});
      Mov (Imm 4l, Ind{i_base = Some Ebx; i_iscl = None; i_disp = Some (DImm 12l)});
      Push (Imm 4l);
      Push ebx;
      Call (Lbl (mk_lbl_named "sum"));
      Add (Imm 8l, esp);
      Ret;
    ];
  ]);
  
  ("*sort [2,8,3,4,8,-0x80000000]", st_test "*0..=0x80000000, 2, 3, 4, 8, 8" [
    mk_block "main" [
      Mov (Imm 0xfffff000l, eax);
      Mov (Imm 2l, Ind{i_base = Some Eax; i_iscl = None; i_disp = None});
      Mov (Imm 8l, Ind{i_base = Some Eax; i_iscl = None; i_disp = Some (DImm 4l)});
      Mov (Imm 3l, Ind{i_base = Some Eax; i_iscl = None; i_disp = Some (DImm 8l)});
      Mov (Imm 4l, Ind{i_base = Some Eax; i_iscl = None; i_disp = Some (DImm 12l)});
      Mov (Imm 8l, Ind{i_base = Some Eax; i_iscl = None; i_disp = Some (DImm 16l)});
      Mov (Imm Int32.min_int, Ind{i_base = Some Eax; i_iscl = None; i_disp = Some (DImm 20l)});
      Push eax;
      Push (Imm 6l);
      Call (Lbl (mk_lbl_named "sort"));
      Add (Imm 8l, esp);
      Ret;
      ];
    mk_block "sort" [
      Push ebp;
      Mov (esp, ebp);
      Push ebx;
      Push esi;
      Mov (stack_offset 20l, esi);
      Mov (Imm 0l, eax);
      Jmp (Lbl (mk_lbl_named "outer"));
      ];
    mk_block "outer" [
      Add (Imm 1l, eax);
      Cmp (stack_offset 16l, eax);  (* while eax < size *)
      J (Sge, mk_lbl_named "done");
      Mov (eax, ebx);
      Jmp (Lbl (mk_lbl_named "inner"));
      ];
    mk_block "inner" [
      Cmp (Imm 0l, ebx); (* while ebx >= 0 *)
      J (Sle, mk_lbl_named "outer");
      Mov (Ind{i_base = Some Esi; i_iscl = Some (Ebx, 4l); i_disp = Some (DImm (-4l))}, ecx); (* a[ebx-1] *)
      Mov (Ind{i_base = Some Esi; i_iscl = Some (Ebx, 4l); i_disp = None}, edx); (* a[ebx] *)
      Cmp (edx, ecx); (* while a[ebx-1] >= a[ebx] *)
      J (Slt, mk_lbl_named "outer");
      Mov (ecx, Ind{i_base = Some Esi; i_iscl = Some (Ebx, 4l); i_disp = None});
      Mov (edx, Ind{i_base = Some Esi; i_iscl = Some (Ebx, 4l); i_disp = Some (DImm (-4l))});
      Sub (Imm 1l, ebx);
      Jmp (Lbl (mk_lbl_named "inner"));
      ];
    mk_block "done" [
      Pop esi;
      Pop ebx;
      Pop ebp;
      Ret;
      ];
    ]
    (fun state -> 
      state.s_memory.(0) = Int32.min_int &&
      state.s_memory.(1) = 2l &&
      state.s_memory.(2) = 3l &&
      state.s_memory.(3) = 4l &&
      state.s_memory.(4) = 8l &&
      state.s_memory.(5) = 8l));

  (

    (* This program will return the nth (n >= 0) number of a fibonacci sequence 
     * in which fibo[0] = 0 and fibo[1] = 1
     *
     * To test with more input, such as the k-th fibonacci number:
     * (1) [Line 23] Change the test name into "fibo k";
     * (2) [Line 24] Set the k-th fibonacci number as the expected result;
     * (3) [Line 29] Set k as the input value in the first statement of "main" block
     *)

    "*Cong: fibo 12",    (* Put your expected test name here, such as "fibo 13" *)
    run_test 144l (* Put the expected result here, such as "233l" *)

    [
      (mk_insn_block (mk_lbl_named "main") [

        Push (Imm 12l); (* Put the index here, such as "Push (Imm 13l);" *)

        Mov ((Imm 1l), ebx);
        Mov ((Imm 0l), eax);
        Call (Lbl (mk_lbl_named "fibo"));
        Add ((Imm 4l), esp);
        Ret
      ]);

      (mk_insn_block (mk_lbl_named "fibo") [
        Push (ebp);
        Mov (esp, ebp);
        Mov ((stack_offset 8l), ecx);
        Cmp (Imm 0l, ecx);
        J (Sgt, (mk_lbl_named "fibo_recurse"));
        Pop (ebp);
        Ret
      ]); 

      (mk_insn_block (mk_lbl_named "fibo_recurse") [
        Mov (eax, edx);
        Add (ebx, eax);
        Mov (edx, ebx);
        Sub (Imm 1l, ecx);
        Push (ecx);
        Call (Lbl (mk_lbl_named "fibo"));
        Add ((Imm 4l), esp);
        Pop (ebp);
        Ret
      ]); 

  ]);

("*Devasagayaraj: a b c 6", run_test 3991680l
				[(mk_insn_block (mk_lbl_named "a") [
						Push (ebp);
						Mov (esp, ebp);
						Mov ((stack_offset 8l), eax);
						Cmp (Imm 10l, eax);
						J (Slt, (mk_lbl_named "a_recurse"));
						Pop (ebp);
						Ret
						]);
				(mk_insn_block (mk_lbl_named "a_recurse") [
						Add (Imm 1l, eax);
						Push (eax);
						Call (Lbl (mk_lbl_named "b"));
						Add ((Imm 4l), esp);
						Mov ((stack_offset 8l), ebx);
						Imul (ebx, Eax);
						Pop (ebp);
						Ret
						]);
				(mk_insn_block (mk_lbl_named "b") [
						Push (ebp);
						Mov (esp, ebp);
						Mov ((stack_offset 8l), eax);
						Cmp (Imm 20l, eax);
						J (Slt, (mk_lbl_named "b_recurse"));
						Pop (ebp);
						Ret
						]);
				(mk_insn_block (mk_lbl_named "b_recurse") [
						Add (Imm 1l, eax);
						Push (eax);
						Call (Lbl (mk_lbl_named "c"));
						Add ((Imm 4l), esp);
						Mov ((stack_offset 8l), ebx);
						Imul (ebx, Eax);
						Pop (ebp);
						Ret
						]);
				(mk_insn_block (mk_lbl_named "c") [
						Push (ebp);
						Mov (esp, ebp);
						Mov ((stack_offset 8l), eax);
						Cmp (Imm 30l, eax);
						J (Slt, (mk_lbl_named "c_recurse"));
						Pop (ebp);
						Ret
						]);
				(mk_insn_block (mk_lbl_named "c_recurse") [
						Add (Imm 1l, eax);
						Push (eax);
						Call (Lbl (mk_lbl_named "a"));
						Add ((Imm 4l), esp);
						Mov ((stack_offset 8l), ebx);
						Imul (ebx, Eax);
						Pop (ebp);
						Ret
						]);
				(mk_insn_block (mk_lbl_named "main") [
						Push (Imm 6l);
						Call (Lbl (mk_lbl_named "a"));
						Add ((Imm 4l), esp);
						Ret
						]);]
		);  
("*Dhingra: Sum", run_test 15l
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
]);	

("*Liu: add array", run_test 21l
[
	(X86simplified.mk_insn_block (X86simplified.mk_lbl_named "main") [
	Push (Imm 0l);	(* j *)
	Push (Imm 6l); (*size*)

	Push (Imm 1l);
	Push (Imm 2l);
	Push (Imm 3l);
	Push (Imm 4l);
	Push (Imm 5l);
	Push (Imm 6l);

	Mov ((stack_offset 28l), ecx); (*ecx->j*)
	Mov ((stack_offset 24l), edx); (*edx -> size*)
	Mov ((Imm 0l), eax); (*result*)
	Call (Lbl (mk_lbl_named "foo"));
	Ret
	]);

	(mk_insn_block (mk_lbl_named "foo") [
	Pop (ebx);
	Pop (ebx);(*ebx -> last entry in the array*)
	Push (ebp);
	Mov (esp,ebp);
	
	Call (Lbl (mk_lbl_named "add"));
	Add ((Imm 1l), ecx);
	Cmp (ecx, edx);
	J (Sgt, mk_lbl_named"foo");
	Add ((Imm 4l), esp);
	Pop (ebp);
	Ret
	]);
	
	(mk_insn_block (mk_lbl_named "add") [
	Add (ebx, eax);
	Ret]); 
]);

("*Lim: Simple knight movement", run_test 16l
	  [(mk_insn_block (mk_lbl_named "main") [
	    Mov (Imm X86interpreter.mem_bot, ebx);
	    Call (Lbl (mk_lbl_named "init_for"));

	    Push (Imm 0l);
	    Push (Imm 0l);
	    Call (Lbl (mk_lbl_named "spot_check"));
	    Add ((Imm 8l), esp);

	    Mov (Imm 0l, eax);
	    Call (Lbl (mk_lbl_named "add_marked_for"));
	    Ret
	   ]);

	   (mk_insn_block (mk_lbl_named "spot_check") [
	     Push (ebp);
	     Mov (esp, ebp);

	     Mov ((stack_offset 8l), eax);
	     Cmp (Imm 0l, eax);
	     J (Slt, (mk_lbl_named "no_need_to_proceed"));
	     Cmp (Imm 3l, eax);
	     J (Sgt, (mk_lbl_named "no_need_to_proceed"));
	     Shl (Imm 2l, eax);
	     Mov (eax, edx);
	     Mov ((stack_offset 12l), eax);
	     Cmp (Imm 0l, eax);
	     J (Slt, (mk_lbl_named "no_need_to_proceed"));
	     Cmp (Imm 3l, eax);
	     J (Sgt, (mk_lbl_named "no_need_to_proceed"));
	     Add (eax, edx);

	     Mov (Ind{i_base = Some Ebx; i_iscl = Some (Edx, 4l); i_disp = None}, eax);
	     Cmp(Imm 0l, eax);
	     J (NotEq, (mk_lbl_named "no_need_to_proceed"));
	     Mov (Imm 1l, Ind{i_base = Some Ebx; i_iscl = Some(Edx, 4l); i_disp = None});

	     Mov ((stack_offset 12l), eax);
	     Sub (Imm 1l, eax);
	     Push (eax);
	     Mov ((stack_offset 12l), eax);
	     Add (Imm 2l, eax);
	     Push (eax);
	     Call (Lbl (mk_lbl_named "spot_check"));
	     Add ((Imm 8l), esp);

	     Mov ((stack_offset 12l), eax);
	     Add (Imm 1l, eax);
	     Push (eax);
	     Mov ((stack_offset 12l), eax);
	     Add (Imm 2l, eax);
	     Push (eax);
	     Call (Lbl (mk_lbl_named "spot_check"));
	     Add ((Imm 8l), esp);

	     Mov ((stack_offset 12l), eax);
	     Add (Imm 2l, eax);
	     Push (eax);
	     Mov ((stack_offset 12l), eax);
	     Add (Imm 1l, eax);
	     Push (eax);
	     Call (Lbl (mk_lbl_named "spot_check"));
	     Add ((Imm 8l), esp);

	     Mov ((stack_offset 12l), eax);
	     Add (Imm 2l, eax);
	     Push (eax);
	     Mov ((stack_offset 12l), eax);
	     Sub (Imm 1l, eax);
	     Push (eax);
	     Call (Lbl (mk_lbl_named "spot_check"));
	     Add ((Imm 8l), esp);

	     Mov ((stack_offset 12l), eax);
	     Add (Imm 1l, eax);
	     Push (eax);
	     Mov ((stack_offset 12l), eax);
	     Sub (Imm 2l, eax);
	     Push (eax);
	     Call (Lbl (mk_lbl_named "spot_check"));
	     Add ((Imm 8l), esp);

	     Mov ((stack_offset 12l), eax);
	     Sub (Imm 1l, eax);
	     Push (eax);
	     Mov ((stack_offset 12l), eax);
	     Sub (Imm 2l, eax);
	     Push (eax);
	     Call (Lbl (mk_lbl_named "spot_check"));
	     Add ((Imm 8l), esp);

	     Mov ((stack_offset 12l), eax);
	     Sub (Imm 2l, eax);
	     Push (eax);
	     Mov ((stack_offset 12l), eax);
	     Sub (Imm 1l, eax);
	     Push (eax);
	     Call (Lbl (mk_lbl_named "spot_check"));
	     Add ((Imm 8l), esp);

	     Mov ((stack_offset 12l), eax);
	     Sub (Imm 2l, eax);
	     Push (eax);
	     Mov ((stack_offset 12l), eax);
	     Add (Imm 1l, eax);
	     Push (eax);
	     Call (Lbl (mk_lbl_named "spot_check"));
	     Add ((Imm 8l), esp);

	     Pop (ebp);
	     Ret
	    ]);

	   (mk_insn_block (mk_lbl_named "no_need_to_proceed") [
	     Pop (ebp);
	     Ret
	    ]);

	   (mk_insn_block (mk_lbl_named "add_marked_for") [
	     Push (ebp);
	     Mov (esp, ebp);
	     Mov (Imm 0l, ecx);
	     Add(Ind{i_base = Some Ebx; i_iscl = Some (Ecx, 4l); i_disp = None }, eax);
	     Add (Imm 1l, ecx);
	     Cmp (Imm 16l, ecx);
	     J (Slt, (mk_lbl_named "add_marked_for_loop"));
	     Pop (ebp);
	     Ret
	    ]);
	   (mk_insn_block (mk_lbl_named "add_marked_for_loop") [
	     Add(Ind{i_base = Some Ebx; i_iscl = Some (Ecx, 4l); i_disp = None }, eax);
	     Add (Imm 1l, ecx);
	     Cmp (Imm 16l, ecx);
	     J (Slt, (mk_lbl_named "add_marked_for_loop"));
	     Pop (ebp);
	     Ret
	    ]);
	   
	   (mk_insn_block (mk_lbl_named "init_for") [
	     Push (ebp);
	     Mov (esp, ebp);
	     Mov (Imm 0l, ecx);
	     Mov (Imm 0l, Ind{i_base = Some Ebx; i_iscl = Some (Ecx, 4l); i_disp = None});
	     Add (Imm 1l, ecx);
	     Cmp (Imm 16l, ecx);
	     J (Slt, (mk_lbl_named "init_for_loop"));
	     Pop (ebp);
	     Ret
	    ]);
	   (mk_insn_block (mk_lbl_named "init_for_loop") [
	     Mov (Imm 0l, Ind{i_base = Some Ebx; i_iscl = Some (Ecx, 4l); i_disp = None});
	     Add (Imm 1l, ecx);
	     Cmp (Imm 16l, ecx);
	     J (Slt, (mk_lbl_named "init_for_loop"));
	     Pop (ebp);
	     Ret
	    ]);

	  ]);

("*Mamrukov: search",
let create_search_code (p1 : int32) (p2 : int32) (p3 : int32) (p4 : int32)
  (p5 : int32) (p6 : int32) (p7 : int32) (p8 : int32)
  (count : int32) (key : int32) : insn_block list =
  [
    (mk_insn_block (mk_lbl_named "search")
      [
        Push ebp;                               (* Save the old frame pointer (EBP). *)
        Mov (esp, ebp);                         (* Create a new frame pointer. *)
        Mov (stack_offset 44l, ebx);            (* Load the key argument. *)
        Mov (stack_offset 40l, eax);            (* Load the count argument. *)
        Lea ({ i_base = Some Esp;               (* Load the address of the first number argument. *)
          i_iscl = None;
          i_disp = Some (DImm 8l) }, Edx);
        Mov (Imm 1l, ecx);                      (* Set the loop index. *)
        Jmp (Lbl (mk_lbl_named "search_loop")); (* Jump to the label. *)
      ]);
    (mk_insn_block (mk_lbl_named "search_loop")
      [
        Cmp (ecx, eax);                              (* Check if there are more numbers. *)
        J (Sge, mk_lbl_named "search_loop_updater"); (* If so, continue, else... *)
        Jmp (Lbl (mk_lbl_named "key_not_found"));    (* Jump to the label. *)
      ]);
    (mk_insn_block (mk_lbl_named "search_loop_updater")
      [
        Mov (Ind { i_base = Some Edx;           (* Load the address of the current number argument. *)
          i_iscl = None;
          i_disp = Some (DImm 0l) }, edi);
        Cmp (ebx, edi);                         (* Check the current number against the key. *)
        J (Eq, mk_lbl_named "key_found");       (* If matched, the key is found, else... *)
        Add (Imm 1l, ecx);                      (* Update the loop index. *)
        Add (Imm 4l, edx);                      (* Update the address of the current number argument. *)
        Jmp (Lbl (mk_lbl_named "search_loop")); (* Continue. *)
      ]);
    (mk_insn_block (mk_lbl_named "key_found")
      [
        Mov (ecx, eax); (* Load the key's index. *)
        Pop ebp;        (* Restore the old frame pointer (EBP). *)
        Ret;            (* Jump to the address at the top of the frame stack. *)
      ]);
    (mk_insn_block (mk_lbl_named "key_not_found")
      [
        Mov (Imm (-1l), eax); (* Mark that the key is not found. *)
        Pop ebp;              (* Restore the old frame pointer (EBP). *)
        Ret;                  (* Jump to the address at the top of the frame stack. *)
      ]);
    (mk_insn_block (mk_lbl_named "main")
      [
        Push (Imm key);                     (* Allocate stack space for local variable #10. *)
        Push (Imm count);                   (* Allocate stack space for local variable #9. *)
        Push (Imm p8);                      (* Allocate stack space for local variable #8. *)
        Push (Imm p7);                      (* Allocate stack space for local variable #7. *)
        Push (Imm p6);                      (* Allocate stack space for local variable #6. *)
        Push (Imm p5);                      (* Allocate stack space for local variable #5. *)
        Push (Imm p4);                      (* Allocate stack space for local variable #4. *)
        Push (Imm p3);                      (* Allocate stack space for local variable #3. *)
        Push (Imm p2);                      (* Allocate stack space for local variable #2. *)
        Push (Imm p1);                      (* Allocate stack space for local variable #1. *)
        Call (Lbl (mk_lbl_named "search")); (* Call the function. *)
        Add (Imm 40l, esp);                 (* Pop the local storage. *)
        Ret;                                (* Jump to the address at the top of the frame stack. *)
      ]);
  ] in
  let assert_state (expected_state : x86_state) (actual_state : x86_state) : bool =
  let flag = ref true in
  let i = ref 0 in
  let limit = ref 0 in
  limit := Array.length actual_state.s_memory;
  while !flag && !i < !limit do
    if (actual_state.s_memory.(!i) <> expected_state.s_memory.(!i)) then
      flag := false
    else
      i := !i + 1
  done;
  i := 0;
  limit := Array.length actual_state.s_regs;
  while !flag && !i < !limit do
    if (actual_state.s_regs.(!i) <> expected_state.s_regs.(!i)) then
      flag := false
    else
      i := !i + 1
  done;
  if (actual_state.s_of <> expected_state.s_of ||
    actual_state.s_sf <> expected_state.s_sf ||
    actual_state.s_zf <> expected_state.s_zf) then
    flag := false;
  !flag 
  in

let state_test (code : insn_block list)
  (state_setter : x86_state -> unit) () =
  let expected_state = mk_init_state () in
  let state = mk_init_state () in
  let _ = interpret code state (mk_lbl_named "main") in
  state_setter expected_state;
  if (assert_state expected_state state) then
    ()
  else
    failwith ("States do not match.\n" (*^ string_of_state state*))

in state_test (create_search_code 3l 7l 4l 9l 5l 2l 6l 1l 8l 2l)
  	(fun expected_state ->
          expected_state.s_regs.(get_register_id Eax) <- 0x6l;        (* search's result. *)
          expected_state.s_regs.(get_register_id Ebx) <- 0x2l;        (* search's key. *)
          expected_state.s_regs.(get_register_id Ecx) <- 0x6l;        (* search's loop index. *)
          expected_state.s_regs.(get_register_id Edx) <- 0xFFFFFFE8l; (* The address of the last number to check. *)
          expected_state.s_regs.(get_register_id Edi) <- 0x2l;        (* The value of the last number to check. *)
          expected_state.s_regs.(get_register_id Esp) <- 0l;          (* The stack's top. *)
          expected_state.s_sf <- true;                                (* Because of main's Add (Imm 40l, esp). *)
          expected_state.s_memory.(mem_size - 11) <- 0x00000003l;     (* main's local #1. *)
          expected_state.s_memory.(mem_size - 10) <- 0x00000007l;     (* main's local #2. *)
          expected_state.s_memory.(mem_size - 9) <- 0x00000004l;      (* main's local #3. *)
          expected_state.s_memory.(mem_size - 8) <- 0x00000009l;      (* main's local #4. *)
          expected_state.s_memory.(mem_size - 7) <- 0x00000005l;      (* main's local #5. *)
          expected_state.s_memory.(mem_size - 6) <- 0x00000002l;      (* main's local #6. *)
          expected_state.s_memory.(mem_size - 5) <- 0x00000006l;      (* main's local #7. *)
          expected_state.s_memory.(mem_size - 4) <- 0x00000001l;      (* main's local #8. *)
          expected_state.s_memory.(mem_size - 3) <- 0x00000008l;      (* main's local #9. *)
          expected_state.s_memory.(mem_size - 2) <- 0x00000002l;      (* main's local #10. *)
          expected_state.s_memory.(mem_size - 1) <- 0x00000000l));

("*Patel: fib 7", run_test 13l
    [(mk_insn_block (mk_lbl_named "fib") [
      Push (ebp);
      Mov (esp, ebp);
      Mov ((stack_offset 8l), eax);
      Cmp (Imm 0l, eax);
      J (Eq, (mk_lbl_named "endfib"));
      Cmp (Imm 1l, eax);
      J (Eq, (mk_lbl_named "endfib"));
      Sub (Imm 1l, eax);
      Push (eax);
      Call (Lbl (mk_lbl_named "fib"));
      Pop (eax);
      Sub (Imm 1l, eax);
      Push (ecx);
      Push (eax);
      Call (Lbl (mk_lbl_named "fib"));
      Pop (eax);
      Pop (eax);
      Add (eax, ecx);
      Mov (ebp, esp);
      Pop (ebp);
      Ret
    ]);
     (mk_insn_block (mk_lbl_named "endfib") [
      Mov (eax, ecx);
      Mov (ebp, esp);
      Pop (ebp);
      Ret
    ]);
     (mk_insn_block (mk_lbl_named "main") [
      Push (Imm 7l);
      Call (Lbl (mk_lbl_named "fib"));
      Pop (eax);
      Mov (ecx, eax);
      Add ((Imm 4l), esp);
      Ret
    ]);]
   );


("*Qu: gcd 30 50", run_test 10l
         [(mk_insn_block (mk_lbl_named "gcd") [
            (* Save stack pointer *)
            Push(ebp);
            Mov(esp,ebp);

            Mov( (stack_offset 8l),eax);       
            Mov( (stack_offset 12l),ebx );     
            Cmp(Imm 0l,eax);                  
            J(NotEq, mk_lbl_named "loop"); 

            Mov(ebx,eax); 
            Pop(ebp);
            Ret
          ]);
          (mk_insn_block (mk_lbl_named "loop") [
            Cmp( Imm 0l,ebx);                 
            J(Eq, mk_lbl_named "a_part");
            Cmp( Imm 0l,eax);
					  J(Eq, mk_lbl_named "b_part"); 
            Cmp( ebx,eax); 
            J(Sgt, mk_lbl_named "loop_2"); 
            Sub(eax,ebx); 
            Jmp(Lbl (mk_lbl_named "loop"))
          ]);

          (mk_insn_block (mk_lbl_named "loop_2") [
            Sub( ebx, eax); 
            Jmp(Lbl (mk_lbl_named "loop"));
          ]);
					
					(mk_insn_block (mk_lbl_named "b_part") [
            Mov( ebx,eax);
            Pop(ebp);
            Ret
          ]);
					
          (mk_insn_block (mk_lbl_named "a_part") [
            Pop(ebp);
            Ret
          ]);

          (mk_insn_block (mk_lbl_named "main") [
            Push (Imm 30l);
            Push (Imm 50l);
            Call (Lbl (mk_lbl_named "gcd"));
            Add (Imm 8l,esp);
            Ret
          ]);
					
					
					
         ]
       );

("*Shanbhag: Power", run_test 128l
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
]);	



  ("*Shankar: Divide 60 15", run_test (4l)
    [ (mk_insn_block (mk_lbl_named "rem_greater") [
      Mov ((stack_offset 8l), ebx);
      Sub (ebx, edx);
      Add (Imm 1l, ecx);
      Pop (ebp);
      Ret
   ]);
  (mk_insn_block (mk_lbl_named "divide_recurse") [
      Sar (Imm 1l, eax);
      Push (eax);
      Push (ebx);
      Call (Lbl (mk_lbl_named "divide"));
      Add ((Imm 8l), esp);
      Imul (Imm 2l, Ecx);                            (** Multiplying quotient by two **)
      Imul (Imm 2l, Edx);                           (** Multiplying remainder by two **)
      Mov ((stack_offset 12l), eax);                 
      And (Imm 1l, eax);                            (** ANDing eax with 1, to see if first bit is 1 **)
      Cmp (Imm 1l, eax);                            (** Comparing to see if first bit is 1 **)
      J (Eq, (mk_lbl_named  "x_odd"));
      Mov ((stack_offset 12l), eax);                (** at this point, x is not odd and continuing with divide recurse **)
      Mov ((stack_offset 8l), ebx);
      Cmp (ebx, edx);                               (** Comparing Remainder to y **)
      J (Sge, (mk_lbl_named "rem_greater"));
      Pop (ebp);
      Ret
    ]);
		(mk_insn_block (mk_lbl_named "x_odd") [
      Add (Imm 1l, edx);                            (** adding 1 to remainder **)
      Mov (stack_offset 12l, eax);
      Mov ((stack_offset 8l), ebx);
      Cmp (ebx, edx);                               (** Comparing Remainder to y **)
      J (Sge, (mk_lbl_named "rem_greater"));
      Pop (ebp);
      Ret
  ]);
    (mk_insn_block (mk_lbl_named "divide") [
      Push (ebp);
      Mov (esp, ebp);
      Mov ((stack_offset 12l), eax);                  (** holds x **)
      Mov ((stack_offset 8l), ebx);                   (** holds y **)
      Cmp  (Imm 0l, eax);
      J (NotEq, (mk_lbl_named "divide_recurse"));       								(** not needed, since ecx initialized to 0 -- Mov (Imm 0l, ecx); -- quotient **)                                                 (** not needed, since edx initialized to 0 -- Mov (Imm 0l, edx); -- remainder **)
      Pop (ebp);
      Ret
    ]);
     (mk_insn_block(mk_lbl_named "main")[
       Push (Imm (60l));                                 (** x **)
       Push (Imm (15l));                                 (** y **)
       Call (Lbl (mk_lbl_named "divide"));
       Mov (ecx, eax);
       Add (Imm 4l, esp);
       Ret
    	]);
    ]);


("*Sundaresan", run_test 5l
[(mk_insn_block (mk_lbl_named "main") [
Push (ebp);
Mov (esp,ebp);
Mov (Imm 1l,(stack_offset (-4l)));
Mov (Imm 1l,(stack_offset (-8l)));
Mov (Imm 1l,(stack_offset (-12l)));
Mov (Imm 1l,(stack_offset (-16l)));
Mov (Imm 1l,(stack_offset (-20l)));
Mov (Imm 1l,(stack_offset (-24l)));
Mov (Imm 1l,(stack_offset (-28l)));
Mov (Imm 1l,(stack_offset (-32l)));

Mov (Imm 60l,(stack_offset (-36l)));
Mov (Imm 41l,(stack_offset (-40l)));
Mov (Imm 50l,(stack_offset (-44l)));
Mov (Imm 21l,(stack_offset (-48l)));
Mov (Imm 33l,(stack_offset (-52l)));
Mov (Imm 9l,(stack_offset (-56l)));
Mov (Imm 22l,(stack_offset (-60l)));
Mov (Imm 10l,(stack_offset (-64l)));
Mov (Imm 8l,(stack_offset (-68l)));

Lea ({i_base=Some Esp;i_iscl=None;i_disp=Some (DImm (-32l))},Esi);
Lea ({i_base=Some Esp;i_iscl=None;i_disp=Some (DImm (-64l))},Edi);
Add (Imm (-68l),esp); 
Call (Lbl (mk_lbl_named "lise"));
Add (Imm 68l,esp);
Ret;     
    ]); 
     (mk_insn_block (mk_lbl_named "lise") [
Push (ebp);
Mov (esp,ebp);
Mov ((stack_offset 8l),edx);
(*Mov (esi,(stack_offset (-16l)));
Mov (edi,(stack_offset (-20l)));*)
Mov (Imm 0l,(stack_offset (-4l)));
Mov (Imm 1l,(stack_offset (-12l)));
Jmp (Lbl (mk_lbl_named "L2"));      
    ]); 

     (mk_insn_block (mk_lbl_named "L2") [
Cmp (edx,(stack_offset (-12l)));
J (Slt, (mk_lbl_named "L6"));
Mov (Imm 0l,(stack_offset (-12l)));
Jmp (Lbl (mk_lbl_named "L7")); 
    
    ]);

(mk_insn_block (mk_lbl_named "L7") [
Cmp (edx,(stack_offset (-12l)));
J (Slt, (mk_lbl_named "L9"));
Mov ((stack_offset (-4l)),eax);
Pop (ebp);
Ret;      
    ]);
(mk_insn_block (mk_lbl_named "L6") [
Mov (Imm 0l,(stack_offset (-8l)));
Jmp (Lbl (mk_lbl_named "L3"));      
    ]);
(mk_insn_block (mk_lbl_named "L3") [
Mov ((stack_offset (-8l)),eax);
Cmp ((stack_offset (-12l)),eax);
J (Slt, (mk_lbl_named "L5"));
Add (Imm 1l,(stack_offset (-12l)));
Jmp (Lbl (mk_lbl_named "L2"));      
    ]);

(mk_insn_block (mk_lbl_named "L5") [
Mov ((stack_offset (-12l)),ecx);
Mov (Ind {i_base=Some Edi;i_iscl=Some (Ecx,4l);i_disp=None}, ecx);
Mov ((stack_offset (-8l)),eax);
Cmp (Ind {i_base=Some Edi;i_iscl=Some (Eax,4l);i_disp=None}, ecx);
J (Slt, (mk_lbl_named "L4"));

Mov (Ind {i_base=Some Esi;i_iscl=Some (Eax,4l);i_disp=None}, eax);
Add (Imm 1l,eax);
Mov ((stack_offset (-12l)),ecx);
Lea ({i_base=Some Esi;i_iscl=Some (Ecx,4l);i_disp=None},Ecx);
Cmp (eax,Ind {i_base=Some Ecx;i_iscl=None;i_disp=None});
J (Sgt, (mk_lbl_named "L4"));
Mov (eax,Ind {i_base=Some Ecx;i_iscl=None;i_disp=None});
Jmp (Lbl (mk_lbl_named "L4"));       
    ]);
(mk_insn_block (mk_lbl_named "L4") [
Add (Imm 1l,(stack_offset (-8l)));
Jmp (Lbl (mk_lbl_named "L3"));      
    ]);
(mk_insn_block (mk_lbl_named "L9") [
Mov ((stack_offset (-12l)),ecx);
Mov (Ind {i_base=Some Esi;i_iscl=Some (Ecx,4l);i_disp=None},ecx);
Cmp (ecx,(stack_offset (-4l)));
J (Sgt, (mk_lbl_named "L8"));
Mov (ecx,(stack_offset (-4l)));
Jmp (Lbl (mk_lbl_named "L8"));      
    ]);
(mk_insn_block (mk_lbl_named "L8") [
Add (Imm 1l,(stack_offset (-12l)));
Jmp (Lbl (mk_lbl_named "L7"));      
    ]);
]);

("*Zhu: hanoi 5", run_test 31l
       [(mk_insn_block (mk_lbl_named "main") [
			Push (Imm 5l);
			Call (Lbl (mk_lbl_named "hanoi"));
			Add ((Imm 4l), esp);
			Ret
		]);
		(mk_insn_block (mk_lbl_named "hanoi") [
			Push (ebp);
			Mov (esp, ebp);
			Mov ((stack_offset 8l), eax);
			Cmp (Imm 1l, eax);
			J (Sgt, (mk_lbl_named "hanoi_recurse"));
			Mov (Imm 1l, eax);
			Pop (ebp);
			Ret
		]); 
		(mk_insn_block (mk_lbl_named "hanoi_recurse") [
			Sub (Imm 1l, eax);
			Push (eax);
			Call (Lbl (mk_lbl_named "hanoi"));
			Add ((Imm 4l), esp);
			Mov (Imm 2l, ebx);
			Imul (ebx, Eax); 
			Add (Imm 1l, eax); 
			Pop (ebp);
			Ret
		]); 
		
		]
      );

  ])
] 



let manual_tests : suite = [
  GradedTest ("PartIITestCase", 20, [

  ]);
  GradedTest ("StyleManual", 10, [
  
  ]);
]

let graded_tests : suite = 
  easy_tests @
  medium_tests @
  hard_tests @
  manual_tests
