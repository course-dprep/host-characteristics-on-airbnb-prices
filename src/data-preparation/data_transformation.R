######################################
###### 2. DATA TRANSFORMATION ########
######################################

#2.1 Subset of important variables, filtering needed columns
low_inflation_host_variables <-low_inflation_dataset %>% select(c("host_id", "host_name", "host_since", "host_response_time",
                                                                  "host_response_rate", "host_is_superhost", "host_has_profile_pic",
                                                                  "host_identity_verified", "price", "city_name", "inflation"))
high_inflation_host_variables <-high_inflation_dataset %>% select(c("host_id", "host_name", "host_since", "host_response_time",
                                                                    "host_response_rate", "host_is_superhost", "host_has_profile_pic",
                                                                    "host_identity_verified", "price", "city_name", "inflation"))
full_dataset_host_variables <- full_dataset_cities %>% select(c("host_id", "host_name", "host_since", "host_response_time",
                                                                "host_response_rate", "host_is_superhost", "host_has_profile_pic",
                                                                "host_identity_verified", "price", "city_name", "inflation"))


#2.2 Create dummy variables for for the boolean variables
# Make dummy of the variable "host_is_superhost"
low_inflation_host_variables$host_is_superhost <- ifelse(low_inflation_host_variables$host_is_superhost == "t", 1, 0)
high_inflation_host_variables$host_is_superhost <- ifelse(high_inflation_host_variables$host_is_superhost == "t", 1, 0)
full_dataset_host_variables$host_is_superhost <- ifelse(full_dataset_host_variables$host_is_superhost == "t", 1, 0)

# Make dummy of the variable "host_has_profile_pic" 
low_inflation_host_variables$host_has_profile_pic <- ifelse(low_inflation_host_variables$host_has_profile_pic == "t", 1, 0)
high_inflation_host_variables$host_has_profile_pic <- ifelse(high_inflation_host_variables$host_has_profile_pic == "t", 1, 0)
full_dataset_host_variables$host_has_profile_pic <- ifelse(full_dataset_host_variables$host_has_profile_pic == "t", 1, 0)

# Make dummy of the variable "host_identity_verified"
low_inflation_host_variables$host_identity_verified <- ifelse(low_inflation_host_variables$host_identity_verified == "t", 1, 0)
high_inflation_host_variables$host_identity_verified <- ifelse(high_inflation_host_variables$host_identity_verified == "t", 1, 0)
full_dataset_host_variables$host_identity_verified <- ifelse(full_dataset_host_variables$host_identity_verified == "t", 1, 0)

# see all possible values of the dummies to test if it worked
# table(low_inflation_host_variables$host_has_profile_pic)
#table(high_inflation_host_variables$host_is_superhost)
#table(full_dataset_host_variables$host_identity_verified)




