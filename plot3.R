dataplot2 <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(dataplot2) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subdataplot2 <- subset(dataplot2,dataplot2$Date=="1/2/2007" | dataplot2$Date =="2/2/2007")

timedata <- strptime(paste(subdataplot2$Date, subdataplot2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

subMet1 <- as.numeric(subdataplot2$Sub_metering_1)
subMet2 <- as.numeric(subdataplot2$Sub_metering_2)
subMet3 <- as.numeric(subdataplot2$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(timedata, subMet1, type="l", ylab="Energy Submetering", xlab="")
lines(timedata, subMet2, type="l", col="red")
lines(timedata, subMet3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
