## Creates a plot of Global Active Power

library(data.table)

# load the data before plotting using
# source("load_data.R")

png(file = "plot2.png")
with(data, plot(x = date_time, y = Global_active_power, 
                type = "l",
                ylab = "Global Active Power (kilowatts)",
                xlab = ""))
dev.off()
