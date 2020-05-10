install.packages("readr")
library(readr)
#one way to import a dataset of csv formata
mba <- read.csv("E://Excelr Data//Datasets//Datasets_BA 2//mba.csv")
View(mba)

#2nd way to import a dataset
getwd()
setwd("E://Excelr Data//Datasets//Datasets_BA 2")
iris <- read.csv("IRIS.csv")

#3rd way is importing from Environment window

#how to import excel data into Rstudio
library(readxl)
xl_data <- read_excel("E://Excelr Data//Datasets//Datasets_BA 2//final1.xlsx")
View(xl_data) 
world_data <- read_excel("World indicators.xlsx")
View(world_data)

#How to import a text data
text_data <- read.table("canautoins.txt", header = T)
View(text_data)

amazon_data <- readLines("iphone.txt")


#First business moment
#mean, median, mode
mean(mba$gmat)
median(mba$gmat)

#2nd Business moment
#var #std #range
var(iris$Petal.Length)
View(iris)
attach(iris)
sd(Petal.Length)
range(Petal.Length)

#3rd business moment
library(moments)
skewness(Sepal.Width)
hist(mba$gmat)
hist(Sepal.Width)
barplot(Sepal.Length)
boxplot(Cars, sub= "BOXPLOT FOR CARS DATA", col = "red")
plot(mba$workex,mba$gmat) #plot(x,y)

#Basic info about dataframe
str(iris) # strcture
table(iris$Species) # To count the Levels
sum(is.na()) #get sum of na values
na.omit() #remove na values