# Are hosts influencing the price?

## Table of content
[1. Our project](https://github.com/course-dprep/team-assignment-team-6/edit/master/README.md#1-our-project)
- [Short project description and research motivation](https://github.com/course-dprep/team-assignment-team-6/edit/master/README.md#short-project-description-and-research-motivation)
- [Research question](https://github.com/course-dprep/team-assignment-team-6/edit/master/README.md#research-question)
- [Conceptual model](https://github.com/course-dprep/team-assignment-team-6/edit/master/README.md#conceptual-model)
                                                                                                                  
[2. Method](https://github.com/course-dprep/team-assignment-team-6/edit/master/README.md#2-method)
- [Datasets](https://github.com/course-dprep/team-assignment-team-6/edit/master/README.md#datasets)
- [Variables](https://github.com/course-dprep/team-assignment-team-6/edit/master/README.md#variables)
- [Research method](https://github.com/course-dprep/team-assignment-team-6/edit/master/README.md#research-method)

[3. Results and interpretation](https://github.com/course-dprep/team-assignment-team-6/edit/master/README.md#results-and-interpretation)

[4. Repository](https://github.com/course-dprep/team-assignment-team-6/edit/master/README.md#4-repository)
- [Contents](https://github.com/course-dprep/team-assignment-team-6/edit/master/README.md#contents)
- [Structure](https://github.com/course-dprep/team-assignment-team-6/edit/master/README.md#structure)

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
1. Rio de Janeiro, Brazil
2. Mexico City, Mexico
3. Boston, United States
4. Cape Town, South Africa
5. Santiago, Chile

Cities with low inflation:
1. Tokyo, Japan
2. Geneva, Switzerland
3. Beijing, China
4. Bangkok, Thailand
5. Athens, Greece

We combined these seperate datasets into three different bigger datasets: one dataset with all information about the cities with high inflation, one dataset with all information about the cities with low inflation and one general dataset with all information of all cities. The seperate high inflation and low inflation datasets can be used to compare the difference of host characteristics on prices of Airbnb's. The general dataset with all cities included can be used to create a general overview of the effects of different host characteristics on prices of Airbnb's. Later, we will clean these datasets so they can be easily used in our analysis.

### Variables

| **Variable name**             | **Variable explanation**                           |
| ----------------------------- |----------------------------------------------------|
| price                   (Y)   | Price of the Airbnb                                |
| host_since              (X1)  | When the host started the Airbnb                   |
| host_response_time      (X2)  | How fast the host responds                         |
| host_response_rate      (X3)  | How often the host responds                        |
| host_is_superhost       (X4)  | Dummy whether the host is a superhost              |
| host_has_profile_pic    (X5)  | Dummy whether the host has a profile pic           |
| host_identity_verified  (X6)  | Dummy whether the identity of the host is verified |


### Research method

This project will use the OLS regression method to examine the price determinants of Airbnb's in Amsterdam. We can use the OLS regression to see whether the relationship between the variables is positive or negative. The dependent variable is the Airbnb price. The independent variables are given in the table above. The regression is as follows:

*Y = b0 + b1X1 + b2X2 + b3X3 + b4X4 + b5X5 + b6X6*

Here, host_is_superhost, host_has_profile_pic and host_identity_verified are dummy variables.

## 3. Results and interpretation

## 4. Repository

### Contents

### Structure 
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
  

## About
Members of our team: 
- Nynke Voermans
  n.voermans@tilburguniversity.edu
- Nina Verschuuren
  n.a.f.verschuuren@tilburguniversity.edu
- Meggy Lemmens
  m.m.e.lemmens@tilburguniversity.edu
- Amber Kalse
  a.e.s.kalse@tilburguniversity.edu



