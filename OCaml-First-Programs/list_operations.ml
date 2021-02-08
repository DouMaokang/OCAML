(** [sum lst] is the sum of the elements of [lst]. *)
let rec sum lst = 
    match lst with
    | [] -> 0
    | h::t -> h + sum t

(** [length lst] is the length of [lst]. *)
let rec length lst =
    match lst with
    | [] -> 0
    | _::t -> 1 + length t

(** [head lst] is the first element of [lst]. *)
let rec head lst = 
    match lst with
    | [] -> raise (Invalid_argument "empty list")
    | h::t -> h

(** [last lst] is the last element of [lst]. *)
let rec last lst = 
    match lst with
    | [] -> raise (Invalid_argument "empty list")
    | h::[] -> h
    | h::t -> last t

(** [has x lst] is the fact that [lst] contains [x]. *)
let rec has x lst = 
    match lst with
    | [] -> false
    | h::t -> (h = x) || has x t

(** [empty lst] indicates whether [lst] is empty. *)
let rec empty lst = 
    lst = []

(** [index n lst] is the n-th element of [lst]. Raises: [Invalid_argument "n"] unless [n] is greater than 0 and less than the length of [lst]. *)
let rec index n lst = 
    if n < 0 then
        raise (Invalid_argument "n")

    else 
        if n = 0 then
            match lst with
            | [] -> raise (Invalid_argument "n")
            | h::_ -> h
        else
            match lst with
            | [] -> raise (Invalid_argument "n")
            | _::t -> index (n-1) t
;;
(* Test the above defined functions. *)
let ls1 = 1::2::3::[] and ls2 = "This"::"is"::"ocaml"::[] and ls3 = [] in
(   
    assert (sum ls1 = 6);
    assert (length ls2 = 3);
    assert (length ls3 = 0);
    assert (head ls1 = 1);
    assert (head ls2 = "This");
    assert (last ls1 = 3);
    assert (last ls2 = "ocaml");
    assert (index 2 ls1 = 3);
)
;;
