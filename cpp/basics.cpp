// Basics
// ===========================

// #include
// ===========================
// #include adds dependencies

// ___________________________
// add iostream for IO (cout)
#include <iostream>;

// main()
// ===========================
// main is recognized as the entry point for cpp programs


int main(int argc, char *argv[])
{
  using namespace std;
  cout << "Hello world!" << endl;
  return 0;
}

// basic types
// ===========================

// basic IO
// ===========================
// must include <iostream>
void basicIO()
{
  string name;

  // endl supplies end-line to cout??
  cout << "use cout to print " << endl;

  cout << "enter your name: " << endl;
  cin >> name;

  cout << "your name is: " << name << endl;
}
