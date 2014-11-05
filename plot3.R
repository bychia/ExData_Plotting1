# Requirement: set the current working directory to this folder directory.
#
# setProject checks whether the necessary files are available in working directory, if not download them.
# readData reads subset of the data from 2007-02-01 to 2007-02-02. 
source("setProject.R")
source("readData.R")

#Plot3.png
png(file="plot3.png",width=480,height=480, bg="transparent")
plot(dat$DateTime, dat$Sub_metering_1, type="l", xlab="", ylab="Energy Sub metering")
lines(dat$DateTime, dat$Sub_metering_2, type="l", col="red")
lines(dat$DateTime, dat$Sub_metering_3, type="l", col="blue")
legend(x="topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black", "red", "blue"), lty = 1)
dev.off()