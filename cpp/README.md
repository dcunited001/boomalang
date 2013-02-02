C++ Language
------------

Files
=====
- basics.cpp
- vars.cpp
- namespace.cpp
- controlFlow.cpp
- classes.cpp

C++ Filetypes:
==============

C++ has a few filetypes it uses:
- *.cpp   => source files      // *.cpp is preferred to *.cc
- *.o     => object files      // *.o or *.obj
- *.h     => header files      //

#### Source Files (*.cpp)


#### Header Files (*.h)


Compiling and Linking
=====================
http://www.learncpp.com/cpp-tutorial/04-introduction-to-development/

#### Compiling:
- Compiling *.cpp files produces machine-code 'object' files.
- Each *.cpp will result in a *.o file

    g++ -c file1.cpp file2.cpp file3.cpp *

#### Linking:
- These 'object' files are then linked together to form a full executable program.
- Libraries that you reference are then linked-in to the full executable as well.

    g++ -o prog file1.o file2.o file3.o

#### To Compile And Link:

    g++ -o prog file1.cpp file2.cpp file3.cpp

Resources
=========

#### Tutorials
- http://www.learncpp.com/cpp-tutorial/04-introduction-to-development/

#### Emacs and C++
- http://www.cs.bu.edu/teaching/tool/emacs/programming/

#### Google Style Guide:
- http://google-styleguide.googlecode.com/svn/trunk/google-r-style.html
