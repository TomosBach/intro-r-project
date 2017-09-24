#Review of R
#By Arjun Biddanda

#----- Assignment ------

#The assignment of a value is done using the arrow operator
x <- 3
y <- 1
z <- x+y

# "help/keyboard shortcuts help" will provide more useful shortcuts

#----- Functions -----

#Takes and input and returns the square.
square <- function(x){
  return(x^2)
}

#----- Conditionals -----

isodd <- function(x){
  if(x %% 2 == 1){
    return(TRUE)
  }else{
    return(FALSE)
  }
}

#----- For Loops -----

#Summing up the elements in a vector (for example).
#acc is an accumulator - every element that is in the vector will be added to the accumulator.
#Setting it as 0 means the accumulator is empty to start with.

mySum <- function(v){
  acc <- 0
  for(x in v){
    acc <- acc + x
  }
  return(acc)
}
#Note seq can be written seq(1,10,2) where the final value after the comma specifies the interval of the sequence.
#This would return 1,3,5,7,9.
#Alternatively when the interval is 1 it can be written seq(1,10) or seq(1:10)

#----- Indexing -----

x <- c(1,2,3,4)
#[] - indexing
#() - function arguments
#{} - control flow
