library(lubridate)

# Read the txt file
power <- read.table("D:/PUDJA/PROGRAMMING/Data Science coursera (J.Hopkins University)/Course/4. Exploratory Data Analysis/Week 1/Peer_Grade Assignment/household_power_consumption.txt", header=TRUE, na.strings="?", sep=";")

# make New date time column and Reformat date column to date
power$DateTime <- paste(power$Date, power$Time)
power$DateTime <- dmy_hms(power$DateTime)
subset_power <- subset(power, DateTime >= "2007-02-01 07:00:00" & DateTime< "2007-02-03 07:00:00")

# Making Plot2
with(subset_power, plot(DateTime, Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)"))
lines(subset_power$DateTime, subset_power$Global_active_power, type="l")

# Load to PNG file
dev.copy(png, file="C:/Users/Pudja Gemilang/Desktop/Peer_Grade_Exploratory_Data_Analysis/plot2.png")
dev.off()