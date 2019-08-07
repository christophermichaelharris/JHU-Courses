exponential_regression <- function(x= c(1,2,3,4), y = c(1,2,4,8)){
  
  n = length(x)
  
  xsum = 0
  ysum = 0
  xy = 0
  xsq = 0
  
  for(i in 1:n){
    
    xsum = xsum + x[i]
    ysum = ysum + log(y[i])
    xy = xy + x[i]*log(y[i])
    xsq = xsq + x[i]^2
    
  }
  
  b = ((n*xy)-(xsum*ysum))/((n*xsq-xsum^2))
  a = (ysum - b*xsum) / n
  
a <<- a
b <<- b

y_pred = 0
y_pred = c(rep(0,n))
y_resid = 0
y_resid = c(rep(0,n))


for(j in 1:n){
  y_pred[j] = a * exp(b * x[j])
  y_resid[j] = y[j] - y_pred[j]
}

plot(x,y)
plot(x,y_pred)
 
}
  
