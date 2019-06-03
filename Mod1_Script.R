Results <- matrix(nrow=10,ncol=2)    ##create a 10 x 2 matrix
row.names(Results) <- c(1:10)     ##assign each row a name and value from 1-10
colnames(Results) <- c("TallyCount","Proportion")
Results[,1] <- rep(0,10)   ##make the first column in the matrix all 0s to tally counts

for(i in 1:5000){                        ##repeat the loop n number of times
IntList <- sort(sample(c(1:10),5,replace=FALSE))     ##create and sort a list of 5 random integers without replacement
MatchValue <- IntList[4]                      ##take the 4th item in the list (2nd largest #)
Results[MatchValue] = Results[MatchValue] + 1    ##in the matrix, take the tally count row and add one to it
  
}

Results[,2] = Results[,1]/sum(Results[1:10])     ##take the second column and populate as the first column divided by the number of trials

## Create the output table from the raw data
OutputTable <- matrix(nrow=3,ncol=1)    ##3x1 matrix
row.names(OutputTable) <- c("Underestimation","Accurate","Overestimation")
OutputTable[1] = sum(Results[1:7]) ##underestimates when the 2nd largest number in the sample is 7 or less
OutputTable[2] = Results[8] ##accurate when the 2nd largest number is 8
OutputTable[3] = sum(Results[9:10]) ##overestimates when the 2nd largest number is 9 or 10
OutputTable[,1]=OutputTable[,1]/sum(OutputTable[,])  ##Turns into a proportion
print(OutputTable)   ##prints the result

