# Project Euler, Problem 11
# https://projecteuler.net/problem=11
# Derek R. Blanchette

grid <- read.table("G:/Coding/Project-Euler/data11.csv", sep=",", header = T)

grid1 <- as.matrix(grid)
results <- data.frame()


for (roww in seq(1:20)) {
  for (colm in seq(1:20)){
    
    #Across
    if (colm <=17){
      p1 = grid1[roww, colm]
      p2 = grid1[roww, colm+1]
      p3 = grid1[roww, colm+2]
      p4 = grid1[roww, colm+3]
      
      product = prod(p1, p2, p3, p4)
      
      temp <- cbind(t(c(product, p1, p2, p3, p4)))
      
      colnames(temp) <- c("product", "a", "b", "c", "d")
      
      results <- rbind(results, temp)
    }
    
    if (roww <=17){
      #Down
      p1 = grid1[roww,colm]
      p2 = grid1[roww+1,colm]
      p3 = grid1[roww+2, colm]
      p4 = grid1[roww+3, colm]
      
      product = prod(p1, p2, p3, p4)
      
      temp <- cbind(t(c(product, p1, p2, p3, p4)))
      
      colnames(temp) <- c("product", "a", "b", "c", "d")
      
      results <- rbind(results, temp)
    }
    
    if (roww <= 17 && colm <= 17){
      #Diagonal
      p1 = grid1[roww, colm]
      p2 = grid1[roww + 1, colm + 1]
      p3 = grid1[roww + 2, colm + 2]
      p4 = grid1[roww + 3, colm + 3]
      
      product = prod(p1, p2, p3, p4)
      
      temp <- cbind(t(c(product, p1, p2, p3, p4)))
      
      colnames(temp) <- c("product", "a", "b", "c", "d")
      
      results <- rbind(results, temp)
    }
    
    if (roww >= 4 && colm <= 17){
      #Diagonal
      p1 = grid1[roww, colm]
      p2 = grid1[roww - 1, colm + 1]
      p3 = grid1[roww - 2, colm + 2]
      p4 = grid1[roww - 3, colm + 3]
      
      product = prod(p1, p2, p3, p4)
      
      temp <- cbind(t(c(product, p1, p2, p3, p4)))
      
      colnames(temp) <- c("product", "a", "b", "c", "d")
      
      results <- rbind(results, temp)
    }
    
  }  
}

write.table(results, "G:/coding/project-euler/results11.csv", sep=",", row.names=FALSE)
