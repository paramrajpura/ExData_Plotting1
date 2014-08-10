dat<-read.table("household_power_consumption.txt",sep=";",nrows=2880,skip=66637)

names(dat)<-c("Date","Time","Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity","Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
dat$Date <- strptime(paste(dat$Date,dat$Time), "%d/%m/%Y %H:%M:%S")


png(filename="Plot3.png")
par(mar=c(3,4,4,2))
plot(dat$Date,dat$Sub_metering_1,type="l",main = NULL,xlab=NULL, ylab = "Energy sub metering")
points(dat$Date,dat$Sub_metering_2,type="l",col="red")
points(dat$Date,dat$Sub_metering_3,type="l",col="blue")
legend("topright",c(legend="Sub_metering_1",legend="Sub_metering_2",legend="Sub_metering_3"),pch="_",col=c("black","red","blue"))
dev.off()