



(* This is a SML comment. *)

(* Every kind of expression has:
   - Syntax
   - Type-Checking Rules (produces a type or fails)
   - Evaluation Rules
     - Used only on things that type-check
     - produces a value, error, or infinite loop *)

(* to run SML scripts in emacs:
   - type C-c C-s & hit enter.
   - run `use "script.sml"` to run script

   M-p to skip through history in SML-Mode *)

(* bind variables *)
val x = 34;
val y = 17;

val z = (x + y) + (y + 2);
val q = z + 1;

val abs_of_z = if (z < 0) then (0 - z) else z;
val abs_of_z_simpler = abs z; (* or abs(z) *)


