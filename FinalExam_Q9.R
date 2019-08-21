GPA <- matrix(nrow=6,ncol=5)
GPA[1,] = c(8,9,10,4,31)
GPA[2,] = c(5,11,15,11,42)
GPA[3,] = c(6,7,20,14,47)
GPA[4,] = c(3,5,22,23,53)
GPA[5,] = c(1,3,11,12,27)
GPA[6,] = c(23,35,78,64,200)

ExpGPA <- matrix(nrow = 6, ncol=5)

for(i in 1:5){
  ExpGPA[1:5,i] = GPA[6,i]*GPA[1:5,5]/200
}

for(i in 1:5){
  ExpGPA[6,i] = sum(ExpGPA[1:5,i])
}

DiffGPA = (GPA-ExpGPA)^2/ExpGPA
ChiVal = sum(DiffGPA)