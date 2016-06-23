(* 文字列のリストを受け取ったら、その中の要素を前から順に全部くっつけた文字列を返す *)
(* concat : string list -> string *)
let concat strlst = 
    List.fold_right (^) strlst ""

(* テスト *)
let test1 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
