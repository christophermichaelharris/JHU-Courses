BaseballSim <- function(nSim = 1000,winProb = 0.55,SeriesGames=7){

SeriesTally <- matrix(nrow=2,ncol=1)
row.names(SeriesTally) <- c("Win","Loss")
SeriesTally[1:2] <- c(0,0)

for(n in 1:nSim){

win = 0
loss = 0
  
  for(g in 1:SeriesGames){
    if(win == ((SeriesGames-1)/2)+1 | loss == ((SeriesGames-1)/2)+1){
      break
    } else {
    GameResult <- sample(c(0,1),1,prob=(c(1-winProb,winProb)))  #0 is a loss (45%), 1 is a win (55%)
    if(GameResult == 1){
      win = win +1
    } else {
      loss = loss + 1
  }
}
}

if (win > loss){
  SeriesTally[1] = SeriesTally[1] + 1
} else {
  SeriesTally[2] = SeriesTally[2] + 1
}
}

print(SeriesTally)

}
