## The makeCacheMatrix and the cacheSolve functions cache the inverse of a matrix

## makeCacheMatrix function creats a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        invers <- NULL
        set <- function(y) {
                x <<- y
                invers <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) invers <<- inverse
        getinverse <- function() invers
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}

## cacheSolve function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix function. If the inverse has already been calculated(and the matrix not 
## changed), then the cacheSolve retrieves the inverse from the cache

cacheSolve <- function(x, ...) {
        invers <- x$getinverse()
        if(!is.null(invers)) {
                message("getting cached data")
                return(invers)
        }
        data <- x$get()
        invers <- solve(data)
        x$setinverse(invers)
        invers
}

