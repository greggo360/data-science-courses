install.packages("devtools")

getwd()
setwd("C:/Users/561518/Desktop/Programming in R")
hw1_data <- read.csv("hw1_data.csv")
names(hw1_data)
head(hw1_data)
hw1_data[1:2,]
hw1_data[152:153,]
hw1_data[47,1]
missingOzone <- is.na(hw1_data$Ozone)
table(missingOzone)
ozone.no.na <- hw1_data$Ozone[missingOzone==F]
mean(ozone.no.na)

mean(hw1_data$Solar.R[hw1_data$Ozone > 31 & hw1_data$Temp > 90], na.rm=T)
mean(hw1_data$Temp[hw1_data$Month==6], na.rm=T)
 
max(hw1_data$Ozone[hw1_data$Month==5], na.rm=T)

class(hw1_data$Ozone)
class(hw1_data)
