#use "shokika.ml"

(* ekimei_t型のリストを受け取ったらそれをひらがなの順に整列し、更に駅の重複を取り除いたekimei_t型のリストを返す *)
(* seiretsu : ekimei_t list -> ekimei_t list *)
let rec seiretsu lst = match lst with
| [] -> []
| eki1 :: rest1 -> 
        let rec insert eki1 restin = match restin with
        | [] -> [eki1]
        | ekiin :: restin2 ->
                if eki1.kana = ekiin.kana
                then restin
                else if eki1.kana > ekiin.kana
                then ekiin :: insert eki1 restin2
                else eki1 :: restin
        in
        insert eki1 (seiretsu rest1)

let test1 = List.length global_ekimei_list != List.length (seiretsu global_ekimei_list)
