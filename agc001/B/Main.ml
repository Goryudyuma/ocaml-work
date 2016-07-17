let main = 
    Scanf.sscanf (read_line()) "%d %d" (
        fun n x -> 
            let rec gcd a b = 
                if a < b
                then gcd b a
                else if b = 0
                then a
                else gcd b (a mod b)
            in 
            print_int (3 * (n - gcd n x));
            print_string "\n"
    )
