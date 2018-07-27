# Loading the whole dataset into R
data<-read.table("/.../Course_Project1/household_power_consumption.txt",header=TRUE,sep=";",dec=".")

# Subsetting the data
dataset<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
dataset$Global_active_power<-as.character(dataset$Global_active_power)
dataset$Global_active_power<-as.numeric(dataset$Global_active_power)

# Saving plot into png-file
png("Plot1.png",width=480,height = 480)
hist(dataset$Global_active_power,main="Global Active Power",xlab = "Global Active Power (kilowatts)",ylab="Frequency",col="red")
dev.off()
