#working directory
getwd()

#changing directory

setwd("D:/Courses/2nd Year/Final exam/Exam/2")

apr_data=read.csv("Apriori_dataset.csv",TRUE)

apr_data$TID <- NULL
library(arules)

t= read.transactions("ItemList.csv",sep = ",",rm.duplicates = TRUE)

r=apriori(t,parameter = list(sup = 0.05,conf =0.5, target="rules"))

inspect(sort(r,by = 'lift')[1:15])
itemFrequencyPlot(t,topN=5)
