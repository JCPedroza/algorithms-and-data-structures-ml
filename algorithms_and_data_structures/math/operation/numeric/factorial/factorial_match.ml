(** [fact x] computes [x]! using pattern matching. *)
let rec fact = function
  | 0 -> 1
  | x -> x * fact (x - 1)
