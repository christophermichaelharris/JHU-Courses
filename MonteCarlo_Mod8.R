nSample = 10000
nAttempts = 10

Mu_1 <- matrix(nrow = nSample)
Mu_2 <- matrix(nrow = nSample)
RelativeEfficiency <- matrix(nrow=nAttempts)

for(j in 1:nAttempts){
  for(i in 1:nSample){
    SampleUnif <- rnorm(n=3,mean = 0, sd = 1)
    Mu_1[i] = SampleUnif[1]/4 + SampleUnif[2]/2 + SampleUnif[3]/4
    Mu_2[i] = SampleUnif[1]/3 + SampleUnif[2]/3 + SampleUnif[3]/3  
  }

  Mu1_var = var(Mu_1)
  Mu2_var = var(Mu_2)

RelativeEfficiency[j] = Mu1_var/Mu2_var
j=j+1
}

print(RelativeEfficiency)
