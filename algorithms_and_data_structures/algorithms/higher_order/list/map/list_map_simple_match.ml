(** [map f xs] Builds a list of the results of applying [f] to each [x] in [xs],
    using simple recursion with short form pattern matching. *)
let rec map f = function
  | [] -> []
  | x :: xs -> f x :: map f xs

let nums = [0; 1; 2; 3]
let double x = x * 2

let double_nums = map double nums

let () = List.iter (Printf.printf "%d ") double_nums
let () = print_endline ""
