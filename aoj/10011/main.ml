let main = 
    Scanf.sscanf (read_line()) "%d" (fun n -> 
        let rec recursion n = 
            if n = 0
            then []
            else (
                Scanf.scanf "%s " (fun str ->
                    str :: recursion (n-1);
                )
            )
        in print_string (String.concat " " (List.rev (recursion n)));
        print_string "\n"
    )
