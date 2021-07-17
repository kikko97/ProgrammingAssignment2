## Put comments here that give an overall description of what your
## functions do

## the function creates a list of functions that can get/set the matrix, and get/set the inverse of that matrix.

makeCacheMatrix <- function(x = matrix()) {
      m<-NULL
      setx<-function(y){
            m<<-NULL
            x<<-y
      }
      getx<-function()x
      setinverse<-function(inverse){
            m<<-inverse
      }
      getinverse<-function()m
      list(setx=setx,getx=getx,setinverse=setinverse,getinverse=getinverse)
}


## the function first checks if there is inverse of the matrix, if so, then outputs the value; if not, then conduct the caculation.

cacheSolve <- function(x,...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getinverse()
        if(!is.null(m)){
             message("getting cached data")
             return(m)
        }
             m<-solve(x$getx(),...)
             x$setinverse(m)
             m
}
