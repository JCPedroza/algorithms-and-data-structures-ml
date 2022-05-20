open List

(** [is_num_valid] checks if [n] is divisible by 3 or 5. *)
let is_num_valid num =
  num mod 3 == 0 || num mod 5 == 0

(** [build_valid_range] builds a list of multiples of 3 or 5 below [limit]. *)
let build_valid_range limit =
  filter is_num_valid (init (limit - 1) succ)

(** [mul_of_3_or_5] sums the multiples of 3 or 5 below [n], using fold,
filter, and a range. *)
let mul_of_3_or_5 limit =
  fold_left ( + ) 0 (build_valid_range limit)

let solution = mul_of_3_or_5
let id = "fold range built with filter"

let _ = assert (1_000 |> mul_of_3_or_5 == 233_168)
