Enter file contents here.r

## This script reads the data to be analyzed from the working directory  
 	##and write the final tidy data into the data folder 
 

 ## Load needed packages 
 library(dplyr) 
 library(tidyr) 
 
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 ## Find working directory and read in files 
 wd <- getwd() 
 wd <- paste(wd, "getdata-projectfiles-UCI HAR Dataset\UCI HAR Dataset", 
                	sep="") 
 

 ## Read train data 
 fwd <- paste(wd,"/train/",sep="") 
 setwd(fwd) 
 
 
 
 ##setwd("C:/Users/penajes2/Documents/UCI HAR Dataset")
 
 
 X_train <- read.table("X_train.txt") 
 y_train <- read.table("y_train.txt") 
 subject_train <- read.table("subject_train.txt") 
 ysub_train <- cbind(subject_train, y_train) 
 <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

 
 
 ------------------------------------------------
 setwd("C:/Users/penajes2/Documents/UCI HAR Dataset")
 
 
 y_train <- read.table("train/y_train.txt", quote="\"")
 X_train <- read.table("train/X_train.txt", quote="\"")
 subject_train <- read.table("train/subject_train.txt", quote="\"")
 ysub_train <- cbind(subject_train, y_train) 
 

 
 X_test <- read.table("test/X_test.txt", quote="\"")
 y_test <- read.table("test/y_test.txt", quote="\"")
 subject_test <- read.table("test/subject_test.txt", quote="\"")
 ysub_test <- cbind(subject_test, y_test) 
 
 X <- rbind(X_train, X_test) 
 ysub <- rbind(ysub_train, ysub_test) 
 
 
 ## Convert to dplyr table format 
 X <- tbl_df(X) 
 ysub <- tbl_df(ysub) 
 
