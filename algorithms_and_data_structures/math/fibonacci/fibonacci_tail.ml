(** [fibo n] computes the nth fibonacci number using tail recursion. *)
let fibo n =
  let rec loop n now nxt = match n with
    | 0 -> now
    | n -> loop (n - 1) (nxt) (now + nxt)
  in loop n 0 1
