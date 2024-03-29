open List

(** [map f xs] Builds a list of the results of applying [f] to each [x] in [xs],
    using simple recursion with an if expression. *)
let rec map f xs =
  if length xs = 0
  then []
  else f (hd xs) :: map f (tl xs)

let nums = [0; 1; 2; 3]
let double x = x * 2

let double_nums = map double nums

let () = iter (Printf.printf "%d ") double_nums
let () = print_endline ""
