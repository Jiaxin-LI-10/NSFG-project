
* Convert 2015-2017 fixed-width file to CSV
clear all
set more off

* Read the dictionary file
infile using "data/NSFG/2015-2017/2015_2017_FemPregSetup.dct"

* Save as CSV
export delimited using "temp/data_cleaning/2015_2017_converted.csv", replace

* Display summary
describe
summarize
