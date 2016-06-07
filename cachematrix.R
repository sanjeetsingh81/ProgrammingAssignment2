## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  get <- function()x
  
  setsolve <- function(inverse) inv <<- inverse
  
  getsolve <- function() inv
  
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  

}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getsolve()
  
  if(!is.null(inv)) {
    message("retrieving inverse from cache")
    return(inv)
  }
  
  inv <- solve(x$get())
  x$setsolve(inv)
  inv
}

