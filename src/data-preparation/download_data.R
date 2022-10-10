dir.create('../../data')

# creating a list with the download link and filenames of the raw data 
files = list(c(url='http://data.insideairbnb.com/united-states/ma/boston/2022-06-13/data/listings.csv.gz',
               fn='listings-united-states.csv.gz'),
             c(url='http://data.insideairbnb.com/brazil/rj/rio-de-janeiro/2022-06-20/data/listings.csv.gz',
               fn='listings-brazil.csv.gz'),
             c(url='http://data.insideairbnb.com/mexico/df/mexico-city/2022-06-21/data/listings.csv.gz',
               fn='listings-mexico.csv.gz'),
             c(url='http://data.insideairbnb.com/south-africa/wc/cape-town/2022-06-22/data/listings.csv.gz',
               fn='listings-south-africa.csv.gz'),
             c(url='http://data.insideairbnb.com/chile/rm/santiago/2022-06-22/data/listings.csv.gz',
               fn='listings-chile.csv.gz'),
             c(url='http://data.insideairbnb.com/japan/kant%C5%8D/tokyo/2022-06-24/data/listings.csv.gz',
               fn='listings-japan.csv.gz'),
             c(url='http://data.insideairbnb.com/switzerland/geneva/geneva/2022-06-22/data/listings.csv.gz',
               fn='listings-switzerland.csv.gz'),
             c(url='http://data.insideairbnb.com/china/beijing/beijing/2022-06-21/data/listings.csv.gz',
               fn='listings-china.csv.gz'),
             c(url='http://data.insideairbnb.com/thailand/central-thailand/bangkok/2022-06-20/data/listings.csv.gz',
               fn='listings-thailand.csv.gz'),
             c(url='http://data.insideairbnb.com/greece/attica/athens/2022-06-17/data/listings.csv.gz',
               fn='listings-greece.csv.gz')
)

# looping over the list to download and save the file in the data folder
for (item in files) {
  
  download.file(item['url'], paste0('../../data/', item['fn']))
}