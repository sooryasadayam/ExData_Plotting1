elec<-read.csv("household_power_consumption.txt",sep=";",na.strings="?")
subset<-elec[elec$Date=="1/2/2007"|elec$Date=="2/2/2007",]
subset$DateTime=paste(subset$Date,subset$Time)
subset$DateTime<-strptime(subset$DateTime,"%d/%m/%Y %H:%M:%S")
png("plot2.png")
plot(subset$DateTime,subset$Global_active_power,'l',xlab="Time",ylab="Global Active Power",main="Global Active Power")
dev.off()
