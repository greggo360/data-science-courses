library(datasets)
data(iris)
?iris
str(iris$Sepal.Length)
str(iris$Species)
summary(iris$Species)
s <- split(iris, iris$Species)
lapply(s, function(x) colMeans(x[, c("Petal.Length","Sepal.Length")]))
#quiz q2
apply(iris[,1:4],2,mean)
#quiz q3
data(mtcars)
?mtcars
#How can one calculate the average mpg by number of cylinders in the car (cyl)?
sapply(split(mtcars$mpg, mtcars$cyl), mean)
str(mtcars$cyl)
str(as.factor(mtcars$cyl))
#quiz q4
results <- sapply(split(mtcars$hp, mtcars$cyl), mean)
results[3] - results[1]


#Write the following functions:     
      #makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
      #cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

makeCacheMatrix <- function(m = matrix()) {
      #set the value of the matrix
      #get the value of the matrix
      #set the value of the inverse
      #get the value of the inverse
      
      m <- NULL
      set <- function(y) {
                  x <<- y
                  m <<- NULL
      }
      get <- function() x
      setinverse <- function(solve) m <<- inverse
      getinverse <- function() m
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}

cacheSolve <- function(x, ...) {
      m <- x$getinverse
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m
}