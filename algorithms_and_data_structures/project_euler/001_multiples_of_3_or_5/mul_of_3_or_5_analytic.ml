(** This optimization gets rid of the loops completely. To see the details
visit https://projecteuler.net/overview=001 (you need to be logged in and pass
the problem to see the solution optimization spoilers). *)

(** [sum_div_by] computes sum of numbers dibisible by [n] up to [limit]. *)
let sum_div_by n limit =
  let p = limit / n
  in n * ((p) * (p + 1)) / 2

(** [mul_of_3_or_5] sums the multiples of 3 or 5 below [limit], using an
analytic approach. *)
let mul_of_3_or_5 limit =
  let limitMinOne = limit -1 in
  sum_div_by 3 limitMinOne +
  sum_div_by 5 limitMinOne -
  sum_div_by 15 limitMinOne

let solution = mul_of_3_or_5
let id = "analytic optimization"

let _ = assert (1_000 |> mul_of_3_or_5 == 233_168)
