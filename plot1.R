library(dplyr)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
years<-group_by(NEI,year)
pollu<-summarise(years,sum=sum(Emissions))
cols<-c("red","blue","green","yellow")
barplot(height=pollu$sum/1000,names.arg=pollu$year,xlab="Year", ylab=expression('Aggregated Emission'),
     main=expression('Aggregated PM'[2.5]*' Emmissions by Year'), col = cols)
