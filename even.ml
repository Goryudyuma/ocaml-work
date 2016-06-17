(* int list は
 * - []          空リスト、あるいは
 * first :: rest 最初の要素がfirstで残りのリストがrest
 *               (restが自己参照のケース)
 * という形
 *)

(* 目的: 受け取ったリストlstの内、偶数の要素のみを残したリストを返す関数 *)
(* even : int list -> int *)
let rec even lst = match lst with
| [] -> []
| first :: rest -> if first % 2 = 0 then first :: even rest
                                    else          even rest

(* テスト *)
let test1 = sum [] = []
let test2 = sum [2] = [2]
let test3 = sum [1; 3] = []
let test4 = sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = [2; 4; 6; 8; 10]
