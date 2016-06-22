#use "shokika.ml"
(*
type eki_t = {
    namae        : string;   (* 駅名 *)
    saitan_kyori : float;      (* 最短距離 *)
    temae_list   : string list; (* 駅名のリスト *)
}
 *)

(* 直前に確定した駅p(eki_t型)と未確定の駅q(eki_t)を受け取ったら、pとqが直接つながっているかどうか調べ、つながっていたらqの最短距離と手前リストを必要に応じて更新したもの、繋がっていなかったら元のqをそのまま返す *)
(* koushin1 : eki_t -> eki_t -> eki_t *)
let koushin1 p q = 
    let kyori = get_ekikan_kyori p.namae q.namae global_ekikan_list in
    if kyori != infinity
    then match q with
    | {namae = namae; saitan_kyori = saitan_kyori; temae_list = temae_list } ->  
            if kyori < saitan_kyori
            then {namae = namae; saitan_kyori = kyori; temae_list = p.namae :: temae_list}
            else q
    else q
