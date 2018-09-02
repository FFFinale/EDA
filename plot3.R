library(dplyr)
library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
baltdata<-filter(NEI,fips=="24510")
typedata<-group_by(baltdata,year,typedata)
typedata2<-summarise(typedata2,sum=sum(Emissions))
chart<-ggplot(typedata2,aes(year,sum/1000,color=type))+
  geom_line()+
  xlab("year") +
  ylab(expression('Total Emissions')) +
  ggtitle('Total Baltimore Emissions [2.5]* From 1999 to 2008')
chart
