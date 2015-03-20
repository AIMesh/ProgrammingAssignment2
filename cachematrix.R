## The makeCacheMatrix and the cacheSolve functions cache the inverse of a matrix

## makeCacheMatrix function creats a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

}


## cacheSolve function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix function. If the inverse has already been calculated(and the matrix not 
## changed), then the cacheSolve retrieves the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
