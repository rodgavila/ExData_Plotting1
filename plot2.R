source("plotcomm.R")

plot2 <- function() {
  hpc.data <- load.hpc.data() # See plotcomm.R
  png(filename="plot2.png")
  plot(hpc.data$DateTime, hpc.data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
  dev.off()
}