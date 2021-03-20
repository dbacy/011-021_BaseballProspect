install.packages("zoo")
install.packages("tidyverse")
install.packages("kableExtra")
install.packages("openxlsx")
install.packages("reshape2")

library(kableExtra)
library(tidyverse)
library(zoo)
library(openxlsx)
library(reshape2)

##################################################################################

testData <-read.xlsx("/Users/Small/Documents/Excel/R_Projects/Top50/BP21.xlsx")

##################################################################################


aggData_2011 <- filter(testData , Year == "2011") %>% 
  
  summarise(
    C = sum(Position == "C"),
    LPH = sum(Position == "LHP"),
    RHP = sum(Position == "RHP"),
    SS = sum(Position == "SS"),
    OF = sum(Position == "OF"),
    FB = sum(Position == "1B"),
    SB = sum(Position == "2B"),
    TB = sum(Position == "3B")
  )

aggData_2012 <- filter(testData , Year == "2012") %>% 
  
  summarise(
    C = sum(Position == "C"),
    LPH = sum(Position == "LHP"),
    RHP = sum(Position == "RHP"),
    SS = sum(Position == "SS"),
    OF = sum(Position == "OF"),
    FB = sum(Position == "1B"),
    SB = sum(Position == "2B"),
    TB = sum(Position == "3B")
  )

aggData_2013 <- filter(testData , Year == "2013") %>% 
  
  summarise(
    C = sum(Position == "C"),
    LPH = sum(Position == "LHP"),
    RHP = sum(Position == "RHP"),
    SS = sum(Position == "SS"),
    OF = sum(Position == "OF"),
    FB = sum(Position == "1B"),
    SB = sum(Position == "2B"),
    TB = sum(Position == "3B")
  )

aggData_2014 <- filter(testData , Year == "2014") %>% 
  
  summarise(
    C = sum(Position == "C"),
    LPH = sum(Position == "LHP"),
    RHP = sum(Position == "RHP"),
    SS = sum(Position == "SS"),
    OF = sum(Position == "OF"),
    FB = sum(Position == "1B"),
    SB = sum(Position == "2B"),
    TB = sum(Position == "3B")
  )

aggData_2015 <- filter(testData , Year == "2015") %>% 
  
  summarise(
    C = sum(Position == "C"),
    LPH = sum(Position == "LHP"),
    RHP = sum(Position == "RHP"),
    SS = sum(Position == "SS"),
    OF = sum(Position == "OF"),
    FB = sum(Position == "1B"),
    SB = sum(Position == "2B"),
    TB = sum(Position == "3B")
  )

aggData_2016 <- filter(testData , Year == "2016") %>% 
  
  summarise(
    C = sum(Position == "C"),
    LPH = sum(Position == "LHP"),
    RHP = sum(Position == "RHP"),
    SS = sum(Position == "SS"),
    OF = sum(Position == "OF"),
    FB = sum(Position == "1B"),
    SB = sum(Position == "2B"),
    TB = sum(Position == "3B")
  )

aggData_2017 <- filter(testData , Year == "2017") %>% 
  
  summarise(
    C = sum(Position == "C"),
    LPH = sum(Position == "LHP"),
    RHP = sum(Position == "RHP"),
    SS = sum(Position == "SS"),
    OF = sum(Position == "OF"),
    FB = sum(Position == "1B"),
    SB = sum(Position == "2B"),
    TB = sum(Position == "3B")
  )

aggData_2018 <- filter(testData , Year == "2018") %>% 
  
  summarise(
    C = sum(Position == "C"),
    LPH = sum(Position == "LHP"),
    RHP = sum(Position == "RHP"),
    SS = sum(Position == "SS"),
    OF = sum(Position == "OF"),
    FB = sum(Position == "1B"),
    SB = sum(Position == "2B"),
    TB = sum(Position == "3B")
  )

aggData_2019 <- filter(testData , Year == "2019") %>% 
  
  summarise(
    C = sum(Position == "C"),
    LPH = sum(Position == "LHP"),
    RHP = sum(Position == "RHP"),
    SS = sum(Position == "SS"),
    OF = sum(Position == "OF"),
    FB = sum(Position == "1B"),
    SB = sum(Position == "2B"),
    TB = sum(Position == "3B")
  )

aggData_2020 <- filter(testData , Year == "2020") %>% 
  
  summarise(
    C = sum(Position == "C"),
    LPH = sum(Position == "LHP"),
    RHP = sum(Position == "RHP"),
    SS = sum(Position == "SS"),
    OF = sum(Position == "OF"),
    FB = sum(Position == "1B"),
    SB = sum(Position == "2B"),
    TB = sum(Position == "3B")
  )

aggData_2021 <- filter(testData , Year == "2021") %>% 
  
  summarise(
    C = sum(Position == "C"),
    LPH = sum(Position == "LHP"),
    RHP = sum(Position == "RHP"),
    SS = sum(Position == "SS"),
    OF = sum(Position == "OF"),
    FB = sum(Position == "1B"),
    SB = sum(Position == "2B"),
    TB = sum(Position == "3B")
  )

testData2 <- testData %>% 
  group_by(Year) %>% 
  summarise(
    C = sum(Position == "C"),
    LHP = sum(Position == "LHP"),
    RHP = sum(Position == "RHP"),
    SS = sum(Position == "SS"),
    OF = sum(Position == "OF"),
    FB = sum(Position == "1B"),
    SB = sum(Position == "2B"),
    TB = sum(Position == "3B")
  )

# testData2 <- testData %>% 
#   group_by(Year) %>% 
#   summarise(
#     Position = sum(Position == "C"), 
#     sum(Position == "LHP"),
#     sum(Position == "RHP"),
#     sum(Position == "SS"),
#     sum(Position == "OF"),
#     sum(Position == "1B"),
#     sum(Position == "2B"),
#     sum(Position == "3B")
#   )

####################################################################################

catcher <- recordPlot(dotchart(testData2$C , labels = testData2$Year , color = 'blue' , pch = 16 ,
         xlab = 'Count' , ylab = 'Year' , main = ' Catcher Prospect')) 
left_hand_pitcher <- recordPlot(dotchart(testData2$LHP , labels = testData2$Year , color = 'blue' , pch = 16 ,
         xlab = 'Count' , ylab = 'Year' , main = ' LHP Prospect'))
right_hand_pitcher <- recordPlot(dotchart(testData2$RHP , labels = testData2$Year , color = 'blue' , pch = 16 ,
         xlab = 'Count' , ylab = 'Year' , main = ' RHP Prospect'))
short_stop <- recordPlot(dotchart(testData2$SS , labels = testData2$Year , color = 'blue' , pch = 16 ,
         xlab = 'Count' , ylab = 'Year' , main = ' Short Stop Prospect'))
outfield <- recordPlot(dotchart(testData2$OF , labels = testData2$Year , color = 'blue' , pch = 16 ,
         xlab = 'Count' , ylab = 'Year' , main = ' Outfield Prospect'))
first_base <- recordPlot(dotchart(testData2$FB , labels = testData2$Year , color = 'blue' , pch = 16 ,
         xlab = 'Count' , ylab = 'Year' , main = ' 1B Prospect'))
second_base <- recordPlot(dotchart(testData2$SB , labels = testData2$Year , color = 'blue' , pch = 16 ,
         xlab = 'Count' , ylab = 'Year' , main = ' 2B Prospect'))
third_base <- recordPlot(dotchart(testData2$TB , labels = testData2$Year , color = 'blue' , pch = 16 ,
         xlab = 'Count' , ylab = 'Year' , main = ' 3B Prospect'))

testData2 %>% 
  ggplot(aes(x = Year , y = C )) # does not plot the count 


ggplot(data = testData2, aes(x=Year, y= C))  + geom_line(aes(colour=Year))


boxplot(aggData_2011)

############################################################################


sa <- stack(as.data.frame(testData2))
sa$x <- rep(seq_len(nrow(testData2)), ncol(testData2))
qplot(x, values, data = sa, group = ind, colour = ind, geom = "line")

#has year with all position in ind 

sa <- stack(as.data.frame(testData))
sa$x <- rep(seq_len(nrow(testData)), ncol(testData))
qplot(x, values, data = sa, group = ind, colour = ind, geom = "line") 
#has Prospect , position , and year in ind 

sa <- stack(as.data.frame(testData3))
sa$x <- rep(seq_len(nrow(testData3)), ncol(testData3))
qplot(x, values, data = sa, group = ind, colour = ind, geom = "line")

testData3 <- testData %>% 
  select(Year, Position)  #has Year and Position 


# 
# a <- matrix(rnorm(200), 10, 10)
# qplot(c(row(a)), c(a), group = c(col(a)), colour = c(col(a)), geom = "line")
