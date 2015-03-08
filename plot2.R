##plot 2
dat = read.delim("household_power_consumption.txt",header=T,sep=";",na.strings="?",stringsAsFactors=F)
dat[,10] = dmy(dat[,1])
#subset on relevant dates
febDat = dat[dat$V10 == dmy("01-02-2007") | dat$V10 == dmy("02-02-2007"),] 

#parse time and date
febDat[,10]  = dmy_hms(paste(febDat$Dat,febDat$Time))

#make plot
png(file="plot2.png",width=480,height=480)
plot(febDat[,10],febDat$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()

