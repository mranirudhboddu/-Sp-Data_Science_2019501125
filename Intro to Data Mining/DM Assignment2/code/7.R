#7

#7a

ca_data<-read.csv("CA_house_prices.csv", header=FALSE)
oh_data<-read.csv("OH_house_prices.csv", header = FALSE)

#7b

boxplot(ca_data[,1], oh_data[,1], main="Anirudh's Box Plots",
        col="red",
        names=c("CA_Houses", "OH_Houses"),
        ylab="Prices(in thousands)")
#7b
hist(ca_data[,1]*1000,breaks=seq(0,3500000,by=500000),col="green",xlab="Prices",ylab="Frequency",main="Anirudh Boddu")

#7c
plot(ecdf(ca_data[,1]),verticals = TRUE,do.p=FALSE,main ="Anirudh Boddu",xlab="Prices(in thousands)",ylabs="Frequency")

plot(ecdf(ca_data[,1]), verticals=TRUE,do.p = FALSE, main = "Anirudh Boddu",xlab="Prices(in thousands)",ylab="Frequency")
lines(ecdf(oh_data[,1]),verticals= TRUE,do.p = FALSE,col.h="red",col.v="green",lwd=4)


plot(ecdf(ca_data[,1]),verticals = TRUE,do.p=FALSE,main ="Anirudh Boddu",xlab="Prices(in thousands)",ylabs="Frequency")
lines(ecdf(oh_data[,1]),verticals = TRUE,do.p=FALSE,col.h="red",col.v="green",lwd=4)
legend(2100,.6,c("CA Houses","OH Houses"),col=c("black","green"),lwd=c(1,4))
