# Vectors
#---------------------------------
# vectors have 6 'atomic' types:
# * Logical (TRUE FALSE)
# * Integer (Numeric)
# * Double (Numeric)
# * Complex
# * Character
# * Raw

# every item in the vector must contain the same type!

# Creating Vectors
#=================================

# use the c() function to create vectors
logVec <- c(TRUE, FALSE)
intVec <- c(1:5)
numVec <- c(1:5)
#comVec <- 
chrVec <- c("a", "b", "c")
#rawVec <-

# use rep() to quickly assemble complicated vectors:
zeroVec <- rep(0,50)


# Accessing Elements 
#=================================

# access using []
intVec[1]

# pass a vector to specify indices
intVec[c(1,3,5)]





# Correlation, Variance and Covariance
#=================================
#     ‘var’, ‘cov’ and ‘cor’ compute the variance of ‘x’ and the
#     covariance or correlation of ‘x’ and ‘y’ if these are vectors.  If
#     ‘x’ and ‘y’ are matrices then the covariances (or correlations)
#     between the columns of ‘x’ and the columns of ‘y’ are computed.
#
#     ‘cov2cor’ scales a covariance matrix into the corresponding
#     correlation matrix _efficiently_.

#_____________________________________
# COR, VAR, COV
#### cor(x, y = NULL, use = "everything", method = c("pearson", "kendall", "spearman"))
#### cov(x, y = NULL, use = "everything", method = c("pearson", "kendall", "spearman"))
#### var(x, y = NULL, na.rm = FALSE, use)

#_____________________________________
# COV2COR
#### cov2cor(V)


