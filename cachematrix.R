## The main goal here is to write two functions "makeCacheMatrix" and "CacheSolve" 
## that cache the inverse of a matrix 
## 
## the first function creates a list which will be passed as an argument for the second one.
## please note the <<- assignment :it  puts the data in the global working space for use by both functiions.


## The function makeCacheMatrix below creates a special "matrix" object that can cache its inverse.
## It takes as input the magrix to be inversed
## and iutputs a list of functions used by "CacheSolve" function.

makeCacheMatrix <- function(x = matrix()) {
  im <- NULL
  set <- function(y) {
  
      x <<- y
    im <<- NULL
  }
  
  get <- function() x
  
  setminv <- function(minv) im <<- minv
  
  getminv <- function() im
  
  list(set = set, get = get,
       setminv = setminv,
       getminv = getminv)
}



## This second function computes the inverse of the special matrix returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), then the cacheSolver 
## should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
