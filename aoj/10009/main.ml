let main = Scanf.sscanf (read_line()) "%f" (
    fun a -> 
        let pi = 4.0 *. atan 1.0 in
        print_string (Printf.sprintf "%f %f\n" (a *. a *. pi) (a *. 2.0 *. pi))
)
