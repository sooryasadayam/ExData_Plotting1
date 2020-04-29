elec<-read.csv("household_power_consumption.txt",sep=";",na.strings="?")
subset<-elec[elec$Date=="1/2/2007"|elec$Date=="2/2/2007",]
Global_active_power=as.numeric(subset$Global_active_power)
png("plot1.png")
hist(Global_active_power,col="red")
dev.off()
