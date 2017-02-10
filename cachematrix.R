## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Create an "object" that represents a matrix
# with cached inverse
makeCacheMatrix <- function(x = matrix()) {
  inv = NULL;
  
  set = function(y) {
    x <<- y;
    inv <<- NULL;
  };
  set(x);
  
  get = function() { x };
  getInv = function() { 
    if(is.null(inv)) {
      inv <<- solve(x);
    }
    inv;
  };
  
  list(set=set, get=get, getInv=getInv);
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  x$getInv();
}
