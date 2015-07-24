## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m.inv <- NULL
	set <- function(y) {
		x <<- y
		m.inv <<- NULL
	}
	get <- function() x
	setInv <- function(Inv) m.inv <<- Inv
	getInv <- function() m.inv
 
	list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m.inv <- x$getInv()
	if (!is.null(m.inv)) {
		return(m.inv)
	}

	m.inv <- solve(x$get())
	x$setInv(m.inv)
	return(m.inv)
}
