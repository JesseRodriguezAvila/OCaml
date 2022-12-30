(* generic form of reduce *)
let rec reduce (f:'a->'b->'b) (basecase:'b) (input:'a list) : 'b =
  match input with
  | [] -> basecase
  | head::tail -> 
    f head (reduce f basecase tail) 
;;


(* get length of list *)

let calclen x y = y + 1;;
let length (lst:'a list) : 'b =
  reduce (calclen) 0 lst
;;  

print_int (length [1;2;3;4]);;
print_int (length [1.;2.;3.;4.]);;
print_int (length ["the";"something";"testiknf"]);;

print_string "\n";;
let printIntListFunction x y = ( (string_of_int x) ^ " " ^ y );;
print_string (reduce (printIntListFunction) ("\n") [1;2;3;4]);;
print_string "\n";;