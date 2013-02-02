// Namespaces
// ===========================
// http://www.cplusplus.com/doc/tutorial/namespaces/
//#include <iostream>;
//using namespace std;

// ===========================
// TODO: NEED TO DECIDE HOW TO BEST STRUCTURE THIS PROJECT
// ===========================
//#include <basics>

// Creating Namespaces
// ===========================
namespace testNamespace {
  int intA=123;
  string strB="Namespace: string";
}

// Using Namespaces
// ===========================
// the using keyword introduces a name from a namespace
//   into the current declarative region.

namespace first {
  int x = 10;
  int y = 20;
}

namespace second {
  int x = -100;
  int y = -100;
}

void testUsing() {
  using namespace first;

  // since we're using the first namespace
  //   no need to qualify x with first::x
  cout << x << endl;
  cout << y << endl;

  // but since we're not using the second namespace
  //   still need to qualify to second::x
  cout << second::x << endl;
  cout << second::y << endl;
}

// Accessing Namespaces
// ===========================
// use :: to access vars from a separate namespace

void printNamespaceVars(){
  cout << testNamespace::intA;
  cout << testNamespace::strB;
}
