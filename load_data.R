## Loads data of interest for this assignment

# Read the source file from 
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
# extract the zip file into the R script directory
raw_data <- read.csv(file = "household_power_consumption.txt", sep = ";", stringsAsFactors=F)

# converts the date variables into a Date object variables
raw_data$Date <- as.Date(raw_data$Date, format = "%d/%m/%Y")

# only use data from the dates 2007-02-01 and 2007-02-02
start_date <- as.Date("2007-02-01")
end_date <- as.Date("2007-02-02")

data <- raw_data[raw_data$Date >= start_date & raw_data$Date <= end_date,]

# create date time variable
date_time <- as.POSIXct(paste(data$Date, data$Time, sep=" "))

# convert variables from character to numeric 
data$Global_active_power <- as.numeric(data$Global_active_power)
data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
data$Voltage <- as.numeric(data$Voltage)
data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)