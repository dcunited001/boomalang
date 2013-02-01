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

  basicIO();

  return 0;
}

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

// Fundamental Data Types
// ===========================
// http://www.cplusplus.com/doc/tutorial/variables/

// ___________________________
// BOOL
// 1 BYTE
// true/false/maybe
bool daTruf=true;

// ___________________________
// CHAR
// 1 BYTE
//signed: -128 to 127
//unsigned: 0 to 255
char aChar = 'f';

// ___________________________
// SHORT INT
// 2 BYTES
// short int - 2 bytes
//signed: -32768 to 32767
//unsigned: 0 to 65535
short aShort = -123;
short int aShortInt = 123;

// ___________________________
// INT
// 4 BYTES
//signed: -2147483648 to 2147483647
//unsigned: 0 to 4294967295
int anInt = 66000;

// ___________________________
// LONG INT
// 4 BYTES
//signed: -2147483648 to 2147483647
//unsigned: 0 to 4294967295
long int aLongInt = 66000;

// ___________________________
// FLOAT
// 4 BYTES
// +/- 3.4e +/- 38 (~7 digits)
float aFloat = 0.1234;

// ___________________________
// DOUBLE
// 8 BYTES
// +/- 1.7e +/- 308 (~15 digits)
double aDub = 0.1234;

// ___________________________
// LONG DOUBLE
// 8 BYTES
// +/- 1.7e +/- 308 (~15 digits)
long double aLongDub = 0.00001234;

// ___________________________
// WIDE CHAR
// 2 BYTES or 4 BYTES
// 1 wide character
//short wchar_t aWideChar = 0x61;
//long wchar_t aReallyWideChar = 0x0061;
