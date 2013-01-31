(* This is a SML comment.
   ================================ *)

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

(* Variables with the val binding
   ================================ *)

(* integers  *)
val x = 34;
val y = 17;

(* basic int ops *)
val z = (x + y) + (y + 2);
val q = z + 1;

(* strings have DOUBLE QUOTES ONLY!! *)
val str = "test string";

(* inline if statements: *)
val abs_of_z = if (z < 0) then (0 - z) else z;
val abs_of_z_simpler = abs z; (* or abs(z) *)

(* assign type with val *)
val eg_val_type = 5 : int;

(* Functions
   ================================ *)

(* specify functions with the 'fun' binding *)
fun eg_func (p1 : int, p2 : int) =
  'code here'

(* Data Types
   ================================ *)

(* Specify data types with: varname: (vartype) *)
fun eg_type (x : (int)) = 0

(* Tuples build 'each of' types *)
fun eg_tuple (xtup : (int * bool)) = 0

(* Options specify 'one of' types *) = 0
fun eg_option (xop : (int * int))

(* Lists build types of all the basic types *)
fun eg_lists (xlist : ((int * int) list)) = 0

(* Records *)
fun eg_record (xrec : { foo: int, bar: int, baz: string }) = 0

(* Accessing Data in Tuples/Records with #
  ================================ *)

(* use #id to access data from a tuple: *)
val tup = (1,2)
#1 tup; #2 tup;

(* use #key to access data from a record: *)
val rec = {foo=1, bar=2, baz='baz'}
#foo rec; #bar rec; #baz rec;

(* Tuples are Syntactic Sugar:

   tuples are actually a special case of records, so ...
     records with consecutive integer keys print out as tuples *)

(* prints a record {'a','b'} *)
val reckey1 = {1="a", 3="c"}

(* prints a tuple ('a','b','c') *)
val reckey2 = {1="a", 2="b", 3="c"}

(* Datatype Binding
   ================================ *)

(* create 'one-of' types with the Datatype binding *)
datatype mytype = TwoInts of int*int
                | Str of string
                | Pizza;

(* this adds a new type 'mytype' to the environment
     as well as the constructors: TwoInts, Str, and Pizza:

   TwoInts: int*int -> mytype
   Str: string -> mytype
   Pizza: mytype *)

val a = Str "Hi"
val b = Str
val c = Pizza
val d = TwoInts(1+2,3+4)
val e = a
(* do _not_ restate the same datatype bindings twice
     E.G. via the use keyword!

   doing so will shadow the typename and constructors! *)

(* note: in some other contexts, these 'datatype' bindings
     are known as "tagged unions"

   They have two parts:
   - the 'tag' part, which holds which type of datatype we have
   - the corresponding data part, which holds the value *)

(* Accessing Datatype Bindings
  ================================ *)

(* Two aspects of accessing a datatype's
   1. Determine the datatype (i.e. which kind of constructor made it)
   2. Extract the data, if there is any *)
