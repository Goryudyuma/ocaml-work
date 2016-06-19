(* #use "metro.ml" *)
(* 目的: ローマ字の駅名(文字列)と駅名リスト(ekimei_t list型)を受け取ったら、その駅の漢字表記を文字列で返す関数 *)
(* romaji_to_kanji : string -> ekimei_t list -> string *)
let rec romaji_to_kanji ekimei lst = match lst with
| [] -> ""
| {kanji = kanji; kana = kana; romaji = romaji; shozoku = shozoku } :: rest -> 
        if romaji = ekimei
        then kanji
        else romaji_to_kanji ekimei rest 

let test1 = romaji_to_kanji "" global_ekimei_list = ""
let test2 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
let test3 = romaji_to_kanji "shinotsuka" global_ekimei_list = "新大塚"
let test4 = romaji_to_kanji "aaaa" global_ekimei_list = ""
