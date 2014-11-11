(* CS515: Project 2 X86Simplified Programming and X86Simplified Interpreter *)

open X86simplified

exception X86_segmentation_fault of string

(* Int32 / Int64 abbreviations and infix arithmetic *)
let (+@) = Int32.add
let (-@) = Int32.sub
let (/@) = Int32.div
let ( *@ ) = Int32.mul
let (<@) a b = (Int32.compare a b) < 0
let (<=@) a b = (Int32.compare a b) <= 0
let (>@) a b = (Int32.compare a b) > 0
let (>=@) a b = (Int32.compare a b) >= 0
let (<@@) a b = (Int64.compare a b) < 0
let (%@) a b = (Int32.rem a b) 

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
let condition_matches (xs:x86_state) (c:X86simplified.ccode) : bool =
failwith "unimplemented"

(* Returns the bit at a given index in a 32-bit word as a boolean *)
let get_bit bitidx n =
  let shb = Int32.shift_left 1l bitidx in
  Int32.logand shb n = shb  


(*find_lbl_index - finds the index of the label*)
let  find_lbl_index (l:lbl) (code:insn_block list) : int =
	let counter = ref 0 in
		let rec loop (lst: insn_block list) : int = 
		begin match lst with
			| [] -> raise (X86_segmentation_fault "Label not found")
			| h::tl -> if h.label = l then !counter else (counter := !counter + 1; loop tl)
		end
	in loop code;;
	
(*exec_insn*)
let rec exec_insn (curr_insn: insn) (xs: x86_state)  : unit = ();;

(**)
let rec interpret (code:insn_block list) (xs:x86_state) (l:lbl) : unit =  
	let lbl_index : int = (find_lbl_index l code)  in
		let program = List.nth code lbl_index in
			parse_block program.insns code xs
and
parse_block (program: insn list) (code: insn_block list) (xs: x86_state)  : unit = 
begin match program with
	| [] -> ()
	| h :: [] -> begin match h with
				| Ret -> exec_insn h xs
				|_-> raise (X86_segmentation_fault "Code block ends without Ret operation")
			 end
	| h::tl -> 	begin match h with
				|Call op -> let o = chk_lbl op in
								exec_insn (Push (Imm 0l)) xs; (*Need to check*)
								interpret code xs o;
								parse_block tl code xs;
				|_ -> (exec_insn h xs; parse_block tl xs;)
			end
end

let run (code:insn_block list): int32 = 
  let main = mk_lbl_named "main" in 
  let xs = mk_init_state () in 
  let _ = interpret code xs main in 
    xs.s_regs.(ieax)
