source("plotcomm.R")

plot4 <- function() {
  hpc.data <- load.hpc.data() # See plotcomm.R
  png(filename="plot4.png")
  
  par(mfrow=c(2,2))
  
  #1
  plot(hpc.data$DateTime, hpc.data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)")
  
  #2
  plot(hpc.data$DateTime, hpc.data$Voltage, type="l", ylab="Voltage", xlab="datetime")
  
  #3
  plot(hpc.data$DateTime, hpc.data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
  lines(hpc.data$DateTime, hpc.data$Sub_metering_2, col="red")
  lines(hpc.data$DateTime, hpc.data$Sub_metering_3, col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         col=c("black", "red", "blue"), lty="solid")
  
  #4
  plot(hpc.data$DateTime, hpc.data$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")

  dev.off()
}