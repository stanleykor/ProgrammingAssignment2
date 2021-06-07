## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.
## It also prints a list containing the functions to:
## 1. Set the value of matrix
## 2. Get the value of matrix
## 3. Set the value of the inverse
## 4. Get the value of the invere

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


## The following functions first checks to see if the inverse has 
## already been calculated. If it has been, it will return the inverse
## value. Otherwise, it will compute the inverse matrix and print it.

cacheSolve <- function(x, ...) {
        i <- x$getinverse
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(x, ...)
        x$setinverse(i)
        i
}
