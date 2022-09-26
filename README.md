# Are hosts influencing the price?

## Table of content
1. Our project
- Short project description and research motivation
- Research question
- Conceptual model

2. Method
- Datasets
- Variables
- Research method

3. Data preperation and analysis
- Data exploration
- Data preperation
- Data analysis

4. Repository
- Contents
- Structure

## 1. Our project

### Short project description and research motivation

Nowadays the Airbnb platform is growing with a big supply of accommodations. 
Therefore, people start looking more critically at different features of Airbnb’s. For example, the quantity of rooms, prices and host characteristics. This research
will investigate the effect of host characteristics on Airbnb prices. 

Due to recent high inflation rates, it is interesting to compare this effect of host characteristics on price between cities with low inflation and cities with high
inflation. Current inflation in many parts of the world is increasing. This inflation is due to many economies recovering from the COVID recession in 2020.
Additionally this inflation is due to the rising gas prices. This research will use two city subsets namely, a subset of five cities with high inflation rates
consisting of: Rio de Janeiro, Mexico City, Boston, Cape Town and Santiago. The subset of five cities with low inflation, consisting out of: Tokyo, Geneva, Beijing,
Bangkok and Athens. To what extent does inflation moderate the effect of host characteristics on the Airbnb prices in these countries? 


### Research question

What is the effect of different host characteristics on Airbnb prices, moderated by high or low inflation?

4 different subquestions:
1. What is the effect of different host characteristics on Airbnb prices in cities with high inflation?
2. What is the effect of different host characteristics on Airbnb prices in cities with low inflation?
3. What is the difference between the effect of different host characteristics on Airbnb prices in cities with high inflation and cities with low inflation?
4. What is the general effect of different host characteristics on Airbnb prices?

### Conceptual model
![image](https://user-images.githubusercontent.com/62336902/192232633-675a6e58-f2f6-495f-84c4-18f69bdccef7.png)


## 2. Method

### Datasets

In our research, we decided that we want to compare the effect of host characteristics on prices between cities with high inflation and cities with low inflation. To select the cities included in the dataset, we used an overview of inflation by country around the world in the past years from The Global Economy (https://www.theglobaleconomy.com/rankings/inflation/). We compared these countries with the cities of which datasets were available, and selected the following cities:

Cities with high inflation:
1. Rio de Janeiro
2. Mexico City
3. Boston
4. Cape Town
5. Santiago

Cities with low inflation:
1. Tokyo
2. Geneva
3. Beijing
4. Bangkok
5. Athens

We combined these seperate datasets into three different bigger datasets: one dataset with all information about the cities with high inflation, one dataset with all information about the cities with low inflation and one general dataset with all information of all cities. The seperate high inflation and low inflation datasets can be used to compare the difference of host characteristics on prices of Airbnb's. The general dataset with all cities included can be used to create a general overview of the effects of different host characteristics on prices of Airbnb's. Later, we will clean these datasets so they can be easily used in our analysis.

### Variables

### Research method

This project will use the OLS regression method to examine the price determinants of Airbnb's in Amsterdam. We can use the OLS regression to see whether the relationship between the variables is positive or negative. The dependent variable is the Airbnb price. The independent variables will be host_since, host_response_time, host_response_rate, host_is_superhost, host_has_profile_pic and host_identity_verified. Therefore, the linear regression will be:
price = B0 + B1 * host_since + B2 * host_response_time + B3 * host_response_rate + B4 * host_is_superhost + B5 * host_has_profile_pic + B6 * host_identity_verified. Here, host_is_superhost, host_has_profile_pic and host_identity_verified are dummy variables.


## 3. Data 

### Data exploration

### Data preperation

### Data analysis


## 4. Repository

### Contents

### Structure


## Structure of the repository
README.md
- data
- gen 
  * analysis
  * data-preparation
  * paper
- src
  * analysis
  * data-preparation
  * paper



