dataFile <- "./data/household_power_consumption.txt"
data <-read.table(dataFile, header=TRUE, sep=";",stringsAsFactors = FALSE, dec = ".")
reqdata <-data[data$Date %in% c("1/2/2007","2/2/2007"),] 

datetime <- strptime(paste(reqdata$Date, reqdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
activePower<-as.numeric(reqdata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, activePower, xlab="",ylab="Global Active Power (kilowatts)", type = "l")
dev.off()
