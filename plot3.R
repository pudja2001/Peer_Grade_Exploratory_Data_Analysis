library(lubridate)

# Read the txt file
power <- read.table("D:/PUDJA/PROGRAMMING/Data Science coursera (J.Hopkins University)/Course/4. Exploratory Data Analysis/Week 1/Peer_Grade Assignment/household_power_consumption.txt", header=TRUE, na.strings="?", sep=";")

# make New date time column and Reformat date column to date
power$DateTime <- paste(power$Date, power$Time)
power$DateTime <- dmy_hms(power$DateTime)
subset_power <- subset(power, DateTime >= "2007-02-01 07:00:00" & DateTime< "2007-02-03 07:00:00")

# Making Plot3
with(subset_power,{
  # Sub_metering_1
  plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(DateTime, Sub_metering_2, type="l", col="red")
  lines(DateTime, Sub_metering_3, type="l", col="blue")
  legend("topright", lty=c(1, 1, 1), col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})

# Load to PNG file
dev.copy(png, file="C:/Users/Pudja Gemilang/Desktop/Peer_Grade_Exploratory_Data_Analysis/plot3.png")
dev.off()