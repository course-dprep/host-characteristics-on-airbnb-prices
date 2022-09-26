# Are hosts influencing the price?

## Table of content
1. Our project
- Short project description and research motivation
- Research question
- Conceptual model

2. Method
- Datasets
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
will investigate the effect of host characteristics on Airbnb prices. +

Due to recent high inflation rates, it is interesting to compare this effect of host characteristics on price between cities with low inflation and cities with high
inflation. Current inflation in many parts of the world is increasing. This inflation is due to many economies recovering from the COVID recession in 2020.
Additionally this inflation is due to the rising gas prices. This research will use two city subsets namely, a subset of five cities with high inflation rates
consisting of: Istanbul, Rio de Janeiro, Mexico City, Cape Town and Santiago. The subset of five cities with low inflation, consisting out of: Tokyo, Geneva, Beijing,
Bangkok and Athens. To what extent does inflation moderate the effect of host characteristics on the Airbnb prices in these countries? 


### Research question

### Conceptual model


## Method

### Datasets

### Research method


## Data 

### Data exploration

### Data preperation

### Data analysis


## Repository

### Contents

### Structure



## Short project description 
For this teamassignment we are going to investigate data from the Airbnb site. There are different datasets available for a lot of cities worldwide. Each dataset contains information about characteristics of Airbnb's, reviews, prices and more. Since the current inflation in the Netherlands is very high we decided to look at the prices of Airbnb's in Amsterdam. This project will investigate the effect of different host characteristics on the heigt of the prices of an Airbnb. Examples of the characteristics that will be investigated are host_since, host_response_time and host_response_rate. The full regress
ion will be given in the method section.

/ We need to make this up to date /

## Research question
What are the effects of different host characteristics on the prices of Airbnb's in Amsterdam?

/ We need to make this up to date ?

## Research method
This project will use the OLS regression method to examine the price determinants of Airbnb's in Amsterdam. We can use the OLS regression to see whether the relationship between the variables is positive or negative. The dependent variable is the Airbnb price. The independent variables will be host_since, host_response_time, host_response_rate, host_is_superhost, host_has_profile_pic and host_identity_verified. Therefore, the linear regression will be:
price = B0 + B1 * host_since + B2 * host_response_time + B3 * host_response_rate + B4 * host_is_superhost + B5 * host_has_profile_pic + B6 * host_identity_verified. Here, host_is_superhost, host_has_profile_pic and host_identity_verified are dummy variables.

/ We need to make this up to date / 

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


# Example of reproducible research workflow 

This is a basic example repository using Gnu make for a reproducible research workflow, as described in detail here: [tilburgsciencehub.com](http://tilburgsciencehub.com/). 

The main aim of this to have a basic structure, which can be easily adjusted to use in an actual project.  In this example project, the following is done: 
1. Download and prepare data
2. Run some analysis
3. Present results in a final pdf generated using LaTeX

## Dependencies
- R 
- R packages: `install.packages("stargazer")`
- [Gnu Make](https://tilburgsciencehub.com/get/make) 
- [TeX distribution](https://tilburgsciencehub.com/get/latex/?utm_campaign=referral-short)
- For the `makefile` to work, R, Gnu make and the TeX distribution (specifically `pdflatex`) need to be made available in the system path 
- Detailed installation instructions can be found here: [tilburgsciencehub.com](http://tilburgsciencehub.com/)


## Notes
- `make clean` removes all unncessary temporary files. 
- Tested under Linux Mint (should work in any linux distro, as well as on Windows and Mac) 
- IMPORTANT: In `makefile`, when using `\` to split code into multiple lines, no space should follow `\`. Otherwise Gnu make aborts with error 193. 
- Many possible improvements remain. Comments and contributions are welcome!
