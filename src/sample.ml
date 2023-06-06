(*
open Core
open Async
*)

module Sample = struct
    type 'a sample =
        | MySample of { value : 'a }
    (* let it rip *)
    let mysample4 : int sample = MySample { value = 4; }
    let (sample_x : int) = 4
    let (sample_y : int) = 2
    let add1 (x : int) (y : int) = x + y
end

