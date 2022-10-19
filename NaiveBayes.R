#NaiveBayes
library(naivebayes)
library(dplyr)
library(ggplot2)
library(psych)
library(caret)
library(e1071)

forest=read.csv(file="Data/forestfires.csv")
useful=forest%>%select(FFMC:area)
head(useful,2)

pairs.panels(useful)
plot(useful$area)

#classifying, making a categorical area var
area.cat=ifelse(useful$area<5,"low",ifelse(useful$area<100,"medium","high"))
head(area.cat,5)
useful.areacat=data.frame(useful,area.cat)
head(useful.areacat)

#splitting data into training and validation
set.seed(2020)

useful.areacat.size=nrow(useful.areacat)
trainingsize=round(useful.areacat.size*0.7)
validationsize=useful.areacat.size-trainingsize

training.idx=sample(seq(1:useful.areacat.size),trainingsize)
useful.training=useful.areacat[training.idx,]
useful.validation=useful.areacat[-training.idx,]

#implementing naive bayes
classf=naiveBayes(subset(useful.training,select=-area.cat),useful.training$area.cat,laplace=1)
classf
preds=predict(classf,subset(useful.validation,select=-area.cat))
table(preds,useful.validation$area.cat)
round(sum(preds==useful.validation$area.cat,na.rm=TRUE)/length(useful.validation$area.cat),digits=2)
#recieved an accuracy of 83% on uncleaned data, might be due to the classification of area into high,medium,low,
#needs revision during cleaned data processing