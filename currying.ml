(* 
  A curried function is a function with several arguments, written so that it accepts the first argument 
  and returns a function that accepts the second argument and etc...
*)

(* curried function add *)
let add = (fun x -> (fun y -> x + y));; 
let inc = add 1;; (* inc will return (fun y -> 1 + y) *)

print_int (inc 3);; (* OUTPUT --> 4 *)


