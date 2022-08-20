(** [vsum lst] sums the integers in [lst] using pattern matching. *)
let rec vsum = function
  | [] -> 0
  | h :: t -> h + vsum t
