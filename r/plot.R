# Plotting Data
#---------------------------------

# some of these functions are from the Lattice Package
source('plyr')
source('lattice')




# PLOTTING IN R
#---------------------------------
# for each platform, different drivers handle graphics by default:
# Windows - windows
# Mac     - quartz
# Unix    - x11

# PLOT
#---------------------------------
#     plot(x, y, ...)
#=================================
testPlotNonrandomX <-
  function() {
    set.seed(20)
    x <- 1:100
    e <- rnorm(100,0,1)
    y <- 1.5 - (3*x) + e
    print('using a nonrandom sequence for X')
    summary(y)
    plot(x,y) }

testPlotRbinom <-
  function() {
    set.seed(10)
    x <- rbinom(100,1,0.5)
    e <- rnorm(100,0,2)
    y <- 0.5 + (2*x) + e
    print('using a binomial set for X')
    summary(y)
    plot(x,y) }

testPlotPois <-
  function() {
    set.seed(1)
    x <- rnorm(100)
    log.mu <- 0.5 + (0.3*x)
    y <- rpois(100, exp(log.mu))
    print('using a poisson distribution');
    summary(y)
    plot(x,y) }

# LINES - Add lines to a plot
# POINTS - Add points to a plot
#---------------------------------
#     lines(x, y = NULL, type = "l", ...)
#     points(x, y = NULL, type = "p", ...)
#=================================

# TEXT - Add text labels with X.Y coords
# TITLE - Add annotations to X,Y axis labels, title, subtitle, etc
# MTEXT - Add arbitrary text to the margins(inner/outer)
# AXIS - Add axis labels/ticks
#---------------------------------
testMfrowPlot <- function() { par(mfrow=c(2,1)) }
testMfcolPlot <- function() { par(mfcol=c(2,1)) }
test4plots <- function() { par(mfrow=c(2,2)) }
resetMfrowMfcol <- function() { par(mfrow=c(1,1),mfcol=c(1,1)) }

testBasePlot <-
  function() {
    set.seed(1)
    x <- rnorm(100)
    y <- rnorm(100)
    fit <- lm(y~x)
    #title("Scatterplot")
    plot(x,y,
         xlab='Weight',
         ylab='Height',
         main='Scatterplot',
         pch=20)
    legend("topright",
           legend="Data",
           pch=20)
    abline(fit, lwd=3, col="red") }

testBasePois <-
  function() {
    set.seed(1)
    x <- rnorm(100)
    y <- rnorm(100)
    z <- rpois(100,2)
    plot(x,y,pch=20)
    plot(x,z,pch=19) }

# text(x, y = NULL,
#     labels = seq_along(x),
#     adj = NULL,
#     pos = NULL,
#     offset = 0.5,
#     vfont = NULL,
#     cex = 1,
#     col = NULL,
#     font = NULL,
#     ...)

# title(main = NULL,
#       sub = NULL,
#       xlab = NULL,
#       ylab = NULL,
#       line = NA,
#       outer = FALSE,
#       ...)

# mtext(text,
#       side = 3,
#       line = 0,
#       outer = FALSE,
#       at = NA,
#       adj = NA,
#       padj = NA,
#       cex = NA,
#       col = NA,
#       font = NA,
#      ...)

# axis(side,
#      at = NULL,
#      labels = TRUE,
#      tick = TRUE,
#      line = NA,
#      pos = NA,
#      outer = FALSE,
#      font = NA,
#      lty = "solid",
#      lwd = 1,
#      lwd.ticks = lwd,
#      col = NULL,
#      col.ticks = NULL,
#      hadj = NA,
#      padj = NA,
#      ...)

# legend(
# lm(
# abline(

#=================================
