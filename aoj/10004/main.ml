let rec printlist lst = 
    match lst with
    | [] -> []
    | first :: rest ->  
        print_int first;
        if List.length rest = 0
        then print_string "\n"
        else print_string " "; printlist rest
let main = Scanf.sscanf (read_line()) "%d %d %d" (fun a b c -> printlist (List.sort (compare) [a;b;c]))
