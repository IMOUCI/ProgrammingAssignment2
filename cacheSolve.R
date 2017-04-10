makeCacheMatrix<- function(M=matrix) {  # we start by initializing the matrix in the input
  N=matrix(dim(M)) #we declare N as  being a matrix same size as M
  N <- NULL # we initialize the inverse of the matrix M as N with a NULL value
  set <- function() { # we define a list of functions for setting and getting matrices
   N <<- NULL #we intialize the inverse matrix of M to NULL
  }
  get <- function() M # when cachesolve calls get it gets M
  setinv <- function(inv) N <<- inv #when the inverse of M is calculated, it's stored in N
  getinv <- function() N 
  list(set = set, get = get,# the list is created for usage by function cachesolve
       setinv = setinv,
       getinv = getinv)
}

cacheSolve <- function(A, ...) {# we give M as input to cacheSolve
  N <- A$getinv() # we look for the inverse N
  if(!is.null(N)) { # we check that N is null or not
    message("getting cached data") # if N not null we return the cached value of N 
    return(N)
  }
  data <- A$get() # if N is NULL we should calculate it
  N <- solve(data, ...) # we calculate N
  A$setinv(N) # we cache it
  N
}

