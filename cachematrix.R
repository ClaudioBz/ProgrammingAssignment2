## It's concerning that the content of the videos in this course don't match the requirements in the programming assignments

## This function will set values for the vector and the mean, and then get those values

makeCacheMatrix <- function(x=matrix()){
        inv<-NULL
        setted<-function(y){
                x<<-y
                invers<<-NULL
        }
        get<-function() {x}
        setInverse<-function(inverse) {invers<<-inverse}
        getInverse<-function() {invers}
        list(setted=setted,get=get,setInverse=setInverse,getInverse=getInverse)
}

## The function below calculates the mean of the vector "inv". The rule "if("is.null(inv))" checks if the mean have been already calculated.
## Plus: not sure if inverse of a matrix is the same as the inverse of the values in a matrix.

cacheSolve<-function(x,...){
        invers<-x$getInverse()
        if(!is.null(invers)){
                message("loading cached data into function")
                return(invers)
        }
        mater<-x$get()
        invers<-solve(mat,...)
        x$setInverse(invers)
        invers
}
        ## Return a matrix that is the inverse of 'x'
}
