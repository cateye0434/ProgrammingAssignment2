## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# creates matrix in cache
 makeCacheMatrix <- function(x = matrix()) {
  
  # initialize to NULL
  cache <- NULL
  
  # create matrix working environment
  set <- function(m) {
    
    x <<- m
    
  }
  # get the value of the matrix
  get <- function() x
  
  # invert matrix and store in cache
  setMatrix <- function(inverse) 
    
    cache <<- inverse
  
  # get inverted matrix 
  getInverse <- function() cache
  
  # return created functions to working environment
  list(set = set, get = get, setMatrix = setMatrix, getInverse = getInverse)
  
 }
 
 

 ## calcluates the inverse of matrix
 cacheSolve <- function(x, ...) {
   
   ## get the inverse of matrix from cache
   cache <- x$getInverse()
   
   # return inverted matrix from cache if it exists
   if (!is.null(cache)) {
     
     return(cache)
     
   }
   
   matrix <- x$get()
   
   return (cache)
 }
