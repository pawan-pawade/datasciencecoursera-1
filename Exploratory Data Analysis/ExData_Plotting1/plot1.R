data <- read.table("../household_power_consumption.txt", sep=";",skip=66637,nrows=2881)
names(data) <- unlist(read.table("../household_power_consumption.txt", sep=";",nrows=1))
png(filename='plot1.png')
par(bg=NA)
hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power", breaks=12)
dev.off()