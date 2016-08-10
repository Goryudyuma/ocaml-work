let main = Scanf.sscanf (read_line()) "%d %d" (
    fun a b ->
        print_string "a ";
        if a = b
        then print_string "=="
        else if a < b
        then print_string "<"
        else print_string ">";
        print_string " b\n"
)
