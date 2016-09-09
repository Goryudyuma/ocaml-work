let main = 
    let rec main_ _ =
    Scanf.sscanf (read_line()) "%d %d" (
        fun a b ->
            if a = 0 && b = 0
            then ()
            else (
                let rec recursion h w = 
                    if h = 0
                    then ()
                    else (
                        let rec recursion2 w = 
                            if w = 0
                            then ()
                            else 
                            (
                                (
                                if w = 1 || w = b || h = 1 || h = a
                                    then print_string "#"
                                    else print_string "."
                                );
                                recursion2 (w-1)
                            ) in recursion2 w;
                            print_string "\n";
                            recursion (h-1) w
                    )
                in recursion a b;
                print_string "\n";
                main_ 1
            )
    )
    in main_ 1
