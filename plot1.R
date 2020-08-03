# Coursera Exploratory Data Analysis Course
# Week 1 - Course Project 1 - Plot 1

# Loading and subsetting the data
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Structuring "subSetData" using the "str" function
globalActivePower <- as.numeric(subSetData$Global_active_power)

# Constructing Plot 1
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()