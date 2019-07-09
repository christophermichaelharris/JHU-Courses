X <- rexp(n=5000,rate=1)
Y <- rexp(n=5000,rate=1)
W = (Y/X)

r <- runif(n=5000)
Wdev = (1/(1-r))-1

W_sorted = sort(W)
Wdev_sorted = sort(Wdev)

W_trim = W_sorted[1:4750]   #returns the bottom 95%
Wdev_trim = Wdev_sorted[1:4750]    #returns the bottom 95%

plot(W_trim,Wdev_trim,main="X/Y Simulation vs. Theoretical Calculation of W",xlab="Simulation of W",
     ylab="Theoretical Calculation")

