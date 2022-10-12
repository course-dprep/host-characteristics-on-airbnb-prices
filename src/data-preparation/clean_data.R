##############################
###### 3. SUBSET DATA #########
##############################

# read data
full_dataset_host_variables <- read.csv( "../../gen/data-preparation/temp/transformed_full_dataset_cities.csv")
high_inflation_host_variables <- read.csv("../../gen/data-preparation/temp/transformed_high_inflation_dataset.csv")
low_inflation_host_variables <- read.csv("../../gen/data-preparation/temp/transformed_low_inflation_dataset.csv")



#3.1 Recoding variables to make dummy variables  
# Add new recoded variables 
low_inflation_host_variables$host_response_time_recoded <- low_inflation_host_variables$host_response_time # first we make a clone and then we are going to change the clone
high_inflation_host_variables$host_response_time_recoded <- high_inflation_host_variables$host_response_time
full_dataset_host_variables$host_response_time_recoded <- full_dataset_host_variables$host_response_time

low_inflation_host_variables$host_response_rate_recoded <- low_inflation_host_variables$host_response_rate # first we make a clone and then we are going to change the clone
high_inflation_host_variables$host_response_rate_recoded <- high_inflation_host_variables$host_response_rate
full_dataset_host_variables$host_response_rate_recoded <- full_dataset_host_variables$host_response_rate

# Edit host_response_time_recoded to numeric values
# for low inflation 
low_inflation_host_variables['host_response_time_recoded'][low_inflation_host_variables['host_response_time_recoded'] == "within an hour"] <- 1
low_inflation_host_variables['host_response_time_recoded'][low_inflation_host_variables['host_response_time_recoded'] == "within a few hours"] <- 2
low_inflation_host_variables['host_response_time_recoded'][low_inflation_host_variables['host_response_time_recoded'] == "within a day"] <- 3
low_inflation_host_variables['host_response_time_recoded'][low_inflation_host_variables['host_response_time_recoded'] == "a few days or more"] <- 4
low_inflation_host_variables['host_response_time_recoded'][low_inflation_host_variables['host_response_time_recoded'] == "N/A"] <- NA
# table(low_inflation_host_variables$host_response_time_recoded) # checks if it worked

# for full dataset
full_dataset_host_variables['host_response_time_recoded'][full_dataset_host_variables['host_response_time_recoded'] == "within an hour"] <- 1
full_dataset_host_variables['host_response_time_recoded'][full_dataset_host_variables['host_response_time_recoded'] == "within a few hours"] <- 2
full_dataset_host_variables['host_response_time_recoded'][full_dataset_host_variables['host_response_time_recoded'] == "within a day"] <- 3
full_dataset_host_variables['host_response_time_recoded'][full_dataset_host_variables['host_response_time_recoded'] == "a few days or more"] <- 4
full_dataset_host_variables['host_response_time_recoded'][full_dataset_host_variables['host_response_time_recoded'] == "N/A"] <- NA

# for high inflation dataset
high_inflation_host_variables['host_response_time_recoded'][high_inflation_host_variables['host_response_time_recoded'] == "within an hour"] <- 1
high_inflation_host_variables['host_response_time_recoded'][high_inflation_host_variables['host_response_time_recoded'] == "within a few hours"] <- 2
high_inflation_host_variables['host_response_time_recoded'][high_inflation_host_variables['host_response_time_recoded'] == "within a day"] <- 3
high_inflation_host_variables['host_response_time_recoded'][high_inflation_host_variables['host_response_time_recoded'] == "a few days or more"] <- 4
high_inflation_host_variables['host_response_time_recoded'][high_inflation_host_variables['host_response_time_recoded'] == "N/A"] <- NA

# Convert percentages of host_response_rate_recoded to numerical values of 0 - 1.00
low_inflation_host_variables$host_response_rate_recoded <- as.numeric(sub("%", "", low_inflation_host_variables$host_response_rate_recoded))/100
high_inflation_host_variables$host_response_rate_recoded <- as.numeric(sub("%", "", high_inflation_host_variables$host_response_rate_recoded))/100
full_dataset_host_variables$host_response_rate_recoded <- as.numeric(sub("%", "", full_dataset_host_variables$host_response_rate_recoded))/100



#3.2 Removing NA
# see how many NA's are in the variables host_response_time and host_response_rate: 
table(low_inflation_host_variables$host_response_time)
table(high_inflation_host_variables$host_response_time)
table(full_dataset_host_variables$host_response_time)

# see how many NA's are in the variable host_response_rate
table(low_inflation_host_variables$host_response_rate)
table(high_inflation_host_variables$host_response_rate)
table(full_dataset_host_variables$host_response_rate)

# remove NA's
low_inflation_host_variables_without_NA <- na.omit(low_inflation_host_variables)
high_inflation_host_variables_without_NA <- na.omit(high_inflation_host_variables)
full_dataset_host_variables_without_NA <- na.omit(full_dataset_host_variables)


#3.3 Change host_since into years
low_inflation_host_variables_without_NA$host_since_recoded <- low_inflation_host_variables_without_NA$host_since # first we make a clone and then we are going to change the clone
high_inflation_host_variables_without_NA$host_since_recoded <- high_inflation_host_variables_without_NA$host_since
full_dataset_host_variables_without_NA$host_since_recoded <- full_dataset_host_variables_without_NA$host_since

# make a substring with only the years (first 4 icons of each observation)
low_inflation_host_variables_without_NA$host_since_recoded <- substr(low_inflation_host_variables_without_NA$host_since_recoded, 0, 4)
high_inflation_host_variables_without_NA$host_since_recoded <- substr(high_inflation_host_variables_without_NA$host_since_recoded, 0, 4)
full_dataset_host_variables_without_NA$host_since_recoded <- substr(full_dataset_host_variables_without_NA$host_since_recoded, 0, 4)

# turn these first 4 icons into a number
low_inflation_host_variables_without_NA$host_since_recoded <- as.numeric(low_inflation_host_variables_without_NA$host_since_recoded)
high_inflation_host_variables_without_NA$host_since_recoded <- as.numeric(high_inflation_host_variables_without_NA$host_since_recoded)
full_dataset_host_variables_without_NA$host_since_recoded <- as.numeric(full_dataset_host_variables_without_NA$host_since_recoded)

# subtract this number from 2022 to know how many years the hist is active
low_inflation_host_variables_without_NA$host_years <- 2022 - low_inflation_host_variables_without_NA$host_since_recoded
high_inflation_host_variables_without_NA$host_years <- 2022 - high_inflation_host_variables_without_NA$host_since_recoded
full_dataset_host_variables_without_NA$host_years <- 2022 - full_dataset_host_variables_without_NA$host_since_recoded

### SEE IF EVERYTHING WORKED ###
#View(low_inflation_host_variables_without_NA)
#View(high_inflation_host_variables_without_NA)


# write csv
#write_csv(low_inflation_host_variables_without_NA, "../team-assignment-team-6/gen/data-preparation/temp/low_inflation_host_variables_without_NA.csv")
#write_csv(high_inflation_host_variables_without_NA, "../team-assignment-team-6/gen/data-preparation/temp/high_inflation_host_variables_without_NA.csv")
#write_csv(full_dataset_host_variables_without_NA, "../team-assignment-team-6/gen/data-preparation/temp/full_dataset_host_variables_without_NA.csv")



#3.4 Remove duplicates
# Check whether there are duplicates in the data set
duplicated(low_inflation_host_variables_without_NA)
duplicated(high_inflation_host_variables_without_NA)
duplicated(full_dataset_host_variables_without_NA)

# Remove the duplicates 
low_inflation_without_dup <- low_inflation_host_variables_without_NA %>% distinct()
high_inflation_without_dup <- high_inflation_host_variables_without_NA %>% distinct()
full_dataset_without_dup <- full_dataset_host_variables_without_NA %>% distinct()


#3.5 Prices
# Removing dollar sign from the price
low_inflation_without_dup$price_in_dollars <- gsub("\\$", "", low_inflation_without_dup$price)
high_inflation_without_dup$price_in_dollars <- gsub("\\$", "", high_inflation_without_dup$price)
full_dataset_without_dup$price_in_dollars <- gsub("\\$", "", full_dataset_without_dup$price)

# make price_in_dollars numeric make price_in_dollars numeric
low_inflation_without_dup$price_in_dollars <- parse_number(low_inflation_without_dup$price_in_dollars)
high_inflation_without_dup$price_in_dollars <- parse_number(high_inflation_without_dup$price_in_dollars)
full_dataset_without_dup$price_in_dollars <- parse_number(full_dataset_without_dup$price_in_dollars)

# Convert prices into right currencies
### low inflation
table(low_inflation_without_dup$city_name)
# tokyo
low_inflation_without_dup <- low_inflation_without_dup %>% mutate(price_in_dollars = if_else(city_name == "tokyo", price_in_dollars*0.0068789, price_in_dollars))
# bangkok
low_inflation_without_dup <- low_inflation_without_dup %>% mutate(price_in_dollars = if_else(city_name == "bankok", price_in_dollars*0.027, price_in_dollars))
# beijing
low_inflation_without_dup <- low_inflation_without_dup %>% mutate(price_in_dollars = if_else(city_name == "beijing", price_in_dollars*0.1406238, price_in_dollars))
# athens
low_inflation_without_dup <- low_inflation_without_dup %>% mutate(price_in_dollars = if_else(city_name == "athens", price_in_dollars*0.97, price_in_dollars))
# geneva
low_inflation_without_dup <- low_inflation_without_dup %>% mutate(price_in_dollars = if_else(city_name == "geneva", price_in_dollars*0.97, price_in_dollars))

### high inflation
table(high_inflation_without_dup$city_name)
# capetown
high_inflation_without_dup <- high_inflation_without_dup %>% mutate(price_in_dollars = if_else(city_name == "capetown", price_in_dollars*0.0558582, price_in_dollars))
# mexico
high_inflation_without_dup <- high_inflation_without_dup %>% mutate(price_in_dollars = if_else(city_name == "mexico", price_in_dollars*0.05, price_in_dollars))
# rio de janeiro
high_inflation_without_dup <- high_inflation_without_dup %>% mutate(price_in_dollars = if_else(city_name == "rio", price_in_dollars*0.192311, price_in_dollars))
# santiago
high_inflation_without_dup <- high_inflation_without_dup %>% mutate(price_in_dollars = if_else(city_name == "santiago", price_in_dollars*0.0010657672, price_in_dollars))

### full dataset:
# tokyo
full_dataset_without_dup <- full_dataset_without_dup %>% mutate(price_in_dollars = if_else(city_name == "tokyo", price_in_dollars*0.0068789, price_in_dollars))
# bangkok
full_dataset_without_dup <- full_dataset_without_dup %>% mutate(price_in_dollars = if_else(city_name == "bankok", price_in_dollars*0.027, price_in_dollars))
# beijing
full_dataset_without_dup <- full_dataset_without_dup %>% mutate(price_in_dollars = if_else(city_name == "beijing", price_in_dollars*0.1406238, price_in_dollars))
# athens
full_dataset_without_dup <- full_dataset_without_dup %>% mutate(price_in_dollars = if_else(city_name == "athens", price_in_dollars*0.97, price_in_dollars))
# geneva
full_dataset_without_dup <- full_dataset_without_dup %>% mutate(price_in_dollars = if_else(city_name == "geneva", price_in_dollars*0.97, price_in_dollars))
# capetown
full_dataset_without_dup <- full_dataset_without_dup %>% mutate(price_in_dollars = if_else(city_name == "capetown", price_in_dollars*0.0558582, price_in_dollars))
# mexico
full_dataset_without_dup <- full_dataset_without_dup %>% mutate(price_in_dollars = if_else(city_name == "mexico", price_in_dollars*0.05, price_in_dollars))
# rio de janeiro
full_dataset_without_dup <- full_dataset_without_dup %>% mutate(price_in_dollars = if_else(city_name == "rio", price_in_dollars*0.192311, price_in_dollars))
# santiago
full_dataset_without_dup <- full_dataset_without_dup %>% mutate(price_in_dollars = if_else(city_name == "santiago", price_in_dollars*0.0010657672, price_in_dollars))

mean(full_dataset_without_dup$price_in_dollars)

# round prices to 2 decimals
low_inflation_without_dup$price_in_dollars <- round(low_inflation_without_dup$price_in_dollars, digits=2)
high_inflation_without_dup$price_in_dollars <- round(high_inflation_without_dup$price_in_dollars, digits=2)
full_dataset_without_dup$price_in_dollars <- round(full_dataset_without_dup$price_in_dollars, digits=2)






####### WRITE CSV FILES OF THE COMPLETE DATASETS #######
write_csv(full_dataset_without_dup, "../team-assignment-team-6/gen/data-preparation/output/full_dataset_complete.csv")
write_csv(high_inflation_without_dup, "../team-assignment-team-6/gen/data-preparation/output/high_inflation_complete.csv")
write_csv(low_inflation_without_dup, "../team-assignment-team-6/gen/data-preparation/output/low_inflation_complete.csv")
