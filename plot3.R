elec<-read.csv("household_power_consumption.txt",sep=";",na.strings="?")
subset<-elec[elec$Date=="1/2/2007"|elec$Date=="2/2/2007",]
subset$DateTime=paste(subset$Date,subset$Time)
subset$DateTime<-strptime(subset$DateTime,"%d/%m/%Y %H:%M:%S")
png("plot3.png")
plot(subset$DateTime,subset$Sub_metering_1,'l',xlab="Time",ylab="Energy sub metering")
lines(subset$DateTime,subset$Sub_metering_2,'l',col="red")
lines(subset$DateTime,subset$Sub_metering_3,'l',col="blue")
legend(1,95,legend=c("submetering-1","submetering-2","submetering-3"),col=c("black","red","blue"))
dev.off()