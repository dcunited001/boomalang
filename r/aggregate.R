# Aggregate Data
#---------------------------------
# this files gives examples of how to aggregate tabular data
#   (i have a sql background as you can tell)

# some of these functions a from the Plyr Package
source('plyr')


# TABLE
#---------------------------------
# You can use the table function to count the number of observations in each state.
#   table(outcome$State)
testTableFunction <- function(df,col) { table(df[col]) }

# Subsets
#---------------------------------

testSubsets <- function() {
# TODO: split to separate examples
     subset(airquality, Temp > 80, select = c(Ozone, Temp))
     subset(airquality, Day == 1, select = -Temp)
     subset(airquality, select = Ozone:Wind)

     with(airquality, subset(Ozone, Temp > 80))

     ## sometimes requiring a logical 'subset' argument is a nuisance
     nm <- rownames(state.x77)
     start_with_M <- nm %in% grep("^M", nm, value=TRUE)
     subset(state.x77, start_with_M, Illiteracy:Murder)
     # but in recent versions of R this can simply be
     subset(state.x77, grepl("^M", nm), Illiteracy:Murder)
}

# ROWSUMS / COLSUMS
# ROWMEANS / COLMEANS
#---------------------------------
#     Form row and column sums and means for numeric arrays.
#
#     colSums (x, na.rm = FALSE, dims = 1)
#     rowSums (x, na.rm = FALSE, dims = 1)
#     colMeans(x, na.rm = FALSE, dims = 1)
#     rowMeans(x, na.rm = FALSE, dims = 1)
#
#     .colSums(X, m, n, na.rm = FALSE)
#     .rowSums(X, m, n, na.rm = FALSE)
#     .colMeans(X, m, n, na.rm = FALSE)
#     .rowMeans(X, m, n, na.rm = FALSE)

# AGGREGATE
#---------------------------------
### Default S3 method:
     #### aggregate(x, ...)
     ### S3 method for class 'data.frame'
     #### aggregate(x, by, FUN, ..., simplify = TRUE)
     ### S3 method for class 'formula'
     #### aggregate(formula, data, FUN, ..., subset, na.action = na.omit)
     ### S3 method for class 'ts'
     #### aggregate(x, nfrequency = 1, FUN = sum, ndeltat = 1, ts.eps = getOption("ts.eps"), ...)

# DDPLY
#---------------------------------
# http://wiki.stdout.org/rcookbook/Manipulating%20data/Summarizing%20data/
# use ddply to aggregate data frames by groups
# E.G.:
#require('plyr')
#cdata <- ddply(dataNA, .(sex, condition), summarise,
#               N    = sum(!is.na(change)),
#               mean = mean(change, na.rm=TRUE),
#               sd   = sd(change, na.rm=TRUE),
#               se   = sd(change, na.rm=TRUE) / sqrt(sum(!is.na(change))) )

# GROUPING
#---------------------------------
# subsetting - http://www.statmethods.net/management/subset.html

# SUM
#---------------------------------

# MIN/MAX
#---------------------------------

