(** [mul_of_3_or_5] sums the multiples of 3 or 5 below [limit], using
a for loop. *)
let mul_of_3_or_5 limit =
  let sum = ref 0 in
  for n = 0 to limit do
    if n mod 3 == 0 || n mod 5 == 0
    then sum := !sum + n
  done;
  !sum

let _ = assert (1_000 |> mul_of_3_or_5 == 233_168)

let solution = mul_of_3_or_5
let id = "for loop"
