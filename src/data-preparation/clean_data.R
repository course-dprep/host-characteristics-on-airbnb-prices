####### SUBSET OF THE VARIABLES NEEDED ####### 
# Subset of important variables, deleting unimportant variables
low_inflation_host_variables <-low_inflation_dataset %>% select(c("host_id", "host_name", "host_since", "host_response_time", "host_response_rate", "host_is_superhost", "host_has_profile_pic", "host_identity_verified", "price", "city_name", "inflation"))
View(low_inflation_host_variables)
high_inflation_host_variables <-high_inflation_dataset %>% select(c("host_id", "host_name", "host_since", "host_response_time", "host_response_rate", "host_is_superhost", "host_has_profile_pic", "host_identity_verified", "price", "city_name", "inflation"))
View(high_inflation_host_variables)
full_dataset_host_variables <- full_dataset_cities %>% select(c("host_id", "host_name", "host_since", "host_response_time", "host_response_rate", "host_is_superhost", "host_has_profile_pic", "host_identity_verified", "price", "city_name", "inflation"))
View(full_dataset_host_variables)


####### CREATE DUMMY VARIABLES FOR THE BOOLEAN VARIABLES ####### 
# Make dummy of the variable "host_is_superhost"
low_inflation_host_variables$host_is_superhost <- ifelse(low_inflation_host_variables$host_is_superhost == "t", 1, 0)
high_inflation_host_variables$host_is_superhost <- ifelse(high_inflation_host_variables$host_is_superhost == "t", 1, 0)
full_dataset_host_variables$host_is_superhost <- ifelse(full_dataset_host_variables$host_is_superhost == "t", 1, 0)
View(low_inflation_dataset)

# Make dummy of the variable "host_has_profile_pic" 
low_inflation_host_variables$host_has_profile_pic <- ifelse(low_inflation_host_variables$host_has_profile_pic == "t", 1, 0)
high_inflation_host_variables$host_has_profile_pic <- ifelse(high_inflation_host_variables$host_has_profile_pic == "t", 1, 0)
full_dataset_host_variables$host_has_profile_pic <- ifelse(full_dataset_host_variables$host_has_profile_pic == "t", 1, 0)

# Make dummy of the variable "host_identity_verified"
low_inflation_host_variables$host_identity_verified <- ifelse(low_inflation_host_variables$host_identity_verified == "t", 1, 0)
high_inflation_host_variables$host_identity_verified <- ifelse(high_inflation_host_variables$host_identity_verified == "t", 1, 0)
full_dataset_host_variables$host_identity_verified <- ifelse(full_dataset_host_variables$host_identity_verified == "t", 1, 0)

# see all possible values of the dummies to test if it worked
table(low_inflation_host_variables$host_has_profile_pic)
table(high_inflation_host_variables$host_is_superhost)
table(full_dataset_host_variables$host_identity_verified)


####### RECODING VARIABLES ####### 
### HOST_RESPONSE_TIME_RECODED ### 
# add a new variable host_response_time_recoded
low_inflation_host_variables$host_response_time_recoded <- low_inflation_host_variables$host_response_time # first we make a clone and then we are going to change the clone
high_inflation_host_variables$host_response_time_recoded <- high_inflation_host_variables$host_response_time
full_dataset_host_variables$host_response_time_recoded <- full_dataset_host_variables$host_response_time
View(high_inflation_host_variables)

# Edit the new recoded response time to numeric values
# for low inflation 
low_inflation_host_variables['host_response_time_recoded'][low_inflation_host_variables['host_response_time_recoded'] == "within an hour"] <- 1
low_inflation_host_variables['host_response_time_recoded'][low_inflation_host_variables['host_response_time_recoded'] == "within a few hours"] <- 2
low_inflation_host_variables['host_response_time_recoded'][low_inflation_host_variables['host_response_time_recoded'] == "within a day"] <- 3
low_inflation_host_variables['host_response_time_recoded'][low_inflation_host_variables['host_response_time_recoded'] == "a few days or more"] <- 4
low_inflation_host_variables['host_response_time_recoded'][low_inflation_host_variables['host_response_time_recoded'] == "N/A"] <- NA
View(low_inflation_host_variables)
table(low_inflation_host_variables$host_response_time_recoded) # checks if it worked

# for full dataset
full_dataset_host_variables['host_response_time_recoded'][full_dataset_host_variables['host_response_time_recoded'] == "within an hour"] <- 1
full_dataset_host_variables['host_response_time_recoded'][full_dataset_host_variables['host_response_time_recoded'] == "within a few hours"] <- 2
full_dataset_host_variables['host_response_time_recoded'][full_dataset_host_variables['host_response_time_recoded'] == "within a day"] <- 3
full_dataset_host_variables['host_response_time_recoded'][full_dataset_host_variables['host_response_time_recoded'] == "a few days or more"] <- 4
full_dataset_host_variables['host_response_time_recoded'][full_dataset_host_variables['host_response_time_recoded'] == "N/A"] <- NA
View(full_dataset_host_variables)

# for high inflation dataset
high_inflation_host_variables['host_response_time_recoded'][high_inflation_host_variables['host_response_time_recoded'] == "within an hour"] <- 1
high_inflation_host_variables['host_response_time_recoded'][high_inflation_host_variables['host_response_time_recoded'] == "within a few hours"] <- 2
high_inflation_host_variables['host_response_time_recoded'][high_inflation_host_variables['host_response_time_recoded'] == "within a day"] <- 3
high_inflation_host_variables['host_response_time_recoded'][high_inflation_host_variables['host_response_time_recoded'] == "a few days or more"] <- 4
high_inflation_host_variables['host_response_time_recoded'][high_inflation_host_variables['host_response_time_recoded'] == "N/A"] <- NA


### HOST_RESPONSE_RATE_RECODED ### 
# add a new variable host_response_rate_recoded
low_inflation_host_variables$host_response_rate_recoded <- low_inflation_host_variables$host_response_rate # first we make a clone and then we are going to change the clone
high_inflation_host_variables$host_response_rate_recoded <- high_inflation_host_variables$host_response_rate
full_dataset_host_variables$host_response_rate_recoded <- full_dataset_host_variables$host_response_rate
View(high_inflation_host_variables)

# Convert percentages of this variable to numerical values of 0 - 1.00
low_inflation_host_variables$host_response_rate_recoded <- as.numeric(sub("%", "", low_inflation_host_variables$host_response_rate_recoded))/100
high_inflation_host_variables$host_response_rate_recoded <- as.numeric(sub("%", "", high_inflation_host_variables$host_response_rate_recoded))/100
full_dataset_host_variables$host_response_rate_recoded <- as.numeric(sub("%", "", full_dataset_host_variables$host_response_rate_recoded))/100
View(low_inflation_host_variables)
View(high_inflation_host_variables)
View(full_dataset_host_variables)


### PRICE ###
# Removing dollar sign from the price
low_inflation_host_variables$price_in_dollars <- gsub("\\$", "", low_inflation_host_variables$price)
high_inflation_host_variables$price_in_dollars <- gsub("\\$", "", high_inflation_host_variables$price)
full_dataset_host_variables$price_in_dollars <- gsub("\\$", "", full_dataset_host_variables$price)



####### NA ####### 
# see how many NA's are in the variables host_response_time and host_response_rate: 
# see all possible values of the host_response_time 
table(low_inflation_host_variables$host_response_time)
table(high_inflation_host_variables$host_response_time)
table(full_dataset_host_variables$host_response_time)

# see how many NA's are in the variable host_response_rate
table(low_inflation_host_variables$host_response_rate)
table(high_inflation_host_variables$host_response_rate)
table(full_dataset_host_variables$host_response_rate)

### REMOVE NA ###
low_inflation_host_variables_without_NA <- na.omit(low_inflation_host_variables)
high_inflation_host_variables_without_NA <- na.omit(high_inflation_host_variables)
full_dataset_host_variables_without_NA <- na.omit(full_dataset_host_variables)


####### CHANGE HOST_SINCE INTO YEARS #######
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
View(low_inflation_host_variables_without_NA)
View(high_inflation_host_variables_without_NA)


####### CHECK AND REMOVE DUPLICATES #######
# Check whether there are duplicates in the data set
duplicated(low_inflation_host_variables_without_NA)
duplicated(high_inflation_host_variables_without_NA)
duplicated(full_dataset_host_variables_without_NA)

# Remove the duplicates 
low_inflation_without_dup <- low_inflation_host_variables_without_NA %>% distinct()
high_inflation_without_dup <- high_inflation_host_variables_without_NA %>% distinct()
full_dataset_without_dup <- full_dataset_host_variables_without_NA %>% distinct()


####### CHANGE THE TYPE OF SOME VARIABLES #######
# make price_in_dollars numeric
library(readr)
low_inflation_without_dup$price_in_dollars <- parse_number(low_inflation_without_dup$price_in_dollars)
high_inflation_without_dup$price_in_dollars <- parse_number(high_inflation_without_dup$price_in_dollars)
full_dataset_without_dup$price_in_dollars <- parse_number(full_dataset_without_dup$price_in_dollars)

# make host_response_time_recoded numeric
low_inflation_without_dup$host_response_time_recoded <- as.numeric(low_inflation_without_dup$host_response_time_recoded)
high_inflation_without_dup$host_response_time_recoded <- as.numeric(high_inflation_without_dup$host_response_time_recoded)
full_dataset_without_dup$host_response_time_recoded <- as.numeric(full_dataset_without_dup$host_response_time_recoded)

##Check if all the variables are right
table(low_inflation_without_dup$host_years)
table(low_inflation_without_dup$host_is_superhost)
table(low_inflation_without_dup$price_in_dollars)
table(low_inflation_without_dup$host_response_time_recoded)
