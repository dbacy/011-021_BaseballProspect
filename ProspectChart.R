install.packages("zoo")
install.packages("tidyverse")
install.packages("kableExtra")

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
aggData_2021 <- filter(testData , Year == "2yy021")

LGI <- ggplot() + geom_line(aes(y = Total, x= Positions),
                            size= 0.8, color = "blue",
                            data = aggData_2011) +
  geom_line(aes(y= Total , x = Postition), 
            size= 0.8, color = "red", data = aggData_2012) +
  