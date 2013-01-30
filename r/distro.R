# Probability Distributions in R
#---------------------------------
# setting the seed ensures reproducibility of simulations:
#   set.seed(1)  # important for testing

# SAMPLE - Sample randomly from a set
#---------------------------------
set.seed(1)
x <- 1:10
sample(x,4)
sample(letters,5)
sample(x)
#sample(x, REPLACE=TRUE)

# RNORM - Generate Random Normal Variates with given mean/std-dev
# DNORM - Evaluate the Normal Probability Density
# PNORM - CDF for Normal Distribution
# QNORM - Quantile Function for Normal Dist
#---------------------------------
#     rnorm(n, mean = 0, sd = 1)
#     dnorm(x, mean = 0, sd = 1, log = FALSE)
#     pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
#     qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
#=================================
#x <- rnorm(10);      print(header(x))
#x <- rnorm(10,20,2); print(header(x))
# TODO: examples

# RPOIS - Generate Random Poisson Variates
# DPOIS - Density
# PPOIS - CDF
# QPOIS - Quantile
#---------------------------------
#     rpois(n, lambda)
#     dpois(x, lambda, log = FALSE)
#     ppois(q, lambda, lower.tail = TRUE, log.p = FALSE)
#     qpois(p, lambda, lower.tail = TRUE, log.p = FALSE)
#=================================
#x <- rpois(10,1);  print(header(x))
#x <- rpois(10,2);  print(header(x))
#x <- rpois(10,20); print(header(x))
# TODO: examples

#CDF (e.g. Pr(X<=2), Pr(X<=4), etc.)
#x <- ppois(2,2);   print(x)
#x <- ppois(4,2);   print(x)

# RGAMMA/DGAMMA/PGAMMA/QGAMMA
#---------------------------------
# TODO: examples

# RBINOM/DBINOM/PBINOM/QBINOM
#---------------------------------
# TODO: examples
