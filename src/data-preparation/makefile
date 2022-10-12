DATA = ../../data
TEMP = ../../gen/data-preparation/temp
OUTPUT = ../../gen/data-preparation/output

all: $(OUTPUT)/full_dataset_complete.csv $(OUTPUT)/high_inflation_complete.csv $(OUTPUT)/low_inflation_complete.csv

$(DATA)/listings-united-states.csv.gz $(DATA)/listings-brazil.csv.gz $(DATA)/listings-mexico.csv.gz $(DATA)/listings-south-africa.csv.gz $(DATA)/listings-chile.csv.gz $(DATA)/listings-japan.csv.gz $(DATA)/listings-switzerland.csv.gz $(DATA)/listings-china.csv.gz $(DATA)/listings-thailand.csv.gz $(DATA)/listings-greece.csv.gz: download_data.R
	R --vanilla < download_data.R

$(TEMP)/merged_full_dataset_cities.csv $(TEMP)/merged_high_inflation_dataset.csv $(TEMP)/merged_low_inflation_dataset.csv: merge_data.R $(DATA)/listings-united-states.csv.gz $(DATA)/listings-brazil.csv.gz $(DATA)/listings-mexico.csv.gz $(DATA)/listings-south-africa.csv.gz $(DATA)/listings-chile.csv.gz $(DATA)/listings-japan.csv.gz $(DATA)/listings-switzerland.csv.gz $(DATA)/listings-china.csv.gz $(DATA)/listings-thailand.csv.gz $(DATA)/listings-greece.csv.gz merge_data.R
	R --vanilla < merge_data.R

$(TEMP)/transformed_full_dataset_cities.csv $(TEMP)/transformed_high_inflation_dataset.csv $(TEMP)/transformed_low_inflation_dataset.csv: data_transformation.R $(TEMP)/merged_full_dataset_cities.csv $(TEMP)/merged_high_inflation_dataset.csv $(TEMP)/merged_low_inflation_dataset.csv
	R --vanilla < data_transformation.R

$(OUTPUT)/full_dataset_complete.csv $(OUTPUT)/high_inflation_complete.csv $(OUTPUT)/low_inflation_complete.csv: clean_data.R $(TEMP)/transformed_full_dataset_cities.csv $(TEMP)/transformed_high_inflation_dataset.csv $(TEMP)/transformed_low_inflation_dataset.csv
	R --vanilla < clean_data.R

clean:
	R -e "unlink('../../data/.')"
	R -e "unlink('../../gen/data-preparation/temp/.')"