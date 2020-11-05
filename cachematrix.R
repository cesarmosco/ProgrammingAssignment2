## Will create a matrix and take its inverse
## functions do

## creating a matrix that will take its inverse

makeCacheMatrix <- function(x = matrix()) {
  m <<- matrix
  i <<- NULL
  
}

## getting the matrix

get <- function() {
  
  ## Inverse of matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  ## Method to get the inverse of the matrix
  getInverse <- function() {
    ## Back to the inverse 
    i
  }
  ## Return a list of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



cacheSolve <- function(x, ...) {
  
  m <- x$getInverse()
  
  
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  ## Get the matrix from the object
  data <- x$get()
  
  ## Calculate the inverse 
  m <- solve(data) %*% data
  
  ## Set the inverse
  x$setInverse(m)
  
  ## Return
  m
}