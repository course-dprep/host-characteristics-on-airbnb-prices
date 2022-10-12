OUTPUT = ../../gen/analysis/output
INPUT = ../../gen/data-preparation/output

all: $(OUTPUT)/model_report_airbnb.html

$(OUTPUT)/model_report_airbnb.html: analyze.R $(INPUT)/full_dataset_complete.csv $(INPUT)/high_inflation_complete.csv $(INPUT)/low_inflation_complete.csv
	R --vanilla < analyze.R

