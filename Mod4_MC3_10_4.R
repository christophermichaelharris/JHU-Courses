count = 0                            ##counter for the simulation

for(i in 1:1000){
  u <- runif(5,min=0,max=1)          ##generate 5 random numbers between 0 and 1
  y <- (u)^.5                        ##the inverse of the CDF
  y <- sort(y)                       ##sorts the new datapoints
  if(y[1] < 0.60 && y[5] > 0.60){    ##checks if the smallest is less than 0.6 and the largest is greater than 0.6
    count=count+1                    ##adds one to the counter
  }
}

print(count/1000)

