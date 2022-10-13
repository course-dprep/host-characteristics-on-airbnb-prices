==========================================================
          D A T A S E T   D E S C R I P T I O N
==========================================================

Name of the dataset: low_inflation_dataset

----------------------------------------------------------

1. Motivation of data collection (why was the data collected?) 

Due to inflation it was valuable to look at the prices of Airbnb's in two subsets high and low inflation. Data from the five highest and five lowest inflation cities are collected. The ranking is based on the highest and lowest inflation cities which have available data on the Inside Airbnb site. 


2. Composition of dataset (what's in the data?)

low_inflation_dataset consists out of 5 lowest inflation cities. The variables we used are the host characteristics: host_since, host_response_time, host_response_rate, hoste_is_super_host, host_has_profile_pic, host_idendity_verified


3. Collection process (how was the data collected?)

The cities in this research are chosen based on www.theglobaleconomy.com 
Data is downloaded from the web Airbnbinside. See src/data-preparation/download_data.R. 


4. Preprocessing/cleaning/labeling (how was the data cleaned, if at all?)

Data from all 10 cities is being downloaded from Airbnbinside. These datasets contain the listing data. 
This data is added into two datasets --> low_inflation_dataset and high_inflation_dataset.
Additionally there is a dataset containing information of all 10 cities full_dataset_cities

The data is cleaned by linking matching variables and changing variables to dummy variables and changing the dates.

5. Uses (how is the dataset intended to be used?)

Used for groupproject Skills: Data Prep.&Workflow Mgt (Fall)

6. Distribution (how will the dataset be made available to others?)

Raw data is available online for everyone to download.

7. Maintenance (will the dataset be maintained? how? by whom?)

No.

