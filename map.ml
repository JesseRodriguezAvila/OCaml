(* Create high-order function map using OCaml *)

let rec map (f:'a->'b) (lst:'a list) : 'b list =
  match lst with
  | [] -> []
  | head::tail ->
    (f head) :: (map f tail)
;;


(* example using map *)
let list1 = [1;2;3;4;5;6;7;8;9;10;12;13;14;15;16];;
let f' x = if x mod 2 <> 0 then x else x * x;;
let square_only_even_elements = map (f') list1;; 


(* print list *)
print_string (List.fold_right (fun x y -> (string_of_int x) ^ " " ^ y) (square_only_even_elements) ("\n"));;
(*
   OUTPUT --> 1 4 3 16 5 36 7 64 9 100 144 13 196 15 256 
*)