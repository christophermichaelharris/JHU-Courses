count = 0                   #counter for the simulation
trials = 1000
n = 12

for(i in 1:trials){
  u <- runif(n,min=0,max=1)     #generate n random numbers between 0 and 1
  y <- -log(1-u)                #the inverse of the CDF
  y <- sort(y)                   #sorts the list
    
if(y[1] < 0.20){                 #condition 
    count=count+1
  }
}

print(count/trials)

