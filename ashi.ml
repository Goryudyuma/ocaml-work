(* 目的: 鶴の数が与えられたら足の本数を返す *)
(* tsuru_no_ashi : int -> int *)

let tsuru_no_ashi x = x * 2

(* 鶴テスト *)
let tsuru_test1 = tsuru_no_ashi 10 = 20
let tsuru_test2 = tsuru_no_ashi 2 = 4
let tsuru_test3 = tsuru_no_ashi 5 = 10


(* 目的: 亀の数が与えられたら足の本数を返す *)
(* kame_no_ashi : int -> int *)

let kame_no_ashi x = x * 4

(* 亀テスト *)
let kame_test1 = kame_no_ashi 10 = 40
let kame_test2 = kame_no_ashi 2 = 8
let kame_test3 = kame_no_ashi 5 = 20


(* 目的: 鶴の数と亀の数を与えられたら足の本数の合計を返す *)
(* tsurukame_no_ashi : int -> int -> int *)

let tsurukame_no_ashi x y = tsuru_no_ashi x + kame_no_ashi y

(* 鶴亀テスト *)
let tsurukame_test1 = tsurukame_no_ashi 2 5 = 24
let tsurukame_test2 = tsurukame_no_ashi 5 2 = 18
let tsurukame_test3 = tsurukame_no_ashi 10 11 = 64


(* 目的: 鶴と亀の合計と、足の本数の合計が与えられると、弦の数を返す *)
(* tsurukame : int -> int -> int *)

let tsurukame x y = (y * 4 - x) / 2

(* 鶴亀算テスト *)
let tsurukamezan_test1 = tsurukame 24 7 = 2
let tsurukamezan_test2 = tsurukame 18 7 = 5
let tsurukamezan_test3 = tsurukame 64 21 = 10
