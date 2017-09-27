

df<-historical_dynamics[1:15,]

supply<-ts(df$`Volume of Supply`,start=c(2014),frequency = 6)
plot(supply)

hw<-HoltWinters(supply)
plot(hw)

prediction<-predict(hw,n.ahead = 6, prediction.interval = F, level= 0.95)
plot(hw,prediction)
