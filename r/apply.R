# Applying (map/reduce)
#-------------------------------
# this is the best way to iterate over lists in R
source('list.R')

# Head/Tail
#---------------------------------
#     Returns the first or last parts of a vector, matrix, table, data
#     frame or function.  Since ‘head()’ and ‘tail()’ are generic
#     functions, they may also have been extended to other classes.
head(intList) # => 1
tail(intList) # => 2,3,4,5

#http://nsaunders.wordpress.com/2010/08/20/a-brief-introduction-to-apply-in-r/
pr <- function(a) { print(a) }

# VAPPLY - vapply(X, FUN, FUN.VALUE, ..., USE.NAMES = TRUE)
testVecVapply <- function() { vapply(vec,FUN=pr,FUN.VALUE=0) }
testVecListVapply <- function() { vapply(vecList,FUN=pr,FUN.VALUE=0) }
#     ‘vapply’ is similar to ‘sapply’, but has a pre-specified type of
#     return value, so it can be safer (and sometimes faster) to use.

# SAPPLY - sapply(X, FUN, ..., simplify = TRUE, USE.NAMES = TRUE)
testVecSapply <- function() { sapply(vec,FUN=pr) }
testVecListSapply <- function() { sapply(vecList,FUN=pr) }
#     ‘sapply’ is a user-friendly version and wrapper of ‘lapply’ by
#     default returning a vector, matrix or, if ‘simplify="array"’, an
#     array if appropriate, by applying ‘simplify2array()’.  ‘sapply(x,
#     f, simplify=FALSE, USE.NAMES=FALSE)’ is the same as ‘lapply(x,f)’.
      
# LAPPLY - lapply(X, FUN, ...)
testListLapply <- function(l) { lapply(l,FUN=pr) }
testNestedListLapply <- function() { lapply(nestedList,FUN=pr) }
#     ‘lapply’ returns a list of the same length as ‘X’, each element of
#     which is the result of applying ‘FUN’ to the corresponding element
#     of ‘X’.

# NESTED LAPPLY 
testNestedLapply <- function() { lapply(nestedList,FUN=testListLapply) }

# APPLY - apply(X, MARGIN, FUN, ...)
testApply <- c(1,2,3)
#     Returns a vector or array or list of values obtained by applying a
#     function to margins of an array or matrix.

# TAPPLY - tapply(X, INDEX, FUN = NULL, ..., simplify = TRUE)
testTapply <- c(1,2,3)
#     Apply a function to each cell of a ragged array, that is to each
#     (non-empty) group of values given by a unique combination of the
#     levels of certain factors.

# EAPPLY - eapply(env, FUN, ..., all.names = FALSE, USE.NAMES = TRUE)
testEapply <- c(1,2,3)
#     ‘eapply’ applies ‘FUN’ to the named values from an ‘environment’
#     and returns the results as a list.  The user can request that all
#     named objects are used (normally names that begin with a dot are
#     not).  The output is not sorted and no enclosing environments are
#     searched.
#       (This is a primitive function.

# REPLICATE - replicate(n, expr, simplify = "array")
repl <- c(1,2,3)
#     ‘replicate’ is a wrapper for the common use of ‘sapply’ for
#     repeated evaluation of an expression (which will usually involve
#     random number generation).
# SIMPLIFY2ARRAY - simplify2array(x, higher=TRUE)

# ADPLY - adply(.data, .margins, .fun = NULL, ..., .expand = TRUE, .progress = "none", .inform = FALSE, .parallel = FALSE, .paropts = NULL)
require('plyr') 
dfAdply <- adply(df, 1, function(x) paste('(', x$b, ',', x$a, ')',sep=""))
# apply using data frames - requires plyr
#     For each slice of an array, apply function then combine results
#     into a data frame.

#     ‘simplify2array()’ is the utility called from ‘sapply()’ when
#     ‘simplify’ is not false and is similarly called from ‘mapply()’.

# http://manuals.bioinformatics.ucr.edu/home/programming-in-r





