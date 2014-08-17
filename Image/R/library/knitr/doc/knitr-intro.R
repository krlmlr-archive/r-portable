## ----show-off------------------------------------------------------------
rnorm(5)
df=data.frame(y=rnorm(100), x=1:100)
summary(lm(y~x, data=df))

