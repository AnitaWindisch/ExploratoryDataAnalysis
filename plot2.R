# Loading the whole dataset into R
data<-read.table("/.../Course_Project1/household_power_consumption.txt",header=TRUE,sep=";",dec=".")

# Subsetting the data
dataset<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

dataset$Global_active_power<-as.character(dataset$Global_active_power)
dataset$Global_active_power<-as.numeric(dataset$Global_active_power)

date_time<-strptime(paste(dataset$Date,dataset$Time,sep = " "),"%d/%m/%Y %H:%M:%S")

# Saving plot into png-file
png("Plot2.png",width=480,height = 480)
plot(date_time,dataset$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()

