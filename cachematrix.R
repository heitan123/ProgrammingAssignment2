## The overall function is Caching the Inverse of a Matrix
## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
    m<-NULLL
    set<-function(y){
    x<<-y
    m<<-NULL
    }
    get<-function()x
    set
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$solvematric()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$solvematrix(m)
        m
}
