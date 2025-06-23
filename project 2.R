### 2023 Data

rm(list = ls()) #remove saved variables from global envirnment

###load libraries for data handling and cleaning
library(tidyverse)
library(data.table)

###load csv file

## previously used method
#data <- read.csv(file_location) 
#View(data)
## new method for large ds
data <- fread("C:\\Users\\ASUS\\Desktop\\Langara\\DANA-4800\\group proj 2\\2023_hotspots.csv") 

###explore the data
str(data) #check structure
summary(data) #summarize columns
head(data) #preview first rows

###check for missing values
sum(is.na(data)) #check for NA values
col_na_counts <- colSums(is.na(data))
col_na_counts[col_na_counts > 0] #columns with missing values
column_names <- colnames(data) #get col names 
table(data$column_names) #check for invalid values like 'InVld', '<Samp', 'Calib'
#data[data == "InVld" | data == "<Samp" | data == "Calib"] <- NA # Replace invalid values with NA

###check for duplicate rows
duplicates <- data[duplicated(data), ]
head(duplicates)

###convert data type
data$rep_date <- as.POSIXct(data$rep_date, format = "%Y-%m-%d %H:%M:%S") #rep_date col

###Save cleaned data
#fwrite(data, "C:\\Langara\\DANA-4800\\group proj 2\\cleaned_file.csv")

###Univariate Analysis

###Bivariate Analysis