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
