(* This is a SML comment. *)
(* ================================ *)

(* For languages, every kind of expression has:
   - Syntax
   - Type-Checking Rules (produces a type or fails)
   - Evaluation Rules
     - Used only on things that type-check
     - produces a value, error, or infinite loop *)

(* to run SML scripts in emacs:
   - type C-c C-s & hit enter.
   - run `use "script.sml"` to run script

   M-p to skip through history in SML-Mode *)

(* Bind Variables with Val *)
(* ================================ *)
val x = 34;
val y = 17;

val z = (x + y) + (y + 2);
val q = z + 1;

val abs_of_z = if (z < 0) then (0 - z) else z;
val abs_of_z_simpler = abs z; (* or abs(z) *)

(* Functions *)
(* ================================ *)

(* specify functions with the 'fun' keyword *)
fun eg_func (p1 : int, p2 : int) =
    'code here'

(* Data Types *)
(* ================================ *)

(* Specify data types with: varname: (vartype) *)
fun eg_type (x : (int))

(* Tuples build 'each of' types *)
val tup = (1,2,)
fun eg_tuple (xtup : (int * bool)) = 0

(* Options specify 'one of' types *) = 0
fun eg_option (xop : (int * int))

(* Lists build types of all the basic types *)
fun eg_lists (xlist : ((int * int) list)) = 0

(* Records *)
fun eg_record (xrec : { foo: int, bar: int, baz: string }) = 0

(* Accessing Data in Tuples/Records with # *)
(* ================================ *)
(* use #id to access data from a tuple: *)
val tup = (1,2)
#1 tup; #2 tup;

(* use #key to access data from a record: *)
val rec = {foo=1, bar=2, baz='baz'}
#foo rec; #bar rec; #baz rec;
