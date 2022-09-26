# Download datasets

urls = c('http://data.insideairbnb.com/united-states/ma/boston/2022-06-13/data/listings.csv.gz',
        'http://data.insideairbnb.com/brazil/rj/rio-de-janeiro/2022-06-20/data/listings.csv.gz',
        'http://data.insideairbnb.com/mexico/df/mexico-city/2022-06-21/data/listings.csv.gz')

for (url in urls) {
  filename = paste0(gsub('[^a-zA-Z0-9]', '', url), '.csv') 
  filename = gsub('httpdatainsideairbnbcom', '', filename) 
  download.file(url, destfile = filename) 
}



download.file('http://data.insideairbnb.com/united-states/ma/boston/2022-06-13/data/listings.csv.gz', "Tokyo")
download.file('http://data.insideairbnb.com/brazil/rj/rio-de-janeiro/2022-06-20/data/listings.csv.gz', "Rio")
download.file('http://data.insideairbnb.com/mexico/df/mexico-city/2022-06-21/data/listings.csv.gz', "Mexico")

library(tidyverse)
Tokyo <- read_csv('Tokyo')
Rio <- read.csv('Rio')
Mexico <- read.csv('Mexico')