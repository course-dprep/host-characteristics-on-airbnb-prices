######################################
###### 2. DATA TRANSFORMATION ########
######################################

# Read data
full_dataset_cities <- read.csv("../../gen/data-preparation/temp/merged_full_dataset_cities.csv")
high_inflation_dataset <- read.csv("../../gen/data-preparation/temp/merged_high_inflation_dataset.csv")
low_inflation_dataset <- read.csv("../../gen/data-preparation/temp/merged_low_inflation_dataset.csv")


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
variables <- c("host_is_superhost", "host_has_profile_pic", "host_identity_verified")

for (x in variables){
  low_inflation_host_variables[x] <- ifelse(low_inflation_host_variables[x] == "t", 1, 0)
  high_inflation_host_variables[x] <- ifelse(high_inflation_host_variables[x] == "t", 1, 0)
  full_dataset_host_variables[x] <- ifelse(full_dataset_host_variables[x] == "t", 1, 0)
}


# see all possible values of the dummies to test if it worked
# table(low_inflation_host_variables$host_has_profile_pic)
#table(high_inflation_host_variables$host_is_superhost)
#table(full_dataset_host_variables$host_identity_verified)

write_csv(full_dataset_host_variables, "../../gen/data-preparation/temp/transformed_full_dataset_cities.csv")
write_csv(high_inflation_host_variables, "../../gen/data-preparation/temp/transformed_high_inflation_dataset.csv")
write_csv(low_inflation_host_variables, "../../gen/data-preparation/temp/transformed_low_inflation_dataset.csv")




