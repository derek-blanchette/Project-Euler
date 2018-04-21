# Projec Euler Problem 10
# 
# Derek R. Blanchette

sieve <- function(n)
{
  n <- as.integer(n)
  primes <- rep(TRUE, n)
  primes[1] <- FALSE
  last.prime <- 2L
  for(i in last.prime:floor(sqrt(n)))
  {
    primes[seq.int(2L*last.prime, n, last.prime)] <- FALSE
    last.prime <- last.prime + min(which(primes[(last.prime+1):n]))
  }
  which(primes)
}

a <- sieve(2000000)

#Give the sum of all primes up to 2 million
sum(as.numeric(a))
