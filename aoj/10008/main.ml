let main = Scanf.sscanf (read_line()) "%d %d" (
    fun a b ->
        print_int (a / b);
        print_string " ";
        print_int (a mod b);
        print_string " ";
        print_string (Printf.sprintf ("%f") (float_of_int a /. float_of_int b));
        print_string "\n"
)
