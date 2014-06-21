complete <- function(directory, id = 1:332) {
      data <- data.frame(id2=numeric(332), nobs=numeric(332), stringsAsFactors=F)
      

      files_list <- list.files("./specdata", full.names = TRUE)
      for (i in id) {
            data$nobs[i] <- sum(complete.cases(read.csv(files_list[i])))
            data$id2[i] <- as.numeric(i)
      }
colnames(data) <- c("id", "nobs")
data[id,]
}