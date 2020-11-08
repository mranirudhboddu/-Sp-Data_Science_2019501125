getwd()

setwd("D:/Courses/2nd Year/Final exam/Exam/5")

liver=read.csv("Liver_data.csv",header = FALSE,col.names = c("mcv", "alkphos", "sgpt", "sgot", "gammagt", "drinks","selector") )

str(liver)

liver$selector <-as.factor(liver$selector)

liver$drinks <- cut(liver$drinks, breaks = c(0, 5,10,15,20), 
                    labels = c('C1', 'C2', "C3", 'C4'), right = FALSE)

liver <- na.omit(liver)

t=subset(liver,liver$selector == 1)

str(t)

test=subset(liver,liver$selector==2)

str(test)

dim(t)
dim(test)

x_t <- subset(t,select = -c(selector,drinks))
x_test <- subset(test,select = -c(selector,drinks))

library(class)
y_t=t[,6,drop=TRUE]
y_test=test[,6,drop=TRUE]

length(t)
length(test)

library(e1071)

fit=svm(x_t,y_t)
1-sum(y_t == predict(fit,x_t))/length(y_t)

fit=svm(x_test,y_test)
1-sum(y_test == predict(fit,x_test))/length(y_test)
