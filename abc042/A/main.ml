let main = Scanf.sscanf (read_line()) "%d %d %d" (fun a b c -> 
    if a * b * c = 175
    then print_string "YES\n"
    else print_string "NO\n"
)
