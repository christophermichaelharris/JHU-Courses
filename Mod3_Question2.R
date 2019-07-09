HyperObs = 1000 #number of observations
HyperWhite = 4 #white balls
HyperBlack = 8 #black balls
HyperDrawn = 3 #number drawn

HyperProb <- rhyper(HyperObs,HyperWhite,HyperBlack,HyperDrawn)
MeanHyperProb <- mean(HyperProb)
print(MeanHyperProb)

ExpectedValue = 0

for(i in 0:3){
  ChooseWhite = factorial(HyperWhite)/(factorial(i)*factorial(HyperWhite-i))
  ChooseBlack = factorial(HyperBlack)/(factorial(HyperDrawn-i)*factorial(HyperBlack-HyperDrawn+i))
  ChooseTotal = factorial(HyperWhite+HyperBlack)/(factorial(HyperWhite+HyperBlack-HyperDrawn)*factorial(HyperDrawn))  
  ChooseProb = ChooseWhite * ChooseBlack / ChooseTotal
  ExpectedValue = ExpectedValue + ChooseProb * i
  i = i + 1
}

print(ExpectedValue)