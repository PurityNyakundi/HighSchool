d1=read.csv("student-mat.csv",header=TRUE)
d2=read.csv("student-por.csv",header=TRUE)
head(d2)
d3=merge(d1,d2,by=c("school","sex","age","address","famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","nursery","internet"))
print(nrow(d3)) # 382 students
head(d3)
anyDuplicated(colnames(d3))
anyDuplicated(d3)
count(colnames(d3))
dim(d3)
library(tidyverse)
glimpse(d3)
str(d3)
#using data to predict a high school student perfomance
model.matrix(~.,d3)
table(d3$guardian)
anyDuplicated(d3$school)
d3$guardian = distinct(d3$guardian)
dummie<-dumm(~.,d3)
library(caret)
dummies <- dummyVars( ~ ., data = d3)
head(predict(dummies, newdata = etitanic))
p<-d3[14]
colnames(d3[14])<-"gr"
colnames(d3)
glimpse(d3)
d3[14]
d3 = select(d3, -14)
anyDuplicated(colnames(d3))
