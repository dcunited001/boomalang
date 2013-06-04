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

#### Comments

    :=> comment using smiley faces (no winking!)

#### Equality

Test equality, using =

    (= 1 1)

"Polish Prefix Notation" for arithmatic operators:

    (= 4 (+ 2 2))

Can't compare ints/floats, *using =*

    (not= true (= 64 64.0))

Can compare ints/floats, *using ==*

    (= true (== 64 64.0))

Data Types
==========

#### Integers

- decimal - `127`
- hex - `0x7F`
- octal - `0177`
- radix32 - `32r3V`
- binary literal - `2r01111111`

#### Floating Point

- `1.17`
- `+1.22`
- `-2`
- `366e7`
- `32e-14`
- `10.7e-3`

#### Rationals

- `22/7`
- `7/22`
- `-103/4`

#### Symbols



#### Keywords

- `:chumby`
- `:2`
- `:?`

#### Strings

- `"yup - this is a string - surprise"`

#### Characters

- `\a` - lowercase a
- `\A` - uppercase a
- `\u0042` - unicode uppercase B
- `\\` - backslash
- `\u30DE` - a unicode katakana char

Functions
=========

Clojure uses *prefix notation*, instead of the *infix notation* from C.

There are several advantages to this:
- eliminates the problem of operator precedence - there is no difference between operator notation and regular function calls
- this uniform structure forms the basis for the flexibility of Lisps

List Basics
===========

List is the classic collection type in Lisps.  Here's a Literal List:  `(foo bar baz)`

In Lisps, if the first item is a function, then:
- the first item is interpreted as a function
- and the rest of the items are interpreted as it's arguments

If the first item is instead a macro or special form, then:
- the remaining items in the list aren't necessarily evaluated.
- but are processed as definied by the macro/operator.

Unlike some Lisps, the empty list `()` in clojure is not the same as `nil`

List Ops
========

Create a list:

    (list 1 2 3 4 5)
    '(1 2 3 4 5)
    (quote (1 2 3 4 5))

`first` - Head:

    (first '(1 2 3 4 5))
    :=> 1

`rest` - Tail:

    (rest '(1 2 3 4 5))
    :=> '(2 3 4 5))

`cons` - Push (Construct):

    (cons :a '(:b :c :d :e))
    :=> (:a :b :c :d :e)

`conj` - Unshift (Conjoin):

    (conj '(:a :b :c :d) :e)
    :=> (:e :a :b :c :d)

Vector Ops
=================

Create vectors with [] or vec

    [11 22 33]
    (vec '(11 22 33))

Conjoining Vectors appends elements (conj prepends for lists)

    conj [:a :b :c :d] :e
    :=> [:a :b :c :d :e] :=> not [:e :a :b :c :d]

First/Last

    (first [11 22 33])
    :=> 11
    (last [11 22 33])
    :=> 33

Select elements with `nth` **Zero-Indexing**

    (nth [11 22 33] 2)
    :=> 33

Slice elements with `subvec` (but don't try to access invalid values)

    (subvec [0 1 2 3 4] 0 2)
    :=> [0 1]

Lists & Vectors can be compared for equality

    (= true
      (= '(1 2 3) (vec '(1 2 3))))

Set Ops
=======

Sets are *mathematic* sets (unique values only)

    (= #{1 2 3} '(1 2 3 1 2 3))

Count sets like other collections

    (= 5 #{1 2 3 4 5})

Convert other collections to sets

    (= #{1 2 3} '(1 2 3 1 2 3))

Find the Union, Intersection and Difference of sets

    (clojure.set/union #{1 2 3 4} #{2 3 5})
    (clojure.set/intersection #{1 2 3 4} #{2 3 5})
    (clojure.set/difference #{1 2 3 4 5} #{2 3 5})

Map Ops
=======

Map symbols to keys with `hash-map`

    (hash-map :foo "foo" :bar "bar")
    :=> {:a 1 :b 2}

Symbols must have values

    (= {a:1} (hash-map :a 1))

Count works with maps too

    (count {:a 1 :b 2})
    :=> 2

Get value for key with `get`

    (get {:a 1 :b 2} :b)
    :=> 2

A map **is** a function, taking a key as an arg

    ({:foo "foo" :bar "bar"} :foo)
    :=> "foo"

A key **is** a function and returns a value when taking a map as an arg

    (:foo {:foo "foo" :bar "bar"})
    :=> "foo"

Integers and Strings can be Keys too

    {1 "foo" 2 "bar"}
    {"baz" 3 "qux" 4}

Returns Nil when a key can't be found

    ({:foo "foo"} :bar)
    :=> nil
    (get {:bar "bar"} :baz)
    :=> nil

You can provide a default to `get`

    (get {:foo "foo" :bar "bar"} :baz :not-found)
    :=> :not-found

Use `contains?` to determine whether a key is present or not

    (contains? {:a "a" :b "b"} :b))
    :=> true
    (contains? {:a "a" :b "b"} :z))
    :=> false

Maps are **immutable** but new maps can be created

    assoc
    dissoc


Error Handling
==============

Try/Catch:

    (= "No dice!" (try
      (pop '())
      (catch IllegalStateException e
        "No dice!")))

Resources
=========

- **Clojure [Koans](https://github.com/functional-koans/clojure-koans) (requires `leiningen`)**
- [Learn Clojure](http://learn-clojure.com/)
- [Learn Clojure Videos](http://learn-clojure.com/closure_videos.html)
- [Brian Will Clojure Videos](http://www.youtube.com/watch?v=Aoeav_T1ARU&list=PLAC43CFB134E85266) (2009)
