# Euler Problem 1 
# https://projecteuler.net/problem=1
# Derek R. Blanchette

total <- 0

for (i in seq(1,999)){
    mod3 <- i %% 3
    mod5 <- i %% 5
    
    both <- (mod3 ==0 && mod5 == 0)
    either <- (mod3 == 0 || mod5 == 0)
    if (either || both) {
        total = total + i
        }
}
# Solution
print(total)
