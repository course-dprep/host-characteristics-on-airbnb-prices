# The effect of host characteristics on prices of Airbnb's 
![Screenshot 2022-10-13 at 20 18 19](https://user-images.githubusercontent.com/112802090/195675185-14e95cef-77c5-42ca-bdbc-858bd513b24f.png)

### Are host characteristics influencing the price?

## Table of content
[1. Our project](https://github.com/course-dprep/team-assignment-team-6#1-our-project)
- [Short project description and research motivation](https://github.com/course-dprep/team-assignment-team-6#short-project-description-and-research-motivation)
- [Research question](https://github.com/course-dprep/team-assignment-team-6#research-question)
- [Conceptual model](https://github.com/course-dprep/team-assignment-team-6#conceptual-model)
                                                                                                                  
[2. Method](https://github.com/course-dprep/team-assignment-team-6#2-method)
- [Datasets](https://github.com/course-dprep/team-assignment-team-6#datasets)
- [Variables](https://github.com/course-dprep/team-assignment-team-6#variables)
- [Research method](https://github.com/course-dprep/team-assignment-team-6#research-method)

[3. Results and interpretation](https://github.com/course-dprep/team-assignment-team-6#3-results-and-interpretation)

[4. Repository](https://github.com/course-dprep/team-assignment-team-6/master/README.md#4-repository)
- [Structure](https://github.com/course-dprep/team-assignment-team-6#structure)

[5. Running instructions](https://github.com/course-dprep/team-assignment-team-6#5-running-instructions)
- [Software](https://github.com/course-dprep/team-assignment-team-6#software)
- [Running the code](https://github.com/course-dprep/team-assignment-team-6#running-the-code)

[6. More resources](https://github.com/course-dprep/team-assignment-team-6#6-more-rescources)

[7. About](https://github.com/course-dprep/team-assignment-team-6#7-about)


## 1. Our project

### Short project description and research motivation

Nowadays the Airbnb platform is growing with a big supply of accommodations. 
Therefore, people start looking more critically at different features of Airbnb’s. For example, the quantity of rooms, prices and host characteristics. This research
will investigate the effect of host characteristics on Airbnb prices. 

Due to recent high inflation rates, it is interesting to compare this effect of host characteristics on price between cities with low inflation and cities with high
inflation. Currently, inflation in many parts of the world is increasing. This inflation is due to many economies recovering from the COVID recession in 2020.
Additionally this inflation is due to the rising gas prices. This research will use two city subsets, namely a subset of five cities with high inflation rates
consisting of: Rio de Janeiro, Mexico City, Boston, Cape Town and Santiago and a subset of five cities with low inflation, consisting out of: Tokyo, Geneva, Beijing,
Bangkok and Athens. These cities were selected based on inflation data from the past few years from (https://www.theglobaleconomy.com/rankings/inflation/).  To what extent does inflation moderate the effect of host characteristics on the Airbnb prices in these countries? 

### Research question

What is the effect of different host characteristics on Airbnb prices, moderated by high or low inflation?

4 different subquestions:
1. What is the effect of different host characteristics on Airbnb prices in cities with low inflation?
2. What is the effect of different host characteristics on Airbnb prices in cities with high inflation?
3. What is the difference between the effect of different host characteristics on Airbnb prices in cities with high inflation and cities with low inflation?
4. What is the general effect of different host characteristics on Airbnb prices?

### Conceptual model
![image](https://user-images.githubusercontent.com/62336902/192232633-675a6e58-f2f6-495f-84c4-18f69bdccef7.png)


## 2. Method

### Datasets

In our research, we decided that we want to compare the effect of host characteristics on prices between cities with high inflation and cities with low inflation. To select the cities included in the dataset, we used an overview of inflation by country around the world in the past years from The Global Economy (https://www.theglobaleconomy.com/rankings/inflation/). We compared these countries with the cities of which datasets were available, and selected the following cities:

Cities with low inflation:
1. Tokyo, Japan
2. Geneva, Switzerland
3. Beijing, China
4. Bangkok, Thailand
5. Athens, Greece

Cities with high inflation:
1. Rio de Janeiro, Brazil
2. Mexico City, Mexico
3. Boston, United States
4. Cape Town, South Africa
5. Santiago, Chile

We combined these seperate datasets into three different bigger datasets: one dataset with all information about the cities with low inflation, one dataset with all information about the cities with high inflation and one general dataset with all information of all cities. The seperate low inflation and high inflation datasets can be used to compare the difference of host characteristics on prices of Airbnb's. The general dataset with all cities included can be used to create a general overview of the effects of different host characteristics on prices of Airbnb's. Later, we will clean these datasets so they can be easily used in our analysis.

### Variables

In total, the datasets consist of 75 different variables. However, for this research, only the specific variables about host characteristics and prices of the Airbnb's are relevant. The following variables in the datasets will be used and analyzed in our research:

| **Variable name**                        | **Variable explanation**                           |
| ---------------------------------------- |----------------------------------------------------|
| price_in_dollars                   (Y)   | Price of the Airbnb in dollars                     |
| host_years                         (X1)  | How many years the host has been active now        |
| host_response_time_recoded         (X2)  | How fast the host responds rated from 1 to 4       |
| host_response_rate_recoded         (X3)  | How often the host responds rated from 0 to 1      |
| host_is_superhost                  (X4)  | Dummy whether the host is a superhost              |
| host_has_profile_pic               (X5)  | Dummy whether the host has a profile pic           |
| host_identity_verified             (X6)  | Dummy whether the identity of the host is verified |

### Research method

This project will use the Ordinary Least Square (OLS) regression method to examine the effect of different host characteristics of Airbnb's in low and high inflation countries. We can use the OLS regression to see whether the relationship between the variables is positive or negative. The dependent variable is the Airbnb price in dollars. The independent variables are given in the table above, notated by X. The regression is as follows:

*Y = b0 + b1X1 + b2X2 + b3X3 + b4X4 + b5X5 + b6X6*

Here, host_is_superhost, host_has_profile_pic and host_identity_verified are dummy variables.


## 3. Results and interpretation
To investigate the effect of host characteristics (independent variables) on prices (dependent variable) between cities with low inflation or high inflation, we conducted a linear regression for the low inflation, high inflation and full datasests. The output of the regressions can be found below: 

![Screenshot 2022-10-13 at 20 19 53](https://user-images.githubusercontent.com/112802090/195675513-b155a2c2-0ef6-4c5e-a299-be5b6a53b926.png)

The results of the low inflation regression (1) show that the host_identity_verified, host_response_time_recoded and host_years have a significant effect on the price. Host_identity_verified has a positive effect on the price of cities with low inflation. This indicates that when the host is identified the price goes up. If the host identity is verified, it can increase trust and the price can go up. However, the host_response_time_recoded and host_years have a negative effect on the price. This means that when the host response time goes up, the price goes down. Furthermore, it shows that if the host has been a host for a longer time, the price goes down. 

The results of the high_inflation regression (2) show that host_has_profile_pic, host_identity_verified, host_response_time_recorded, host_response_rate_recorded and host_years have a significant influence on the price of the listing. So, five of the six host characteristics have a significant influence on price. However, the relationship between host_has_profile_pic and price is negative. Meaning, when the host has a profile pic the price of the listing decreases. This seems unexpected. Our perception would be that a profile pic would increase trust towards the host and would therefore allow for a higher price. The same goes for host_response_rate_recorded. This relationship is negative as well, which is unexpected as well. Our perception would again be that a fast response would ensure trust and would be perceived as positive and therefore allow for a higher price. The other three host characteristics do have a positive relationship with price. Meaning if the host satisfies the characteristic the price of the listing increases. This seems logical, because all the characteristics stand for things that should increase trust and would be perceived as positive.

When comparing the results of low inflation cities with high inflation cities, we see that there are many more host characteristics that have a significant effect on price in high inflation cities. This may be due to the fact that prices rise in cities with high inflation. Everything becomes more expensive so in general more factors have an impact on the price. Host characteristics might then be more important in cities with high inflation than in cities with low inflation. 

The results of the full dataset regression (3) show the overall effect of host characteristics on Airbnb's price. Generally, four out of six characteristics have a significant effect on price. Thus, we can conclude from this study that host characteristics have an effect on prices. However, in the high inflation cities, host characteristics have a higher effect than in the low inflation cities. 


## 4. Repository overview

### Structure 

├── README.md
├── data
├── gen
│   ├── analysis
│   ├── data-preparation
│   └── paper
└── src
   ├── analysis
   ├── data-preparation
   └── paper

## 5. Running instructions
Explain to potential users how to run/replicate your workflow. If necessary, touch upon the required input data, which secret credentials are required (and how to obtain them), which software tools are needed to run the workflow (including links to the installation instructions), and how to run the workflow. --> avcp

### Software
- Make: [Click here to see how to install Make](https://tilburgsciencehub.com/building-blocks/configure-your-computer/automation-and-workflows/make/) 
- R and RStudio: [Click here to see how to install R and RStudio](https://tilburgsciencehub.com/building-blocks/configure-your-computer/statistics-and-computation/r/)

### Running the code

NOG TOEVOEGEN 


## 6. More rescources
- https://www.theglobaleconomy.com/rankings/inflation/


## 7. About
This project is conducted for the Data Preparation and Workflow Management course at Tilburg University. The members of our team are:
- Nynke Voermans
  n.voermans@tilburguniversity.edu
- Nina Verschuuren
  n.a.f.verschuuren@tilburguniversity.edu
- Meggy Lemmens
  m.m.e.lemmens@tilburguniversity.edu
- Amber Kalse
  a.e.s.kalse@tilburguniversity.edu



