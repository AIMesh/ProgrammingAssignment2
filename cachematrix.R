## The makeCacheMatrix and the cacheSolve functions cache the inverse of a matrix

## makeCacheMatrix function creats a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        invr <- NULL
        set <- function(y) {
                x <<- y
                invr <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) invr <<- inverse
        getinverse <- function() invr
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}

## cacheSolve function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix function. If the inverse has already been calculated(and the matrix not 
## changed), then the cacheSolve retrieves the inverse from the cache

cacheSolve <- function(x, ...) {
        invr <- x$getinverse()
        if(!is.null(invr)) {
                message("getting cached data")
                return(invr)
        }
        data <- x$get()
        invr <- solve(data)
        x$setinverese(invr)
        invr
}

