
* Convert 2017-2019 fixed-width file to CSV
clear all
set more off

* Read the dictionary file
infile using "data/NSFG/2017-2019/2017_2019_FemPregSetup.dct"

* Save as CSV
export delimited using "temp/data_cleaning/2017_2019_converted.csv", replace

* Display summary
describe
summarize
