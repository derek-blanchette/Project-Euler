# Euler Project Problem 5
# https://projecteuler.net/problem=5
# Derek R. Blanchette

dividend <- 126717199
divisors <- seq(1:20)
check.total <- 1

repeat{
  check.total <- sum(dividend %% divisors)
  if(check.total == 0){break}
  dividend <- dividend + 1 
}

print(dividend)

