
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
