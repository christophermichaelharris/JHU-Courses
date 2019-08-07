x = c(0,5,10,15,20,25,30,35,40)
y = c(19.2,33.1,69.2,123.6,190.6,253.1,339.8,415.1,529.9)

n = length(x)

xy_prod = 0
xsum = 0
ysum = 0
xsq = 0

for(i in 1:n){
  xy_prod = xy_prod + x[i]*y[i]
  xsum = xsum + x[i]
  ysum = ysum + y[i]
  xsq = xsq + x[i]^2
}

b = ((n * xy_prod) - (xsum * ysum))/((n * xsq) - xsum^2)
a = ((ysum - b * xsum)/n)

print(a)
print(b)

y_pred = c(rep(0,n))
y_resid = c(rep(0,n))

for(j in 1:n){
  y_pred[j] = a + b*x[j]
  y_resid[j] = y[j] - y_pred[j]
  
}