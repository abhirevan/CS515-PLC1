open LibUtil

(* 
 * One possible implementation of a context is:
 * an association list of the form: (string, uid) list
 *)
type t = (string * Ll.uid) list
exception Scope_error of string 

let dump (c : t) : unit =
failwith "dump not implemented"
      
let empty : t = [] 

(* try to reuse freed, otherwise create new *)
let alloc (sym : string) (c : t) : (t * Ll.uid) = 
	try
		let old_uid = List.assoc sym c in (c,old_uid)
	with Not_found -> let new_uid = Ll.gen_sym () in 
						let new_ctxt = (sym,new_uid) :: c in
							(new_ctxt,new_uid)
 


let lookup (sym : string) (c : t) : Ll.uid =
	try
		List.assoc sym c
	with
	| Not_found -> raise (Scope_error sym)
