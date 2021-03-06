specdata <- setwd("C:/Users/Josh/Documents/R Projects/Coursera - Data Science Certificate/2 - R Programming/Programming Assignment 1 - Air Pollution/specdata")


specdata
list.files(specdata)


##### PART 1 #####

pollutantmean <- function(directory, pollutant, id = 1:332){
  #set working directory
  directory
  
  #read and aggregate files into a data frame
  pollutant_data <- NULL
  filenames <- paste(formatC(id,width = 3,flag = "0",),".csv",sep = "")
  filecount <- length(filenames)
  
  i <- 1
  while(i <= filecount){
    data_temp <- read.csv(filenames[i])
    pollutant_data <- rbind(pollutant_data,data_temp)
    i <- i+1
  }
  
  
  #calculate mean of specified pollutant
  if(pollutant == "nitrate"){
    mean(pollutant_data$nitrate, na.rm = TRUE)
  }
  else if(pollutant == "sulfate"){
    mean(pollutant_data$sulfate, na.rm = TRUE)  
  }
  else {print("Error in pollutant name")}
}



##### PART 2 #####

complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
}

##### PART 3 #####


corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
}