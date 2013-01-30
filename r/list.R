# Lists
#---------------------------------
# lists can contain more than one type


# Creating Lists
#=================================
# use the list() function:

#lists
intList <- list(1,2,3,4,5)
chrList <- list('a','b','c','d','e')
mixList <- list(1,'b',3,'d',5)

#nested list
nestedList <- list(list(1,2,3),
                   list(11,12,13))

# a list of vectors
vecList <- list(c(1,2,3),
                c(11,12,13),
                c(-1,-2,-3))

# a list of data frames
#

#_____________________________________
# you can also use rep() for lists:
zeroList <- list(rep(),10)

# Accessing Lists
#=================================
# there are 2 methods here: (are they really methods?)

# * []    - returns
# * [[]]

# this can be slightly confusing at first
#   so get it down

#_____________________________________
# [] ==> returns the element itself
intList[1]        # returns 1
class(intList[1]) # Numeric

# intList[c(1,2)] #throws error

#_____________________________________
# [[]] ==> returns a list
intList[[1]]     # returns list(1)

# intList[[c(1,2)]] #also throws error


# Flatten a List - unlist()
#=================================
# flattens a list (removes null elements)
fatList <- list(1,NULL,2,NULL,list('a','b',NULL,'d'))
thinList <- unlist(fatList)  # will be flattened to one level

# and turns it into a vector
class(thinList) 
























