dat<-read.table("household_power_consumption.txt",sep=";",nrows=2880,skip=66637)

names(dat)<-c("Date","Time","Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity","Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
dat$Date <- strptime(paste(dat$Date,dat$Time), "%d/%m/%Y %H:%M:%S")
par(mar=c(3,4,4,2))

plot(dat$Date,dat$Global_active_power,type="l",main = NULL,xlab=NULL, ylab = "Global Active Power (kilowatts)")

dev.copy(png,file="Plot2.png")
dev.off()