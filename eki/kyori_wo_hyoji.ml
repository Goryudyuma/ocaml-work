#use "metro.ml"
#use "romaji_to_kanji.ml"
#use "get_ekikan_kyori.ml"
(* 目的: ローマ字の駅名を２つ受け取ってきたら、その間の距離を調べ、直接つながっている場合は「A駅からB駅までは○kmです」という文字列を返し、繋がっていない場合は「A駅とB駅はつながっていません」という文字列を返し、入力されたローマ字の駅名が存在しなかった場合には「～という駅は存在しません」と返す *)
(* kyori_wo_hyoji : string -> string -> string *)

let kyori_wo_hyoji str1 str2 = match (romaji_to_kanji str1 global_ekimei_list, romaji_to_kanji str2 global_ekimei_list) with
| ("", kanji_str2) -> str1 ^ "という駅は存在しません"
| (kanji_str1, "") -> str2 ^ "という駅は存在しません"
| (kanji_str1, kanji_str2) -> 
        let len = get_ekikan_kyori kanji_str1 kanji_str2 global_ekikan_list in
        if len = infinity
        then kanji_str1 ^ "駅と" ^ kanji_str2 ^ "駅はつながっていません"
        else kanji_str1 ^ "駅から" ^ kanji_str2 ^ "駅までは" ^ string_of_float len ^ "kmです"

(* テスト *)
let test1 = kyori_wo_hyoji "aaaa" "bbbb" = "aaaaという駅は存在しません"
let test2 = kyori_wo_hyoji "myogadani" "bbbb" = "bbbbという駅は存在しません"
let test3 = kyori_wo_hyoji "tokyo" "yotsuya" = "東京駅と四ツ谷駅はつながっていません"
let test4 = kyori_wo_hyoji "myogadani" "shinotsuka" = "茗荷谷駅から新大塚駅までは1.2kmです"
let test5 = kyori_wo_hyoji "shinotsuka" "myogadani" = "新大塚駅から茗荷谷駅までは1.2kmです"
