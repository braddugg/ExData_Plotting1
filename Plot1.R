file1 <- "household_power_consumption.txt"
data1 <- read.table(file1, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData$Global_active_power)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
