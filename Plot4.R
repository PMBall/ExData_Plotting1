db<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")
dbs<-subset(db,as.Date(Date, "%d/%m/%Y")==as.Date("2007-02-01") |as.Date(Date, "%d/%m/%Y")==as.Date("2007-02-02"))
par(mfrow=c(2,2))
plot(strptime(paste(dbs[,1],dbs[,2]), format= "%d/%m/%Y %H:%M:%S"),dbs$Global_active_power,type="l",xlab="",ylab = "Global Active Power")

plot(strptime(paste(dbs[,1],dbs[,2]), format= "%d/%m/%Y %H:%M:%S"),dbs$Voltage,type="l",xlab="datetime",ylab = "Voltage")

plot(strptime(paste(dbs[,1],dbs[,2]), format= "%d/%m/%Y %H:%M:%S"),dbs$Sub_metering_1,type="l",xlab="",ylab = "Energy sub metering")
lines(strptime(paste(dbs[,1],dbs[,2]), format= "%d/%m/%Y %H:%M:%S"),dbs$Sub_metering_2,col="red")
lines(strptime(paste(dbs[,1],dbs[,2]), format= "%d/%m/%Y %H:%M:%S"),dbs$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=c(2,2,2),bty = "n",cex = 0.7)

plot(strptime(paste(dbs[,1],dbs[,2]), format= "%d/%m/%Y %H:%M:%S"),dbs$Global_reactive_power,type="l",xlab="datetime",ylab = "Global_reactive_power")

dev.copy(png,filename = "Plot4.png", width = 480, height = 480, units = "px")
dev.off()