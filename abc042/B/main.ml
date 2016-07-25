let main = Scanf.sscanf (read_line()) "%d %d" (fun n l ->
    let rec inputdata n = 
        if n = 0
        then []
        else read_line() :: inputdata (n - 1)
    in let rec sortdata lst = List.sort compare lst
    in let rec printdata lst = 
        match lst with
        | [] -> ()
        | first :: lst -> (
            print_string first;
            printdata lst
        )
    in printdata (sortdata (inputdata n));
    print_string "\n"
)
