# Load packages
library(stargazer)
library(tidyverse)
library(dplyr)
library(ggplot2)
library(readr)

# load 
full_dataset_without_dup <- read.csv("../../gen/data-preparation/output/full_dataset_complete.csv")
high_inflation_without_dup <- read.csv("../../gen/data-preparation/output/high_inflation_complete.csv")
low_inflation_without_dup <- read.csv("../../gen/data-preparation/output/low_inflation_complete.csv")


# Estimate model 1 
r1 = lm(price_in_dollars ~ host_is_superhost +  host_has_profile_pic + host_identity_verified + host_response_time_recoded + 
          host_response_rate_recoded + host_years, low_inflation_without_dup)
summary(r1)

### Regression high inflation
r2 = lm(price_in_dollars ~ host_is_superhost +  host_has_profile_pic + host_identity_verified + host_response_time_recoded + 
          host_response_rate_recoded + host_years, high_inflation_without_dup)
summary(r2)


### Regression high inflation
r3 = lm(price_in_dollars ~ host_is_superhost +  host_has_profile_pic + host_identity_verified + host_response_time_recoded + 
          host_response_rate_recoded + host_years, full_dataset_without_dup)
summary(r3)





### Generating html output 
stargazer(r1, r2, r3, title="Effect of host characteristics on Airbnb prices",
          dep.var.caption = 'Price in dollars',
          dep.var.labels= '',
          column.labels = c('Low inflation', 'High inflation', "Full dataset"),
          covariate.labels = c('Host is superhost', 'Host has profile picture', 'Host identity verified',
                               'Host response within a few hours', 'Host response time within a day',
                               'Host response time is a few days or more', 'Host response rate', 'Host years', 'Constant'),
          notes.label = 'Significance levels',
          type = 'html',
          out='../../gen/analysis/output/model_report_airbnb.html')




