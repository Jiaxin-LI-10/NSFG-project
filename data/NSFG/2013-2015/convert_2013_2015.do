
* Convert 2013-2015 fixed-width file to CSV
clear all
set more off

* Read the dictionary file
infile using "data/NSFG/2013-2015/2013_2015_FemPregSetup.dct"

* Save as CSV
export delimited using "temp/data_cleaning/2013_2015_converted.csv", replace

* Display summary
describe
summarize
