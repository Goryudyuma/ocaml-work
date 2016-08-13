let main =
    let print a b =
        print_int a;
        print_string " ";
        print_int b;
        print_string "\n";
    in
    let rec recursion n =
        Scanf.sscanf (read_line()) "%d %d" (
            fun a b ->
                if a = 0 && b = 0
                then ()
                else if a < b
                then (
                    print a b;
                    recursion (n + 1)
                )
                else (
                    print b a;
                    recursion (n + 1)
                )
        )
    in recursion 1
