library(dplyr)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
baltdata<-filter(NEI,fips=="24510")
baltyear<-group_by(baltdata,year)
baltyearsum<-summarise(baltyear,sum=sum(Emissions))
cols<-c("red","blue","green","yellow")
barplot(height=baltyearsum$sum,names.arg=baltyearsum$year,xlab="Year", ylab=expression('Aggregated Emission'),
     main=expression('Baltimore Aggregated PM'[2.5]*' Emmissions by Year'), col = cols)
