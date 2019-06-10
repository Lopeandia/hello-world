pollutantmean <- function(directory, pollutant, id = 1:332){
  d <- read.csv(paste(directory, paste("/",id[1], ".csv", sep = ""), sep = ""))
  for(i in 2:length(id)){
    d <- merge(d, read.csv(paste(directory, paste("/", id[i], ".csv", sep = ""), sep = "")), all.x = TRUE, all.y = TRUE)
  }
  return(mean(paste("d$", pollutant, sep = ""), na.rm = TRUE))
}
a <- read.csv("specdata/70.csv")
