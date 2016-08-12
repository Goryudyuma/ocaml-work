let main =
    let rec case n = 
        Scanf.sscanf (read_line()) "%d" (
            fun a -> 
                if a = 0
                then ()
                else 
                    (
                    print_string "Case ";
                    print_int n;
                    print_string ": ";
                    print_int a;
                    print_string "\n";
                    case (n+1))
        )
    in case 1
