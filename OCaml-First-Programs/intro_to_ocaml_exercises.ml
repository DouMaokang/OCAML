(* Write an expression that multiplies 42 by 10. *)
let e = 42 * 10 in
    print_endline (string_of_int e);

(* Write an expression that divides 3.14 by 2.0. *)
let e = 3.14 /. 2.0 in
    print_endline (string_of_float e);

(* Write an expression that computes 4.2 raised to the seventh power. *)
let e = 4.2 *. 4.2 *. 4.2 *. 4.2 *. 4.2 *. 4.2 *. 4.2 in
    print_endline (string_of_float e);

(* Write an if expression that evaluates to 42 if 2 is greater than 1 and otherwise evaluates to 7. *)
let e = if 2 > 1 then 42 else 7 in
    print_endline (string_of_int e);

(* Using the increment function from above as a guide, define a function double that multiplies its input by 2. *)
let double x = 2 * x in
    assert (double 2 = 4);

(* Write a function divide : numerator:float -> denominator:float -> float. Apply your function. *)
let divide ~numerator ~denominator = numerator /. denominator in
    print_endline (string_of_float (divide 5.0 2.0));
