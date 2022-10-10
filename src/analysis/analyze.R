# load 
load("./gen/analysis/input/data_cleaned.RData")

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


# see names of coefficients
names(r1$coefficients)
names(r2$coefficients)
names(r3$coefficients)

table(high_inflation_dataset$host_response_time)

library(stargazer)
stargazer(r1, r2, r3, title="Regression Results",
          align=TRUE, dep.var.labels= c("price in dollars"),
          column.labels = c("low inflation", "high inflation", "full dataset"),
          covariate.labels = c("host is superhost", "host has profile picture", "host identity is verified",
                               "host response time (within a few hours)", "host response time within a day",
                               "host response time > a few days", "host response rate", "host years", "Intercept"),
          omit.stat=c("LL","ser","f"), type="html", out="Regression_output.html")


