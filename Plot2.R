db<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")
dbs<-subset(db,as.Date(Date, "%d/%m/%Y")==as.Date("2007-02-01") |as.Date(Date, "%d/%m/%Y")==as.Date("2007-02-02"))
par(mfrow=c(1,1))
plot(strptime(paste(dbs[,1],dbs[,2]), format= "%d/%m/%Y %H:%M:%S"),dbs$Global_active_power,type="l",xlab="",ylab = "Global Active Power (kilowatts)")

dev.copy(png,filename = "Plot2.png", width = 480, height = 480, units = "px")
dev.off()