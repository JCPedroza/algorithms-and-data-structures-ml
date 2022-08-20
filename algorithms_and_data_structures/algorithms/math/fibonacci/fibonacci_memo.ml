(** [fibo n] computes the nth fibonacci number using memoization. *)
let fibo n =
  let memo : int option array = Array.make (n + 1) None in
  let rec loop n = match memo.(n) with
    | Some result -> result (* Computed already *)
    | None -> let result =
        if n < 2 then 1 else loop (n - 1) + loop (n - 2)
    in memo.(n) <- Some result;
    result
  in loop n
