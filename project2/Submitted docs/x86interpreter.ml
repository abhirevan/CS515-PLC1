(* CS515: Project 2 X86Simplified Programming and X86Simplified Interpreter *)

open X86simplified

exception X86_segmentation_fault of string

(* Int32 / Int64 abbreviations and infix arithmetic *)
let (+@) = Int32.add
let (+@@) = Int64.add
let (-@) = Int32.sub
let (/@) = Int32.div
let ( *@ ) = Int32.mul
let (<@) a b = (Int32.compare a b) < 0
let (<=@) a b = (Int32.compare a b) <= 0
let (>@) a b = (Int32.compare a b) > 0
let (>=@) a b = (Int32.compare a b) >= 0
let (<@@) a b = (Int64.compare a b) < 0
let (%@) a b = (Int32.rem a b) 
let (~@)  = Int32.lognot

(* Registers are interpreted as indices into register array *)
let ieax = 0
let iebx = 1
let iecx = 2
let iedx = 3
let iesi = 4
let iedi = 5
let iebp = 6
let iesp = 7

let get_register_id = function
 | Eax -> ieax
 | Ebx -> iebx
 | Ecx -> iecx
 | Edx -> iedx
 | Esi -> iesi
 | Edi -> iedi
 | Ebp -> iebp
 | Esp -> iesp


let mem_size = 1024                (* Size of memory in words *)
let mem_top : int32 = 0xfffffffcl  (* Last addressable memory location *)
let mem_bot: int32 = (Int32.mul (Int32.of_int (mem_size * 4)) (-1l))

(* Maps virtual addresses (int32 addresses) to physical addresses (int
 indices). Raises an X86_segmentation_fault exception if the provided
 virtual address does not map or if the address is unaligned.
*)

let map_addr (addr: int32) : int =  
	let int_addr : int = 1024 + Int32.to_int( addr /@ 4l) in 
		let err_msg = "The virtual address provided does not map or the address is unaligned" in
			if ((addr %@ 4l) = 0l) && (int_addr <= 1023 && int_addr >= 0) 
				then int_addr 
				else raise (X86_segmentation_fault err_msg);;

type x86_state = {
   s_memory : int32 array;  (* 1024 32-bit words -- the heap *)
   s_regs : int32 array;    (* 8 32-bit words -- the register file *)
   mutable s_of : bool;     (* overflow flag *)
   mutable s_sf : bool;     (* sign bit flag *)
   mutable s_zf : bool;     (* zero flag *)
}

let mk_init_state (): x86_state = 
  let xs = {
    s_memory = Array.make mem_size 0l;
    s_regs   = Array.make 8 0l;
    s_of     = false;
    s_sf     = false;
    s_zf     = false;
  } in 
  xs.s_regs.(iesp) <- mem_top; xs

let print_state (xs:x86_state): unit = 
 (Array.iter (fun e -> Printf.printf "%lx" e) xs.s_memory);
 (Printf.printf "\neax: %lx ebx: %lx ecx: %lx edx: %lx" xs.s_regs.(ieax) 
     xs.s_regs.(iebx) xs.s_regs.(iecx) xs.s_regs.(iedx));
 (Printf.printf "\nesi: %lx edi: %lx ebp: %lx esp: %lx" xs.s_regs.(iesi) 
     xs.s_regs.(iedi) xs.s_regs.(iebp) xs.s_regs.(iesp));
 (Printf.printf "\n OF: %b SF: %b ZF: %b" xs.s_of xs.s_sf xs.s_zf)



(* Helper function that determines whether a given condition code
   applies in the x86 state xs. *)  

(*Eq;NotEq;Zero;NotZero;Sgt;Sle;Slt;Sge*)
   
let condition_matches (xs:x86_state) (c:X86simplified.ccode) : bool =
begin match c with
	| Eq -> xs.s_zf
	| NotEq -> not xs.s_zf
	| Zero -> xs.s_zf
	| NotZero -> not xs.s_zf
	| Sgt -> not ((xs.s_sf <> xs.s_of ) || xs.s_zf) (*This condition is just the negation of Sle.*)
	| Sle -> (xs.s_sf <> xs.s_of ) || xs.s_zf (*(SF is not equal to OF) or ZF is set. *)
	| Slt -> xs.s_sf <> xs.s_of  (*SF does not equalOF *)
	| Sge -> xs.s_sf = xs.s_of (*This condition holds when SF equals OF.*)
end

(* Returns the bit at a given index in a 32-bit word as a boolean *)
let get_bit bitidx n =
  let shb = Int32.shift_left 1l bitidx in
  Int32.logand shb n = shb  
  
  (*update_s_zf_sf*)
let update_s_zf_sf (num: int32) (xs:x86_state)  : unit =
	if ( num = 0l) then (xs.s_zf <- true) else (xs.s_zf <- false);
	if ( num <@ 0l) then (xs.s_sf <- true) else (xs.s_sf <- false);;
	(*let sign_bit: bool =   get_bit 31 num in (xs.s_sf <- sign_bit);;*)
		
  (*update_i64_of_flag_add*)
  
let update_i64_of_flag_add (s_64: int64) (d_64 : int64) (r_32: int32)  (xs: x86_state) : unit = 
	let sign_s_64 = if (s_64 <@@ Int64.zero) then 1 else 0 in
		let sign_d_64 = if (d_64 <@@ Int64.zero) then 1 else 0 in
			let sign_r_32 = if (r_32 <@ Int32.zero) then 1 else 0 in
				if ( (sign_s_64 = sign_d_64) && (sign_r_32 <> sign_s_64)) then (xs.s_of <- true) else (xs.s_of <- false) 

(*update_i64_of_flag_sub*)
  
let update_i64_of_flag_sub (s_32: int32) (s_64: int64) (d_64 : int64) (r_32: int32)  (xs: x86_state) : unit = 
	let sign_s_n_64 = if ( (Int64.neg s_64) <@@ Int64.zero) then 1 else 0 in
		let sign_d_64 = if (d_64 <@@ Int64.zero) then 1 else 0 in
			let sign_r_32 = if (r_32 <@ Int32.zero) then 1 else 0 in
				if (( (sign_s_n_64 = sign_d_64) && (sign_r_32 <> sign_s_n_64)) || s_32 = Int32.min_int) then (xs.s_of <- true) else (xs.s_of <- false) 


(*update_i64_of_flag_mul*)
let update_i64_of_flag_mul (r_64 : int64) (xs: x86_state) : unit = 
	if (( Int64.of_int32 (Int32.max_int) <@@ r_64 ) || (r_64 <@@ Int64.of_int32 (Int32.min_int) )) then (xs.s_of <- true) else (xs.s_of <- false) 


(*update_sar_flags*)
let update_sar_flags (value: int32) (shift_bits: int32) (xs: x86_state) : unit =
	if ( shift_bits <> 0l) 
		then  (update_s_zf_sf value xs) 
		else ( if (shift_bits = 1l) 
				then (xs.s_of <- false) 
				else ())
		

  
  (*chk_lbl*)
  
  let chk_lbl (op: operand) : lbl = 
  begin match op with 
	| Lbl l -> l
	| _ -> raise (X86_segmentation_fault "Invalid label operand encountered")
  end 
  
  

(*find_lbl_index - finds the index of the label*)
let  find_lbl_index (l:lbl) (code:insn_block list) : int =
	let counter = ref 0 in
		let rec loop (lst: insn_block list) : int = 
		begin match lst with
			| [] -> raise (X86_segmentation_fault "Label not found")
			| h::tl -> if h.label = l then !counter else (counter := !counter + 1; loop tl)
		end
	in loop code;;
	
(*get_reg_val*)

let get_reg_val (register: reg) (s_regs: int32 array): int32 =
	let reg_index = get_register_id register in
		Array.get s_regs reg_index;;

(*set_reg_val*)
let set_reg_val (register: reg) (s_regs: int32 array) (value: int32): unit =
	let reg_index = get_register_id register in
		Array.set s_regs reg_index value;;
		
(* get_ind_index_reg_val *)
let get_ind_index_reg_val (index: reg) (s_regs: int32 array): int32 = 
	begin match index with
					| Esp -> raise (X86_segmentation_fault "ESP register not valid as index for Ind address") 
					| _ -> get_reg_val index s_regs
	end


(*call_ind_addr*)

let call_ind_addr (ind_addr: ind) (s_regs: int32 array): int32 = 
	let base = 
	begin match ind_addr.i_base with
				| (Some r)-> (get_reg_val r s_regs)
				| _ -> 0l
			end 
				in	let scale_disp= 
				begin match ind_addr.i_iscl with
											| Some (index,scale) -> (get_ind_index_reg_val index s_regs) *@ scale
											| _ -> 0l
										end 
											in	let disp = 
											begin match ind_addr.i_disp with
															| Some (DImm x) -> x
															| Some(DLbl l) -> raise (X86_segmentation_fault "Label not valid as displacement for Ind address") 
															| _ -> 0l
														end   
															in	base +@ scale_disp +@ disp
	
(*fetch_from_s_memory*)

let fetch_from_s_memory (ind_addr: ind) (xs: x86_state) : int32 = 
	Array.get xs.s_memory (map_addr(call_ind_addr ind_addr xs.s_regs))
	
(*set_to_s_memory*)

let set_to_s_memory (ind_addr: ind) (xs: x86_state) (value: int32) : unit =
	Array.set xs.s_memory (map_addr(call_ind_addr ind_addr xs.s_regs)) value

	
(*get_imm*)

let get_imm (oper: operand) : int32 = 
begin match oper with
	| Imm x -> x
	| _ -> raise (X86_segmentation_fault "Invalid Imm operand")
end
	
(*eval_operand*)

let eval_operand (oper: operand) (xs: x86_state) : int32 =
begin match oper with
	| Imm i -> get_imm oper
	| Lbl l -> raise (X86_segmentation_fault "Label encountered, invalid operand")
	| Reg r -> get_reg_val r xs.s_regs
	| Ind i -> fetch_from_s_memory i xs 
end


(*eval_destination*)
let eval_destination (oper: operand) (value: int32) (xs: x86_state) : unit = 
	begin match oper with
		| Reg r -> set_reg_val r xs.s_regs value
		| Ind i -> set_to_s_memory i xs value
		| _ -> raise (X86_segmentation_fault "Invalid destination operand")
	end 
	
	

	
(*evaluate_i64_insn*)

let evaluate_i64_insn (curr_insn : insn)  (s_32: int32) (s_64: int64) (d_32: int32) (d_64 : int64) (dest : operand) (xs: x86_state) : unit =
begin match curr_insn with
	| Add _ -> let r_64 = Int64.add d_64 s_64 in
				let r_32 = Int64.to_int32 r_64 in
					eval_destination dest r_32 xs;
					update_s_zf_sf r_32 xs;
					update_i64_of_flag_add s_64 d_64 r_32 xs;
	| Sub _ -> let r_64 = Int64.add d_64 (Int64.neg s_64) in 
						let r_32 = Int64.to_int32 r_64 in
							eval_destination dest r_32 xs;
							update_s_zf_sf r_32 xs;
							update_i64_of_flag_sub s_32 s_64 d_64 r_32 xs; 
	| Imul _  -> let r_64 = Int64.mul d_64 s_64 in 
				let r_32 = Int64.to_int32 r_64 in
					eval_destination dest r_32 xs;
					update_s_zf_sf r_32 xs;
					update_i64_of_flag_mul r_64 xs;
	| Cmp _ ->let r_64 = Int64.add d_64 (Int64.neg s_64) in 
						let r_32 = Int64.to_int32 r_64 in
							update_s_zf_sf r_32 xs;
							update_i64_of_flag_sub s_32 s_64 d_64 r_32 xs; 
	| _ -> ()
end

	
(*exec_insn*)
let rec exec_insn (curr_insn: insn) (xs: x86_state)  : unit = 
begin match curr_insn with
	| Neg n -> let num = eval_operand n xs in 
						(*if (num = Int32.min_int) then (xs.s_of <- true) else ( xs.s_of <- false*)
						xs.s_of<-(num=Int32.min_int);
						let neg_num: int32 = ~@ num +@ 1l in
							eval_destination n neg_num xs;
							update_s_zf_sf neg_num xs;
	| Add (src,dest) -> 	let s_32 = eval_operand src xs in
						let s_64 = Int64.of_int32 s_32 in 
							let d_32 =  eval_operand dest xs in
								let d_64 = Int64.of_int32 d_32 in 
									evaluate_i64_insn curr_insn s_32 s_64 d_32 d_64 dest xs;
	| Sub (src,dest) -> let s_32 = eval_operand src xs in
						let s_64 = Int64.of_int32 s_32 in 
							let d_32 =  eval_operand dest xs in
								let d_64 = Int64.of_int32 d_32 in 
									evaluate_i64_insn curr_insn s_32 s_64 d_32 d_64 dest xs;
	| Imul (src,rg) -> let s_32 = eval_operand src xs in
						let s_64 = Int64.of_int32 s_32 in 
							let d_32 =  eval_operand (Reg rg) xs in
								let d_64 = Int64.of_int32 d_32 in 
									evaluate_i64_insn curr_insn s_32 s_64 d_32 d_64 (Reg rg)  xs;
	| Not dest -> let src = eval_operand dest xs in
				let value = Int32.lognot src in
					eval_destination dest value xs;
	| And (src,dest) -> let s_32 = eval_operand src xs in
					let d_32 = eval_operand dest xs in 
						let value = Int32.logand d_32 s_32 in
							eval_destination dest value xs;
							xs.s_of <- false;
							update_s_zf_sf value xs;
	| Or (src,dest) -> let s_32 = eval_operand src xs in
					let d_32 = eval_operand dest xs in 
						let value = Int32.logor d_32 s_32 in
							eval_destination dest value xs;
							xs.s_of <- false;
							update_s_zf_sf value xs;
	| Xor (src,dest) -> let s_32 = eval_operand src xs in
					let d_32 = eval_operand dest xs in 
						let value = Int32.logxor d_32 s_32 in
							eval_destination dest value xs;
							xs.s_of <- false;
							update_s_zf_sf value xs;
	| Sar (amt,dest) -> let shift_bits =	begin match amt with
								| Imm i -> eval_operand amt xs 
								| Reg r -> begin match r with 
											| Ecx -> eval_operand amt xs 
											| _ -> raise (X86_segmentation_fault "Invalid reg (amount) encountered for Sar ins")
										end
								| _ -> raise (X86_segmentation_fault "Invalid operand for amount (~ Imm/Reg Eax) encountered for Sar ins")
								end in
									if (shift_bits <@ 0l || shift_bits >@ 31l ) 
										then (  raise (X86_segmentation_fault "Shift amount < 0 or >= 32 : Sar") ) 
										else ();
									let d_32 = eval_operand dest xs in
										let value = Int32.shift_right d_32 (Int32.to_int shift_bits) in
											eval_destination dest value xs;
											update_sar_flags value shift_bits xs;
											if ( shift_bits <> 0l) 
												then  (update_s_zf_sf value xs) else ();
											if (shift_bits = 1l) 
												then (xs.s_of <- false) else (); 
												
	| Shl (amt,dest) -> let shift_bits =	begin match amt with
								| Imm i -> eval_operand amt xs 
								| Reg r -> begin match r with 
											| Ecx -> eval_operand amt xs 
											| _ -> raise (X86_segmentation_fault "Invalid reg (amount) encountered for Shl ins")
										end
								| _ -> raise (X86_segmentation_fault "Invalid operand for amount (~ Imm/Reg Eax) encountered for Shl ins")
								end in
									if (shift_bits <@ 0l || shift_bits >@ 31l ) 
										then (  raise (X86_segmentation_fault "Shift amount < 0 or >= 32 : Shl") ) 
										else ();
									let d_32 = eval_operand dest xs in
										let value = Int32.shift_left d_32 (Int32.to_int shift_bits) in
											eval_destination dest value xs;
											update_sar_flags value shift_bits xs;
											if ( shift_bits <> 0l) 
												then  (update_s_zf_sf value xs) else ();
											if (((get_bit 31 value) <>(get_bit 30 value)  ) && (shift_bits = 1l))
												then (xs.s_of <- false) else (); 
	| Shr (amt,dest) -> let shift_bits =	begin match amt with
								| Imm i -> eval_operand amt xs 
								| Reg r -> begin match r with 
											| Ecx -> eval_operand amt xs 
											| _ -> raise (X86_segmentation_fault "Invalid reg (amount) encountered for Shr ins")
										end
								| _ -> raise (X86_segmentation_fault "Invalid operand for amount (~ Imm/Reg Eax) encountered for Shr ins")
								end in
									if (shift_bits <@ 0l || shift_bits >@ 31l ) 
										then (  raise (X86_segmentation_fault "Shift amount < 0 or >= 32 : Shr") ) 
										else ();
									let d_32 = eval_operand dest xs in
										let value = Int32.shift_right_logical d_32 (Int32.to_int shift_bits) in
											eval_destination dest value xs;
											update_sar_flags value shift_bits xs;
											if ( shift_bits <> 0l) 
												then  (update_s_zf_sf value xs) else ();
											if (shift_bits = 1l) 
												then ( let msb = get_bit 31 d_32 in xs.s_of <- msb  )							
												else (); 
	| Setb (cc,dest) ->  	let d_32 = eval_operand dest xs in
						let false_val = Int32.logand d_32 0xFFFFFF00l in 
							let true_vale =  Int32.logor false_val 1l in
								if( condition_matches xs cc) then ( eval_destination dest true_vale xs;) else (eval_destination dest false_val xs;)
	| Lea (ind, dest) -> 	let ind_addr = call_ind_addr ind xs.s_regs in
						eval_destination (Reg dest) ind_addr xs
	
	| Mov (src,dest) -> eval_destination dest (eval_operand src xs) xs;
	| Push src -> 	let s_32 = eval_operand src xs in
					set_reg_val Esp xs.s_regs ((get_reg_val Esp xs.s_regs) -@ 4l);
					Array.set xs.s_memory (map_addr(get_reg_val Esp xs.s_regs)) s_32;
	| Pop dest -> 	let value = Array.get xs.s_memory (map_addr(get_reg_val Esp xs.s_regs)) in
					eval_destination dest value xs;
					set_reg_val Esp xs.s_regs ((get_reg_val Esp xs.s_regs) +@ 4l);
	| Cmp (src,dest) -> 	let s_32 = eval_operand src xs in
						let s_64 = Int64.of_int32 s_32 in 
							let d_32 =  eval_operand dest xs in
								let d_64 = Int64.of_int32 d_32 in 
									evaluate_i64_insn curr_insn s_32 s_64 d_32 d_64 dest xs;								
	| Ret -> set_reg_val Esp xs.s_regs ((get_reg_val Esp xs.s_regs) +@ 4l)	
	| _ -> raise (X86_segmentation_fault "Invalid instruction")
end



(* interpret program *)


let rec interpret (code:insn_block list) (xs:x86_state) (l:lbl) : unit =  
	let lbl_index : int = (find_lbl_index l code)  in
		let program = List.nth code lbl_index in

			parse_block program.insns code xs;
and
parse_block (program: insn list) (code: insn_block list) (xs: x86_state)  : unit = 
begin match program with
	| [] -> ()
	| h :: [] -> begin match h with
				| Ret -> exec_insn h xs
				| _-> ();
			 end
	| h::tl -> 	begin match h with
				|Call op -> let o = chk_lbl op in
								exec_insn (Push (Imm 0l)) xs;
								interpret code xs o;
								parse_block tl code xs;
				| Jmp j -> let jmp_label = chk_lbl j in
								interpret code xs jmp_label;
				| J (cc, j_label) -> if( condition_matches xs cc) 
									then ( let jmp_label = chk_lbl (Lbl j_label) in
											interpret code xs jmp_label; )
									else (parse_block tl code xs; )
				|_ -> (exec_insn h xs; parse_block tl code xs;)
			end
end


let run (code:insn_block list): int32 = 
  let main = mk_lbl_named "main" in 
  let xs = mk_init_state () in 
  let _ = interpret code xs main in 
    xs.s_regs.(ieax)