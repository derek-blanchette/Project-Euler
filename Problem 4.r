# Euler Project Problem 4
# https://projecteuler.net/problem=3
# Derek R. Blanchette

pals <- NULL

#this search needs to be triangular.
#from 1 to 999
#then 1 to 998
#then 1 to 997
#or something like that 

for (i in seq(999,100)){
    for (j in seq(999,100)){
        
        word <-paste(i*j)
        
        if (nchar(word) %% 2 == 0 ) {
            a <- substr(word, 1, nchar(word)/2)
            b <- substr(word, nchar(word)/2 + 1, nchar(word))
            
        } else {
            a <- substr(word, 1, (nchar(word) - 1)/2)
            b <- substr(word, (nchar(word) - 1)/2 + 2, nchar(word))
        }
        
        c <- paste(rev(strsplit(b, split = "")[[1]]), collapse = "") 
        
        if (a == c) {
            pals <- rbind(pals, cbind(i, j, i*j))
        }
    }
}

#just let it run for a while then sort the results.
#arrange(pals, c)
#the answer is 913*993 906609r
