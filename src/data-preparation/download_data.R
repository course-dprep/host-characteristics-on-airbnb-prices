# Download datasets

urls = c('http://data.insideairbnb.com/united-states/ma/boston/2022-06-13/data/listings.csv.gz',
         'http://data.insideairbnb.com/brazil/rj/rio-de-janeiro/2022-06-20/data/listings.csv.gz',
         'http://data.insideairbnb.com/mexico/df/mexico-city/2022-06-21/data/listings.csv.gz',
         'http://data.insideairbnb.com/south-africa/wc/cape-town/2022-06-22/data/listings.csv.gz',
         'http://data.insideairbnb.com/chile/rm/santiago/2022-06-22/data/listings.csv.gz',
         'http://data.insideairbnb.com/japan/kant%C5%8D/tokyo/2022-06-24/data/listings.csv.gz',
         'http://data.insideairbnb.com/switzerland/geneva/geneva/2022-06-22/data/listings.csv.gz',
         'http://data.insideairbnb.com/china/beijing/beijing/2022-06-21/data/listings.csv.gz',
         'http://data.insideairbnb.com/thailand/central-thailand/bangkok/2022-06-20/data/listings.csv.gz',
         'http://data.insideairbnb.com/greece/attica/athens/2022-06-17/data/listings.csv.gz')

for (url in urls) {
  filename = paste0(gsub('[^a-z]', '', url), '.csv') 
  filename = gsub('httpdatainsideairbnbcom', '', filename)
  filename = gsub('datalistingscsvgz', '', filename)
  download.file(url, destfile = filename) 
}



