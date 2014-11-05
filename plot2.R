# Requirement: set the current working directory to this folder directory.
#
# setProject checks whether the necessary files are available in working directory, if not download them.
# readData reads subset of the data from 2007-02-01 to 2007-02-02. 
source("setProject.R")
source("readData.R")

#Plot2.png
png(file="plot2.png",width=480,height=480, bg="transparent")
plot(dat$DateTime, dat$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()