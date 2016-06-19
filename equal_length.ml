(* 目的: ２つのリストlst1,lst2を受け取ってそれらの長さが同じかどうか判定する関数 *)
(* equeal_length : 'a list -> 'a list -> bool *)
let rec equeal_length lst1 lst2 = match (lst1, lst2) with
| ([], []) -> true
| (first1 :: rest1, []) -> false
| ([], first2 :: rest2) -> false
| (first1 :: rest1, first2 :: rest2) -> equeal_length rest1 rest2

(* テスト *)
let test1 = equeal_length [] [] = true
let test2 = equeal_length [] [1] = false
let test3 = equeal_length [2] [1] = true
let test4 = equeal_length ["a"; "xx"] [1] = false
let test5 = equeal_length [1] ["a"; "xx"] = false
let test6 = equeal_length ["a"; "xx"] [1; 2] = true
let test7 = equeal_length [1; 2] ["a"; "xx"] = true
