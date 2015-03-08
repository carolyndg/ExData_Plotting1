### CdG
### 5th March 2015

## Exploring Data
#ASsignment 1

## Loading the data

dat = read.delim("household_power_consumption.txt",header=T,sep=";",na.strings="?",stringsAsFactors=F)

#subset on relevant dates
library(lubridate)
dat[,1] = dmy(dat[,1])
febDat = dat[dat$Date == dmy("01-02-2007") | dat$Date == dmy("02-02-2007"),] 
dim(dat)
dim(febDat)

png(file="plot1.png",width=480,height=480)
hist(febDat$Global_active_power,col=2,ylab="Frequency",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()


