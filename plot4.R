## Creates four plots on the same screen
# global active power histogram
# voltage plot
# sub meter energy usage
# global reactive power

# load the data before plotting using
# source("load_data.R")


png(file = "plot4.png")

par(mfrow = c(2,2))

with(data, {
    
    # top left plot
    plot(x = date_time, y = Global_active_power, 
         type = "l",
         ylab = "Global Active Power",
         xlab = "")    
    
    # top right
    plot(x = date_time, y = Voltage,
         type = "l",
         ylab = "Voltage",
         xlab = "datetime")
    
    # bottom left
    plot(x = date_time, y = Sub_metering_1, 
         type = "n",
         ylab = "Energy sub metering",
         xlab = "")
    
    lines(date_time, Sub_metering_1, col = "black")
    lines(date_time, Sub_metering_2, col = "red")
    lines(date_time, Sub_metering_3, col = "blue")
    legend("topright", lty = 1, col = c("black", "red", "blue"), 
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           bty = "n")
    
    
    # bottom right
    plot(x = date_time, y = Global_reactive_power,
         type = "l",
         xlab = "datetime")
    
})

dev.off()
