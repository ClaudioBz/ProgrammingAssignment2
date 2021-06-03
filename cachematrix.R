## It's concerning that the content of the videos in this course don't match the requirements in the programming assignments

## This function will set values for the vector and the mean, and then get those values

makeCacheMatrix <- function(x=matrix()){
        inv<-NULL
        set<-function(y){
                x<<-y
                inv<<-NULL
        }
        get<-function() {x}
        setInverse<-function(inverse) {inv<<-inverse}
        getInverse<-function() {inv}
        list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}

## The function below calculates the mean of the vector "inv". The rule "if("is.null(inv))" checks if the mean have been already calculated.

cacheSolve<-function(x,...){
        inv<-x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        mat<-x$get()
        inv<-solve(mat,...)
        x$setInverse(inv)
        inv
}
        ## Return a matrix that is the inverse of 'x'
}
