# Loading the whole dataset into R
data<-read.table("/.../Course_Project1/household_power_consumption.txt",header=TRUE,sep=";",dec=".")

# Subsetting the data into the date slot
dataset<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
date_time<-strptime(paste(dataset$Date,dataset$Time,sep = " "),"%d/%m/%Y %H:%M:%S")

dataset$Sub_metering_1<-as.character(dataset$Sub_metering_1)
dataset$Sub_metering_1<-as.numeric(dataset$Sub_metering_1)

dataset$Sub_metering_2<-as.character(dataset$Sub_metering_2)
dataset$Sub_metering_2<-as.numeric(dataset$Sub_metering_2)

dataset$Sub_metering_3<-as.character(dataset$Sub_metering_3)
dataset$Sub_metering_3<-as.numeric(dataset$Sub_metering_3)

# Saving plot into png-file
png("Plot3.png",width=480,height = 480)
plot(date_time,dataset$Sub_metering_1,col="black",type="l",xlab="",ylab="Energy sub metering")
lines(date_time,dataset$Sub_metering_2,col="red",type="l")
lines(date_time,dataset$Sub_metering_3,col="blue",type="l")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.off()
