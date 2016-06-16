(* 目的: 国語、数学、英語、理科、社会の5教科の点数を与えられたら、その合計点と平均点を組にして返す *)
(* float -> float -> float -> float -> float -> float * float *)
let goukei_to_heikin a b c d e = 
    (a +. b +. c +. d +. e, (a +. b +. c +. d +. e) /. 5.0 )

(* テスト *)
let test1 = goukei_to_heikin 1.0 2.0 3.0 4.0 5.0 = (15.0, 3.0)
let test2 = goukei_to_heikin 5.0 4.0 3.0 2.0 1.0 = (15.0, 3.0)
let test3 = goukei_to_heikin 5.0 5.0 5.0 5.0 5.0 = (25.0, 5.0)
