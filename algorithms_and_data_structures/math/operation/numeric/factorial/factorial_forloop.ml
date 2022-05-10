(** [fact x] computes [x]! using for loop. *)
let fact x =
  let product = ref 1 in
  for num = 1 to x do
    product := !product * num
  done;
  !product
