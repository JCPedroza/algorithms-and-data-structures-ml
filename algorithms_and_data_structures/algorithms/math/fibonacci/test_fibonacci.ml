open OUnit2

open Fibonacci_match

let tests = "test suite for nth fibonacci" >::: [
  "zero" >:: (fun _ -> assert_equal (fibo 0) 0);
]

let _ = run_test_tt_main tests
