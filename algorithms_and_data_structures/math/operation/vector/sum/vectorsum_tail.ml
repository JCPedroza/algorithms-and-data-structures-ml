(** [vsum lst] sums the integers in [lst] using tail recursion. *)
let vsum lst =
  let rec loop lst sum = match lst with
    | [] -> sum
    | h :: t -> loop t (h + sum)
in loop lst 0
