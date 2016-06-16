(* 目的: x座標とy座標の組で表された平面座標を受け取ったら、x軸について対象な点の座標を返す *)
(* taisho_x : float * froat -> float * float *)
let taisho_x pair = match pair with
| (a, b) -> (a, -.b)

(* テスト *)
let test1 = taisho_x (0.0, 0.0) = (0.0, 0.0)
let test2 = taisho_x (1.0, 1.0) = (1.0, -1.0)
let test3 = taisho_x (3.0, -1.0) = (3.0, 1.0)
let test4 = taisho_x (2.5, 1.2) = (2.5, -1.2)
let test5 = taisho_x (5.0, -2.2) = (5.0, 2.2)
