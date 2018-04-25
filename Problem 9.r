# Euler Project #9
#Derek R. Blanchette

for (i in seq(146,1000)){
    for (j in seq(i+1,1000)){
        for (k in seq(j+1,1000)){
            if (i*i+j*j == k*k ) {
                print(i + j + k)
                if ( i + j + k == 1000){
                    print(cbind(i,j,k))
                }
            }
        }
    }
    print(i)
}
