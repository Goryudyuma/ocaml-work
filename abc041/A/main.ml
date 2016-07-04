let main =
    let s = read_line() in
    Scanf.sscanf (read_line()) "%d" (
        fun n ->
            print_char s.[n - 1];
            print_string "\n";
    )
