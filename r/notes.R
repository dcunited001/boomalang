# still contains notes that i haven't moved into files yet



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

# GRAPHICS PACKAGES
#---------------------------------
# graphics  - Base Graphics(plot(), hist(), boxplot(), ...)
# lattice   - Trellis Graphics(xyplot(), bwplot(), levelplot())
# grid      - Lattice is built on top of Grid functions
# grDevices - Contains code implementing the graphics devices (X11, PDF, PostScript, PNG, etc)
#=================================
# Base Graphics and Grid/Lattice Graphics typically can't be mixed

# Calls to Base Graphics:
# - usually created piece by piece, using functions
# - conceptually simpler
# - search Base Graphics Parameters with `?par`

# Calls to Grid/Lattice Graphics:
# - usually specified all at once
# - all graphics params have to be specified at once
# - specifying everything allows R to auto-calculate
#     the necessary spacings and font sizes

# Graphics Functions:
# - dev.set() - set device for next plot
# - dev.off() - turn off graphics device
# - graphics.off() - turn off all graphics devices

# Other Graphics Drivers:
# - pdf: print plots to pdf format
# - postscript: not used very often
# - xfig: unix-only format (useful when editing figures by hand)
# - jpeg: export to jpeg, good for plotting many, many points
# - png: uses lossless compression
# - bitmap: create bitmaps
# - bmp: windows-native bitmap format

# Create a PDF in R:
createPdfPlot <-
  function() {
    pdf(file = "testRplot.pdf")
    x <- rnorm(100)
    hist(x)
    dev.off() }

# Manage Devices:
# DEV.CUR - return number of current device
# DEV.LIST - list all active devices
# DEV.PREV - return number of prev dev
# DEV.NEXT - return number of next dev
# DEV.SET - set the current device
# DEV.OFF - turn a device off
testDevCur <- function() { dev.cur() }
testDevList <- function() { dev.list() }
testDevPrev <- function() { dev.prev() }
testDevNext <- function() { dev.next() }
testDevSet <- function(id) { dev.set(id) }
testDefOff <- function() { dev.off() }

# Saving Plots:
# DEV.PRINT - dev.print(device = postscript, ...)
# DEV.COPY - dev.copy(device, ..., which = dev.next())
# DEV.COPY2PDF - dev.copy2pdf(..., out.type = "pdf")
testDevPrint <- function(d, ...) { dev.print(device=d,...) }
testDevCopy <- function(d,...,which=dev.next()) { dev.copy(d,...,which) }
testDevCopy2Pdf <- function(...,out.type="pdf") { dev.copy2pdf(...,out.type) }

#    ‘dev.copy’ copies the graphics contents of the current device to
#     the device specified by ‘which’ or to a new device which has been
#     created by the function specified by ‘device’ (it is an error to
#     specify both ‘which’ and ‘device’).  (If recording is off on the
#     current device, there are no contents to copy: this will result in
#     no plot or an empty plot.)  The device copied to becomes the
#     current device.
                            
#     ‘dev.print’ copies the graphics contents of the current device to
#     a new device which has been created by the function specified by
#     ‘device’ and then shuts the new device.

# PAR - set Base Graphics Parameters
#---------------------------------
#   - setting params with par sets the default for all plots
#   - some params have to be set with par
#=================================
# Important Params:
#   - pch: plotting symbol (default: open circle)
#   - lty: line type (dotted/dashed) (default: solid)
#   - ldw: line width (integer multiple)
#   - col: plotting color (number/string/hex)
#   - las: orientation of axis labels on plot
#   - bg: background color
#   - mar: margin size
#   - oma: outer margin size (default: 0 for all sides)
#   - mfrow: num plots per row/col (plots filled row-wise)
#   - mfcol: num plots per row/col (plots filled col-wise)

# Get Default Par Values:
#     par("lty") => 'solid'
#     par("lwd") => 1
#     par("col") => 'black'
#     par("pch") => 1
#     par("bg") => 'transparent'
#     par("mar") => c(5.1,4.1,4.1,2.1)
#     par("oma") => c(0,0,0,0)
#     par("mfrow") => c(1,1)
#     par("mfcol") => c(1,1)

# Examples:
#     op <- par(mfrow = c(2, 2), # 2 x 2 pictures on one plot
#               pty = "s")       # square plotting region,
#                                # independent of device size
#
#     ## At end of plotting, reset to previous settings:
#     par(op)
#
#     ## Alternatively,
#     op <- par(no.readonly = TRUE) # the whole list of settable par's.
#     ## do lots of plotting and par(.) calls, then reset:
#     par(op)
#     ## Note this is not in general good practice
#
#     par("ylog") # FALSE
#     plot(1 : 12, log = "y")
#     par("ylog") # TRUE
#
#     plot(1:2, xaxs = "i") # 'inner axis' w/o extra space
#     par(c("usr", "xaxp"))
#
#     ( nr.prof <-
#       c(prof.pilots=16,lawyers=11,farmers=10,salesmen=9,physicians=9,
#         mechanics=6,policemen=6,managers=6,engineers=5,teachers=4,
#         housewives=3,students=3,armed.forces=1))
#     par(las = 3)
#     barplot(rbind(nr.prof)) # R 0.63.2: shows alignment problem
#     par(las = 0)# reset to default
#
#     require(grDevices) # for gray
#     ## 'fg' use:
#     plot(1:12, type = "b", main="'fg' : axes, ticks and box in gray",
#          fg = gray(0.7), bty="7" , sub=R.version.string)
#
#     ex <- function() {
#        old.par <- par(no.readonly = TRUE) # all par settings which
#                                           # could be changed.
#        on.exit(par(old.par))
#        ## ...
#        ## ... do lots of par() settings and plots
#        ## ...
#        invisible() #-- now,  par(old.par)  will be executed
#     }
#     ex()
#

plotMalesVsFemales <-
  function() {
    set.seed(1)
    x <- rnorm(100)
    y <- x + rnorm(100)
    g <- gl(2,50, labels=c("Male","Female"))
    plot(x,y)
    points(x[g=="Male"],y[g=="Male"],col="green")
    points(x[g=="Female"],y[g=="Female"],col="blue",pch=19) }


# GRAPHICS WITH LATTICE
#---------------------------------
# XYPLOT
# DOTPLOT
# BARCHART
# STRIPPLOT
# BWPLOT
# SPLOM
# LEVELPLOT
# CONTOURPLOT
#=================================
# lattice functions return trellis objects
#   - the objects either autoprint
#   - or can be saved for later usage
#
# writing lattice formulas:
#   y ~ x | f * g
#
# ~   the x-var is to the left, y-var to the right
# |   denotes conditional variables to the right
# *   denotes an interaction between the cond. vars

#     xyplot(x, data, ...)
#     dotplot(x, data, ...)
#     barchart(x, data, ...)
#     stripplot(x, data, ...)
#     bwplot(x, data, ...)
#     splom(
#     levelplot(
#     contourplot(

#     ## S3 method for class 'formula'
#     xyplot(x,
#            data,
#            allow.multiple = is.null(groups) || outer,
#            outer = !is.null(groups),
#            auto.key = FALSE,
#            aspect = "fill",
#            panel = lattice.getOption("panel.xyplot"),
#            prepanel = NULL,
#            scales = list(),
#            strip = TRUE,
#            groups = NULL,
#            xlab,
#            xlim,
#            ylab,
#            ylim,
#            drop.unused.levels = lattice.getOption("drop.unused.levels"),
#            ...,
#            lattice.options = NULL,
#            default.scales,
#            default.prepanel = lattice.getOption("prepanel.default.xyplot"),
#            subscripts = !is.null(groups),
#            subset = TRUE)

# ?Orthodont for info on ortho data set
library(lattice)
library(nlme)
orthoXyplot1 <- function() { xyplot(distance ~ age | Subject,
                                    data = Orthodont) }
orthoXyplot1 <- function() { xyplot(distance ~ age | Subject,
                                    data = Orthodont,
                                    type="b") }

# PANEL FUNCTIONS
#---------------------------------
# xyplot 
latticePanelTest <- function() {
  x <- rnorm(100)
  y <- x + rnorm(100, sd=0.5)
  f <- gl(2,50,labels=c("Group 1", "Group 2"))

  xyplot(y ~ x | f) }

# xyplot with panel specified
latticePanelTest2 <- function() {
  x <- rnorm(100)
  y <- x + rnorm(100, sd=0.5)
  f <- gl(2,50,labels=c("Group 1", "Group 2"))

  xyplot(y ~ x | f,
         panel=function(x,y,...){
           #plot the data
           panel.xyplot(x,y,...)
           #plot a regression line
           panel.lmline(x,y,col=2)
           #plot a horizontal median line
           panel.abline(h=median(y),lty=2) }) }

data(environmental)

# plot data with title
envPlot1 <- function() {
  xyplot(ozone ~ radiation,
         data=environmental,
         main="Ozone vs. Radiation") }

# divide data into temp.cut factor, change layout
envPlot2 <- function() {
  temp.cut <- equal.count(environmental$temperature, 4)
  xyplot(ozone ~ radiation | temp.cut,
         data=environmental,
         as.table=TRUE,
         layout=c(1,4)) }

# add a panel to plot regression
envPlot3 <- function() {
  temp.cut <- equal.count(environmental$temperature, 4)
  xyplot(ozone ~ radiation | temp.cut,
         data=environmental,
         panel=function(x,y,...){
           panel.xyplot(x,y,...)
           panel.lmline(x,y,col=2,lwd=2)},
         as.table=TRUE,
         pch=20)}

# plot a curve instead of linear regression
envPlot4 <- function() {
  temp.cut <- equal.count(environmental$temperature, 4)
  xyplot(ozone ~ radiation | temp.cut,
         data=environmental,
         main="Ozone vs. Solar Radiation",
         xlab="Solar Radiation",
         ylab="Ozone (ppb)",
         panel=function(x,y,...){
           panel.xyplot(x,y,...)
           panel.loess(x,y)},
         as.table=TRUE,
         pch=20)}

# plot by temp*wind
envPlot5 <- function() {
  temp.cut <- equal.count(environmental$temperature, 4)
  wind.cut <- equal.count(environmental$wind, 4)
  xyplot(ozone ~ radiation | temp.cut * wind.cut,
         data=environmental,
         main="Ozone vs. Solar Radiation",
         xlab="Solar Radiation",
         ylab="Ozone (ppb)",
         panel=function(x,y,...){
           panel.xyplot(x,y,...)
           panel.loess(x,y)},
         as.table=TRUE,
         pch=20)}

# Plotting math notation
#    ?plotmath - list of allowed symbols
plotMathHistogram <- function() {
  x <- rnorm(100)
  hist(x, xlab=expression("The mean (" * bar(x) * ") is " * sum(x[i]/n,i==1,n)))
}

# Week 3 Notes
#---------------------------------

# Switch Statements
#---------------------------------
egSwitchStatement <- function() {
  df <- data.frame(name = c('cow','pig','eagle','pigeon'), stringsAsFactors = FALSE)
  df$type <- sapply(df$name, switch, 
                    cow = 'animal', 
                    pig = 'animal', 
                    eagle = 'bird', 
                    pigeon = 'bird')}

# Dynamic Execution:
#---------------------------------
# execute method calls by name
aFunc <- function(a=1, ...) { print(a*10); a*10; }
bFunc <- function(a=2, ...) { print(a+10); a+10; }
cFunc <- function(a=3, ...) { print(exp(a*10)); a+10; }

dynamic <- function(f="aFunc") {eval( call(f) )}
#egDynamicEx <- function(f="aFunc", ...) {dynamic(f, ...)}

# dynamic("aFunc") 
# dynamic("bFunc")
# dynamic("cFunc")

# how to get the ellipsis args to pass through??
# dynamic("aFunc", a=10) 
# dynamic("bFunc", b=20)
# dynamic("cFunc", c=30)

# Week 4 Notes
#---------------------------------

# Error Handling
#---------------------------------

# Try Package
# http://biocodenv.com/wordpress/?p=15

# warning(…) — generates warnings
# stop(…) — generates errors
# suppressWarnings(expr) — evaluates expression and ignores any warnings
# tryCatch(…) — evaluates code and assigns exception handlers

# Error Handling Examples:
#      tryCatch(expr, ..., finally)
#      withCallingHandlers(expr, ...)
#      signalCondition(cond)
#      simpleCondition(message, call = NULL)
#      simpleError    (message, call = NULL)
#      simpleWarning  (message, call = NULL)
#      simpleMessage  (message, call = NULL)
#      as.character(x, ...) ## S3 method for class 'condition'
#      as.character(x, ...) ## S3 method for class 'error'
#      print(x, ...) ## S3 method for class 'condition'
#      print(x, ...) ## S3 method for class 'restart'
#      conditionCall(c)
#      conditionCall(c) ## S3 method for class 'condition'
#      conditionMessage(c)
#      conditionMessage(c) ## S3 method for class 'condition'
#      withRestarts(expr, ...)

# tryCatch() Arguments:
#        c: a condition object.
#     call: call expression.
#     cond: a condition object.
#     expr: expression to be evaluated.
#  finally: expression to be evaluated before returning or exiting.
#        h: function.
#  message: character string.
#      msg: character string.
#     name: character string naming a restart.
#        r: restart object.
#        x: object.
#      ...: additional arguments; see details below.
