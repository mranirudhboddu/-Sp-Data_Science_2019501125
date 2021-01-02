
#8

#8a
football<-read.csv("football.csv",header=TRUE)

plot(football[,2],football[,3],xlim=c(0,12),ylim=c(0,12),pch=15,col="blue",xlab="2003 Wins",ylab="2004 Wins",main="Football Wins")

#8c
cor(football[,2],football[,3])

#8d
cor(football[,2],football[,3]+10)

#8e
cor(football[,2],football[,3]*2)

#8f
