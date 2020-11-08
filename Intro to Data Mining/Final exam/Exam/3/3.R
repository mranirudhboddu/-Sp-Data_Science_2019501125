getwd()
setwd("D:/Courses/2nd Year/Final exam/Exam/3")

library(caret)
library(rpart.plot)
lens=read.csv("lenses_data.csv",header = FALSE,col.names = c("1", "2", "3", "4", "5", "Label"))
str(lens)
summary((lens))

x=lens[,1:4]
y=as.factor(lens$Label)

model=rpart(y~.,x,control = rpart.control(minsplit = 0, minbucket = 0, cp =-1, 
                                                    maxcompete = 0, maxsurrogate = 0, usesurrogate = 0, xval = 0,
                                                    maxdepth = 5))

plot(model)
text(model,)


rpart.plot(model)

sum(y == predict(model,x,type='class'))/length(y)
1-sum(y == predict(model,x,type='class'))/length(y)

model_new=rpart(y~.,x,control = rpart.control(minsplit=0,minbucket=0,cp=-1, maxcompete=0, maxsurrogate=0, usesurrogate=0, xval=0,maxdepth=7) )

plot(model_new)
text(model_new)


rpart.plot(model_new)

sum(y == predict(model_new,x,type='class'))/length(y)
1-sum(y == predict(model_new,x,type='class'))/length(y)

