#multiple linear regression
#before cleaning

forest=read.csv(file="Data/forestfires.csv")

#visualising data
head(forest,2)

#taking only the useful columns
library(dplyr)
useful=forest%>%select(FFMC:area)
head(useful,2)
corrmatrix=round(cor(useful),digits=2)
corrmatrix

#to find: area with multiple linear regression
area.lm=lm(area~temp+RH,data=forest) #multiple linear regression
area.lm

summary(area.lm)

plot(useful$RH,useful$temp,xlab="RH:relative humidity",ylab="Temperature")
library(car)
avPlots(area.lm)

