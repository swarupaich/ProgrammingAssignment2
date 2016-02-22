## Put comments here that give an overall description of what your
## functions do

## The following makeCacheMatrix has 4 functions to set, get the "special" Matrix and 
## setInverseMatrix and getInverseMatrix for the Inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  
  inverseMatrix <- matrix()
  
  setMatrix <- function(y = matrix()) {
    
    x <<- y
    
  }
  
  getMatrix <- function() x
  
  setInverseMatrix <- function(x){
    
    inverseMatrix <<- solve(x)
    
  }
  
  getInverseMatrix <- function() inverseMatrix
  
}


## This function checks first if the Inverse Matrix is avaialble in cache, in that checking
## also check if the Matrices are identical. If found in cache and matrices are identical, 
## it returns the Inverse matrix. Else, it computes the Inverse and sets that in cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  
  inverseMatrix <- x$getInverseMatrix()
  
  if(!is.null(inverseMatrix)){
    
    if(identical(x, x$getMatrix)){
      
      print("Cache data available")
      return(inverseMatrix)
      
    }
    
  }
  
  inverseMatrix <- solve(x)
  x$setInverseMatrix(x)
  inverseMatrix
  
}
