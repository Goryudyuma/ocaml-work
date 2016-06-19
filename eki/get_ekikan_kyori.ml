(* #use "metro.ml" *)
(* 目的: 漢字の駅名ふたつ(いずれも文字列)と駅間リスト(ekikan_t list)を受け取ったら、駅間リストの中からその2駅間の距離を返す関数 *)
(* get_ekikan_kyori : string -> string -> ekikan_t list -> float *)
let rec get_ekikan_kyori str1 str2 lst = match lst with
| [] -> infinity
| {kiten = kiten; shuten = shuten; keiyu = keiyu; kyori = kyori; jikan = jikan} :: rest -> 
        if kiten = str1 && shuten = str2
        then kyori
        else if kiten = str2 && shuten = str1
        then kyori
        else get_ekikan_kyori str1 str2 rest 

(* テスト *)
let test1 = get_ekikan_kyori "" "" global_ekikan_list = infinity
let test2 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2
let test2 = get_ekikan_kyori "新大塚" "茗荷谷" global_ekikan_list = 1.2
let test2 = get_ekikan_kyori "東京" "四谷" global_ekikan_list = infinity
