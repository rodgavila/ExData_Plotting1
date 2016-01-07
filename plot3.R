source("plotcomm.R")

plot3 <- function() {
  hpc.data <- load.hpc.data() # See plotcomm.R
  png(filename="plot3.png")
  plot(hpc.data$DateTime, hpc.data$Sub_metering_1, type="l", ylab="Energy sub metering")
  lines(hpc.data$DateTime, hpc.data$Sub_metering_2, col="red")
  lines(hpc.data$DateTime, hpc.data$Sub_metering_3, col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         col=c("black", "red", "blue"), lty="solid")
  dev.off()
}