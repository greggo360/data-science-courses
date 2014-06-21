corr <- function(directory, threshold = 0) {
      files_list <- list.files("./specdata", full.names = TRUE)
      id = 1:length(files_list)
      cr <- numeric(0);
      for (i in id) {
            myfile <- files_list[i]
            data<-read.csv(myfile)
            p<-data[complete.cases(data),]
            nobs=nrow(p)
            if (nobs > threshold) {
                  cr <- c(cr, cor(p$nitrate, p$sulfate))
            }
      }
return(cr)      
}

          