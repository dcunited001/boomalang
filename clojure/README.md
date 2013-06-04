Clojure Language
----------------

Clojure is:
- a Lisp Dialect
- Java based
- dynamic
- functional (impure - haskell is a pure functional language)
- fast - can approach the speed of java

Clojure offers:
- "lockless" concurrency - a feature which has garnered much attention
- macros, like ruby metaprogramming
- JVM and interoperability with java (& jruby?)
  - call java from clojure
  - and call clojure from java
- persistent collections

Clojure filetypes:
- `*.clj` - Sourcefile

Install
=======

On OSX: `brew install clojure`

Enter REPL with `clj`

Install Lein with: `brew install leiningen`

Basics
======

#### Equality

Test equality with (= )

```
(= 1 1)
```

"Polish Prefix Notation" for arithmatic operators:
```
(= 4 (+ 2 2))
```

List Operations
===============

Create a list:
```
(list 1 2 3 4 5)
'(1 2 3 4 5)
(quote (1 2 3 4 5))
```

`first` - Head:
```
(first '(1 2 3 4 5))
:=> 1
```

`rest` - Tail:
```
(rest '(1 2 3 4 5))
:=> '(2 3 4 5))
```

`cons` - Push (Construct):
```
(cons :a '(:b :c :d :e))
:=> (:a :b :c :d :e)
```

`conj` - Unshift (Conjoin):
```
(conj '(:a :b :c :d) :e)
:=> (:e :a :b :c :d)
```

Resources
=========

- **Clojure [Koans](https://github.com/functional-koans/clojure-koans) (requires `leiningen`)**
- [Learn Clojure](http://learn-clojure.com/)
- [Learn Clojure Videos](http://learn-clojure.com/closure_videos.html)
- [Brian Will Clojure Videos](http://www.youtube.com/watch?v=Aoeav_T1ARU&list=PLAC43CFB134E85266) (2009)
