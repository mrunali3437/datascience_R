install.packages("gmodels")
library(gmodels)


install.packages('nycflights13')
library(nycflights13)
#Loads the data from package 'nycflights13'
flg<-nycflights13::flights
dep_delay<-flg$dep_delay
#to check NA values
is.na(dep_delay)
#Remove NA values
dep_delay1<-dep_delay[!is.na(dep_delay)]
#CI construction
ci(dep_delay1,confidence = 0.95)

arr_delay <- data$arr_delay
arr_delay <- flg$arr_delay
is.na(arr_delay)
arr_delay1 <- arr_delay[!is.na(arr_delay)]
ci(arr_delay1,confidence = 0.95)

ar_delay<-flg$arr_delay
is.na(flg$arr_delay)
ar_delay_withoutNA<-ar_delay[!is.na(ar_delay)]
ci(arr_delay1,confidence = 0.95)
