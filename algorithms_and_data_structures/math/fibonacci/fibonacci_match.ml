(** [fibo n] computes the nth fibonacci number using pattern matching. *)
let rec fibo = function
  | 0 -> 0
  | 1 -> 1
  | n -> fibo (n - 1) + fibo (n - 2)
