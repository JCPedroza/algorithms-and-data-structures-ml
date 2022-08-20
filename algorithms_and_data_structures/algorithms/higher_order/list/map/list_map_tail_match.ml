open List

(** [map f xs] Builds a list of the results of applying [f] to each [x] in [xs],
    using tail call recursion with short form pattern matching. *)
let map f xs =
  let rec loop maps = function
    | [] -> maps
    | y :: ys -> loop (f y :: maps) ys
  in rev (loop [] xs)

let nums = [0; 1; 2; 3]
let double x = x * 2

let double_nums = map double nums

let () = iter (Printf.printf "%d ") double_nums
let () = print_endline ""
