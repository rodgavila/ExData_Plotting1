load.hpc.data <- function() {
  ensure.data.file()
  
  header <- read.table(unz("hpc.zip", "household_power_consumption.txt"), 
                       nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
  data <- read.table(unz("hpc.zip", "household_power_consumption.txt"), 
                     skip=66637, nrows=2*24*60, sep=";", na.strings = "?", as.is = c(1,2))
  
  colnames(data) <- unlist(header)
  
  data$DateTime <- paste(data$Date, data$Time)
  data$DateTime <- strptime(data$DateTime, format="%d/%m/%Y %H:%M:%S")
  data
}

ensure.data.file <- function() {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  localFolder = "./data"
  localFileName <- "hpc.zip"
  localFullPath <- paste(localFolder, "/", localFileName, sep="")
  
  if (!file.exists(localFolder)) {dir.create(localFolder)}
  
  if (!file.exists(localFileName)) {
    download.file(fileUrl, destfile=localFileName, method="curl")
  }
}