source("pollutantmean.R")
pollutantmean1output <- pollutantmean("specdata", "sulfate", 1:10)

pollutantmean2output <- pollutantmean("specdata", "nitrate", 70:72)

pollutantmean3output <- pollutantmean("specdata", "nitrate", 23)

source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript1.R")
submit()

#Part 2
source("complete.R")

complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)
source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript1.R")
submit()

#Part 3
source("corr.R")
source("complete.R")
cr <- corr("specdata", 150)
head(cr)
summary(cr)
cr <- corr("specdata", 400)
head(cr)
cr<-corr("specdata",5000)
summary(cr)
length(cr)
cr <- corr("specdata")
summary(cr)
length(cr)
source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript1.R")
submit()
