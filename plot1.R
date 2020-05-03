


##data<-tbl_df(data.frame(read.csv2(file, header = TRUE, sep = ";")))
##Code for the first plot 1

##Extractig the data
dataplot1 <- read.table("household_power_consumption.txt",skip=1,sep=";")
#Renaming the columns for the datatable
names(dataplot1) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
#Subsetting the data acording to the dates wanted 
subdataplot1 <- subset(dataplot1,power$Date=="1/2/2007" | power$Date =="2/2/2007")
#Opening png and runing the plot
png("plot1.png", width=480, height=480)
hist(as.numeric(as.character(subdataplot1$Global_active_power)), col = "red", main = "Global active power")
dev.off()