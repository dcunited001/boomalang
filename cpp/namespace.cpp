// Namespaces
// ===========================
// http://www.cplusplus.com/doc/tutorial/namespaces/
#include <iostream>;

// Creating Namespaces
// ===========================
namespace testNamespace
{
  int intA="Namespace: int";
  int strB="Namespace: int";
}

// Accessing Namespaces
// ===========================
// use :: to access vars from a separate namespace

void printNamespaceVars()
{
  cout << testNamespace::a;
  cout << testNamespace::b;
}
