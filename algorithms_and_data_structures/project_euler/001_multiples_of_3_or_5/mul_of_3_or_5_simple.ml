(** [loop] recursively sums multiples of 3 or 5 up to [n] (inclusive) *)
let rec loop = function
  | 0 -> 0
  | n -> if n mod 3 == 0 || n mod 5 == 0
    then n + loop (n - 1)
    else loop(n - 1)

(** [mul_of_3_or_5] sums the multiples of 3 or 5 below [n], using
simple recursion. *)
let mul_of_3_or_5 n = loop(n - 1) (* n - 1 because n is exclusive. *)

let _ = assert (1_000 |> mul_of_3_or_5 == 233_168)

let solution = mul_of_3_or_5
let id = "simple recursion"
