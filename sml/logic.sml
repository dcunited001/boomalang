(* Conditional Statements
   ====================== *)

val x = 1;
val y = 2;
val z = 3;

(* if statements require else! *)
if (x>y) then x else y;

(* nested if statements *)
if (x<y) then x
else (if (z>y) then z else y);

  (* if conditions don't have to be surrounded by parens *)

(* not ===> !         *)
not(true);
if not(true) then "never" else "always";

(* andalso ===> &&    *)
true andalso false;
if (true andalso true) then 1 else 0;

(* orelse ===> ||     *)
false orelse true;
if (false orelse true) then 1 else 0;

(* combining them *)
if ((x>y) andalso (x>z)) then x
else (if (y>z) then y else z);
