getwd()

setwd("D:/Courses/2nd Year/Final exam/Exam/4")

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

fit1=knn(x_t,x_t,y_t,k=1)
1-sum(y_test == fit1)/length(y_test)

fit2=knn(x_t,x_t,y_t,k=2)
1-sum(y_test == fit2)/length(y_test)

fit3=knn(x_t,x_t,y_t,k=3)
1-sum(y_test == fit3)/length(y_test)

plot(fit1)
plot(fit2)
plot(fit3)
