#use "koushin.ml"

(* (eki_t list)型のリストを受け取ったら、「最短距離最小の駅」と「最短距離最小の駅以外からなるリスト」の組を返す関数 *)
(* saitan_wo_bunri : eki_t list -> eki_t * eki_t list *)
let saitan_wo_bunri lst = 
    let lenmin = List.fold_right (fun a b -> if a.saitan_kyori > b.saitan_kyori then a else b) lst {namae = ""; saitan_kyori = infinity; temae_list = []} 
    in (lenmin, List.filter ((!=) lenmin) lst)
