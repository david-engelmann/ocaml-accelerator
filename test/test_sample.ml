(*
open Core
open Async
*)
open OUnit2
open Ocaml_accelerator.Sample

let test_addition _ =
  OUnit2.assert_equal 6 (Sample.add1 Sample.sample_x Sample.sample_y)

let test_mysample4 _ =
  match Sample.mysample4 with
   | MySample { value; } ->
     OUnit2.assert_equal 4 value

let suite =
    "suite" >:::
        [
            "test_addition" >:: test_addition;
            "test_mysample4" >:: test_mysample4;
        ]

let () =
  run_test_tt_main suite

