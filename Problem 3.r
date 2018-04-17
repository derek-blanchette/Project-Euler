# https://projecteuler.net/problem=3

# Eueler Problem 3
# Derek R. Blanchette

#The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

toDivide <- 600851475143
factorList <- NULL

for (dividend in seq(1:60000)){
    
    quotient <- toDivide %% dividend
    
    if (quotient == 0) {
        toDivide <- toDivide / dividend
        print(paste(dividend,toDivide))
        factorList <- rbind(factorList, c(dividend, toDivide*dividend))
    }
    
    if (toDivide == 1) break
}
