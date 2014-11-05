# Requirement: set the current working directory to this folder directory.
#
# setProject checks whether the necessary files are available in working directory, if not download them.
# readData reads subset of the data from 2007-02-01 to 2007-02-02. 
source("setProject.R")
source("readData.R")

#Plot1.png
png(file="plot1.png",width=480,height=480, bg="transparent")
hist(dat$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)", col="red")
dev.off()