(** [mul_of_3_or_5] sums the multiples of 3 or 5 below [limit], using
tail recursion. *)
let mul_of_3_or_5 limit =
  let rec loop sum  = function
    | 1 -> sum
    | n -> if n mod 3 == 0 || n mod 5 == 0
      then loop (sum + n) (n - 1)
      else loop (sum) (n - 1)
  in loop 0 (limit - 1)

let _ = assert (1_000 |> mul_of_3_or_5 == 233_168)

let solution = mul_of_3_or_5
let id = "tail recursion"
