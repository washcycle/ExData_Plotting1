## Creates a plot sub-meters

library(data.table)

# load the data before plotting using
# source("load_data.R")

png(file = "plot3.png")

with(data, {
    plot(x = date_time, y = Sub_metering_1, 
         type = "n",
         ylab = "Energy sub metering",
         xlab = "")
    
    lines(date_time, Sub_metering_1, col = "black")
    lines(date_time, Sub_metering_2, col = "red")
    lines(date_time, Sub_metering_3, col = "blue")
    
    legend("topright", lty = 1, col = c("black", "red", "blue"), 
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})

dev.off()
