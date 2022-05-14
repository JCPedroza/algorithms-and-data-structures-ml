let mul_of_3_or_5 n =
  let rec loop sum  = function
    | 1 -> sum
    | n -> if n mod 3 == 0 || n mod 5 == 0
      then loop (sum + n) (n - 1)
      else loop (sum) (n - 1)
  in loop 0 (n - 1)

let () = 10 |> mul_of_3_or_5 |> print_int
