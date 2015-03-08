##plot3
dat = read.delim("household_power_consumption.txt",header=T,sep=";",na.strings="?",stringsAsFactors=F)
dat[,10] = dmy(dat[,1])
#subset on relevant dates
febDat = dat[dat$V10 == dmy("01-02-2007") | dat$V10 == dmy("02-02-2007"),] 

#parse time and date
febDat[,10]  = dmy_hms(paste(febDat$Dat,febDat$Time))


png(file="plot3.png",width=480,height=480)


plot(febDat$Sub_metering_1,type="l",ylab="Energy sub metering")
lines(febDat$Sub_metering_2,col=2)
lines(febDat$Sub_metering_3,col=4)
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c(1,2,4),lwd="1")

dev.off()


