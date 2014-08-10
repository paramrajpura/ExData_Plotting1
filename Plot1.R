

dat<-read.table("household_power_consumption.txt",sep=";",nrows=2880,skip=66637)

names(dat)<-c("Date","Time","Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity","Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

par(mar=c(4,4,4,2))

hist(dat$Global_active_power,col="red" ,main = "Global Active Power", xlab = "Global Active Power (kilowatts)",ylim=c(0,1200))

dev.copy(png,file="Plot1.png")
dev.off()
