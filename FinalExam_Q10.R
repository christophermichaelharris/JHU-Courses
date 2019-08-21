

Age <- c(1:17)
SBP <- c(98,102,105,107,108,110,111,112,113,115,117,119,122,125,127,130,133)

n = length(Age)

xi = sum(Age)
xi2 = sum(Age^2)
xbar = mean(Age)

yi = sum(SBP)
yi2 = sum(SBP^2)
ybar = mean(SBP)

xy = sum(Age * SBP)

###Calculate B1 and B0
B1 = (n * xy - xi*yi)/(n * xi2 - xi^2)
B0 = ybar - B1*xbar

###Calculate S for confidence intervals
S2 = 1/(n-2) * (yi2 - B0 * yi - B1 * xy)
S = sqrt(S2)

###B1 conf interval:
tval = qt(0.975,df = n-2)
CI_halfwidth_B1 = tval * S / sqrt(sum((Age - xbar)^2))  #Calculates "leftside" of CI width
ConfIntB1 = c(B1 - CI_halfwidth_B1,B1 + CI_halfwidth_B1)

###B0 conf interval:
CI_halfwidth_B0 = tval * S * sqrt(xi2)/(sqrt(n)*sqrt(sum((Age - xbar)^2)))
ConfIntB0 = c(B0 - CI_halfwidth_B0,B0 + CI_halfwidth_B0)

###Predicted value of a 13YO boy
yhat = B0 + B1*13

###Conf Interval
w = tval * S * sqrt(1/n + (13 - xbar)^2/sum((Age - xbar)^2))
yhat_conf = c(yhat - w, yhat + w)