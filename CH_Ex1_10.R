MissileCoord <- matrix(nrow=1000,ncol=3)
MissileCoord[,1] = rnorm(1000,mean=0,sd=175^2)
MissileCoord[,2] = rnorm(1000,mean=0,sd=150^2)

for(i in 1:1000){
  if(MissileCoord[i,1]/(400^2) + MissileCoord[i,2]/(200^2) <= 1){
    MissileCoord[i,3] = 1
  }else{
    MissileCoord[i,3] = 0
  }
  
  
}

print(sum(MissileCoord[,3])/1000)