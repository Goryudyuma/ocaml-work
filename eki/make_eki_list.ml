#use "eki_t.ml"
#use "kyori_wo_hyoji.ml"

(* 目的: ekimei_t型のリストを受け取ったら、その駅名を使ってeki_t型のリストを作る *)
(* temae_list : ekimei_t list -> eki_t list *)
let rec temae_list lst = match lst with
| [] -> []
| {kanji = kanji; kana = kana; romaji = romaji; shozoku = shozoku} :: rest -> 
        {namae = kanji; saitan_kyori = infinity; temae_list = []} :: temae_list rest

