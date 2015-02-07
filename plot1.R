## Creates histogram of Global Active Power

# load the data before plotting using
# source("load_data.R")

png(file = "plot1.png")
with(data, hist(Global_active_power, 
                main = "Global Active Power", 
                col = "red",
                xlab = "Global Active Power (kilowatts)"))
dev.off()
