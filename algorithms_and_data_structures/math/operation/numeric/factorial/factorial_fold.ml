open List

(** [fact x] computes [x]! using fold and init. *)
let fact x = fold_left ( * ) 1 (init x succ);;
