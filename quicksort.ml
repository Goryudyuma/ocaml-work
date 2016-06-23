(* quicksort *)
(* quicksort : int list -> int list *)
let rec quicksort lst = 
    match lst with
    | [] -> []
    | first :: rest ->   quicksort (List.filter ((>=) first) rest)
                       @ [first]
                       @ quicksort (List.filter ((<)  first) rest)

(* テスト *)
let test1 = quicksort [] = []
let test1 = quicksort [1] = [1]
let test1 = quicksort [1; 2] = [1; 2]
let test1 = quicksort [2; 1] = [1; 2]
let test1 = quicksort [5; 4; 9; 8; 2; 3] = [2; 3; 4; 5; 8; 9]

