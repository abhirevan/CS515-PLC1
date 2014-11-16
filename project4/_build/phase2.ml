open Ll
open X86simplified
open LibUtil


let compile_prog (prog : Ll.prog) : Cunit.cunit = failwith "unimplemented"
(*

let compile_bblocks (i_bblocks :bblock list) : (insn_block list) =

let prologue_isns = Push (ebp) :: Mov (esp,ebp) :: Add (esp, Imm (offset)) ::  []

let compile_prog (prog : Ll.prog) : Cunit.cunit =
    let block_name = (Platform.decorate_cdecl "program") in
    
    let emit_bblocks prog.ll_cfg
    
    
    
		 List.map (fun blk -> Cunit.Code blk) (emit_bblocks prog.ll_cfg)
		 
		 *)

