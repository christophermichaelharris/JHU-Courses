ExpVect_3sample_Deviates <- vector(length=3)
ExpVect_3sample <- vector()
ExpVect_1sample <- vector()


for(i in 1:1000){
  ExpVect_3sample_Deviates[1] <- rexp(1,1/4)
  ExpVect_3sample_Deviates[2] <- rexp(1,1/4)
  ExpVect_3sample_Deviates[3] <- rexp(1,1/4)
  ExpVect_3sample[i] = sum(ExpVect_3sample_Deviates)
  
  ExpVect <- rexp(3,1/4)
  ExpVect_1sample[i] = sum(ExpVect)
  
}

ExpVect_1sample <- sort(ExpVect_1sample)
ExpVect_3sample <- sort(ExpVect_3sample)
plot(ExpVect_1sample[51:950],ExpVect_3sample[51:950])