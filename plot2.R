source("plotcomm.R")

plot2 <- function() {
  hpc.data <- load.hpc.data() # See plotcomm.R
  png(filename="plot2.png")
  plot(hpc.data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xaxt="n", xlab="")
  axis(1, at=c(1, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
  dev.off()
}