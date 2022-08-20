open List

(** [vsum lst] sums the integers in [lst] using fold. *)
let vsum lst = fold_left ( + ) 0 lst
