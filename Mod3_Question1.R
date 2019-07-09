n = 1000
size = 20
prob = 0.4

BinomSample <- rbinom(n,size,prob)
MeanBinomSample <- mean(BinomSample)
print(MeanBinomSample)

TheoreticalMean <- size * prob
print(TheoreticalMean)