
# Logic and Conditionals in R
#---------------------------------

# If Statements
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
