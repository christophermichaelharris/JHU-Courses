X <- rbinom(n = 500, size = 10, p = 0.3)
Y <- rbinom(n = 500, size = 5,  p=0.3)

W = sort(X + Y)

W1 <- sort(rbinom(n=500, size = 15, p=0.3))

plot(W,W1,main="X/Y Simulation vs. Theoretical Calculation",xlab="X/Y Calculation",ylab="Simulation of W")
abline(lm(W1~W),col="red")
