source("plotcomm.R")

plot4 <- function() {
  hpc.data <- load.hpc.data() # See plotcomm.R
  png(filename="plot4.png")
  
  par(mfrow=c(2,2))
  
  #1
  plot(hpc.data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xaxt="n", xlab="")
  axis(1, at=c(1, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
  
  #2
  plot(hpc.data$Voltage, type="l", ylab="Voltage", xaxt="n", xlab="datetime")
  axis(1, at=c(1, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
  
  #3
  plot(hpc.data$Sub_metering_1, type="l", ylab="Energy sub metering", xaxt="n", xlab="")
  lines(hpc.data$Sub_metering_2, col="red")
  lines(hpc.data$Sub_metering_3, col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         col=c("black", "red", "blue"), lty="solid")
  axis(1, at=c(1, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
  
  #4
  plot(hpc.data$Global_reactive_power, type="l", ylab="Global_reactive_power", xaxt="n", xlab="datetime")
  axis(1, at=c(1, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
  
  dev.off()
}