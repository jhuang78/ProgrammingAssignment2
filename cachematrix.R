## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Create an "object" that represents a matrix
# with cached inverse
makeCacheMatrix <- function(x = matrix()) {
  inv = NULL;
  
  # function to set the matrix
  # will invalidate any previosuly calculated inverse
  set = function(y) {
    x <<- y;
    inv <<- NULL;
  };
  set(x);
  
  # function to return the matrix itself
  get = function() { x };
  
  # function to calcualted the inverse if not already calcaulted,
  # and return it
  getInv = function() { 
    if(is.null(inv)) {
      inv <<- solve(x);
    }
    inv;
  };
  
  list(set=set, get=get, getInv=getInv);
}


## Write a short comment describing this function
# get the inverse of a cachedMatrix
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  x$getInv();
}
