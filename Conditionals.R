#conditionals in R

num <- 3
if (num>5){
  print("The number is greater than 5")
}else {print("Try again!")
}
print("Done.")

num <- 53
if (num>100){
  print("The number is greater than 100")
}

#without the "else" function this will run, but output nothing.

#---- Exercise ----
#write a function to return (0, -1, 1) based on the sign of the input integer. Call the function sign.

sign <- function(num){

  if(num<0){
  print("-1")
  }
  if(num>0){
  print("+1")
  }
  if(num==0){
  print("0")
  }
}
sign(3)
sign(-3)
sign(0)

#The correct way is:

sign <- function(num){
  
  if(num<0){
    return("-1")
  }
  if(num>0){
    return("+1")
  }  else{return(0)
  }
}
#If x isn't positive or negative it must be 0 therfore you can use "else" as this requires less code, but a third "if" also works.
sign(3)
sign(-3)
sign(0)

#Chained conditions:
#The & symbol means AND - both parts need to be true, the following will return the "else" answer.

if(1>0 & -1>0){
  print("Both parts are true")
}else{print("One part is false")
}

#The | symbol is an OR statement, the following will return the "if" answer.

if(1>0 | -1>0){
  print("Both parts are true")
}else{print("One part is false")
}

if(1>0){
  if(-1>0){
    print("Both are true.")
  }else{
    print("At least one is true.")
  }
}else{
  print("at least one is true")
}
#---- Grabbing Odd Numbers ----

n100 <- seq(1,100)

#Function of a vector, v. %% is the modulus, it calculates the remainder of a number divided by the bumber specified.
getodd <- function(v){
  return(v[v %% 2 ==1])
}

#----- Exercise -----
#Write a function which takes three arguments:
#v - a vector of integers
#x - a number to divide by to check for even divisibility
#y - a second number to check for even divisibility
#Output should be all numbers in V which are evenly divisible by x and y
#Example: double_div(c(1,2,3,4),2,4) => [4]
#Note: You must use an for-loop for this.

double_div <- function(v,x,y){
    output <- numeric(0)
    j <- 1
    for(i in v){
    if((i %% x ==0)&(i %% y==0)){
      output[j] <- i
      j <- j+1
    }
  }
    return(output)
}
v <- seq(1,100)
double_div(v,2,4)

#Answer:

double_div <- function(v,x,y){

  for(i in v){
    if((i %% x ==0)&(i %% y==0)){
      print(i)
    }
  }
}

#or the following which is neater and will run faster.

double_div2 <- function(v,x,y){
  return(v[(v %% x ==0)&(v %% y==0)])
}
