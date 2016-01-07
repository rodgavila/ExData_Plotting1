source("plotcomm.R")

plot1 <- function() {
  hpc.data <- load.hpc.data() # See plotcomm.R
  png(filename="plot1.png")
  hist(hpc.data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
  dev.off()
}