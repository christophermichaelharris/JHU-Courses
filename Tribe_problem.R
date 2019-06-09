Counter <- matrix(nrow=3,ncol=1)
row.names(Counter) <- c(1:3)     ##assign each row a name and value from 1-10
colnames(Counter) <- c("InfGroups")
Counter[,1] <- rep(0,3)

TribeOutput <- matrix(nrow=2,ncol=2)
row.names(TribeOutput) <- c("All Groups Infected","At Least One Group Not Infected")     ##assign each row a name and value from 1-10
colnames(TribeOutput) <- c("Total","Prop")

for(i in 1:100000){
  Infected_Members <- sample(c(1:21),4)
  Groups <- sample(c(1:21),21)

  Inf1 <- sum(Infected_Members %in% Groups[1:7])
  Inf2 <- sum(Infected_Members %in% Groups[8:14]) 
  Inf3 <- sum(Infected_Members %in% Groups[15:21])  
  
  Tally = sum(Inf1>0) + sum(Inf2>0) + sum(Inf3>0)
  
  Counter[Tally]=Counter[Tally]+1
  
}


TribeOutput[1,1] = Counter[3]
TribeOutput[2,1] = (sum(Counter[])-TribeOutput[1,1])
TribeOutput[1,2] = TribeOutput[1,1]/sum(TribeOutput[,1])
TribeOutput[2,2] = TribeOutput[2,1]/sum(TribeOutput[,1])

print(Counter)
print(TribeOutput)

