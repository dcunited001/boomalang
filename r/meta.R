
# Metaprogramming
#---------------------------------
# Dynamic Execution using call() and eval()

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
