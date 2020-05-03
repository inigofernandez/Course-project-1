
dataplot2 <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(dataplot2) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subdataplot2 <- subset(dataplot2,dataplot2$Date=="1/2/2007" | dataplot2$Date =="2/2/2007")

timedata <- strptime(paste(subdataplot2$Date, subdataplot2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(as.character(subdataplot2$Global_active_power))
png("plot2.png", width=480, height=480)
plot(timedata, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()