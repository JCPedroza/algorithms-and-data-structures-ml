open List

(** [vsum lst] sums the integers in [lst] using for loop. *)
let vsum lst =
  let sum = ref 0 in
  for num = 0 to length lst - 1 do
    sum := !sum + nth lst num
  done;
  !sum
