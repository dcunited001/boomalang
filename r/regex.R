# regular expressions (regex)
#---------------------------------
### http://www.regular-expressions.info/rlanguage.html

# GREP     
#---------------------------------
# grep(     pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE)
#=================================
grep("a+", c("abc", "def", "cba a", "aa"), value=FALSE)
grep("a+", c("abc", "def", "cba a", "aa"), value=TRUE)

# GREPL    
#---------------------------------
# grepl(    pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
#=================================
# TODO: examples

# SUB
# GSUB
#---------------------------------
# sub(      pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gsub(     pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
#=================================
# use (parens) and \1 - \9 to replace certain sections
sub("(a+)", "z\\1z", c("abc", "def", "cba a", "aa"))
gsub("(a+)", "z\\1z", c("abc", "def", "cba a", "aa"))

# REGEXPR
# GREGEXPR
#---------------------------------
# regexpr(  pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gregexpr( pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
#=================================
regexpr("a+", c("abc", "def", "cba a", "aa"))
gregexpr("a+", c("abc", "def", "cba a", "aa"))

# Regexpr returns an integer vector with the same length as the input vector.
# Each element in the returned vector
#   indicates the character position in each corresponding string element
#   in the input vector at which the (first) regex match was found.
# -1 ->            Indicates no match
# 1 ->             Indicates a match at the start of the string
# (1>i>=length) -> Indicates a match
#
# Returned vector also contains a match.length attribute, an integer vector with
#   the number of characters in the (first) regex match in each string,
#   or -1 for strings that didn't match.

# REGEXEC
#---------------------------------
# regexec(  pattern, text, ignore.case = FALSE, fixed = FALSE, useBytes = FALSE)
#=================================
