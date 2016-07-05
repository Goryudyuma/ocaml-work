let main = Scanf.sscanf (read_line()) "%d %d %d" (
    fun a b c -> print_int (a * b mod 1000000007 * c mod 1000000007);
    print_string "\n";
)
