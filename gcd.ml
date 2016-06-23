(* ユークリッドの互除法 *)
(* gcd : int -> int -> int *)
let rec gcd m n = 
    if m < n
    then gcd n m
    else if n = 0
    then m
    else gcd n (m mod n)
