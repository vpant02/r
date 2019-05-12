## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
a <- NULL
  set <- function(y) {
          x <<- y
          a <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) a <<- inverse
  getinverse <- function() a
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
a <- x$getinverse()
  if (!is.null(a)) {
          message("getting cached data")
          return(a)
  }
  value <- x$get()
  a <- solve(value, ...)
  x$setinverse(a)
  a
}
## For checking the output
num <-matrix(c(1 ,2 ,3 ,4), 2 ,2)
print(num)
invr <- makeCacheMatrix(num)
print(cacheSolve(invr))
