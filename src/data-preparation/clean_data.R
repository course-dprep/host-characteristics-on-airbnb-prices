# Make dummy of the variable "host_is_superhost"
low_inflation_dataset$host_is_superhost <- ifelse(low_inflation_dataset$host_is_superhost == "True", 1, 0)
high_inflation_dataset$host_is_superhost <- ifelse(high_inflation_dataset$host_is_superhost == "True", 1, 0)
full_dataset_cities$host_is_superhost <- ifelse(full_dataset_cities$host_is_superhost == "True", 1, 0)

# Make dummy of the variable "host_has_profile_pic" 
low_inflation_dataset$host_has_profile_pic <- ifelse(low_inflation_dataset$host_has_profile_pic == "TRUE", 1, 0)
high_inflation_dataset$host_has_profile_pic <- ifelse(high_inflation_dataset$host_has_profile_pic == "TRUE", 1, 0)
full_dataset_cities$host_has_profile_pic <- ifelse(full_dataset_cities$host_has_profile_pic == "TRUE", 1, 0)

# Make dummy of the variable "host_identity_verified"
low_inflation_dataset$host_identity_verified <- ifelse(low_inflation_dataset$host_is_superhost == "True", 1, 0)
high_inflation_dataset$host_identity_verified <- ifelse(high_inflation_dataset$host_is_superhost == "True", 1, 0)
full_dataset_cities$host_identity_verified <- ifelse(full_dataset_cities$host_is_superhost == "True", 1, 0)

# Subset of important variables, deleting unimportant variables
low_inflation_dataset <-low_inflation_dataset %>% select(9, 11, 12, 15, 16, 18, 25, 26, 40, 75, 76)
View(low_inflation_dataset)
high_inflation_dataset <-high_inflation_dataset %>% select(9, 11, 12, 15, 16, 18, 25, 26, 40, 75, 76)
View(high_inflation_dataset)
full_dataset_cities <- full_dataset_cities %>% select(9, 11, 12, 15, 16, 18, 25, 26, 40, 75, 76)
View(full_dataset_cities)

# Change values of variable "host_response_time to numbers" and replace missing values by median value: 
# for low inflation dataset
low_inflation_dataset['host_response_time'][low_inflation_dataset['host_response_time'] == "within an hour"] <- 1
low_inflation_dataset['host_response_time'][low_inflation_dataset['host_response_time'] == "within a few hours"] <- 2
low_inflation_dataset['host_response_time'][low_inflation_dataset['host_response_time'] == "within a day"] <- 3
low_inflation_dataset['host_response_time'][low_inflation_dataset['host_response_time'] == "N/A"] <- NA
low_inflation_dataset$host_response_time[is.na(low_inflation_dataset$host_response_time)] <- median(low_inflation_dataset$host_response_time, na.rm = T)
View(low_inflation_dataset)


# for full dataset
full_dataset_cities['host_response_time'][full_dataset_cities['host_response_time'] == "within an hour"] <- 1
full_dataset_cities['host_response_time'][full_dataset_cities['host_response_time'] == "within a few hours"] <- 2
full_dataset_cities['host_response_time'][full_dataset_cities['host_response_time'] == "within a day"] <- 3
full_dataset_cities['host_response_time'][full_dataset_cities['host_response_time'] == "N/A"] <- NA
full_dataset_cities$host_response_time[is.na(full_dataset_cities$host_response_time)] <- median(full_dataset_cities$host_response_time, na.rm = T)
View(full_dataset_cities)


# for high inflation dataset
high_inflation_dataset['host_response_time'][high_inflation_dataset['host_response_time'] == "within an hour"] <- 1
high_inflation_dataset['host_response_time'][high_inflation_dataset['host_response_time'] == "within a few hours"] <- 2
high_inflation_dataset['host_response_time'][high_inflation_dataset['host_response_time'] == "within a day"] <- 3
high_inflation_dataset['host_response_time'][high_inflation_dataset['host_response_time'] == "N/A"] <- NA

high_inflation_dataset$host_response_time[is.na(high_inflation_dataset$host_response_time)] <- median(high_inflation_dataset$host_response_time, na.rm = T)
View(high_inflation_dataset)


