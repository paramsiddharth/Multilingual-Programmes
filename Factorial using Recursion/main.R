fact <- function(x) ifelse(x < 2, 1, x * fact(x - 1))

n <- as.integer(readline())
cat(fact(n), '\n') 
