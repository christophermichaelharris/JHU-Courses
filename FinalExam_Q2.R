Signals <- c(260,216,259,206,265,284,291,229,232,250,225,242,240,252,236)
Observation <- c(1:15)
n = length(Signals)
xi = sum(Signals)
xbar = mean(Signals)
xi2 = sum(Signals^2)

StdDev = sqrt((n * xi2 - xi^2)/(n * (n-1)))

zval = qt(0.025,n-1)

Conf_Int = c(xbar - tval * StdDev/sqrt(n),xbar + tval * StdDev/sqrt(n))

print(Conf_Int)