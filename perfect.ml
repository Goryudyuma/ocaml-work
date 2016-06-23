(* 目的: nから1までのリストを作る *)
(* enumerate : int -> int list *)
let rec enumerate n =
    if n = 0
    then []
    else n :: enumerate (n - 1)

(* 目的: 約数のリストを返す *)
(* divisor : int -> int list *)
let divisor n = List.filter (fun x -> n mod x = 0) (enumerate n)

(* 入力値nより小さい完全数のリストを返す関数 *)
(* perfect : int -> int list *)
let perfect n = List.filter (fun x -> x = List.fold_right (+) (divisor x) 0 - x) (enumerate n)


(* 1から受け取った自然数までの合計を求める *)
(* one_to_n : int -> int *)
let one_to_n n = List.fold_right (+) (enumerate n) 0
