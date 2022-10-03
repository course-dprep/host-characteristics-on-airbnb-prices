# Load datasets into R 
#“bad” countries (high inflation)
Boston <- read.csv("unitedstatesmaboston.csv")
Rio <- read.csv("brazilrjriodejaneiro.csv")
Mexico <- read.csv("mexicodfmexicocity.csv")
Capetown <- read.csv("southafricawccapetown.csv")
Santiago <- read.csv("chilermsantiago.csv")
#“good” countries (low inflation)
Tokyo <- read.csv("japankanttokyo.csv")
Geneva <- read.csv("switzerlandgenevageneva.csv")
Beijing <- read.csv("chinabeijingbeijing.csv")
Bangkok <- read.csv("thailandcentralthailandbangkok.csv")
Athens <- read.csv("greeceatticaathens.csv")

# Make new variable with city for each city
library(dplyr)
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
write_csv(full_dataset_cities, "full_dataset_cities.csv")
write_csv(high_inflation_dataset, "high_inflation_dataset.csv")
write_csv(low_inflation_dataset, "low_inflation_dataset.csv")



