f <- function(x) {
      g <- function(y) {
            y + z
      }
      z <- 4
      x + g(x)
}
z<-10
f(3)


above10 <- function(x) {
      use <- x > 10
      x[use]
} #returns subset of vector x that are bigger than 10

above <- function(x, n) {
      use <- x > n
      x[use]
}  
#above whatever n is (user specified)
x <- 1:20
above(x,12)

#calculate mean of each column in a matrix
columnmean <- function(y, removeNA = TRUE) {
      nc <- ncol(y) #get number of columns in matrix y
      means <- numeric(nc) #initialize empty vector 
      for(i in 1:nc) {
            means[i] <- mean(y[,i], na.rm = removeNA)
      }
      means
}
columnmean(airquality)
columnmean(airquality, FALSE)

m <- matrix(1:4, 2, 2)
m
columnmean(m)
columnmean(m,F)

#quiz q2

x <- 1:10
if(x > 5) {
      x <- 0
}
#quiz q3
f <- function(x) {
      g <- function(y) {
            y + z
      }
      z <- 4
      x + g(x)
}
z <- 10
f(3)

#quiz q4
x <- 5
y <- if(x < 3) {
      NA
} else {
      10
}
y

#quiz q5

