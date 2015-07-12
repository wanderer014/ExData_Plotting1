data<-read.csv("household_power_consumption.txt", sep=";", header=T, na.strings="?")
power<-data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

power$time2<-strptime(paste(power$Date,power$Time), format="%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(power$time2, power$Global_active_power, type="l", xlab="", ylab="Global Active Power (killowatts)")
dev.off()