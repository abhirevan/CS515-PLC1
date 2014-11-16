open Ll
open X86simplified
open LibUtil


let get_stack_addr (index: int32) : 



let get_addr (index: int32) : X86simplified.ind = 
  let offset = Int32.mul (-4l) index in 
  let ind = { i_base = Some (Ebp);          
     i_iscl = None; 
     i_disp = Some (DImm offset)       
      } in
  ind

let prologue_isns = Push (ebp) :: Mov (esp,ebp) :: Add (Imm (offset),esp) ::  []

let epilogue_isns = Add (Imm offset, esp) :: Pop (ebp) :: []

let compile_bblocks (i_bblocks :bblock list) : (insn_block list) =failwith "unimplemented"

let compile_prog (prog : Ll.prog) : Cunit.cunit =failwith "unimplemented" 
    let block_name = (Platform.decorate_cdecl "program") in
    
    let emit_bblocks prog.ll_cfg
    
    
    
		 List.map (fun blk -> Cunit.Code blk) (emit_bblocks prog.ll_cfg)
		 
		 *)

