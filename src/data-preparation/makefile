DATA = ../../data
TEMP = ../../gen/data-preparation/temp

All: $(DATA)/listings-united-states.csv.gz $(DATA)/listings-brazil.csv.gz $(DATA)/listings-mexico.csv.gz $(DATA)/listings-south-africa.csv.gz $(DATA)/listings-chile.csv.gz $(DATA)/listings-japan.csv.gz $(DATA)/listings-switzerland.csv.gz $(DATA)/listings-china.csv.gz $(DATA)/listings-thailand.csv.gz $(DATA)/listings-greece.csv.gz $(TEMP)/merged_full_dataset_cities.csv $(TEMP)/merged_high_inflation_cities.csv $(TEMP)/merged_low_inflation_cities.csv $(TEMP)/full_dataset_host_variables.csv $(TEMP)/high_inflation_host_variables.csv $(TEMP)/low_inflation_host_variables.csv $(TEMP)/full_dataset_host_variables_without_NA.csv $(TEMP)/high_inflation_host_variables_without_NA.csv $(TEMP)/low_inflation_host_variables_without_NA.csv


$(DATA)/listings-united-states.csv.gz $(DATA)/listings-brazil.csv.gz $(DATA)/listings-mexico.csv.gz $(DATA)/listings-south-africa.csv.gz $(DATA)/listings-chile.csv.gz $(DATA)/listings-japan.csv.gz $(DATA)/listings-switzerland.csv.gz $(DATA)/listings-china.csv.gz $(DATA)/listings-thailand.csv.gz $(DATA)/listings-greece.csv.gz: download_data.R
	R --vanilla < download_data.R

$(TEMP)/merged_full_dataset_cities.csv $(TEMP)/merged_high_inflation_dataset.csv $(TEMP)/merged_low_inflation_dataset.csv: merge_data.R
	R --vanilla < merge_data.R

$(TEMP)/full_dataset_host_variables.csv $(TEMP)/high_inflation_host_variables.csv $(TEMP)/low_inflation_host_variables.csv: clean_data.R
	R --vanilla < clean_data.R

$(TEMP)/full_dataset_host_variables_without_NA.csv $(TEMP)/high_inflation_host_variables_without_NA.csv $(TEMP)/low_inflation_host_variables_without_NA.csv: clean_data.R
	R --vanilla < clean_data.R