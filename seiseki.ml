(* 目的: 名前と成績の組を受け取ったら「○○さんの評価は△です」という文字列を返す *)
(* seiseki : (string * string) -> string *)
let seiseki pair = match pair with
| (a, b) -> a ^ "さんの評価は" ^ b ^ "です" ;;

(* テスト *)
let test1 = seiseki ("あいうえお", "秀") = "あいうえおさんの評価は秀です"
let test2 = seiseki ("かきくけこ", "良") = "かきくけこさんの評価は良です"
let test3 = seiseki ("さしすせそ", "不可") = "さしすせそさんの評価は不可です"
