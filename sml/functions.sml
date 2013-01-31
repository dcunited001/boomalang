(* Function *)
(* ================================ *)
fun pow (x: int,y: int) =
  if y=0
  then 1
  else x * pow(x,y-1)

fun cube (x: int) =
  pow(x,3)

(* tuples and functions *)
(* ================================ *)
fun swap (pr : int*bool) = (#2 pr, #1 pr)
fun sum_two_pairs (pr1 : int*int, pr2 : int*int) =
    (#1 pr1) + (#2 pr1) + (#1 pr2) + (#2 pr2)
fun div_mod (x : int, y : int) = (x div y, x mod y)
fun sort_pair (pr : int*int) =
    if (#1 pr) < (#2 pr)
    then pr
    else ((#2 pr),(#1 pr))
(* note: returning a pair a real pain in Java *)

(* notice that variables assigned to functions
   print out differentley than otherwise *)

(* note that for functions,
   - a function is a value
   - a functions name has already been defined as a symbol
       within the function definition *)

(* list functions *)
(* ================================ *)

fun sum_list (xs : int list) =
    if null xs then 0
    else hd(xs) + sum_list(tl xs)

fun countdown (x : int) =
    if x=0 then []
    else x :: countdown(x-1)

fun append (xs : int list, ys : int list) =
    if null xs then ys
    else (hd xs) :: append(tl xs, ys)

fun sum_pair_list (xs : (int * int) list) =
    if null xs
    then 0
    else #1 (hd xs) + #2 (hd xs) + sum_pair_list(tl xs)

fun firsts (xs : (int * int) list) =
    if null xs
    then []
    else (#1 (hd xs))::(firsts(tl xs))

fun seconds (xs : (int * int) list) =
    if null xs
    then []
    else (#2 (hd xs))::(seconds(tl xs))

fun sum_pair_list2 (xs : (int * int) list) =
    (sum_list (firsts xs)) + (sum_list (seconds xs))

(* FUNCTION CALLS: *)
(* ================================
fun x0 (x1: t1, ..., xn: tn) = expression e

for type-checking:
   - adds the binding `x0 : (t1, ... , tn) -> t`
     - it can type-check the body expression to have type "t"
       in the static environment containing:
       - the "Enclosing" static environment (earlier bindings)
       - x1:t1, ... , xn:tn (arguments with their types)
       - x0:(t1, ... , tn) -> t (for recursion)

result is a new type in the environment:
  (t1, ... ,tn) -> t

the overall result of function declaration
  - is to give the symbol x0 the new type: (t1, ... ,tn) -> t
  - x0 has this type through the rest of the program
  - arguments can only me used in expression e

*)

(* FUNCTION CALLS *)
(* ================================
syntax: e0 (e1, ... ,en)
  - parenthesis optional if only one argument

type-checking for:
  - e0 to have the type (t1*...*tn) -> t
  - e1 has type t1, ... ,  en has type tn
  - and finally: that e0(e1, ... , en) has type t

evaluation:
  1) Under current dynamic environment,
     - evaluate e0 to a function: fun x0(x1:t1, ... ,xn:tn) = expr
       - since the call is type-checked, the result will be a funciton
  2) Under current dynamic environment
     - evaluate arguments to values (v1, ... ,vn)
  3) Result is evaluation of e
     - in an environment extended to map (x1:v1, ... ,xn:vn)
       - "An environment" is actually the ENV in which the function was defined
       - and includes x0 self-reference to the function for recursion
*)
