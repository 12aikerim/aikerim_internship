daily_A<-ts(Q1_2016$`Workload of A`,frequency = 45.5)
plot(daily_A)

hwA<-HoltWinters(daily_A)
plot(hwA)
