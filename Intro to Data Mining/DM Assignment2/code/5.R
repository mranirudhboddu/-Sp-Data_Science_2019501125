#5

#5a
data <- read.csv("twomillion.csv",header = FALSE)
s<-sample(seq(1,length(data[,1])),10000,replace=T)

#5b
my_sample <- data[s,1]
mean(my_sample)
max(my_sample)
var(my_sample)
quantile(my_sample,.25)



#5c
mean(data[,1])
max(data[,1])
var(data[,1])
quantile((data[,1]),.25)

#difference
abs(mean(my_sample)-mean(data[,1]))

abs(max(my_sample)-max(data[,1]))

abs(var(my_sample)-var(data[,1]))
abs(quantile(my_sample,.25)-quantile((data[,1]),.25))


#5d
write.csv(my_sample,"my_sample.csv")

#5e
str(my_sample)
