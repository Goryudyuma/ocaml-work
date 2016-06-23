(* 引数n以下の素数を返す *)
(* prime : int -> int list *)
let prime n = 
    let rec numlstfunc n =
        if n < 2
        then []
        else numlstfunc (n - 1) @ [n]
    in let rec numrec lst =
        match lst with
        | [] -> []
        | first :: rest -> first :: numrec (List.filter(fun a -> a mod first != 0) rest)
    in numrec (numlstfunc n)
