## The function is to caluculate the inverse of a square matrix

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
#Set the matrix
        set <- function(y){
           x<<-y
           m<<-NULL
                }
        #Get the matrix
        get<- function()x
        #Set the inverse matrix
        setinverse <- function(inverse)m <<- inverse
        #Get the inverse matrix
        getinverse<-function()m
        list(set=set, get=get,
             setinverse=setinverse,
             getinverse=getinverse)
}


## The function is to compute the inverse of the special "matrix" showed above
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getinverse()
        #Get the data
        if (!is.null(m)){
                message("getting cached data")
                return(m)
                }
        #Get the matrix and calculate the inverse matrix
        data<-x$get()
        m<-solve(data,...)
        x$setinverse(m)
        m
}
