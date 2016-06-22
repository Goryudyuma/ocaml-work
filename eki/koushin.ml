#use "koushin1.ml"
(* 目的: 直前に確定した駅p(eki_t型)と未確定の駅リストv(eki_t list型)を受け取ったら、必要な更新処理を行ったあとの未確定の駅リストを返す *)
(* koushin -> eki_t -> eki_t list -> eki_t list *)
let koushin p v = List.map (koushin1 p) v
