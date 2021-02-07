install.packages("zoo")
install.packages("tidyverse")
install.packages("kableExtra")
install.packages("forecasting")

library(kableExtra)
library(tidyverse)
library(zoo)

testData <-read_xlsx("/Users/Small/Documents/Excel/R_Projects/Top50/BP21.xlsx")

head(testData)

df<-head(testData)
kable(df) %>%
  kable_styling(bootstrap_options = "striped", font_size = 10, full_width = F)

summary(testData)

aggData <- aggregate(testData, by = list(testData$Year),
                   FUN = mean, na.rm=FALSE)


aggData_2011 <- filter(testData , Year == "2011")
aggData_2012 <- filter(testData , Year == "2012")
aggData_2013 <- filter(testData , Year == "2013")
aggData_2014 <- filter(testData , Year == "2014")
aggData_2015 <- filter(testData , Year == "2015")
aggData_2016 <- filter(testData , Year == "2016")
aggData_2017 <- filter(testData , Year == "2017")
aggData_2018 <- filter(testData , Year == "2018")
aggData_2019 <- filter(testData , Year == "2019")
aggData_2020 <- filter(testData , Year == "2020")
aggData_2021 <- filter(testData , Year == "2021")

LGI <- ggplot() + geom_line(aes(y = Total, x= Position),
                            size= 0.8, color = "blue",
                            data = aggData_2011) +
  geom_line(aes(y= Total , x = Postition), 
            size= 0.8, color = "red", data = aggData_2012) +
  geom_line(aes(y= Total, x= Position),
            size= 0.8, color = "purple",data = aggData_2013) +
  geom_line(aes(y= Total, x= Position),
            size= 0.8, color = "green",data = aggData_2014) +
  geom_line(aes(y= Total, x= Position),
            size= 0.8, color = "orange",data = aggData_2015) +
  geom_line(aes(y= Total, x= Position),
            size= 0.8, color = "teal",data = aggData_2016) +
  geom_line(aes(y= Total, x= Position),
            size= 0.8, color = "black",data = aggData_2017) +
  geom_line(aes(y= Total, x= Position),
            size= 0.8, color = "moroon",data = aggData_2018) +
  geom_line(aes(y= Total, x= Position),
            size= 0.8, color = "brown",data = aggData_2019) +
  geom_line(aes(y= Total, x= Position),
            size= 0.8, colr = "yellow",data = aggData_2020) +
  geom_line(aes(y= Total, x= Position),
            size= 0.8, colr = "blue",data = aggData_2021) 
  
#count(count(testData[1:551,],c("Position","Year")), "Position","freq")
#count(count(aggData_2011,c("Position","Year")), "freq")
#count(aggData_2011[1:50,],vars= "Position",vars= "Year")
count(aggData_2011[1:50,],vars= "Position")

#The Different levels in P
levels(aggData_2011$Position)

summary(aggData_2011)

#Info from 10 - 16 in aggData_2011
aggData_2011[10:16,]

#Will add the data to a new var. for only OF prospects
#DO NOT EXICUTE
#OF_2011 <- aggData_2011[Position =="OF", ]

#want the count for each position in 2011 
nrow(subset(aggData_2011, Position == "OF" | Position == "2B"))
nrow(subset(aggData_2011, Position == "2B"))
nrow(subset(aggData_2011, Position == "3B"))
nrow(subset(aggData_2011, Position == "1B"))
nrow(subset(aggData_2011, Position == "LHP"))
nrow(subset(aggData_2011, Position == "RHP"))
nrow(subset(aggData_2011, Position == "SS"))
aggData_2011
