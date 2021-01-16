## Function creates a vector, list which consists of functions to set and get values of the matrix, x and inverse, i

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                x <<- y
                i <<- NULL
        }
        get <- function()x
        setinverse <- function(inverse)i <<- inverse
        getinverse <- function()i
        list (set=set, get=get,
              setinverse=setinverse,
              getinverse=getinverse)
}


## cacheSolve function computes the inverse of the returned matrix

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)){
                message("getting cached data")
                return(i)
        }
        mat <- x$get()
        i <- inerse(mat, ...)
        x$setinverse(i)
        i
}
