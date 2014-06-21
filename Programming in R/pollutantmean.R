pollutantmean <- function(directory, pollutant, id=1:332) {
      files_list <- list.files("./specdata", full.names = TRUE)
      data <- data.frame()
      for (i in id) {
            data <- rbind(data, read.csv(files_list[i]))
      }
      
      
     
      if(pollutant == "sulfate"){
            pollutantmean <- mean(data$sulfate, na.rm = TRUE)
      }
            
       if(pollutant == "nitrate"){
             pollutantmean <- mean(data$nitrate, na.rm = TRUE)
       }     
pollutantmean
}
