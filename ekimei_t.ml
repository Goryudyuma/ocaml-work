(* 駅名の情報(漢字の駅名、ひらがなの駅名、ローマ字の駅名、その駅が所属する路線名)を格納するレコード型 *)
type ekimei_t = {
    kanji : string;
    kana : string;
    romaji : string;
    shozoku : string;
}

(* ekimei_t型のデータを受け取ったら、「路線名,駅名(かな)」の形式で文字列を返す関数 *)
(* hyoji : ekimei_t -> string *)
let hyoji ekimei = match ekimei with
| {kanji = kanji; kana = kana; romaji = romaji; shozoku = shozoku} -> shozoku ^ "," ^ kanji ^ "(" ^ kana ^ ")"

(* テスト *)
let test1 = hyoji {kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myougadani"; shozoku = "丸ノ内線"}
          = "丸ノ内線,茗荷谷(みょうがだに)"
