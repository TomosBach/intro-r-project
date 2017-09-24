#Functions in R
#By Arjun Biddanda

#Farenheit to Kelvin conversion.
fahr_to_kelvin <- function(temp){
  Kelvin <- 273.15 +((temp -32)*5/9)
  return(Kelvin)
  }

#function(){...} indicates a function. <-  assigns a variable. return(variable) tells the function what the output is to be.
#Everything in {} is referred to as the body of the function.

#Kelvin to celsius conversion.
kelvin_to_celsius <- function(t){
  celsius <- t- 273.15
  return(celsius)
}

#Fahrenheit to Celsius
fahr_to_celsius <- function(temp){
  Kelvin <- fahr_to_kelvin(temp)
  celsius <- kelvin_to_celsius(Kelvin)
  return(celsius)
  }
#The variable for the second function is the result of the first, otherwise this will not work.
#The variables can be defined as functions already in the code.
# functions can be nested in the console e.g. kelvin_to_celsius(fahr_to_kelvin(32))

#Exercise
#Define a function called fence which takes two vectors and returns the second vector concatenated with the first.

Fence <- function(V1,V2){
  fence <- c(V1,V2)
  return(fence)
}
#V1 and V2 can be single values or vectors.

#Solution:
Fence <- function(y,x){
  v <- c(y,x)
  return(v)
}

#Test vector 1
test_vec_1 <- c("Arjun","is","awesome")
test_vec_2 <- c(12,15,32,3)

input_1 <- 20
mysum <- function(input_1, input_2 =20){
  print(input_1)
  print(input_2)
  output <- input_1 + input_2
  return(output)}

#Inputs can be defined in the script, in the console (e.g.  mysum(input_1 = 1)) or when setting the input for the function while declaring it e.g. input_2 =20).
#print displays the arguments (or inputs) or whatever else you ask it to.
#return displays the result of the function.

#Function to center my data

center <- function(data, desired){
  #return a new vector containing original data centered around the desired value.
  #Example: center(c(1,2,3),0) => c(-1,0,1)
  new_data <- (data - mean(data)) + desired
  return(new_data)
}

dat <-  read.csv("data/inflammation-01.csv", header=F)
centered <- center(dat[,4],0)

#Header=F means the values for the headers/ the names of each row are ommited (loading them is false)
#This uses column 4 of the data and centers it around 0.

# ------ Apply Functions -----

patient1 <- dat[1,]

avg_day_inflammation <- apply(dat,2, mean)
#For the MARGIN value, 1 = rows 2 = columns

max_day_inflammation <- apply(dat,2,max)
min_day_inflammation <- apply(dat,2,min)


# to display a graph of your data (or the min, max or any other function applied to it)
#use e.g.  plot(min_day_inflammation) in the console.

# ------ Exercise -----
# Create a function called "analyze" whose input is the name of a data set (e.g. data/inflammantion-01.csv)
# and output a plot of mean inflammation per day.

analyze <- function(filename){
data <- read.csv(filename, header=F)
mean_day_inflammation <- apply(data,2,mean)
plot(mean_day_inflammation)
}

#----How to save Plots -----
#Using the analyze function from above.
#Use:
#> pdf("inflammation-02.pdf")
#> analyze("data/inflammation-02.csv")
#> dev.off

#Dev off is required to prevent all other datasets analyzed from overwriting the pdf
