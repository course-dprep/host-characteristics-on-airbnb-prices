
##############################
###### 1. MERGE DATA #########
##############################

# Loading packages
library(tidyverse)
library(dplyr)
library(ggplot2)
library(readr)

#1.1 Load datasets into R 
#“bad” countries (high inflation)
Boston <- read.csv(gzfile('../../data/listings-united-states.csv.gz')) 
Rio <- read.csv(gzfile('../../data/listings-brazil.csv.gz')) 
Mexico <- read.csv(gzfile('../../data/listings-mexico.csv.gz')) 
Capetown <- read.csv(gzfile('../../data/listings-south-africa.csv.gz')) 
Santiago <- read.csv(gzfile('../../data/listings-chile.csv.gz')) 

#“good” countries (low inflation)
Tokyo <- read.csv(gzfile('../../data/listings-japan.csv.gz'))
Geneva <- read.csv(gzfile('../../data/listings-switzerland.csv.gz'))
Beijing <- read.csv(gzfile('../../data/listings-china.csv.gz'))
Bangkok <- read.csv(gzfile('../../data/listings-thailand.csv.gz'))
Athens <- read.csv(gzfile('../../data/listings-greece.csv.gz'))

#1.2 Make new variable with city for each city
# High inflation
Capetown$city_name <- c("capetown")
Santiago$city_name <- c("santiago")
Mexico$city_name <- c("mexico")
Rio$city_name <- c("rio")
Boston$city_name <- c("boston")
# Low inflation
Tokyo$city_name <- c("tokyo")
Geneva$city_name <- c("geneva")
Beijing$city_name <- c("beijing")
Bangkok$city_name <- c("bankok")
Athens$city_name <- c("athens")

#1.3 Convert data from cities into datasets
# Make dataset for high inflation cities
high_inflation_dataset <- bind_rows(Capetown, Santiago, Mexico, Rio, Boston)

# Make dummy variable for high inflation cities 
high_inflation_dataset$inflation <- 0

# Make dataset for low inflation cities
low_inflation_dataset <- bind_rows(Tokyo, Geneva, Beijing, Bangkok, Athens)

# Make dummy variable for low inflation cities 
low_inflation_dataset$inflation <- 1

# Combine both datasets in full dataset
full_dataset_cities <- bind_rows(low_inflation_dataset, high_inflation_dataset)

# Write csv
write.csv(full_dataset_cities, "../../gen/data-preparation/temp/merged_full_dataset_cities.csv")
write.csv(high_inflation_dataset, "../../gen/data-preparation/temp/merged_high_inflation_dataset.csv")
write.csv(low_inflation_dataset, "../../gen/data-preparation/temp/merged_low_inflation_dataset.csv")



