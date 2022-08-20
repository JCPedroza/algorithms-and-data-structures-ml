(** [fact x] computes [x]! using tail recursion. *)
let fact x =
  let rec loop x prod = match x with
    | 0 -> prod
    | x -> loop (x - 1) (x * prod)
  in loop x 1
