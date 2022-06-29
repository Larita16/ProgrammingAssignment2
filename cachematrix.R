## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function allows to create a matrix, set the values of y to x in the
##parent enviroment and inversa as null. Clear the values of x and inversa. 

makeCacheMatrix <- function(x = matrix()) {
  inversa <- NULL
  set <- function (y) {
    x <<- y
    inversa <<- NULL
  }
  get <- function () {x}
  setInversa <- function (inversacalculada) {inversa <<- inversacalculada}
  getInversa <- function () {inversa}
  list (set=set, get=get, setInversa=setInversa, getInversa=getInversa)
}


## Write a short comment describing this function
## This function allows to create the inverse of a matrix and call it inversa, 
##and to set that value and return it. If it is already been calculated it 
##returns the previous value. 
cacheSolve <- function(x, ...) {
  inversa <- x$getInversa ()
  if (!is.null (inversa)) {
    message ("getting cached data")
    return (inversa)
  }
  data <- x$get ()
  inversa <- solve (data, ...)
  x$setInversa (inversa)
  inversa 
}
        ## Return a matrix that is the inverse of 'x'
x <- makecachematrix (matrix (1:4, nrow=2, ncol=2))
x
cacheSolve(x)

