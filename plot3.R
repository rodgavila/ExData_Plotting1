source("plotcomm.R")

plot3 <- function() {
  hpc.data <- load.hpc.data() # See plotcomm.R
  png(filename="plot3.png")
  plot(hpc.data$Sub_metering_1, type="l", ylab="Energy sub metering", xaxt="n", xlab="")
  lines(hpc.data$Sub_metering_2, col="red")
  lines(hpc.data$Sub_metering_3, col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         col=c("black", "red", "blue"), lty="solid")
  axis(1, at=c(1, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
  dev.off()
}