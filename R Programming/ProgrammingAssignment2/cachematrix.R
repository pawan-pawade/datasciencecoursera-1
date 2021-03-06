## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(X, ...) {
    i <- X$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- X$get()
    i <- solve(data, ...)
    X$setinverse(i)
    i
}

