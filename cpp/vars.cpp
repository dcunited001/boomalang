// Variables
// ===========================

// Declaring Vars
// ===========================
// to declare vars, include the type
//   and a default value, if any

int intA = 123;
string strA = 'A String!';

// Global Variables are teh Devil!
// ===========================
// basically, don't do that ^^^

// this is because global vars exist everywhere
//   and thus they're value's can be changed anywhere!
int aGlobalInt = 5;

int testGloboVars() {
  int someInt = 123;

  // because the value of global vars can change anywhere
  //   they become very hard to manage,

  // especially in threaded settings,
  //   where methods like thes can be called
  //   from anywhere
  aGlobalInt = someInt;
  return 10100;
}

// global variables continued...
// http://www.learncpp.com/cpp-tutorial/42-global-variables/

// The Static Keyword
// ===========================
// the static keyword can have different meanings
//   in different contexts

// ___________________________
// File Scope
// a variable with file scope can be accessed
//   by any function or block within a single file
// to declare a file-scoped var, use the static keyword
//   outside of a block
// file-scoped vars are no longer global
static int aStaticVar = 321;

// ___________________________
// Fixed Duration Vars
// In c++, vars have 'Automatic Duration by default'
//   the vars are automatically destroyed when their block ends

// Fixed Duration Vars retain their value (and memory-allocation)
//   even after their block has ended.  Their value is retained
//   for the life of the program (unless otherwise specified?)

// To create a fixed duration var, declare a variable as static
//   from within a block.

int aFixedFunction() {
  int notFixed = 1234;        // this var is deallocated after the block
  static int fixedInt = 4321; // this var is fixed and persists
}

// "One of the most common uses for fixed duration local variables is
// for unique identifier generators. When dealing with a large number
// of similar objects within a program, it is often useful to assign
// each one a unique ID number so they can be identified."
// http://www.learncpp.com/cpp-tutorial/43-file-scope-and-the-static-keyword/

int egGenerateID() {
  // Because nNextID is a local variable,
  //   it can not be “tampered with” by other functions.

  static int nNextID = 0;
  return nNextID++;
}


// ___________________________
// Static Member Variables

// ___________________________
// Static Member Classes
// http://www.learncpp.com/cpp-tutorial/811-static-member-variables/



// Public/Protected/Private
// ===========================
// all members of a class are private by default.........

class FooClass {

}

// Extern
// ===========================
// extern tells the compiler this variable is declared elsewhere
extern int g_nValue;
