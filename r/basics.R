# Basics
#-------------------------------
# r is vector/matrix oriented, like octave

# basic types:
# * Vector
# * Data Frame
# * Matrix
# * Array
# * List
# * Factor
# * Language
# * Function
# * NULL
# * Promise
# * Dot-dot-dot (...)
# * Environment
# * Pairlist
# * Built-in (Primitive, Internal)
# * Any

# <-   the gets operator
obj <- c(1:5)

# Help Functions
#-------------------------------
# R has great help functionality!!!
# USE IT!

?length
?apply

# Useful Functions
#-------------------------------
# http://www.statmethods.net/input/datatypes.html

length(obj) # number of elements
str(obj)    # structure of object
class(obj)  # class/type
names(obj)  # names

c(1, 2, 3)      # Combine objects into a vector, use this instead of push (better way?)
cbind(obj, obj) # Combine objects as columns
rbind(obj, obj) # Combind objects as rows

obj  # prints the object

ls()        # list objects available in the environment
rm(obj)     # delete obj from the environment

newobj <- edit(obj)   # edit, copy and save as newobj
fix(obj)              # edit in place


# Head/Tail
#-------------------------------
# useful for recursion and list ops





