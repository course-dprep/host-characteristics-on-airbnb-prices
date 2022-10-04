# Make dummy of the variable "host_is_superhost"
low_inflation_dataset$host_is_superhost <- ifelse(low_inflation_dataset$host_is_superhost == "t", 1, 0)
high_inflation_dataset$host_is_superhost <- ifelse(high_inflation_dataset$host_is_superhost == "t", 1, 0)
full_dataset_cities$host_is_superhost <- ifelse(full_dataset_cities$host_is_superhost == "t", 1, 0)

# Make dummy of the variable "host_has_profile_pic" 
low_inflation_dataset$host_has_profile_pic <- ifelse(low_inflation_dataset$host_has_profile_pic == "t", 1, 0)
high_inflation_dataset$host_has_profile_pic <- ifelse(high_inflation_dataset$host_has_profile_pic == "t", 1, 0)
full_dataset_cities$host_has_profile_pic <- ifelse(full_dataset_cities$host_has_profile_pic == "t", 1, 0)

# Make dummy of the variable "host_identity_verified"
low_inflation_dataset$host_identity_verified <- ifelse(low_inflation_dataset$host_is_superhost == "t", 1, 0)
high_inflation_dataset$host_identity_verified <- ifelse(high_inflation_dataset$host_is_superhost == "t", 1, 0)
full_dataset_cities$host_identity_verified <- ifelse(full_dataset_cities$host_is_superhost == "t", 1, 0)

# see all possible values of the dummies to test if it worked
table(low_inflation_dataset$host_is_superhost)
table(high_inflation_dataset$host_is_superhost)
table(full_dataset_cities$host_is_superhost)

# Subset of important variables, deleting unimportant variables
low_inflation_host_variables <-low_inflation_dataset %>% select(c("host_id", "host_name", "host_since", "host_response_time", "host_response_rate", "host_is_superhost", "host_has_profile_pic", "host_identity_verified", "price", "city_name", "inflation"))
View(low_inflation_host_variables)
high_inflation_host_variables <-high_inflation_dataset %>% select(c("host_id", "host_name", "host_since", "host_response_time", "host_response_rate", "host_is_superhost", "host_has_profile_pic", "host_identity_verified", "price", "city_name", "inflation"))
View(high_inflation_host_variables)
full_dataset_host_variables <- full_dataset_cities %>% select(c("host_id", "host_name", "host_since", "host_response_time", "host_response_rate", "host_is_superhost", "host_has_profile_pic", "host_identity_verified", "price", "city_name", "inflation"))
View(full_dataset_host_variables)

# see how many NA's are in the variables host_response_time and host_response_rate: 
# see all possible values of the host_response_time 
table(low_inflation_host_variables$host_response_time)
table(high_inflation_host_variables$host_response_time)
table(full_dataset_host_variables$host_response_time)

# see how many NA's are in the variable host_response_rate
table(low_inflation_host_variables$host_response_rate)
table(high_inflation_host_variables$host_response_rate)
table(full_dataset_host_variables$host_response_rate)

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
low_inflation_host_variables['host_response_time_recoded'][low_inflation_host_variables['host_response_time_recoded'] == "N/A"] <- NA
View(low_inflation_host_variables)

# for full dataset
full_dataset_host_variables['host_response_time_recoded'][full_dataset_host_variables['host_response_time_recoded'] == "within an hour"] <- 1
full_dataset_host_variables['host_response_time_recoded'][full_dataset_host_variables['host_response_time_recoded'] == "within a few hours"] <- 2
full_dataset_host_variables['host_response_time_recoded'][full_dataset_host_variables['host_response_time_recoded'] == "within a day"] <- 3
full_dataset_host_variables['host_response_time_recoded'][full_dataset_host_variables['host_response_time_recoded'] == "N/A"] <- NA
View(full_dataset_host_variables)

# for high inflation dataset
high_inflation_host_variables['host_response_time_recoded'][high_inflation_host_variables['host_response_time_recoded'] == "within an hour"] <- 1
high_inflation_host_variables['host_response_time_recoded'][high_inflation_host_variables['host_response_time_recoded'] == "within a few hours"] <- 2
high_inflation_host_variables['host_response_time_recoded'][high_inflation_host_variables['host_response_time_recoded'] == "within a day"] <- 3
high_inflation_host_variables['host_response_time_recoded'][high_inflation_host_variables['host_response_time_recoded'] == "N/A"] <- NA


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


## NA's --> Search for possibilities to handle these missing valyues
# optional: 
# Replace NA's "host_response_time" to median value
low_inflation_dataset$host_response_time[is.na(low_inflation_dataset$host_response_time)] <- median(low_inflation_dataset$host_response_time, na.rm = T)
full_dataset_cities$host_response_time[is.na(full_dataset_cities$host_response_time)] <- median(full_dataset_cities$host_response_time, na.rm = T)
high_inflation_dataset$host_response_time[is.na(high_inflation_dataset$host_response_time)] <- median(high_inflation_dataset$host_response_time, na.rm = T)

# Replace the NA's from the variable "host_response_rate" by median value: 
low_inflation_host_variables['host_response_rate'][low_inflation_host_variables['host_response_rate'] == "N/A"] <- NA
low_inflation_host_variables$host_response_rate[is.na(low_inflation_host_variables$host_response_rate)] <- median(low_inflation_host_variables$host_response_rate, na.rm = T)
View(low_inflation_host_variables)

full_dataset_host_variables['host_response_rate'][full_dataset_host_variables['host_response_rate'] == "N/A"] <- NA
full_dataset_host_variables$host_response_rate[is.na(full_dataset_host_variables$host_response_rate)] <- median(full_dataset_host_variables$host_response_rate, na.rm = T)
View(full_dataset_host_variables)

high_inflation_host_variables['host_response_rate'][high_inflation_host_variables['host_response_rate'] == "N/A"] <- NA
high_inflation_host_variables$host_response_rate[is.na(high_inflation_host_variables$host_response_rate)] <- median(high_inflation_host_variables$host_response_rate, na.rm = T)
View(high_inflation_host_variables)


