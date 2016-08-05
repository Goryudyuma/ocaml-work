let main = 
    Scanf.sscanf (read_line()) "%d %d" (fun a b -> print_int (a * b);print_string " ";print_int ((a+b) * 2); print_string "\n" );
