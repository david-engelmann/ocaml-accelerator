(*
open Core
open Async
*)
open OUnit2

let add x y = x + y

let test_addition _ =
  OUnit2.assert_equal 5 (add 2 3)

let suite =
    "suite" >:::
        [
            "test_addition" >:: test_addition;
        ]

let () =
  run_test_tt_main suite

