(* 目的: x座標とy座標の組で表された平面座標を２つ受け取ったら、その中点の座標を返す関数*)
(* chuten : (float, float) -> (float, float) -> (float, float) *)
let chuten pair1 pair2 = match pair1 with
| (a, b) -> match pair2 with
| (c, d) -> ((a +. c) /. 2.0, (b +. d) /. 2.0)

(* テスト *)
let test1 = chuten (0.0, 0.0) (0.0, 0.0) = (0.0, 0.0)
let test2 = chuten (3.2, 4.5) (3.5, 6.4) = (3.35, 5.45)
let test3 = chuten (-3.2, 3.3) (5.2, -4.3) = (1.0, -0.5)
let test4 = chuten (2.2, -2.2) (2.2, -3.0) = (2.2, -2.6)
