NumObs = 1000
Lambda = 3

ExponSample <- rexp(NumObs,Lambda)
MeanExpon <- mean(ExponSample)
print(MeanExpon)

ExpExpon = 1/Lambda
print(ExpExpon)
