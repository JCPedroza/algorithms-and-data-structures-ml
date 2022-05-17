open List

(** [is_num_valid] checks if [n] is divisible by 3 or 5. *)
let is_num_valid n =
  n mod 3 == 0 || n mod 5 == 0

(** [build_valid_range] builds a list of multiples of 3 or 5. *)
let build_valid_range n =
  filter is_num_valid (init (n - 1) succ)

(** [mul_of_3_or_5] sums the multiples of 3 or 5 below [n]. *)
let mul_of_3_or_5 n =
  fold_left ( + ) 0 (build_valid_range n)
