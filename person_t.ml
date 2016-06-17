(* 人のプロフィール(名前、身長、体重、誕生日、血液型)を表す型 *)
type person_t ={
    namae : string;
    shintyou : float;
    taizyuu : float;
    tanzyoubi : (int * int);
    ketsuekigata : string;
}

(* 目的: person_t型のデータを受け取ったら、「○○さんの血液型は△型です」という文字列を返す *)
(* ketsueki_hyoji : person_t -> string *)
let ketsueki_hyoji person = match person with
| {namae = na; shintyou = sh; taizyuu = tai; tanzyoubi = tan; ketsuekigata = ke} -> na ^ "さんの血液型は" ^ ke ^ "型です" 

(* テスト *)
let test1 = ketsueki_hyoji {namae="asai"; shintyou=160.0; taizyuu=60.0; tanzyoubi=(10,5); ketsuekigata="A"}
          = "asaiさんの血液型はA型です"
let test2 = ketsueki_hyoji {namae="hirui"; shintyou=184.5; taizyuu=54.2; tanzyoubi=(5,18); ketsuekigata="B"}
          = "hiruiさんの血液型はB型です"
let test3 = ketsueki_hyoji {namae="yuui"; shintyou=150.9; taizyuu=48.6; tanzyoubi=(11,10); ketsuekigata="O"}
          = "yuuiさんの血液型はO型です"
let test4 = ketsueki_hyoji {namae="yorui"; shintyou=170.3; taizyuu=68.3; tanzyoubi=(8,25); ketsuekigata="AB"}
          = "yoruiさんの血液型はAB型です"
