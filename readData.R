# Read in the power consumption data set
# First two columns will be converted to date/time in next step
# "?" is the NA characted in this set, so designate it as such
dat <- read.csv("household_power_consumption.txt",
                 sep=";",
                 colClasses=c(rep("character",2),rep("numeric",7)),
                 na.strings="?")

# Combine the date and time columns into one timestapm
dat$DateTime <- strptime(paste(dat$Date,dat$Time),
                           format="%d/%m/%Y %H:%M:%S")

# Subset the data to only look at desired time span
# Here we'll be working with data from 2007-02-01 to 2007-02-02.
dat <- subset(dat,as.Date(dat$DateTime) >= "2007-02-01" & as.Date(dat$DateTime) < "2007-02-03")
