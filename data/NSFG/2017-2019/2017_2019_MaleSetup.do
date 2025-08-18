/**************************************************************************
 |                                                                         
 |           NATIONAL SURVEY OF FAMILY GROWTH (NSFG), 2017-2019
 |
 |                       STATA Male Data Setup File
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do nsfg_male_setup.do)
 |
 **************************************************************************/


set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "data-filename" ==> The name of data file downloaded from NCHS
        "dictionary-filename" ==> The name of the dictionary file downloaded.
        "stata-datafile" ==> The name you wish to call your Stata data file.

   Note:  We assume that the raw data, dictionary, and setup (this do file) all
          reside in the same directory (or folder).  If that is not the case
          you will need to include paths as well as filenames in the macros.

********************************************************/

local raw_data "data-filename"
local dict "dictionary-filename"
local outfile "stata-datafile"

/********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using (`raw_data') clear


/*********************************************************

Section 3: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Survey of Family Growth (NSFG), 2017-2019"

#delimit ;
 label define rscrninf
   1 "Yes"
   5 "No";

 label define rscrage
  15 "15 years"
  16 "16 years"
  17 "17 years"
  18 "18 years"
  19 "19 years"
  20 "20 years"
  21 "21 years"
  22 "22 years"
  23 "23 years"
  24 "24 years"
  25 "25 years"
  26 "26 years"
  27 "27 years"
  28 "28 years"
  29 "29 years"
  30 "30 years"
  31 "31 years"
  32 "32 years"
  33 "33 years"
  34 "34 years"
  35 "35 years"
  36 "36 years"
  37 "37 years"
  38 "38 years"
  39 "39 years"
  40 "40 years"
  41 "41 years"
  42 "42 years"
  43 "43 years"
  44 "44 years"
  45 "45 years"
  46 "46 years"
  47 "47 years"
  48 "48 years"
  49 "49 years";

 label define rscrhisp
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define rscrrace
   1 "Other race groups"
   2 "Black or African American"
   3 "White"
   4 "Hispanic"
   8 "Refused"
   9 "Don't know";

 label define AGE_A
  15 "15 years"
  16 "16 years"
  17 "17 years"
  18 "18 years"
  19 "19 years"
  20 "20 years"
  21 "21 years"
  22 "22 years"
  23 "23 years"
  24 "24 years"
  25 "25 years"
  26 "26 years"
  27 "27 years"
  28 "28 years"
  29 "29 years"
  30 "30 years"
  31 "31 years"
  32 "32 years"
  33 "33 years"
  34 "34 years"
  35 "35 years"
  36 "36 years"
  37 "37 years"
  38 "38 years"
  39 "39 years"
  40 "40 years"
  41 "41 years"
  42 "42 years"
  43 "43 years"
  44 "44 years"
  45 "45 years"
  46 "46 years"
  47 "47 years"
  48 "48 years"
  98 "Refused"
  99 "Don't know";

 label define AGE_R
  15 "15 years"
  16 "16 years"
  17 "17 years"
  18 "18 years"
  19 "19 years"
  20 "20 years"
  21 "21 years"
  22 "22 years"
  23 "23 years"
  24 "24 years"
  25 "25 years"
  26 "26 years"
  27 "27 years"
  28 "28 years"
  29 "29 years"
  30 "30 years"
  31 "31 years"
  32 "32 years"
  33 "33 years"
  34 "34 years"
  35 "35 years"
  36 "36 years"
  37 "37 years"
  38 "38 years"
  39 "39 years"
  40 "40 years"
  41 "41 years"
  42 "42 years"
  43 "43 years"
  44 "44 years"
  45 "45 years"
  46 "46 years"
  47 "47 years"
  48 "48 years"
  98 "Refused"
  99 "Don't know";

 label define agescrn
  15 "15 years"
  16 "16 years"
  17 "17 years"
  18 "18 years"
  19 "19 years"
  20 "20 years"
  21 "21 years"
  22 "22 years"
  23 "23 years"
  24 "24 years"
  25 "25 years"
  26 "26 years"
  27 "27 years"
  28 "28 years"
  29 "29 years"
  30 "30 years"
  31 "31 years"
  32 "32 years"
  33 "33 years"
  34 "34 years"
  35 "35 years"
  36 "36 years"
  37 "37 years"
  38 "38 years"
  39 "39 years"
  40 "40 years"
  41 "41 years"
  42 "42 years"
  43 "43 years"
  44 "44 years"
  45 "45 years"
  46 "46 years"
  47 "47 years"
  48 "48 years"
  49 "49 years";

 label define hisp
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define hispgrp
   1 "Mexican, Mexican American, or Chicano, only"
   2 "All other Hispanic or Latino groups, including mulitple responses"
   8 "Refused"
   9 "Don't know";

 label define PRIMLANG1
   1 "English"
   2 "Spanish"
   7 "Other"
   8 "Refused"
   9 "Don't know";

 label define PRIMLANG2
   1 "English"
   2 "Spanish"
   7 "Other"
   8 "Refused"
   9 "Don't know";

 label define PRIMLANG3
   1 "English"
   2 "Spanish"
   7 "Other"
   8 "Refused"
   9 "Don't know";

 label define roscnt
   1 "1 HOUSEHOLD MEMBER"
   2 "2 HOUSEHOLD MEMBERS"
   3 "3 HOUSEHOLD MEMBERS"
   4 "4 HOUSEHOLD MEMBERS"
   5 "5 HOUSEHOLD MEMBERS"
   6 "6 HOUSEHOLD MEMBERS"
   7 "7 HOUSEHOLD MEMBERS"
   8 "8 OR MORE HOUSEHOLD MEMBERS"
  98 "Refused"
  99 "Don't know";

 label define marstat
   1 "Married to a person of the opposite sex"
   2 "Not married but living together with a partner of the opposite sex"
   3 "Widowed"
   4 "Divorced or annulled"
   5 "Separated, because you and your spouse are not getting along"
   6 "Never been married"
   8 "Refused"
   9 "Don't know";

 label define fmarstat
   3 "Widowed"
   4 "Divorced or annulled"
   5 "Separated, because you and your spouse are not getting along"
   6 "Never been married"
   8 "Refused"
   9 "Don't know";

 label define fmarit
   0 "DK/RF"
   1 "married"
   2 "widowed"
   3 "divorced"
   4 "separated"
   5 "NEVER MARRIED";

 label define evrmarry
   0 "NEVER MARRIED"
   1 "EVER MARRIED";

 label define wplocale
   1 "In household"
   2 "Lives elsewhere"
   8 "Refused"
   9 "Don't know";

 label define womrel
   1 "wife"
   2 "partner";

 label define goschol
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define vaca
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define higrade
   9 "9th grade or less"
  10 "10th grade"
  11 "11th grade"
  12 "12th grade"
  13 "1 year of college or less"
  14 "2 years of college"
  15 "3 years of college"
  16 "4 years of college/grad school"
  17 "5 years of college/grad school"
  18 "6 years of college/grad school"
  19 "7 or more years of college and/or grad school"
  98 "Refused"
  99 "Don't know";

 label define compgrd
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define dipged
   1 "High school diploma"
   2 "GED only"
   3 "Both"
   5 "Neither"
   8 "Refused"
   9 "Don't know";

 label define EARNHS_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define hischgrd
   1 "1st grade"
   2 "2nd grade"
   3 "3rd grade"
   4 "4th grade"
   5 "5th grade"
   6 "6th grade"
   7 "7th grade"
   8 "8th grade"
   9 "9th grade"
  10 "10th grade"
  11 "11th grade"
  12 "12th grade"
  98 "Refused"
  99 "Don't know";

 label define lstgrade
   9 "9TH GRADE OR LESS"
  10 "10TH GRADE"
  11 "11TH GRADE"
  12 "12TH GRADE"
  13 "1 YEAR OF COLLEGE/GRAD SCHOOL"
  14 "2 YEARS OF COLLEGE/GRAD SCHOOL"
  15 "3 YEARS OF COLLEGE/GRAD SCHOOL"
  16 "4 YEARS OF COLLEGE/GRAD SCHOOL"
  17 "5 YEARS OF COLLEGE/GRAD SCHOOL"
  18 "6 YEARS OF COLLEGE/GRAD SCHOOL"
  19 "7+ YEARS OF COLLEGE/GRAD SCHOOL"
  97 "Not ascertained";

 label define MYSCHOL_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define havedeg
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define degrees
   1 "Associate's degree"
   2 "Bachelor's degree"
   3 "Master's degree"
   4 "Doctorate degree"
   5 "Professional school degree"
   8 "Refused"
   9 "Don't know";

 label define EARNBA_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define expschl
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define expgrade
  12 "12th grade or less"
  13 "1 year of college or less"
  14 "2 years of college"
  15 "3 years of college"
  16 "4 years of college/grad school"
  17 "5 years of college/grad school"
  18 "6 years of college/grad school"
  19 "7 or more years of college and/or grad school"
  98 "Refused"
  99 "Don't know";

 label define wthparnw
   1 "Both biological or adoptive parents"
   2 "Other or no parental figures"
   8 "Refused"
   9 "Don't know";

 label define onown
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define ONOWN18
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define intact
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define parmarr
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define INTACT18
   1 "Yes"
   2 "No"
   8 "Refused"
   9 "Don't know";

 label define LVSIT14F
   1 "Biological mother or adoptive mother"
   2 "Other mother figure"
   3 "No mother figure"
   8 "Refused"
   9 "Don't know";

 label define LVSIT14M
   1 "Biological father or adoptive father"
   2 "Step-father"
   3 "No father figure"
   4 "Other father figure"
   8 "Refused"
   9 "Don't know";

 label define womrasdu
   1 "Biological mother"
   2 "Other mother figure"
   3 "No mother figure"
   8 "Refused"
   9 "Don't know";

 label define momdegre
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college, including 2-year degrees"
   4 "Bachelor's degree or higher"
   8 "Refused"
   9 "Don't know";

 label define momworkd
   1 "Full-time"
   2 "Part-time"
   3 "Equal amounts full-time and part-time"
   4 "Not at all (for pay)"
   8 "Refused"
   9 "Don't know";

 label define momfstch
   1 "LESS THAN 18 YEARS"
   2 "18-19 YEARS"
   3 "20-24 YEARS"
   4 "25-29 YEARS"
   5 "30 OR OLDER"
  96 "MOTHER-FIGURE HAD NO CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define MOM18
   1 "Under 18"
   2 "18-19"
   3 "20-24"
   4 "25 or older"
   8 "Refused"
   9 "Don't know";

 label define manrasdu
   1 "Biological father or adoptive father"
   2 "Step-father"
   3 "No father figure"
   4 "Other father figure"
   8 "Refused"
   9 "Don't know";

 label define fosterev
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define mnyfster
   1 "1 setting or location"
   2 "2 settings or locations"
   3 "3 settings or locations"
   4 "4 settings or locations"
   5 "5 or more settings or locations"
  98 "Refused"
  99 "Don't know";

 label define durfster
   1 "Less than six months"
   2 "At least six months, but less than a year"
   3 "At least a year but less than two years"
   4 "At least two years but less than three years"
   5 "Three years or more"
   8 "Refused"
   9 "Don't know";

 label define agefster
   1 "UNDER 6 YEARS"
   2 "6-12 YEARS"
   3 "13-17 YEARS"
   4 "18 YEARS AND OLDER"
  98 "Refused"
  99 "Don't know";

 label define timesmar
   1 "1 TIME"
   2 "2 TIMES"
   3 "3 TIMES"
   4 "4 TIMES"
   5 "5 TIMES"
  98 "Refused"
  99 "Don't know";

 label define EVCOHAB1
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define NUMCOH1
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS OR MORE"
  98 "Refused"
  99 "Don't know";

 label define EVCOHAB2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define NUMCOH2
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS OR MORE"
  98 "Refused"
  99 "Don't know";

 label define evrcohab
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define numwife
   0 "NEVER MARRIED"
   1 "1 TIME MARRIED"
   2 "2 TIMES MARRIED"
   3 "3 TIMES MARRIED"
   4 "4 TIMES MARRIED"
   5 "5 TIMES MARRIED"
 998 "Refused"
 999 "Don't know";

 label define numcohab
   0 "NO PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS OR MORE"
 998 "Refused"
 999 "Don't know";

 label define eversex
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define rhadsex
   0 "don't know/refused"
   1 "yes"
   2 "no";

 label define sxmtonce
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define ynosex
   1 "Against religion or morals"
   2 "Don't want to get a female pregnant"
   3 "Don't want to get a sexually transmitted disease"
   4 "Haven't found the right person yet"
   5 "In a relationship, but waiting for the right time"
   6 "Other"
   8 "Refused"
   9 "Don't know";

 label define TALKPAR1
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom"
   8 "Waiting until marriage to have sex"
  95 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define TALKPAR2
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom"
   8 "Waiting until marriage to have sex"
  95 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define TALKPAR3
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom"
   8 "Waiting until marriage to have sex"
  95 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define TALKPAR4
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom"
   8 "Waiting until marriage to have sex"
  95 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define TALKPAR5
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom"
   8 "Waiting until marriage to have sex"
  95 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define TALKPAR6
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom"
   8 "Waiting until marriage to have sex"
  95 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define TALKPAR7
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom"
   8 "Waiting until marriage to have sex"
  95 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define sedno
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define SEDNOLC1
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDNOLC2
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDNOLC3
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDNOLC4
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define sednog
   1 "1st grade"
   2 "2nd grade"
   3 "3rd grade"
   4 "4th grade"
   5 "5th grade"
   6 "6th grade"
   7 "7th grade"
   8 "8th grade"
   9 "9th grade"
  10 "10th grade"
  11 "11th grade"
  12 "12th grade"
  13 "1st year of college"
  14 "2nd year of college"
  15 "3rd year of college"
  16 "4th year of college"
  96 "Not in school when received instruction"
  98 "Refused"
  99 "Don't know";

 label define sednosx
   1 "Before"
   2 "After"
   8 "Refused"
   9 "Don't know";

 label define sedbc
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define SEDBCLC1
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDBCLC2
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDBCLC3
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDBCLC4
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define sedbcg
   1 "1st grade"
   2 "2nd grade"
   3 "3rd grade"
   4 "4th grade"
   5 "5th grade"
   6 "6th grade"
   7 "7th grade"
   8 "8th grade"
   9 "9th grade"
  10 "10th grade"
  11 "11th grade"
  12 "12th grade"
  13 "1st year of college"
  14 "2nd year of college"
  15 "3rd year of college"
  16 "4th year of college"
  96 "Not in school when received instruction"
  98 "Refused"
  99 "Don't know";

 label define sedbcsx
   1 "Before"
   2 "After"
   8 "Refused"
   9 "Don't know";

 label define sedwhbc
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define SEDWHLC1
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDWHLC2
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDWHLC3
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDWHLC4
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define sedwhbcg
   1 "1st grade"
   2 "2nd grade"
   3 "3rd grade"
   4 "4th grade"
   5 "5th grade"
   6 "6th grade"
   7 "7th grade"
   8 "8th grade"
   9 "9th grade"
  10 "10th grade"
  11 "11th grade"
  12 "12th grade"
  13 "1st year of college"
  14 "2nd year of college"
  15 "3rd year of college"
  16 "4th year of college"
  96 "Not in school when received instruction"
  98 "Refused"
  99 "Don't know";

 label define sedwbcsx
   1 "Before"
   2 "After"
   8 "Refused"
   9 "Don't know";

 label define sedcond
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define SEDCONLC1
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDCONLC2
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDCONLC3
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDCONLC4
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define sedcondg
   1 "1st grade"
   2 "2nd grade"
   3 "3rd grade"
   4 "4th grade"
   5 "5th grade"
   6 "6th grade"
   7 "7th grade"
   8 "8th grade"
   9 "9th grade"
  10 "10th grade"
  11 "11th grade"
  12 "12th grade"
  13 "1st year of college"
  14 "2nd year of college"
  15 "3rd year of college"
  16 "4th year of college"
  96 "Not in school when received instruction"
  98 "Refused"
  99 "Don't know";

 label define sedconsx
   1 "Before"
   2 "After"
   8 "Refused"
   9 "Don't know";

 label define sedstd
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define SEDSTDLC1
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDSTDLC2
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDSTDLC3
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDSTDLC4
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define sedstdg
   1 "1st grade"
   2 "2nd grade"
   3 "3rd grade"
   4 "4th grade"
   5 "5th grade"
   6 "6th grade"
   7 "7th grade"
   8 "8th grade"
   9 "9th grade"
  10 "10th grade"
  11 "11th grade"
  12 "12th grade"
  13 "1st year of college"
  14 "2nd year of college"
  15 "3rd year of college"
  16 "4th year of college"
  96 "Not in school when received instruction"
  98 "Refused"
  99 "Don't know";

 label define sedstdsx
   1 "Before"
   2 "After"
   8 "Refused"
   9 "Don't know";

 label define sedhiv
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define SEDHIVLC1
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDHIVLC2
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDHIVLC3
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDHIVLC4
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define sedhivg
   1 "1st grade"
   2 "2nd grade"
   3 "3rd grade"
   4 "4th grade"
   5 "5th grade"
   6 "6th grade"
   7 "7th grade"
   8 "8th grade"
   9 "9th grade"
  10 "10th grade"
  11 "11th grade"
  12 "12th grade"
  13 "1st year of college"
  14 "2nd year of college"
  15 "3rd year of college"
  16 "4th year of college"
  96 "Not in school when received instruction"
  98 "Refused"
  99 "Don't know";

 label define sedhivsx
   1 "Before"
   2 "After"
   8 "Refused"
   9 "Don't know";

 label define sedabst
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define SEDABLC1
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDABLC2
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDABLC3
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define SEDABLC4
   1 "School"
   2 "Church"
   3 "A community center"
   4 "Some other place"
   8 "Refused"
   9 "Don't know";

 label define sedabstg
   1 "1st grade"
   2 "2nd grade"
   3 "3rd grade"
   4 "4th grade"
   5 "5th grade"
   6 "6th grade"
   7 "7th grade"
   8 "8th grade"
   9 "9th grade"
  10 "10th grade"
  11 "11th grade"
  12 "12th grade"
  13 "1st year of college"
  14 "2nd year of college"
  15 "3rd year of college"
  16 "4th year of college"
  96 "Not in school when received instruction"
  98 "Refused"
  99 "Don't know";

 label define sedabssx
   1 "Before"
   2 "After"
   8 "Refused"
   9 "Don't know";

 label define everoper
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define typeoper
   1 "Vasectomy"
   2 "Other operation"
   3 "Vasectomy failed"
   4 "Vasectomy already surgically reversed"
   8 "Refused"
   9 "Don't know";

 label define steroper
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define plcstrop
   1 "Private doctor's office"
   2 "HMO Facility"
   3 "Community health clinic, community clinic, public health clinic"
   4 "Family planning or Planned Parenthood clinic"
   5 "Employer or company clinic"
   6 "School or school-based clinic"
   7 "Hospital outpatient clinic"
   8 "Hospital emergency room"
   9 "Hospital regular room"
  10 "Urgent care center, urgi-care, or walk-in facility"
  11 "In-store health clinic (like CVS, Target, or Walmart)"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define rvrsvas
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define rsurgstr
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define fathposs
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fathdiff
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define rstrstat
   0 "NOT STERILE"
   1 "SURGICALLY STERILE"
   2 "NONSURGICALLY STERILE";

 label define SXMON12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define sexstat
   0 "NEVER HAD SEX"
   1 "1 PARTNER EVER/SEX IN LAST 12 MOS/SEX ONLY ONCE"
   2 "1 PARTNER EVER/SEX IN LAST 12 MOS/SEX > ONCE"
   3 "1 PARTNER EVER/NO SEX IN LAST 12 MOS/SEX ONLY ONCE"
   4 "1 PARTNER EVER/NO SEX IN LAST 12 MOS/SEX > ONCE"
   5 ">1 PARTNER EVER/NO SEX IN LAST 12 MOS"
   6 ">1 PARTNER EVER/SEX IN LAST 12 MOS"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P12MOCONO
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P12MOCON
   1 "Every time"
   2 "Most of the time"
   3 "About half of the time"
   4 "Some of the time"
   5 "None of the time"
   8 "Refused"
   9 "Don't know";

 label define sexfreq
   0 "none"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
 998 "Refused"
 999 "Don't know";

 label define confreq
   0 "none"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
 998 "Refused"
 999 "Don't know";

 label define P1RLTN1
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P1CURRWIFE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P1CURRSEP
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P1RLTN2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P1COHABIT
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P1SXLAST_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define P1SXLAST_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define CMLSXP1
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define P2RLTN1
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P2CURRWIFE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P2CURRSEP
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P2RLTN2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P2COHABIT
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P2SXLAST_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define P2SXLAST_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define CMLSXP2
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define P3RLTN1
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P3CURRWIFE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P3CURRSEP
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P3RLTN2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P3COHABIT
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define P3SXLAST_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define P3SXLAST_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define CMLSXP3
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define P1RELATION
   1 "CURRENT WIFE, NOT SEPARATED"
   2 "CURRENT WIFE, SEPARATED"
   3 "CURRENT COHABITING PARTNER"
   4 "FORMER WIFE"
   5 "FORMER COHABITING PARTNER"
   6 "NEVER IN A MARITAL OR COHAB UNION WITH P"
   8 "Refused"
   9 "Don't know";

 label define P2RELATION
   1 "CURRENT WIFE, NOT SEPARATED"
   2 "CURRENT WIFE, SEPARATED"
   3 "CURRENT COHABITING PARTNER"
   4 "FORMER WIFE"
   5 "FORMER COHABITING PARTNER"
   6 "NEVER IN A MARITAL OR COHAB UNION WITH P"
   8 "Refused"
   9 "Don't know";

 label define P3RELATION
   1 "CURRENT WIFE, NOT SEPARATED"
   2 "CURRENT WIFE, SEPARATED"
   3 "CURRENT COHABITING PARTNER"
   4 "FORMER WIFE"
   5 "FORMER COHABITING PARTNER"
   6 "NEVER IN A MARITAL OR COHAB UNION WITH P"
   8 "Refused"
   9 "Don't know";

 label define first
   1 "Yes, [NAME OF LAST P]"
   2 "Yes, [NAME OF 2ND-TO-LAST P]"
   3 "Yes, [NAME OF 3RD-TO-LAST P]"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define MARRDATE_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define hisagem
  98 "Refused"
  99 "Don't know";

 label define livtogwf
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define STRTWFCP_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define hisagec
  98 "Refused"
  99 "Don't know";

 label define cmstrtwp
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define engathen
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS"
   8 "refused"
   9 "DON'T KNOW";

 label define willmarr
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define cwpage
  98 "Refused"
  99 "Don't know";

 label define cwprace
   1 "Black"
   2 "White"
   3 "Other"
   4 "NA/DK/RF";

 label define cwpnrace
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "NA/DK/RF";

 label define cwpeducn
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college but no degree"
   4 "2-year college degree (e.g., Associate's degree)"
   5 "4-year college graduate (e.g., BA, BS)"
   6 "Graduate or professional school"
   8 "Refused"
   9 "Don't know";

 label define cwpborn
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpmarbf
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPSX1WN_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define CWPSX1WN_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define CWPSX1AG
  98 "Refused"
  99 "Don't know";

 label define cmfsxcwp
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define agefsxcwp
  98 "Refused"
  99 "Don't know";

 label define CWPSX1RL
   1 "Married to her"
   2 "Engaged to her, and living together"
   3 "Engaged to her, but not living together"
   4 "Living together in a sexual relationship, but not engaged"
   5 "Going with her or going steady"
   6 "Going out with her once in a while"
   7 "Just friends"
   8 "Had just met her"
   9 "Something else"
  98 "Refused"
  99 "Don't know";

 label define cwpfuse
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPFMET01
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPFMET02
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPFMET03
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPFMET04
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPFMET05
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define cwpopstr
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPTYPOP1
   1 "Tubal ligation or tubal sterilization"
   2 "Hysterectomy"
   3 "Something else"
   8 "Refused"
   9 "Don't know";

 label define CWPTYPOP2
   1 "Tubal ligation or tubal sterilization"
   2 "Hysterectomy"
   3 "Something else"
   8 "Refused"
   9 "Don't know";

 label define cwptotst
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwprevst
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define psurgstr
   0 "no"
   1 "yes";

 label define cwpposs
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpdiff
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pstrstat
   0 "NOT STERILE"
   1 "SURGICALLY STERILE"
   2 "NONSURGICALLY STERILE";

 label define CWPLSXWN_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define CWPLSXWN_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define cmlsxcwp
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define CWPLUSE1
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPLMET11
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPLMET12
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPLMET13
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPLUSE2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define dkcwpluse
   1 "Don't recall"
   2 "Never knew"
   8 "Refused"
   9 "Don't know";

 label define CWPLMET201
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPLMET202
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define dkcwplmet
   1 "Don't recall"
   2 "Never knew"
   8 "Refused"
   9 "Don't know";

 label define cwplsxuse
   0 "NONE OR NO METHOD IDENTIFIED"
   1 "ANY METHOD IDENTIFIED"
   8 "Refused"
   9 "Don't know";

 label define cwprecbc
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPALLBC01
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPALLBC02
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPALLBC03
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPALLBC04
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPALLBC05
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define cwpbcmst
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define condfreq
 998 "Refused"
 999 "Don't know";

 label define cwpnofrq
   1 "Every time"
   2 "Most of the time"
   3 "About half of the time"
   4 "Some of the time"
   5 "None of the time"
   8 "Refused"
   9 "Don't know";

 label define cwpbiokd
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpnumkd
   1 "1 child"
   2 "2 children"
   3 "3 children"
  98 "Refused"
  99 "Don't know";

 label define partfath
   0 "no"
   1 "yes";

 label define cwpchsex
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define cwpchmar
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpchres
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpchlrn
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLIV1
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHLIV2
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define cwpchage
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define cwpchsig
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpchcrt
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpchgen
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpchevr
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpchfar
99998 "Refused"
99999 "Don't know";

 label define cwpchwnt
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define cwpchson
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define cwpsoonn
 998 "Refused"
 999 "Don't know";

 label define cwpsoonmy
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define cwplaten
 998 "Refused"
 999 "Don't know";

 label define cwplatemy
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define cwpchhpy
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define CWPCHSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_Y2
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHMAR2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLRN2
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLIV10
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHLIV11
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHAGE2
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSIG2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHCRT2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHGEN2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHFAR2
99998 "Refused"
99999 "Don't know";

 label define CWPCHWNT2
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSON2
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define CWPSOONN2
 998 "Refused"
 999 "Don't know";

 label define CWPSOONMY2
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define CWPLATEN2
 998 "Refused"
 999 "Don't know";

 label define CWPLATEMY2
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHPY2
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define CWPCHSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_Y3
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHMAR3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLRN3
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLIV19
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHLIV20
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHAGE3
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSIG3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHCRT3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHGEN3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHFAR3
99998 "Refused"
99999 "Don't know";

 label define CWPCHWNT3
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSON3
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define CWPSOONN3
 998 "Refused"
 999 "Don't know";

 label define CWPSOONMY3
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define CWPLATEN3
 998 "Refused"
 999 "Don't know";

 label define CWPLATEMY3
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHPY3
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define CWPCHSEX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_Y4
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHMAR4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLRN4
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLIV28
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHLIV29
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHAGE4
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSIG4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHCRT4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHGEN4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHFAR4
99998 "Refused"
99999 "Don't know";

 label define CWPCHWNT4
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSON4
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define CWPSOONN4
 998 "Refused"
 999 "Don't know";

 label define CWPSOONMY4
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define CWPLATEN4
 998 "Refused"
 999 "Don't know";

 label define CWPLATEMY4
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHPY4
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define CWPCHSEX5
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_Y5
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHMAR5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLRN5
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLIV37
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHLIV38
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHAGE5
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSIG5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHCRT5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHGEN5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHFAR5
99998 "Refused"
99999 "Don't know";

 label define CWPCHWNT5
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSON5
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define CWPSOONN5
 998 "Refused"
 999 "Don't know";

 label define CWPSOONMY5
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define CWPLATEN5
 998 "Refused"
 999 "Don't know";

 label define CWPLATEMY5
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHPY5
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define CWPCHSEX6
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_Y6
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHMAR6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLRN6
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLIV46
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHLIV47
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHAGE6
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSIG6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHCRT6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHGEN6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHFAR6
99998 "Refused"
99999 "Don't know";

 label define CWPCHWNT6
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSON6
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define CWPSOONN6
 998 "Refused"
 999 "Don't know";

 label define CWPSOONMY6
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define CWPLATEN6
 998 "Refused"
 999 "Don't know";

 label define CWPLATEMY6
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHPY6
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define CWPCHSEX7
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_Y7
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHMAR7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLRN7
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLIV55
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHLIV56
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHAGE7
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSIG7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHCRT7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHGEN7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHFAR7
99998 "Refused"
99999 "Don't know";

 label define CWPCHWNT7
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSON7
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define CWPSOONN7
 998 "Refused"
 999 "Don't know";

 label define CWPSOONMY7
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define CWPLATEN7
 998 "Refused"
 999 "Don't know";

 label define CWPLATEMY7
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHPY7
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define CWPCHSEX8
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_Y8
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHMAR8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLRN8
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLIV64
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHLIV65
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Placed for adoption or adopted"
   8 "Placed in foster care"
   9 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define CWPCHAGE8
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSIG8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHCRT8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHGEN8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPCHFAR8
99998 "Refused"
99999 "Don't know";

 label define CWPCHWNT8
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSON8
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define CWPSOONN8
 998 "Refused"
 999 "Don't know";

 label define CWPSOONMY8
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define CWPLATEN8
 998 "Refused"
 999 "Don't know";

 label define CWPLATEMY8
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHPY8
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define cwpprgnw
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwptrypg
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwptrylg
 998 "Refused"
 999 "Don't know";

 label define cwpcpwnt
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define cwpcpson
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define cwpcpsnn
 998 "Refused"
 999 "Don't know";

 label define cwpcpsnmy
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define cwpcplaten
 998 "Refused"
 999 "Don't know";

 label define cwpcplatemy
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define cwpcphpy
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define C_OKAKIDS
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define cwpotkid
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpoknum
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define cwpokwth
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpokwthn
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define cwpoksex
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define cwpokad
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define cwpoktry
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpokthr
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV1
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV2
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define cwpokfar
99998 "Refused"
99999 "Don't know";

 label define cwpokage
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define CWPOKSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPOKAD2
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPOKTRY2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPOKTHR2
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV8
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV9
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKFAR2
99998 "Refused"
99999 "Don't know";

 label define CWPOKAGE2
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define CWPOKSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPOKAD3
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPOKTRY3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPOKTHR3
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV15
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV16
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKFAR3
99998 "Refused"
99999 "Don't know";

 label define CWPOKAGE3
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define CWPOKSEX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPOKAD4
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPOKTRY4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPOKTHR4
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV22
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV23
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKFAR4
99998 "Refused"
99999 "Don't know";

 label define CWPOKAGE4
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define C_NBAKIDS
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define cwpnbevr
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpnbnum
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define cwpnbrel
   1 "Yes, by blood"
   3 "Yes, by marriage"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpnbfos
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpnbsex
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define cwpnbad
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define cwpnbtry
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cwpnbthr
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV1
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV2
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define cwpnbfar
99998 "Refused"
99999 "Don't know";

 label define cwpnbage
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define CWPNBREL2
   1 "Yes, by blood"
   3 "Yes, by marriage"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFOS2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD2
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR2
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV8
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV9
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFAR2
99998 "Refused"
99999 "Don't know";

 label define CWPNBAGE2
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define CWPNBREL3
   1 "Yes, by blood"
   3 "Yes, by marriage"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFOS3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD3
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR3
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV15
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV16
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFAR3
99998 "Refused"
99999 "Don't know";

 label define CWPNBAGE3
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define CWPNBREL4
   1 "Yes, by blood"
   3 "Yes, by marriage"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFOS4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD4
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR4
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV22
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV23
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFAR4
99998 "Refused"
99999 "Don't know";

 label define CWPNBAGE4
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define CWPNBREL5
   1 "Yes, by blood"
   3 "Yes, by marriage"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFOS5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX5
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD5
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR5
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV29
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV30
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFAR5
99998 "Refused"
99999 "Don't know";

 label define CWPNBAGE5
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define CWPNBREL6
   1 "Yes, by blood"
   3 "Yes, by marriage"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFOS6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX6
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD6
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR6
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV36
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV37
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFAR6
99998 "Refused"
99999 "Don't know";

 label define CWPNBAGE6
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define MARDATEN_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define agemarr
  98 "Refused"
  99 "Don't know";

 label define livtogn
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define ageliv
  98 "Refused"
  99 "Don't know";

 label define cmunionp
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define engagthn
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS"
   8 "refused"
   9 "DON'T KNOW";

 label define marrend
   1 "Death of wife"
   2 "Divorce"
   3 "Annulment"
   4 "Separation"
   8 "Refused"
   9 "Don't know";

 label define MARDATEN_Y2
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define AGEMARR2
  98 "Refused"
  99 "Don't know";

 label define LIVTOGN2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define AGELIV2
  98 "Refused"
  99 "Don't know";

 label define ENGAGTHN2
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS"
   8 "refused"
   9 "DON'T KNOW";

 label define MARREND2
   1 "Death of wife"
   2 "Divorce"
   3 "Annulment"
   4 "Separation"
   8 "Refused"
   9 "Don't know";

 label define MARDATEN_Y3
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define AGEMARR3
  98 "Refused"
  99 "Don't know";

 label define LIVTOGN3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define AGELIV3
  98 "Refused"
  99 "Don't know";

 label define ENGAGTHN3
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS"
   8 "refused"
   9 "DON'T KNOW";

 label define MARREND3
   1 "Death of wife"
   2 "Divorce"
   3 "Annulment"
   4 "Separation"
   8 "Refused"
   9 "Don't know";

 label define currprts
   0 "INAPP/DK/RF"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   8 "Refused"
   9 "Don't know";

 label define pxcurr
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxcurrprt
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define pxmarry
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXCURR2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCURRPRT2
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define PXMARRY2
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXCURR3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCURRPRT3
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define PXMARRY3
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define pxlruse
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXLRMETH1
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLRMETH2
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLRMETH3
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else"
  98 "Refused"
  99 "Don't know";

 label define pxlpuse
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define dkpxlpuse
   1 "Don't recall"
   2 "Never knew"
   8 "Refused"
   9 "Don't know";

 label define PXLPMETH01
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLPMETH02
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLPMETH03
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define dkpxlpmeth
   1 "Don't recall"
   2 "Never knew"
   8 "Refused"
   9 "Don't know";

 label define lsxusep
   0 "NONE OR NO METHOD IDENTIFIED"
   1 "ANY METHOD IDENTIFIED"
   8 "Refused"
   9 "Don't know";

 label define mtoncep
   0 "NOT ASCERTAINED"
   1 "YES (MORE THAN ONCE)"
   2 "NO (ONCE)";

 label define pxlsxprb
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxmtonce
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXFRLTN1
   1 "Married to her"
   2 "Engaged to her, and living together"
   3 "Engaged to her, but not living together"
   4 "Living together in a sexual relationship, but not engaged"
   5 "Going with her or going steady"
   6 "Going out with her once in a while"
   7 "Just friends"
   8 "Had just met her"
   9 "Something else"
  98 "Refused"
  99 "Don't know";

 label define P1YRACE1
   1 "Black"
   2 "White"
   3 "Other"
   4 "NA/DK/RF";

 label define P1YNRACE1
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "NA/DK/RF";

 label define PXLRUSE2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXLRMETH5
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLRMETH6
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLRMETH7
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLPUSE2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define DKPXLPUSE2
   1 "Don't recall"
   2 "Never knew"
   8 "Refused"
   9 "Don't know";

 label define PXLPMETH11
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLPMETH12
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLPMETH13
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define DKPXLPMETH2
   1 "Don't recall"
   2 "Never knew"
   8 "Refused"
   9 "Don't know";

 label define LSXUSEP2
   0 "NONE OR NO METHOD IDENTIFIED"
   1 "ANY METHOD IDENTIFIED"
   8 "Refused"
   9 "Don't know";

 label define MTONCEP2
   0 "NOT ASCERTAINED"
   1 "YES (MORE THAN ONCE)"
   2 "NO (ONCE)";

 label define PXLSXPRB2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXMTONCE2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXFRLTN3
   1 "Married to her"
   2 "Engaged to her, and living together"
   3 "Engaged to her, but not living together"
   4 "Living together in a sexual relationship, but not engaged"
   5 "Going with her or going steady"
   6 "Going out with her once in a while"
   7 "Just friends"
   8 "Had just met her"
   9 "Something else"
  98 "Refused"
  99 "Don't know";

 label define P1YRACE2
   1 "Black"
   2 "White"
   3 "Other"
   4 "NA/DK/RF";

 label define P1YNRACE2
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "NA/DK/RF";

 label define PXLRUSE3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXLRMETH9
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLRMETH10
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLRMETH11
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLPUSE3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define DKPXLPUSE3
   1 "Don't recall"
   2 "Never knew"
   8 "Refused"
   9 "Don't know";

 label define PXLPMETH21
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLPMETH22
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLPMETH23
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define DKPXLPMETH3
   1 "Don't recall"
   2 "Never knew"
   8 "Refused"
   9 "Don't know";

 label define LSXUSEP3
   0 "NONE OR NO METHOD IDENTIFIED"
   1 "ANY METHOD IDENTIFIED"
   8 "Refused"
   9 "Don't know";

 label define MTONCEP3
   0 "NOT ASCERTAINED"
   1 "YES (MORE THAN ONCE)"
   2 "NO (ONCE)";

 label define PXLSXPRB3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXMTONCE3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXFRLTN5
   1 "Married to her"
   2 "Engaged to her, and living together"
   3 "Engaged to her, but not living together"
   4 "Living together in a sexual relationship, but not engaged"
   5 "Going with her or going steady"
   6 "Going out with her once in a while"
   7 "Just friends"
   8 "Had just met her"
   9 "Something else"
  98 "Refused"
  99 "Don't know";

 label define P1YRACE3
   1 "Black"
   2 "White"
   3 "Other"
   4 "NA/DK/RF";

 label define P1YNRACE3
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "NA/DK/RF";

 label define pxeduc
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college but no degree"
   4 "2-year college degree (e.g., Associate's degree)"
   5 "4-year college graduate (e.g., BA, BS)"
   6 "Graduate or professional school"
   8 "Refused"
   9 "Don't know";

 label define pxmarbf
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxanych
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxablech
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXEDUC2
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college but no degree"
   4 "2-year college degree (e.g., Associate's degree)"
   5 "4-year college graduate (e.g., BA, BS)"
   6 "Graduate or professional school"
   8 "Refused"
   9 "Don't know";

 label define PXMARBF2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXANYCH2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXABLECH2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXEDUC3
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college but no degree"
   4 "2-year college degree (e.g., Associate's degree)"
   5 "4-year college graduate (e.g., BA, BS)"
   6 "Graduate or professional school"
   8 "Refused"
   9 "Don't know";

 label define PXMARBF3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXANYCH3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXABLECH3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXSXFRST_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXSXFRST_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define cmfsxp
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define agefsxp
9998 "Refused"
9999 "Don't know";

 label define pxagfrst
  98 "Refused"
  99 "Don't know";

 label define PXFRLTN2
   1 "Married to her"
   2 "Engaged to her, and living together"
   3 "Engaged to her, but not living together"
   4 "Living together in a sexual relationship, but not engaged"
   5 "Going with her or going steady"
   6 "Going out with her once in a while"
   7 "Just friends"
   8 "Had just met her"
   9 "Something else"
  98 "Refused"
  99 "Don't know";

 label define pxfuse
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXFMETH01
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXFMETH02
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXFMETH03
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXFMETH04
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXSXFRST_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXSXFRST_Y2
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define CMFSXP2
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define AGEFSXP2
9998 "Refused"
9999 "Don't know";

 label define PXAGFRST2
  98 "Refused"
  99 "Don't know";

 label define PXFRLTN4
   1 "Married to her"
   2 "Engaged to her, and living together"
   3 "Engaged to her, but not living together"
   4 "Living together in a sexual relationship, but not engaged"
   5 "Going with her or going steady"
   6 "Going out with her once in a while"
   7 "Just friends"
   8 "Had just met her"
   9 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXFUSE2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXFMETH14
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXFMETH15
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXFMETH16
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXFMETH17
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXSXFRST_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXSXFRST_Y3
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define CMFSXP3
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define AGEFSXP3
9998 "Refused"
9999 "Don't know";

 label define PXAGFRST3
  98 "Refused"
  99 "Don't know";

 label define PXFRLTN6
   1 "Married to her"
   2 "Engaged to her, and living together"
   3 "Engaged to her, but not living together"
   4 "Living together in a sexual relationship, but not engaged"
   5 "Going with her or going steady"
   6 "Going out with her once in a while"
   7 "Just friends"
   8 "Had just met her"
   9 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXFUSE3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXFMETH27
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXFMETH28
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXFMETH29
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXFMETH30
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define pxanyuse
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXMETHOD01
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMETHOD02
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMETHOD03
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMETHOD04
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMETHOD05
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define pxmstuse
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define pxconfrq
 998 "Refused"
 999 "Don't know";

 label define pxnofreq
   1 "Every time"
   2 "Most of the time"
   3 "About half of the time"
   4 "Some of the time"
   5 "None of the time"
   8 "Refused"
   9 "Don't know";

 label define PXANYUSE2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXMETHOD14
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMETHOD15
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMETHOD16
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMETHOD17
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMETHOD18
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMSTUSE2
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXCONFRQ2
 998 "Refused"
 999 "Don't know";

 label define PXNOFREQ2
   1 "Every time"
   2 "Most of the time"
   3 "About half of the time"
   4 "Some of the time"
   5 "None of the time"
   8 "Refused"
   9 "Don't know";

 label define PXANYUSE3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXMETHOD27
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMETHOD28
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMETHOD29
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMETHOD30
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMETHOD31
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMSTUSE3
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXCONFRQ3
 998 "Refused"
 999 "Don't know";

 label define PXNOFREQ3
   1 "Every time"
   2 "Most of the time"
   3 "About half of the time"
   4 "Some of the time"
   5 "None of the time"
   8 "Refused"
   9 "Don't know";

 label define pxchild
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxchildn
   1 "1 child"
   2 "2 children"
  98 "Refused"
  99 "Don't know";

 label define pxcxsex
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxcxmarb
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxcxres
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxcxknow
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV01
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV02
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV03
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define pxcxage
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define pxcxsig
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxcxcrt
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxcxgen
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxcxever
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxcxfar
99998 "Refused"
99999 "Don't know";

 label define pxwant
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define pxsoon
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define pxsoonn
 998 "Refused"
 999 "Don't know";

 label define pxsoonmy
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define pxlaten
 998 "Refused"
 999 "Don't know";

 label define pxlatemy
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define pxhpypg
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_Y2
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW2
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV11
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV12
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV13
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXAGE2
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXSIG2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXCRT2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXGEN2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR2
99998 "Refused"
99999 "Don't know";

 label define PXWANT2
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON2
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXSOONN2
 998 "Refused"
 999 "Don't know";

 label define PXSOONMY2
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXLATEN2
 998 "Refused"
 999 "Don't know";

 label define PXLATEMY2
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG2
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_Y3
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT13
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW3
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV21
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV22
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV23
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXAGE3
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXSIG3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXCRT3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXGEN3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR3
99998 "Refused"
99999 "Don't know";

 label define PXWANT3
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON3
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXSOONN3
 998 "Refused"
 999 "Don't know";

 label define PXSOONMY3
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXLATEN3
 998 "Refused"
 999 "Don't know";

 label define PXLATEMY3
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG3
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_Y4
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT14
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW4
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV31
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV32
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV33
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXAGE4
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXSIG4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXCRT4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXGEN4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR4
99998 "Refused"
99999 "Don't know";

 label define PXWANT4
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON4
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXSOONN4
 998 "Refused"
 999 "Don't know";

 label define PXSOONMY4
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXLATEN4
 998 "Refused"
 999 "Don't know";

 label define PXLATEMY4
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG4
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX5
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_Y5
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT15
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW5
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV41
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV42
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV43
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXAGE5
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXSIG5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXCRT5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXGEN5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR5
99998 "Refused"
99999 "Don't know";

 label define PXWANT5
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON5
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXSOONN5
 998 "Refused"
 999 "Don't know";

 label define PXSOONMY5
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXLATEN5
 998 "Refused"
 999 "Don't know";

 label define PXLATEMY5
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG5
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCHILD2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCHILDN2
   1 "1 child"
   2 "2 children"
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX11
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_Y11
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW11
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV101
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV102
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV103
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXAGE11
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXSIG11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXCRT11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXGEN11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR11
99998 "Refused"
99999 "Don't know";

 label define PXWANT11
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON11
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXSOONN11
 998 "Refused"
 999 "Don't know";

 label define PXSOONMY11
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXLATEN11
 998 "Refused"
 999 "Don't know";

 label define PXLATEMY11
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG11
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX12
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_Y12
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW12
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV111
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV112
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV113
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXAGE12
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXSIG12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXCRT12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXGEN12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR12
99998 "Refused"
99999 "Don't know";

 label define PXWANT12
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON12
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXSOONN12
 998 "Refused"
 999 "Don't know";

 label define PXSOONMY12
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXLATEN12
 998 "Refused"
 999 "Don't know";

 label define PXLATEMY12
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG12
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX13
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_Y13
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT23
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB13
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES13
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW13
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV121
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV122
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV123
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXAGE13
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXSIG13
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXCRT13
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXGEN13
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER13
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR13
99998 "Refused"
99999 "Don't know";

 label define PXWANT13
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON13
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXSOONN13
 998 "Refused"
 999 "Don't know";

 label define PXSOONMY13
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXLATEN13
 998 "Refused"
 999 "Don't know";

 label define PXLATEMY13
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG13
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX14
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_Y14
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT24
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB14
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES14
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW14
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV131
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV132
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV133
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXAGE14
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXSIG14
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXCRT14
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXGEN14
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER14
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR14
99998 "Refused"
99999 "Don't know";

 label define PXWANT14
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON14
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXSOONN14
 998 "Refused"
 999 "Don't know";

 label define PXSOONMY14
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXLATEN14
 998 "Refused"
 999 "Don't know";

 label define PXLATEMY14
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG14
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCHILD3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCHILDN3
   1 "1 child"
   2 "2 children"
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX21
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_Y21
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT31
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW21
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV201
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV202
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV203
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXAGE21
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXSIG21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXCRT21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXGEN21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR21
99998 "Refused"
99999 "Don't know";

 label define PXWANT21
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON21
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXSOONN21
 998 "Refused"
 999 "Don't know";

 label define PXSOONMY21
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXLATEN21
 998 "Refused"
 999 "Don't know";

 label define PXLATEMY21
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG21
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX22
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_Y22
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT32
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW22
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV211
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV212
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV213
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXAGE22
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXSIG22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXCRT22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXGEN22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR22
99998 "Refused"
99999 "Don't know";

 label define PXWANT22
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON22
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXSOONN22
 998 "Refused"
 999 "Don't know";

 label define PXSOONMY22
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXLATEN22
 998 "Refused"
 999 "Don't know";

 label define PXLATEMY22
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG22
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX23
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_Y23
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT33
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB23
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES23
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW23
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV221
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV222
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV223
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXAGE23
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXSIG23
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXCRT23
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXGEN23
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER23
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR23
99998 "Refused"
99999 "Don't know";

 label define PXWANT23
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON23
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXSOONN23
 998 "Refused"
 999 "Don't know";

 label define PXSOONMY23
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXLATEN23
 998 "Refused"
 999 "Don't know";

 label define PXLATEMY23
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG23
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX24
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_Y24
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT34
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB24
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES24
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW24
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV231
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV232
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV233
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXAGE24
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXSIG24
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXCRT24
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXGEN24
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER24
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR24
99998 "Refused"
99999 "Don't know";

 label define PXWANT24
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON24
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXSOONN24
 998 "Refused"
 999 "Don't know";

 label define PXSOONMY24
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXLATEN24
 998 "Refused"
 999 "Don't know";

 label define PXLATEMY24
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG24
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX25
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_Y25
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT35
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB25
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES25
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW25
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV241
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV242
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXLIV243
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXCXAGE25
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXSIG25
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXCRT25
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXGEN25
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER25
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR25
99998 "Refused"
99999 "Don't know";

 label define PXWANT25
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON25
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXSOONN25
 998 "Refused"
 999 "Don't know";

 label define PXSOONMY25
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXLATEN25
 998 "Refused"
 999 "Don't know";

 label define PXLATEMY25
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG25
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define pxcpreg
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxtrying
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxtrylong
 998 "Refused"
 999 "Don't know";

 label define pxrwant
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define pxrsoon
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define pxrsoonn
 998 "Refused"
 999 "Don't know";

 label define pxrsoonmy
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define pxrlaten
 998 "Refused"
 999 "Don't know";

 label define pxrlatemy
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define pxcpfeel
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCPREG2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXTRYING2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXTRYLONG2
 998 "Refused"
 999 "Don't know";

 label define PXRWANT2
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXRSOON2
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXRSOONN2
 998 "Refused"
 999 "Don't know";

 label define PXRSOONMY2
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXRLATEN2
 998 "Refused"
 999 "Don't know";

 label define PXRLATEMY2
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXCPFEEL2
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define PXCPREG3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXTRYING3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXTRYLONG3
 998 "Refused"
 999 "Don't know";

 label define PXRWANT3
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXRSOON3
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXRSOONN3
 998 "Refused"
 999 "Don't know";

 label define PXRSOONMY3
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXRLATEN3
 998 "Refused"
 999 "Don't know";

 label define PXRLATEMY3
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define PXCPFEEL3
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define currpreg
   0 "INAPP/DK/RF"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define D_OKAKIDS
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define pxotkid
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxoknum
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define pxokwth
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxokwthn
   1 "1 child"
   2 "2 children"
   3 "3 children"
  98 "Refused"
  99 "Don't know";

 label define pxoksex
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define pxokad
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXOKLIV1
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKLIV2
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define pxokfar
99998 "Refused"
99999 "Don't know";

 label define pxokage
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define PXOKSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXOKAD2
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXOKLIV9
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKLIV10
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKFAR2
99998 "Refused"
99999 "Don't know";

 label define PXOKAGE2
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define PXOKSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXOKAD3
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXOKLIV17
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKLIV18
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKFAR3
99998 "Refused"
99999 "Don't know";

 label define PXOKAGE3
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define PXOKSEX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXOKAD4
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXOKLIV25
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKLIV26
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKFAR4
99998 "Refused"
99999 "Don't know";

 label define PXOKAGE4
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define PXOKSEX5
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXOKAD5
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXOKLIV33
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKLIV34
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKFAR5
99998 "Refused"
99999 "Don't know";

 label define PXOKAGE5
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define D_OKAKIDS2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXOTKID2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXOKNUM2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXOKWTH2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXOKWTHN2
   1 "1 child"
   2 "2 children"
   3 "3 children"
  98 "Refused"
  99 "Don't know";

 label define PXOKSEX11
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXOKAD11
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXOKLIV81
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKFAR11
99998 "Refused"
99999 "Don't know";

 label define PXOKAGE11
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define PXOKSEX12
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXOKAD12
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXOKLIV89
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKFAR12
99998 "Refused"
99999 "Don't know";

 label define PXOKAGE12
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define PXOKSEX13
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXOKAD13
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXOKLIV97
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKFAR13
99998 "Refused"
99999 "Don't know";

 label define PXOKAGE13
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define D_OKAKIDS3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXOTKID3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXOKNUM3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXOKWTH3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXOKWTHN3
   1 "1 child"
   2 "2 children"
   3 "3 children"
  98 "Refused"
  99 "Don't know";

 label define PXOKSEX21
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXOKAD21
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXOKLIV161
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKFAR21
99998 "Refused"
99999 "Don't know";

 label define PXOKAGE21
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define PXOKSEX22
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXOKAD22
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXOKLIV169
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKFAR22
99998 "Refused"
99999 "Don't know";

 label define PXOKAGE22
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define D_NBAKIDS
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define pxnbevr
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxnbnum
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define pxnbrel
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxnbfos
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define pxnbsex
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define pxnbad
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXNBLIV1
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBLIV2
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define pxnbfar
99998 "Refused"
99999 "Don't know";

 label define pxnbage
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define PXNBREL2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBFOS2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXNBAD2
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXNBLIV9
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBLIV10
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBFAR2
99998 "Refused"
99999 "Don't know";

 label define PXNBAGE2
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define PXNBREL3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBFOS3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXNBAD3
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXNBLIV17
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBLIV18
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBFAR3
99998 "Refused"
99999 "Don't know";

 label define PXNBAGE3
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define D_NBAKIDS2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBEVR2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBNUM2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBREL11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBFOS11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBSEX11
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXNBAD11
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXNBLIV81
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBLIV82
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBFAR11
99998 "Refused"
99999 "Don't know";

 label define PXNBAGE11
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define PXNBREL12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBFOS12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBSEX12
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXNBAD12
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXNBLIV89
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBLIV90
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBFAR12
99998 "Refused"
99999 "Don't know";

 label define PXNBAGE12
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define D_NBAKIDS3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBEVR3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBNUM3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBREL21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBFOS21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBSEX21
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXNBAD21
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXNBLIV161
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBLIV162
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBFAR21
99998 "Refused"
99999 "Don't know";

 label define PXNBAGE21
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define PXNBREL22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBFOS22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBSEX22
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXNBAD22
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXNBLIV169
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBLIV170
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBFAR22
99998 "Refused"
99999 "Don't know";

 label define PXNBAGE22
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define PXNBREL23
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBFOS23
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXNBSEX23
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXNBAD23
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXNBLIV177
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBLIV178
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBFAR23
99998 "Refused"
99999 "Don't know";

 label define PXNBAGE23
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define fprltn
   1 "Married to her"
   2 "Engaged to her, and living together"
   3 "Engaged to her, but not living together"
   4 "Living together in a sexual relationship, but not engaged"
   5 "Going with her or going steady"
   6 "Going out with her once in a while"
   7 "Just friends"
   8 "Had just met her"
   9 "Something else"
  98 "Refused"
  99 "Don't know";

 label define fpuse
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FPMETH01
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define FPMETH02
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define FPMETH03
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define FPMETH04
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define FPMETH05
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant, Implanon or Nexplanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define fpprobe
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define nformwife
   0 "none"
   1 "1 FORMER WIFE"
   2 "2 FORMER WIVES"
   3 "3 FORMER WIVES"
   4 "4 FORMER WIVES"
 998 "Refused"
 999 "Don't know";

 label define nformcohab
   0 "none"
   1 "1 FORMER COHABITING PARTNER"
   2 "2 FORMER COHABITING PARTNERS"
   3 "3 FORMER COHABITING PARTNERS"
   4 "4 FORMER COHABITING PARTNERS"
   5 "5 OR MORE FORMER COHABITING PARTNERS"
 998 "Refused"
 999 "Don't know";

 label define fwverify
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fwver
   0 "no"
   1 "yes";

 label define FWVERIFY2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWVER2
   0 "no"
   1 "yes";

 label define FWVERIFY3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWVER3
   0 "no"
   1 "yes";

 label define FWVERIFY4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWVER4
   0 "no"
   1 "yes";

 label define fcver
   0 "no"
   1 "yes";

 label define fcverify
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define exrelation
   0 "FORMER COHAB PARTNER"
   1 "FORMER WIFE"
   8 "Refused"
   9 "Don't know";

 label define FWMAREND_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define agemarrn
  98 "Refused"
  99 "Don't know";

 label define LIVTOGN4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define AGELIV4
  98 "Refused"
  99 "Don't know";

 label define cmunionw
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define ENGAGTHN4
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS"
   8 "refused"
   9 "DON'T KNOW";

 label define MARREND4
   1 "Death of wife"
   2 "Divorce"
   3 "Annulment"
   4 "Separation"
   8 "Refused"
   9 "Don't know";

 label define EXRELATION2
   0 "FORMER COHAB PARTNER"
   1 "FORMER WIFE"
   8 "Refused"
   9 "Don't know";

 label define FWMAREND_Y2
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define AGEMARRN2
  98 "Refused"
  99 "Don't know";

 label define LIVTOGN5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define AGELIV5
  98 "Refused"
  99 "Don't know";

 label define ENGAGTHN5
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS"
   8 "refused"
   9 "DON'T KNOW";

 label define MARREND5
   1 "Death of wife"
   2 "Divorce"
   3 "Annulment"
   4 "Separation"
   8 "Refused"
   9 "Don't know";

 label define EXRELATION3
   0 "FORMER COHAB PARTNER"
   1 "FORMER WIFE"
   8 "Refused"
   9 "Don't know";

 label define FWMAREND_Y3
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define AGEMARRN3
  98 "Refused"
  99 "Don't know";

 label define LIVTOGN6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define AGELIV6
  98 "Refused"
  99 "Don't know";

 label define ENGAGTHN6
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS"
   8 "refused"
   9 "DON'T KNOW";

 label define MARREND6
   1 "Death of wife"
   2 "Divorce"
   3 "Annulment"
   4 "Separation"
   8 "Refused"
   9 "Don't know";

 label define EXRELATION4
   0 "FORMER COHAB PARTNER"
   1 "FORMER WIFE"
   8 "Refused"
   9 "Don't know";

 label define FWMAREND_Y4
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define AGEMARRN4
  98 "Refused"
  99 "Don't know";

 label define LIVTOGN7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define AGELIV7
  98 "Refused"
  99 "Don't know";

 label define ENGAGTHN7
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS"
   8 "refused"
   9 "DON'T KNOW";

 label define MARREND7
   1 "Death of wife"
   2 "Divorce"
   3 "Annulment"
   4 "Separation"
   8 "Refused"
   9 "Don't know";

 label define EXRELATION11
   0 "FORMER COHAB PARTNER"
   1 "FORMER WIFE"
   8 "Refused"
   9 "Don't know";

 label define CMCOHFC11
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define AGELIV14
  98 "Refused"
  99 "Don't know";

 label define ENGAGTHN14
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS"
   8 "refused"
   9 "DON'T KNOW";

 label define STOPLIVE_Y14
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define fwpage
  98 "Refused"
  99 "Don't know";

 label define WIF1RACE
   1 "Black"
   2 "White"
   3 "Other"
   4 "NA/DK/RF";

 label define WIF1NRACE
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "NA/DK/RF";

 label define fwpmarbf
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPAGE2
  98 "Refused"
  99 "Don't know";

 label define FWPMARBF2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPAGE3
  98 "Refused"
  99 "Don't know";

 label define FWPMARBF3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPAGE4
  98 "Refused"
  99 "Don't know";

 label define FWPMARBF4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPAGE11
  98 "Refused"
  99 "Don't know";

 label define COH1RACE
   1 "Black"
   2 "White"
   3 "Other"
   4 "NA/DK/RF";

 label define COH1NRACE
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "NA/DK/RF";

 label define FWPMARBF11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fwpbiokd
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fwpnumkd
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define fwpchsex
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define fwchmarb
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fwpchres
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fwpchlrn
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV01
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV02
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV03
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define fwpchage
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define fwpchsig
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fwpchcrt
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fwpchgen
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fwpchevr
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fwpchfar
99998 "Refused"
99999 "Don't know";

 label define fwprwant
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define fwpsoon
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define fwpsoonn
 998 "Refused"
 999 "Don't know";

 label define fwpsoonmy
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define fwplaten
 998 "Refused"
 999 "Don't know";

 label define fwplatemy
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define fwphpypg
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y2
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT42
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN2
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV11
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV12
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV13
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE2
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR2
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT2
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON2
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN2
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY2
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN2
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY2
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG2
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y3
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT43
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN3
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV21
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV22
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV23
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE3
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR3
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT3
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON3
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN3
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY3
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN3
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY3
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG3
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y4
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT44
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN4
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV31
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV32
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV33
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE4
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR4
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT4
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON4
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN4
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY4
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN4
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY4
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG4
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPBIOKD2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNUMKD2
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX11
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y11
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define FWCHMARB11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN11
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV101
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV102
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV103
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE11
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR11
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT11
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON11
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN11
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY11
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN11
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY11
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG11
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX12
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y12
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT52
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN12
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV111
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV112
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV113
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE12
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR12
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT12
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON12
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN12
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY12
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN12
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY12
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG12
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX13
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y13
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT53
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB13
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES13
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN13
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV121
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV122
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV123
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE13
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG13
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT13
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN13
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR13
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR13
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT13
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON13
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN13
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY13
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN13
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY13
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG13
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX14
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y14
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT54
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB14
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES14
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN14
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV131
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV132
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV133
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE14
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG14
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT14
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN14
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR14
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR14
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT14
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON14
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN14
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY14
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN14
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY14
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG14
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX15
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y15
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT55
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB15
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES15
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN15
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV141
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV142
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV143
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE15
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG15
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT15
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN15
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR15
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR15
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT15
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON15
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN15
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY15
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN15
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY15
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG15
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPBIOKD3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNUMKD3
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX21
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y21
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define FWCHMARB21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN21
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV201
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV202
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV203
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE21
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR21
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT21
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON21
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN21
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY21
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN21
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY21
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG21
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX22
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y22
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT62
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN22
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV211
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV212
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV213
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE22
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR22
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR22
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT22
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON22
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN22
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY22
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN22
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY22
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG22
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPBIOKD4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNUMKD4
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX31
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y31
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define FWCHMARB31
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES31
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN31
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV301
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV302
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV303
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE31
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG31
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT31
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN31
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR31
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR31
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT31
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON31
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN31
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY31
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN31
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY31
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG31
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX32
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y32
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT72
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB32
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES32
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN32
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV311
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV312
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV313
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE32
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG32
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT32
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN32
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR32
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR32
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT32
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON32
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN32
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY32
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN32
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY32
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG32
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPBIOKD11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNUMKD11
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX101
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y101
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define FWPCHRES101
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN101
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV1001
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV1002
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV1003
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE101
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG101
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT101
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN101
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR101
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR101
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT101
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON101
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN101
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY101
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN101
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY101
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG101
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX102
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y102
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT142
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES102
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN102
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV1011
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV1012
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV1013
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE102
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG102
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT102
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN102
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR102
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR102
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT102
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON102
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN102
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY102
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN102
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY102
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG102
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX103
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y103
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT143
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES103
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN103
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV1021
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV1022
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV1023
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE103
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG103
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT103
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN103
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR103
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR103
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT103
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON103
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN103
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY103
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN103
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY103
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG103
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX104
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_Y104
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT144
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES104
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN104
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV1031
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV1032
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHLIV1033
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPCHAGE104
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHSIG104
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHCRT104
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHGEN104
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR104
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR104
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT104
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON104
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPSOONN104
 998 "Refused"
 999 "Don't know";

 label define FWPSOONMY104
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPLATEN104
 998 "Refused"
 999 "Don't know";

 label define FWPLATEMY104
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG104
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define E_OKAKIDS
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define fwpotkid
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fwpoknum
  98 "Refused"
  99 "Don't know";

 label define fwpokwth
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fwpokwthn
  98 "Refused"
  99 "Don't know";

 label define fwpoksex
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define fwpokad
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV1
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define fwpokfar
99998 "Refused"
99999 "Don't know";

 label define fwpokage
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD2
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV9
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR2
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE2
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD3
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV17
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR3
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE3
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD4
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV25
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR4
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE4
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX5
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD5
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV33
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR5
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE5
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define E_OKAKIDS2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPOTKID2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPOKNUM2
  98 "Refused"
  99 "Don't know";

 label define FWPOKWTH2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPOKWTHN2
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX11
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD11
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV81
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR11
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE11
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX12
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD12
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV89
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR12
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE12
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX13
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD13
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV97
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR13
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE13
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX14
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD14
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV105
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR14
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE14
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define E_OKAKIDS3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPOTKID3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPOKNUM3
  98 "Refused"
  99 "Don't know";

 label define FWPOKWTH3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPOKWTHN3
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX21
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD21
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV161
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR21
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE21
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX22
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD22
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV169
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR22
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE22
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX23
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD23
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV177
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR23
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE23
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX24
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD24
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV185
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR24
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE24
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX25
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD25
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV193
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR25
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE25
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define E_OKAKIDS4
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPOTKID4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPOKNUM4
  98 "Refused"
  99 "Don't know";

 label define FWPOKWTH4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPOKWTHN4
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX31
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD31
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV241
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR31
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE31
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX32
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD32
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV249
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR32
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE32
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX33
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD33
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV257
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR33
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE33
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define E_OKAKIDS11
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPOTKID11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPOKNUM11
  98 "Refused"
  99 "Don't know";

 label define FWPOKWTH11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPOKWTHN11
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX101
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD101
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV801
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR101
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE101
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX102
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD102
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV809
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR102
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE102
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX103
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD103
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV817
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR103
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE103
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX104
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD104
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV825
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR104
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE104
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX105
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD105
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV833
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR105
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE105
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define E_NBAKIDS
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define fwpnbevr
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fwpnbnum
  98 "Refused"
  99 "Don't know";

 label define fwpnbrel
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fwpnbfos
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define fwpnbsex
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define fwpnbad
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV1
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBLIV2
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define fwpnbfar
99998 "Refused"
99999 "Don't know";

 label define fwpnbage
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPNBREL2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBFOS2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBAD2
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV9
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBLIV10
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBFAR2
99998 "Refused"
99999 "Don't know";

 label define FWPNBAGE2
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPNBREL3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBFOS3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBAD3
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV17
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBLIV18
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBFAR3
99998 "Refused"
99999 "Don't know";

 label define FWPNBAGE3
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define E_NBAKIDS2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPNBEVR2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBNUM2
  98 "Refused"
  99 "Don't know";

 label define FWPNBREL11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBFOS11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBSEX11
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBAD11
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV81
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBFAR11
99998 "Refused"
99999 "Don't know";

 label define FWPNBAGE11
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPNBREL12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBFOS12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBSEX12
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBAD12
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV89
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBFAR12
99998 "Refused"
99999 "Don't know";

 label define FWPNBAGE12
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define E_NBAKIDS3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPNBEVR3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBNUM3
  98 "Refused"
  99 "Don't know";

 label define FWPNBREL21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBFOS21
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBSEX21
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBAD21
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV161
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBFAR21
99998 "Refused"
99999 "Don't know";

 label define FWPNBAGE21
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define E_NBAKIDS4
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPNBEVR4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBNUM4
  98 "Refused"
  99 "Don't know";

 label define FWPNBREL31
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBFOS31
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBSEX31
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBAD31
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV241
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBFAR31
99998 "Refused"
99999 "Don't know";

 label define FWPNBAGE31
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define E_NBAKIDS11
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPNBEVR11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBNUM11
  98 "Refused"
  99 "Don't know";

 label define FWPNBREL101
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBFOS101
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBSEX101
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBAD101
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV801
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBFAR101
99998 "Refused"
99999 "Don't know";

 label define FWPNBAGE101
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPNBREL102
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBFOS102
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBSEX102
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBAD102
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV809
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBFAR102
99998 "Refused"
99999 "Don't know";

 label define FWPNBAGE102
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPNBREL103
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBFOS103
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBSEX103
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBAD103
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV817
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBFAR103
99998 "Refused"
99999 "Don't know";

 label define FWPNBAGE103
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define FWPNBREL104
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBFOS104
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBSEX104
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBAD104
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV825
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBFAR104
99998 "Refused"
99999 "Don't know";

 label define FWPNBAGE104
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define otbchil
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define otbprobe
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define otbchiln
   1 "1 child"
   2 "2 children"
   3 "3 children"
  98 "Refused"
  99 "Don't know";

 label define otbsame
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define obcsexx
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define obcmagex
   1 "UNDER 20 YEARS"
   2 "20-24 YEARS"
   3 "25-29 YEARS"
   4 "30 YEARS OR OLDER"
   8 "Refused"
   9 "Don't know";

 label define obcmliv
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define obcknowx
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define OBCLIVEX01
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX02
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX03
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define obcage
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define obcchsig
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define obcchcrt
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define obcchgen
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define obcever
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define obcfar
99998 "Refused"
99999 "Don't know";

 label define obcrwanx
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define obcsoonx
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define obcsoonn
 998 "Refused"
 999 "Don't know";

 label define obcsoonmy
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define obclaten
 998 "Refused"
 999 "Don't know";

 label define obclatemy
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define obchpyx
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_Y2
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT152
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX2
   1 "UNDER 20 YEARS"
   2 "20-24 YEARS"
   3 "25-29 YEARS"
   4 "30 YEARS OR OLDER"
   8 "Refused"
   9 "Don't know";

 label define OBCMLIV2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCKNOWX2
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define OBCLIVEX11
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX12
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX13
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCAGE2
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define OBCCHSIG2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHCRT2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHGEN2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCFAR2
99998 "Refused"
99999 "Don't know";

 label define OBCRWANX2
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONX2
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONN2
 998 "Refused"
 999 "Don't know";

 label define OBCSOONMY2
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCLATEN2
 998 "Refused"
 999 "Don't know";

 label define OBCLATEMY2
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCHPYX2
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_Y3
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT153
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX3
   1 "UNDER 20 YEARS"
   2 "20-24 YEARS"
   3 "25-29 YEARS"
   4 "30 YEARS OR OLDER"
   8 "Refused"
   9 "Don't know";

 label define OBCMLIV3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCKNOWX3
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define OBCLIVEX21
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX22
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX23
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCAGE3
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define OBCCHSIG3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHCRT3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHGEN3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCFAR3
99998 "Refused"
99999 "Don't know";

 label define OBCRWANX3
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONX3
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONN3
 998 "Refused"
 999 "Don't know";

 label define OBCSOONMY3
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCLATEN3
 998 "Refused"
 999 "Don't know";

 label define OBCLATEMY3
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCHPYX3
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_Y4
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT154
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX4
   1 "UNDER 20 YEARS"
   2 "20-24 YEARS"
   3 "25-29 YEARS"
   4 "30 YEARS OR OLDER"
   8 "Refused"
   9 "Don't know";

 label define OBCMLIV4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCKNOWX4
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define OBCLIVEX31
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX32
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX33
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCAGE4
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define OBCCHSIG4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHCRT4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHGEN4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCFAR4
99998 "Refused"
99999 "Don't know";

 label define OBCRWANX4
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONX4
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONN4
 998 "Refused"
 999 "Don't know";

 label define OBCSOONMY4
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCLATEN4
 998 "Refused"
 999 "Don't know";

 label define OBCLATEMY4
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCHPYX4
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX5
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_Y5
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT155
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX5
   1 "UNDER 20 YEARS"
   2 "20-24 YEARS"
   3 "25-29 YEARS"
   4 "30 YEARS OR OLDER"
   8 "Refused"
   9 "Don't know";

 label define OBCMLIV5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCKNOWX5
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define OBCLIVEX41
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX42
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX43
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCAGE5
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define OBCCHSIG5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHCRT5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHGEN5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCFAR5
99998 "Refused"
99999 "Don't know";

 label define OBCRWANX5
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONX5
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONN5
 998 "Refused"
 999 "Don't know";

 label define OBCSOONMY5
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCLATEN5
 998 "Refused"
 999 "Don't know";

 label define OBCLATEMY5
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCHPYX5
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX6
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_Y6
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT156
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX6
   1 "UNDER 20 YEARS"
   2 "20-24 YEARS"
   3 "25-29 YEARS"
   4 "30 YEARS OR OLDER"
   8 "Refused"
   9 "Don't know";

 label define OBCMLIV6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCKNOWX6
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define OBCLIVEX51
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX52
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX53
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCAGE6
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define OBCCHSIG6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHCRT6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHGEN6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCFAR6
99998 "Refused"
99999 "Don't know";

 label define OBCRWANX6
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONX6
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONN6
 998 "Refused"
 999 "Don't know";

 label define OBCSOONMY6
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCLATEN6
 998 "Refused"
 999 "Don't know";

 label define OBCLATEMY6
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCHPYX6
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX7
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_Y7
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT157
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX7
   1 "UNDER 20 YEARS"
   2 "20-24 YEARS"
   3 "25-29 YEARS"
   4 "30 YEARS OR OLDER"
   8 "Refused"
   9 "Don't know";

 label define OBCMLIV7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCKNOWX7
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define OBCLIVEX61
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX62
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX63
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCAGE7
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define OBCCHSIG7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHCRT7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHGEN7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCFAR7
99998 "Refused"
99999 "Don't know";

 label define OBCRWANX7
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONX7
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONN7
 998 "Refused"
 999 "Don't know";

 label define OBCSOONMY7
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCLATEN7
 998 "Refused"
 999 "Don't know";

 label define OBCLATEMY7
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCHPYX7
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX8
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_Y8
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT158
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX8
   1 "UNDER 20 YEARS"
   2 "20-24 YEARS"
   3 "25-29 YEARS"
   4 "30 YEARS OR OLDER"
   8 "Refused"
   9 "Don't know";

 label define OBCMLIV8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCKNOWX8
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define OBCLIVEX71
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX72
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX73
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCAGE8
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define OBCCHSIG8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHCRT8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHGEN8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCFAR8
99998 "Refused"
99999 "Don't know";

 label define OBCRWANX8
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONX8
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONN8
 998 "Refused"
 999 "Don't know";

 label define OBCSOONMY8
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCLATEN8
 998 "Refused"
 999 "Don't know";

 label define OBCLATEMY8
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCHPYX8
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX9
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_Y9
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT159
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX9
   1 "UNDER 20 YEARS"
   2 "20-24 YEARS"
   3 "25-29 YEARS"
   4 "30 YEARS OR OLDER"
   8 "Refused"
   9 "Don't know";

 label define OBCMLIV9
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCKNOWX9
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define OBCLIVEX81
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX82
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX83
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCAGE9
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define OBCCHSIG9
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHCRT9
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHGEN9
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER9
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCFAR9
99998 "Refused"
99999 "Don't know";

 label define OBCRWANX9
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONX9
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONN9
 998 "Refused"
 999 "Don't know";

 label define OBCSOONMY9
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCLATEN9
 998 "Refused"
 999 "Don't know";

 label define OBCLATEMY9
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCHPYX9
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX10
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_Y10
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT160
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX10
   1 "UNDER 20 YEARS"
   2 "20-24 YEARS"
   3 "25-29 YEARS"
   4 "30 YEARS OR OLDER"
   8 "Refused"
   9 "Don't know";

 label define OBCMLIV10
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCKNOWX10
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define OBCLIVEX91
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX92
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCLIVEX93
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OBCAGE10
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define OBCCHSIG10
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHCRT10
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCCHGEN10
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER10
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OBCFAR10
99998 "Refused"
99999 "Don't know";

 label define OBCRWANX10
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONX10
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONN10
 998 "Refused"
 999 "Don't know";

 label define OBCSOONMY10
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCLATEN10
 998 "Refused"
 999 "Don't know";

 label define OBCLATEMY10
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define OBCHPYX10
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define F_AKIDS
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define otachil
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define otachiln
   1 "1 child"
  98 "Refused"
  99 "Don't know";

 label define otnbrel
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define otnbfos
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define otnbsex
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define otnbad
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define OTNBLIV1
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBLIV2
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define otnbfar
99998 "Refused"
99999 "Don't know";

 label define otnbage
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define OTNBREL2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBFOS2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OTNBAD2
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define OTNBLIV9
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBLIV10
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBFAR2
99998 "Refused"
99999 "Don't know";

 label define OTNBAGE2
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define OTNBREL3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBFOS3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OTNBAD3
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define OTNBLIV17
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBLIV18
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBFAR3
99998 "Refused"
99999 "Don't know";

 label define OTNBAGE3
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define OTNBREL4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBFOS4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBSEX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OTNBAD4
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define OTNBLIV25
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBLIV26
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBFAR4
99998 "Refused"
99999 "Don't know";

 label define OTNBAGE4
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define OTNBREL5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBFOS5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBSEX5
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OTNBAD5
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define OTNBLIV33
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBLIV34
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBFAR5
99998 "Refused"
99999 "Don't know";

 label define OTNBAGE5
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define OTNBREL6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBFOS6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBSEX6
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OTNBAD6
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define OTNBLIV41
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBLIV42
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBFAR6
99998 "Refused"
99999 "Don't know";

 label define OTNBAGE6
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define OTNBREL7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBFOS7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBSEX7
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OTNBAD7
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define OTNBLIV49
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBLIV50
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBFAR7
99998 "Refused"
99999 "Don't know";

 label define OTNBAGE7
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define OTNBREL8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBFOS8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBSEX8
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OTNBAD8
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define OTNBLIV57
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBLIV58
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBFAR8
99998 "Refused"
99999 "Don't know";

 label define OTNBAGE8
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define OTNBREL9
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBFOS9
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTNBSEX9
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OTNBAD9
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define OTNBLIV65
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBLIV66
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her biological parent(s)"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBFAR9
99998 "Refused"
99999 "Don't know";

 label define OTNBAGE9
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  98 "Refused"
  99 "Don't know";

 label define otpreg
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define otprgprb
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define otprgn
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 OR MORE PREGNANCIES"
  98 "Refused"
  99 "Don't know";

 label define otprgend
   1 "Miscarriage"
   2 "Stillbirth"
   3 "Abortion"
   8 "Refused"
   9 "Don't know";

 label define otmsn
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 OR MORE PREGNANCIES"
  98 "Refused"
  99 "Don't know";

 label define otstn
   0 "none"
   1 "1 OR MORE PREGNANCIES"
  98 "Refused"
  99 "Don't know";

 label define otabn
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 OR MORE PREGNANCIES"
  98 "Refused"
  99 "Don't know";

 label define agenonlb
   1 "UNDER 20 YEARS"
   2 "20-24 YEARS"
   3 "25-29 YEARS"
   4 "30 YEARS OR OLDER"
   8 "Refused"
   9 "Don't know";

 label define heragenlb
   1 "UNDER 20 YEARS"
   2 "20-24 YEARS"
   3 "25-29 YEARS"
   4 "30 YEARS OR OLDER"
   8 "Refused"
   9 "Don't know";

 label define totprg
   0 "none"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES"
   5 "5 PREGNANCIES"
   6 "6 PREGNANCIES"
   7 "7 PREGNANCIES"
   8 "8 PREGNANCIES"
   9 "9 PREGNANCIES"
  10 "10 OR MORE PREGNANCIES"
  98 "Refused"
  99 "Don't know";

 label define otpregs
   0 "none"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 OR MORE PREGNANCIES"
  98 "Refused"
  99 "Don't know";

 label define TOTPREGS_C
   0 "none"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES"
   5 "5 PREGNANCIES"
   6 "6 PREGNANCIES"
   7 "7 PREGNANCIES"
   8 "8 PREGNANCIES"
   9 "9 PREGNANCIES"
  10 "10 OR MORE PREGNANCIES"
 998 "Refused"
 999 "Don't know";

 label define TOTPREGS_R
   0 "none"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES"
   5 "5 PREGNANCIES"
   6 "6 PREGNANCIES"
   7 "7 PREGNANCIES"
   8 "8 PREGNANCIES"
   9 "9 PREGNANCIES"
  10 "10 OR MORE PREGNANCIES"
 998 "Refused"
 999 "Don't know";

 label define biokids
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define adopkids
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define anykids
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define bioadopt
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define pregsnow
   0 "INAPP/DK/RF"
   1 "1 woman"
   2 "2 women"
   3 "3 women"
  98 "Refused"
  99 "Don't know";

 label define BIODOB1
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define BIODOB2
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define BIODOB3
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define BIODOB4
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define BIODOB5
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define BIODOB6
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define BIODOB7
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define BIODOB8
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define BIODOB9
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define BIODOB10
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define BIOSEX1
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define BIOSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define BIOSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define BIOSEX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define BIOSEX5
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define BIOSEX6
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define BIOSEX7
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define BIOSEX8
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define BIOSEX9
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define BIOSEX10
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define BIOAGE1
 998 "Refused"
 999 "Don't know";

 label define BIOAGE2
 998 "Refused"
 999 "Don't know";

 label define BIOAGE3
 998 "Refused"
 999 "Don't know";

 label define BIOAGE4
 998 "Refused"
 999 "Don't know";

 label define BIOAGE5
 998 "Refused"
 999 "Don't know";

 label define BIOAGE6
 998 "Refused"
 999 "Don't know";

 label define BIOAGE7
 998 "Refused"
 999 "Don't know";

 label define BIOAGE8
 998 "Refused"
 999 "Don't know";

 label define BIOAGE9
 998 "Refused"
 999 "Don't know";

 label define BIOAGE10
 998 "Refused"
 999 "Don't know";

 label define BIOAGEGP1
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP2
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP3
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP4
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP5
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP6
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP7
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP8
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP9
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP10
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOHH1
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF"
   8 "Refused"
   9 "Don't know";

 label define BIOHH2
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF"
   8 "Refused"
   9 "Don't know";

 label define BIOHH3
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF"
   8 "Refused"
   9 "Don't know";

 label define BIOHH4
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF"
   8 "Refused"
   9 "Don't know";

 label define BIOHH5
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF"
   8 "Refused"
   9 "Don't know";

 label define BIOHH6
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF"
   8 "Refused"
   9 "Don't know";

 label define BIOHH7
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF"
   8 "Refused"
   9 "Don't know";

 label define BIOHH8
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF"
   8 "Refused"
   9 "Don't know";

 label define BIOHH9
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF"
   8 "Refused"
   9 "Don't know";

 label define BIOHH10
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF"
   8 "Refused"
   9 "Don't know";

 label define BIOMOM1
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMOM2
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMOM3
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMOM4
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMOM5
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMOM6
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMOM7
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMOM8
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMOM9
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMOM10
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMAR1
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR2
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR3
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR4
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR5
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR6
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR7
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR8
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR9
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR10
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB1
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB2
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB3
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB4
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB5
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB6
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB7
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB8
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB9
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB10
   0 "no"
   1 "yes"
   8 "Refused"
   9 "Don't know";

 label define BIOLRNPG1
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define BIOLRNPG2
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define BIOLRNPG3
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define BIOLRNPG4
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define BIOLRNPG5
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define BIOLRNPG6
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define BIOLRNPG7
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define BIOLRNPG8
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define BIOLRNPG9
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define BIOLRNPG10
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define BIOLIVNG11
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG12
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG13
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG21
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG22
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG23
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG31
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG32
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG33
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG41
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG42
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG43
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG51
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG52
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG53
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG61
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG62
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG63
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG71
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG72
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG73
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG81
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG82
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG83
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG91
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG92
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG93
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG101
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG102
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOLIVNG103
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define BIOCHSIG1
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHSIG2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHSIG3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHSIG4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHSIG5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHSIG6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHSIG7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHSIG8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHSIG9
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHSIG10
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHCRT1
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHCRT2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHCRT3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHCRT4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHCRT5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHCRT6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHCRT7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHCRT8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHCRT9
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHCRT10
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHGEN1
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHGEN2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHGEN3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHGEN4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHGEN5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHGEN6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHGEN7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHGEN8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHGEN9
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOCHGEN10
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR1
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR4
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR5
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR6
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR7
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR8
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR9
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR10
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BIOHWFAR1
99998 "Refused"
99999 "Don't know";

 label define BIOHWFAR2
99998 "Refused"
99999 "Don't know";

 label define BIOHWFAR3
99998 "Refused"
99999 "Don't know";

 label define BIOHWFAR4
99998 "Refused"
99999 "Don't know";

 label define BIOHWFAR5
99998 "Refused"
99999 "Don't know";

 label define BIOHWFAR6
99998 "Refused"
99999 "Don't know";

 label define BIOHWFAR7
99998 "Refused"
99999 "Don't know";

 label define BIOHWFAR8
99998 "Refused"
99999 "Don't know";

 label define BIOHWFAR9
99998 "Refused"
99999 "Don't know";

 label define BIOHWFAR10
99998 "Refused"
99999 "Don't know";

 label define BIOWANT1
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define BIOWANT2
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define BIOWANT3
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define BIOWANT4
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define BIOWANT5
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define BIOWANT6
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define BIOWANT7
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define BIOWANT8
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define BIOWANT9
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define BIOWANT10
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define BIOHSOON1
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define BIOHSOON2
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define BIOHSOON3
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define BIOHSOON4
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define BIOHSOON5
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define BIOHSOON6
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define BIOHSOON7
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define BIOHSOON8
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define BIOHSOON9
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define BIOHSOON10
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define BIOHOWSN1
 998 "Refused"
 999 "Don't know";

 label define BIOHOWSN2
 998 "Refused"
 999 "Don't know";

 label define BIOHOWSN3
 998 "Refused"
 999 "Don't know";

 label define BIOHOWSN4
 998 "Refused"
 999 "Don't know";

 label define BIOHOWSN5
 998 "Refused"
 999 "Don't know";

 label define BIOHOWSN6
 998 "Refused"
 999 "Don't know";

 label define BIOHOWSN7
 998 "Refused"
 999 "Don't know";

 label define BIOHOWSN8
 998 "Refused"
 999 "Don't know";

 label define BIOHOWSN9
 998 "Refused"
 999 "Don't know";

 label define BIOHOWSN10
 998 "Refused"
 999 "Don't know";

 label define BIOHPYPG1
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG2
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG3
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG4
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG5
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG6
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG7
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG8
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG9
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG10
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  98 "Refused"
  99 "Don't know";

 label define crall
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
   4 "4 OR MORE CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define CRALLU5
   0 "none"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define CRALL518
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 OR MORE CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define CRMALU5
   0 "none"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define CRMAL518
   0 "none"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define CRFEMU5
   0 "none"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define CRFEM518
   0 "none"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define ncall
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define NCALLU5
   0 "none"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define NCALL518
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define NCMALU5
   0 "none"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define NCMAL518
   0 "none"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define NCFEMU5
   0 "none"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define NCFEM518
   0 "none"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define rfage
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define rfsex
   1 "Male"
   2 "Female"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define ROUTG04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RMEAL04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RERRAND04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RPLAY04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RREAD04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RAFFECT04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RPRAISE04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RFEED04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RBATH04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RDIAPER04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RBED04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RAPPT04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RDISC04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define ROUTG518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RMEAL518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RERRAND518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RAFFECT518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RPRAISE518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RTAKE518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RAPPT518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RHELP518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RDISC518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RCLFR518
   1 "Knows everything"
   2 "Knows most things"
   3 "Knows some things"
   4 "Knows a little"
   5 "Knows nothing"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RDO518
   1 "Knows everything"
   2 "Knows most things"
   3 "Knows some things"
   4 "Knows a little"
   5 "Knows nothing"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define nrfage
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define nrfsex
   1 "Male"
   2 "Female"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define NRVISIT04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRSATVIS04
   0 "Very dissatisfied"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
   6 "6"
   7 "7"
   8 "8"
   9 "9"
  10 "Very satisfied"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define NROUTG04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRMEAL04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRERRAND04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NROVRNT04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRPLAY04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRREAD04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRAFFECT04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRPRAISE04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRFEED04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRBATH04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRDIAPER04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRBED04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRAPPT04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRDISC04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRVISIT518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRSATVIS518
   0 "Very dissatisfied"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
   6 "6"
   7 "7"
   8 "8"
   9 "9"
  10 "Very satisfied"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define NROUTG518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRMEAL518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRERRAND518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NROVRNT518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRAFFECT518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRPRAISE518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRTAKE518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRAPPT518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRHELP518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRDISC518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRCLFR518
   1 "Knows everything"
   2 "Knows most things"
   3 "Knows some things"
   4 "Knows a little"
   5 "Knows nothing"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NRDO518
   1 "Knows everything"
   2 "Knows most things"
   3 "Knows some things"
   4 "Knows a little"
   5 "Knows nothing"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define nrmoney
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define nreg
   1 "Regular basis"
   2 "Once in a while"
   8 "Refused"
   9 "Don't know";

 label define nragree
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define nrchsuppyr
   0 "none/amt not reported"
   1 "1-3000"
   2 "3001-5000"
   3 "5001-9000"
   4 "9001+";

 label define coparent
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define rwant
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define probwant
   1 "Probably want"
   2 "Probably do not want"
   8 "Refused"
   9 "Don't know";

 label define jintend
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define jsureint
   1 "Very sure"
   2 "Somewhat sure"
   3 "Not at all sure"
   8 "Refused"
   9 "Don't know";

 label define jintendn
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define jexpectl
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define jexpects
   0 "none"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define jintnext
   1 "Within the next 2 years"
   2 "2-5 years from now"
   3 "More than 5 years from now"
   8 "Refused"
   9 "Don't know";

 label define intend
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define intendn
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define expectl
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define expects
   0 "none"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define intnext
   1 "Within the next 2 years"
   2 "2-5 years from now"
   3 "More than 5 years from now"
   8 "Refused"
   9 "Don't know";

 label define usualcar
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define uslplace
   1 "Private doctor's office or HMO"
   2 "Community health clinic, community clinic, public health clinic"
   3 "Family planning or Planned Parenthood Clinic"
   4 "Employer or company clinic"
   5 "School or school-based clinic"
   6 "Hospital outpatient clinic"
   7 "Hospital emergency room"
   8 "Hospital regular room"
   9 "Urgent care center, urgi-care, or walk-in facility"
  10 "Sexually transmitted disease (STD) clinic"
  11 "In-store health clinic (like CVS, Target, or Walmart)"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define USL12MOS
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define currcov
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define COVERHOW01
   1 "Private health insurance plan (from employer or workplace; purchased directly; through a state or local government program or community program)"
   2 "Medicaid-additional name(s) for Medicaid in this state: [MEDICAID_FILL]"
   4 "Medi-GAP"
   5 "Military health care including: the VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "Indian Health Service, or Single Service Plan"
   7 "chip"
   8 "State-sponsored health plan"
   9 "Medicare or other government health care"
  98 "Refused"
  99 "Don't know";

 label define COVERHOW02
   1 "Private health insurance plan (from employer or workplace; purchased directly; through a state or local government program or community program)"
   2 "Medicaid-additional name(s) for Medicaid in this state: [MEDICAID_FILL]"
   4 "Medi-GAP"
   5 "Military health care including: the VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "Indian Health Service, or Single Service Plan"
   7 "chip"
   8 "State-sponsored health plan"
   9 "Medicare or other government health care"
  98 "Refused"
  99 "Don't know";

 label define COVERHOW03
   1 "Private health insurance plan (from employer or workplace; purchased directly; through a state or local government program or community program)"
   2 "Medicaid-additional name(s) for Medicaid in this state: [MEDICAID_FILL]"
   4 "Medi-GAP"
   5 "Military health care including: the VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "Indian Health Service, or Single Service Plan"
   7 "chip"
   8 "State-sponsored health plan"
   9 "Medicare or other government health care"
  98 "Refused"
  99 "Don't know";

 label define COVERHOW04
   1 "Private health insurance plan (from employer or workplace; purchased directly; through a state or local government program or community program)"
   2 "Medicaid-additional name(s) for Medicaid in this state: [MEDICAID_FILL]"
   4 "Medi-GAP"
   5 "Military health care including: the VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "Indian Health Service, or Single Service Plan"
   7 "chip"
   8 "State-sponsored health plan"
   9 "Medicare or other government health care"
  98 "Refused"
  99 "Don't know";

 label define parinsur
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define INS_EXCH
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define INS_PREM
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define COVER12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define numnocov
   1 "1 Month"
   2 "2 Months"
   3 "3 Months"
   4 "4 Months"
   5 "5 Months"
   6 "6 Months"
   7 "7 Months"
   8 "8 Months"
   9 "9 Months"
  10 "10 Months"
  11 "11 Months"
  12 "12 Months"
  98 "Refused"
  99 "Don't know";

 label define yougofpc
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define whengofp
   1 "In the last 12 months"
   2 "More than 12 months ago"
   8 "Refused"
   9 "Don't know";

 label define YOUFPSVC1
   1 "Physical exam"
   3 "HIV testing"
   4 "Testing for sexually transmitted diseases other than HIV"
   5 "Treatment for sexually transmitted diseases other than HIV"
   7 "Information or advice on strategies to prevent pregnancy, for example, birth control methods"
   8 "Information or advice on strategies to prevent STDs or HIV, for example, using condoms or reducing your number of partners"
   9 "Some other service"
  98 "Refused"
  99 "Don't know";

 label define YOUFPSVC2
   1 "Physical exam"
   3 "HIV testing"
   4 "Testing for sexually transmitted diseases other than HIV"
   5 "Treatment for sexually transmitted diseases other than HIV"
   7 "Information or advice on strategies to prevent pregnancy, for example, birth control methods"
   8 "Information or advice on strategies to prevent STDs or HIV, for example, using condoms or reducing your number of partners"
   9 "Some other service"
  98 "Refused"
  99 "Don't know";

 label define YOUFPSVC3
   1 "Physical exam"
   3 "HIV testing"
   4 "Testing for sexually transmitted diseases other than HIV"
   5 "Treatment for sexually transmitted diseases other than HIV"
   7 "Information or advice on strategies to prevent pregnancy, for example, birth control methods"
   8 "Information or advice on strategies to prevent STDs or HIV, for example, using condoms or reducing your number of partners"
   9 "Some other service"
  98 "Refused"
  99 "Don't know";

 label define YOUFPSVC4
   1 "Physical exam"
   3 "HIV testing"
   4 "Testing for sexually transmitted diseases other than HIV"
   5 "Treatment for sexually transmitted diseases other than HIV"
   7 "Information or advice on strategies to prevent pregnancy, for example, birth control methods"
   8 "Information or advice on strategies to prevent STDs or HIV, for example, using condoms or reducing your number of partners"
   9 "Some other service"
  98 "Refused"
  99 "Don't know";

 label define YOUFPSVC5
   1 "Physical exam"
   3 "HIV testing"
   4 "Testing for sexually transmitted diseases other than HIV"
   5 "Treatment for sexually transmitted diseases other than HIV"
   7 "Information or advice on strategies to prevent pregnancy, for example, birth control methods"
   8 "Information or advice on strategies to prevent STDs or HIV, for example, using condoms or reducing your number of partners"
   9 "Some other service"
  98 "Refused"
  99 "Don't know";

 label define YOUFPSVC6
   1 "Physical exam"
   3 "HIV testing"
   4 "Testing for sexually transmitted diseases other than HIV"
   5 "Treatment for sexually transmitted diseases other than HIV"
   7 "Information or advice on strategies to prevent pregnancy, for example, birth control methods"
   8 "Information or advice on strategies to prevent STDs or HIV, for example, using condoms or reducing your number of partners"
   9 "Some other service"
  98 "Refused"
  99 "Don't know";

 label define YOUFPSVC7
   1 "Physical exam"
   3 "HIV testing"
   4 "Testing for sexually transmitted diseases other than HIV"
   5 "Treatment for sexually transmitted diseases other than HIV"
   7 "Information or advice on strategies to prevent pregnancy, for example, birth control methods"
   8 "Information or advice on strategies to prevent STDs or HIV, for example, using condoms or reducing your number of partners"
   9 "Some other service"
  98 "Refused"
  99 "Don't know";

 label define deaf
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define blind
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define difdecide
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define difwalk
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define difdress
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define difout
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define evrcancer
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define agecancer
  17 "17 YEARS OR YOUNGER"
  98 "Refused"
  99 "Don't know";

 label define alcorisk
   1 "A lot"
   2 "A little"
   3 "Not at all"
   4 "No opinion"
   8 "Refused"
   9 "Don't know";

 label define VISIT12MO1
   1 "A routine physical exam"
   2 "A physical exam for sports or work"
   3 "A doctor visit when you were sick or hurt"
   4 "Did not have any visits to a doctor"
   8 "Refused"
   9 "Don't know";

 label define VISIT12MO2
   1 "A routine physical exam"
   2 "A physical exam for sports or work"
   3 "A doctor visit when you were sick or hurt"
   4 "Did not have any visits to a doctor"
   8 "Refused"
   9 "Don't know";

 label define VISIT12MO3
   1 "A routine physical exam"
   2 "A physical exam for sports or work"
   3 "A doctor visit when you were sick or hurt"
   4 "Did not have any visits to a doctor"
   8 "Refused"
   9 "Don't know";

 label define SVC12MO1
   1 "A testicular exam (had your testicles examined)"
   2 "Testing for sexually transmitted disease"
   3 "Treatment for sexually transmitted disease"
   4 "Information or advice about using condoms"
   5 "Information or advice about your partner using female methods of birth control"
   6 "Information or advice about you getting a vasectomy (surgically sterilized)"
   7 "Information or advice about HIV or AIDS"
   8 "Information or advice about other sexually transmitted diseases, such as gonorrhea, Chlamydia, syphilis,  herpes, or AIDS"
  10 "Information or advice about using condoms to prevent pregnancy"
  11 "Information or advice about using condoms to prevent STDs"
  12 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define SVC12MO2
   1 "A testicular exam (had your testicles examined)"
   2 "Testing for sexually transmitted disease"
   3 "Treatment for sexually transmitted disease"
   4 "Information or advice about using condoms"
   5 "Information or advice about your partner using female methods of birth control"
   6 "Information or advice about you getting a vasectomy (surgically sterilized)"
   7 "Information or advice about HIV or AIDS"
   8 "Information or advice about other sexually transmitted diseases, such as gonorrhea, Chlamydia, syphilis,  herpes, or AIDS"
  10 "Information or advice about using condoms to prevent pregnancy"
  11 "Information or advice about using condoms to prevent STDs"
  12 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define SVC12MO3
   1 "A testicular exam (had your testicles examined)"
   2 "Testing for sexually transmitted disease"
   3 "Treatment for sexually transmitted disease"
   4 "Information or advice about using condoms"
   5 "Information or advice about your partner using female methods of birth control"
   6 "Information or advice about you getting a vasectomy (surgically sterilized)"
   7 "Information or advice about HIV or AIDS"
   8 "Information or advice about other sexually transmitted diseases, such as gonorrhea, Chlamydia, syphilis,  herpes, or AIDS"
  10 "Information or advice about using condoms to prevent pregnancy"
  11 "Information or advice about using condoms to prevent STDs"
  12 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define SVC12MO4
   1 "A testicular exam (had your testicles examined)"
   2 "Testing for sexually transmitted disease"
   3 "Treatment for sexually transmitted disease"
   4 "Information or advice about using condoms"
   5 "Information or advice about your partner using female methods of birth control"
   6 "Information or advice about you getting a vasectomy (surgically sterilized)"
   7 "Information or advice about HIV or AIDS"
   8 "Information or advice about other sexually transmitted diseases, such as gonorrhea, Chlamydia, syphilis,  herpes, or AIDS"
  10 "Information or advice about using condoms to prevent pregnancy"
  11 "Information or advice about using condoms to prevent STDs"
  12 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define SVC12MO5
   1 "A testicular exam (had your testicles examined)"
   2 "Testing for sexually transmitted disease"
   3 "Treatment for sexually transmitted disease"
   4 "Information or advice about using condoms"
   5 "Information or advice about your partner using female methods of birth control"
   6 "Information or advice about you getting a vasectomy (surgically sterilized)"
   7 "Information or advice about HIV or AIDS"
   8 "Information or advice about other sexually transmitted diseases, such as gonorrhea, Chlamydia, syphilis,  herpes, or AIDS"
  10 "Information or advice about using condoms to prevent pregnancy"
  11 "Information or advice about using condoms to prevent STDs"
  12 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define SVC12MO6
   1 "A testicular exam (had your testicles examined)"
   2 "Testing for sexually transmitted disease"
   3 "Treatment for sexually transmitted disease"
   4 "Information or advice about using condoms"
   5 "Information or advice about your partner using female methods of birth control"
   6 "Information or advice about you getting a vasectomy (surgically sterilized)"
   7 "Information or advice about HIV or AIDS"
   8 "Information or advice about other sexually transmitted diseases, such as gonorrhea, Chlamydia, syphilis,  herpes, or AIDS"
  10 "Information or advice about using condoms to prevent pregnancy"
  11 "Information or advice about using condoms to prevent STDs"
  12 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define SVC12MO7
   1 "A testicular exam (had your testicles examined)"
   2 "Testing for sexually transmitted disease"
   3 "Treatment for sexually transmitted disease"
   4 "Information or advice about using condoms"
   5 "Information or advice about your partner using female methods of birth control"
   6 "Information or advice about you getting a vasectomy (surgically sterilized)"
   7 "Information or advice about HIV or AIDS"
   8 "Information or advice about other sexually transmitted diseases, such as gonorrhea, Chlamydia, syphilis,  herpes, or AIDS"
  10 "Information or advice about using condoms to prevent pregnancy"
  11 "Information or advice about using condoms to prevent STDs"
  12 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define SVC12MO8
   1 "A testicular exam (had your testicles examined)"
   2 "Testing for sexually transmitted disease"
   3 "Treatment for sexually transmitted disease"
   4 "Information or advice about using condoms"
   5 "Information or advice about your partner using female methods of birth control"
   6 "Information or advice about you getting a vasectomy (surgically sterilized)"
   7 "Information or advice about HIV or AIDS"
   8 "Information or advice about other sexually transmitted diseases, such as gonorrhea, Chlamydia, syphilis,  herpes, or AIDS"
  10 "Information or advice about using condoms to prevent pregnancy"
  11 "Information or advice about using condoms to prevent STDs"
  12 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define SVC12MO9
   1 "A testicular exam (had your testicles examined)"
   2 "Testing for sexually transmitted disease"
   3 "Treatment for sexually transmitted disease"
   4 "Information or advice about using condoms"
   5 "Information or advice about your partner using female methods of birth control"
   6 "Information or advice about you getting a vasectomy (surgically sterilized)"
   7 "Information or advice about HIV or AIDS"
   8 "Information or advice about other sexually transmitted diseases, such as gonorrhea, Chlamydia, syphilis,  herpes, or AIDS"
  10 "Information or advice about using condoms to prevent pregnancy"
  11 "Information or advice about using condoms to prevent STDs"
  12 "None of the above"
  98 "Refused"
  99 "Don't know";

 label define numvisit
   1 "1 VISIT"
   2 "2 VISITS"
   3 "3 VISITS"
   4 "4 VISITS"
  98 "Refused"
  99 "Don't know";

 label define PLACEVIS01
   1 "Private doctor's office or HMO"
   2 "Community health clinic, community clinic, public health clinic"
   3 "Family planning or Planned Parenthood Clinic"
   4 "Employer or company clinic"
   5 "School or school-based clinic"
   6 "Hospital outpatient clinic"
   7 "Hospital emergency room"
   8 "Hospital regular room"
   9 "Urgent care center, urgi-care, or walk-in facility"
  10 "Sexually transmitted disease (STD) clinic"
  11 "In-store health clinic (like CVS, Target, or Walmart)"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define PLACEVIS02
   1 "Private doctor's office or HMO"
   2 "Community health clinic, community clinic, public health clinic"
   3 "Family planning or Planned Parenthood Clinic"
   4 "Employer or company clinic"
   5 "School or school-based clinic"
   6 "Hospital outpatient clinic"
   7 "Hospital emergency room"
   8 "Hospital regular room"
   9 "Urgent care center, urgi-care, or walk-in facility"
  10 "Sexually transmitted disease (STD) clinic"
  11 "In-store health clinic (like CVS, Target, or Walmart)"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define PLACEVIS03
   1 "Private doctor's office or HMO"
   2 "Community health clinic, community clinic, public health clinic"
   3 "Family planning or Planned Parenthood Clinic"
   4 "Employer or company clinic"
   5 "School or school-based clinic"
   6 "Hospital outpatient clinic"
   7 "Hospital emergency room"
   8 "Hospital regular room"
   9 "Urgent care center, urgi-care, or walk-in facility"
  10 "Sexually transmitted disease (STD) clinic"
  11 "In-store health clinic (like CVS, Target, or Walmart)"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define PLACEVIS04
   1 "Private doctor's office or HMO"
   2 "Community health clinic, community clinic, public health clinic"
   3 "Family planning or Planned Parenthood Clinic"
   4 "Employer or company clinic"
   5 "School or school-based clinic"
   6 "Hospital outpatient clinic"
   7 "Hospital emergency room"
   8 "Hospital regular room"
   9 "Urgent care center, urgi-care, or walk-in facility"
  10 "Sexually transmitted disease (STD) clinic"
  11 "In-store health clinic (like CVS, Target, or Walmart)"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define PLACEVIS05
   1 "Private doctor's office or HMO"
   2 "Community health clinic, community clinic, public health clinic"
   3 "Family planning or Planned Parenthood Clinic"
   4 "Employer or company clinic"
   5 "School or school-based clinic"
   6 "Hospital outpatient clinic"
   7 "Hospital emergency room"
   8 "Hospital regular room"
   9 "Urgent care center, urgi-care, or walk-in facility"
  10 "Sexually transmitted disease (STD) clinic"
  11 "In-store health clinic (like CVS, Target, or Walmart)"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define PLACEVIS06
   1 "Private doctor's office or HMO"
   2 "Community health clinic, community clinic, public health clinic"
   3 "Family planning or Planned Parenthood Clinic"
   4 "Employer or company clinic"
   5 "School or school-based clinic"
   6 "Hospital outpatient clinic"
   7 "Hospital emergency room"
   8 "Hospital regular room"
   9 "Urgent care center, urgi-care, or walk-in facility"
  10 "Sexually transmitted disease (STD) clinic"
  11 "In-store health clinic (like CVS, Target, or Walmart)"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define PLACEVIS07
   1 "Private doctor's office or HMO"
   2 "Community health clinic, community clinic, public health clinic"
   3 "Family planning or Planned Parenthood Clinic"
   4 "Employer or company clinic"
   5 "School or school-based clinic"
   6 "Hospital outpatient clinic"
   7 "Hospital emergency room"
   8 "Hospital regular room"
   9 "Urgent care center, urgi-care, or walk-in facility"
  10 "Sexually transmitted disease (STD) clinic"
  11 "In-store health clinic (like CVS, Target, or Walmart)"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define SVCPAY1
   1 "Insurance"
   2 "Co-payment"
   3 "Out-of-pocket payment (not including copay)"
   4 "Medicaid"
   5 "No payment required"
   6 "Some other way"
   8 "Refused"
   9 "Don't know";

 label define SVCPAY2
   1 "Insurance"
   2 "Co-payment"
   3 "Out-of-pocket payment (not including copay)"
   4 "Medicaid"
   5 "No payment required"
   6 "Some other way"
   8 "Refused"
   9 "Don't know";

 label define SVCPAY3
   1 "Insurance"
   2 "Co-payment"
   3 "Out-of-pocket payment (not including copay)"
   4 "Medicaid"
   5 "No payment required"
   6 "Some other way"
   8 "Refused"
   9 "Don't know";

 label define SVCPAY4
   1 "Insurance"
   2 "Co-payment"
   3 "Out-of-pocket payment (not including copay)"
   4 "Medicaid"
   5 "No payment required"
   6 "Some other way"
   8 "Refused"
   9 "Don't know";

 label define talksa
   1 "Yes"
   5 "No"
   7 "If vol: Provider already knew R's status"
   8 "Refused"
   9 "Don't know";

 label define talkec
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define talkdm
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define whypstd
   1 "Could walk in or get same-day appointment"
   2 "Cost"
   3 "Privacy concern"
   4 "Expert care here"
   5 "Embarrassed to go to usual provider"
   6 "Other"
   8 "Refused"
   9 "Don't know";

 label define whynostd
   1 "Didn't want parents to find out"
   2 "Concerned about confidentiality"
   3 "Doctor or health care provider never suggested it"
   4 "Embarrassed or difficult to ask to be tested"
   5 "Cost or lack of insurance"
   6 "Other"
   8 "Refused"
   9 "Don't know";

 label define BARRIER1
   1 "I did not need to see a doctor in the last year"
   2 "I did not know where to go for care"
   3 "I could not afford to pay for a visit"
   4 "I was afraid to hear bad news"
   5 "I had privacy/confidentiality concerns"
   6 "I could not take time off from work"
   7 "Insurance"
   8 "Not sexually active"
   9 "Time/busy"
  10 "Didn't make appt"
  11 "Don't like/trust doctors"
  20 "Something else - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define BARRIER2
   1 "I did not need to see a doctor in the last year"
   2 "I did not know where to go for care"
   3 "I could not afford to pay for a visit"
   4 "I was afraid to hear bad news"
   5 "I had privacy/confidentiality concerns"
   6 "I could not take time off from work"
   7 "Insurance"
   8 "Not sexually active"
   9 "Time/busy"
  10 "Didn't make appt"
  11 "Don't like/trust doctors"
  20 "Something else - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define BARRIER3
   1 "I did not need to see a doctor in the last year"
   2 "I did not know where to go for care"
   3 "I could not afford to pay for a visit"
   4 "I was afraid to hear bad news"
   5 "I had privacy/confidentiality concerns"
   6 "I could not take time off from work"
   7 "Insurance"
   8 "Not sexually active"
   9 "Time/busy"
  10 "Didn't make appt"
  11 "Don't like/trust doctors"
  20 "Something else - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define BARRIER4
   1 "I did not need to see a doctor in the last year"
   2 "I did not know where to go for care"
   3 "I could not afford to pay for a visit"
   4 "I was afraid to hear bad news"
   5 "I had privacy/confidentiality concerns"
   6 "I could not take time off from work"
   7 "Insurance"
   8 "Not sexually active"
   9 "Time/busy"
  10 "Didn't make appt"
  11 "Don't like/trust doctors"
  20 "Something else - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define BARRIER5
   1 "I did not need to see a doctor in the last year"
   2 "I did not know where to go for care"
   3 "I could not afford to pay for a visit"
   4 "I was afraid to hear bad news"
   5 "I had privacy/confidentiality concerns"
   6 "I could not take time off from work"
   7 "Insurance"
   8 "Not sexually active"
   9 "Time/busy"
  10 "Didn't make appt"
  11 "Don't like/trust doctors"
  20 "Something else - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define bldpress
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define highbp
   1 "Yes"
   5 "No"
   6 "If vol: Not told results"
   8 "Refused"
   9 "Don't know";

 label define bpmeds
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define asksmoke
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define infhelp
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define INFSVCS1
   1 "Advice"
   2 "Infertility testing"
   3 "Drugs to improve ovulation"
   4 "Surgery to correct blocked tubes"
   5 "Artificial insemination"
   6 "Treatment for varicocele"
   7 "Other types of medical help"
   8 "Refused"
   9 "Don't know";

 label define INFSVCS2
   1 "Advice"
   2 "Infertility testing"
   3 "Drugs to improve ovulation"
   4 "Surgery to correct blocked tubes"
   5 "Artificial insemination"
   6 "Treatment for varicocele"
   7 "Other types of medical help"
   8 "Refused"
   9 "Don't know";

 label define INFSVCS3
   1 "Advice"
   2 "Infertility testing"
   3 "Drugs to improve ovulation"
   4 "Surgery to correct blocked tubes"
   5 "Artificial insemination"
   6 "Treatment for varicocele"
   7 "Other types of medical help"
   8 "Refused"
   9 "Don't know";

 label define INFSVCS4
   1 "Advice"
   2 "Infertility testing"
   3 "Drugs to improve ovulation"
   4 "Surgery to correct blocked tubes"
   5 "Artificial insemination"
   6 "Treatment for varicocele"
   7 "Other types of medical help"
   8 "Refused"
   9 "Don't know";

 label define INFSVCS5
   1 "Advice"
   2 "Infertility testing"
   3 "Drugs to improve ovulation"
   4 "Surgery to correct blocked tubes"
   5 "Artificial insemination"
   6 "Treatment for varicocele"
   7 "Other types of medical help"
   8 "Refused"
   9 "Don't know";

 label define INFSVCS6
   1 "Advice"
   2 "Infertility testing"
   3 "Drugs to improve ovulation"
   4 "Surgery to correct blocked tubes"
   5 "Artificial insemination"
   6 "Treatment for varicocele"
   7 "Other types of medical help"
   8 "Refused"
   9 "Don't know";

 label define INFSVCS7
   1 "Advice"
   2 "Infertility testing"
   3 "Drugs to improve ovulation"
   4 "Surgery to correct blocked tubes"
   5 "Artificial insemination"
   6 "Treatment for varicocele"
   7 "Other types of medical help"
   8 "Refused"
   9 "Don't know";

 label define inftest
   1 "You"
   2 "Her"
   3 "Both of you"
   8 "Refused"
   9 "Don't know";

 label define whoinsem
   1 "You only"
   2 "Some other donor only"
   3 "Both"
   8 "Refused"
   9 "Don't know";

 label define infhlpnw
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define LASTVIS_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define LASTVIS_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define cminfvis
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define INFRTHIS_1
   1 "Low sperm count or no sperm"
   2 "Varicocele"
   3 "Genetic disorder that alters sperm production"
   4 "Low testosterone level"
   5 "Other"
   6 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define INFRTHIS_2
   1 "Low sperm count or no sperm"
   2 "Varicocele"
   3 "Genetic disorder that alters sperm production"
   4 "Low testosterone level"
   5 "Other"
   6 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define INFRTHIS_3
   1 "Low sperm count or no sperm"
   2 "Varicocele"
   3 "Genetic disorder that alters sperm production"
   4 "Low testosterone level"
   5 "Other"
   6 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define donblood
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define hivtest
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define nohivtst
   1 "You have never been offered an HIV test"
   2 "You are worried about what other people would think if you got tested for HIV"
   3 "It's unlikely you've been exposed to HIV"
   4 "You were afraid to find out if you were HIV positive (that you had HIV)"
   5 "You don't like needles"
  20 "Some other reason"
  21 "R reported spouse or partner tested negative"
  22 "Never had sexual intercourse"
  23 "No health insurance or coverage, or R couldn't afford an HIV test"
  24 "Part of blood donation"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define WHENHIV_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define WHENHIV_Y
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define cmhivtst
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define hivtstyr
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define hivresult
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define whynoget
   1 "You thought the testing site would contact you"
   2 "You were afraid to find out if you were HIV positive (that you had HIV)"
   3 "You didn't want to know your HIV test results"
   4 "You didn't know where or how to get your test result"
  20 "Some other reason"
  98 "Refused"
  99 "Don't know";

 label define plchiv
   1 "Private doctor's office"
   2 "HMO facility"
   3 "Community health clinic, community clinic, public health clinic"
   4 "Family planning or Planned Parenthood clinic"
   5 "Employer or company clinic"
   6 "School or school-based clinic (including college or university)"
   7 "Hospital outpatient clinic"
   8 "Hospital emergency room"
   9 "Hospital regular room"
  10 "Urgent care center, urgi-care, or walk-in facility"
  11 "Your worksite"
  12 "Your home"
  13 "Military induction or military service site"
  14 "Sexually transmitted disease (STD) clinic"
  15 "Laboratory or blood bank"
  20 "Some other place not shown separately"
  21 "Prison or jail"
  22 "Mobile testing or community testing site"
  23 "Drug, alcohol or rehabilitation treatment center"
  98 "Refused"
  99 "Don't know";

 label define RHHIVT1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RHHIVT21
   1 "I didn't want to get tested by a doctor or at an HIV testing site"
   2 "I didn't want other people to know I am getting tested"
   3 "I wanted to get tested together with someone, before we had sex"
   4 "I wanted to get tested by myself, before having sex"
   5 "I wanted to get tested by myself, after having sex"
   6 "A sex partner asked me to take a rapid home HIV test"
  20 "Other reason"
  98 "Refused"
  99 "Don't know";

 label define RHHIVT22
   1 "I didn't want to get tested by a doctor or at an HIV testing site"
   2 "I didn't want other people to know I am getting tested"
   3 "I wanted to get tested together with someone, before we had sex"
   4 "I wanted to get tested by myself, before having sex"
   5 "I wanted to get tested by myself, after having sex"
   6 "A sex partner asked me to take a rapid home HIV test"
  20 "Other reason"
  98 "Refused"
  99 "Don't know";

 label define RHHIVT23
   1 "I didn't want to get tested by a doctor or at an HIV testing site"
   2 "I didn't want other people to know I am getting tested"
   3 "I wanted to get tested together with someone, before we had sex"
   4 "I wanted to get tested by myself, before having sex"
   5 "I wanted to get tested by myself, after having sex"
   6 "A sex partner asked me to take a rapid home HIV test"
  20 "Other reason"
  98 "Refused"
  99 "Don't know";

 label define RHHIVT24
   1 "I didn't want to get tested by a doctor or at an HIV testing site"
   2 "I didn't want other people to know I am getting tested"
   3 "I wanted to get tested together with someone, before we had sex"
   4 "I wanted to get tested by myself, before having sex"
   5 "I wanted to get tested by myself, after having sex"
   6 "A sex partner asked me to take a rapid home HIV test"
  20 "Other reason"
  98 "Refused"
  99 "Don't know";

 label define RHHIVT25
   1 "I didn't want to get tested by a doctor or at an HIV testing site"
   2 "I didn't want other people to know I am getting tested"
   3 "I wanted to get tested together with someone, before we had sex"
   4 "I wanted to get tested by myself, before having sex"
   5 "I wanted to get tested by myself, after having sex"
   6 "A sex partner asked me to take a rapid home HIV test"
  20 "Other reason"
  98 "Refused"
  99 "Don't know";

 label define hivtst
   1 "Part of a medical checkup or surgical procedure (a doctor or medical provider asked for the test)"
   2 "Required for health or life insurance coverage"
   3 "Required for marriage license or to get married"
   4 "Required for military service or job"
   5 "You wanted to find out if infected or not (you were the one who asked for the test)"
   6 "Someone else suggested you should be tested"
   7 "Intentionally blank (a code used only for females, prenatal testing)"
   8 "You might have been exposed through sex or drug use"
   9 "You might have been exposed in some other way"
  20 "Some other reason - not shown separately"
  21 "Required for immigration or travel"
  22 "Required for incarceration"
  23 "Required for school"
  24 "Blood donation"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define prephiv
   1 "Yes"
   5 "No";

 label define talkdoct
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define AIDSTALK01
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "Safe sex practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status"
  11 "Medicines to prevent getting HIV (pre-exposure prophylaxis, also known as PrEP)"
  20 "Some other topic - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define AIDSTALK02
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "Safe sex practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status"
  11 "Medicines to prevent getting HIV (pre-exposure prophylaxis, also known as PrEP)"
  20 "Some other topic - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define AIDSTALK03
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "Safe sex practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status"
  11 "Medicines to prevent getting HIV (pre-exposure prophylaxis, also known as PrEP)"
  20 "Some other topic - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define AIDSTALK04
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "Safe sex practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status"
  11 "Medicines to prevent getting HIV (pre-exposure prophylaxis, also known as PrEP)"
  20 "Some other topic - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define AIDSTALK05
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "Safe sex practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status"
  11 "Medicines to prevent getting HIV (pre-exposure prophylaxis, also known as PrEP)"
  20 "Some other topic - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define AIDSTALK06
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "Safe sex practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status"
  11 "Medicines to prevent getting HIV (pre-exposure prophylaxis, also known as PrEP)"
  20 "Some other topic - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define AIDSTALK07
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "Safe sex practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status"
  11 "Medicines to prevent getting HIV (pre-exposure prophylaxis, also known as PrEP)"
  20 "Some other topic - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define AIDSTALK08
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "Safe sex practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status"
  11 "Medicines to prevent getting HIV (pre-exposure prophylaxis, also known as PrEP)"
  20 "Some other topic - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define AIDSTALK09
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "Safe sex practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status"
  11 "Medicines to prevent getting HIV (pre-exposure prophylaxis, also known as PrEP)"
  20 "Some other topic - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define AIDSTALK10
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "Safe sex practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status"
  11 "Medicines to prevent getting HIV (pre-exposure prophylaxis, also known as PrEP)"
  20 "Some other topic - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define AIDSTALK11
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "Safe sex practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status"
  11 "Medicines to prevent getting HIV (pre-exposure prophylaxis, also known as PrEP)"
  20 "Some other topic - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define sameadd
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define brnout
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define relraisd
   1 "None"
   2 "Catholic"
   3 "Baptist/Southern Baptist"
   4 "Methodist, Lutheran, Presbyterian, Episcopal"
   5 "Fundamentalist Protestant"
   6 "Other Protestant denomination"
   7 "Protestant - No specific denomination"
   8 "Other religion"
   9 "Refused"
  10 "Don't know";

 label define ATTND14
   1 "More than once a week"
   2 "Once a week"
   3 "2-3 times a month"
   4 "Once a month (about 12 times a year)"
   5 "3-11 times a year"
   6 "Once or twice a year"
   7 "Never"
   8 "Refused"
   9 "Don't know";

 label define relcurr
   1 "None"
   2 "Catholic"
   3 "Baptist/Southern Baptist"
   4 "Methodist, Lutheran, Presbyterian, Episcopal"
   5 "Fundamentalist Protestant"
   6 "Other Protestant denomination"
   7 "Protestant - No specific denomination"
   8 "Other religion"
   9 "Refused"
  10 "Don't know";

 label define reltrad
   1 "Evangelical Prot"
   2 "Mainline Prot"
   3 "Black Prot"
   4 "Catholic"
   5 "Other religion"
   6 "No religious affiilation"
   8 "Refused"
   9 "Don't know";

 label define FUNDAM1
   1 "A born again Christian"
   2 "A charismatic"
   3 "An evangelical"
   4 "A fundamentalist"
   5 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define FUNDAM2
   1 "A born again Christian"
   2 "A charismatic"
   3 "An evangelical"
   4 "A fundamentalist"
   5 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define FUNDAM3
   1 "A born again Christian"
   2 "A charismatic"
   3 "An evangelical"
   4 "A fundamentalist"
   5 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define FUNDAM4
   1 "A born again Christian"
   2 "A charismatic"
   3 "An evangelical"
   4 "A fundamentalist"
   5 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define reldlife
   1 "Very important"
   2 "Somewhat important"
   3 "Not important"
   8 "Refused"
   9 "Don't know";

 label define attndnow
   1 "More than once a week"
   2 "Once a week"
   3 "2-3 times a month"
   4 "Once a month (about 12 times a year)"
   5 "3-11 times a year"
   6 "Once or twice a year"
   7 "Never"
   8 "Refused"
   9 "Don't know";

 label define milsvc
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define WRK12MOS
   0 "No months"
   1 "1 month"
   2 "2 months"
   3 "3 months"
   4 "4 months"
   5 "5 months"
   6 "6 months"
   7 "7 months"
   8 "8 months"
   9 "9 months"
  10 "10 months"
  11 "11 months"
  12 "12 months"
  98 "Refused"
  99 "Don't know";

 label define FPT12MOS
   1 "Full-time"
   2 "Part-time"
   3 "Some of each"
   8 "Refused"
   9 "Don't know";

 label define DOLASTWK1
   1 "Working"
   2 "Working - Paternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "In school"
   6 "Other"
   8 "Refused"
   9 "Don't know";

 label define DOLASTWK2
   1 "Working"
   2 "Working - Paternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "In school"
   6 "Other"
   8 "Refused"
   9 "Don't know";

 label define DOLASTWK3
   1 "Working"
   2 "Working - Paternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "In school"
   6 "Other"
   8 "Refused"
   9 "Don't know";

 label define DOLASTWK4
   1 "Working"
   2 "Working - Paternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "In school"
   6 "Other"
   8 "Refused"
   9 "Don't know";

 label define DOLASTWK5
   1 "Working"
   2 "Working - Paternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "In school"
   6 "Other"
   8 "Refused"
   9 "Don't know";

 label define rwrkst
   1 "Yes"
   5 "No";

 label define WORKP12
   1 "Yes"
   5 "No";

 label define rpayjob
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define rnumjob
   0 "No jobs"
   1 "1 job"
   2 "2 or more jobs"
   8 "Refused"
   9 "Don't know";

 label define rftptx
   1 "Full-time"
   2 "Part-time"
   3 "Some of each"
   8 "Refused"
   9 "Don't know";

 label define rearnty
   1 "Yes"
   5 "No";

 label define SPLSTWK1
   1 "Working"
   2 "Working - Maternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "Other"
   8 "Refused"
   9 "Don't know";

 label define SPLSTWK2
   1 "Working"
   2 "Working - Maternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "Other"
   8 "Refused"
   9 "Don't know";

 label define SPLSTWK3
   1 "Working"
   2 "Working - Maternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "Other"
   8 "Refused"
   9 "Don't know";

 label define SPLSTWK4
   1 "Working"
   2 "Working - Maternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "Other"
   8 "Refused"
   9 "Don't know";

 label define SPLSTWK5
   1 "Working"
   2 "Working - Maternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "Other"
   8 "Refused"
   9 "Don't know";

 label define spwrkst
   1 "Yes"
   5 "No";

 label define sppayjob
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define spnumjob
   1 "1 job"
   2 "2 or more jobs"
   8 "Refused"
   9 "Don't know";

 label define spftptx
   1 "Full-time"
   2 "Part-time"
   3 "Some of each"
   8 "Refused"
   9 "Don't know";

 label define spearnty
   1 "Yes"
   2 "No";

 label define samesex
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define chsuppor
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define reactslf
   1 "Very upset"
   2 "A little upset"
   3 "A little pleased"
   4 "Very pleased"
   5 "If R insists: He wouldn't care"
   8 "Refused"
   9 "Don't know";

 label define chbother
   1 "A great deal"
   2 "Some"
   3 "A little"
   4 "Not at all"
   8 "Refused"
   9 "Don't know";

 label define sexneeds
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define whensick
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define showpain
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define pmarcohb
   1 "Yes"
   5 "No";

 label define cohchance
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define marrchance
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define pmarcoh
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define acasilang
   1 "English"
   2 "Spanish"
   7 "Not ascertained";

 label define genhealt
   1 "Excellent"
   2 "Very good"
   3 "Good"
   4 "Fair"
   5 "Poor"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define bmicat
   1 "Underweight"
   2 "Normal weight"
   3 "Overweight"
   4 "Obese"
   5 "Undefined BMI"
   7 "Not ascertained";

 label define drweigh
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define tellwght
   1 "Underweight"
   2 "Normal weight"
   3 "Overweight"
   4 "Obese"
   5 "Not told"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define wghtscrn
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define engspeak
   1 "Very well"
   2 "Well"
   3 "Not well"
   4 "Not at all"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define nobedyr
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define stayrel
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define jailed
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define JAILED2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define frqjail
   1 "Only one time"
   2 "Or more than one time"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FRQJAIL2
   1 "One month or less"
   2 "More than one month but less than one year"
   3 "One year"
   4 "More than one year"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define evsuspen
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define gradsusp
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define SMK100
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define agesmk
   0 "NEVER SMOKED REGULARLY"
  11 "11 YEARS OR YOUNGER"
  12 "12 YEARS OLD"
  13 "13 YEARS OLD"
  14 "14 YEARS OLD"
  15 "15 YEARS OLD"
  16 "16 YEARS OLD"
  17 "17 YEARS OLD"
  18 "18 YEARS OLD"
  19 "19 YEARS OLD"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define SMOKE12
   1 "None"
   2 "About one cigarette a day or less"
   3 "Just a few cigarettes a day, between 2 to 4 cigarettes"
   4 "About half a pack a day, between 5 to 14 cigarettes"
   5 "About a pack a day, between 15 to 24 cigarettes"
   6 "More than a pack a day, 25 or more cigarettes"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define smkstop
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define DRINK12
   1 "Never"
   2 "Once or twice during the year"
   3 "Several times during the year"
   4 "About once a month"
   5 "About once a week"
   6 "About once a day"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define UNIT30D
   1 "Days per week"
   5 "Days per month"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define DRINK30D
   0 "0 DAYS"
   1 "1 DAY"
   2 "2 DAYS"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define drinkday
   1 "1 DRINK"
   2 "2 DRINKS"
   3 "3 DRINKS"
   4 "4 DRINKS"
   5 "5 DRINKS"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define BINGE30
   0 "none"
   1 "1 TIME"
   2 "2 TIMES"
   3 "3 TIMES"
   4 "4 TIMES"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define drnkmost
   1 "1 DRINK"
   2 "2 DRINKS"
   3 "3 DRINKS"
   4 "4 DRINKS"
   5 "5 DRINKS"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define BINGE12
   1 "Never"
   2 "Once or twice during the year"
   3 "Several times during the year"
   4 "About once a month"
   5 "About once a week"
   6 "About once a day"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define POT12
   1 "Never"
   2 "Once or twice during the year"
   3 "Several times during the year"
   4 "About once a month"
   5 "About once a week"
   6 "About once a day or more"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define COC12
   1 "Never"
   2 "Once or twice during the year"
   3 "Several times during the year"
   4 "About once a month or more"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CRACK12
   1 "Never"
   2 "Once or twice during the year"
   3 "Several times during the year"
   4 "About once a month or more"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CRYSTMTH12
   1 "Never"
   2 "Once or twice during the year"
   3 "Several times during the year"
   4 "About once a month or more"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define INJECT12
   1 "Never"
   2 "Once or twice during the year"
   3 "Several times during the year"
   4 "About once a month or more"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define madepreg
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PREGTOT2
   1 "1 TIME"
   2 "2 TIMES"
   3 "3 TIMES"
   4 "4 TIMES"
   5 "5 TIMES"
   6 "6 TIMES"
   7 "7 TIMES"
   8 "8 TIMES"
   9 "9 TIMES"
  10 "10 OR MORE TIMES"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define pregacasi
   0 "none"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES"
   5 "5 PREGNANCIES"
   6 "6 PREGNANCIES"
   7 "7 PREGNANCIES"
   8 "8 PREGNANCIES"
   9 "9 PREGNANCIES"
  10 "10 OR MORE PREGNANCIES"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define numabort
   0 "none"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 OR MORE PREGNANCIES"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define numliveb
   0 "none"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES"
   5 "5 PREGNANCIES"
   6 "6 PREGNANCIES"
   7 "7 PREGNANCIES"
   8 "8 PREGNANCIES"
   9 "9 PREGNANCIES"
  10 "10 OR MORE PREGNANCIES"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define toldpreg
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define whathapp
   1 "Did it turn out that she was pregnant and you were the father,"
   2 "Or was she pregnant but you were not the father,"
   3 "Or did it turn out that she was not pregnant?"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define femtouch
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define vagsex
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define agevagr
  10 "10 YEARS OR YOUNGER"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define condvag
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define COND1BRK
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define COND1OFF
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define whycondl
   1 "To prevent pregnancy"
   2 "To prevent diseases like gonorrhea, chlamydia, syphilis, herpes or AIDS"
   3 "For both reasons"
   4 "For some other reason"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define getoralf
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define condfell
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define givoralf
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define anyoral
   1 "yes"
   5 "no"
   7 "Not ascertained";

 label define timing
   1 "Before first vaginal intercourse"
   3 "After first vaginal intercourse"
   5 "Same occasion"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define analsex
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define condanal
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define oppsexany
   1 "yes"
   5 "no"
   7 "Not ascertained";

 label define oppsexgen
   1 "yes"
   5 "no"
   7 "Not ascertained";

 label define condsexl
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define opplifenum
   0 "none"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
   8 "8 PARTNERS"
   9 "9 PARTNERS"
  10 "10 PARTNERS"
  50 "50 OR MORE PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define oppyearnum
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
   8 "8 PARTNERS"
   9 "9 PARTNERS"
  10 "10 PARTNERS"
  20 "20 OR MORE PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define VAGNUM12
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
   8 "8 PARTNERS"
   9 "9 PARTNERS"
  10 "10 PARTNERS"
  20 "20 OR MORE PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define ORALNUM12
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
   8 "8 PARTNERS"
   9 "9 PARTNERS"
  10 "10 PARTNERS"
  20 "20 OR MORE PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define ANALNUM12
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
   8 "8 PARTNERS"
   9 "9 PARTNERS"
  10 "10 PARTNERS"
  20 "20 OR MORE PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define nonmonog
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NNONMONOG1
   1 "1 partner"
   2 "2 or more partners"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NNONMONOG2
   1 "1 other partner besides you"
   2 "2 other partners besides you"
   3 "3 or more other partners besides you"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NNONMONOG3
   1 "1 other partner besides you"
   2 "2 other partners besides you"
   3 "3 or more other partners besides you"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FEMSHT12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define johnfreq
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define prostfrq
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HIVFEM12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define givoralm
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define getoralm
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define oralcondm
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define ANALSEX2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define ANALCONDM1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define ANALSEX3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define ANALCONDM2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define malesex
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define samesexany
   1 "yes"
   5 "no"
   7 "Not ascertained";

 label define malprtage
   1 "Older"
   2 "Younger"
   3 "Same age"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define malprthrace
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "NA/DK/RF";

 label define samlifenum
   0 "none"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
   8 "8 PARTNERS"
   9 "9 PARTNERS"
  10 "10 OR MORE PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define samyearnum
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 OR MORE PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define SAMORAL12
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 OR MORE PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define RECEPANAL12
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 OR MORE PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define INSERANAL12
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 OR MORE PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define SAMESEX1
   1 "UNDER 15 YEARS"
   2 "15-19 YEARS"
   3 "20-29 YEARS"
   4 "30-49 YEARS"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define msamerel
   1 "Married to him"
   2 "Engaged to him"
   3 "Living together in a sexual relationship, but not engaged"
   4 "Going with him or going steady"
   5 "Going out with him once in a while"
   6 "Just friends"
   7 "Had just met him"
   8 "Something else"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define msmnonmon
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 OR MORE PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define MALSHT12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define JOHN2FRQ
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PROS2FRQ
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HIVMAL12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define MSMSORT12
   1 "Yes, usually"
   3 "Yes, some of the time"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define cndlsmal
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define condalls
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define mflastp
   1 "Male"
   2 "Female"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define whycond
   1 "To prevent pregnancy"
   2 "To prevent diseases like gonorrhea, chlamydia, syphilis, herpes or AIDS"
   3 "For both reasons"
   4 "For some other reason"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define dateapp
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define attract
   1 "Only attracted to females"
   2 "Mostly attracted to females"
   3 "Equally attracted to females and males"
   4 "Mostly attracted to males"
   5 "Only attracted to males"
   6 "Not sure"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define ORIENT_A
   1 "Heterosexual or straight"
   2 "Homosexual or gay"
   3 "Bisexual"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define ORIENT_B
   1 "Gay"
   2 "Straight, that is, not gay"
   3 "Bisexual"
   4 "Something else"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define confconc
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define timalon
   1 "Yes"
   5 "No"
   6 "Did not have a health care visit in the past 12 months"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RISKCHEK1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RISKCHEK2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RISKCHEK3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RISKCHEK4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define rectdouch
   1 "Never"
   2 "Once or twice during the year"
   3 "Several times during the year"
   4 "About once a month"
   5 "About once a week"
   6 "About once a day or more"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STDTST12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STDSITE12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STDTRT12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define gon
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define chlam
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define herpes
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define genwarts
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define syphilis
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define evrinject
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define evrshare
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define earntype
   1 "Week"
   2 "Month"
   3 "Year"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define earn
   1 "Under $96 (weekly)/Under $417 (monthly)/Under $5,000 (yearly)"
   2 "$96-$143 (weekly)/$417-624 (monthly)/$5,000-7,499 (yearly)"
   3 "$144-191 (weekly)/$625-832 (monthly)/$7,500-9,999 (yearly)"
   4 "$192-239 (weekly)/$833-1,041 (monthly)/$10,000-12,499 (yearly)"
   5 "$240-288 (weekly)/$1,042-1,249 (monthly)/$12,500-14,999 (yearly)"
   6 "$289-384 (weekly)/$1,250-1,666 (monthly)/$15,000-19,999 (yearly)"
   7 "$385-480 (weekly)/$1,667-2,082 (monthly)/$20,000-24,999 (yearly)"
   8 "$481-576 (weekly)/$2,083-2,499 (monthly)/$25,000-29,999 (yearly)"
   9 "$577-672 (weekly)/$2,500-2,916 (monthly)/$30,000-34,999 (yearly)"
  10 "$673-768 (weekly)/$2,917-3,332 (monthly)/$35,000-39,999 (yearly)"
  11 "$769-961 (weekly)/$3,333-4,166 (monthly)/$40,000-49,999 (yearly)"
  12 "$962-1,153 (weekly)/$4,167-4,999 (monthly)/$50,000-59,999 (yearly)"
  13 "$1,154-1,441 (weekly)/$5,000-6,249 (monthly)/$60,000-74,999 (yearly)"
  14 "$1,442-1,922 (weekly)/$6,250-8,332 (monthly)/$75,000-99,999 (yearly)"
  15 "$1,923 or more (weekly)/$8,333 or more (monthly)/$100,000 or more (yearly)"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define EARNDK1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define EARNDK2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define EARNDK3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define EARNDK4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define toincwmy
   1 "Week"
   2 "Month"
   3 "Year"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define totinc
   1 "Under $96 (weekly)/Under $417 (monthly)/Under $5,000 (yearly)"
   2 "$96-$143 (weekly)/$417-624 (monthly)/$5,000-7,499 (yearly)"
   3 "$144-191 (weekly)/$625-832 (monthly)/$7,500-9,999 (yearly)"
   4 "$192-239 (weekly)/$833-1,041 (monthly)/$10,000-12,499 (yearly)"
   5 "$240-288 (weekly)/$1,042-1,249 (monthly)/$12,500-14,999 (yearly)"
   6 "$289-384 (weekly)/$1,250-1,666 (monthly)/$15,000-19,999 (yearly)"
   7 "$385-480 (weekly)/$1,667-2,082 (monthly)/$20,000-24,999 (yearly)"
   8 "$481-576 (weekly)/$2,083-2,499 (monthly)/$25,000-29,999 (yearly)"
   9 "$577-672 (weekly)/$2,500-2,916 (monthly)/$30,000-34,999 (yearly)"
  10 "$673-768 (weekly)/$2,917-3,332 (monthly)/$35,000-39,999 (yearly)"
  11 "$769-961 (weekly)/$3,333-4,166 (monthly)/$40,000-49,999 (yearly)"
  12 "$962-1,153 (weekly)/$4,167-4,999 (monthly)/$50,000-59,999 (yearly)"
  13 "$1,154-1,441 (weekly)/$5,000-6,249 (monthly)/$60,000-74,999 (yearly)"
  14 "$1,442-1,922 (weekly)/$6,250-8,332 (monthly)/$75,000-99,999 (yearly)"
  15 "$1,923 or more (weekly)/$8,333 or more (monthly)/$100,000 or more (yearly)"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define FMINCDK1
   1 "Less than $50,000"
   5 "$50,000 or more"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FMINCDK2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FMINCDK3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FMINCDK4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FMINCDK5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define pubasst
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PUBASTYP1
   1 "Public assist prog, e.g. AFDC or ADC"
   2 "General/Emergency/Other assistance"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define foodstmp
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define wic
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define hlptrans
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define hlpchldc
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define hlpjob
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define freefood
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define hungry
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define MED_COST
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define ager
  15 "15 YEARS"
  16 "16 YEARS"
  17 "17 YEARS"
  18 "18 YEARS"
  19 "19 YEARS"
  20 "20 YEARS"
  21 "21 YEARS"
  22 "22 YEARS"
  23 "23 YEARS"
  24 "24 YEARS"
  25 "25 YEARS"
  26 "26 YEARS"
  27 "27 YEARS"
  28 "28 YEARS"
  29 "29 YEARS"
  30 "30 YEARS"
  31 "31 YEARS"
  32 "32 YEARS"
  33 "33 YEARS"
  34 "34 YEARS"
  35 "35 YEARS"
  36 "36 YEARS"
  37 "37 YEARS"
  38 "38 YEARS"
  39 "39 YEARS"
  40 "40 YEARS"
  41 "41 YEARS"
  42 "42 YEARS"
  43 "43 YEARS"
  44 "44 YEARS"
  45 "45 YEARS"
  46 "46 YEARS"
  47 "47 YEARS"
  48 "48 YEARS";

 label define fmarital
   1 "MARRIED TO A PERSON OF THE OPPOSITE SEX"
   2 "widowed"
   3 "DIVORCED OR ANNULLED"
   4 "separated"
   5 "NEVER MARRIED";

 label define rmarital
   1 "CURRENTLY MARRIED TO A PERSON OF THE OPPOSITE SEX"
   2 "NOT MARRIED BUT LIVING WITH OPP SEX PARTNER"
   3 "widowed"
   4 "DIVORCED OR ANNULLED"
   5 "SEPARATED FOR REASONS OF MARITAL DISCORD"
   6 "NEVER BEEN MARRIED";

 label define educat
   9 "9TH GRADE OR LESS"
  10 "10TH GRADE"
  11 "11TH GRADE"
  12 "12TH GRADE"
  13 "1 YEAR OF COLLEGE/GRAD SCHOOL"
  14 "2 YEARS OF COLLEGE/GRAD SCHOOL"
  15 "3 YEARS OF COLLEGE/GRAD SCHOOL"
  16 "4 YEARS OF COLLEGE/GRAD SCHOOL"
  17 "5 YEARS OF COLLEGE/GRAD SCHOOL"
  18 "6 YEARS OF COLLEGE/GRAD SCHOOL"
  19 "7+ YEARS OF COLLEGE/GRAD SCHOOL"
  97 "Not ascertained";

 label define hieduc
   5 "9TH GRADE OR LESS"
   6 "10TH GRADE"
   7 "11TH GRADE"
   8 "12TH GRADE, NO DIPLOMA (NOR GED)"
   9 "HIGH SCHOOL GRADUATE (DIPLOMA OR GED)"
  10 "SOME COLLEGE BUT NO DEGREE"
  11 "ASSOCIATE DEGREE IN COLLEGE/UNIVERSITY"
  12 "BACHELOR'S DEGREE"
  13 "MASTER'S DEGREE"
  14 "DOCTORATE DEGREE"
  15 "PROFESSIONAL DEGREE";

 label define hispanic
   1 "hispanic"
   2 "NON-HISPANIC";

 label define race
   1 "black"
   2 "white"
   3 "other";

 label define HISPRACE2
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race";

 label define numkdhh
   0 "NO CHILDREN"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
   4 "4 CHILDREN OR MORE";

 label define numfmhh
   0 "NO FAMILY MEMBERS"
   1 "1 FAMILY MEMBER"
   2 "2 FAMILY MEMBERS"
   3 "3 FAMILY MEMBERS"
   4 "4 FAMILY MEMBERS"
   5 "5 FAMILY MEMBERS"
   6 "6 FAMILY MEMBERS"
   7 "7 FAMILY MEMBERS OR MORE";

 label define hhfamtyp
   1 "No spouse/partner and no child(ren) (of R) 18 or younger"
   2 "Spouse/partner, but no child(ren) (of R) 18 or younger"
   3 "Spouse and R's child(ren) 18 or younger"
   4 "Cohabiting partner and R's child(ren) 18 or younger"
   5 "No spouse/partner, but child(ren) of R, 18 or younger";

 label define hhpartyp
   1 "Both biological or both adoptive parents"
   2 "Biological and step- or adoptive parent"
   3 "Single parent (biological, adoptive, or stepparent)"
   4 "Other";

 label define nchildhh
   0 "No children of respondent age 18 or younger in the household"
   1 "1 of respondent's children 18 or younger in the household"
   2 "2 of respondent's children 18 or younger in the household"
   3 "3 or more of respondent's children 18 or younger in the household";

 label define hhkidtyp
   0 "No child(ren) 18 or younger in HH or only older child(ren)"
   1 "At least one biological child (of R's) under 18 in HH, no nonbiological child(ren)"
   2 "Any non-biological child (of R's) 18 or younger in HH";

 label define cspbbhh
   0 "No joint biological children"
   1 "1 joint biological child"
   2 "2 joint biological children"
   3 "3 or more joint biological children";

 label define cspsbhh
   0 "No such child"
   1 "1 or more such children";

 label define cspokdhh
   0 "No such child"
   1 "1 or more such children";

 label define intctfam
   1 "TWO BIOLOGICAL OR ADOPTIVE PARENTS FROM BIRTH"
   2 "ANYTHING OTHER THAN 2 BIOLOGICAL OR ADOPTIVE PARENTS FROM BIRTH";

 label define PARAGE14
   1 "R LIVED WITH BOTH BIOLOGICAL OR BOTH ADOPTIVE PARENTS AT AGE 14"
   2 "R LIVED WITH BIOLOGICAL MOTHER AND STEPFATHER AT AGE 14"
   3 "R LIVED IN ANY OTHER PARENTAL SITUATION OR A NONPARENTAL SITUATION AT AGE 14";

 label define educmom
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college, including 2-year degrees"
   4 "Bachelor's degree or higher"
  95 "No mother/mother-figure identified";

 label define AGEMOMB1
   1 "LESS THAN 18 YEARS"
   2 "18-19 YEARS"
   3 "20-24 YEARS"
   4 "25-29 YEARS"
   5 "30 OR OLDER"
  95 "NO MOTHER OR MOTHER-FIGURE"
  96 "MOTHER-FIGURE HAD NO CHILDREN";

 label define fmarno
   0 "NEVER BEEN MARRIED"
   1 "1 TIME"
   2 "2 TIMES"
   3 "3 TIMES"
   4 "4 TIMES"
   5 "5 TIMES";

 label define AGER_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define FMARITAL_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define RMARITAL_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define EDUCAT_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define HIEDUC_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define HISPANIC_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define RACE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define HISPRACE2_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define NUMKDHH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define NUMFMHH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define HHFAMTYP_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define HHPARTYP_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define NCHILDHH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define HHKIDTYP_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define CSPBBHH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define CSPSBHH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define CSPOKDHH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define INTCTFAM_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARAGE14_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define EDUCMOM_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define AGEMOMB1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define FMARNO_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define hadsex
   1 "YES, R EVER HAD INTERCOURSE"
   2 "NO, R NEVER HAD INTERCOURSE";

 label define sexonce
   1 "YES (R HAS HAD SEX ONLY ONCE)"
   2 "NO (R HAS HAD SEX MORE THAN ONCE)";

 label define VRY1STSX
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define firstpflag
   1 "cmfstsex - CM of first sex ever, based on DL series"
   2 "cmlsxp - CM when R last had sex with most recent partner"
   3 "cmlsxp2 - CM when R last had sex with 2nd-to-last partner"
   4 "cmlsxp3 - CM when R last had sex with 3rd-to-last partner"
   5 "cmfsxp - CM when R first had sex with most recent partner"
   6 "cmfsxp2 - CM when R first had sex with 2nd-to-last partner"
   7 "cmfsxp3 - CM when R first had sex with 3rd-to-last partner"
   8 "cmfsxcwp - CM when R first had sex with CWP"
   9 "unable to determine: raw variable(s) missing";

 label define VRY1STAG
  10 "10 YEARS OR YOUNGER";

 label define elapsed
   0 "0";

 label define sexmar
   1 "0-12 months"
   2 "13-24 months"
   3 "25-36 months"
   4 "More than 3 years"
   5 "First intercourse after first marriage";

 label define sexunion
   1 "0-12 months"
   2 "13-24 months"
   3 "25-36 months"
   4 "More than 3 years"
   5 "First intercourse after first union";

 label define fsexrltn
   1 "MARRIED TO HER"
   2 "ENGAGED TO HER, AND LIVING TOGETHER"
   3 "ENGAGED TO HER, BUT NOT LIVING TOGETHER"
   4 "LIVING TOGETHER IN A SEXUAL RELATIONSHIP, BUT NOT ENGAGED"
   5 "GOING OUT WITH HER OR GOING STEADY"
   6 "GOING OUT WITH HER ONCE IN A WHILE"
   7 "JUST FRIENDS"
   8 "HAD JUST MET HER"
   9 "SOMETHING ELSE";

 label define SEX1MTHD1
   1 "Condom"
   2 "Withdrawal"
   3 "Vasectomy"
   4 "Pill"
   5 "Female sterilization"
   6 "Injection -- Depo-Provera/Lunelle"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant -- Norplant/Implanon/Nexplanon"
   9 "Rhythm or safe period"
  10 "Contraceptive Patch"
  11 "Vaginal contraceptive ring"
  12 "IUD, coil, loop"
  13 "Something else"
  96 "No method used at first intercourse";

 label define SEX1MTHD2
   1 "Condom"
   2 "Withdrawal"
   3 "Vasectomy"
   4 "Pill"
   5 "Female sterilization"
   6 "Injection -- Depo-Provera/Lunelle"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant -- Norplant/Implanon/Nexplanon"
   9 "Rhythm or safe period"
  10 "Contraceptive Patch"
  11 "Vaginal contraceptive ring"
  12 "IUD, coil, loop"
  13 "Something else"
  96 "No method used at first intercourse";

 label define SEX1MTHD3
   1 "Condom"
   2 "Withdrawal"
   3 "Vasectomy"
   4 "Pill"
   5 "Female sterilization"
   6 "Injection -- Depo-Provera/Lunelle"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant -- Norplant/Implanon/Nexplanon"
   9 "Rhythm or safe period"
  10 "Contraceptive Patch"
  11 "Vaginal contraceptive ring"
  12 "IUD, coil, loop"
  13 "Something else"
  96 "No method used at first intercourse";

 label define SEX1MTHD4
   1 "Condom"
   2 "Withdrawal"
   3 "Vasectomy"
   4 "Pill"
   5 "Female sterilization"
   6 "Injection -- Depo-Provera/Lunelle"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant -- Norplant/Implanon/Nexplanon"
   9 "Rhythm or safe period"
  10 "Contraceptive Patch"
  11 "Vaginal contraceptive ring"
  12 "IUD, coil, loop"
  13 "Something else"
  96 "No method used at first intercourse";

 label define lsexdate
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define SEX3MO
   1 "YES, HAD INTERCOURSE"
   2 "NO, DID NOT HAVE INTERCOURSE";

 label define SEX12MO
   1 "YES, HAD INTERCOURSE"
   2 "NO, DID NOT HAVE INTERCOURSE";

 label define lsexprac
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other";

 label define lsexrltn
   1 "Married to her"
   3 "Living together in a sexual relationship"
   4 "Going out with her or going steady"
   5 "Going out with her once in a while"
   6 "Just friends"
   7 "Had just met her"
   8 "Something else"
   9 "Engaged to her: only asked of a subset of Rs";

 label define LSEXUSE1
   1 "condom"
   2 "withdrawal"
   3 "vasectomy"
   4 "pill"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT/IMPLANON/NEXPLANON"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define LSEXUSE2
   1 "condom"
   2 "withdrawal"
   3 "vasectomy"
   4 "pill"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT/IMPLANON/NEXPLANON"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define LSEXUSE3
   1 "condom"
   2 "withdrawal"
   3 "vasectomy"
   4 "pill"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT/IMPLANON/NEXPLANON"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define LSEXUSE4
   1 "condom"
   2 "withdrawal"
   3 "vasectomy"
   4 "pill"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT/IMPLANON/NEXPLANON"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define METH12M1
   1 "condom"
   2 "withdrawal"
   3 "vasectomy"
   4 "pill"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT/IMPLANON/NEXPLANON"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 12 MONTHS";

 label define METH12M2
   1 "condom"
   2 "withdrawal"
   3 "vasectomy"
   4 "pill"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT/IMPLANON/NEXPLANON"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 12 MONTHS";

 label define METH12M3
   1 "condom"
   2 "withdrawal"
   3 "vasectomy"
   4 "pill"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT/IMPLANON/NEXPLANON"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 12 MONTHS";

 label define METH12M4
   1 "condom"
   2 "withdrawal"
   3 "vasectomy"
   4 "pill"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT/IMPLANON/NEXPLANON"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 12 MONTHS";

 label define METH3M1
   1 "condom"
   2 "withdrawal"
   3 "vasectomy"
   4 "pill"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT/IMPLANON/NEXPLANON"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 3 MONTHS";

 label define METH3M2
   1 "condom"
   2 "withdrawal"
   3 "vasectomy"
   4 "pill"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT/IMPLANON/NEXPLANON"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 3 MONTHS";

 label define METH3M3
   1 "condom"
   2 "withdrawal"
   3 "vasectomy"
   4 "pill"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT/IMPLANON/NEXPLANON"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 3 MONTHS";

 label define METH3M4
   1 "condom"
   2 "withdrawal"
   3 "vasectomy"
   4 "pill"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT/IMPLANON/NEXPLANON"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 3 MONTHS";

 label define NUMP3MOS
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS EXACTLY"
   4 "3, POSSIBLY MORE PARTNERS";

 label define lifprtnr
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
   8 "8 PARTNERS"
   9 "9 PARTNERS"
  50 "50 OR MORE PARTNERS";

 label define PARTS1YR
   0 "none"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 OR MORE PARTNERS";

 label define PARTDUR1
 997 "Only had sex once with partner";

 label define PARTDUR2
 997 "Only had sex once with partner";

 label define PARTDUR3
 997 "Only had sex once with partner";

 label define cohever
   1 "Yes, ever cohabited (lived with a woman outside of marriage)"
   2 "No, never cohabited (lived with a woman outside of marriage)";

 label define evmarcoh
   1 "Yes, ever married or cohabited"
   2 "No, never married or cohabited";

 label define pmarrno
   0 "None"
   1 "One"
   2 "Two"
   3 "Three"
   4 "Four";

 label define nonmarr
   0 "None"
   1 "One"
   2 "Two"
   3 "Three"
   4 "Four"
   5 "Five or more";

 label define timescoh
   0 "None"
   1 "One"
   2 "Two"
   3 "Three"
   4 "Four"
   5 "Five or more";

 label define MARDAT01
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MARDAT02
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MARDAT03
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MARDAT04
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MARDAT05
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MAREND01
   1 "DIVORCED OR ANNULLED"
   2 "separated"
   3 "widowed";

 label define MAREND02
   1 "DIVORCED OR ANNULLED"
   2 "separated"
   3 "widowed";

 label define MAREND03
   1 "DIVORCED OR ANNULLED"
   2 "separated"
   3 "widowed";

 label define MAREND04
   1 "DIVORCED OR ANNULLED"
   2 "separated"
   3 "widowed";

 label define MAREND05
   1 "DIVORCED OR ANNULLED"
   2 "separated"
   3 "widowed";

 label define MARDIS01
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MARDIS02
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MARDIS03
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MARDIS04
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MARDIS05
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define MAR1DISS
   1 "0-12 months"
   2 "13-24 months"
   3 "25-36 months"
   4 "37-48 months"
   5 "More than 4 years";

 label define PREMARW1
   1 "yes"
   2 "no";

 label define COHAB1
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define cohstat
   1 "Never cohabited outside of marriage"
   2 "First cohabited before first marriage"
   3 "First cohabited after first marriage";

 label define cohout
   1 "Intact cohabitation"
   2 "Intact marriage"
   3 "Dissolved marriage"
   4 "Dissolved cohabitation";

 label define COH1DUR
   1 "0-12 months"
   2 "13-24 months"
   3 "25-36 months"
   4 "37-48 months"
   5 "More than 4 years";

 label define cspbiokd
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define DATBABY1
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define B1PREMAR
   1 "Yes (1st biological child born before 1st marriage)"
   2 "No (1st biological child born in same month as or later than 1st marriage)";

 label define MARBABY1
   1 "Yes, married to child's mother"
   2 "No, not married to child's mother";

 label define cebow
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children";

 label define cebowc
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define cebowp
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define evrnopat
   1 "YES, 1 OR MORE CHILDREN OUT OF WEDLOCK, BUT NO ESTABLISHED PATERNITY"
   2 "NO, 1 OR MORE CHILDREN OUT OF WEDLOCK, BUT ESTABLISHED PATERNITY";

 label define nonliveb
   0 "none"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 OR MORE PREGNANCIES"
  98 "refused"
  99 "DON'T KNOW";

 label define compreg
   0 "none"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES"
   5 "5 PREGNANCIES"
   6 "6 PREGNANCIES"
   7 "7 PREGNANCIES"
   8 "8 PREGNANCIES"
   9 "9 PREGNANCIES"
  10 "10 OR MORE PREGNANCIES";

 label define abortion
   0 "none"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 OR MORE PREGNANCIES";

 label define lossnum
   0 "none"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 OR MORE PREGNANCIES";

 label define PARENT01
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT02
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT03
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT04
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT05
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT06
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT07
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT08
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT09
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT10
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define WANTB01
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "unwanted"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB02
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "unwanted"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB03
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "unwanted"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB04
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "unwanted"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB05
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "unwanted"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB06
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "unwanted"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB07
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "unwanted"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB08
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "unwanted"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB09
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "unwanted"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB10
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "unwanted"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define HADSEX_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SEXONCE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define VRY1STSX_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define VRY1STAG_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SEXMAR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SEXUNION_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define FSEXRLTN_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SEX1MTHD1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SEX1MTHD2_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SEX1MTHD3_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SEX1MTHD4_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LSEXDATE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SEX3MO_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SEX12MO_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LSEXRAGE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LSEXRLTN_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LSEXUSE1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LSEXUSE2_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LSEXUSE3_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LSEXUSE4_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define METH12M1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define METH12M2_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define METH12M3_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define METH12M4_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define METH3M1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define METH3M2_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define METH3M3_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define METH3M4_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define NUMP3MOS_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LIFPRTNR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARTS1YR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARTDUR1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARTDUR2_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARTDUR3_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define COHEVER_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define EVMARCOH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PMARRNO_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define NONMARR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define TIMESCOH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDAT01_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDAT02_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDAT03_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDAT04_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDAT05_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MAREND01_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MAREND02_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MAREND03_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MAREND04_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MAREND05_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDIS01_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDIS02_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDIS03_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDIS04_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDIS05_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MAR1DISS_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PREMARW1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define COHAB1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define COHSTAT_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define COHOUT_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define COH1DUR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define CSPBIOKD_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define DATBABY1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define AGEBABY1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define B1PREMAR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARBABY1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define CEBOW_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define CEBOWC_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define CEBOWP_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define EVRNOPAT_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define NONLIVEB_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define COMPREG_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define ABORTION_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LOSSNUM_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARENT01_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARENT02_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARENT03_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARENT04_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARENT05_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARENT06_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARENT07_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARENT08_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARENT09_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARENT10_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB01_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB02_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB03_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB04_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB05_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB06_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB07_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB08_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB09_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB10_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define dadtype
   1 "ONLY CORESIDENTIAL CHILDREN"
   2 "ONLY NON-CORESIDENTIAL CHILDREN"
   3 "BOTH CORESIDENTIAL AND NON-CORESIDENTIAL CHILDREN"
   4 "NO CHILDREN 18 OR YOUNGER, NO CHILDREN AT ALL, OR NEVER HAD SEXUAL INTERCOURSE";

 label define DADTYPU5
   1 "ONLY CORESIDENTIAL CHILDREN UNDER 5"
   2 "ONLY NON-CORESIDENTIAL CHILDREN UNDER 5"
   3 "BOTH CORESIDENTIAL AND NONCORESIDENTIAL CHILDREN UNDER 5"
   4 "NEITHER CORESIDENTIAL OR NONCORESIDENTIAL CHILDREN UNDER 5, NO CHILDREN, OR NEVER HAD SEXUAL INTERCOURSE";

 label define DADTYP518
   1 "ONLY CORESIDENTIAL CHILDREN 5 TO 18"
   2 "ONLY NON-CORESIDENTIAL CHILDREN 5 TO 18"
   3 "BOTH CORESIDENTIAL AND NONCORESIDENTIAL CHILDREN 5 TO 18"
   4 "NEITHER CORESIDENTIAL OR NONCORESIDENTIAL CHILDREN 5 TO 18, NO CHILDREN AT ALL, OR NEVER HAD SEXUAL INTERCOURSE";

 label define NUMCRU18
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
   4 "4 OR MORE CHILDREN";

 label define NUMNCU18
   0 "none"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define SUPP12MO
   1 "CONTRIBUTED CHILD SUPPORT ON A REGULAR BASIS IN LAST 12 MONTHS"
   2 "CONTRIBUTED CHILD SUPPORT ONCE IN A WHILE IN LAST 12 MONTHS"
   3 "DID NOT CONTRIBUTE CHILD SUPPORT IN LAST 12 MONTHS";

 label define DADTYPE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define DADTYPU5_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define DADTYP518_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define NUMCRU18_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define NUMNCU18_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SUPP12MO_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define intent
   1 "R intends to have (more) children"
   2 "R does not intend to have (more) children"
   3 "R does not know his intent";

 label define addexp
   0 "NO ADDITIONAL BIRTHS"
   5 ".5 ADDITIONAL BIRTHS"
  10 "1 ADDITIONAL BIRTH"
  15 "1.5 ADDITIONAL BIRTHS"
  20 "2 ADDITIONAL BIRTHS"
  25 "2.5 ADDITIONAL BIRTHS"
  30 "3 ADDITIONAL BIRTHS"
  35 "3.5 ADDITIONAL BIRTHS"
  40 "4 ADDITIONAL BIRTHS"
  45 "4.5 ADDITIONAL BIRTHS"
  50 "5 ADDITIONAL BIRTHS"
  55 "5.5 ADDITIONAL BIRTHS"
  60 "6 ADDITIONAL BIRTHS"
  65 "6.5 ADDITIONAL BIRTHS"
  70 "7 ADDITIONAL BIRTHS"
  78 "7.5 ADDITIONAL BIRTHS"
  80 "8 ADDITIONAL BIRTHS"
  85 "8.5 ADDITIONAL BIRTHS"
  90 "9 ADDITIONAL BIRTHS"
  95 "9.5 ADDITIONAL BIRTHS";

 label define INTENT_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define ADDEXP_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define CURR_INS
   1 "Currently covered by private health insurance or Medi-Gap"
   2 "Currently covered by Medicaid, CHIP, or a state-sponsored health plan"
   3 "Currently covered by Medicare, military health care, or other government health care"
   4 "Currently covered only by a single-service plan, only by the Indian Health Service, or currently not covered by health insurance";

 label define infever
   1 "yes"
   2 "no";

 label define evhivtst
   0 "NO HIV TEST REPORTED"
   1 "YES, ONLY AS PART OF BLOOD DONATION"
   2 "YES, ONLY OUTSIDE OF BLOOD DONATION"
   3 "YES, IN BOTH CONTEXTS";

 label define CURR_INS_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define INFEVER_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define EVHIVTST_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define metro
   1 "PRINCIPAL CITY OF MSA"
   2 "OTHER MSA"
   3 "NOT MSA";

 label define religion
   1 "No religion"
   2 "Catholic"
   3 "Protestant"
   4 "Other religion";

 label define laborfor
   1 "Working full-time"
   2 "Working part-time"
   3 "Working, but on vacation, strike, or had temporary illness"
   4 "Working - paternity or family leave"
   5 "Not working but looking for work"
   6 "In school"
   7 "Keeping house"
   8 "Caring for family"
   9 "Other";

 label define RELIGION_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LABORFOR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define poverty
  50 "50 percent of poverty level or less"
 700 "700 percent of poverty level or greater";

 label define totincr
   1 "Under $5000"
   2 "$5000-$7499"
   3 "$7500-$9999"
   4 "$10,000-$12,499"
   5 "$12,500-$14,999"
   6 "$15,000-$19,999"
   7 "$20,000-$24,999"
   8 "$25,000-$29,999"
   9 "$30,000-$34,999"
  10 "$35,000-$39,999"
  11 "$40,000-$49,999"
  12 "$50,000-$59,999"
  13 "$60,000-$74,999"
  14 "$75,000-$99,999"
  15 "$100,000 or more";

 label define pubassis
   1 "Yes (received public assistance in [INTERVIEW YEAR -1])"
   2 "No (did not receive public assistance in [INTERVIEW YEAR -1])";

 label define POVERTY_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define TOTINCR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PUBASSIS_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define secu
   1 "1"
   2 "2"
   3 "3"
   4 "4";

 label define cmintvw
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define cmlstyr
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define cmfivyr
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define phase
   1 "First 10 weeks of quarter"
   2 "Last 2 weeks of quarter (double sample)";

 label values rscrninf rscrninf ;
 label values rscrage rscrage ;
 label values rscrhisp rscrhisp ;
 label values rscrrace rscrrace ;
 label values AGE_A AGE_A ;
 label values AGE_R AGE_R ;
 label values agescrn agescrn ;
 label values hisp hisp ;
 label values hispgrp hispgrp ;
 label values PRIMLANG1 PRIMLANG1 ;
 label values PRIMLANG2 PRIMLANG2 ;
 label values PRIMLANG3 PRIMLANG3 ;
 label values roscnt roscnt ;
 label values marstat marstat ;
 label values fmarstat fmarstat ;
 label values fmarit fmarit ;
 label values evrmarry evrmarry ;
 label values wplocale wplocale ;
 label values womrel womrel ;
 label values goschol goschol ;
 label values vaca vaca ;
 label values higrade higrade ;
 label values compgrd compgrd ;
 label values dipged dipged ;
 label values EARNHS_Y EARNHS_Y ;
 label values hischgrd hischgrd ;
 label values lstgrade lstgrade ;
 label values MYSCHOL_Y MYSCHOL_Y ;
 label values havedeg havedeg ;
 label values degrees degrees ;
 label values EARNBA_Y EARNBA_Y ;
 label values expschl expschl ;
 label values expgrade expgrade ;
 label values wthparnw wthparnw ;
 label values onown onown ;
 label values ONOWN18 ONOWN18 ;
 label values intact intact ;
 label values parmarr parmarr ;
 label values INTACT18 INTACT18 ;
 label values LVSIT14F LVSIT14F ;
 label values LVSIT14M LVSIT14M ;
 label values womrasdu womrasdu ;
 label values momdegre momdegre ;
 label values momworkd momworkd ;
 label values momfstch momfstch ;
 label values MOM18 MOM18 ;
 label values manrasdu manrasdu ;
 label values fosterev fosterev ;
 label values mnyfster mnyfster ;
 label values durfster durfster ;
 label values agefster agefster ;
 label values timesmar timesmar ;
 label values EVCOHAB1 EVCOHAB1 ;
 label values NUMCOH1 NUMCOH1 ;
 label values EVCOHAB2 EVCOHAB2 ;
 label values NUMCOH2 NUMCOH2 ;
 label values evrcohab evrcohab ;
 label values numwife numwife ;
 label values numcohab numcohab ;
 label values eversex eversex ;
 label values rhadsex rhadsex ;
 label values sxmtonce sxmtonce ;
 label values ynosex ynosex ;
 label values TALKPAR1 TALKPAR1 ;
 label values TALKPAR2 TALKPAR2 ;
 label values TALKPAR3 TALKPAR3 ;
 label values TALKPAR4 TALKPAR4 ;
 label values TALKPAR5 TALKPAR5 ;
 label values TALKPAR6 TALKPAR6 ;
 label values TALKPAR7 TALKPAR7 ;
 label values sedno sedno ;
 label values SEDNOLC1 SEDNOLC1 ;
 label values SEDNOLC2 SEDNOLC2 ;
 label values SEDNOLC3 SEDNOLC3 ;
 label values SEDNOLC4 SEDNOLC4 ;
 label values sednog sednog ;
 label values sednosx sednosx ;
 label values sedbc sedbc ;
 label values SEDBCLC1 SEDBCLC1 ;
 label values SEDBCLC2 SEDBCLC2 ;
 label values SEDBCLC3 SEDBCLC3 ;
 label values SEDBCLC4 SEDBCLC4 ;
 label values sedbcg sedbcg ;
 label values sedbcsx sedbcsx ;
 label values sedwhbc sedwhbc ;
 label values SEDWHLC1 SEDWHLC1 ;
 label values SEDWHLC2 SEDWHLC2 ;
 label values SEDWHLC3 SEDWHLC3 ;
 label values SEDWHLC4 SEDWHLC4 ;
 label values sedwhbcg sedwhbcg ;
 label values sedwbcsx sedwbcsx ;
 label values sedcond sedcond ;
 label values SEDCONLC1 SEDCONLC1 ;
 label values SEDCONLC2 SEDCONLC2 ;
 label values SEDCONLC3 SEDCONLC3 ;
 label values SEDCONLC4 SEDCONLC4 ;
 label values sedcondg sedcondg ;
 label values sedconsx sedconsx ;
 label values sedstd sedstd ;
 label values SEDSTDLC1 SEDSTDLC1 ;
 label values SEDSTDLC2 SEDSTDLC2 ;
 label values SEDSTDLC3 SEDSTDLC3 ;
 label values SEDSTDLC4 SEDSTDLC4 ;
 label values sedstdg sedstdg ;
 label values sedstdsx sedstdsx ;
 label values sedhiv sedhiv ;
 label values SEDHIVLC1 SEDHIVLC1 ;
 label values SEDHIVLC2 SEDHIVLC2 ;
 label values SEDHIVLC3 SEDHIVLC3 ;
 label values SEDHIVLC4 SEDHIVLC4 ;
 label values sedhivg sedhivg ;
 label values sedhivsx sedhivsx ;
 label values sedabst sedabst ;
 label values SEDABLC1 SEDABLC1 ;
 label values SEDABLC2 SEDABLC2 ;
 label values SEDABLC3 SEDABLC3 ;
 label values SEDABLC4 SEDABLC4 ;
 label values sedabstg sedabstg ;
 label values sedabssx sedabssx ;
 label values everoper everoper ;
 label values typeoper typeoper ;
 label values steroper steroper ;
 label values plcstrop plcstrop ;
 label values rvrsvas rvrsvas ;
 label values rsurgstr rsurgstr ;
 label values fathposs fathposs ;
 label values fathdiff fathdiff ;
 label values rstrstat rstrstat ;
 label values SXMON12 SXMON12 ;
 label values sexstat sexstat ;
 label values P12MOCONO P12MOCONO ;
 label values P12MOCON P12MOCON ;
 label values sexfreq sexfreq ;
 label values confreq confreq ;
 label values P1RLTN1 P1RLTN1 ;
 label values P1CURRWIFE P1CURRWIFE ;
 label values P1CURRSEP P1CURRSEP ;
 label values P1RLTN2 P1RLTN2 ;
 label values P1COHABIT P1COHABIT ;
 label values P1SXLAST_M P1SXLAST_M ;
 label values P1SXLAST_Y P1SXLAST_Y ;
 label values CMLSXP1 CMLSXP1 ;
 label values P2RLTN1 P2RLTN1 ;
 label values P2CURRWIFE P2CURRWIFE ;
 label values P2CURRSEP P2CURRSEP ;
 label values P2RLTN2 P2RLTN2 ;
 label values P2COHABIT P2COHABIT ;
 label values P2SXLAST_M P2SXLAST_M ;
 label values P2SXLAST_Y P2SXLAST_Y ;
 label values CMLSXP2 CMLSXP2 ;
 label values P3RLTN1 P3RLTN1 ;
 label values P3CURRWIFE P3CURRWIFE ;
 label values P3CURRSEP P3CURRSEP ;
 label values P3RLTN2 P3RLTN2 ;
 label values P3COHABIT P3COHABIT ;
 label values P3SXLAST_M P3SXLAST_M ;
 label values P3SXLAST_Y P3SXLAST_Y ;
 label values CMLSXP3 CMLSXP3 ;
 label values P1RELATION P1RELATION ;
 label values P2RELATION P2RELATION ;
 label values P3RELATION P3RELATION ;
 label values first first ;
 label values MARRDATE_Y MARRDATE_Y ;
 label values hisagem hisagem ;
 label values livtogwf livtogwf ;
 label values STRTWFCP_Y STRTWFCP_Y ;
 label values hisagec hisagec ;
 label values cmstrtwp cmstrtwp ;
 label values engathen engathen ;
 label values willmarr willmarr ;
 label values cwpage cwpage ;
 label values cwprace cwprace ;
 label values cwpnrace cwpnrace ;
 label values cwpeducn cwpeducn ;
 label values cwpborn cwpborn ;
 label values cwpmarbf cwpmarbf ;
 label values CWPSX1WN_M CWPSX1WN_M ;
 label values CWPSX1WN_Y CWPSX1WN_Y ;
 label values CWPSX1AG CWPSX1AG ;
 label values cmfsxcwp cmfsxcwp ;
 label values agefsxcwp agefsxcwp ;
 label values CWPSX1RL CWPSX1RL ;
 label values cwpfuse cwpfuse ;
 label values CWPFMET01 CWPFMET01 ;
 label values CWPFMET02 CWPFMET02 ;
 label values CWPFMET03 CWPFMET03 ;
 label values CWPFMET04 CWPFMET04 ;
 label values CWPFMET05 CWPFMET05 ;
 label values cwpopstr cwpopstr ;
 label values CWPTYPOP1 CWPTYPOP1 ;
 label values CWPTYPOP2 CWPTYPOP2 ;
 label values cwptotst cwptotst ;
 label values cwprevst cwprevst ;
 label values psurgstr psurgstr ;
 label values cwpposs cwpposs ;
 label values cwpdiff cwpdiff ;
 label values pstrstat pstrstat ;
 label values CWPLSXWN_M CWPLSXWN_M ;
 label values CWPLSXWN_Y CWPLSXWN_Y ;
 label values cmlsxcwp cmlsxcwp ;
 label values CWPLUSE1 CWPLUSE1 ;
 label values CWPLMET11 CWPLMET11 ;
 label values CWPLMET12 CWPLMET12 ;
 label values CWPLMET13 CWPLMET13 ;
 label values CWPLUSE2 CWPLUSE2 ;
 label values dkcwpluse dkcwpluse ;
 label values CWPLMET201 CWPLMET201 ;
 label values CWPLMET202 CWPLMET202 ;
 label values dkcwplmet dkcwplmet ;
 label values cwplsxuse cwplsxuse ;
 label values cwprecbc cwprecbc ;
 label values CWPALLBC01 CWPALLBC01 ;
 label values CWPALLBC02 CWPALLBC02 ;
 label values CWPALLBC03 CWPALLBC03 ;
 label values CWPALLBC04 CWPALLBC04 ;
 label values CWPALLBC05 CWPALLBC05 ;
 label values cwpbcmst cwpbcmst ;
 label values condfreq condfreq ;
 label values cwpnofrq cwpnofrq ;
 label values cwpbiokd cwpbiokd ;
 label values cwpnumkd cwpnumkd ;
 label values partfath partfath ;
 label values cwpchsex cwpchsex ;
 label values CWPCHDOB_Y CWPCHDOB_Y ;
 label values cwpchmar cwpchmar ;
 label values cwpchres cwpchres ;
 label values cwpchlrn cwpchlrn ;
 label values CWPCHLIV1 CWPCHLIV1 ;
 label values CWPCHLIV2 CWPCHLIV2 ;
 label values cwpchage cwpchage ;
 label values cwpchsig cwpchsig ;
 label values cwpchcrt cwpchcrt ;
 label values cwpchgen cwpchgen ;
 label values cwpchevr cwpchevr ;
 label values cwpchfar cwpchfar ;
 label values cwpchwnt cwpchwnt ;
 label values cwpchson cwpchson ;
 label values cwpsoonn cwpsoonn ;
 label values cwpsoonmy cwpsoonmy ;
 label values cwplaten cwplaten ;
 label values cwplatemy cwplatemy ;
 label values cwpchhpy cwpchhpy ;
 label values CWPCHSEX2 CWPCHSEX2 ;
 label values CWPCHDOB_Y2 CWPCHDOB_Y2 ;
 label values MULTBIRT2 MULTBIRT2 ;
 label values CWPCHMAR2 CWPCHMAR2 ;
 label values CWPCHRES2 CWPCHRES2 ;
 label values CWPCHLRN2 CWPCHLRN2 ;
 label values CWPCHLIV10 CWPCHLIV10 ;
 label values CWPCHLIV11 CWPCHLIV11 ;
 label values CWPCHAGE2 CWPCHAGE2 ;
 label values CWPCHSIG2 CWPCHSIG2 ;
 label values CWPCHCRT2 CWPCHCRT2 ;
 label values CWPCHGEN2 CWPCHGEN2 ;
 label values CWPCHEVR2 CWPCHEVR2 ;
 label values CWPCHFAR2 CWPCHFAR2 ;
 label values CWPCHWNT2 CWPCHWNT2 ;
 label values CWPCHSON2 CWPCHSON2 ;
 label values CWPSOONN2 CWPSOONN2 ;
 label values CWPSOONMY2 CWPSOONMY2 ;
 label values CWPLATEN2 CWPLATEN2 ;
 label values CWPLATEMY2 CWPLATEMY2 ;
 label values CWPCHHPY2 CWPCHHPY2 ;
 label values CWPCHSEX3 CWPCHSEX3 ;
 label values CWPCHDOB_Y3 CWPCHDOB_Y3 ;
 label values MULTBIRT3 MULTBIRT3 ;
 label values CWPCHMAR3 CWPCHMAR3 ;
 label values CWPCHRES3 CWPCHRES3 ;
 label values CWPCHLRN3 CWPCHLRN3 ;
 label values CWPCHLIV19 CWPCHLIV19 ;
 label values CWPCHLIV20 CWPCHLIV20 ;
 label values CWPCHAGE3 CWPCHAGE3 ;
 label values CWPCHSIG3 CWPCHSIG3 ;
 label values CWPCHCRT3 CWPCHCRT3 ;
 label values CWPCHGEN3 CWPCHGEN3 ;
 label values CWPCHEVR3 CWPCHEVR3 ;
 label values CWPCHFAR3 CWPCHFAR3 ;
 label values CWPCHWNT3 CWPCHWNT3 ;
 label values CWPCHSON3 CWPCHSON3 ;
 label values CWPSOONN3 CWPSOONN3 ;
 label values CWPSOONMY3 CWPSOONMY3 ;
 label values CWPLATEN3 CWPLATEN3 ;
 label values CWPLATEMY3 CWPLATEMY3 ;
 label values CWPCHHPY3 CWPCHHPY3 ;
 label values CWPCHSEX4 CWPCHSEX4 ;
 label values CWPCHDOB_Y4 CWPCHDOB_Y4 ;
 label values MULTBIRT4 MULTBIRT4 ;
 label values CWPCHMAR4 CWPCHMAR4 ;
 label values CWPCHRES4 CWPCHRES4 ;
 label values CWPCHLRN4 CWPCHLRN4 ;
 label values CWPCHLIV28 CWPCHLIV28 ;
 label values CWPCHLIV29 CWPCHLIV29 ;
 label values CWPCHAGE4 CWPCHAGE4 ;
 label values CWPCHSIG4 CWPCHSIG4 ;
 label values CWPCHCRT4 CWPCHCRT4 ;
 label values CWPCHGEN4 CWPCHGEN4 ;
 label values CWPCHEVR4 CWPCHEVR4 ;
 label values CWPCHFAR4 CWPCHFAR4 ;
 label values CWPCHWNT4 CWPCHWNT4 ;
 label values CWPCHSON4 CWPCHSON4 ;
 label values CWPSOONN4 CWPSOONN4 ;
 label values CWPSOONMY4 CWPSOONMY4 ;
 label values CWPLATEN4 CWPLATEN4 ;
 label values CWPLATEMY4 CWPLATEMY4 ;
 label values CWPCHHPY4 CWPCHHPY4 ;
 label values CWPCHSEX5 CWPCHSEX5 ;
 label values CWPCHDOB_Y5 CWPCHDOB_Y5 ;
 label values MULTBIRT5 MULTBIRT5 ;
 label values CWPCHMAR5 CWPCHMAR5 ;
 label values CWPCHRES5 CWPCHRES5 ;
 label values CWPCHLRN5 CWPCHLRN5 ;
 label values CWPCHLIV37 CWPCHLIV37 ;
 label values CWPCHLIV38 CWPCHLIV38 ;
 label values CWPCHAGE5 CWPCHAGE5 ;
 label values CWPCHSIG5 CWPCHSIG5 ;
 label values CWPCHCRT5 CWPCHCRT5 ;
 label values CWPCHGEN5 CWPCHGEN5 ;
 label values CWPCHEVR5 CWPCHEVR5 ;
 label values CWPCHFAR5 CWPCHFAR5 ;
 label values CWPCHWNT5 CWPCHWNT5 ;
 label values CWPCHSON5 CWPCHSON5 ;
 label values CWPSOONN5 CWPSOONN5 ;
 label values CWPSOONMY5 CWPSOONMY5 ;
 label values CWPLATEN5 CWPLATEN5 ;
 label values CWPLATEMY5 CWPLATEMY5 ;
 label values CWPCHHPY5 CWPCHHPY5 ;
 label values CWPCHSEX6 CWPCHSEX6 ;
 label values CWPCHDOB_Y6 CWPCHDOB_Y6 ;
 label values MULTBIRT6 MULTBIRT6 ;
 label values CWPCHMAR6 CWPCHMAR6 ;
 label values CWPCHRES6 CWPCHRES6 ;
 label values CWPCHLRN6 CWPCHLRN6 ;
 label values CWPCHLIV46 CWPCHLIV46 ;
 label values CWPCHLIV47 CWPCHLIV47 ;
 label values CWPCHAGE6 CWPCHAGE6 ;
 label values CWPCHSIG6 CWPCHSIG6 ;
 label values CWPCHCRT6 CWPCHCRT6 ;
 label values CWPCHGEN6 CWPCHGEN6 ;
 label values CWPCHEVR6 CWPCHEVR6 ;
 label values CWPCHFAR6 CWPCHFAR6 ;
 label values CWPCHWNT6 CWPCHWNT6 ;
 label values CWPCHSON6 CWPCHSON6 ;
 label values CWPSOONN6 CWPSOONN6 ;
 label values CWPSOONMY6 CWPSOONMY6 ;
 label values CWPLATEN6 CWPLATEN6 ;
 label values CWPLATEMY6 CWPLATEMY6 ;
 label values CWPCHHPY6 CWPCHHPY6 ;
 label values CWPCHSEX7 CWPCHSEX7 ;
 label values CWPCHDOB_Y7 CWPCHDOB_Y7 ;
 label values MULTBIRT7 MULTBIRT7 ;
 label values CWPCHMAR7 CWPCHMAR7 ;
 label values CWPCHRES7 CWPCHRES7 ;
 label values CWPCHLRN7 CWPCHLRN7 ;
 label values CWPCHLIV55 CWPCHLIV55 ;
 label values CWPCHLIV56 CWPCHLIV56 ;
 label values CWPCHAGE7 CWPCHAGE7 ;
 label values CWPCHSIG7 CWPCHSIG7 ;
 label values CWPCHCRT7 CWPCHCRT7 ;
 label values CWPCHGEN7 CWPCHGEN7 ;
 label values CWPCHEVR7 CWPCHEVR7 ;
 label values CWPCHFAR7 CWPCHFAR7 ;
 label values CWPCHWNT7 CWPCHWNT7 ;
 label values CWPCHSON7 CWPCHSON7 ;
 label values CWPSOONN7 CWPSOONN7 ;
 label values CWPSOONMY7 CWPSOONMY7 ;
 label values CWPLATEN7 CWPLATEN7 ;
 label values CWPLATEMY7 CWPLATEMY7 ;
 label values CWPCHHPY7 CWPCHHPY7 ;
 label values CWPCHSEX8 CWPCHSEX8 ;
 label values CWPCHDOB_Y8 CWPCHDOB_Y8 ;
 label values MULTBIRT8 MULTBIRT8 ;
 label values CWPCHMAR8 CWPCHMAR8 ;
 label values CWPCHRES8 CWPCHRES8 ;
 label values CWPCHLRN8 CWPCHLRN8 ;
 label values CWPCHLIV64 CWPCHLIV64 ;
 label values CWPCHLIV65 CWPCHLIV65 ;
 label values CWPCHAGE8 CWPCHAGE8 ;
 label values CWPCHSIG8 CWPCHSIG8 ;
 label values CWPCHCRT8 CWPCHCRT8 ;
 label values CWPCHGEN8 CWPCHGEN8 ;
 label values CWPCHEVR8 CWPCHEVR8 ;
 label values CWPCHFAR8 CWPCHFAR8 ;
 label values CWPCHWNT8 CWPCHWNT8 ;
 label values CWPCHSON8 CWPCHSON8 ;
 label values CWPSOONN8 CWPSOONN8 ;
 label values CWPSOONMY8 CWPSOONMY8 ;
 label values CWPLATEN8 CWPLATEN8 ;
 label values CWPLATEMY8 CWPLATEMY8 ;
 label values CWPCHHPY8 CWPCHHPY8 ;
 label values cwpprgnw cwpprgnw ;
 label values cwptrypg cwptrypg ;
 label values cwptrylg cwptrylg ;
 label values cwpcpwnt cwpcpwnt ;
 label values cwpcpson cwpcpson ;
 label values cwpcpsnn cwpcpsnn ;
 label values cwpcpsnmy cwpcpsnmy ;
 label values cwpcplaten cwpcplaten ;
 label values cwpcplatemy cwpcplatemy ;
 label values cwpcphpy cwpcphpy ;
 label values C_OKAKIDS C_OKAKIDS ;
 label values cwpotkid cwpotkid ;
 label values cwpoknum cwpoknum ;
 label values cwpokwth cwpokwth ;
 label values cwpokwthn cwpokwthn ;
 label values cwpoksex cwpoksex ;
 label values cwpokad cwpokad ;
 label values cwpoktry cwpoktry ;
 label values cwpokthr cwpokthr ;
 label values CWPOKLIV1 CWPOKLIV1 ;
 label values CWPOKLIV2 CWPOKLIV2 ;
 label values cwpokfar cwpokfar ;
 label values cwpokage cwpokage ;
 label values CWPOKSEX2 CWPOKSEX2 ;
 label values CWPOKAD2 CWPOKAD2 ;
 label values CWPOKTRY2 CWPOKTRY2 ;
 label values CWPOKTHR2 CWPOKTHR2 ;
 label values CWPOKLIV8 CWPOKLIV8 ;
 label values CWPOKLIV9 CWPOKLIV9 ;
 label values CWPOKFAR2 CWPOKFAR2 ;
 label values CWPOKAGE2 CWPOKAGE2 ;
 label values CWPOKSEX3 CWPOKSEX3 ;
 label values CWPOKAD3 CWPOKAD3 ;
 label values CWPOKTRY3 CWPOKTRY3 ;
 label values CWPOKTHR3 CWPOKTHR3 ;
 label values CWPOKLIV15 CWPOKLIV15 ;
 label values CWPOKLIV16 CWPOKLIV16 ;
 label values CWPOKFAR3 CWPOKFAR3 ;
 label values CWPOKAGE3 CWPOKAGE3 ;
 label values CWPOKSEX4 CWPOKSEX4 ;
 label values CWPOKAD4 CWPOKAD4 ;
 label values CWPOKTRY4 CWPOKTRY4 ;
 label values CWPOKTHR4 CWPOKTHR4 ;
 label values CWPOKLIV22 CWPOKLIV22 ;
 label values CWPOKLIV23 CWPOKLIV23 ;
 label values CWPOKFAR4 CWPOKFAR4 ;
 label values CWPOKAGE4 CWPOKAGE4 ;
 label values C_NBAKIDS C_NBAKIDS ;
 label values cwpnbevr cwpnbevr ;
 label values cwpnbnum cwpnbnum ;
 label values cwpnbrel cwpnbrel ;
 label values cwpnbfos cwpnbfos ;
 label values cwpnbsex cwpnbsex ;
 label values cwpnbad cwpnbad ;
 label values cwpnbtry cwpnbtry ;
 label values cwpnbthr cwpnbthr ;
 label values CWPNBLIV1 CWPNBLIV1 ;
 label values CWPNBLIV2 CWPNBLIV2 ;
 label values cwpnbfar cwpnbfar ;
 label values cwpnbage cwpnbage ;
 label values CWPNBREL2 CWPNBREL2 ;
 label values CWPNBFOS2 CWPNBFOS2 ;
 label values CWPNBSEX2 CWPNBSEX2 ;
 label values CWPNBAD2 CWPNBAD2 ;
 label values CWPNBTRY2 CWPNBTRY2 ;
 label values CWPNBTHR2 CWPNBTHR2 ;
 label values CWPNBLIV8 CWPNBLIV8 ;
 label values CWPNBLIV9 CWPNBLIV9 ;
 label values CWPNBFAR2 CWPNBFAR2 ;
 label values CWPNBAGE2 CWPNBAGE2 ;
 label values CWPNBREL3 CWPNBREL3 ;
 label values CWPNBFOS3 CWPNBFOS3 ;
 label values CWPNBSEX3 CWPNBSEX3 ;
 label values CWPNBAD3 CWPNBAD3 ;
 label values CWPNBTRY3 CWPNBTRY3 ;
 label values CWPNBTHR3 CWPNBTHR3 ;
 label values CWPNBLIV15 CWPNBLIV15 ;
 label values CWPNBLIV16 CWPNBLIV16 ;
 label values CWPNBFAR3 CWPNBFAR3 ;
 label values CWPNBAGE3 CWPNBAGE3 ;
 label values CWPNBREL4 CWPNBREL4 ;
 label values CWPNBFOS4 CWPNBFOS4 ;
 label values CWPNBSEX4 CWPNBSEX4 ;
 label values CWPNBAD4 CWPNBAD4 ;
 label values CWPNBTRY4 CWPNBTRY4 ;
 label values CWPNBTHR4 CWPNBTHR4 ;
 label values CWPNBLIV22 CWPNBLIV22 ;
 label values CWPNBLIV23 CWPNBLIV23 ;
 label values CWPNBFAR4 CWPNBFAR4 ;
 label values CWPNBAGE4 CWPNBAGE4 ;
 label values CWPNBREL5 CWPNBREL5 ;
 label values CWPNBFOS5 CWPNBFOS5 ;
 label values CWPNBSEX5 CWPNBSEX5 ;
 label values CWPNBAD5 CWPNBAD5 ;
 label values CWPNBTRY5 CWPNBTRY5 ;
 label values CWPNBTHR5 CWPNBTHR5 ;
 label values CWPNBLIV29 CWPNBLIV29 ;
 label values CWPNBLIV30 CWPNBLIV30 ;
 label values CWPNBFAR5 CWPNBFAR5 ;
 label values CWPNBAGE5 CWPNBAGE5 ;
 label values CWPNBREL6 CWPNBREL6 ;
 label values CWPNBFOS6 CWPNBFOS6 ;
 label values CWPNBSEX6 CWPNBSEX6 ;
 label values CWPNBAD6 CWPNBAD6 ;
 label values CWPNBTRY6 CWPNBTRY6 ;
 label values CWPNBTHR6 CWPNBTHR6 ;
 label values CWPNBLIV36 CWPNBLIV36 ;
 label values CWPNBLIV37 CWPNBLIV37 ;
 label values CWPNBFAR6 CWPNBFAR6 ;
 label values CWPNBAGE6 CWPNBAGE6 ;
 label values MARDATEN_Y MARDATEN_Y ;
 label values agemarr agemarr ;
 label values livtogn livtogn ;
 label values ageliv ageliv ;
 label values cmunionp cmunionp ;
 label values engagthn engagthn ;
 label values marrend marrend ;
 label values MARDATEN_Y2 MARDATEN_Y2 ;
 label values AGEMARR2 AGEMARR2 ;
 label values LIVTOGN2 LIVTOGN2 ;
 label values AGELIV2 AGELIV2 ;
 label values ENGAGTHN2 ENGAGTHN2 ;
 label values MARREND2 MARREND2 ;
 label values MARDATEN_Y3 MARDATEN_Y3 ;
 label values AGEMARR3 AGEMARR3 ;
 label values LIVTOGN3 LIVTOGN3 ;
 label values AGELIV3 AGELIV3 ;
 label values ENGAGTHN3 ENGAGTHN3 ;
 label values MARREND3 MARREND3 ;
 label values currprts currprts ;
 label values pxcurr pxcurr ;
 label values pxcurrprt pxcurrprt ;
 label values pxmarry pxmarry ;
 label values PXCURR2 PXCURR2 ;
 label values PXCURRPRT2 PXCURRPRT2 ;
 label values PXMARRY2 PXMARRY2 ;
 label values PXCURR3 PXCURR3 ;
 label values PXCURRPRT3 PXCURRPRT3 ;
 label values PXMARRY3 PXMARRY3 ;
 label values pxlruse pxlruse ;
 label values PXLRMETH1 PXLRMETH1 ;
 label values PXLRMETH2 PXLRMETH2 ;
 label values PXLRMETH3 PXLRMETH3 ;
 label values pxlpuse pxlpuse ;
 label values dkpxlpuse dkpxlpuse ;
 label values PXLPMETH01 PXLPMETH01 ;
 label values PXLPMETH02 PXLPMETH02 ;
 label values PXLPMETH03 PXLPMETH03 ;
 label values dkpxlpmeth dkpxlpmeth ;
 label values lsxusep lsxusep ;
 label values mtoncep mtoncep ;
 label values pxlsxprb pxlsxprb ;
 label values pxmtonce pxmtonce ;
 label values PXFRLTN1 PXFRLTN1 ;
 label values P1YRACE1 P1YRACE1 ;
 label values P1YNRACE1 P1YNRACE1 ;
 label values PXLRUSE2 PXLRUSE2 ;
 label values PXLRMETH5 PXLRMETH5 ;
 label values PXLRMETH6 PXLRMETH6 ;
 label values PXLRMETH7 PXLRMETH7 ;
 label values PXLPUSE2 PXLPUSE2 ;
 label values DKPXLPUSE2 DKPXLPUSE2 ;
 label values PXLPMETH11 PXLPMETH11 ;
 label values PXLPMETH12 PXLPMETH12 ;
 label values PXLPMETH13 PXLPMETH13 ;
 label values DKPXLPMETH2 DKPXLPMETH2 ;
 label values LSXUSEP2 LSXUSEP2 ;
 label values MTONCEP2 MTONCEP2 ;
 label values PXLSXPRB2 PXLSXPRB2 ;
 label values PXMTONCE2 PXMTONCE2 ;
 label values PXFRLTN3 PXFRLTN3 ;
 label values P1YRACE2 P1YRACE2 ;
 label values P1YNRACE2 P1YNRACE2 ;
 label values PXLRUSE3 PXLRUSE3 ;
 label values PXLRMETH9 PXLRMETH9 ;
 label values PXLRMETH10 PXLRMETH10 ;
 label values PXLRMETH11 PXLRMETH11 ;
 label values PXLPUSE3 PXLPUSE3 ;
 label values DKPXLPUSE3 DKPXLPUSE3 ;
 label values PXLPMETH21 PXLPMETH21 ;
 label values PXLPMETH22 PXLPMETH22 ;
 label values PXLPMETH23 PXLPMETH23 ;
 label values DKPXLPMETH3 DKPXLPMETH3 ;
 label values LSXUSEP3 LSXUSEP3 ;
 label values MTONCEP3 MTONCEP3 ;
 label values PXLSXPRB3 PXLSXPRB3 ;
 label values PXMTONCE3 PXMTONCE3 ;
 label values PXFRLTN5 PXFRLTN5 ;
 label values P1YRACE3 P1YRACE3 ;
 label values P1YNRACE3 P1YNRACE3 ;
 label values pxeduc pxeduc ;
 label values pxmarbf pxmarbf ;
 label values pxanych pxanych ;
 label values pxablech pxablech ;
 label values PXEDUC2 PXEDUC2 ;
 label values PXMARBF2 PXMARBF2 ;
 label values PXANYCH2 PXANYCH2 ;
 label values PXABLECH2 PXABLECH2 ;
 label values PXEDUC3 PXEDUC3 ;
 label values PXMARBF3 PXMARBF3 ;
 label values PXANYCH3 PXANYCH3 ;
 label values PXABLECH3 PXABLECH3 ;
 label values PXSXFRST_M PXSXFRST_M ;
 label values PXSXFRST_Y PXSXFRST_Y ;
 label values cmfsxp cmfsxp ;
 label values agefsxp agefsxp ;
 label values pxagfrst pxagfrst ;
 label values PXFRLTN2 PXFRLTN2 ;
 label values pxfuse pxfuse ;
 label values PXFMETH01 PXFMETH01 ;
 label values PXFMETH02 PXFMETH02 ;
 label values PXFMETH03 PXFMETH03 ;
 label values PXFMETH04 PXFMETH04 ;
 label values PXSXFRST_M2 PXSXFRST_M2 ;
 label values PXSXFRST_Y2 PXSXFRST_Y2 ;
 label values CMFSXP2 CMFSXP2 ;
 label values AGEFSXP2 AGEFSXP2 ;
 label values PXAGFRST2 PXAGFRST2 ;
 label values PXFRLTN4 PXFRLTN4 ;
 label values PXFUSE2 PXFUSE2 ;
 label values PXFMETH14 PXFMETH14 ;
 label values PXFMETH15 PXFMETH15 ;
 label values PXFMETH16 PXFMETH16 ;
 label values PXFMETH17 PXFMETH17 ;
 label values PXSXFRST_M3 PXSXFRST_M3 ;
 label values PXSXFRST_Y3 PXSXFRST_Y3 ;
 label values CMFSXP3 CMFSXP3 ;
 label values AGEFSXP3 AGEFSXP3 ;
 label values PXAGFRST3 PXAGFRST3 ;
 label values PXFRLTN6 PXFRLTN6 ;
 label values PXFUSE3 PXFUSE3 ;
 label values PXFMETH27 PXFMETH27 ;
 label values PXFMETH28 PXFMETH28 ;
 label values PXFMETH29 PXFMETH29 ;
 label values PXFMETH30 PXFMETH30 ;
 label values pxanyuse pxanyuse ;
 label values PXMETHOD01 PXMETHOD01 ;
 label values PXMETHOD02 PXMETHOD02 ;
 label values PXMETHOD03 PXMETHOD03 ;
 label values PXMETHOD04 PXMETHOD04 ;
 label values PXMETHOD05 PXMETHOD05 ;
 label values pxmstuse pxmstuse ;
 label values pxconfrq pxconfrq ;
 label values pxnofreq pxnofreq ;
 label values PXANYUSE2 PXANYUSE2 ;
 label values PXMETHOD14 PXMETHOD14 ;
 label values PXMETHOD15 PXMETHOD15 ;
 label values PXMETHOD16 PXMETHOD16 ;
 label values PXMETHOD17 PXMETHOD17 ;
 label values PXMETHOD18 PXMETHOD18 ;
 label values PXMSTUSE2 PXMSTUSE2 ;
 label values PXCONFRQ2 PXCONFRQ2 ;
 label values PXNOFREQ2 PXNOFREQ2 ;
 label values PXANYUSE3 PXANYUSE3 ;
 label values PXMETHOD27 PXMETHOD27 ;
 label values PXMETHOD28 PXMETHOD28 ;
 label values PXMETHOD29 PXMETHOD29 ;
 label values PXMETHOD30 PXMETHOD30 ;
 label values PXMETHOD31 PXMETHOD31 ;
 label values PXMSTUSE3 PXMSTUSE3 ;
 label values PXCONFRQ3 PXCONFRQ3 ;
 label values PXNOFREQ3 PXNOFREQ3 ;
 label values pxchild pxchild ;
 label values pxchildn pxchildn ;
 label values pxcxsex pxcxsex ;
 label values PXCXBORN_Y PXCXBORN_Y ;
 label values MULTBIRT11 MULTBIRT11 ;
 label values pxcxmarb pxcxmarb ;
 label values pxcxres pxcxres ;
 label values pxcxknow pxcxknow ;
 label values PXCXLIV01 PXCXLIV01 ;
 label values PXCXLIV02 PXCXLIV02 ;
 label values PXCXLIV03 PXCXLIV03 ;
 label values pxcxage pxcxage ;
 label values pxcxsig pxcxsig ;
 label values pxcxcrt pxcxcrt ;
 label values pxcxgen pxcxgen ;
 label values pxcxever pxcxever ;
 label values pxcxfar pxcxfar ;
 label values pxwant pxwant ;
 label values pxsoon pxsoon ;
 label values pxsoonn pxsoonn ;
 label values pxsoonmy pxsoonmy ;
 label values pxlaten pxlaten ;
 label values pxlatemy pxlatemy ;
 label values pxhpypg pxhpypg ;
 label values PXCXSEX2 PXCXSEX2 ;
 label values PXCXBORN_Y2 PXCXBORN_Y2 ;
 label values MULTBIRT12 MULTBIRT12 ;
 label values PXCXMARB2 PXCXMARB2 ;
 label values PXCXRES2 PXCXRES2 ;
 label values PXCXKNOW2 PXCXKNOW2 ;
 label values PXCXLIV11 PXCXLIV11 ;
 label values PXCXLIV12 PXCXLIV12 ;
 label values PXCXLIV13 PXCXLIV13 ;
 label values PXCXAGE2 PXCXAGE2 ;
 label values PXCXSIG2 PXCXSIG2 ;
 label values PXCXCRT2 PXCXCRT2 ;
 label values PXCXGEN2 PXCXGEN2 ;
 label values PXCXEVER2 PXCXEVER2 ;
 label values PXCXFAR2 PXCXFAR2 ;
 label values PXWANT2 PXWANT2 ;
 label values PXSOON2 PXSOON2 ;
 label values PXSOONN2 PXSOONN2 ;
 label values PXSOONMY2 PXSOONMY2 ;
 label values PXLATEN2 PXLATEN2 ;
 label values PXLATEMY2 PXLATEMY2 ;
 label values PXHPYPG2 PXHPYPG2 ;
 label values PXCXSEX3 PXCXSEX3 ;
 label values PXCXBORN_Y3 PXCXBORN_Y3 ;
 label values MULTBIRT13 MULTBIRT13 ;
 label values PXCXMARB3 PXCXMARB3 ;
 label values PXCXRES3 PXCXRES3 ;
 label values PXCXKNOW3 PXCXKNOW3 ;
 label values PXCXLIV21 PXCXLIV21 ;
 label values PXCXLIV22 PXCXLIV22 ;
 label values PXCXLIV23 PXCXLIV23 ;
 label values PXCXAGE3 PXCXAGE3 ;
 label values PXCXSIG3 PXCXSIG3 ;
 label values PXCXCRT3 PXCXCRT3 ;
 label values PXCXGEN3 PXCXGEN3 ;
 label values PXCXEVER3 PXCXEVER3 ;
 label values PXCXFAR3 PXCXFAR3 ;
 label values PXWANT3 PXWANT3 ;
 label values PXSOON3 PXSOON3 ;
 label values PXSOONN3 PXSOONN3 ;
 label values PXSOONMY3 PXSOONMY3 ;
 label values PXLATEN3 PXLATEN3 ;
 label values PXLATEMY3 PXLATEMY3 ;
 label values PXHPYPG3 PXHPYPG3 ;
 label values PXCXSEX4 PXCXSEX4 ;
 label values PXCXBORN_Y4 PXCXBORN_Y4 ;
 label values MULTBIRT14 MULTBIRT14 ;
 label values PXCXMARB4 PXCXMARB4 ;
 label values PXCXRES4 PXCXRES4 ;
 label values PXCXKNOW4 PXCXKNOW4 ;
 label values PXCXLIV31 PXCXLIV31 ;
 label values PXCXLIV32 PXCXLIV32 ;
 label values PXCXLIV33 PXCXLIV33 ;
 label values PXCXAGE4 PXCXAGE4 ;
 label values PXCXSIG4 PXCXSIG4 ;
 label values PXCXCRT4 PXCXCRT4 ;
 label values PXCXGEN4 PXCXGEN4 ;
 label values PXCXEVER4 PXCXEVER4 ;
 label values PXCXFAR4 PXCXFAR4 ;
 label values PXWANT4 PXWANT4 ;
 label values PXSOON4 PXSOON4 ;
 label values PXSOONN4 PXSOONN4 ;
 label values PXSOONMY4 PXSOONMY4 ;
 label values PXLATEN4 PXLATEN4 ;
 label values PXLATEMY4 PXLATEMY4 ;
 label values PXHPYPG4 PXHPYPG4 ;
 label values PXCXSEX5 PXCXSEX5 ;
 label values PXCXBORN_Y5 PXCXBORN_Y5 ;
 label values MULTBIRT15 MULTBIRT15 ;
 label values PXCXMARB5 PXCXMARB5 ;
 label values PXCXRES5 PXCXRES5 ;
 label values PXCXKNOW5 PXCXKNOW5 ;
 label values PXCXLIV41 PXCXLIV41 ;
 label values PXCXLIV42 PXCXLIV42 ;
 label values PXCXLIV43 PXCXLIV43 ;
 label values PXCXAGE5 PXCXAGE5 ;
 label values PXCXSIG5 PXCXSIG5 ;
 label values PXCXCRT5 PXCXCRT5 ;
 label values PXCXGEN5 PXCXGEN5 ;
 label values PXCXEVER5 PXCXEVER5 ;
 label values PXCXFAR5 PXCXFAR5 ;
 label values PXWANT5 PXWANT5 ;
 label values PXSOON5 PXSOON5 ;
 label values PXSOONN5 PXSOONN5 ;
 label values PXSOONMY5 PXSOONMY5 ;
 label values PXLATEN5 PXLATEN5 ;
 label values PXLATEMY5 PXLATEMY5 ;
 label values PXHPYPG5 PXHPYPG5 ;
 label values PXCHILD2 PXCHILD2 ;
 label values PXCHILDN2 PXCHILDN2 ;
 label values PXCXSEX11 PXCXSEX11 ;
 label values PXCXBORN_Y11 PXCXBORN_Y11 ;
 label values MULTBIRT21 MULTBIRT21 ;
 label values PXCXMARB11 PXCXMARB11 ;
 label values PXCXRES11 PXCXRES11 ;
 label values PXCXKNOW11 PXCXKNOW11 ;
 label values PXCXLIV101 PXCXLIV101 ;
 label values PXCXLIV102 PXCXLIV102 ;
 label values PXCXLIV103 PXCXLIV103 ;
 label values PXCXAGE11 PXCXAGE11 ;
 label values PXCXSIG11 PXCXSIG11 ;
 label values PXCXCRT11 PXCXCRT11 ;
 label values PXCXGEN11 PXCXGEN11 ;
 label values PXCXEVER11 PXCXEVER11 ;
 label values PXCXFAR11 PXCXFAR11 ;
 label values PXWANT11 PXWANT11 ;
 label values PXSOON11 PXSOON11 ;
 label values PXSOONN11 PXSOONN11 ;
 label values PXSOONMY11 PXSOONMY11 ;
 label values PXLATEN11 PXLATEN11 ;
 label values PXLATEMY11 PXLATEMY11 ;
 label values PXHPYPG11 PXHPYPG11 ;
 label values PXCXSEX12 PXCXSEX12 ;
 label values PXCXBORN_Y12 PXCXBORN_Y12 ;
 label values MULTBIRT22 MULTBIRT22 ;
 label values PXCXMARB12 PXCXMARB12 ;
 label values PXCXRES12 PXCXRES12 ;
 label values PXCXKNOW12 PXCXKNOW12 ;
 label values PXCXLIV111 PXCXLIV111 ;
 label values PXCXLIV112 PXCXLIV112 ;
 label values PXCXLIV113 PXCXLIV113 ;
 label values PXCXAGE12 PXCXAGE12 ;
 label values PXCXSIG12 PXCXSIG12 ;
 label values PXCXCRT12 PXCXCRT12 ;
 label values PXCXGEN12 PXCXGEN12 ;
 label values PXCXEVER12 PXCXEVER12 ;
 label values PXCXFAR12 PXCXFAR12 ;
 label values PXWANT12 PXWANT12 ;
 label values PXSOON12 PXSOON12 ;
 label values PXSOONN12 PXSOONN12 ;
 label values PXSOONMY12 PXSOONMY12 ;
 label values PXLATEN12 PXLATEN12 ;
 label values PXLATEMY12 PXLATEMY12 ;
 label values PXHPYPG12 PXHPYPG12 ;
 label values PXCXSEX13 PXCXSEX13 ;
 label values PXCXBORN_Y13 PXCXBORN_Y13 ;
 label values MULTBIRT23 MULTBIRT23 ;
 label values PXCXMARB13 PXCXMARB13 ;
 label values PXCXRES13 PXCXRES13 ;
 label values PXCXKNOW13 PXCXKNOW13 ;
 label values PXCXLIV121 PXCXLIV121 ;
 label values PXCXLIV122 PXCXLIV122 ;
 label values PXCXLIV123 PXCXLIV123 ;
 label values PXCXAGE13 PXCXAGE13 ;
 label values PXCXSIG13 PXCXSIG13 ;
 label values PXCXCRT13 PXCXCRT13 ;
 label values PXCXGEN13 PXCXGEN13 ;
 label values PXCXEVER13 PXCXEVER13 ;
 label values PXCXFAR13 PXCXFAR13 ;
 label values PXWANT13 PXWANT13 ;
 label values PXSOON13 PXSOON13 ;
 label values PXSOONN13 PXSOONN13 ;
 label values PXSOONMY13 PXSOONMY13 ;
 label values PXLATEN13 PXLATEN13 ;
 label values PXLATEMY13 PXLATEMY13 ;
 label values PXHPYPG13 PXHPYPG13 ;
 label values PXCXSEX14 PXCXSEX14 ;
 label values PXCXBORN_Y14 PXCXBORN_Y14 ;
 label values MULTBIRT24 MULTBIRT24 ;
 label values PXCXMARB14 PXCXMARB14 ;
 label values PXCXRES14 PXCXRES14 ;
 label values PXCXKNOW14 PXCXKNOW14 ;
 label values PXCXLIV131 PXCXLIV131 ;
 label values PXCXLIV132 PXCXLIV132 ;
 label values PXCXLIV133 PXCXLIV133 ;
 label values PXCXAGE14 PXCXAGE14 ;
 label values PXCXSIG14 PXCXSIG14 ;
 label values PXCXCRT14 PXCXCRT14 ;
 label values PXCXGEN14 PXCXGEN14 ;
 label values PXCXEVER14 PXCXEVER14 ;
 label values PXCXFAR14 PXCXFAR14 ;
 label values PXWANT14 PXWANT14 ;
 label values PXSOON14 PXSOON14 ;
 label values PXSOONN14 PXSOONN14 ;
 label values PXSOONMY14 PXSOONMY14 ;
 label values PXLATEN14 PXLATEN14 ;
 label values PXLATEMY14 PXLATEMY14 ;
 label values PXHPYPG14 PXHPYPG14 ;
 label values PXCHILD3 PXCHILD3 ;
 label values PXCHILDN3 PXCHILDN3 ;
 label values PXCXSEX21 PXCXSEX21 ;
 label values PXCXBORN_Y21 PXCXBORN_Y21 ;
 label values MULTBIRT31 MULTBIRT31 ;
 label values PXCXMARB21 PXCXMARB21 ;
 label values PXCXRES21 PXCXRES21 ;
 label values PXCXKNOW21 PXCXKNOW21 ;
 label values PXCXLIV201 PXCXLIV201 ;
 label values PXCXLIV202 PXCXLIV202 ;
 label values PXCXLIV203 PXCXLIV203 ;
 label values PXCXAGE21 PXCXAGE21 ;
 label values PXCXSIG21 PXCXSIG21 ;
 label values PXCXCRT21 PXCXCRT21 ;
 label values PXCXGEN21 PXCXGEN21 ;
 label values PXCXEVER21 PXCXEVER21 ;
 label values PXCXFAR21 PXCXFAR21 ;
 label values PXWANT21 PXWANT21 ;
 label values PXSOON21 PXSOON21 ;
 label values PXSOONN21 PXSOONN21 ;
 label values PXSOONMY21 PXSOONMY21 ;
 label values PXLATEN21 PXLATEN21 ;
 label values PXLATEMY21 PXLATEMY21 ;
 label values PXHPYPG21 PXHPYPG21 ;
 label values PXCXSEX22 PXCXSEX22 ;
 label values PXCXBORN_Y22 PXCXBORN_Y22 ;
 label values MULTBIRT32 MULTBIRT32 ;
 label values PXCXMARB22 PXCXMARB22 ;
 label values PXCXRES22 PXCXRES22 ;
 label values PXCXKNOW22 PXCXKNOW22 ;
 label values PXCXLIV211 PXCXLIV211 ;
 label values PXCXLIV212 PXCXLIV212 ;
 label values PXCXLIV213 PXCXLIV213 ;
 label values PXCXAGE22 PXCXAGE22 ;
 label values PXCXSIG22 PXCXSIG22 ;
 label values PXCXCRT22 PXCXCRT22 ;
 label values PXCXGEN22 PXCXGEN22 ;
 label values PXCXEVER22 PXCXEVER22 ;
 label values PXCXFAR22 PXCXFAR22 ;
 label values PXWANT22 PXWANT22 ;
 label values PXSOON22 PXSOON22 ;
 label values PXSOONN22 PXSOONN22 ;
 label values PXSOONMY22 PXSOONMY22 ;
 label values PXLATEN22 PXLATEN22 ;
 label values PXLATEMY22 PXLATEMY22 ;
 label values PXHPYPG22 PXHPYPG22 ;
 label values PXCXSEX23 PXCXSEX23 ;
 label values PXCXBORN_Y23 PXCXBORN_Y23 ;
 label values MULTBIRT33 MULTBIRT33 ;
 label values PXCXMARB23 PXCXMARB23 ;
 label values PXCXRES23 PXCXRES23 ;
 label values PXCXKNOW23 PXCXKNOW23 ;
 label values PXCXLIV221 PXCXLIV221 ;
 label values PXCXLIV222 PXCXLIV222 ;
 label values PXCXLIV223 PXCXLIV223 ;
 label values PXCXAGE23 PXCXAGE23 ;
 label values PXCXSIG23 PXCXSIG23 ;
 label values PXCXCRT23 PXCXCRT23 ;
 label values PXCXGEN23 PXCXGEN23 ;
 label values PXCXEVER23 PXCXEVER23 ;
 label values PXCXFAR23 PXCXFAR23 ;
 label values PXWANT23 PXWANT23 ;
 label values PXSOON23 PXSOON23 ;
 label values PXSOONN23 PXSOONN23 ;
 label values PXSOONMY23 PXSOONMY23 ;
 label values PXLATEN23 PXLATEN23 ;
 label values PXLATEMY23 PXLATEMY23 ;
 label values PXHPYPG23 PXHPYPG23 ;
 label values PXCXSEX24 PXCXSEX24 ;
 label values PXCXBORN_Y24 PXCXBORN_Y24 ;
 label values MULTBIRT34 MULTBIRT34 ;
 label values PXCXMARB24 PXCXMARB24 ;
 label values PXCXRES24 PXCXRES24 ;
 label values PXCXKNOW24 PXCXKNOW24 ;
 label values PXCXLIV231 PXCXLIV231 ;
 label values PXCXLIV232 PXCXLIV232 ;
 label values PXCXLIV233 PXCXLIV233 ;
 label values PXCXAGE24 PXCXAGE24 ;
 label values PXCXSIG24 PXCXSIG24 ;
 label values PXCXCRT24 PXCXCRT24 ;
 label values PXCXGEN24 PXCXGEN24 ;
 label values PXCXEVER24 PXCXEVER24 ;
 label values PXCXFAR24 PXCXFAR24 ;
 label values PXWANT24 PXWANT24 ;
 label values PXSOON24 PXSOON24 ;
 label values PXSOONN24 PXSOONN24 ;
 label values PXSOONMY24 PXSOONMY24 ;
 label values PXLATEN24 PXLATEN24 ;
 label values PXLATEMY24 PXLATEMY24 ;
 label values PXHPYPG24 PXHPYPG24 ;
 label values PXCXSEX25 PXCXSEX25 ;
 label values PXCXBORN_Y25 PXCXBORN_Y25 ;
 label values MULTBIRT35 MULTBIRT35 ;
 label values PXCXMARB25 PXCXMARB25 ;
 label values PXCXRES25 PXCXRES25 ;
 label values PXCXKNOW25 PXCXKNOW25 ;
 label values PXCXLIV241 PXCXLIV241 ;
 label values PXCXLIV242 PXCXLIV242 ;
 label values PXCXLIV243 PXCXLIV243 ;
 label values PXCXAGE25 PXCXAGE25 ;
 label values PXCXSIG25 PXCXSIG25 ;
 label values PXCXCRT25 PXCXCRT25 ;
 label values PXCXGEN25 PXCXGEN25 ;
 label values PXCXEVER25 PXCXEVER25 ;
 label values PXCXFAR25 PXCXFAR25 ;
 label values PXWANT25 PXWANT25 ;
 label values PXSOON25 PXSOON25 ;
 label values PXSOONN25 PXSOONN25 ;
 label values PXSOONMY25 PXSOONMY25 ;
 label values PXLATEN25 PXLATEN25 ;
 label values PXLATEMY25 PXLATEMY25 ;
 label values PXHPYPG25 PXHPYPG25 ;
 label values pxcpreg pxcpreg ;
 label values pxtrying pxtrying ;
 label values pxtrylong pxtrylong ;
 label values pxrwant pxrwant ;
 label values pxrsoon pxrsoon ;
 label values pxrsoonn pxrsoonn ;
 label values pxrsoonmy pxrsoonmy ;
 label values pxrlaten pxrlaten ;
 label values pxrlatemy pxrlatemy ;
 label values pxcpfeel pxcpfeel ;
 label values PXCPREG2 PXCPREG2 ;
 label values PXTRYING2 PXTRYING2 ;
 label values PXTRYLONG2 PXTRYLONG2 ;
 label values PXRWANT2 PXRWANT2 ;
 label values PXRSOON2 PXRSOON2 ;
 label values PXRSOONN2 PXRSOONN2 ;
 label values PXRSOONMY2 PXRSOONMY2 ;
 label values PXRLATEN2 PXRLATEN2 ;
 label values PXRLATEMY2 PXRLATEMY2 ;
 label values PXCPFEEL2 PXCPFEEL2 ;
 label values PXCPREG3 PXCPREG3 ;
 label values PXTRYING3 PXTRYING3 ;
 label values PXTRYLONG3 PXTRYLONG3 ;
 label values PXRWANT3 PXRWANT3 ;
 label values PXRSOON3 PXRSOON3 ;
 label values PXRSOONN3 PXRSOONN3 ;
 label values PXRSOONMY3 PXRSOONMY3 ;
 label values PXRLATEN3 PXRLATEN3 ;
 label values PXRLATEMY3 PXRLATEMY3 ;
 label values PXCPFEEL3 PXCPFEEL3 ;
 label values currpreg currpreg ;
 label values D_OKAKIDS D_OKAKIDS ;
 label values pxotkid pxotkid ;
 label values pxoknum pxoknum ;
 label values pxokwth pxokwth ;
 label values pxokwthn pxokwthn ;
 label values pxoksex pxoksex ;
 label values pxokad pxokad ;
 label values PXOKLIV1 PXOKLIV1 ;
 label values PXOKLIV2 PXOKLIV2 ;
 label values pxokfar pxokfar ;
 label values pxokage pxokage ;
 label values PXOKSEX2 PXOKSEX2 ;
 label values PXOKAD2 PXOKAD2 ;
 label values PXOKLIV9 PXOKLIV9 ;
 label values PXOKLIV10 PXOKLIV10 ;
 label values PXOKFAR2 PXOKFAR2 ;
 label values PXOKAGE2 PXOKAGE2 ;
 label values PXOKSEX3 PXOKSEX3 ;
 label values PXOKAD3 PXOKAD3 ;
 label values PXOKLIV17 PXOKLIV17 ;
 label values PXOKLIV18 PXOKLIV18 ;
 label values PXOKFAR3 PXOKFAR3 ;
 label values PXOKAGE3 PXOKAGE3 ;
 label values PXOKSEX4 PXOKSEX4 ;
 label values PXOKAD4 PXOKAD4 ;
 label values PXOKLIV25 PXOKLIV25 ;
 label values PXOKLIV26 PXOKLIV26 ;
 label values PXOKFAR4 PXOKFAR4 ;
 label values PXOKAGE4 PXOKAGE4 ;
 label values PXOKSEX5 PXOKSEX5 ;
 label values PXOKAD5 PXOKAD5 ;
 label values PXOKLIV33 PXOKLIV33 ;
 label values PXOKLIV34 PXOKLIV34 ;
 label values PXOKFAR5 PXOKFAR5 ;
 label values PXOKAGE5 PXOKAGE5 ;
 label values D_OKAKIDS2 D_OKAKIDS2 ;
 label values PXOTKID2 PXOTKID2 ;
 label values PXOKNUM2 PXOKNUM2 ;
 label values PXOKWTH2 PXOKWTH2 ;
 label values PXOKWTHN2 PXOKWTHN2 ;
 label values PXOKSEX11 PXOKSEX11 ;
 label values PXOKAD11 PXOKAD11 ;
 label values PXOKLIV81 PXOKLIV81 ;
 label values PXOKFAR11 PXOKFAR11 ;
 label values PXOKAGE11 PXOKAGE11 ;
 label values PXOKSEX12 PXOKSEX12 ;
 label values PXOKAD12 PXOKAD12 ;
 label values PXOKLIV89 PXOKLIV89 ;
 label values PXOKFAR12 PXOKFAR12 ;
 label values PXOKAGE12 PXOKAGE12 ;
 label values PXOKSEX13 PXOKSEX13 ;
 label values PXOKAD13 PXOKAD13 ;
 label values PXOKLIV97 PXOKLIV97 ;
 label values PXOKFAR13 PXOKFAR13 ;
 label values PXOKAGE13 PXOKAGE13 ;
 label values D_OKAKIDS3 D_OKAKIDS3 ;
 label values PXOTKID3 PXOTKID3 ;
 label values PXOKNUM3 PXOKNUM3 ;
 label values PXOKWTH3 PXOKWTH3 ;
 label values PXOKWTHN3 PXOKWTHN3 ;
 label values PXOKSEX21 PXOKSEX21 ;
 label values PXOKAD21 PXOKAD21 ;
 label values PXOKLIV161 PXOKLIV161 ;
 label values PXOKFAR21 PXOKFAR21 ;
 label values PXOKAGE21 PXOKAGE21 ;
 label values PXOKSEX22 PXOKSEX22 ;
 label values PXOKAD22 PXOKAD22 ;
 label values PXOKLIV169 PXOKLIV169 ;
 label values PXOKFAR22 PXOKFAR22 ;
 label values PXOKAGE22 PXOKAGE22 ;
 label values D_NBAKIDS D_NBAKIDS ;
 label values pxnbevr pxnbevr ;
 label values pxnbnum pxnbnum ;
 label values pxnbrel pxnbrel ;
 label values pxnbfos pxnbfos ;
 label values pxnbsex pxnbsex ;
 label values pxnbad pxnbad ;
 label values PXNBLIV1 PXNBLIV1 ;
 label values PXNBLIV2 PXNBLIV2 ;
 label values pxnbfar pxnbfar ;
 label values pxnbage pxnbage ;
 label values PXNBREL2 PXNBREL2 ;
 label values PXNBFOS2 PXNBFOS2 ;
 label values PXNBSEX2 PXNBSEX2 ;
 label values PXNBAD2 PXNBAD2 ;
 label values PXNBLIV9 PXNBLIV9 ;
 label values PXNBLIV10 PXNBLIV10 ;
 label values PXNBFAR2 PXNBFAR2 ;
 label values PXNBAGE2 PXNBAGE2 ;
 label values PXNBREL3 PXNBREL3 ;
 label values PXNBFOS3 PXNBFOS3 ;
 label values PXNBSEX3 PXNBSEX3 ;
 label values PXNBAD3 PXNBAD3 ;
 label values PXNBLIV17 PXNBLIV17 ;
 label values PXNBLIV18 PXNBLIV18 ;
 label values PXNBFAR3 PXNBFAR3 ;
 label values PXNBAGE3 PXNBAGE3 ;
 label values D_NBAKIDS2 D_NBAKIDS2 ;
 label values PXNBEVR2 PXNBEVR2 ;
 label values PXNBNUM2 PXNBNUM2 ;
 label values PXNBREL11 PXNBREL11 ;
 label values PXNBFOS11 PXNBFOS11 ;
 label values PXNBSEX11 PXNBSEX11 ;
 label values PXNBAD11 PXNBAD11 ;
 label values PXNBLIV81 PXNBLIV81 ;
 label values PXNBLIV82 PXNBLIV82 ;
 label values PXNBFAR11 PXNBFAR11 ;
 label values PXNBAGE11 PXNBAGE11 ;
 label values PXNBREL12 PXNBREL12 ;
 label values PXNBFOS12 PXNBFOS12 ;
 label values PXNBSEX12 PXNBSEX12 ;
 label values PXNBAD12 PXNBAD12 ;
 label values PXNBLIV89 PXNBLIV89 ;
 label values PXNBLIV90 PXNBLIV90 ;
 label values PXNBFAR12 PXNBFAR12 ;
 label values PXNBAGE12 PXNBAGE12 ;
 label values D_NBAKIDS3 D_NBAKIDS3 ;
 label values PXNBEVR3 PXNBEVR3 ;
 label values PXNBNUM3 PXNBNUM3 ;
 label values PXNBREL21 PXNBREL21 ;
 label values PXNBFOS21 PXNBFOS21 ;
 label values PXNBSEX21 PXNBSEX21 ;
 label values PXNBAD21 PXNBAD21 ;
 label values PXNBLIV161 PXNBLIV161 ;
 label values PXNBLIV162 PXNBLIV162 ;
 label values PXNBFAR21 PXNBFAR21 ;
 label values PXNBAGE21 PXNBAGE21 ;
 label values PXNBREL22 PXNBREL22 ;
 label values PXNBFOS22 PXNBFOS22 ;
 label values PXNBSEX22 PXNBSEX22 ;
 label values PXNBAD22 PXNBAD22 ;
 label values PXNBLIV169 PXNBLIV169 ;
 label values PXNBLIV170 PXNBLIV170 ;
 label values PXNBFAR22 PXNBFAR22 ;
 label values PXNBAGE22 PXNBAGE22 ;
 label values PXNBREL23 PXNBREL23 ;
 label values PXNBFOS23 PXNBFOS23 ;
 label values PXNBSEX23 PXNBSEX23 ;
 label values PXNBAD23 PXNBAD23 ;
 label values PXNBLIV177 PXNBLIV177 ;
 label values PXNBLIV178 PXNBLIV178 ;
 label values PXNBFAR23 PXNBFAR23 ;
 label values PXNBAGE23 PXNBAGE23 ;
 label values fprltn fprltn ;
 label values fpuse fpuse ;
 label values FPMETH01 FPMETH01 ;
 label values FPMETH02 FPMETH02 ;
 label values FPMETH03 FPMETH03 ;
 label values FPMETH04 FPMETH04 ;
 label values FPMETH05 FPMETH05 ;
 label values fpprobe fpprobe ;
 label values nformwife nformwife ;
 label values nformcohab nformcohab ;
 label values fwverify fwverify ;
 label values fwver fwver ;
 label values FWVERIFY2 FWVERIFY2 ;
 label values FWVER2 FWVER2 ;
 label values FWVERIFY3 FWVERIFY3 ;
 label values FWVER3 FWVER3 ;
 label values FWVERIFY4 FWVERIFY4 ;
 label values FWVER4 FWVER4 ;
 label values fcver fcver ;
 label values fcverify fcverify ;
 label values exrelation exrelation ;
 label values FWMAREND_Y FWMAREND_Y ;
 label values agemarrn agemarrn ;
 label values LIVTOGN4 LIVTOGN4 ;
 label values AGELIV4 AGELIV4 ;
 label values cmunionw cmunionw ;
 label values ENGAGTHN4 ENGAGTHN4 ;
 label values MARREND4 MARREND4 ;
 label values EXRELATION2 EXRELATION2 ;
 label values FWMAREND_Y2 FWMAREND_Y2 ;
 label values AGEMARRN2 AGEMARRN2 ;
 label values LIVTOGN5 LIVTOGN5 ;
 label values AGELIV5 AGELIV5 ;
 label values ENGAGTHN5 ENGAGTHN5 ;
 label values MARREND5 MARREND5 ;
 label values EXRELATION3 EXRELATION3 ;
 label values FWMAREND_Y3 FWMAREND_Y3 ;
 label values AGEMARRN3 AGEMARRN3 ;
 label values LIVTOGN6 LIVTOGN6 ;
 label values AGELIV6 AGELIV6 ;
 label values ENGAGTHN6 ENGAGTHN6 ;
 label values MARREND6 MARREND6 ;
 label values EXRELATION4 EXRELATION4 ;
 label values FWMAREND_Y4 FWMAREND_Y4 ;
 label values AGEMARRN4 AGEMARRN4 ;
 label values LIVTOGN7 LIVTOGN7 ;
 label values AGELIV7 AGELIV7 ;
 label values ENGAGTHN7 ENGAGTHN7 ;
 label values MARREND7 MARREND7 ;
 label values EXRELATION11 EXRELATION11 ;
 label values CMCOHFC11 CMCOHFC11 ;
 label values AGELIV14 AGELIV14 ;
 label values ENGAGTHN14 ENGAGTHN14 ;
 label values STOPLIVE_Y14 STOPLIVE_Y14 ;
 label values fwpage fwpage ;
 label values WIF1RACE WIF1RACE ;
 label values WIF1NRACE WIF1NRACE ;
 label values fwpmarbf fwpmarbf ;
 label values FWPAGE2 FWPAGE2 ;
 label values FWPMARBF2 FWPMARBF2 ;
 label values FWPAGE3 FWPAGE3 ;
 label values FWPMARBF3 FWPMARBF3 ;
 label values FWPAGE4 FWPAGE4 ;
 label values FWPMARBF4 FWPMARBF4 ;
 label values FWPAGE11 FWPAGE11 ;
 label values COH1RACE COH1RACE ;
 label values COH1NRACE COH1NRACE ;
 label values FWPMARBF11 FWPMARBF11 ;
 label values fwpbiokd fwpbiokd ;
 label values fwpnumkd fwpnumkd ;
 label values fwpchsex fwpchsex ;
 label values FWPCHDOB_Y FWPCHDOB_Y ;
 label values fwchmarb fwchmarb ;
 label values fwpchres fwpchres ;
 label values fwpchlrn fwpchlrn ;
 label values FWPCHLIV01 FWPCHLIV01 ;
 label values FWPCHLIV02 FWPCHLIV02 ;
 label values FWPCHLIV03 FWPCHLIV03 ;
 label values fwpchage fwpchage ;
 label values fwpchsig fwpchsig ;
 label values fwpchcrt fwpchcrt ;
 label values fwpchgen fwpchgen ;
 label values fwpchevr fwpchevr ;
 label values fwpchfar fwpchfar ;
 label values fwprwant fwprwant ;
 label values fwpsoon fwpsoon ;
 label values fwpsoonn fwpsoonn ;
 label values fwpsoonmy fwpsoonmy ;
 label values fwplaten fwplaten ;
 label values fwplatemy fwplatemy ;
 label values fwphpypg fwphpypg ;
 label values FWPCHSEX2 FWPCHSEX2 ;
 label values FWPCHDOB_Y2 FWPCHDOB_Y2 ;
 label values MULTBIRT42 MULTBIRT42 ;
 label values FWCHMARB2 FWCHMARB2 ;
 label values FWPCHRES2 FWPCHRES2 ;
 label values FWPCHLRN2 FWPCHLRN2 ;
 label values FWPCHLIV11 FWPCHLIV11 ;
 label values FWPCHLIV12 FWPCHLIV12 ;
 label values FWPCHLIV13 FWPCHLIV13 ;
 label values FWPCHAGE2 FWPCHAGE2 ;
 label values FWPCHSIG2 FWPCHSIG2 ;
 label values FWPCHCRT2 FWPCHCRT2 ;
 label values FWPCHGEN2 FWPCHGEN2 ;
 label values FWPCHEVR2 FWPCHEVR2 ;
 label values FWPCHFAR2 FWPCHFAR2 ;
 label values FWPRWANT2 FWPRWANT2 ;
 label values FWPSOON2 FWPSOON2 ;
 label values FWPSOONN2 FWPSOONN2 ;
 label values FWPSOONMY2 FWPSOONMY2 ;
 label values FWPLATEN2 FWPLATEN2 ;
 label values FWPLATEMY2 FWPLATEMY2 ;
 label values FWPHPYPG2 FWPHPYPG2 ;
 label values FWPCHSEX3 FWPCHSEX3 ;
 label values FWPCHDOB_Y3 FWPCHDOB_Y3 ;
 label values MULTBIRT43 MULTBIRT43 ;
 label values FWCHMARB3 FWCHMARB3 ;
 label values FWPCHRES3 FWPCHRES3 ;
 label values FWPCHLRN3 FWPCHLRN3 ;
 label values FWPCHLIV21 FWPCHLIV21 ;
 label values FWPCHLIV22 FWPCHLIV22 ;
 label values FWPCHLIV23 FWPCHLIV23 ;
 label values FWPCHAGE3 FWPCHAGE3 ;
 label values FWPCHSIG3 FWPCHSIG3 ;
 label values FWPCHCRT3 FWPCHCRT3 ;
 label values FWPCHGEN3 FWPCHGEN3 ;
 label values FWPCHEVR3 FWPCHEVR3 ;
 label values FWPCHFAR3 FWPCHFAR3 ;
 label values FWPRWANT3 FWPRWANT3 ;
 label values FWPSOON3 FWPSOON3 ;
 label values FWPSOONN3 FWPSOONN3 ;
 label values FWPSOONMY3 FWPSOONMY3 ;
 label values FWPLATEN3 FWPLATEN3 ;
 label values FWPLATEMY3 FWPLATEMY3 ;
 label values FWPHPYPG3 FWPHPYPG3 ;
 label values FWPCHSEX4 FWPCHSEX4 ;
 label values FWPCHDOB_Y4 FWPCHDOB_Y4 ;
 label values MULTBIRT44 MULTBIRT44 ;
 label values FWCHMARB4 FWCHMARB4 ;
 label values FWPCHRES4 FWPCHRES4 ;
 label values FWPCHLRN4 FWPCHLRN4 ;
 label values FWPCHLIV31 FWPCHLIV31 ;
 label values FWPCHLIV32 FWPCHLIV32 ;
 label values FWPCHLIV33 FWPCHLIV33 ;
 label values FWPCHAGE4 FWPCHAGE4 ;
 label values FWPCHSIG4 FWPCHSIG4 ;
 label values FWPCHCRT4 FWPCHCRT4 ;
 label values FWPCHGEN4 FWPCHGEN4 ;
 label values FWPCHEVR4 FWPCHEVR4 ;
 label values FWPCHFAR4 FWPCHFAR4 ;
 label values FWPRWANT4 FWPRWANT4 ;
 label values FWPSOON4 FWPSOON4 ;
 label values FWPSOONN4 FWPSOONN4 ;
 label values FWPSOONMY4 FWPSOONMY4 ;
 label values FWPLATEN4 FWPLATEN4 ;
 label values FWPLATEMY4 FWPLATEMY4 ;
 label values FWPHPYPG4 FWPHPYPG4 ;
 label values FWPBIOKD2 FWPBIOKD2 ;
 label values FWPNUMKD2 FWPNUMKD2 ;
 label values FWPCHSEX11 FWPCHSEX11 ;
 label values FWPCHDOB_Y11 FWPCHDOB_Y11 ;
 label values FWCHMARB11 FWCHMARB11 ;
 label values FWPCHRES11 FWPCHRES11 ;
 label values FWPCHLRN11 FWPCHLRN11 ;
 label values FWPCHLIV101 FWPCHLIV101 ;
 label values FWPCHLIV102 FWPCHLIV102 ;
 label values FWPCHLIV103 FWPCHLIV103 ;
 label values FWPCHAGE11 FWPCHAGE11 ;
 label values FWPCHSIG11 FWPCHSIG11 ;
 label values FWPCHCRT11 FWPCHCRT11 ;
 label values FWPCHGEN11 FWPCHGEN11 ;
 label values FWPCHEVR11 FWPCHEVR11 ;
 label values FWPCHFAR11 FWPCHFAR11 ;
 label values FWPRWANT11 FWPRWANT11 ;
 label values FWPSOON11 FWPSOON11 ;
 label values FWPSOONN11 FWPSOONN11 ;
 label values FWPSOONMY11 FWPSOONMY11 ;
 label values FWPLATEN11 FWPLATEN11 ;
 label values FWPLATEMY11 FWPLATEMY11 ;
 label values FWPHPYPG11 FWPHPYPG11 ;
 label values FWPCHSEX12 FWPCHSEX12 ;
 label values FWPCHDOB_Y12 FWPCHDOB_Y12 ;
 label values MULTBIRT52 MULTBIRT52 ;
 label values FWCHMARB12 FWCHMARB12 ;
 label values FWPCHRES12 FWPCHRES12 ;
 label values FWPCHLRN12 FWPCHLRN12 ;
 label values FWPCHLIV111 FWPCHLIV111 ;
 label values FWPCHLIV112 FWPCHLIV112 ;
 label values FWPCHLIV113 FWPCHLIV113 ;
 label values FWPCHAGE12 FWPCHAGE12 ;
 label values FWPCHSIG12 FWPCHSIG12 ;
 label values FWPCHCRT12 FWPCHCRT12 ;
 label values FWPCHGEN12 FWPCHGEN12 ;
 label values FWPCHEVR12 FWPCHEVR12 ;
 label values FWPCHFAR12 FWPCHFAR12 ;
 label values FWPRWANT12 FWPRWANT12 ;
 label values FWPSOON12 FWPSOON12 ;
 label values FWPSOONN12 FWPSOONN12 ;
 label values FWPSOONMY12 FWPSOONMY12 ;
 label values FWPLATEN12 FWPLATEN12 ;
 label values FWPLATEMY12 FWPLATEMY12 ;
 label values FWPHPYPG12 FWPHPYPG12 ;
 label values FWPCHSEX13 FWPCHSEX13 ;
 label values FWPCHDOB_Y13 FWPCHDOB_Y13 ;
 label values MULTBIRT53 MULTBIRT53 ;
 label values FWCHMARB13 FWCHMARB13 ;
 label values FWPCHRES13 FWPCHRES13 ;
 label values FWPCHLRN13 FWPCHLRN13 ;
 label values FWPCHLIV121 FWPCHLIV121 ;
 label values FWPCHLIV122 FWPCHLIV122 ;
 label values FWPCHLIV123 FWPCHLIV123 ;
 label values FWPCHAGE13 FWPCHAGE13 ;
 label values FWPCHSIG13 FWPCHSIG13 ;
 label values FWPCHCRT13 FWPCHCRT13 ;
 label values FWPCHGEN13 FWPCHGEN13 ;
 label values FWPCHEVR13 FWPCHEVR13 ;
 label values FWPCHFAR13 FWPCHFAR13 ;
 label values FWPRWANT13 FWPRWANT13 ;
 label values FWPSOON13 FWPSOON13 ;
 label values FWPSOONN13 FWPSOONN13 ;
 label values FWPSOONMY13 FWPSOONMY13 ;
 label values FWPLATEN13 FWPLATEN13 ;
 label values FWPLATEMY13 FWPLATEMY13 ;
 label values FWPHPYPG13 FWPHPYPG13 ;
 label values FWPCHSEX14 FWPCHSEX14 ;
 label values FWPCHDOB_Y14 FWPCHDOB_Y14 ;
 label values MULTBIRT54 MULTBIRT54 ;
 label values FWCHMARB14 FWCHMARB14 ;
 label values FWPCHRES14 FWPCHRES14 ;
 label values FWPCHLRN14 FWPCHLRN14 ;
 label values FWPCHLIV131 FWPCHLIV131 ;
 label values FWPCHLIV132 FWPCHLIV132 ;
 label values FWPCHLIV133 FWPCHLIV133 ;
 label values FWPCHAGE14 FWPCHAGE14 ;
 label values FWPCHSIG14 FWPCHSIG14 ;
 label values FWPCHCRT14 FWPCHCRT14 ;
 label values FWPCHGEN14 FWPCHGEN14 ;
 label values FWPCHEVR14 FWPCHEVR14 ;
 label values FWPCHFAR14 FWPCHFAR14 ;
 label values FWPRWANT14 FWPRWANT14 ;
 label values FWPSOON14 FWPSOON14 ;
 label values FWPSOONN14 FWPSOONN14 ;
 label values FWPSOONMY14 FWPSOONMY14 ;
 label values FWPLATEN14 FWPLATEN14 ;
 label values FWPLATEMY14 FWPLATEMY14 ;
 label values FWPHPYPG14 FWPHPYPG14 ;
 label values FWPCHSEX15 FWPCHSEX15 ;
 label values FWPCHDOB_Y15 FWPCHDOB_Y15 ;
 label values MULTBIRT55 MULTBIRT55 ;
 label values FWCHMARB15 FWCHMARB15 ;
 label values FWPCHRES15 FWPCHRES15 ;
 label values FWPCHLRN15 FWPCHLRN15 ;
 label values FWPCHLIV141 FWPCHLIV141 ;
 label values FWPCHLIV142 FWPCHLIV142 ;
 label values FWPCHLIV143 FWPCHLIV143 ;
 label values FWPCHAGE15 FWPCHAGE15 ;
 label values FWPCHSIG15 FWPCHSIG15 ;
 label values FWPCHCRT15 FWPCHCRT15 ;
 label values FWPCHGEN15 FWPCHGEN15 ;
 label values FWPCHEVR15 FWPCHEVR15 ;
 label values FWPCHFAR15 FWPCHFAR15 ;
 label values FWPRWANT15 FWPRWANT15 ;
 label values FWPSOON15 FWPSOON15 ;
 label values FWPSOONN15 FWPSOONN15 ;
 label values FWPSOONMY15 FWPSOONMY15 ;
 label values FWPLATEN15 FWPLATEN15 ;
 label values FWPLATEMY15 FWPLATEMY15 ;
 label values FWPHPYPG15 FWPHPYPG15 ;
 label values FWPBIOKD3 FWPBIOKD3 ;
 label values FWPNUMKD3 FWPNUMKD3 ;
 label values FWPCHSEX21 FWPCHSEX21 ;
 label values FWPCHDOB_Y21 FWPCHDOB_Y21 ;
 label values FWCHMARB21 FWCHMARB21 ;
 label values FWPCHRES21 FWPCHRES21 ;
 label values FWPCHLRN21 FWPCHLRN21 ;
 label values FWPCHLIV201 FWPCHLIV201 ;
 label values FWPCHLIV202 FWPCHLIV202 ;
 label values FWPCHLIV203 FWPCHLIV203 ;
 label values FWPCHAGE21 FWPCHAGE21 ;
 label values FWPCHSIG21 FWPCHSIG21 ;
 label values FWPCHCRT21 FWPCHCRT21 ;
 label values FWPCHGEN21 FWPCHGEN21 ;
 label values FWPCHEVR21 FWPCHEVR21 ;
 label values FWPCHFAR21 FWPCHFAR21 ;
 label values FWPRWANT21 FWPRWANT21 ;
 label values FWPSOON21 FWPSOON21 ;
 label values FWPSOONN21 FWPSOONN21 ;
 label values FWPSOONMY21 FWPSOONMY21 ;
 label values FWPLATEN21 FWPLATEN21 ;
 label values FWPLATEMY21 FWPLATEMY21 ;
 label values FWPHPYPG21 FWPHPYPG21 ;
 label values FWPCHSEX22 FWPCHSEX22 ;
 label values FWPCHDOB_Y22 FWPCHDOB_Y22 ;
 label values MULTBIRT62 MULTBIRT62 ;
 label values FWCHMARB22 FWCHMARB22 ;
 label values FWPCHRES22 FWPCHRES22 ;
 label values FWPCHLRN22 FWPCHLRN22 ;
 label values FWPCHLIV211 FWPCHLIV211 ;
 label values FWPCHLIV212 FWPCHLIV212 ;
 label values FWPCHLIV213 FWPCHLIV213 ;
 label values FWPCHAGE22 FWPCHAGE22 ;
 label values FWPCHSIG22 FWPCHSIG22 ;
 label values FWPCHCRT22 FWPCHCRT22 ;
 label values FWPCHGEN22 FWPCHGEN22 ;
 label values FWPCHEVR22 FWPCHEVR22 ;
 label values FWPCHFAR22 FWPCHFAR22 ;
 label values FWPRWANT22 FWPRWANT22 ;
 label values FWPSOON22 FWPSOON22 ;
 label values FWPSOONN22 FWPSOONN22 ;
 label values FWPSOONMY22 FWPSOONMY22 ;
 label values FWPLATEN22 FWPLATEN22 ;
 label values FWPLATEMY22 FWPLATEMY22 ;
 label values FWPHPYPG22 FWPHPYPG22 ;
 label values FWPBIOKD4 FWPBIOKD4 ;
 label values FWPNUMKD4 FWPNUMKD4 ;
 label values FWPCHSEX31 FWPCHSEX31 ;
 label values FWPCHDOB_Y31 FWPCHDOB_Y31 ;
 label values FWCHMARB31 FWCHMARB31 ;
 label values FWPCHRES31 FWPCHRES31 ;
 label values FWPCHLRN31 FWPCHLRN31 ;
 label values FWPCHLIV301 FWPCHLIV301 ;
 label values FWPCHLIV302 FWPCHLIV302 ;
 label values FWPCHLIV303 FWPCHLIV303 ;
 label values FWPCHAGE31 FWPCHAGE31 ;
 label values FWPCHSIG31 FWPCHSIG31 ;
 label values FWPCHCRT31 FWPCHCRT31 ;
 label values FWPCHGEN31 FWPCHGEN31 ;
 label values FWPCHEVR31 FWPCHEVR31 ;
 label values FWPCHFAR31 FWPCHFAR31 ;
 label values FWPRWANT31 FWPRWANT31 ;
 label values FWPSOON31 FWPSOON31 ;
 label values FWPSOONN31 FWPSOONN31 ;
 label values FWPSOONMY31 FWPSOONMY31 ;
 label values FWPLATEN31 FWPLATEN31 ;
 label values FWPLATEMY31 FWPLATEMY31 ;
 label values FWPHPYPG31 FWPHPYPG31 ;
 label values FWPCHSEX32 FWPCHSEX32 ;
 label values FWPCHDOB_Y32 FWPCHDOB_Y32 ;
 label values MULTBIRT72 MULTBIRT72 ;
 label values FWCHMARB32 FWCHMARB32 ;
 label values FWPCHRES32 FWPCHRES32 ;
 label values FWPCHLRN32 FWPCHLRN32 ;
 label values FWPCHLIV311 FWPCHLIV311 ;
 label values FWPCHLIV312 FWPCHLIV312 ;
 label values FWPCHLIV313 FWPCHLIV313 ;
 label values FWPCHAGE32 FWPCHAGE32 ;
 label values FWPCHSIG32 FWPCHSIG32 ;
 label values FWPCHCRT32 FWPCHCRT32 ;
 label values FWPCHGEN32 FWPCHGEN32 ;
 label values FWPCHEVR32 FWPCHEVR32 ;
 label values FWPCHFAR32 FWPCHFAR32 ;
 label values FWPRWANT32 FWPRWANT32 ;
 label values FWPSOON32 FWPSOON32 ;
 label values FWPSOONN32 FWPSOONN32 ;
 label values FWPSOONMY32 FWPSOONMY32 ;
 label values FWPLATEN32 FWPLATEN32 ;
 label values FWPLATEMY32 FWPLATEMY32 ;
 label values FWPHPYPG32 FWPHPYPG32 ;
 label values FWPBIOKD11 FWPBIOKD11 ;
 label values FWPNUMKD11 FWPNUMKD11 ;
 label values FWPCHSEX101 FWPCHSEX101 ;
 label values FWPCHDOB_Y101 FWPCHDOB_Y101 ;
 label values FWPCHRES101 FWPCHRES101 ;
 label values FWPCHLRN101 FWPCHLRN101 ;
 label values FWPCHLIV1001 FWPCHLIV1001 ;
 label values FWPCHLIV1002 FWPCHLIV1002 ;
 label values FWPCHLIV1003 FWPCHLIV1003 ;
 label values FWPCHAGE101 FWPCHAGE101 ;
 label values FWPCHSIG101 FWPCHSIG101 ;
 label values FWPCHCRT101 FWPCHCRT101 ;
 label values FWPCHGEN101 FWPCHGEN101 ;
 label values FWPCHEVR101 FWPCHEVR101 ;
 label values FWPCHFAR101 FWPCHFAR101 ;
 label values FWPRWANT101 FWPRWANT101 ;
 label values FWPSOON101 FWPSOON101 ;
 label values FWPSOONN101 FWPSOONN101 ;
 label values FWPSOONMY101 FWPSOONMY101 ;
 label values FWPLATEN101 FWPLATEN101 ;
 label values FWPLATEMY101 FWPLATEMY101 ;
 label values FWPHPYPG101 FWPHPYPG101 ;
 label values FWPCHSEX102 FWPCHSEX102 ;
 label values FWPCHDOB_Y102 FWPCHDOB_Y102 ;
 label values MULTBIRT142 MULTBIRT142 ;
 label values FWPCHRES102 FWPCHRES102 ;
 label values FWPCHLRN102 FWPCHLRN102 ;
 label values FWPCHLIV1011 FWPCHLIV1011 ;
 label values FWPCHLIV1012 FWPCHLIV1012 ;
 label values FWPCHLIV1013 FWPCHLIV1013 ;
 label values FWPCHAGE102 FWPCHAGE102 ;
 label values FWPCHSIG102 FWPCHSIG102 ;
 label values FWPCHCRT102 FWPCHCRT102 ;
 label values FWPCHGEN102 FWPCHGEN102 ;
 label values FWPCHEVR102 FWPCHEVR102 ;
 label values FWPCHFAR102 FWPCHFAR102 ;
 label values FWPRWANT102 FWPRWANT102 ;
 label values FWPSOON102 FWPSOON102 ;
 label values FWPSOONN102 FWPSOONN102 ;
 label values FWPSOONMY102 FWPSOONMY102 ;
 label values FWPLATEN102 FWPLATEN102 ;
 label values FWPLATEMY102 FWPLATEMY102 ;
 label values FWPHPYPG102 FWPHPYPG102 ;
 label values FWPCHSEX103 FWPCHSEX103 ;
 label values FWPCHDOB_Y103 FWPCHDOB_Y103 ;
 label values MULTBIRT143 MULTBIRT143 ;
 label values FWPCHRES103 FWPCHRES103 ;
 label values FWPCHLRN103 FWPCHLRN103 ;
 label values FWPCHLIV1021 FWPCHLIV1021 ;
 label values FWPCHLIV1022 FWPCHLIV1022 ;
 label values FWPCHLIV1023 FWPCHLIV1023 ;
 label values FWPCHAGE103 FWPCHAGE103 ;
 label values FWPCHSIG103 FWPCHSIG103 ;
 label values FWPCHCRT103 FWPCHCRT103 ;
 label values FWPCHGEN103 FWPCHGEN103 ;
 label values FWPCHEVR103 FWPCHEVR103 ;
 label values FWPCHFAR103 FWPCHFAR103 ;
 label values FWPRWANT103 FWPRWANT103 ;
 label values FWPSOON103 FWPSOON103 ;
 label values FWPSOONN103 FWPSOONN103 ;
 label values FWPSOONMY103 FWPSOONMY103 ;
 label values FWPLATEN103 FWPLATEN103 ;
 label values FWPLATEMY103 FWPLATEMY103 ;
 label values FWPHPYPG103 FWPHPYPG103 ;
 label values FWPCHSEX104 FWPCHSEX104 ;
 label values FWPCHDOB_Y104 FWPCHDOB_Y104 ;
 label values MULTBIRT144 MULTBIRT144 ;
 label values FWPCHRES104 FWPCHRES104 ;
 label values FWPCHLRN104 FWPCHLRN104 ;
 label values FWPCHLIV1031 FWPCHLIV1031 ;
 label values FWPCHLIV1032 FWPCHLIV1032 ;
 label values FWPCHLIV1033 FWPCHLIV1033 ;
 label values FWPCHAGE104 FWPCHAGE104 ;
 label values FWPCHSIG104 FWPCHSIG104 ;
 label values FWPCHCRT104 FWPCHCRT104 ;
 label values FWPCHGEN104 FWPCHGEN104 ;
 label values FWPCHEVR104 FWPCHEVR104 ;
 label values FWPCHFAR104 FWPCHFAR104 ;
 label values FWPRWANT104 FWPRWANT104 ;
 label values FWPSOON104 FWPSOON104 ;
 label values FWPSOONN104 FWPSOONN104 ;
 label values FWPSOONMY104 FWPSOONMY104 ;
 label values FWPLATEN104 FWPLATEN104 ;
 label values FWPLATEMY104 FWPLATEMY104 ;
 label values FWPHPYPG104 FWPHPYPG104 ;
 label values E_OKAKIDS E_OKAKIDS ;
 label values fwpotkid fwpotkid ;
 label values fwpoknum fwpoknum ;
 label values fwpokwth fwpokwth ;
 label values fwpokwthn fwpokwthn ;
 label values fwpoksex fwpoksex ;
 label values fwpokad fwpokad ;
 label values FWPOKLIV1 FWPOKLIV1 ;
 label values fwpokfar fwpokfar ;
 label values fwpokage fwpokage ;
 label values FWPOKSEX2 FWPOKSEX2 ;
 label values FWPOKAD2 FWPOKAD2 ;
 label values FWPOKLIV9 FWPOKLIV9 ;
 label values FWPOKFAR2 FWPOKFAR2 ;
 label values FWPOKAGE2 FWPOKAGE2 ;
 label values FWPOKSEX3 FWPOKSEX3 ;
 label values FWPOKAD3 FWPOKAD3 ;
 label values FWPOKLIV17 FWPOKLIV17 ;
 label values FWPOKFAR3 FWPOKFAR3 ;
 label values FWPOKAGE3 FWPOKAGE3 ;
 label values FWPOKSEX4 FWPOKSEX4 ;
 label values FWPOKAD4 FWPOKAD4 ;
 label values FWPOKLIV25 FWPOKLIV25 ;
 label values FWPOKFAR4 FWPOKFAR4 ;
 label values FWPOKAGE4 FWPOKAGE4 ;
 label values FWPOKSEX5 FWPOKSEX5 ;
 label values FWPOKAD5 FWPOKAD5 ;
 label values FWPOKLIV33 FWPOKLIV33 ;
 label values FWPOKFAR5 FWPOKFAR5 ;
 label values FWPOKAGE5 FWPOKAGE5 ;
 label values E_OKAKIDS2 E_OKAKIDS2 ;
 label values FWPOTKID2 FWPOTKID2 ;
 label values FWPOKNUM2 FWPOKNUM2 ;
 label values FWPOKWTH2 FWPOKWTH2 ;
 label values FWPOKWTHN2 FWPOKWTHN2 ;
 label values FWPOKSEX11 FWPOKSEX11 ;
 label values FWPOKAD11 FWPOKAD11 ;
 label values FWPOKLIV81 FWPOKLIV81 ;
 label values FWPOKFAR11 FWPOKFAR11 ;
 label values FWPOKAGE11 FWPOKAGE11 ;
 label values FWPOKSEX12 FWPOKSEX12 ;
 label values FWPOKAD12 FWPOKAD12 ;
 label values FWPOKLIV89 FWPOKLIV89 ;
 label values FWPOKFAR12 FWPOKFAR12 ;
 label values FWPOKAGE12 FWPOKAGE12 ;
 label values FWPOKSEX13 FWPOKSEX13 ;
 label values FWPOKAD13 FWPOKAD13 ;
 label values FWPOKLIV97 FWPOKLIV97 ;
 label values FWPOKFAR13 FWPOKFAR13 ;
 label values FWPOKAGE13 FWPOKAGE13 ;
 label values FWPOKSEX14 FWPOKSEX14 ;
 label values FWPOKAD14 FWPOKAD14 ;
 label values FWPOKLIV105 FWPOKLIV105 ;
 label values FWPOKFAR14 FWPOKFAR14 ;
 label values FWPOKAGE14 FWPOKAGE14 ;
 label values E_OKAKIDS3 E_OKAKIDS3 ;
 label values FWPOTKID3 FWPOTKID3 ;
 label values FWPOKNUM3 FWPOKNUM3 ;
 label values FWPOKWTH3 FWPOKWTH3 ;
 label values FWPOKWTHN3 FWPOKWTHN3 ;
 label values FWPOKSEX21 FWPOKSEX21 ;
 label values FWPOKAD21 FWPOKAD21 ;
 label values FWPOKLIV161 FWPOKLIV161 ;
 label values FWPOKFAR21 FWPOKFAR21 ;
 label values FWPOKAGE21 FWPOKAGE21 ;
 label values FWPOKSEX22 FWPOKSEX22 ;
 label values FWPOKAD22 FWPOKAD22 ;
 label values FWPOKLIV169 FWPOKLIV169 ;
 label values FWPOKFAR22 FWPOKFAR22 ;
 label values FWPOKAGE22 FWPOKAGE22 ;
 label values FWPOKSEX23 FWPOKSEX23 ;
 label values FWPOKAD23 FWPOKAD23 ;
 label values FWPOKLIV177 FWPOKLIV177 ;
 label values FWPOKFAR23 FWPOKFAR23 ;
 label values FWPOKAGE23 FWPOKAGE23 ;
 label values FWPOKSEX24 FWPOKSEX24 ;
 label values FWPOKAD24 FWPOKAD24 ;
 label values FWPOKLIV185 FWPOKLIV185 ;
 label values FWPOKFAR24 FWPOKFAR24 ;
 label values FWPOKAGE24 FWPOKAGE24 ;
 label values FWPOKSEX25 FWPOKSEX25 ;
 label values FWPOKAD25 FWPOKAD25 ;
 label values FWPOKLIV193 FWPOKLIV193 ;
 label values FWPOKFAR25 FWPOKFAR25 ;
 label values FWPOKAGE25 FWPOKAGE25 ;
 label values E_OKAKIDS4 E_OKAKIDS4 ;
 label values FWPOTKID4 FWPOTKID4 ;
 label values FWPOKNUM4 FWPOKNUM4 ;
 label values FWPOKWTH4 FWPOKWTH4 ;
 label values FWPOKWTHN4 FWPOKWTHN4 ;
 label values FWPOKSEX31 FWPOKSEX31 ;
 label values FWPOKAD31 FWPOKAD31 ;
 label values FWPOKLIV241 FWPOKLIV241 ;
 label values FWPOKFAR31 FWPOKFAR31 ;
 label values FWPOKAGE31 FWPOKAGE31 ;
 label values FWPOKSEX32 FWPOKSEX32 ;
 label values FWPOKAD32 FWPOKAD32 ;
 label values FWPOKLIV249 FWPOKLIV249 ;
 label values FWPOKFAR32 FWPOKFAR32 ;
 label values FWPOKAGE32 FWPOKAGE32 ;
 label values FWPOKSEX33 FWPOKSEX33 ;
 label values FWPOKAD33 FWPOKAD33 ;
 label values FWPOKLIV257 FWPOKLIV257 ;
 label values FWPOKFAR33 FWPOKFAR33 ;
 label values FWPOKAGE33 FWPOKAGE33 ;
 label values E_OKAKIDS11 E_OKAKIDS11 ;
 label values FWPOTKID11 FWPOTKID11 ;
 label values FWPOKNUM11 FWPOKNUM11 ;
 label values FWPOKWTH11 FWPOKWTH11 ;
 label values FWPOKWTHN11 FWPOKWTHN11 ;
 label values FWPOKSEX101 FWPOKSEX101 ;
 label values FWPOKAD101 FWPOKAD101 ;
 label values FWPOKLIV801 FWPOKLIV801 ;
 label values FWPOKFAR101 FWPOKFAR101 ;
 label values FWPOKAGE101 FWPOKAGE101 ;
 label values FWPOKSEX102 FWPOKSEX102 ;
 label values FWPOKAD102 FWPOKAD102 ;
 label values FWPOKLIV809 FWPOKLIV809 ;
 label values FWPOKFAR102 FWPOKFAR102 ;
 label values FWPOKAGE102 FWPOKAGE102 ;
 label values FWPOKSEX103 FWPOKSEX103 ;
 label values FWPOKAD103 FWPOKAD103 ;
 label values FWPOKLIV817 FWPOKLIV817 ;
 label values FWPOKFAR103 FWPOKFAR103 ;
 label values FWPOKAGE103 FWPOKAGE103 ;
 label values FWPOKSEX104 FWPOKSEX104 ;
 label values FWPOKAD104 FWPOKAD104 ;
 label values FWPOKLIV825 FWPOKLIV825 ;
 label values FWPOKFAR104 FWPOKFAR104 ;
 label values FWPOKAGE104 FWPOKAGE104 ;
 label values FWPOKSEX105 FWPOKSEX105 ;
 label values FWPOKAD105 FWPOKAD105 ;
 label values FWPOKLIV833 FWPOKLIV833 ;
 label values FWPOKFAR105 FWPOKFAR105 ;
 label values FWPOKAGE105 FWPOKAGE105 ;
 label values E_NBAKIDS E_NBAKIDS ;
 label values fwpnbevr fwpnbevr ;
 label values fwpnbnum fwpnbnum ;
 label values fwpnbrel fwpnbrel ;
 label values fwpnbfos fwpnbfos ;
 label values fwpnbsex fwpnbsex ;
 label values fwpnbad fwpnbad ;
 label values FWPNBLIV1 FWPNBLIV1 ;
 label values FWPNBLIV2 FWPNBLIV2 ;
 label values fwpnbfar fwpnbfar ;
 label values fwpnbage fwpnbage ;
 label values FWPNBREL2 FWPNBREL2 ;
 label values FWPNBFOS2 FWPNBFOS2 ;
 label values FWPNBSEX2 FWPNBSEX2 ;
 label values FWPNBAD2 FWPNBAD2 ;
 label values FWPNBLIV9 FWPNBLIV9 ;
 label values FWPNBLIV10 FWPNBLIV10 ;
 label values FWPNBFAR2 FWPNBFAR2 ;
 label values FWPNBAGE2 FWPNBAGE2 ;
 label values FWPNBREL3 FWPNBREL3 ;
 label values FWPNBFOS3 FWPNBFOS3 ;
 label values FWPNBSEX3 FWPNBSEX3 ;
 label values FWPNBAD3 FWPNBAD3 ;
 label values FWPNBLIV17 FWPNBLIV17 ;
 label values FWPNBLIV18 FWPNBLIV18 ;
 label values FWPNBFAR3 FWPNBFAR3 ;
 label values FWPNBAGE3 FWPNBAGE3 ;
 label values E_NBAKIDS2 E_NBAKIDS2 ;
 label values FWPNBEVR2 FWPNBEVR2 ;
 label values FWPNBNUM2 FWPNBNUM2 ;
 label values FWPNBREL11 FWPNBREL11 ;
 label values FWPNBFOS11 FWPNBFOS11 ;
 label values FWPNBSEX11 FWPNBSEX11 ;
 label values FWPNBAD11 FWPNBAD11 ;
 label values FWPNBLIV81 FWPNBLIV81 ;
 label values FWPNBFAR11 FWPNBFAR11 ;
 label values FWPNBAGE11 FWPNBAGE11 ;
 label values FWPNBREL12 FWPNBREL12 ;
 label values FWPNBFOS12 FWPNBFOS12 ;
 label values FWPNBSEX12 FWPNBSEX12 ;
 label values FWPNBAD12 FWPNBAD12 ;
 label values FWPNBLIV89 FWPNBLIV89 ;
 label values FWPNBFAR12 FWPNBFAR12 ;
 label values FWPNBAGE12 FWPNBAGE12 ;
 label values E_NBAKIDS3 E_NBAKIDS3 ;
 label values FWPNBEVR3 FWPNBEVR3 ;
 label values FWPNBNUM3 FWPNBNUM3 ;
 label values FWPNBREL21 FWPNBREL21 ;
 label values FWPNBFOS21 FWPNBFOS21 ;
 label values FWPNBSEX21 FWPNBSEX21 ;
 label values FWPNBAD21 FWPNBAD21 ;
 label values FWPNBLIV161 FWPNBLIV161 ;
 label values FWPNBFAR21 FWPNBFAR21 ;
 label values FWPNBAGE21 FWPNBAGE21 ;
 label values E_NBAKIDS4 E_NBAKIDS4 ;
 label values FWPNBEVR4 FWPNBEVR4 ;
 label values FWPNBNUM4 FWPNBNUM4 ;
 label values FWPNBREL31 FWPNBREL31 ;
 label values FWPNBFOS31 FWPNBFOS31 ;
 label values FWPNBSEX31 FWPNBSEX31 ;
 label values FWPNBAD31 FWPNBAD31 ;
 label values FWPNBLIV241 FWPNBLIV241 ;
 label values FWPNBFAR31 FWPNBFAR31 ;
 label values FWPNBAGE31 FWPNBAGE31 ;
 label values E_NBAKIDS11 E_NBAKIDS11 ;
 label values FWPNBEVR11 FWPNBEVR11 ;
 label values FWPNBNUM11 FWPNBNUM11 ;
 label values FWPNBREL101 FWPNBREL101 ;
 label values FWPNBFOS101 FWPNBFOS101 ;
 label values FWPNBSEX101 FWPNBSEX101 ;
 label values FWPNBAD101 FWPNBAD101 ;
 label values FWPNBLIV801 FWPNBLIV801 ;
 label values FWPNBFAR101 FWPNBFAR101 ;
 label values FWPNBAGE101 FWPNBAGE101 ;
 label values FWPNBREL102 FWPNBREL102 ;
 label values FWPNBFOS102 FWPNBFOS102 ;
 label values FWPNBSEX102 FWPNBSEX102 ;
 label values FWPNBAD102 FWPNBAD102 ;
 label values FWPNBLIV809 FWPNBLIV809 ;
 label values FWPNBFAR102 FWPNBFAR102 ;
 label values FWPNBAGE102 FWPNBAGE102 ;
 label values FWPNBREL103 FWPNBREL103 ;
 label values FWPNBFOS103 FWPNBFOS103 ;
 label values FWPNBSEX103 FWPNBSEX103 ;
 label values FWPNBAD103 FWPNBAD103 ;
 label values FWPNBLIV817 FWPNBLIV817 ;
 label values FWPNBFAR103 FWPNBFAR103 ;
 label values FWPNBAGE103 FWPNBAGE103 ;
 label values FWPNBREL104 FWPNBREL104 ;
 label values FWPNBFOS104 FWPNBFOS104 ;
 label values FWPNBSEX104 FWPNBSEX104 ;
 label values FWPNBAD104 FWPNBAD104 ;
 label values FWPNBLIV825 FWPNBLIV825 ;
 label values FWPNBFAR104 FWPNBFAR104 ;
 label values FWPNBAGE104 FWPNBAGE104 ;
 label values otbchil otbchil ;
 label values otbprobe otbprobe ;
 label values otbchiln otbchiln ;
 label values otbsame otbsame ;
 label values obcsexx obcsexx ;
 label values OBCDOB_Y OBCDOB_Y ;
 label values obcmagex obcmagex ;
 label values obcmliv obcmliv ;
 label values obcknowx obcknowx ;
 label values OBCLIVEX01 OBCLIVEX01 ;
 label values OBCLIVEX02 OBCLIVEX02 ;
 label values OBCLIVEX03 OBCLIVEX03 ;
 label values obcage obcage ;
 label values obcchsig obcchsig ;
 label values obcchcrt obcchcrt ;
 label values obcchgen obcchgen ;
 label values obcever obcever ;
 label values obcfar obcfar ;
 label values obcrwanx obcrwanx ;
 label values obcsoonx obcsoonx ;
 label values obcsoonn obcsoonn ;
 label values obcsoonmy obcsoonmy ;
 label values obclaten obclaten ;
 label values obclatemy obclatemy ;
 label values obchpyx obchpyx ;
 label values OBCSEXX2 OBCSEXX2 ;
 label values OBCDOB_Y2 OBCDOB_Y2 ;
 label values MULTBIRT152 MULTBIRT152 ;
 label values OBCMAGEX2 OBCMAGEX2 ;
 label values OBCMLIV2 OBCMLIV2 ;
 label values OBCKNOWX2 OBCKNOWX2 ;
 label values OBCLIVEX11 OBCLIVEX11 ;
 label values OBCLIVEX12 OBCLIVEX12 ;
 label values OBCLIVEX13 OBCLIVEX13 ;
 label values OBCAGE2 OBCAGE2 ;
 label values OBCCHSIG2 OBCCHSIG2 ;
 label values OBCCHCRT2 OBCCHCRT2 ;
 label values OBCCHGEN2 OBCCHGEN2 ;
 label values OBCEVER2 OBCEVER2 ;
 label values OBCFAR2 OBCFAR2 ;
 label values OBCRWANX2 OBCRWANX2 ;
 label values OBCSOONX2 OBCSOONX2 ;
 label values OBCSOONN2 OBCSOONN2 ;
 label values OBCSOONMY2 OBCSOONMY2 ;
 label values OBCLATEN2 OBCLATEN2 ;
 label values OBCLATEMY2 OBCLATEMY2 ;
 label values OBCHPYX2 OBCHPYX2 ;
 label values OBCSEXX3 OBCSEXX3 ;
 label values OBCDOB_Y3 OBCDOB_Y3 ;
 label values MULTBIRT153 MULTBIRT153 ;
 label values OBCMAGEX3 OBCMAGEX3 ;
 label values OBCMLIV3 OBCMLIV3 ;
 label values OBCKNOWX3 OBCKNOWX3 ;
 label values OBCLIVEX21 OBCLIVEX21 ;
 label values OBCLIVEX22 OBCLIVEX22 ;
 label values OBCLIVEX23 OBCLIVEX23 ;
 label values OBCAGE3 OBCAGE3 ;
 label values OBCCHSIG3 OBCCHSIG3 ;
 label values OBCCHCRT3 OBCCHCRT3 ;
 label values OBCCHGEN3 OBCCHGEN3 ;
 label values OBCEVER3 OBCEVER3 ;
 label values OBCFAR3 OBCFAR3 ;
 label values OBCRWANX3 OBCRWANX3 ;
 label values OBCSOONX3 OBCSOONX3 ;
 label values OBCSOONN3 OBCSOONN3 ;
 label values OBCSOONMY3 OBCSOONMY3 ;
 label values OBCLATEN3 OBCLATEN3 ;
 label values OBCLATEMY3 OBCLATEMY3 ;
 label values OBCHPYX3 OBCHPYX3 ;
 label values OBCSEXX4 OBCSEXX4 ;
 label values OBCDOB_Y4 OBCDOB_Y4 ;
 label values MULTBIRT154 MULTBIRT154 ;
 label values OBCMAGEX4 OBCMAGEX4 ;
 label values OBCMLIV4 OBCMLIV4 ;
 label values OBCKNOWX4 OBCKNOWX4 ;
 label values OBCLIVEX31 OBCLIVEX31 ;
 label values OBCLIVEX32 OBCLIVEX32 ;
 label values OBCLIVEX33 OBCLIVEX33 ;
 label values OBCAGE4 OBCAGE4 ;
 label values OBCCHSIG4 OBCCHSIG4 ;
 label values OBCCHCRT4 OBCCHCRT4 ;
 label values OBCCHGEN4 OBCCHGEN4 ;
 label values OBCEVER4 OBCEVER4 ;
 label values OBCFAR4 OBCFAR4 ;
 label values OBCRWANX4 OBCRWANX4 ;
 label values OBCSOONX4 OBCSOONX4 ;
 label values OBCSOONN4 OBCSOONN4 ;
 label values OBCSOONMY4 OBCSOONMY4 ;
 label values OBCLATEN4 OBCLATEN4 ;
 label values OBCLATEMY4 OBCLATEMY4 ;
 label values OBCHPYX4 OBCHPYX4 ;
 label values OBCSEXX5 OBCSEXX5 ;
 label values OBCDOB_Y5 OBCDOB_Y5 ;
 label values MULTBIRT155 MULTBIRT155 ;
 label values OBCMAGEX5 OBCMAGEX5 ;
 label values OBCMLIV5 OBCMLIV5 ;
 label values OBCKNOWX5 OBCKNOWX5 ;
 label values OBCLIVEX41 OBCLIVEX41 ;
 label values OBCLIVEX42 OBCLIVEX42 ;
 label values OBCLIVEX43 OBCLIVEX43 ;
 label values OBCAGE5 OBCAGE5 ;
 label values OBCCHSIG5 OBCCHSIG5 ;
 label values OBCCHCRT5 OBCCHCRT5 ;
 label values OBCCHGEN5 OBCCHGEN5 ;
 label values OBCEVER5 OBCEVER5 ;
 label values OBCFAR5 OBCFAR5 ;
 label values OBCRWANX5 OBCRWANX5 ;
 label values OBCSOONX5 OBCSOONX5 ;
 label values OBCSOONN5 OBCSOONN5 ;
 label values OBCSOONMY5 OBCSOONMY5 ;
 label values OBCLATEN5 OBCLATEN5 ;
 label values OBCLATEMY5 OBCLATEMY5 ;
 label values OBCHPYX5 OBCHPYX5 ;
 label values OBCSEXX6 OBCSEXX6 ;
 label values OBCDOB_Y6 OBCDOB_Y6 ;
 label values MULTBIRT156 MULTBIRT156 ;
 label values OBCMAGEX6 OBCMAGEX6 ;
 label values OBCMLIV6 OBCMLIV6 ;
 label values OBCKNOWX6 OBCKNOWX6 ;
 label values OBCLIVEX51 OBCLIVEX51 ;
 label values OBCLIVEX52 OBCLIVEX52 ;
 label values OBCLIVEX53 OBCLIVEX53 ;
 label values OBCAGE6 OBCAGE6 ;
 label values OBCCHSIG6 OBCCHSIG6 ;
 label values OBCCHCRT6 OBCCHCRT6 ;
 label values OBCCHGEN6 OBCCHGEN6 ;
 label values OBCEVER6 OBCEVER6 ;
 label values OBCFAR6 OBCFAR6 ;
 label values OBCRWANX6 OBCRWANX6 ;
 label values OBCSOONX6 OBCSOONX6 ;
 label values OBCSOONN6 OBCSOONN6 ;
 label values OBCSOONMY6 OBCSOONMY6 ;
 label values OBCLATEN6 OBCLATEN6 ;
 label values OBCLATEMY6 OBCLATEMY6 ;
 label values OBCHPYX6 OBCHPYX6 ;
 label values OBCSEXX7 OBCSEXX7 ;
 label values OBCDOB_Y7 OBCDOB_Y7 ;
 label values MULTBIRT157 MULTBIRT157 ;
 label values OBCMAGEX7 OBCMAGEX7 ;
 label values OBCMLIV7 OBCMLIV7 ;
 label values OBCKNOWX7 OBCKNOWX7 ;
 label values OBCLIVEX61 OBCLIVEX61 ;
 label values OBCLIVEX62 OBCLIVEX62 ;
 label values OBCLIVEX63 OBCLIVEX63 ;
 label values OBCAGE7 OBCAGE7 ;
 label values OBCCHSIG7 OBCCHSIG7 ;
 label values OBCCHCRT7 OBCCHCRT7 ;
 label values OBCCHGEN7 OBCCHGEN7 ;
 label values OBCEVER7 OBCEVER7 ;
 label values OBCFAR7 OBCFAR7 ;
 label values OBCRWANX7 OBCRWANX7 ;
 label values OBCSOONX7 OBCSOONX7 ;
 label values OBCSOONN7 OBCSOONN7 ;
 label values OBCSOONMY7 OBCSOONMY7 ;
 label values OBCLATEN7 OBCLATEN7 ;
 label values OBCLATEMY7 OBCLATEMY7 ;
 label values OBCHPYX7 OBCHPYX7 ;
 label values OBCSEXX8 OBCSEXX8 ;
 label values OBCDOB_Y8 OBCDOB_Y8 ;
 label values MULTBIRT158 MULTBIRT158 ;
 label values OBCMAGEX8 OBCMAGEX8 ;
 label values OBCMLIV8 OBCMLIV8 ;
 label values OBCKNOWX8 OBCKNOWX8 ;
 label values OBCLIVEX71 OBCLIVEX71 ;
 label values OBCLIVEX72 OBCLIVEX72 ;
 label values OBCLIVEX73 OBCLIVEX73 ;
 label values OBCAGE8 OBCAGE8 ;
 label values OBCCHSIG8 OBCCHSIG8 ;
 label values OBCCHCRT8 OBCCHCRT8 ;
 label values OBCCHGEN8 OBCCHGEN8 ;
 label values OBCEVER8 OBCEVER8 ;
 label values OBCFAR8 OBCFAR8 ;
 label values OBCRWANX8 OBCRWANX8 ;
 label values OBCSOONX8 OBCSOONX8 ;
 label values OBCSOONN8 OBCSOONN8 ;
 label values OBCSOONMY8 OBCSOONMY8 ;
 label values OBCLATEN8 OBCLATEN8 ;
 label values OBCLATEMY8 OBCLATEMY8 ;
 label values OBCHPYX8 OBCHPYX8 ;
 label values OBCSEXX9 OBCSEXX9 ;
 label values OBCDOB_Y9 OBCDOB_Y9 ;
 label values MULTBIRT159 MULTBIRT159 ;
 label values OBCMAGEX9 OBCMAGEX9 ;
 label values OBCMLIV9 OBCMLIV9 ;
 label values OBCKNOWX9 OBCKNOWX9 ;
 label values OBCLIVEX81 OBCLIVEX81 ;
 label values OBCLIVEX82 OBCLIVEX82 ;
 label values OBCLIVEX83 OBCLIVEX83 ;
 label values OBCAGE9 OBCAGE9 ;
 label values OBCCHSIG9 OBCCHSIG9 ;
 label values OBCCHCRT9 OBCCHCRT9 ;
 label values OBCCHGEN9 OBCCHGEN9 ;
 label values OBCEVER9 OBCEVER9 ;
 label values OBCFAR9 OBCFAR9 ;
 label values OBCRWANX9 OBCRWANX9 ;
 label values OBCSOONX9 OBCSOONX9 ;
 label values OBCSOONN9 OBCSOONN9 ;
 label values OBCSOONMY9 OBCSOONMY9 ;
 label values OBCLATEN9 OBCLATEN9 ;
 label values OBCLATEMY9 OBCLATEMY9 ;
 label values OBCHPYX9 OBCHPYX9 ;
 label values OBCSEXX10 OBCSEXX10 ;
 label values OBCDOB_Y10 OBCDOB_Y10 ;
 label values MULTBIRT160 MULTBIRT160 ;
 label values OBCMAGEX10 OBCMAGEX10 ;
 label values OBCMLIV10 OBCMLIV10 ;
 label values OBCKNOWX10 OBCKNOWX10 ;
 label values OBCLIVEX91 OBCLIVEX91 ;
 label values OBCLIVEX92 OBCLIVEX92 ;
 label values OBCLIVEX93 OBCLIVEX93 ;
 label values OBCAGE10 OBCAGE10 ;
 label values OBCCHSIG10 OBCCHSIG10 ;
 label values OBCCHCRT10 OBCCHCRT10 ;
 label values OBCCHGEN10 OBCCHGEN10 ;
 label values OBCEVER10 OBCEVER10 ;
 label values OBCFAR10 OBCFAR10 ;
 label values OBCRWANX10 OBCRWANX10 ;
 label values OBCSOONX10 OBCSOONX10 ;
 label values OBCSOONN10 OBCSOONN10 ;
 label values OBCSOONMY10 OBCSOONMY10 ;
 label values OBCLATEN10 OBCLATEN10 ;
 label values OBCLATEMY10 OBCLATEMY10 ;
 label values OBCHPYX10 OBCHPYX10 ;
 label values F_AKIDS F_AKIDS ;
 label values otachil otachil ;
 label values otachiln otachiln ;
 label values otnbrel otnbrel ;
 label values otnbfos otnbfos ;
 label values otnbsex otnbsex ;
 label values otnbad otnbad ;
 label values OTNBLIV1 OTNBLIV1 ;
 label values OTNBLIV2 OTNBLIV2 ;
 label values otnbfar otnbfar ;
 label values otnbage otnbage ;
 label values OTNBREL2 OTNBREL2 ;
 label values OTNBFOS2 OTNBFOS2 ;
 label values OTNBSEX2 OTNBSEX2 ;
 label values OTNBAD2 OTNBAD2 ;
 label values OTNBLIV9 OTNBLIV9 ;
 label values OTNBLIV10 OTNBLIV10 ;
 label values OTNBFAR2 OTNBFAR2 ;
 label values OTNBAGE2 OTNBAGE2 ;
 label values OTNBREL3 OTNBREL3 ;
 label values OTNBFOS3 OTNBFOS3 ;
 label values OTNBSEX3 OTNBSEX3 ;
 label values OTNBAD3 OTNBAD3 ;
 label values OTNBLIV17 OTNBLIV17 ;
 label values OTNBLIV18 OTNBLIV18 ;
 label values OTNBFAR3 OTNBFAR3 ;
 label values OTNBAGE3 OTNBAGE3 ;
 label values OTNBREL4 OTNBREL4 ;
 label values OTNBFOS4 OTNBFOS4 ;
 label values OTNBSEX4 OTNBSEX4 ;
 label values OTNBAD4 OTNBAD4 ;
 label values OTNBLIV25 OTNBLIV25 ;
 label values OTNBLIV26 OTNBLIV26 ;
 label values OTNBFAR4 OTNBFAR4 ;
 label values OTNBAGE4 OTNBAGE4 ;
 label values OTNBREL5 OTNBREL5 ;
 label values OTNBFOS5 OTNBFOS5 ;
 label values OTNBSEX5 OTNBSEX5 ;
 label values OTNBAD5 OTNBAD5 ;
 label values OTNBLIV33 OTNBLIV33 ;
 label values OTNBLIV34 OTNBLIV34 ;
 label values OTNBFAR5 OTNBFAR5 ;
 label values OTNBAGE5 OTNBAGE5 ;
 label values OTNBREL6 OTNBREL6 ;
 label values OTNBFOS6 OTNBFOS6 ;
 label values OTNBSEX6 OTNBSEX6 ;
 label values OTNBAD6 OTNBAD6 ;
 label values OTNBLIV41 OTNBLIV41 ;
 label values OTNBLIV42 OTNBLIV42 ;
 label values OTNBFAR6 OTNBFAR6 ;
 label values OTNBAGE6 OTNBAGE6 ;
 label values OTNBREL7 OTNBREL7 ;
 label values OTNBFOS7 OTNBFOS7 ;
 label values OTNBSEX7 OTNBSEX7 ;
 label values OTNBAD7 OTNBAD7 ;
 label values OTNBLIV49 OTNBLIV49 ;
 label values OTNBLIV50 OTNBLIV50 ;
 label values OTNBFAR7 OTNBFAR7 ;
 label values OTNBAGE7 OTNBAGE7 ;
 label values OTNBREL8 OTNBREL8 ;
 label values OTNBFOS8 OTNBFOS8 ;
 label values OTNBSEX8 OTNBSEX8 ;
 label values OTNBAD8 OTNBAD8 ;
 label values OTNBLIV57 OTNBLIV57 ;
 label values OTNBLIV58 OTNBLIV58 ;
 label values OTNBFAR8 OTNBFAR8 ;
 label values OTNBAGE8 OTNBAGE8 ;
 label values OTNBREL9 OTNBREL9 ;
 label values OTNBFOS9 OTNBFOS9 ;
 label values OTNBSEX9 OTNBSEX9 ;
 label values OTNBAD9 OTNBAD9 ;
 label values OTNBLIV65 OTNBLIV65 ;
 label values OTNBLIV66 OTNBLIV66 ;
 label values OTNBFAR9 OTNBFAR9 ;
 label values OTNBAGE9 OTNBAGE9 ;
 label values otpreg otpreg ;
 label values otprgprb otprgprb ;
 label values otprgn otprgn ;
 label values otprgend otprgend ;
 label values otmsn otmsn ;
 label values otstn otstn ;
 label values otabn otabn ;
 label values agenonlb agenonlb ;
 label values heragenlb heragenlb ;
 label values totprg totprg ;
 label values otpregs otpregs ;
 label values TOTPREGS_C TOTPREGS_C ;
 label values TOTPREGS_R TOTPREGS_R ;
 label values biokids biokids ;
 label values adopkids adopkids ;
 label values anykids anykids ;
 label values bioadopt bioadopt ;
 label values pregsnow pregsnow ;
 label values BIODOB1 BIODOB1 ;
 label values BIODOB2 BIODOB2 ;
 label values BIODOB3 BIODOB3 ;
 label values BIODOB4 BIODOB4 ;
 label values BIODOB5 BIODOB5 ;
 label values BIODOB6 BIODOB6 ;
 label values BIODOB7 BIODOB7 ;
 label values BIODOB8 BIODOB8 ;
 label values BIODOB9 BIODOB9 ;
 label values BIODOB10 BIODOB10 ;
 label values BIOSEX1 BIOSEX1 ;
 label values BIOSEX2 BIOSEX2 ;
 label values BIOSEX3 BIOSEX3 ;
 label values BIOSEX4 BIOSEX4 ;
 label values BIOSEX5 BIOSEX5 ;
 label values BIOSEX6 BIOSEX6 ;
 label values BIOSEX7 BIOSEX7 ;
 label values BIOSEX8 BIOSEX8 ;
 label values BIOSEX9 BIOSEX9 ;
 label values BIOSEX10 BIOSEX10 ;
 label values BIOAGE1 BIOAGE1 ;
 label values BIOAGE2 BIOAGE2 ;
 label values BIOAGE3 BIOAGE3 ;
 label values BIOAGE4 BIOAGE4 ;
 label values BIOAGE5 BIOAGE5 ;
 label values BIOAGE6 BIOAGE6 ;
 label values BIOAGE7 BIOAGE7 ;
 label values BIOAGE8 BIOAGE8 ;
 label values BIOAGE9 BIOAGE9 ;
 label values BIOAGE10 BIOAGE10 ;
 label values BIOAGEGP1 BIOAGEGP1 ;
 label values BIOAGEGP2 BIOAGEGP2 ;
 label values BIOAGEGP3 BIOAGEGP3 ;
 label values BIOAGEGP4 BIOAGEGP4 ;
 label values BIOAGEGP5 BIOAGEGP5 ;
 label values BIOAGEGP6 BIOAGEGP6 ;
 label values BIOAGEGP7 BIOAGEGP7 ;
 label values BIOAGEGP8 BIOAGEGP8 ;
 label values BIOAGEGP9 BIOAGEGP9 ;
 label values BIOAGEGP10 BIOAGEGP10 ;
 label values BIOHH1 BIOHH1 ;
 label values BIOHH2 BIOHH2 ;
 label values BIOHH3 BIOHH3 ;
 label values BIOHH4 BIOHH4 ;
 label values BIOHH5 BIOHH5 ;
 label values BIOHH6 BIOHH6 ;
 label values BIOHH7 BIOHH7 ;
 label values BIOHH8 BIOHH8 ;
 label values BIOHH9 BIOHH9 ;
 label values BIOHH10 BIOHH10 ;
 label values BIOMOM1 BIOMOM1 ;
 label values BIOMOM2 BIOMOM2 ;
 label values BIOMOM3 BIOMOM3 ;
 label values BIOMOM4 BIOMOM4 ;
 label values BIOMOM5 BIOMOM5 ;
 label values BIOMOM6 BIOMOM6 ;
 label values BIOMOM7 BIOMOM7 ;
 label values BIOMOM8 BIOMOM8 ;
 label values BIOMOM9 BIOMOM9 ;
 label values BIOMOM10 BIOMOM10 ;
 label values BIOMAR1 BIOMAR1 ;
 label values BIOMAR2 BIOMAR2 ;
 label values BIOMAR3 BIOMAR3 ;
 label values BIOMAR4 BIOMAR4 ;
 label values BIOMAR5 BIOMAR5 ;
 label values BIOMAR6 BIOMAR6 ;
 label values BIOMAR7 BIOMAR7 ;
 label values BIOMAR8 BIOMAR8 ;
 label values BIOMAR9 BIOMAR9 ;
 label values BIOMAR10 BIOMAR10 ;
 label values BIOCOHB1 BIOCOHB1 ;
 label values BIOCOHB2 BIOCOHB2 ;
 label values BIOCOHB3 BIOCOHB3 ;
 label values BIOCOHB4 BIOCOHB4 ;
 label values BIOCOHB5 BIOCOHB5 ;
 label values BIOCOHB6 BIOCOHB6 ;
 label values BIOCOHB7 BIOCOHB7 ;
 label values BIOCOHB8 BIOCOHB8 ;
 label values BIOCOHB9 BIOCOHB9 ;
 label values BIOCOHB10 BIOCOHB10 ;
 label values BIOLRNPG1 BIOLRNPG1 ;
 label values BIOLRNPG2 BIOLRNPG2 ;
 label values BIOLRNPG3 BIOLRNPG3 ;
 label values BIOLRNPG4 BIOLRNPG4 ;
 label values BIOLRNPG5 BIOLRNPG5 ;
 label values BIOLRNPG6 BIOLRNPG6 ;
 label values BIOLRNPG7 BIOLRNPG7 ;
 label values BIOLRNPG8 BIOLRNPG8 ;
 label values BIOLRNPG9 BIOLRNPG9 ;
 label values BIOLRNPG10 BIOLRNPG10 ;
 label values BIOLIVNG11 BIOLIVNG11 ;
 label values BIOLIVNG12 BIOLIVNG12 ;
 label values BIOLIVNG13 BIOLIVNG13 ;
 label values BIOLIVNG21 BIOLIVNG21 ;
 label values BIOLIVNG22 BIOLIVNG22 ;
 label values BIOLIVNG23 BIOLIVNG23 ;
 label values BIOLIVNG31 BIOLIVNG31 ;
 label values BIOLIVNG32 BIOLIVNG32 ;
 label values BIOLIVNG33 BIOLIVNG33 ;
 label values BIOLIVNG41 BIOLIVNG41 ;
 label values BIOLIVNG42 BIOLIVNG42 ;
 label values BIOLIVNG43 BIOLIVNG43 ;
 label values BIOLIVNG51 BIOLIVNG51 ;
 label values BIOLIVNG52 BIOLIVNG52 ;
 label values BIOLIVNG53 BIOLIVNG53 ;
 label values BIOLIVNG61 BIOLIVNG61 ;
 label values BIOLIVNG62 BIOLIVNG62 ;
 label values BIOLIVNG63 BIOLIVNG63 ;
 label values BIOLIVNG71 BIOLIVNG71 ;
 label values BIOLIVNG72 BIOLIVNG72 ;
 label values BIOLIVNG73 BIOLIVNG73 ;
 label values BIOLIVNG81 BIOLIVNG81 ;
 label values BIOLIVNG82 BIOLIVNG82 ;
 label values BIOLIVNG83 BIOLIVNG83 ;
 label values BIOLIVNG91 BIOLIVNG91 ;
 label values BIOLIVNG92 BIOLIVNG92 ;
 label values BIOLIVNG93 BIOLIVNG93 ;
 label values BIOLIVNG101 BIOLIVNG101 ;
 label values BIOLIVNG102 BIOLIVNG102 ;
 label values BIOLIVNG103 BIOLIVNG103 ;
 label values BIOCHSIG1 BIOCHSIG1 ;
 label values BIOCHSIG2 BIOCHSIG2 ;
 label values BIOCHSIG3 BIOCHSIG3 ;
 label values BIOCHSIG4 BIOCHSIG4 ;
 label values BIOCHSIG5 BIOCHSIG5 ;
 label values BIOCHSIG6 BIOCHSIG6 ;
 label values BIOCHSIG7 BIOCHSIG7 ;
 label values BIOCHSIG8 BIOCHSIG8 ;
 label values BIOCHSIG9 BIOCHSIG9 ;
 label values BIOCHSIG10 BIOCHSIG10 ;
 label values BIOCHCRT1 BIOCHCRT1 ;
 label values BIOCHCRT2 BIOCHCRT2 ;
 label values BIOCHCRT3 BIOCHCRT3 ;
 label values BIOCHCRT4 BIOCHCRT4 ;
 label values BIOCHCRT5 BIOCHCRT5 ;
 label values BIOCHCRT6 BIOCHCRT6 ;
 label values BIOCHCRT7 BIOCHCRT7 ;
 label values BIOCHCRT8 BIOCHCRT8 ;
 label values BIOCHCRT9 BIOCHCRT9 ;
 label values BIOCHCRT10 BIOCHCRT10 ;
 label values BIOCHGEN1 BIOCHGEN1 ;
 label values BIOCHGEN2 BIOCHGEN2 ;
 label values BIOCHGEN3 BIOCHGEN3 ;
 label values BIOCHGEN4 BIOCHGEN4 ;
 label values BIOCHGEN5 BIOCHGEN5 ;
 label values BIOCHGEN6 BIOCHGEN6 ;
 label values BIOCHGEN7 BIOCHGEN7 ;
 label values BIOCHGEN8 BIOCHGEN8 ;
 label values BIOCHGEN9 BIOCHGEN9 ;
 label values BIOCHGEN10 BIOCHGEN10 ;
 label values BIOLVEVR1 BIOLVEVR1 ;
 label values BIOLVEVR2 BIOLVEVR2 ;
 label values BIOLVEVR3 BIOLVEVR3 ;
 label values BIOLVEVR4 BIOLVEVR4 ;
 label values BIOLVEVR5 BIOLVEVR5 ;
 label values BIOLVEVR6 BIOLVEVR6 ;
 label values BIOLVEVR7 BIOLVEVR7 ;
 label values BIOLVEVR8 BIOLVEVR8 ;
 label values BIOLVEVR9 BIOLVEVR9 ;
 label values BIOLVEVR10 BIOLVEVR10 ;
 label values BIOHWFAR1 BIOHWFAR1 ;
 label values BIOHWFAR2 BIOHWFAR2 ;
 label values BIOHWFAR3 BIOHWFAR3 ;
 label values BIOHWFAR4 BIOHWFAR4 ;
 label values BIOHWFAR5 BIOHWFAR5 ;
 label values BIOHWFAR6 BIOHWFAR6 ;
 label values BIOHWFAR7 BIOHWFAR7 ;
 label values BIOHWFAR8 BIOHWFAR8 ;
 label values BIOHWFAR9 BIOHWFAR9 ;
 label values BIOHWFAR10 BIOHWFAR10 ;
 label values BIOWANT1 BIOWANT1 ;
 label values BIOWANT2 BIOWANT2 ;
 label values BIOWANT3 BIOWANT3 ;
 label values BIOWANT4 BIOWANT4 ;
 label values BIOWANT5 BIOWANT5 ;
 label values BIOWANT6 BIOWANT6 ;
 label values BIOWANT7 BIOWANT7 ;
 label values BIOWANT8 BIOWANT8 ;
 label values BIOWANT9 BIOWANT9 ;
 label values BIOWANT10 BIOWANT10 ;
 label values BIOHSOON1 BIOHSOON1 ;
 label values BIOHSOON2 BIOHSOON2 ;
 label values BIOHSOON3 BIOHSOON3 ;
 label values BIOHSOON4 BIOHSOON4 ;
 label values BIOHSOON5 BIOHSOON5 ;
 label values BIOHSOON6 BIOHSOON6 ;
 label values BIOHSOON7 BIOHSOON7 ;
 label values BIOHSOON8 BIOHSOON8 ;
 label values BIOHSOON9 BIOHSOON9 ;
 label values BIOHSOON10 BIOHSOON10 ;
 label values BIOHOWSN1 BIOHOWSN1 ;
 label values BIOHOWSN2 BIOHOWSN2 ;
 label values BIOHOWSN3 BIOHOWSN3 ;
 label values BIOHOWSN4 BIOHOWSN4 ;
 label values BIOHOWSN5 BIOHOWSN5 ;
 label values BIOHOWSN6 BIOHOWSN6 ;
 label values BIOHOWSN7 BIOHOWSN7 ;
 label values BIOHOWSN8 BIOHOWSN8 ;
 label values BIOHOWSN9 BIOHOWSN9 ;
 label values BIOHOWSN10 BIOHOWSN10 ;
 label values BIOHPYPG1 BIOHPYPG1 ;
 label values BIOHPYPG2 BIOHPYPG2 ;
 label values BIOHPYPG3 BIOHPYPG3 ;
 label values BIOHPYPG4 BIOHPYPG4 ;
 label values BIOHPYPG5 BIOHPYPG5 ;
 label values BIOHPYPG6 BIOHPYPG6 ;
 label values BIOHPYPG7 BIOHPYPG7 ;
 label values BIOHPYPG8 BIOHPYPG8 ;
 label values BIOHPYPG9 BIOHPYPG9 ;
 label values BIOHPYPG10 BIOHPYPG10 ;
 label values crall crall ;
 label values CRALLU5 CRALLU5 ;
 label values CRALL518 CRALL518 ;
 label values CRMALU5 CRMALU5 ;
 label values CRMAL518 CRMAL518 ;
 label values CRFEMU5 CRFEMU5 ;
 label values CRFEM518 CRFEM518 ;
 label values ncall ncall ;
 label values NCALLU5 NCALLU5 ;
 label values NCALL518 NCALL518 ;
 label values NCMALU5 NCMALU5 ;
 label values NCMAL518 NCMAL518 ;
 label values NCFEMU5 NCFEMU5 ;
 label values NCFEM518 NCFEM518 ;
 label values rfage rfage ;
 label values rfsex rfsex ;
 label values ROUTG04 ROUTG04 ;
 label values RMEAL04 RMEAL04 ;
 label values RERRAND04 RERRAND04 ;
 label values RPLAY04 RPLAY04 ;
 label values RREAD04 RREAD04 ;
 label values RAFFECT04 RAFFECT04 ;
 label values RPRAISE04 RPRAISE04 ;
 label values RFEED04 RFEED04 ;
 label values RBATH04 RBATH04 ;
 label values RDIAPER04 RDIAPER04 ;
 label values RBED04 RBED04 ;
 label values RAPPT04 RAPPT04 ;
 label values RDISC04 RDISC04 ;
 label values ROUTG518 ROUTG518 ;
 label values RMEAL518 RMEAL518 ;
 label values RERRAND518 RERRAND518 ;
 label values RAFFECT518 RAFFECT518 ;
 label values RPRAISE518 RPRAISE518 ;
 label values RTAKE518 RTAKE518 ;
 label values RAPPT518 RAPPT518 ;
 label values RHELP518 RHELP518 ;
 label values RDISC518 RDISC518 ;
 label values RCLFR518 RCLFR518 ;
 label values RDO518 RDO518 ;
 label values nrfage nrfage ;
 label values nrfsex nrfsex ;
 label values NRVISIT04 NRVISIT04 ;
 label values NRSATVIS04 NRSATVIS04 ;
 label values NROUTG04 NROUTG04 ;
 label values NRMEAL04 NRMEAL04 ;
 label values NRERRAND04 NRERRAND04 ;
 label values NROVRNT04 NROVRNT04 ;
 label values NRPLAY04 NRPLAY04 ;
 label values NRREAD04 NRREAD04 ;
 label values NRAFFECT04 NRAFFECT04 ;
 label values NRPRAISE04 NRPRAISE04 ;
 label values NRFEED04 NRFEED04 ;
 label values NRBATH04 NRBATH04 ;
 label values NRDIAPER04 NRDIAPER04 ;
 label values NRBED04 NRBED04 ;
 label values NRAPPT04 NRAPPT04 ;
 label values NRDISC04 NRDISC04 ;
 label values NRVISIT518 NRVISIT518 ;
 label values NRSATVIS518 NRSATVIS518 ;
 label values NROUTG518 NROUTG518 ;
 label values NRMEAL518 NRMEAL518 ;
 label values NRERRAND518 NRERRAND518 ;
 label values NROVRNT518 NROVRNT518 ;
 label values NRAFFECT518 NRAFFECT518 ;
 label values NRPRAISE518 NRPRAISE518 ;
 label values NRTAKE518 NRTAKE518 ;
 label values NRAPPT518 NRAPPT518 ;
 label values NRHELP518 NRHELP518 ;
 label values NRDISC518 NRDISC518 ;
 label values NRCLFR518 NRCLFR518 ;
 label values NRDO518 NRDO518 ;
 label values nrmoney nrmoney ;
 label values nreg nreg ;
 label values nragree nragree ;
 label values nrchsuppyr nrchsuppyr ;
 label values coparent coparent ;
 label values rwant rwant ;
 label values probwant probwant ;
 label values jintend jintend ;
 label values jsureint jsureint ;
 label values jintendn jintendn ;
 label values jexpectl jexpectl ;
 label values jexpects jexpects ;
 label values jintnext jintnext ;
 label values intend intend ;
 label values intendn intendn ;
 label values expectl expectl ;
 label values expects expects ;
 label values intnext intnext ;
 label values usualcar usualcar ;
 label values uslplace uslplace ;
 label values USL12MOS USL12MOS ;
 label values currcov currcov ;
 label values COVERHOW01 COVERHOW01 ;
 label values COVERHOW02 COVERHOW02 ;
 label values COVERHOW03 COVERHOW03 ;
 label values COVERHOW04 COVERHOW04 ;
 label values parinsur parinsur ;
 label values INS_EXCH INS_EXCH ;
 label values INS_PREM INS_PREM ;
 label values COVER12 COVER12 ;
 label values numnocov numnocov ;
 label values yougofpc yougofpc ;
 label values whengofp whengofp ;
 label values YOUFPSVC1 YOUFPSVC1 ;
 label values YOUFPSVC2 YOUFPSVC2 ;
 label values YOUFPSVC3 YOUFPSVC3 ;
 label values YOUFPSVC4 YOUFPSVC4 ;
 label values YOUFPSVC5 YOUFPSVC5 ;
 label values YOUFPSVC6 YOUFPSVC6 ;
 label values YOUFPSVC7 YOUFPSVC7 ;
 label values deaf deaf ;
 label values blind blind ;
 label values difdecide difdecide ;
 label values difwalk difwalk ;
 label values difdress difdress ;
 label values difout difout ;
 label values evrcancer evrcancer ;
 label values agecancer agecancer ;
 label values alcorisk alcorisk ;
 label values VISIT12MO1 VISIT12MO1 ;
 label values VISIT12MO2 VISIT12MO2 ;
 label values VISIT12MO3 VISIT12MO3 ;
 label values SVC12MO1 SVC12MO1 ;
 label values SVC12MO2 SVC12MO2 ;
 label values SVC12MO3 SVC12MO3 ;
 label values SVC12MO4 SVC12MO4 ;
 label values SVC12MO5 SVC12MO5 ;
 label values SVC12MO6 SVC12MO6 ;
 label values SVC12MO7 SVC12MO7 ;
 label values SVC12MO8 SVC12MO8 ;
 label values SVC12MO9 SVC12MO9 ;
 label values numvisit numvisit ;
 label values PLACEVIS01 PLACEVIS01 ;
 label values PLACEVIS02 PLACEVIS02 ;
 label values PLACEVIS03 PLACEVIS03 ;
 label values PLACEVIS04 PLACEVIS04 ;
 label values PLACEVIS05 PLACEVIS05 ;
 label values PLACEVIS06 PLACEVIS06 ;
 label values PLACEVIS07 PLACEVIS07 ;
 label values SVCPAY1 SVCPAY1 ;
 label values SVCPAY2 SVCPAY2 ;
 label values SVCPAY3 SVCPAY3 ;
 label values SVCPAY4 SVCPAY4 ;
 label values talksa talksa ;
 label values talkec talkec ;
 label values talkdm talkdm ;
 label values whypstd whypstd ;
 label values whynostd whynostd ;
 label values BARRIER1 BARRIER1 ;
 label values BARRIER2 BARRIER2 ;
 label values BARRIER3 BARRIER3 ;
 label values BARRIER4 BARRIER4 ;
 label values BARRIER5 BARRIER5 ;
 label values bldpress bldpress ;
 label values highbp highbp ;
 label values bpmeds bpmeds ;
 label values asksmoke asksmoke ;
 label values infhelp infhelp ;
 label values INFSVCS1 INFSVCS1 ;
 label values INFSVCS2 INFSVCS2 ;
 label values INFSVCS3 INFSVCS3 ;
 label values INFSVCS4 INFSVCS4 ;
 label values INFSVCS5 INFSVCS5 ;
 label values INFSVCS6 INFSVCS6 ;
 label values INFSVCS7 INFSVCS7 ;
 label values inftest inftest ;
 label values whoinsem whoinsem ;
 label values infhlpnw infhlpnw ;
 label values LASTVIS_M LASTVIS_M ;
 label values LASTVIS_Y LASTVIS_Y ;
 label values cminfvis cminfvis ;
 label values INFRTHIS_1 INFRTHIS_1 ;
 label values INFRTHIS_2 INFRTHIS_2 ;
 label values INFRTHIS_3 INFRTHIS_3 ;
 label values donblood donblood ;
 label values hivtest hivtest ;
 label values nohivtst nohivtst ;
 label values WHENHIV_M WHENHIV_M ;
 label values WHENHIV_Y WHENHIV_Y ;
 label values cmhivtst cmhivtst ;
 label values hivtstyr hivtstyr ;
 label values hivresult hivresult ;
 label values whynoget whynoget ;
 label values plchiv plchiv ;
 label values RHHIVT1 RHHIVT1 ;
 label values RHHIVT21 RHHIVT21 ;
 label values RHHIVT22 RHHIVT22 ;
 label values RHHIVT23 RHHIVT23 ;
 label values RHHIVT24 RHHIVT24 ;
 label values RHHIVT25 RHHIVT25 ;
 label values hivtst hivtst ;
 label values prephiv prephiv ;
 label values talkdoct talkdoct ;
 label values AIDSTALK01 AIDSTALK01 ;
 label values AIDSTALK02 AIDSTALK02 ;
 label values AIDSTALK03 AIDSTALK03 ;
 label values AIDSTALK04 AIDSTALK04 ;
 label values AIDSTALK05 AIDSTALK05 ;
 label values AIDSTALK06 AIDSTALK06 ;
 label values AIDSTALK07 AIDSTALK07 ;
 label values AIDSTALK08 AIDSTALK08 ;
 label values AIDSTALK09 AIDSTALK09 ;
 label values AIDSTALK10 AIDSTALK10 ;
 label values AIDSTALK11 AIDSTALK11 ;
 label values sameadd sameadd ;
 label values brnout brnout ;
 label values relraisd relraisd ;
 label values ATTND14 ATTND14 ;
 label values relcurr relcurr ;
 label values reltrad reltrad ;
 label values FUNDAM1 FUNDAM1 ;
 label values FUNDAM2 FUNDAM2 ;
 label values FUNDAM3 FUNDAM3 ;
 label values FUNDAM4 FUNDAM4 ;
 label values reldlife reldlife ;
 label values attndnow attndnow ;
 label values milsvc milsvc ;
 label values WRK12MOS WRK12MOS ;
 label values FPT12MOS FPT12MOS ;
 label values DOLASTWK1 DOLASTWK1 ;
 label values DOLASTWK2 DOLASTWK2 ;
 label values DOLASTWK3 DOLASTWK3 ;
 label values DOLASTWK4 DOLASTWK4 ;
 label values DOLASTWK5 DOLASTWK5 ;
 label values rwrkst rwrkst ;
 label values WORKP12 WORKP12 ;
 label values rpayjob rpayjob ;
 label values rnumjob rnumjob ;
 label values rftptx rftptx ;
 label values rearnty rearnty ;
 label values SPLSTWK1 SPLSTWK1 ;
 label values SPLSTWK2 SPLSTWK2 ;
 label values SPLSTWK3 SPLSTWK3 ;
 label values SPLSTWK4 SPLSTWK4 ;
 label values SPLSTWK5 SPLSTWK5 ;
 label values spwrkst spwrkst ;
 label values sppayjob sppayjob ;
 label values spnumjob spnumjob ;
 label values spftptx spftptx ;
 label values spearnty spearnty ;
 label values samesex samesex ;
 label values chsuppor chsuppor ;
 label values reactslf reactslf ;
 label values chbother chbother ;
 label values sexneeds sexneeds ;
 label values whensick whensick ;
 label values showpain showpain ;
 label values pmarcohb pmarcohb ;
 label values cohchance cohchance ;
 label values marrchance marrchance ;
 label values pmarcoh pmarcoh ;
 label values acasilang acasilang ;
 label values genhealt genhealt ;
 label values bmicat bmicat ;
 label values drweigh drweigh ;
 label values tellwght tellwght ;
 label values wghtscrn wghtscrn ;
 label values engspeak engspeak ;
 label values nobedyr nobedyr ;
 label values stayrel stayrel ;
 label values jailed jailed ;
 label values JAILED2 JAILED2 ;
 label values frqjail frqjail ;
 label values FRQJAIL2 FRQJAIL2 ;
 label values evsuspen evsuspen ;
 label values gradsusp gradsusp ;
 label values SMK100 SMK100 ;
 label values agesmk agesmk ;
 label values SMOKE12 SMOKE12 ;
 label values smkstop smkstop ;
 label values DRINK12 DRINK12 ;
 label values UNIT30D UNIT30D ;
 label values DRINK30D DRINK30D ;
 label values drinkday drinkday ;
 label values BINGE30 BINGE30 ;
 label values drnkmost drnkmost ;
 label values BINGE12 BINGE12 ;
 label values POT12 POT12 ;
 label values COC12 COC12 ;
 label values CRACK12 CRACK12 ;
 label values CRYSTMTH12 CRYSTMTH12 ;
 label values INJECT12 INJECT12 ;
 label values madepreg madepreg ;
 label values PREGTOT2 PREGTOT2 ;
 label values pregacasi pregacasi ;
 label values numabort numabort ;
 label values numliveb numliveb ;
 label values toldpreg toldpreg ;
 label values whathapp whathapp ;
 label values femtouch femtouch ;
 label values vagsex vagsex ;
 label values agevagr agevagr ;
 label values condvag condvag ;
 label values COND1BRK COND1BRK ;
 label values COND1OFF COND1OFF ;
 label values whycondl whycondl ;
 label values getoralf getoralf ;
 label values condfell condfell ;
 label values givoralf givoralf ;
 label values anyoral anyoral ;
 label values timing timing ;
 label values analsex analsex ;
 label values condanal condanal ;
 label values oppsexany oppsexany ;
 label values oppsexgen oppsexgen ;
 label values condsexl condsexl ;
 label values opplifenum opplifenum ;
 label values oppyearnum oppyearnum ;
 label values VAGNUM12 VAGNUM12 ;
 label values ORALNUM12 ORALNUM12 ;
 label values ANALNUM12 ANALNUM12 ;
 label values nonmonog nonmonog ;
 label values NNONMONOG1 NNONMONOG1 ;
 label values NNONMONOG2 NNONMONOG2 ;
 label values NNONMONOG3 NNONMONOG3 ;
 label values FEMSHT12 FEMSHT12 ;
 label values johnfreq johnfreq ;
 label values prostfrq prostfrq ;
 label values HIVFEM12 HIVFEM12 ;
 label values givoralm givoralm ;
 label values getoralm getoralm ;
 label values oralcondm oralcondm ;
 label values ANALSEX2 ANALSEX2 ;
 label values ANALCONDM1 ANALCONDM1 ;
 label values ANALSEX3 ANALSEX3 ;
 label values ANALCONDM2 ANALCONDM2 ;
 label values malesex malesex ;
 label values samesexany samesexany ;
 label values malprtage malprtage ;
 label values malprthrace malprthrace ;
 label values samlifenum samlifenum ;
 label values samyearnum samyearnum ;
 label values SAMORAL12 SAMORAL12 ;
 label values RECEPANAL12 RECEPANAL12 ;
 label values INSERANAL12 INSERANAL12 ;
 label values SAMESEX1 SAMESEX1 ;
 label values msamerel msamerel ;
 label values msmnonmon msmnonmon ;
 label values MALSHT12 MALSHT12 ;
 label values JOHN2FRQ JOHN2FRQ ;
 label values PROS2FRQ PROS2FRQ ;
 label values HIVMAL12 HIVMAL12 ;
 label values MSMSORT12 MSMSORT12 ;
 label values cndlsmal cndlsmal ;
 label values condalls condalls ;
 label values mflastp mflastp ;
 label values whycond whycond ;
 label values dateapp dateapp ;
 label values attract attract ;
 label values ORIENT_A ORIENT_A ;
 label values ORIENT_B ORIENT_B ;
 label values confconc confconc ;
 label values timalon timalon ;
 label values RISKCHEK1 RISKCHEK1 ;
 label values RISKCHEK2 RISKCHEK2 ;
 label values RISKCHEK3 RISKCHEK3 ;
 label values RISKCHEK4 RISKCHEK4 ;
 label values rectdouch rectdouch ;
 label values STDTST12 STDTST12 ;
 label values STDSITE12 STDSITE12 ;
 label values STDTRT12 STDTRT12 ;
 label values gon gon ;
 label values chlam chlam ;
 label values herpes herpes ;
 label values genwarts genwarts ;
 label values syphilis syphilis ;
 label values evrinject evrinject ;
 label values evrshare evrshare ;
 label values earntype earntype ;
 label values earn earn ;
 label values EARNDK1 EARNDK1 ;
 label values EARNDK2 EARNDK2 ;
 label values EARNDK3 EARNDK3 ;
 label values EARNDK4 EARNDK4 ;
 label values toincwmy toincwmy ;
 label values totinc totinc ;
 label values FMINCDK1 FMINCDK1 ;
 label values FMINCDK2 FMINCDK2 ;
 label values FMINCDK3 FMINCDK3 ;
 label values FMINCDK4 FMINCDK4 ;
 label values FMINCDK5 FMINCDK5 ;
 label values pubasst pubasst ;
 label values PUBASTYP1 PUBASTYP1 ;
 label values foodstmp foodstmp ;
 label values wic wic ;
 label values hlptrans hlptrans ;
 label values hlpchldc hlpchldc ;
 label values hlpjob hlpjob ;
 label values freefood freefood ;
 label values hungry hungry ;
 label values MED_COST MED_COST ;
 label values ager ager ;
 label values fmarital fmarital ;
 label values rmarital rmarital ;
 label values educat educat ;
 label values hieduc hieduc ;
 label values hispanic hispanic ;
 label values race race ;
 label values HISPRACE2 HISPRACE2 ;
 label values numkdhh numkdhh ;
 label values numfmhh numfmhh ;
 label values hhfamtyp hhfamtyp ;
 label values hhpartyp hhpartyp ;
 label values nchildhh nchildhh ;
 label values hhkidtyp hhkidtyp ;
 label values cspbbhh cspbbhh ;
 label values cspsbhh cspsbhh ;
 label values cspokdhh cspokdhh ;
 label values intctfam intctfam ;
 label values PARAGE14 PARAGE14 ;
 label values educmom educmom ;
 label values AGEMOMB1 AGEMOMB1 ;
 label values fmarno fmarno ;
 label values AGER_I AGER_I ;
 label values FMARITAL_I FMARITAL_I ;
 label values RMARITAL_I RMARITAL_I ;
 label values EDUCAT_I EDUCAT_I ;
 label values HIEDUC_I HIEDUC_I ;
 label values HISPANIC_I HISPANIC_I ;
 label values RACE_I RACE_I ;
 label values HISPRACE2_I HISPRACE2_I ;
 label values NUMKDHH_I NUMKDHH_I ;
 label values NUMFMHH_I NUMFMHH_I ;
 label values HHFAMTYP_I HHFAMTYP_I ;
 label values HHPARTYP_I HHPARTYP_I ;
 label values NCHILDHH_I NCHILDHH_I ;
 label values HHKIDTYP_I HHKIDTYP_I ;
 label values CSPBBHH_I CSPBBHH_I ;
 label values CSPSBHH_I CSPSBHH_I ;
 label values CSPOKDHH_I CSPOKDHH_I ;
 label values INTCTFAM_I INTCTFAM_I ;
 label values PARAGE14_I PARAGE14_I ;
 label values EDUCMOM_I EDUCMOM_I ;
 label values AGEMOMB1_I AGEMOMB1_I ;
 label values FMARNO_I FMARNO_I ;
 label values hadsex hadsex ;
 label values sexonce sexonce ;
 label values VRY1STSX VRY1STSX ;
 label values firstpflag firstpflag ;
 label values VRY1STAG VRY1STAG ;
 label values elapsed elapsed ;
 label values sexmar sexmar ;
 label values sexunion sexunion ;
 label values fsexrltn fsexrltn ;
 label values SEX1MTHD1 SEX1MTHD1 ;
 label values SEX1MTHD2 SEX1MTHD2 ;
 label values SEX1MTHD3 SEX1MTHD3 ;
 label values SEX1MTHD4 SEX1MTHD4 ;
 label values lsexdate lsexdate ;
 label values SEX3MO SEX3MO ;
 label values SEX12MO SEX12MO ;
 label values lsexprac lsexprac ;
 label values lsexrltn lsexrltn ;
 label values LSEXUSE1 LSEXUSE1 ;
 label values LSEXUSE2 LSEXUSE2 ;
 label values LSEXUSE3 LSEXUSE3 ;
 label values LSEXUSE4 LSEXUSE4 ;
 label values METH12M1 METH12M1 ;
 label values METH12M2 METH12M2 ;
 label values METH12M3 METH12M3 ;
 label values METH12M4 METH12M4 ;
 label values METH3M1 METH3M1 ;
 label values METH3M2 METH3M2 ;
 label values METH3M3 METH3M3 ;
 label values METH3M4 METH3M4 ;
 label values NUMP3MOS NUMP3MOS ;
 label values lifprtnr lifprtnr ;
 label values PARTS1YR PARTS1YR ;
 label values PARTDUR1 PARTDUR1 ;
 label values PARTDUR2 PARTDUR2 ;
 label values PARTDUR3 PARTDUR3 ;
 label values cohever cohever ;
 label values evmarcoh evmarcoh ;
 label values pmarrno pmarrno ;
 label values nonmarr nonmarr ;
 label values timescoh timescoh ;
 label values MARDAT01 MARDAT01 ;
 label values MARDAT02 MARDAT02 ;
 label values MARDAT03 MARDAT03 ;
 label values MARDAT04 MARDAT04 ;
 label values MARDAT05 MARDAT05 ;
 label values MAREND01 MAREND01 ;
 label values MAREND02 MAREND02 ;
 label values MAREND03 MAREND03 ;
 label values MAREND04 MAREND04 ;
 label values MAREND05 MAREND05 ;
 label values MARDIS01 MARDIS01 ;
 label values MARDIS02 MARDIS02 ;
 label values MARDIS03 MARDIS03 ;
 label values MARDIS04 MARDIS04 ;
 label values MARDIS05 MARDIS05 ;
 label values MAR1DISS MAR1DISS ;
 label values PREMARW1 PREMARW1 ;
 label values COHAB1 COHAB1 ;
 label values cohstat cohstat ;
 label values cohout cohout ;
 label values COH1DUR COH1DUR ;
 label values cspbiokd cspbiokd ;
 label values DATBABY1 DATBABY1 ;
 label values B1PREMAR B1PREMAR ;
 label values MARBABY1 MARBABY1 ;
 label values cebow cebow ;
 label values cebowc cebowc ;
 label values cebowp cebowp ;
 label values evrnopat evrnopat ;
 label values nonliveb nonliveb ;
 label values compreg compreg ;
 label values abortion abortion ;
 label values lossnum lossnum ;
 label values PARENT01 PARENT01 ;
 label values PARENT02 PARENT02 ;
 label values PARENT03 PARENT03 ;
 label values PARENT04 PARENT04 ;
 label values PARENT05 PARENT05 ;
 label values PARENT06 PARENT06 ;
 label values PARENT07 PARENT07 ;
 label values PARENT08 PARENT08 ;
 label values PARENT09 PARENT09 ;
 label values PARENT10 PARENT10 ;
 label values WANTB01 WANTB01 ;
 label values WANTB02 WANTB02 ;
 label values WANTB03 WANTB03 ;
 label values WANTB04 WANTB04 ;
 label values WANTB05 WANTB05 ;
 label values WANTB06 WANTB06 ;
 label values WANTB07 WANTB07 ;
 label values WANTB08 WANTB08 ;
 label values WANTB09 WANTB09 ;
 label values WANTB10 WANTB10 ;
 label values HADSEX_I HADSEX_I ;
 label values SEXONCE_I SEXONCE_I ;
 label values VRY1STSX_I VRY1STSX_I ;
 label values VRY1STAG_I VRY1STAG_I ;
 label values SEXMAR_I SEXMAR_I ;
 label values SEXUNION_I SEXUNION_I ;
 label values FSEXRLTN_I FSEXRLTN_I ;
 label values SEX1MTHD1_I SEX1MTHD1_I ;
 label values SEX1MTHD2_I SEX1MTHD2_I ;
 label values SEX1MTHD3_I SEX1MTHD3_I ;
 label values SEX1MTHD4_I SEX1MTHD4_I ;
 label values LSEXDATE_I LSEXDATE_I ;
 label values SEX3MO_I SEX3MO_I ;
 label values SEX12MO_I SEX12MO_I ;
 label values LSEXRAGE_I LSEXRAGE_I ;
 label values LSEXRLTN_I LSEXRLTN_I ;
 label values LSEXUSE1_I LSEXUSE1_I ;
 label values LSEXUSE2_I LSEXUSE2_I ;
 label values LSEXUSE3_I LSEXUSE3_I ;
 label values LSEXUSE4_I LSEXUSE4_I ;
 label values METH12M1_I METH12M1_I ;
 label values METH12M2_I METH12M2_I ;
 label values METH12M3_I METH12M3_I ;
 label values METH12M4_I METH12M4_I ;
 label values METH3M1_I METH3M1_I ;
 label values METH3M2_I METH3M2_I ;
 label values METH3M3_I METH3M3_I ;
 label values METH3M4_I METH3M4_I ;
 label values NUMP3MOS_I NUMP3MOS_I ;
 label values LIFPRTNR_I LIFPRTNR_I ;
 label values PARTS1YR_I PARTS1YR_I ;
 label values PARTDUR1_I PARTDUR1_I ;
 label values PARTDUR2_I PARTDUR2_I ;
 label values PARTDUR3_I PARTDUR3_I ;
 label values COHEVER_I COHEVER_I ;
 label values EVMARCOH_I EVMARCOH_I ;
 label values PMARRNO_I PMARRNO_I ;
 label values NONMARR_I NONMARR_I ;
 label values TIMESCOH_I TIMESCOH_I ;
 label values MARDAT01_I MARDAT01_I ;
 label values MARDAT02_I MARDAT02_I ;
 label values MARDAT03_I MARDAT03_I ;
 label values MARDAT04_I MARDAT04_I ;
 label values MARDAT05_I MARDAT05_I ;
 label values MAREND01_I MAREND01_I ;
 label values MAREND02_I MAREND02_I ;
 label values MAREND03_I MAREND03_I ;
 label values MAREND04_I MAREND04_I ;
 label values MAREND05_I MAREND05_I ;
 label values MARDIS01_I MARDIS01_I ;
 label values MARDIS02_I MARDIS02_I ;
 label values MARDIS03_I MARDIS03_I ;
 label values MARDIS04_I MARDIS04_I ;
 label values MARDIS05_I MARDIS05_I ;
 label values MAR1DISS_I MAR1DISS_I ;
 label values PREMARW1_I PREMARW1_I ;
 label values COHAB1_I COHAB1_I ;
 label values COHSTAT_I COHSTAT_I ;
 label values COHOUT_I COHOUT_I ;
 label values COH1DUR_I COH1DUR_I ;
 label values CSPBIOKD_I CSPBIOKD_I ;
 label values DATBABY1_I DATBABY1_I ;
 label values AGEBABY1_I AGEBABY1_I ;
 label values B1PREMAR_I B1PREMAR_I ;
 label values MARBABY1_I MARBABY1_I ;
 label values CEBOW_I CEBOW_I ;
 label values CEBOWC_I CEBOWC_I ;
 label values CEBOWP_I CEBOWP_I ;
 label values EVRNOPAT_I EVRNOPAT_I ;
 label values NONLIVEB_I NONLIVEB_I ;
 label values COMPREG_I COMPREG_I ;
 label values ABORTION_I ABORTION_I ;
 label values LOSSNUM_I LOSSNUM_I ;
 label values PARENT01_I PARENT01_I ;
 label values PARENT02_I PARENT02_I ;
 label values PARENT03_I PARENT03_I ;
 label values PARENT04_I PARENT04_I ;
 label values PARENT05_I PARENT05_I ;
 label values PARENT06_I PARENT06_I ;
 label values PARENT07_I PARENT07_I ;
 label values PARENT08_I PARENT08_I ;
 label values PARENT09_I PARENT09_I ;
 label values PARENT10_I PARENT10_I ;
 label values WANTB01_I WANTB01_I ;
 label values WANTB02_I WANTB02_I ;
 label values WANTB03_I WANTB03_I ;
 label values WANTB04_I WANTB04_I ;
 label values WANTB05_I WANTB05_I ;
 label values WANTB06_I WANTB06_I ;
 label values WANTB07_I WANTB07_I ;
 label values WANTB08_I WANTB08_I ;
 label values WANTB09_I WANTB09_I ;
 label values WANTB10_I WANTB10_I ;
 label values dadtype dadtype ;
 label values DADTYPU5 DADTYPU5 ;
 label values DADTYP518 DADTYP518 ;
 label values NUMCRU18 NUMCRU18 ;
 label values NUMNCU18 NUMNCU18 ;
 label values SUPP12MO SUPP12MO ;
 label values DADTYPE_I DADTYPE_I ;
 label values DADTYPU5_I DADTYPU5_I ;
 label values DADTYP518_I DADTYP518_I ;
 label values NUMCRU18_I NUMCRU18_I ;
 label values NUMNCU18_I NUMNCU18_I ;
 label values SUPP12MO_I SUPP12MO_I ;
 label values intent intent ;
 label values addexp addexp ;
 label values INTENT_I INTENT_I ;
 label values ADDEXP_I ADDEXP_I ;
 label values CURR_INS CURR_INS ;
 label values infever infever ;
 label values evhivtst evhivtst ;
 label values CURR_INS_I CURR_INS_I ;
 label values INFEVER_I INFEVER_I ;
 label values EVHIVTST_I EVHIVTST_I ;
 label values metro metro ;
 label values religion religion ;
 label values laborfor laborfor ;
 label values RELIGION_I RELIGION_I ;
 label values LABORFOR_I LABORFOR_I ;
 label values poverty poverty ;
 label values totincr totincr ;
 label values pubassis pubassis ;
 label values POVERTY_I POVERTY_I ;
 label values TOTINCR_I TOTINCR_I ;
 label values PUBASSIS_I PUBASSIS_I ;
 label values secu secu ;
 label values cmintvw cmintvw ;
 label values cmlstyr cmlstyr ;
 label values cmfivyr cmfivyr ;
 label values quarter quarter ;
 label values phase phase ;
 label values intvwyear intvwyear ;

#delimit cr

/********************************************************************

 Section 4: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace
