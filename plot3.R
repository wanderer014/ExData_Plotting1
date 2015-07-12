data<-read.csv("household_power_consumption.txt", sep=";", header=T, na.strings="?")
energy<-data[which(data$Date=="1/2/2007"|data$Date=="2/2/2007"), ]
energy$time2<-strptime(paste(energy$Date, energy$Time), format="%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(x=energy$time2, y=energy$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
lines(x=energy$time2, y=energy$Sub_metering_2, col="Red")
lines(x=energy$time2, y=energy$Sub_metering_3, col="Blue")
legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1, 1, 1), lwd=c(2, 2, 2), col=c("black", "red", "blue"))
dev.off()