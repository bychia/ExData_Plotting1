# Requirement: set the current working directory to this folder directory.
#
# setProject checks whether the necessary files are available in working directory, if not download them.
# readData reads subset of the data from 2007-02-01 to 2007-02-02. 
source("setProject.R")
source("readData.R")

#Plot4.png
png(file="plot4.png",width=480,height=480, bg="transparent")
par(mfcol = c(2, 2), mar = c(5, 4, 4, 2))
with(dat, { 
  plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power")
  plot(DateTime,  Sub_metering_1, type="l", xlab="", ylab="Energy Sub metering")
  lines(DateTime, Sub_metering_2, type="l", col="red")
  lines(DateTime, Sub_metering_3, type="l", col="blue")
  legend(x="topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, box.lwd=0, bty = "n")  
  plot(DateTime,  Voltage, type="l", xlab="datetime", ylab="Voltage")
  plot(DateTime,  Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
})
dev.off()