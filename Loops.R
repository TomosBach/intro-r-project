#Loops

analyze <- function(filename){
  data <- read.csv(filename, header=F)
  mean_day_inflammation <- apply(data,2,mean)
  plot(mean_day_inflammation, main=filename)
}

# main= adds a title to the plot, using the filename here. USe ?plot to open help and see other options as there are a lot....
dir("data/")

#This function could be run for each file in the data directory.
#But this is repeative and boring....
#It can be automated with a loop!

# ---- A forward loop function ----

for(i in c(1,3,5)){
  print(i+1)
}
#This adds one to each value in the index (in)

inflammation_files <- c(
  "data/inflammation-01.csv",
  "data/inflammation-02.csv",
  "data/inflammation-03.csv",
  "data/inflammation-04.csv",
  "data/inflammation-05.csv"
)
#COncatenates all the data files into a single 

for(filename in inflammation_files){
   print(filename)
   analyze(filename)
}
print(inflammation_files)

#This uses the analyze function above to plot the data for all files via the loop.

all_inflammation_files <- dir(
  path ="data",
  full.names = T,
  pattern="^inflammation"
)
print(all_inflammation_files)

#The method above ia anotehr way to look up a range of files that all start with the same first word (inflammation in this case).

sum(x)
x <-  c(1,2,3,4,5)

sum_x <- 0
for(i in x){
  cat("i:",i,"\n")
  cat("sum_x:",sum_x, "\n")
  sum_x <- sum_x+i
}

# the for loop here is running for every element of X, cat() both concatenates and prints. Adding \n puts the next result on a new line.

sum_x <- 0

#---- Powers via loops ----

2*2*2
#This is a basic way th do 2^3

exponentiate <- function(x,y){
  result <- 1
  for(i in 1:y){
    result <- result*x
  }
  return(result)
}

#This runs the loop y times when your power is x^y.

exponentiate(2,2)

#----- Exercise -----

product <- function(x,y){
  result <-y
  for(i in y){
    result <- result*x
  }
  return(result)
}
#All the "result" terms have to be the same otherwise this will not work as a loop - the function will then need to work on the result of the previous iteration.

product(1,2)
product(2,2)

#---- Example -----

dat <- read.csv("data/inflammation-01.csv", header=F)

patient_mean <- apply(dat,2,mean)

#This function plots the mean of each patient over all days

patient_mean_function <- function(filename){
  dat <- read.csv(filename,header=F)
  rows_col <- dim(dat)
  dat_cols <- rows_col[2]
  means <- numeric(dat_cols)
  for(i in 1:dat_cols){
    means[i] <- mean(dat[,i])
  }
  plot(means,main=filename)
}

patient_mean_function("data/inflammation-01.csv")

x <- 10:1
N <- length(x)

for(i in 1:N){
  print(x[i])
  print(y[i])
}

for(i in 1:N){
  print(i)
}
  
#---- Exercise ----

#The patient mean function plots the average of all patients over time (days).
#Now We want the average of each patients over all days.

days_mean_function <- function(filename){
  dat <- data.matrix(read.csv(filename,header=F))
  #As integer is required to calculate the mean we must specify this here by converting the data frame to a matrix.
  #The exact reason for this is a bit murky but (essentially) the rows are "class = data.frame", not "class = integer" per columns.
  #Rows and columns are different!
  #You cannot take the mean of a data frame, only of integers.
 
  rows_col <- dim(dat)
  dat_rows <- rows_col[1]
  means <- dat_rows
  
  for(i in 1:dat_rows){
    means[i] <- mean(dat[i,])
  }
  plot(means,main=filename)
}

days_mean_function("data/inflammation-01.csv")
