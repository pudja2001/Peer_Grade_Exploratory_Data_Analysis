# Activate the library
library(lubridate)

# Read the txt file
power <- read.table("D:/PUDJA/PROGRAMMING/Data Science coursera (J.Hopkins University)/Course/4. Exploratory Data Analysis/Week 1/Peer_Grade Assignment/household_power_consumption.txt", header=TRUE, na.strings="?", sep=";")

# make New date time column and Reformat date column to date
power$DateTime <- paste(power$Date, power$Time)
power$DateTime <- dmy_hms(power$DateTime)
subset_power <- subset(power, DateTime >= "2007-02-01 07:00:00" & DateTime< "2007-02-03 07:00:00")

# Making Plot1
hist(subset_power$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")

# Load to PNG file
dev.copy(png, file="D:/PUDJA/PROGRAMMING/Data Science coursera (J.Hopkins University)/Course/4. Exploratory Data Analysis/Week 1/Peer_Grade Assignment/plot1.png")
dev.off()