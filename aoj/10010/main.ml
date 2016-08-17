let main = 
let rec sub x = Scanf.sscanf (read_line()) "%d %c %d" (
    fun a b c ->
        if b = '?'
        then ()
        else 
            ((
            if b = '+'
            then print_int (a + c)
            else if b='*'
            then print_int (a * c)
            else if b = '-'
            then print_int (a - c)
            else print_int (a / c)
            );
            print_string "\n";
            sub x
            )
) in sub 1
