# Project Euler, Problem 12
# https://projecteuler.net/problem=12
# Derek R. Blanchette

library(compiler)

do.factors <- function(x) {
  x <- as.integer(x)
  div <- seq_len(abs(x))
  factors <- div[x %% div == 0L]
  factors <- list(neg = -factors, pos = factors)
  return(factors)
}

#compile to new function
fast.do.factors <- cmpfun(do.factors)

index <- 6300

repeat{
  
  triangle <- index*(index + 1)/2
  
  a <- fast.do.factors(triangle) 
  
  size <- length(a$pos)
  
  if(size > 500) {break}
  
  index <- index + 1
  print(triangle)
}
print(triangle)

#The triangle number is 76576500
#It's index is 12375
