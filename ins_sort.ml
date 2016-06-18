(* 目的: 予め昇順に並んでいるリストlstと整数nを受け取ったら、lstを前から順に見ていき、昇順となる位置にnを挿入したリストを返す関数 *)
(* insert : int list -> int -> int list *)
let rec insert lst n = match lst with
| [] -> n :: []
| first :: rest -> if first < n
then first :: insert rest n
else n :: first :: rest 

(* テスト *)
let test1 = insert [] 1 = [1]
let test2 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8]
let test3 = insert [1; 3; 4; 7; 8] 0 = [0; 1; 3; 4; 7; 8]
let test4 = insert [1; 3; 4; 7; 8] 9 = [1; 3; 4; 7; 8; 9]

(* 目的: 整数のリストを受け取ったらそれを昇順に整列したリストを返す関数 *)
(* ins_sort : int list -> int list *)
let rec ins_sort lst = match lst with
| [] -> [] 
| first :: rest -> insert (ins_sort rest) first 

(* テスト *)
let test5 = ins_sort [] = []
let test6 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
let test7 = ins_sort [5; 4; 3; 2; 1] = [1; 2; 3; 4; 5] 
let test8 = ins_sort [5; 3; 8; 0;1; 7; 4] = [0; 1; 3; 4; 5; 7; 8]
