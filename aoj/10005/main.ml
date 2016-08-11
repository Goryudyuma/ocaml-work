let main = 
    let rec hw n = 
        print_string "Hello World\n"; 
        if n == 1
        then 1
        else hw (n - 1)
    in hw 1000
