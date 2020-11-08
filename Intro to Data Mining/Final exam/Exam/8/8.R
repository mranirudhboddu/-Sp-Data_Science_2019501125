getwd()
setwd("D:/Courses/2nd Year/Final exam/Exam/8")

BSI=read.csv("BSE_Sensex_Index.csv",header = TRUE)

library(dplyr)


new_BSI=mutate(BSI,sgr=lead((lag(Close)- Close) / Close))

#last row in sgr column
lc=nrow(new_BSI)
a=new_BSI$sgr[lc-1]
b=new_BSI$sgr[lc-2]
c=new_BSI$sgr[lc-3]
new_BSI$sgr[lc]=mean(a,b,c)

sgrmean <- mean(new_BSI$sgr,na.rm = TRUE)
sgrsd <- mean(new_BSI$sgr,na.rm = TRUE)
z<-(new_BSI[,8]-sgrmean)/sgrsd
sort(z)
new_BSI$zscores <- z

#Dates of the outliers
dates<-subset(new_BSI[,1],new_BSI[,"zscores"]>=3.0 | new_BSI[,"zscores"]<=-3.0)
View(dates)
