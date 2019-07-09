PoisVect_3sample_Deviates <- vector(length=3)
PoisVect_3sample <- vector()
PoisVect_1sample <- vector()


for(i in 1:1000){
  PoisVect_3sample_Deviates[1] <- rpois(1,2)
  PoisVect_3sample_Deviates[2] <- rpois(1,2)
  PoisVect_3sample_Deviates[3] <- rpois(1,2)
  PoisVect_3sample[i] = sum(PoisVect_3sample_Deviates)
  
  PoisVect <- rpois(3,2)
  PoisVect_1sample[i] = sum(PoisVect)
  
}

PoisVect_1sample <- sort(PoisVect_1sample)
PoisVect_3sample <- sort(PoisVect_3sample)
plot(PoisVect_1sample,PoisVect_3sample)