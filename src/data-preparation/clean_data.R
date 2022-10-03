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


# add a new variable host_response_rate_recoded
low_inflation_host_variables$host_response_rate_recoded <- low_inflation_host_variables$host_response_rate # first we make a clone and then we are going to change the clone
high_inflation_host_variables$host_response_rate_recoded <- high_inflation_host_variables$host_response_rate
full_dataset_host_variables$host_response_rate_recoded <- full_dataset_host_variables$host_response_rate
View(high_inflation_host_variables)




## NA's 

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


