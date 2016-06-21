#use "make_eki_list.ml"
 
(* eki_t型のリストと起点(漢字の文字列)を受け取ったら、起点のみsaitan_kyoriが0.でtemae_listが始点の駅名のみからなるリストを返す *)
(* shokika : eki_t list -> string -> eki_t list *)
let rec shokika lst str = match lst with
| [] -> []
| ({namae = namae; saitan_kyori = saitan_kyori; temae_list = temae_list} as one) :: rest ->
        if namae = str
        then {namae = namae; saitan_kyori = 0.; temae_list = [namae]} :: rest
        else one :: shokika rest str
