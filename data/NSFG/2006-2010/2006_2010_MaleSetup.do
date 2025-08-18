/**************************************************************************
 |                                                                         
 |           NATIONAL SURVEY OF FAMILY GROWTH (NSFG), 2006-2010
 |
 |                     STATA Male Data Setup File
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do nsfg_female_setup.do)
 |
 **************************************************************************/

set mem 50m  /* Allocating 50 megabyte(s) of RAM for Stata SE to read the
                 data file into memory. */


set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "data-filename" ==> The name of data file downloaded from ICPSR
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


label data "National Survey of Family Growth (NSFG), 2006-2010"

#delimit ;
 label define RSCRNINF
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RSCRAGE
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
  98 "Refused"
  99 "Don't know";

 label define RSCRHISP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RSCRRACE
   4 "Black or African American"
   5 "White"
   6 "Hispanic"
   8 "Refused"
   9 "Don't know";

 label define RANDVAR1
   1 "30% experimental group"
   2 "70% experimental group";

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
  98 "Refused"
  99 "Don't know";

 label define CMBIRTH
9998 "Refused"
9999 "Don't know";

 label define AGESCRN
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
  98 "Refused"
  99 "Don't know";

 label define MARSTAT
   1 "Married"
   2 "Not married but living together with a partner of the opposite sex"
   3 "Widowed"
   4 "Divorced"
   5 "Separated, because you and your spouse are not getting along"
   6 "Never been married"
   8 "Refused"
   9 "Don't know";

 label define FMARSTAT
   3 "Widowed"
   4 "Divorced"
   5 "Separated, because you and your spouse are not getting along"
   6 "Never been married"
   8 "Refused"
   9 "Don't know";

 label define FMARIT
   0 "DK/RF"
   1 "MARRIED"
   2 "WIDOWED"
   3 "DIVORCED"
   4 "SEPARATED"
   5 "NEVER MARRIED"
   8 "Refused"
   9 "Don't know";

 label define EVRMARRY
   0 "NEVER MARRIED"
   1 "EVER MARRIED"
   8 "Refused"
   9 "Don't know";

 label define HISP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HISPGRP
   1 "Mexican or Mexican-American"
   2 "All other Hispanic or Latino groups"
   8 "Refused"
   9 "Don't know";

 label define FL_RAGE
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define FL_RRACE
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define FL_RHISP
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define ROSCNT
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

 label define WPLOCALE
   1 "In household"
   2 "Lives elsewhere"
  98 "Refused"
  99 "Don't know";

 label define WOMREL
   1 "WIFE"
   2 "PARTNER"
   8 "Refused"
   9 "Don't know";

 label define GOSCHOL
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define VACA
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HIGRADE
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

 label define COMPGRD
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HAVEDIP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define DIPGED
   1 "High school diploma"
   2 "GED"
   3 "Both"
   5 "Y1:[Not a response option]/Y2+:Neither"
   8 "Refused"
   9 "Don't know";

 label define EARNHS_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define EARNHS_Y
9998 "Refused"
9999 "Don't know";

 label define CMHSGRAD
9998 "Refused"
9999 "Don't know";

 label define HISCHGRD
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

 label define LSTGRADE
   0 "No formal schooling"
   9 "9TH GRADE"
  10 "10TH GRADE"
  11 "11TH GRADE"
  12 "12TH GRADE"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define MYSCHOL_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define MYSCHOL_Y
9998 "Refused"
9999 "Don't know";

 label define CMLSTSCH
9998 "Refused"
9999 "Don't know";

 label define HAVEDEG
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define DEGREES
   1 "Associate's degree"
   2 "Bachelor's degree"
   3 "Master's degree"
   4 "Doctorate degree"
   5 "Professional school degree"
   8 "Refused"
   9 "Don't know";

 label define EARNBA_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define EARNBA_Y
9998 "Refused"
9999 "Don't know";

 label define CMBAGRAD
9998 "Refused"
9999 "Don't know";

 label define WTHPARNW
   1 "Both biological or adoptive parents"
   2 "Other or no parental figures"
   8 "Refused"
   9 "Don't know";

 label define ONOWN
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define ONOWN18
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define INTACT
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PARMARR
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define INTACT18
   1 "Yes"
   2 "No"
   8 "Refused"
   9 "Don't know";

 label define LVSIT14F
   1 "Biological mother"
   2 "Other mother figure"
   3 "No mother figure"
   8 "Refused"
   9 "Don't know";

 label define LVSIT14M
   1 "Biological father"
   2 "Step-father"
   3 "No father figure"
   4 "Other father figure"
   8 "Refused"
   9 "Don't know";

 label define WOMRASDU
   1 "Biological mother"
   2 "Other mother figure"
   3 "No mother figure"
   8 "Refused"
   9 "Don't know";

 label define MOMDEGRE
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college, including 2-year degrees"
   4 "Bachelor's degree or higher"
   8 "Refused"
   9 "Don't know";

 label define MOMWORKD
   1 "Full-time"
   2 "Part-time"
   3 "Equal amounts full-time and part-time"
   4 "Not at all (for pay)"
   8 "Refused"
   9 "Don't know";

 label define MOMCHILD
   0 "NO CHILDREN"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
   4 "4 CHILDREN"
   5 "5 CHILDREN"
   6 "6 CHILDREN OR MORE"
  98 "Refused"
  99 "Don't know";

 label define MOMFSTCH
   1 "LESS THAN 18 YEARS"
   2 "18-19 YEARS"
   3 "20-24 YEARS"
   4 "25-29 YEARS"
   5 "30 OR OLDER"
  98 "Refused"
  99 "Don't know";

 label define MOM18
   1 "Under 18"
   2 "18-19"
   3 "20-24"
   4 "25 or older"
   8 "Refused"
   9 "Don't know";

 label define MANRASDU
   1 "Biological father"
   2 "Step-father"
   3 "No father figure"
   4 "Other father figure"
   8 "Refused"
   9 "Don't know";

 label define DADDEGRE
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college, including 2-year degrees"
   4 "Bachelor's degree or higher"
   8 "Refused"
   9 "Don't know";

 label define TIMESMAR
   1 "1 TIME MARRIED"
   2 "2 TIMES MARRIED"
   3 "3 TIMES MARRIED"
  98 "Refused"
  99 "Don't know";

 label define EVCOHAB1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NUMCOH1
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
  98 "Refused"
  99 "Don't know";

 label define EVCOHAB2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NUMCOH2
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
  98 "Refused"
  99 "Don't know";

 label define EVRCOHAB
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define NUMWIFE
   0 "NEVER MARRIED"
   1 "1 TIME MARRIED"
   2 "2 TIMES MARRIED"
   3 "3 TIMES MARRIED"
  98 "Refused"
  99 "Don't know";

 label define NUMCOHAB
   0 "NO PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
 998 "Refused"
 999 "Don't know";

 label define EVERSEX
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RHADSEX
   0 "don't know/refused"
   1 "YES"
   2 "NO";

 label define SXMTONCE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define YNOSEX
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
   7 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define TALKPAR2
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom"
   7 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define TALKPAR3
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom"
   7 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define TALKPAR4
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom"
   7 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define TALKPAR5
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom"
   7 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define TALKPAR6
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom"
   7 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define SEDNO
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define SEDNOG
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

 label define SEDNOSX
   1 "Before"
   2 "After"
   8 "Refused"
   9 "Don't know";

 label define SEDBC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define SEDBCG
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

 label define SEDBCSX
   1 "Before"
   2 "After"
   8 "Refused"
   9 "Don't know";

 label define SEDSTD
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define SEDSTDG
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

 label define SEDSTDSX
   1 "Before"
   2 "After"
   8 "Refused"
   9 "Don't know";

 label define SEDHIV
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define SEDHIVG
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

 label define SEDHIVSX
   1 "Before"
   2 "After"
   8 "Refused"
   9 "Don't know";

 label define PLEDGE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define EVEROPER
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define TYPEOPER
   1 "Vasectomy"
   2 "Other operation"
   3 "Vasectomy failed"
   4 "Vasectomy already surgically reversed"
   8 "Refused"
   9 "Don't know";

 label define STEROPER
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define VASEC_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define VASEC_Y
9998 "Refused"
9999 "Don't know";

 label define CMVASEC
9998 "Refused"
9999 "Don't know";

 label define PLCSTROP
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
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define RVRSVAS
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define VASREV_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define VASREV_Y
9998 "Refused"
9999 "Don't know";

 label define CMRVRS
9998 "Refused"
9999 "Don't know";

 label define RSURGSTR
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define FATHPOSS
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FATHDIFF
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RSTRSTAT
   0 "NOT STERILE"
   1 "SURGICALLY STERILE"
   2 "NONSURGICALLY STERILE"
   8 "Refused"
   9 "Don't know";

 label define EVRCHIL
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define EVRCHILN
   1 "1 child"
   2 "2 children"
   3 "3 children"
  98 "Refused"
  99 "Don't know";

 label define FATHER
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define LIFEPRT
   1 "One"
   2 "Two"
   3 "Three"
   4 "Four"
   5 "Five"
   6 "Six"
   7 "Seven or more"
   8 "Refused"
   9 "Don't know";

 label define LIFEPRTS
   0 "NONE"
   1 "1 partner"
   2 "2 partners"
   3 "3 partners"
   4 "4 partners"
   5 "5 partners"
   6 "6 partners"
   7 "7 or more partners"
  98 "Refused"
  99 "Don't know";

 label define SXMON12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define MON12PRT
   0 "None"
   1 "One"
   2 "Two"
   3 "Three"
   4 "Four"
   5 "Five"
   6 "Six"
   7 "Seven or more"
   8 "Refused"
   9 "Don't know";

 label define MON12PRTS
   0 "NONE"
   1 "1 partner"
   2 "2 partners"
   3 "3 partners"
   4 "4 partners"
   5 "5 partners"
   6 "6 partners"
   7 "7 or more partners"
  98 "Refused"
  99 "Don't know";

 label define SEXSTAT
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

 label define SEXFREQ
   0 "NONE"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
 998 "Refused"
 999 "Don't know";

 label define CONFREQ
   0 "NONE"
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
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P1CURRWIFE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P1CURRSEP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P1RLTN2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P1COHABIT
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
9998 "Refused"
9999 "Don't know";

 label define CMLSXP1
9998 "Refused"
9999 "Don't know";

 label define P2RLTN1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P2CURRWIFE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P2CURRSEP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P2RLTN2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P2COHABIT
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
9998 "Refused"
9999 "Don't know";

 label define CMLSXP2
9998 "Refused"
9999 "Don't know";

 label define P3RLTN1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P3CURRWIFE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P3CURRSEP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P3RLTN2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P3COHABIT
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
9998 "Refused"
9999 "Don't know";

 label define CMLSXP3
9998 "Refused"
9999 "Don't know";

 label define P1RELATION
   0 "Inapplicable/NOT ASCERTAINED"
   1 "CURRENT WIFE, NOT SEPARATED"
   2 "CURRENT WIFE, SEPARATED"
   3 "CURRENT COHABITING PARTNER"
   4 "FORMER WIFE"
   5 "FORMER COHABITING PARTNER"
   6 "NEVER IN A MARITAL OR COHAB UNION WITH P"
   8 "Refused"
   9 "Don't know";

 label define P2RELATION
   0 "Inapplicable/NOT ASCERTAINED"
   1 "CURRENT WIFE, NOT SEPARATED"
   2 "CURRENT WIFE, SEPARATED"
   3 "CURRENT COHABITING PARTNER"
   4 "FORMER WIFE"
   5 "FORMER COHABITING PARTNER"
   6 "NEVER IN A MARITAL OR COHAB UNION WITH P"
   8 "Refused"
   9 "Don't know";

 label define P3RELATION
   0 "Inapplicable/NOT ASCERTAINED"
   1 "CURRENT WIFE, NOT SEPARATED"
   2 "CURRENT WIFE, SEPARATED"
   3 "CURRENT COHABITING PARTNER"
   4 "FORMER WIFE"
   5 "FORMER COHABITING PARTNER"
   6 "NEVER IN A MARITAL OR COHAB UNION WITH P"
   8 "Refused"
   9 "Don't know";

 label define FIRST
   1 "Y1:Yes/Y2+:Yes,[NAME OF LAST P]"
   2 "Y1:[Not a response option]/Y2+:Yes,[NAME OF 2ND-TO-LAST P]"
   3 "Y1:[Not a response option]/Y2+:Yes,[NAME OF 3RD-TO-LAST P]"
   5 "No";

 label define MARRDATE_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define MARRDATE_Y
9998 "Refused"
9999 "Don't know";

 label define CMCURMAR
9998 "Refused"
9999 "Don't know";

 label define HISAGEM
  98 "Refused"
  99 "Don't know";

 label define LIVTOGWF
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STRTWFCP_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STRTWFCP_Y
9998 "Refused"
9999 "Don't know";

 label define CMCURCOH
9998 "Refused"
9999 "Don't know";

 label define HISAGEC
  98 "Refused"
  99 "Don't know";

 label define CMSTRTWP
9998 "Refused"
9999 "Don't know";

 label define ENGATHEN
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define WILLMARR
   1 "No chance"
   2 "A little chance"
   3 "50-50 chance"
   4 "A pretty good chance"
   5 "An almost certain chance"
   8 "Refused"
   9 "Don't know";

 label define CWPDOB_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define CWPDOB_Y
9998 "Refused"
9999 "Don't know";

 label define CMCWPDOB
9998 "Refused"
9999 "Don't know";

 label define CWPAGE
  98 "Refused"
  99 "Don't know";

 label define CWPMULT
   1 "Yes, multiple races reported"
   2 "No, multiple races not reported"
   3 "Don't Know or Refused";

 label define CWPRACE
   1 "Black"
   2 "White"
   3 "Other"
   4 "Don't Know or Refused";

 label define CWPHRACE
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other"
   5 "Don't Know or Refused";

 label define CWPNRACE
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "Don't Know or Refused";

 label define CWPEDUCN
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college but no degree"
   4 "2-year college degree (e g , Associate's degree)"
   5 "4-year college graduate (e g , BA, BS)"
   6 "Graduate or professional school"
   8 "Refused"
   9 "Don't know";

 label define CWPBORN
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPMARBF
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
9998 "Refused"
9999 "Don't know";

 label define CWPSX1AG
  98 "Refused"
  99 "Don't know";

 label define CMFSXCWP
9998 "Refused"
9999 "Don't know";

 label define AGEFSXCWP
99998 "Refused"
99999 "Don't know";

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

 label define CWPFUSE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPOPSTR
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPTOTST
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPREVST
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PSURGSTR
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define CWPPOSS
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPDIFF
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PSTRSTAT
   0 "NOT STERILE"
   1 "SURGICALLY STERILE"
   2 "NONSURGICALLY STERILE"
   8 "Refused"
   9 "Don't know";

 label define CMLSXCWP
9998 "Refused"
9999 "Don't know";

 label define CWPLSXWN_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define CWPLSXWN_Y
9998 "Refused"
9999 "Don't know";

 label define CWPLUSE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPLMET01
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPLMET02
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPLUSE1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPLMET14
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPLMET15
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPLUSE2
   1 "Yes"
   5 "No"
   9 "Don't know (offered among response choices)"
  98 "Refused"
  99 "Don't know";

 label define DKCWPLUSE
   1 "Don't recall"
   2 "Never knew"
   8 "Refused"
   9 "Don't know";

 label define CWPLMET201
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

 label define CWPLMET202
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

 label define CWPLMET203
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

 label define DKCWPLMET
   1 "Don't recall"
   2 "Never knew"
   8 "Refused"
   9 "Don't know";

 label define CWPLSXUSE
   0 "NONE OR NO METHOD IDENTIFIED"
   1 "ANY METHOD IDENTIFIED"
   8 "Refused"
   9 "Don't know";

 label define CWPRECBC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPALLBC06
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define CWPBCMST
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define CONDFREQ
 998 "Refused"
 999 "Don't know";

 label define CWPNOFRQ
   1 "Every time"
   2 "Most of the time"
   3 "About half of the time"
   4 "Some of the time"
   5 "None of the time"
   8 "Refused"
   9 "Don't know";

 label define CWPBIOKD
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNUMKD
   1 "1 child"
   2 "2 children"
   3 "3 children"
  98 "Refused"
  99 "Don't know";

 label define PARTFATH
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSEX
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define CWPCHDOB_Y
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB
9998 "Refused"
9999 "Don't know";

 label define CWPCHMAR
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLRN
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

 label define CWPCHAGE
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define CWPCHLEG
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHOP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHFAR
99998 "Refused"
99999 "Don't know";

 label define CWPCHWNT
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define CWPCHSON
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHPY
  98 "Refused"
  99 "Don't know";

 label define CWPCHSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define CWPCHDOB_Y2
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB2
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHMAR2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPCHLEG2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHOP2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPCHHPY2
  98 "Refused"
  99 "Don't know";

 label define CWPCHSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define CWPCHDOB_Y3
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB3
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHMAR3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPCHLEG3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHOP3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPCHHPY3
  98 "Refused"
  99 "Don't know";

 label define CWPCHSEX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_M4
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define CWPCHDOB_Y4
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB4
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHMAR4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPCHLEG4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHOP4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPCHHPY4
  98 "Refused"
  99 "Don't know";

 label define CWPCHSEX5
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_M5
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define CWPCHDOB_Y5
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB5
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHMAR5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPCHLEG5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHOP5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPCHHPY5
  98 "Refused"
  99 "Don't know";

 label define CWPCHSEX6
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_M6
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define CWPCHDOB_Y6
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB6
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHMAR6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPCHLEG6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHOP6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPCHHPY6
  98 "Refused"
  99 "Don't know";

 label define CWPCHSEX7
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_M7
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define CWPCHDOB_Y7
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB7
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHMAR7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPCHLEG7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHOP7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPCHHPY7
  98 "Refused"
  99 "Don't know";

 label define CWPCHSEX8
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPCHDOB_M8
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define CWPCHDOB_Y8
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB8
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHMAR8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHRES8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPCHLEG8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHHOP8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPCHEVR8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPCHHPY8
  98 "Refused"
  99 "Don't know";

 label define CWPPRGNW
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPTRYPG
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPTRYLG
 998 "Refused"
 999 "Don't know";

 label define CWPCPWNT
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define CWPCPSON
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define CWPCPHPY
  98 "Refused"
  99 "Don't know";

 label define CWPOTKID
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPOKNUM
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define CWPOKAD
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPOKADN
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define CWPOKWTH
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPOKWTHN
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define CWPOKSEX
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

 label define CWPOKTRY
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPOKTHR
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

 label define CWPOKLIV3
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKFAR
99998 "Refused"
99999 "Don't know";

 label define CWPOKAGE
  98 "Refused"
  99 "Don't know";

 label define CWPOKSEX2
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

 label define CWPOKTRY2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPOKLIV10
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
  98 "Refused"
  99 "Don't know";

 label define CWPOKSEX3
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

 label define CWPOKTRY3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPOKLIV17
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
  98 "Refused"
  99 "Don't know";

 label define CWPOKSEX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPOKAD5
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPOKTRY4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define CWPOKLIV24
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
  98 "Refused"
  99 "Don't know";

 label define CWPOKSEX5
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPOKAD6
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPOKTRY5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPOKTHR5
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV29
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV30
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV31
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKFAR5
99998 "Refused"
99999 "Don't know";

 label define CWPOKAGE5
  98 "Refused"
  99 "Don't know";

 label define CWPOKSEX6
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPOKAD7
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPOKTRY6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPOKTHR6
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV36
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV37
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV38
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKFAR6
99998 "Refused"
99999 "Don't know";

 label define CWPOKAGE6
  98 "Refused"
  99 "Don't know";

 label define CWPOKSEX7
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPOKAD8
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPOKTRY7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPOKTHR7
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV43
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV44
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKLIV45
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPOKFAR7
99998 "Refused"
99999 "Don't know";

 label define CWPOKAGE7
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

 label define CWPNBEVR
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBNUM
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define CWPNBREL
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBRL
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define CWPNBFOS
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFS
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define CWPNBAD
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBADN
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
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
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD2
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX
   1 "Male"
   2 "Female"
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

 label define CWPNBFAR
99998 "Refused"
99999 "Don't know";

 label define CWPNBAGE
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
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD3
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR2
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX2
   1 "Male"
   2 "Female"
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
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD4
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR3
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX3
   1 "Male"
   2 "Female"
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
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD5
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR4
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX4
   1 "Male"
   2 "Female"
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
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD6
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR5
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX5
   1 "Male"
   2 "Female"
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
  98 "Refused"
  99 "Don't know";

 label define CWPNBREL7
   1 "Yes, by blood"
   3 "Yes, by marriage"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFOS7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD7
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR6
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX6
   1 "Male"
   2 "Female"
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
  98 "Refused"
  99 "Don't know";

 label define CWPNBREL8
   1 "Yes, by blood"
   3 "Yes, by marriage"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFOS8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD8
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR7
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX7
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV43
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV44
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFAR7
99998 "Refused"
99999 "Don't know";

 label define CWPNBAGE7
  98 "Refused"
  99 "Don't know";

 label define CWPNBREL9
   1 "Yes, by blood"
   3 "Yes, by marriage"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFOS9
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD9
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR8
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX8
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV50
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV51
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFAR8
99998 "Refused"
99999 "Don't know";

 label define CWPNBAGE8
  98 "Refused"
  99 "Don't know";

 label define CWPNBREL10
   1 "Yes, by blood"
   3 "Yes, by marriage"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFOS10
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD10
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY9
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR9
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX9
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV57
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV58
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFAR9
99998 "Refused"
99999 "Don't know";

 label define CWPNBAGE9
  98 "Refused"
  99 "Don't know";

 label define CWPNBREL11
   1 "Yes, by blood"
   3 "Yes, by marriage"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFOS11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBAD11
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTRY10
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CWPNBTHR10
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define CWPNBSEX10
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV64
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBLIV65
   1 "In this household full-time"
   2 "In this household part-time"
   3 "Away at school or college"
   4 "Living on own"
   5 "Living with other relatives"
   6 "Deceased"
   7 "Someplace else"
   8 "Refused"
   9 "Don't know";

 label define CWPNBFAR10
99998 "Refused"
99999 "Don't know";

 label define CWPNBAGE10
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

 label define MARDATEN_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define MARDATEN_Y
9998 "Refused"
9999 "Don't know";

 label define CMMARP
9998 "Refused"
9999 "Don't know";

 label define AGEMARR
  98 "Refused"
  99 "Don't know";

 label define LIVTOGN
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STRTLIVE_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STRTLIVE_Y
9998 "Refused"
9999 "Don't know";

 label define CMCOHP
9998 "Refused"
9999 "Don't know";

 label define AGELIV
  98 "Refused"
  99 "Don't know";

 label define CMUNIONP
9998 "Refused"
9999 "Don't know";

 label define ENGAGTHN
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define MARREND
   1 "Death of wife"
   2 "Divorce"
   3 "Annulment"
   4 "Separation"
   8 "Refused"
   9 "Don't know";

 label define WIFEDIED_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define WIFEDIED_Y
9998 "Refused"
9999 "Don't know";

 label define CMWIDP
9998 "Refused"
9999 "Don't know";

 label define DIVORFIN_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define DIVORFIN_Y
9998 "Refused"
9999 "Don't know";

 label define CMDIVP
9998 "Refused"
9999 "Don't know";

 label define ANNULLED_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define ANNULLED_Y
9998 "Refused"
9999 "Don't know";

 label define CMANNP
9998 "Refused"
9999 "Don't know";

 label define STOPLIVE_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STOPLIVE_Y
9998 "Refused"
9999 "Don't know";

 label define CMSTOPP
9998 "Refused"
9999 "Don't know";

 label define CURRPRTS
   0 "INAPP/DK/RF"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
  98 "Refused"
  99 "Don't know";

 label define PXCURR
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P1CURRPRT
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define PXMARRY
   1 "No chance"
   2 "A little chance"
   3 "50-50 chance"
   4 "A pretty good chance"
   5 "An almost certain chance"
   8 "Refused"
   9 "Don't know";

 label define PXLUSE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXLMETH01
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLMETH02
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLMETH03
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLMETH04
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLRUSE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXLPUSE
   1 "Yes"
   5 "No"
   9 "Don't know (offered among response choices)"
  98 "Refused"
  99 "Don't know";

 label define DKPXLPUSE
   1 "Don't recall"
   2 "Never knew"
   8 "Refused"
   9 "Don't know";

 label define PXLPMETH01
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

 label define PXLPMETH02
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

 label define PXLPMETH03
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

 label define PXLPMETH04
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

 label define DKPXLPMETH
   1 "Don't recall"
   2 "Never knew"
   8 "Refused"
   9 "Don't know";

 label define LSXUSEP
   0 "NONE OR NO METHOD IDENTIFIED"
   1 "ANY METHOD IDENTIFIED"
   8 "Refused"
   9 "Don't know";

 label define MTONCEP
   0 "NOT ASCERTAINED"
   1 "YES (MORE THAN ONCE)"
   2 "NO (ONCE)"
   8 "Refused"
   9 "Don't know";

 label define PXLSXPRB
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXMTONCE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXPAGE
  98 "Refused"
  99 "Don't know";

 label define PXRELAGE
   1 "Older"
   2 "Younger"
   3 "Same age"
   8 "Refused"
   9 "Don't know";

 label define PXRELYRS
   1 "1-2 years"
   2 "3-5 years"
   3 "6-10 years"
   4 "More than 10 years"
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

 label define P1YMULT1
   1 "Yes, multiple races reported"
   2 "No, multiple races not reported"
   3 "Don't Know or Refused";

 label define P1YRACE1
   1 "Black"
   2 "White"
   3 "Other"
   4 "Don't Know or Refused";

 label define P1YHRACE1
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other"
   5 "Don't Know or Refused";

 label define P1YNRACE1
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "Don't Know or Refused";

 label define PXDOB_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXDOB_Y
9998 "Refused"
9999 "Don't know";

 label define CMDOBP
9998 "Refused"
9999 "Don't know";

 label define PXEDUC
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college but no degree"
   4 "2-year college degree (e g , Associate's degree)"
   5 "4-year college graduate (e g , BA, BS)"
   6 "Graduate or professional school"
   8 "Refused"
   9 "Don't know";

 label define PXMARBF
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXANYCH
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXANYCHN
   1 "1 CHILD"
   2 "2 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define PXABLECH
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
9998 "Refused"
9999 "Don't know";

 label define CMFSXP
9998 "Refused"
9999 "Don't know";

 label define AGEFSXP
  97 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define PXAGFRST
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

 label define PXFUSE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXANYUSE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXMSTUSE
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXCONFRQ
 998 "Refused"
 999 "Don't know";

 label define PXNOFREQ
   1 "Every time"
   2 "Most of the time"
   3 "About half of the time"
   4 "Some of the time"
   5 "None of the time"
   8 "Refused"
   9 "Don't know";

 label define PXCHILD
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXSEX
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB11
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW
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

 label define PXCXAGE
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR
99998 "Refused"
99999 "Don't know";

 label define PXWANT
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y2
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB12
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXCXAGE2
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXHPYPG2
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y3
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB13
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT13
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXCXAGE3
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXHPYPG3
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M4
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y4
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB14
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT14
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXCXAGE4
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXHPYPG4
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX5
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M5
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y5
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB15
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT15
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXCXAGE5
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXHPYPG5
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX6
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M6
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y6
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB16
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT16
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW6
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV51
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

 label define PXCXLIV52
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

 label define PXCXAGE6
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR6
99998 "Refused"
99999 "Don't know";

 label define PXWANT6
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON6
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG6
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX7
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M7
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y7
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB17
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT17
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW7
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV61
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

 label define PXCXLIV62
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

 label define PXCXAGE7
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR7
99998 "Refused"
99999 "Don't know";

 label define PXWANT7
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON7
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG7
  98 "Refused"
  99 "Don't know";

 label define PXCPREG
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXTRYING
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXTRYLONG
 998 "Refused"
 999 "Don't know";

 label define PXRWANT
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXRSOON
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXCPFEEL
  98 "Refused"
  99 "Don't know";

 label define PXOTKID
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXOKNUM
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXOKWTH
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXOKWTHN
   1 "1 child"
   2 "2 children"
   3 "3 children"
  98 "Refused"
  99 "Don't know";

 label define PXOKADP1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXOKADN
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXOKSEX
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXOKAD
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXOKLIV1
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
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
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKFAR
99998 "Refused"
99999 "Don't know";

 label define PXOKAGE
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define D_OKAKIDS
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBEVR
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXNBNUM
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBREL
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXNBRL
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBFOS
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXNBFS
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBAD
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXNBADN
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBSEX
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXNBLIV1
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXNBFAR
99998 "Refused"
99999 "Don't know";

 label define PXNBAGE
  98 "Refused"
  99 "Don't know";

 label define PXNBSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXNBLIV9
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define D_NBAKIDS
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define MARDATEN_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define MARDATEN_Y2
9998 "Refused"
9999 "Don't know";

 label define CMMARP2
9998 "Refused"
9999 "Don't know";

 label define AGEMARR2
  98 "Refused"
  99 "Don't know";

 label define LIVTOGN2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STRTLIVE_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STRTLIVE_Y2
9998 "Refused"
9999 "Don't know";

 label define CMCOHP2
9998 "Refused"
9999 "Don't know";

 label define AGELIV2
  98 "Refused"
  99 "Don't know";

 label define CMUNIONP2
9998 "Refused"
9999 "Don't know";

 label define ENGAGTHN2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define MARREND2
   1 "Death of wife"
   2 "Divorce"
   3 "Annulment"
   4 "Separation"
   8 "Refused"
   9 "Don't know";

 label define WIFEDIED_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define WIFEDIED_Y2
9998 "Refused"
9999 "Don't know";

 label define CMWIDP2
9998 "Refused"
9999 "Don't know";

 label define DIVORFIN_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define DIVORFIN_Y2
9998 "Refused"
9999 "Don't know";

 label define CMDIVP2
9998 "Refused"
9999 "Don't know";

 label define ANNULLED_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define ANNULLED_Y2
9998 "Refused"
9999 "Don't know";

 label define CMANNP2
9998 "Refused"
9999 "Don't know";

 label define STOPLIVE_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STOPLIVE_Y2
9998 "Refused"
9999 "Don't know";

 label define CMSTOPP2
9998 "Refused"
9999 "Don't know";

 label define PXCURR2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P2CURRPRT
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define PXMARRY2
   1 "No chance"
   2 "A little chance"
   3 "50-50 chance"
   4 "A pretty good chance"
   5 "An almost certain chance"
   8 "Refused"
   9 "Don't know";

 label define PXLUSE2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXLMETH14
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLMETH15
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLMETH16
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLMETH17
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLRUSE2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
   9 "Don't know (offered among response choices)"
  98 "Refused"
  99 "Don't know";

 label define DKPXLPUSE2
   1 "Don't recall"
   2 "Never knew"
   8 "Refused"
   9 "Don't know";

 label define PXLPMETH12
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

 label define PXLPMETH13
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

 label define PXLPMETH14
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

 label define PXLPMETH15
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

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
   2 "NO (ONCE)"
   8 "Refused"
   9 "Don't know";

 label define PXLSXPRB2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXMTONCE2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXPAGE2
  98 "Refused"
  99 "Don't know";

 label define PXRELAGE2
   1 "Older"
   2 "Younger"
   3 "Same age"
   8 "Refused"
   9 "Don't know";

 label define PXRELYRS2
   1 "1-2 years"
   2 "3-5 years"
   3 "6-10 years"
   4 "More than 10 years"
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

 label define P1YMULT2
   1 "Yes, multiple races reported"
   2 "No, multiple races not reported"
   3 "Don't Know or Refused";

 label define P1YRACE2
   1 "Black"
   2 "White"
   3 "Other"
   4 "Don't Know or Refused";

 label define P1YHRACE2
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other"
   5 "Don't Know or Refused";

 label define P1YNRACE2
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "Don't Know or Refused";

 label define PXDOB_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXDOB_Y2
9998 "Refused"
9999 "Don't know";

 label define CMDOBP2
9998 "Refused"
9999 "Don't know";

 label define PXEDUC2
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college but no degree"
   4 "2-year college degree (e g , Associate's degree)"
   5 "4-year college graduate (e g , BA, BS)"
   6 "Graduate or professional school"
   8 "Refused"
   9 "Don't know";

 label define PXMARBF2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXANYCH2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXANYCHN2
   1 "1 CHILD"
   2 "2 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define PXABLECH2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXSXFRST_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXSXFRST_Y2
9998 "Refused"
9999 "Don't know";

 label define CMFSXP2
9998 "Refused"
9999 "Don't know";

 label define AGEFSXP2
  97 "Not ascertained"
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
   7 "Not ascertained"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXANYUSE2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
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

 label define PXCHILD2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXSEX11
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M11
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y11
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB21
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT21
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXCXAGE11
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXHPYPG11
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX12
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M12
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y12
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB22
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT22
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXCXAGE12
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXHPYPG12
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX13
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M13
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y13
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB23
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT23
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB13
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES13
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXCXAGE13
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW13
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP13
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER13
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXHPYPG13
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX14
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M14
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y14
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB24
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT24
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB14
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES14
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXCXAGE14
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW14
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP14
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER14
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXHPYPG14
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX15
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M15
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y15
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB25
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT25
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB15
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES15
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXKNOW15
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define PXCXLIV141
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

 label define PXCXLIV142
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

 label define PXCXAGE15
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW15
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP15
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER15
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXFAR15
99998 "Refused"
99999 "Don't know";

 label define PXWANT15
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PXSOON15
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define PXHPYPG15
  98 "Refused"
  99 "Don't know";

 label define PXCPREG2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXTRYING2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXCPFEEL2
  98 "Refused"
  99 "Don't know";

 label define PXOTKID2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXOKNUM2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXOKADP2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXOKADN2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXOKWTH2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define PXOKSEX14
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXOKAD14
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXOKLIV105
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKFAR14
99998 "Refused"
99999 "Don't know";

 label define PXOKAGE14
  98 "Refused"
  99 "Don't know";

 label define D_OKAKIDS2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBEVR2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXNBNUM2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBREL2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXNBRL2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBFOS2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXNBFS2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBAD2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define D_NBAKIDS2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define MARDATEN_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define MARDATEN_Y3
9998 "Refused"
9999 "Don't know";

 label define CMMARP3
9998 "Refused"
9999 "Don't know";

 label define AGEMARR3
  98 "Refused"
  99 "Don't know";

 label define LIVTOGN3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STRTLIVE_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STRTLIVE_Y3
9998 "Refused"
9999 "Don't know";

 label define CMCOHP3
9998 "Refused"
9999 "Don't know";

 label define AGELIV3
  98 "Refused"
  99 "Don't know";

 label define CMUNIONP3
9998 "Refused"
9999 "Don't know";

 label define ENGAGTHN3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define MARREND3
   1 "Death of wife"
   2 "Divorce"
   3 "Annulment"
   4 "Separation"
   8 "Refused"
   9 "Don't know";

 label define WIFEDIED_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define WIFEDIED_Y3
9998 "Refused"
9999 "Don't know";

 label define CMWIDP3
9998 "Refused"
9999 "Don't know";

 label define DIVORFIN_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define DIVORFIN_Y3
9998 "Refused"
9999 "Don't know";

 label define CMDIVP3
9998 "Refused"
9999 "Don't know";

 label define ANNULLED_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define ANNULLED_Y3
9998 "Refused"
9999 "Don't know";

 label define CMANNP3
9998 "Refused"
9999 "Don't know";

 label define STOPLIVE_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STOPLIVE_Y3
9998 "Refused"
9999 "Don't know";

 label define CMSTOPP3
9998 "Refused"
9999 "Don't know";

 label define PXCURR3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define P3CURRPRT
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define PXMARRY3
   1 "No chance"
   2 "A little chance"
   3 "50-50 chance"
   4 "A pretty good chance"
   5 "An almost certain chance"
   8 "Refused"
   9 "Don't know";

 label define PXLUSE3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXLMETH27
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLMETH28
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLMETH29
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLMETH30
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXLRUSE3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
   9 "Don't know (offered among response choices)"
  98 "Refused"
  99 "Don't know";

 label define DKPXLPUSE3
   1 "Don't recall"
   2 "Never knew"
   8 "Refused"
   9 "Don't know";

 label define PXLPMETH23
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

 label define PXLPMETH24
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

 label define PXLPMETH25
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

 label define PXLPMETH26
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  99 "Don't know (offered among response choices)"
 998 "Refused"
 999 "Don't know";

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
   2 "NO (ONCE)"
   8 "Refused"
   9 "Don't know";

 label define PXLSXPRB3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXMTONCE3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXPAGE3
  98 "Refused"
  99 "Don't know";

 label define PXRELAGE3
   1 "Older"
   2 "Younger"
   3 "Same age"
   8 "Refused"
   9 "Don't know";

 label define PXRELYRS3
   1 "1-2 years"
   2 "3-5 years"
   3 "6-10 years"
   4 "More than 10 years"
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

 label define P1YMULT3
   1 "Yes, multiple races reported"
   2 "No, multiple races not reported"
   3 "Don't Know or Refused";

 label define P1YRACE3
   1 "Black"
   2 "White"
   3 "Other"
   4 "Don't Know or Refused";

 label define P1YHRACE3
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other"
   5 "Don't Know or Refused";

 label define P1YNRACE3
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "Don't Know or Refused";

 label define PXDOB_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXDOB_Y3
9998 "Refused"
9999 "Don't know";

 label define CMDOBP3
9998 "Refused"
9999 "Don't know";

 label define PXEDUC3
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college but no degree"
   4 "2-year college degree (e g , Associate's degree)"
   5 "4-year college graduate (e g , BA, BS)"
   6 "Graduate or professional school"
   8 "Refused"
   9 "Don't know";

 label define PXMARBF3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXANYCH3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXANYCHN3
   1 "1 CHILD"
   2 "2 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define PXABLECH3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXSXFRST_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXSXFRST_Y3
9998 "Refused"
9999 "Don't know";

 label define CMFSXP3
9998 "Refused"
9999 "Don't know";

 label define AGEFSXP3
  97 "Not ascertained"
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
   7 "Not ascertained"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define PXANYUSE3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
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

 label define PXCHILD3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXSEX21
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M21
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y21
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB31
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT31
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB21
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES21
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXCXAGE21
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW21
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP21
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER21
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXHPYPG21
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX22
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M22
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y22
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB32
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT32
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB22
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES22
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXCXAGE22
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW22
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP22
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER22
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXHPYPG22
  98 "Refused"
  99 "Don't know";

 label define PXCXSEX23
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXCXBORN_M23
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y23
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB33
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT33
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXMARB23
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXRES23
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXCXAGE23
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define PXCXLAW23
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXHOP23
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXCXEVER23
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXHPYPG23
  98 "Refused"
  99 "Don't know";

 label define PXCPREG3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXTRYING3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define PXCPFEEL3
  98 "Refused"
  99 "Don't know";

 label define CURRPREG
   0 "INAPP/DK/RF"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define PXOTKID3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXOKNUM3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXOKADP3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXOKADN3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXOKWTH3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define PXOKSEX23
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define PXOKAD23
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define PXOKLIV177
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define PXOKFAR23
99998 "Refused"
99999 "Don't know";

 label define PXOKAGE23
  98 "Refused"
  99 "Don't know";

 label define D_OKAKIDS3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBEVR3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXNBNUM3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBREL3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXNBRL3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBFOS3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PXNBFS3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define PXNBAD3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define D_NBAKIDS3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FPFIRST_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FPFIRST_Y
9998 "Refused"
9999 "Don't know";

 label define CMFSTSEX
9998 "Refused"
9999 "Don't know";

 label define FSTSEXAGE
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define FPAGE
  98 "Refused"
  99 "Don't know";

 label define FPAGE18
   1 "Less than 18"
   2 "18 years or older"
   8 "Refused"
   9 "Don't know";

 label define FPAGE15
   1 "Less than 15"
   2 "15 years or older"
   8 "Refused"
   9 "Don't know";

 label define FPAGE20
   1 "Less than 20"
   2 "20 years or older"
   8 "Refused"
   9 "Don't know";

 label define RFSXAGEGP
   1 "Less than 15"
   2 "15 or older but less than 18"
   3 "18 or older but less than 20"
   4 "20 or older";

 label define FPPAGE
  98 "Refused"
  99 "Don't know";

 label define FPRELAGE
   1 "Older"
   2 "Younger"
   3 "Same age"
   8 "Refused"
   9 "Don't know";

 label define FPRELYRS
   1 "1-2 years"
   2 "3-5 years"
   3 "6-10 years"
   4 "More than 10 years"
   8 "Refused"
   9 "Don't know";

 label define FPRLTN
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

 label define FPUSE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
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
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "Y1: Something else/Y2+: IUD, coil, or loop"
  13 "Y1:[Not a response option]/Y2+: Something else"
  98 "Refused"
  99 "Don't know";

 label define FPPROBE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NFORMWIFE
   0 "NONE"
   1 "1 FORMER WIFE"
   2 "2 FORMER WIVES"
   3 "3 FORMER WIVES"
   4 "4 FORMER WIVES"
   8 "Refused"
   9 "Don't know";

 label define NFORMCOHAB
   0 "NONE"
   1 "1 FORMER COHABITING PARTNER"
   2 "2 FORMER COHABITING PARTNERS"
 998 "Refused"
 999 "Don't know";

 label define FWVERIFY
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWVER
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define FWVERIFY2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWVER2
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define FWVERIFY3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWVER3
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define FCVER
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define FCVERIFY
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define EXRELATION
   0 "FORMER COHAB PARTNER"
   1 "FORMER WIFE"
   8 "Refused"
   9 "Don't know";

 label define FWMAREND_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWMAREND_Y
9998 "Refused"
9999 "Don't know";

 label define CMMARW
9998 "Refused"
9999 "Don't know";

 label define AGEMARRN
  98 "Refused"
  99 "Don't know";

 label define LIVTOGN4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STRTLIVE_M4
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STRTLIVE_Y4
9998 "Refused"
9999 "Don't know";

 label define CMCOHW
9998 "Refused"
9999 "Don't know";

 label define AGELIV4
  98 "Refused"
  99 "Don't know";

 label define CMUNIONW
9998 "Refused"
9999 "Don't know";

 label define ENGAGTHN4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define MARREND4
   1 "Death of wife"
   2 "Divorce"
   3 "Annulment"
   4 "Separation"
   8 "Refused"
   9 "Don't know";

 label define WIFEDIED_M4
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define WIFEDIED_Y4
9998 "Refused"
9999 "Don't know";

 label define CMWIDW
9998 "Refused"
9999 "Don't know";

 label define DIVORFIN_M4
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define DIVORFIN_Y4
9998 "Refused"
9999 "Don't know";

 label define CMDIVW
9998 "Refused"
9999 "Don't know";

 label define ANNULLED_M4
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define ANNULLED_Y4
9998 "Refused"
9999 "Don't know";

 label define CMANNW
9998 "Refused"
9999 "Don't know";

 label define STOPLIVE_M4
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STOPLIVE_Y4
9998 "Refused"
9999 "Don't know";

 label define CMSTOPW
9998 "Refused"
9999 "Don't know";

 label define EXRELATION2
   0 "FORMER COHAB PARTNER"
   1 "FORMER WIFE"
   8 "Refused"
   9 "Don't know";

 label define FWMAREND_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWMAREND_Y2
9998 "Refused"
9999 "Don't know";

 label define CMMARW2
9998 "Refused"
9999 "Don't know";

 label define AGEMARRN2
  98 "Refused"
  99 "Don't know";

 label define LIVTOGN5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STRTLIVE_M5
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STRTLIVE_Y5
9998 "Refused"
9999 "Don't know";

 label define CMCOHW2
9998 "Refused"
9999 "Don't know";

 label define AGELIV5
  98 "Refused"
  99 "Don't know";

 label define CMUNIONW2
9998 "Refused"
9999 "Don't know";

 label define ENGAGTHN5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define MARREND5
   1 "Death of wife"
   2 "Divorce"
   3 "Annulment"
   4 "Separation"
   8 "Refused"
   9 "Don't know";

 label define WIFEDIED_M5
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define WIFEDIED_Y5
9998 "Refused"
9999 "Don't know";

 label define CMWIDW2
9998 "Refused"
9999 "Don't know";

 label define DIVORFIN_M5
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define DIVORFIN_Y5
9998 "Refused"
9999 "Don't know";

 label define CMDIVW2
9998 "Refused"
9999 "Don't know";

 label define ANNULLED_M5
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define ANNULLED_Y5
9998 "Refused"
9999 "Don't know";

 label define CMANNW2
9998 "Refused"
9999 "Don't know";

 label define STOPLIVE_M5
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STOPLIVE_Y5
9998 "Refused"
9999 "Don't know";

 label define CMSTOPW2
9998 "Refused"
9999 "Don't know";

 label define EXRELATION3
   0 "FORMER COHAB PARTNER"
   1 "FORMER WIFE"
   8 "Refused"
   9 "Don't know";

 label define FWMAREND_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWMAREND_Y3
9998 "Refused"
9999 "Don't know";

 label define CMMARW3
9998 "Refused"
9999 "Don't know";

 label define AGEMARRN3
  98 "Refused"
  99 "Don't know";

 label define LIVTOGN6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STRTLIVE_M6
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STRTLIVE_Y6
9998 "Refused"
9999 "Don't know";

 label define CMCOHW3
9998 "Refused"
9999 "Don't know";

 label define AGELIV6
  98 "Refused"
  99 "Don't know";

 label define CMUNIONW3
9998 "Refused"
9999 "Don't know";

 label define ENGAGTHN6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define MARREND6
   1 "Death of wife"
   2 "Divorce"
   3 "Annulment"
   4 "Separation"
   8 "Refused"
   9 "Don't know";

 label define WIFEDIED_M6
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define WIFEDIED_Y6
9998 "Refused"
9999 "Don't know";

 label define CMWIDW3
9998 "Refused"
9999 "Don't know";

 label define DIVORFIN_M6
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define DIVORFIN_Y6
9998 "Refused"
9999 "Don't know";

 label define CMDIVW3
9998 "Refused"
9999 "Don't know";

 label define ANNULLED_M6
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define ANNULLED_Y6
9998 "Refused"
9999 "Don't know";

 label define CMANNW3
9998 "Refused"
9999 "Don't know";

 label define STOPLIVE_M6
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STOPLIVE_Y6
9998 "Refused"
9999 "Don't know";

 label define CMSTOPW3
9998 "Refused"
9999 "Don't know";

 label define EXRELATION11
   0 "FORMER COHAB PARTNER"
   1 "FORMER WIFE"
   8 "Refused"
   9 "Don't know";

 label define STRTLIVE_M14
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STRTLIVE_Y14
9998 "Refused"
9999 "Don't know";

 label define CMCOHFC11
9998 "Refused"
9999 "Don't know";

 label define AGELIV14
  98 "Refused"
  99 "Don't know";

 label define ENGAGTHN14
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STOPLIVE_M14
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STOPLIVE_Y14
9998 "Refused"
9999 "Don't know";

 label define CMSTOPFC11
9998 "Refused"
9999 "Don't know";

 label define FWPDOB_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPDOB_Y
9998 "Refused"
9999 "Don't know";

 label define CMFWPDOB
9998 "Refused"
9999 "Don't know";

 label define FWPAGE
  98 "Refused"
  99 "Don't know";

 label define WIF1MULT
   1 "Yes, multiple races reported"
   2 "No, multiple races not reported"
   3 "Don't Know or Refused";

 label define WIF1RACE
   1 "Black"
   2 "White"
   3 "Other"
   4 "Don't Know or Refused";

 label define WIF1HRACE
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other"
   5 "Don't Know or Refused";

 label define WIF1NRACE
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "Don't Know or Refused";

 label define FWPMARBF
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPDOB_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPDOB_Y2
9998 "Refused"
9999 "Don't know";

 label define CMFWPDOB2
9998 "Refused"
9999 "Don't know";

 label define FWPAGE2
  98 "Refused"
  99 "Don't know";

 label define FWPMARBF2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPDOB_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPDOB_Y3
9998 "Refused"
9999 "Don't know";

 label define CMFWPDOB3
9998 "Refused"
9999 "Don't know";

 label define FWPAGE3
  98 "Refused"
  99 "Don't know";

 label define FWPMARBF3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPDOB_M11
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPDOB_Y11
9998 "Refused"
9999 "Don't know";

 label define CMFWPDOB11
9998 "Refused"
9999 "Don't know";

 label define FWPAGE11
  98 "Refused"
  99 "Don't know";

 label define COH1MULT
   1 "Yes, multiple races reported"
   2 "No, multiple races not reported"
   3 "Don't Know or Refused";

 label define COH1RACE
   1 "Black"
   2 "White"
   3 "Other"
   4 "Don't Know or Refused";

 label define COH1HRACE
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other"
   5 "Don't Know or Refused";

 label define COH1NRACE
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "Don't Know or Refused";

 label define FWPMARBF11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPBIOKD
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNUMKD
   0 "No children"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children"
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB41
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT41
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN
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

 label define FWPCHAGE
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLEG
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y2
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB42
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT42
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPCHLEG2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPHPYPG2
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y3
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB43
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT43
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPCHLEG3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPHPYPG3
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_M4
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y4
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB44
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT44
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPCHLEG4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPHPYPG4
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX5
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_M5
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y5
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB45
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT45
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN5
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV41
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

 label define FWPCHLIV42
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

 label define FWPCHLIV43
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

 label define FWPCHAGE5
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLEG5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR5
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT5
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON5
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG5
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX6
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_M6
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y6
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB46
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT46
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN6
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV51
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

 label define FWPCHLIV52
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

 label define FWPCHLIV53
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

 label define FWPCHAGE6
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLEG6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR6
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT6
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON6
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG6
  98 "Refused"
  99 "Don't know";

 label define FWPBIOKD2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNUMKD2
   0 "No children"
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

 label define FWPCHDOB_M11
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y11
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB51
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT51
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPCHLEG11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPHPYPG11
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX12
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_M12
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y12
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB52
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT52
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPCHLEG12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPHPYPG12
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX13
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_M13
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y13
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB53
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT53
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB13
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES13
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPCHLEG13
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP13
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR13
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPHPYPG13
  98 "Refused"
  99 "Don't know";

 label define FWPBIOKD3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNUMKD3
   0 "No children"
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

 label define FWPCHDOB_M21
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y21
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB61
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT61
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB21
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES21
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPCHLEG21
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP21
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR21
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPHPYPG21
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX22
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_M22
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y22
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB62
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT62
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB22
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES22
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPCHLEG22
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP22
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR22
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPHPYPG22
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX23
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_M23
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y23
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB63
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT63
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWCHMARB23
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES23
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN23
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV221
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

 label define FWPCHLIV222
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

 label define FWPCHLIV223
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

 label define FWPCHAGE23
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLEG23
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP23
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR23
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR23
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT23
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON23
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG23
  98 "Refused"
  99 "Don't know";

 label define FWPBIOKD11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNUMKD11
   0 "No children"
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

 label define FWPCHDOB_M101
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y101
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB141
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT141
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES101
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPCHLEG101
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP101
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR101
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPHPYPG101
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX102
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_M102
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y102
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB142
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT142
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES102
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPCHLEG102
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP102
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR102
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPHPYPG102
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX103
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_M103
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y103
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB143
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT143
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES103
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPCHLEG103
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP103
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR103
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPHPYPG103
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX104
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_M104
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y104
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB144
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT144
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES104
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPCHLEG104
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP104
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR104
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define FWPHPYPG104
  98 "Refused"
  99 "Don't know";

 label define FWPCHSEX105
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPCHDOB_M105
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y105
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB145
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT145
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHRES105
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLRN105
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLIV1041
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

 label define FWPCHLIV1042
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

 label define FWPCHLIV1043
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

 label define FWPCHAGE105
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define FWPCHLEG105
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHHOP105
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHEVR105
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPCHFAR105
99998 "Refused"
99999 "Don't know";

 label define FWPRWANT105
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FWPSOON105
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define FWPHPYPG105
  98 "Refused"
  99 "Don't know";

 label define FWPOTKID
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPOKNUM
  98 "Refused"
  99 "Don't know";

 label define FWPOKWTH
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPOKWTHN
  98 "Refused"
  99 "Don't know";

 label define FWPOKADP1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPOKADN
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV1
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKLIV2
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE
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
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKLIV10
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
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
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKLIV18
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
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
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKLIV26
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define E_OKAKIDS
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPOTKID2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPOKNUM2
  98 "Refused"
  99 "Don't know";

 label define FWPOKWTH2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPOKWTHN2
  98 "Refused"
  99 "Don't know";

 label define FWPOKADP2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPOKADN2
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define E_OKAKIDS2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPOTKID3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPOKNUM3
  98 "Refused"
  99 "Don't know";

 label define FWPOKWTH3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPOKWTHN3
  98 "Refused"
  99 "Don't know";

 label define FWPOKADP3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPOKADN3
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define E_OKAKIDS3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPOTKID11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPOKNUM11
  98 "Refused"
  99 "Don't know";

 label define FWPOKWTH11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPOKWTHN11
  98 "Refused"
  99 "Don't know";

 label define FWPOKADP11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPOKADN11
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define FWPOKSEX106
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPOKAD106
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither"
   8 "Refused"
   9 "Don't know";

 label define FWPOKLIV841
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPOKFAR106
99998 "Refused"
99999 "Don't know";

 label define FWPOKAGE106
  98 "Refused"
  99 "Don't know";

 label define E_OKAKIDS11
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPNBEVR
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBNUM
  98 "Refused"
  99 "Don't know";

 label define FWPNBREL
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBRL
  98 "Refused"
  99 "Don't know";

 label define FWPNBFOS
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBFS
  98 "Refused"
  99 "Don't know";

 label define FWPNBAD
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBADN
  98 "Refused"
  99 "Don't know";

 label define FWPNBSEX
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV1
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBFAR
99998 "Refused"
99999 "Don't know";

 label define FWPNBAGE
  98 "Refused"
  99 "Don't know";

 label define FWPNBSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV9
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define FWPNBSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV17
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define FWPNBSEX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV25
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define FWPNBFAR4
99998 "Refused"
99999 "Don't know";

 label define FWPNBAGE4
  98 "Refused"
  99 "Don't know";

 label define E_NBAKIDS
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPNBEVR2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBNUM2
  98 "Refused"
  99 "Don't know";

 label define FWPNBREL2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBRL2
  98 "Refused"
  99 "Don't know";

 label define FWPNBFOS2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBFS2
  98 "Refused"
  99 "Don't know";

 label define FWPNBAD2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBADN2
  98 "Refused"
  99 "Don't know";

 label define FWPNBSEX11
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV81
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define E_NBAKIDS2
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPNBEVR3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBNUM3
  98 "Refused"
  99 "Don't know";

 label define FWPNBREL3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBRL3
  98 "Refused"
  99 "Don't know";

 label define FWPNBFOS3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBFS3
  98 "Refused"
  99 "Don't know";

 label define FWPNBAD3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBADN3
  98 "Refused"
  99 "Don't know";

 label define FWPNBSEX21
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV161
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define E_NBAKIDS3
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define FWPNBEVR11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBNUM11
  98 "Refused"
  99 "Don't know";

 label define FWPNBREL11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBRL11
  98 "Refused"
  99 "Don't know";

 label define FWPNBFOS11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBFS11
  98 "Refused"
  99 "Don't know";

 label define FWPNBAD11
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FWPNBADN11
  98 "Refused"
  99 "Don't know";

 label define FWPNBSEX101
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define FWPNBLIV801
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define E_NBAKIDS11
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define OTBCHIL
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OTBPROBE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OTBCHILN
   1 "1 child"
   2 "2 children"
   3 "3 children"
  98 "Refused"
  99 "Don't know";

 label define OTBSAME
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCSEXX
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define OBCDOB_Y
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB151
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT151
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX
  98 "Refused"
  99 "Don't know";

 label define OBCMLIV
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCKNOWX
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

 label define OBCAGE
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older"
   8 "Refused"
   9 "Don't know";

 label define OBCLAW
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCHOP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCFAR
99998 "Refused"
99999 "Don't know";

 label define OBCRWANX
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define OBCSOONX
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define OBCHPYX
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define OBCDOB_Y2
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB152
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT152
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX2
  98 "Refused"
  99 "Don't know";

 label define OBCMLIV2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCLAW2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCHOP2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCHPYX2
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define OBCDOB_Y3
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB153
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT153
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX3
  98 "Refused"
  99 "Don't know";

 label define OBCMLIV3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCLAW3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCHOP3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCHPYX3
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX4
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_M4
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define OBCDOB_Y4
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB154
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT154
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX4
  98 "Refused"
  99 "Don't know";

 label define OBCMLIV4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCLAW4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCHOP4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCHPYX4
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX5
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_M5
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define OBCDOB_Y5
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB155
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT155
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX5
  98 "Refused"
  99 "Don't know";

 label define OBCMLIV5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCLAW5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCHOP5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCHPYX5
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX6
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_M6
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define OBCDOB_Y6
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB156
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT156
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX6
  98 "Refused"
  99 "Don't know";

 label define OBCMLIV6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCLAW6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCHOP6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCHPYX6
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX7
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_M7
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define OBCDOB_Y7
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB157
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT157
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX7
  98 "Refused"
  99 "Don't know";

 label define OBCMLIV7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCLAW7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCHOP7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCHPYX7
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX8
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_M8
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define OBCDOB_Y8
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB158
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT158
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX8
  98 "Refused"
  99 "Don't know";

 label define OBCMLIV8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCLAW8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCHOP8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCHPYX8
  98 "Refused"
  99 "Don't know";

 label define OBCSEXX9
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OBCDOB_M9
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define OBCDOB_Y9
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB159
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT159
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCMAGEX9
  98 "Refused"
  99 "Don't know";

 label define OBCMLIV9
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCLAW9
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCHOP9
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OBCEVER9
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define OBCHPYX9
  98 "Refused"
  99 "Don't know";

 label define OTACHIL
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OTACHILN
   1 "1 child"
  98 "Refused"
  99 "Don't know";

 label define OTNBREL
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OTNBRL
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define OTNBFOS
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OTNBFS
  98 "Refused"
  99 "Don't know";

 label define OTNBAD
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OTNBADN
  98 "Refused"
  99 "Don't know";

 label define OTNBSEX
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OTNBLIV1
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
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
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Someplace else"
  98 "Refused"
  99 "Don't know";

 label define OTNBFAR
99998 "Refused"
99999 "Don't know";

 label define OTNBAGE
  98 "Refused"
  99 "Don't know";

 label define OTNBSEX2
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OTNBLIV9
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
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
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define OTNBSEX3
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define OTNBLIV17
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
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
  98 "Refused"
  99 "Don't know";

 label define F_AKIDS
   0 "None"
  98 "Refused"
  99 "Don't know";

 label define OTPREG
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OTPRGPRB
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OTPRGN
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
  98 "Refused"
  99 "Don't know";

 label define OTPRGEND
   1 "Miscarriage"
   2 "Stillbirth"
   3 "Abortion"
   8 "Refused"
   9 "Don't know";

 label define OTMSN
   0 "NONE"
  98 "Refused"
  99 "Don't know";

 label define OTSTN
   0 "NONE"
  98 "Refused"
  99 "Don't know";

 label define OTABN
   0 "NONE"
  98 "Refused"
  99 "Don't know";

 label define TOTPRG
   0 "NONE"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES"
   5 "5 PREGNANCIES"
  98 "Refused"
  99 "Don't know";

 label define OTPREGS
   0 "NONE"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
  98 "Refused"
  99 "Don't know";

 label define TOTPREGS_C
   0 "NONE"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES"
   5 "5 PREGNANCIES"
 998 "Refused"
 999 "Don't know";

 label define TOTPREGS_R
   0 "NONE"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES"
   5 "5 PREGNANCIES"
 998 "Refused"
 999 "Don't know";

 label define BIOKIDS
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define ADOPKIDS
   0 "None"
   8 "Refused"
   9 "Don't know";

 label define ANYKIDS
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOADOPT
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define NUMLIFE
  50 "50 OR MORE PARTNERS"
 998 "Refused"
 999 "Don't know";

 label define PREGSNOW
   0 "INAPP/DK/RF"
  98 "Refused"
  99 "Don't know";

 label define BIODOB1
9998 "Refused"
9999 "Don't know";

 label define BIODOB2
9998 "Refused"
9999 "Don't know";

 label define BIODOB3
9998 "Refused"
9999 "Don't know";

 label define BIODOB4
9998 "Refused"
9999 "Don't know";

 label define BIODOB5
9998 "Refused"
9999 "Don't know";

 label define BIODOB6
9998 "Refused"
9999 "Don't know";

 label define BIODOB7
9998 "Refused"
9999 "Don't know";

 label define BIODOB8
9998 "Refused"
9999 "Don't know";

 label define BIODOB9
9998 "Refused"
9999 "Don't know";

 label define BIODOB10
9998 "Refused"
9999 "Don't know";

 label define BIOMULT1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOMULT2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOMULT3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOMULT4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOMULT5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOMULT6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOMULT7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOMULT8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOMULT9
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOMULT10
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

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
  97 "Not Ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP2
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not Ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP3
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not Ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP4
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not Ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP5
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not Ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP6
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not Ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP7
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not Ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP8
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not Ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP9
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not Ascertained"
  98 "Refused"
  99 "Don't know";

 label define BIOAGEGP10
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not Ascertained"
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
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR2
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR3
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR4
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR5
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR6
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR7
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR8
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR9
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOMAR10
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB1
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB2
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB3
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB4
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB5
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB6
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB7
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB8
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB9
   0 "NO"
   1 "YES"
   8 "Refused"
   9 "Don't know";

 label define BIOCOHB10
   0 "NO"
   1 "YES"
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

 label define BIOLGPAT1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLGPAT2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLGPAT3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLGPAT4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLGPAT5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLGPAT6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLGPAT7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLGPAT8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLGPAT9
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLGPAT10
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOHSPAT1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOHSPAT2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOHSPAT3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOHSPAT4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOHSPAT5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOHSPAT6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOHSPAT7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOHSPAT8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOHSPAT9
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOHSPAT10
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR6
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR7
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR8
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR9
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BIOLVEVR10
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define BIOHPYPG1
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG2
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG3
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG4
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG5
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG6
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG7
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG8
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG9
  98 "Refused"
  99 "Don't know";

 label define BIOHPYPG10
  98 "Refused"
  99 "Don't know";

 label define CRALL
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
   4 "4 OR MORE CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define CRALLU5
   0 "NONE"
   1 "1 CHILD"
   2 "2 OR MORE CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define CRALL518
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 OR MORE CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define CRMALU5
   0 "NONE"
   1 "1 CHILD"
   2 "2 OR MORE CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define CRMAL518
   0 "NONE"
   1 "1 CHILD"
   2 "2 OR MORE CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define CRFEMU5
   0 "NONE"
   1 "1 CHILD"
   2 "2 OR MORE CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define CRFEM518
   0 "NONE"
   1 "1 CHILD"
   2 "2 OR MORE CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define NCALL
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define NCALLU5
   0 "NONE"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define NCALL518
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define NCMALU5
   0 "NONE"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define NCMAL518
   0 "NONE"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define NCFEMU5
   0 "NONE"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define NCFEM518
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define CROUTG
   0 "Not at all"
   1 "Once or twice during the year"
   2 "Several times during the year"
   3 "1-3 times per month"
   4 "About once a week"
   5 "Several times a week"
   6 "Every day"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CRRELG
   0 "Not at all"
   1 "Once or twice during the year"
   2 "Several times during the year"
   3 "1-3 times per month"
   4 "About once a week"
   5 "Several times a week"
   6 "Every day"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CRPTA
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CRHELP
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CRTALK
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CRTAKE
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CRMEAL
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CRFEED
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CRBATH
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CRPLAY
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CRREAD
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CRGOOD
   1 "A very good job"
   2 "A good job"
   3 "An okay job"
   4 "Not a very good job"
   5 "A bad job"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NCVISIT
   0 "Not at all"
   1 "Once or twice during the year"
   2 "Several times during the year"
   3 "1-3 times per month"
   4 "About once a week"
   5 "Several times a week"
   6 "Every day"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NCSATVIS
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
   6 "6"
   7 "7"
   8 "8"
   9 "9"
  10 "10"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define NCEMAIL
   0 "Not at all"
   1 "Once or twice during the year"
   2 "Several times during the year"
   3 "1-3 times per month"
   4 "About once a week"
   5 "Several times a week"
   6 "Every day"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NCOUTG
   0 "Not at all"
   1 "Once or twice during the year"
   2 "Several times during the year"
   3 "1-3 times per month"
   4 "About once a week"
   5 "Several times a week"
   6 "Every day"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NCRELG
   0 "Not at all"
   1 "Once or twice during the year"
   2 "Several times during the year"
   3 "One to three times a month"
   4 "About once a week"
   5 "Several times a week"
   6 "Every day"
  96 "No contact in 12 months"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define NCPTA
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define INTROGB6
   1 "Continue"
  96 "Never"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define NCHELP
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NCTALK
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NCTAKE
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NCMEAL
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define INTROGB11
   1 "Continue"
  96 "Never"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define NCFEED
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NCBATH
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NCPLAY
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NCREAD
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NCGOOD
   1 "A very good job"
   2 "A good job"
   3 "An okay job"
   4 "Not a very good job"
   5 "A bad job"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NCMONEY
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NCREG
   1 "Regular basis"
   2 "Once in a while"
   8 "Refused"
   9 "Don't know";

 label define NCAGREE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NCAGREEN
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define CHSUPPYR
   0 "None, doesn't pay"
   1 "Under 3,000 per year"
   2 "$3,001 - $5,000 per year"
   3 "$5,001 - $9,000 per year"
   4 "More than $9,000 per year"
  98 "Refused"
  99 "Don't know";

 label define RWANT
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PROBWANT
   1 "Probably want"
   2 "Probably do not want"
   3 "If R insists: Don't know/not sure"
   9 "Don't know";

 label define JINTEND
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define JSUREINT
   1 "Very sure"
   2 "Somewhat sure"
   3 "Not at all sure"
   8 "Refused"
   9 "Don't know";

 label define JINTENDN
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define JEXPECTL
   0 "NONE"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define JEXPECTS
   0 "NONE"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define INTEND
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define INTENDN
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define EXPECTL
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "Refused"
  99 "Don't know";

 label define EXPECTS
   0 "NONE"
   1 "1 CHILD"
  98 "Refused"
  99 "Don't know";

 label define USUALCAR
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define USLPLACE
   1 "Private doctor's office"
   2 "HMO facility"
   3 "Community health clinic, community clinic, public health clinic"
   4 "Family planning or Planned Parenthood clinic"
   5 "Employer or company clinic"
   6 "School or school-based clinic"
   7 "Hospital outpatient clinic"
   8 "Hospital emergency room"
   9 "Hospital regular room"
  10 "Urgent care center, urgi-care, or walk-in facility"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define COVER12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NUMNOCOV
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

 label define COVERHOW01
   1 "Private health insurance plan (from employer/purchased directly/through govt program)"
   2 "Medicaid-additional names in this state: [state-specific Medicaid name]"
   3 "Medicare"
   4 "Medi-GAP"
   5 "Military health care including: the VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "Indian Health Service"
   7 "CHIP (Children's Health Insurance Program)-add'l names: [state-specific CHIP name]"
   8 "Single-service plan (e.g., dental, vision, prescriptions)"
   9 "State-sponsored health plan (called [state-specific plan name] in this state)"
  10 "Other government health care"
  98 "Refused"
  99 "Don't know";

 label define COVERHOW02
   1 "Private health insurance plan (from employer/purchased directly/through govt program)"
   2 "Medicaid-additional names in this state: [state-specific Medicaid name]"
   3 "Medicare"
   4 "Medi-GAP"
   5 "Military health care including: the VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "Indian Health Service"
   7 "CHIP (Children's Health Insurance Program)-add'l names: [state-specific CHIP name]"
   8 "Single-service plan (e.g., dental, vision, prescriptions)"
   9 "State-sponsored health plan (called [state-specific plan name] in this state)"
  10 "Other government health care"
  98 "Refused"
  99 "Don't know";

 label define COVERHOW03
   1 "Private health insurance plan (from employer/purchased directly/through govt program)"
   2 "Medicaid-additional names in this state: [state-specific Medicaid name]"
   3 "Medicare"
   4 "Medi-GAP"
   5 "Military health care including: the VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "Indian Health Service"
   7 "CHIP (Children's Health Insurance Program)-add'l names: [state-specific CHIP name]"
   8 "Single-service plan (e.g., dental, vision, prescriptions)"
   9 "State-sponsored health plan (called [state-specific plan name] in this state)"
  10 "Other government health care"
  98 "Refused"
  99 "Don't know";

 label define COVERHOW04
   1 "Private health insurance plan (from employer/purchased directly/through govt program)"
   2 "Medicaid-additional names in this state: [state-specific Medicaid name]"
   3 "Medicare"
   4 "Medi-GAP"
   5 "Military health care including: the VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "Indian Health Service"
   7 "CHIP (Children's Health Insurance Program)-add'l names: [state-specific CHIP name]"
   8 "Single-service plan (e.g., dental, vision, prescriptions)"
   9 "State-sponsored health plan (called [state-specific plan name] in this state)"
  10 "Other government health care"
  98 "Refused"
  99 "Don't know";

 label define NOWCOVER01
   1 "Private health insurance plan (from employer/purchased directly/through govt program)"
   2 "Medicaid-additional names in this state: [state-specific Medicaid name]"
   3 "Medicare"
   4 "Medi-GAP"
   5 "Military health care including: the VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "Indian Health Service"
   7 "CHIP (Children's Health Insurance Program)-add'l names: [state-specific CHIP name]"
   8 "Single-service plan (e.g., dental, vision, prescriptions)"
   9 "State-sponsored health plan (called [state-specific plan name] in this state)"
  10 "Other government health care"
  11 "Not covered by any insurance"
  98 "Refused"
  99 "Don't know";

 label define NOWCOVER02
   1 "Private health insurance plan (from employer/purchased directly/through govt program)"
   2 "Medicaid-additional names in this state: [state-specific Medicaid name]"
   3 "Medicare"
   4 "Medi-GAP"
   5 "Military health care including: the VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "Indian Health Service"
   7 "CHIP (Children's Health Insurance Program)-add'l names: [state-specific CHIP name]"
   8 "Single-service plan (e.g., dental, vision, prescriptions)"
   9 "State-sponsored health plan (called [state-specific plan name] in this state)"
  10 "Other government health care"
  11 "Not covered by any insurance"
  98 "Refused"
  99 "Don't know";

 label define NOWCOVER03
   1 "Private health insurance plan (from employer/purchased directly/through govt program)"
   2 "Medicaid-additional names in this state: [state-specific Medicaid name]"
   3 "Medicare"
   4 "Medi-GAP"
   5 "Military health care including: the VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "Indian Health Service"
   7 "CHIP (Children's Health Insurance Program)-add'l names: [state-specific CHIP name]"
   8 "Single-service plan (e.g., dental, vision, prescriptions)"
   9 "State-sponsored health plan (called [state-specific plan name] in this state)"
  10 "Other government health care"
  11 "Not covered by any insurance"
  98 "Refused"
  99 "Don't know";

 label define NOWCOVER04
   1 "Private health insurance plan (from employer/purchased directly/through govt program)"
   2 "Medicaid-additional names in this state: [state-specific Medicaid name]"
   3 "Medicare"
   4 "Medi-GAP"
   5 "Military health care including: the VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "Indian Health Service"
   7 "CHIP (Children's Health Insurance Program)-add'l names: [state-specific CHIP name]"
   8 "Single-service plan (e.g., dental, vision, prescriptions)"
   9 "State-sponsored health plan (called [state-specific plan name] in this state)"
  10 "Other government health care"
  11 "Not covered by any insurance"
  98 "Refused"
  99 "Don't know";

 label define GOFPCWGF
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define WHENGOGF
   1 "In the last 12 months"
   2 "More than 12 months ago"
   8 "Refused"
   9 "Don't know";

 label define YOUGOFPC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define WHENGOFP
   1 "In the last 12 months"
   2 "More than 12 months ago"
   8 "Refused"
   9 "Don't know";

 label define YOUFPSVC1
   1 "A female method of birth control or counseling about female methods of birth control"
   2 "A male method of birth control (condoms or vasectomy) or counseling about male methods of birth control"
   3 "Testing or treatment for sexually transmitted infection other than HIV"
   4 "HIV testing"
   5 "Abortion advice or counseling"
   6 "Physical exam"
   7 "Other"
   8 "Refused"
   9 "Don't know";

 label define YOUFPSVC2
   1 "A female method of birth control or counseling about female methods of birth control"
   2 "A male method of birth control (condoms or vasectomy) or counseling about male methods of birth control"
   3 "Testing or treatment for sexually transmitted infection other than HIV"
   4 "HIV testing"
   5 "Abortion advice or counseling"
   6 "Physical exam"
   7 "Other"
   8 "Refused"
   9 "Don't know";

 label define YOUFPSVC3
   1 "A female method of birth control or counseling about female methods of birth control"
   2 "A male method of birth control (condoms or vasectomy) or counseling about male methods of birth control"
   3 "Testing or treatment for sexually transmitted infection other than HIV"
   4 "HIV testing"
   5 "Abortion advice or counseling"
   6 "Physical exam"
   7 "Other"
   8 "Refused"
   9 "Don't know";

 label define YOUFPSVC4
   1 "A female method of birth control or counseling about female methods of birth control"
   2 "A male method of birth control (condoms or vasectomy) or counseling about male methods of birth control"
   3 "Testing or treatment for sexually transmitted infection other than HIV"
   4 "HIV testing"
   5 "Abortion advice or counseling"
   6 "Physical exam"
   7 "Other"
   8 "Refused"
   9 "Don't know";

 label define YOUFPSVC5
   1 "A female method of birth control or counseling about female methods of birth control"
   2 "A male method of birth control (condoms or vasectomy) or counseling about male methods of birth control"
   3 "Testing or treatment for sexually transmitted infection other than HIV"
   4 "HIV testing"
   5 "Abortion advice or counseling"
   6 "Physical exam"
   7 "Other"
   8 "Refused"
   9 "Don't know";

 label define YOUFPSVC6
   1 "A female method of birth control or counseling about female methods of birth control"
   2 "A male method of birth control (condoms or vasectomy) or counseling about male methods of birth control"
   3 "Testing or treatment for sexually transmitted infection other than HIV"
   4 "HIV testing"
   5 "Abortion advice or counseling"
   6 "Physical exam"
   7 "Other"
   8 "Refused"
   9 "Don't know";

 label define LIMITED
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define EQUIPMNT
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PHYSEXAM
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define TESTICHK
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BCADVICE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BCADVICEF
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BCADVICEM
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STERADVI
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STDADVIC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HIVADVIC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define ONEVISIT
   1 "At a single visit"
   2 "More than 1 visit"
   8 "Refused"
   9 "Don't know";

 label define NUMVISIT
   2 "2 VISITS"
   3 "3 VISITS"
  98 "Refused"
  99 "Don't know";

 label define PLACEVIS01
   1 "Private doctor's office"
   2 "HMO facility"
   3 "Community health clinic, community clinic, public health clinic"
   4 "Family planning or Planned Parenthood clinic"
   5 "Employer or company clinic"
   6 "School or school-based clinic"
   7 "Hospital outpatient clinic"
   8 "Hospital emergency room"
   9 "Hospital regular room"
  10 "Urgent care center, urgi-care, or walk-in facility"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define PLACEVIS02
   1 "Private doctor's office"
   2 "HMO facility"
   3 "Community health clinic, community clinic, public health clinic"
   4 "Family planning or Planned Parenthood clinic"
   5 "Employer or company clinic"
   6 "School or school-based clinic"
   7 "Hospital outpatient clinic"
   8 "Hospital emergency room"
   9 "Hospital regular room"
  10 "Urgent care center, urgi-care, or walk-in facility"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define PLACEVIS03
   1 "Private doctor's office"
   2 "HMO facility"
   3 "Community health clinic, community clinic, public health clinic"
   4 "Family planning or Planned Parenthood clinic"
   5 "Employer or company clinic"
   6 "School or school-based clinic"
   7 "Hospital outpatient clinic"
   8 "Hospital emergency room"
   9 "Hospital regular room"
  10 "Urgent care center, urgi-care, or walk-in facility"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define PLACEVIS04
   1 "Private doctor's office"
   2 "HMO facility"
   3 "Community health clinic, community clinic, public health clinic"
   4 "Family planning or Planned Parenthood clinic"
   5 "Employer or company clinic"
   6 "School or school-based clinic"
   7 "Hospital outpatient clinic"
   8 "Hospital emergency room"
   9 "Hospital regular room"
  10 "Urgent care center, urgi-care, or walk-in facility"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define PLACEVIS05
   1 "Private doctor's office"
   2 "HMO facility"
   3 "Community health clinic, community clinic, public health clinic"
   4 "Family planning or Planned Parenthood clinic"
   5 "Employer or company clinic"
   6 "School or school-based clinic"
   7 "Hospital outpatient clinic"
   8 "Hospital emergency room"
   9 "Hospital regular room"
  10 "Urgent care center, urgi-care, or walk-in facility"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define SVCPAY1
   1 "Insurance"
   2 "Co-payment or out-of-pocket payment"
   3 "Medicaid"
   4 "No payment required"
   5 "Some other way"
   8 "Refused"
   9 "Don't know";

 label define SVCPAY2
   1 "Insurance"
   2 "Co-payment or out-of-pocket payment"
   3 "Medicaid"
   4 "No payment required"
   5 "Some other way"
   8 "Refused"
   9 "Don't know";

 label define SVCPAY3
   1 "Insurance"
   2 "Co-payment or out-of-pocket payment"
   3 "Medicaid"
   4 "No payment required"
   5 "Some other way"
   8 "Refused"
   9 "Don't know";

 label define INFHELP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define INFTEST
   1 "You"
   2 "Her"
   3 "Both of you"
   8 "Refused"
   9 "Don't know";

 label define WHOINSEM
   1 "You only"
   2 "Some other donor only"
   3 "Both"
   8 "Refused"
   9 "Don't know";

 label define INFHLPNW
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
9998 "Refused"
9999 "Don't know";

 label define CMINFVIS
9998 "Refused"
9999 "Don't know";

 label define INFRTHIS1
   1 "Sperm or semen problems"
   2 "Varicocele"
   3 "Other"
   4 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define INFRTHIS2
   1 "Sperm or semen problems"
   2 "Varicocele"
   3 "Other"
   4 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define INFRTHIS3
   1 "Sperm or semen problems"
   2 "Varicocele"
   3 "Other"
   4 "None of the above"
   8 "Refused"
   9 "Don't know";

 label define DONBLD85
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HIVTEST
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define WHENHIV_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define WHENHIV_Y
9998 "Refused"
9999 "Don't know";

 label define CMHIVTST
9998 "Refused"
9999 "Don't know";

 label define HIVTSTYR
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RAPIDHIV
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HIVSOON
   1 "Within 1 day"
   2 "Within 1 week but longer than 1 day"
   3 "Longer than 1 week"
   4 "Or did you never receive the test results?"
   8 "Refused"
   9 "Don't know";

 label define HIVKIND
   1 "Swab from mouth"
   2 "Blood from finger"
   3 "Blood from arm"
   4 "Other"
   8 "Refused"
   9 "Don't know";

 label define PLCHIV
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
  21 "Prison, jail or detention center"
  22 "Mobile testing or community testing site"
  23 "Drug, alcohol or rehabilitation treatment center"
  98 "Refused"
  99 "Don't know";

 label define HIVTST
   1 "Part of a medical checkup or surgical procedure"
   2 "For health or life insurance coverage"
   3 "Wanted to find out if infected or not"
   4 "Someone suggested you should be tested"
   5 "Marriage license or to get married"
   7 "You might have been exposed through sex or drug use"
   8 "Y1/Y2:[Not a pre-coded response option; coded based other-specify responses]/Y3+:For military service or a job"
  20 "Some other reason - not shown separately"
  21 "Requirement for immigration or travel"
  22 "Potential exposure, unrelated to sex or drug use (e.g., needle stick, bite, bleeding)"
  23 "Incarceration-related requirement"
  24 "New partner"
  97 "Not Ascertained"
  98 "Refused"
  99 "Don't know";

 label define WHOSUGG
   1 "Doctor or other medical care provider"
   2 "Sexual partner"
   3 "Someone else"
   8 "Refused"
   9 "Don't know";

 label define TALKDOCT
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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
   9 "'Safe sex' practices (abstinence, condom use, etc)"
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
   9 "'Safe sex' practices (abstinence, condom use, etc)"
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
   9 "'Safe sex' practices (abstinence, condom use, etc)"
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
   9 "'Safe sex' practices (abstinence, condom use, etc)"
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
   9 "'Safe sex' practices (abstinence, condom use, etc)"
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
   9 "'Safe sex' practices (abstinence, condom use, etc)"
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
   9 "'Safe sex' practices (abstinence, condom use, etc)"
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
   9 "'Safe sex' practices (abstinence, condom use, etc)"
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
   9 "'Safe sex' practices (abstinence, condom use, etc)"
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
   9 "'Safe sex' practices (abstinence, condom use, etc)"
  20 "Some other topic - not shown separately"
  98 "Refused"
  99 "Don't know";

 label define RETROVIR
   1 "Definitely true"
   2 "Probably true"
   3 "Probably false"
   4 "Definitely false"
   5 "Don't know if true or false"
   8 "Refused"
   9 "Don't know";

 label define SAMEADD
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CNTRY00
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BRNOUT
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define YRSTRUS
9998 "Refused"
9999 "Don't know";

 label define PAYDU
   1 "Owned or being bought by you or someone in your household"
   2 "Rented"
   8 "Refused"
   9 "Don't know";

 label define RELRAISD
   1 "No religion"
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

 label define RELCURR
   1 "No religion"
   2 "Catholic"
   3 "Baptist/Southern Baptist"
   4 "Methodist, Lutheran, Presbyterian, Episcopal"
   5 "Fundamentalist Protestant"
   6 "Other Protestant denomination"
   7 "Protestant - No specific denomination"
   8 "Other religion"
   9 "Refused"
  10 "Don't know";

 label define RELTRAD
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

 label define RELDLIFE
   1 "Very important"
   2 "Somewhat important"
   3 "Not important"
   8 "Refused"
   9 "Don't know";

 label define ATTNDNOW
   1 "More than once a week"
   2 "Once a week"
   3 "2-3 times a month"
   4 "Once a month (about 12 times a year)"
   5 "3-11 times a year"
   6 "Once or twice a year"
   7 "Never"
   8 "Refused"
   9 "Don't know";

 label define MILSVC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STARTMIL
   1 "1985 or earlier"
   2 "1986-1990"
   3 "1991-1995"
   4 "1996-2000"
   5 "2001 or later"
   9 "Don't know";

 label define ENDMIL
   1 "1990 or earlier"
   2 "1991-1995"
   3 "1996-2000"
   4 "2001 or later"
   9 "Don't know";

 label define EVWRK6MO
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define BEGFSTWK_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define BEGFSTWK_Y
9998 "Refused"
9999 "Don't know";

 label define CMBFSTWK
9998 "Refused"
9999 "Don't know";

 label define EVRNTWRK
   1 "Yes"
   5 "No"
   7 "Not ascertained"
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

 label define DOLASTWK6
   1 "Working"
   2 "Working - Paternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "In school"
   6 "Other"
   8 "Refused"
   9 "Don't know";

 label define RWRKST
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define EVERWORK
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define RPAYJOB
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RNUMJOB
   0 "No jobs"
   1 "1 job"
   2 "2 jobs"
   3 "3 jobs"
   4 "4 jobs"
   5 "5 jobs"
   6 "6 jobs"
   8 "Refused"
   9 "Don't know";

 label define RFTPTX
   1 "Full-time"
   2 "Part-time"
   3 "Some of each"
   8 "Refused"
   9 "Don't know";

 label define REARNTY
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

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

 label define SPLSTWK6
   1 "Working"
   2 "Working - Maternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "Other"
   8 "Refused"
   9 "Don't know";

 label define SPWRKST
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define SPPAYJOB
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define SPNUMJOB
   0 "No jobs"
   1 "1 job"
   2 "2 jobs"
   3 "3 jobs"
   4 "4 jobs"
   5 "5 jobs"
   6 "6 jobs"
   8 "Refused"
   9 "Don't know";

 label define SPFTPTX
   1 "Full-time"
   2 "Part-time"
   3 "Some of each"
   8 "Refused"
   9 "Don't know";

 label define SPEARNTY
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BETTER
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define STAYTOG
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define SAMESEX
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define ANYACT
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define SXOK18
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define SXOK16
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define CHUNLESS
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define CHREWARD
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define CHSUPPOR
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define GAYADOPT
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define OKCOHAB
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define WARM
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define ACHIEVE
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define FAMILY
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define REACTSLF
   1 "Very upset"
   2 "A little upset"
   3 "A little pleased"
   4 "Very pleased"
   5 "If R insists: He wouldn t care"
   8 "Refused"
   9 "Don't know";

 label define CHBOTHER
   1 "A great deal"
   2 "Some"
   3 "A little"
   4 "Not at all"
   8 "Refused"
   9 "Don't know";

 label define MARRFAIL
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define CHCOHAB
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define PRVNTDIV
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define GETALONG
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define PMARCOHB
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define COHCHANCE
   1 "No chance"
   2 "A little chance"
   3 "50-50 chance"
   4 "A pretty good chance"
   5 "An almost certain chance"
   8 "Refused"
   9 "Don't know";

 label define MARRCHANCE
   1 "No chance"
   2 "A little chance"
   3 "50-50 chance"
   4 "A pretty good chance"
   5 "An almost certain chance"
   8 "Refused"
   9 "Don't know";

 label define PMARCOH
   1 "No chance"
   2 "A little chance"
   3 "50-50 chance"
   4 "A pretty good chance"
   5 "An almost certain chance"
   8 "Refused"
   9 "Don't know";

 label define LESSPLSR
   1 "No chance"
   2 "A little chance"
   3 "50-50 chance"
   4 "A pretty good chance"
   5 "An almost certain chance"
   8 "Refused"
   9 "Don't know";

 label define EMBARRAS
   1 "No chance"
   2 "A little chance"
   3 "50-50 chance"
   4 "A pretty good chance"
   5 "An almost certain chance"
   8 "Refused"
   9 "Don't know";

 label define APPREC1
   1 "No chance"
   2 "A little chance"
   3 "50-50 chance"
   4 "A pretty good chance"
   5 "An almost certain chance"
   8 "Refused"
   9 "Don't know";

 label define ACASILANG
   1 "English"
   2 "Spanish"
   7 "Not Ascertained";

 label define GENHEALT
   1 "Excellent"
   2 "Very good"
   3 "Good"
   4 "Fair"
   5 "Poor"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define INCHES
  63 "63 inches or less"
  64 "64 inches"
  65 "65 inches"
  66 "66 inches"
  67 "67 inches"
  68 "68 inches"
  69 "69 inches"
  70 "70 inches"
  71 "71 inches"
  72 "72 inches"
  73 "73 inches"
  74 "74 inches"
  75 "75 inches"
  76 "76 inches"
  77 "77 inches or more"
  96 "Could not be defined";

 label define RWEIGHT
 124 "124 pounds or less"
 300 "300 pounds or more"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define BMI
  95 "Could not be defined";

 label define EARNTYPE
   1 "Week"
   2 "Month"
   3 "Year"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define EARN
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
  14 "$1,442 or more (weekly)/$6,250 or more (monthly)/$75,000 or more (yearly)"
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

 label define WAGE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define SELFINC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define SOCSEC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define DISABIL
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RETIRE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define SSI
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define UNEMP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CHLDSUPP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define INTEREST
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define DIVIDEND
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OTHINC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define TOINCWMY
   1 "Week"
   2 "Month"
   3 "Year"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define TOTINC
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
  14 "$1,442 or more (weekly)/$6,250 or more (monthly)/$75,000 or more (yearly)"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define FMINCDK1
   1 "Yes"
   5 "No"
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

 label define PUBASST
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

 label define FOODSTMP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define WIC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HLPTRANS
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HLPCHLDC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HLPJOB
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define AGER
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
  43 "43 YEARS";

 label define FMARITAL
   1 "MARRIED"
   2 "WIDOWED"
   3 "DIVORCED"
   4 "SEPARATED"
   5 "NEVER MARRIED";

 label define RMARITAL
   1 "CURRENTLY MARRIED"
   2 "NOT MARRIED BUT LIVING WITH OPP SEX PARTNER"
   3 "WIDOWED"
   4 "DIVORCED"
   5 "SEPARATED FOR REASONS OF MARITAL DISCORD"
   6 "NEVER BEEN MARRIED";

 label define EDUCAT
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
  19 "7+ YEARS OF COLLEGE/GRAD SCHOOL";

 label define HIEDUC
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

 label define HISPANIC
   1 "HISPANIC"
   2 "NON-HISPANIC";

 label define NUMRACE
   1 "SINGLE RACE REPORTED"
   2 "2 OR MORE RACES REPORTED";

 label define RACE
   1 "BLACK"
   2 "WHITE"
   3 "OTHER";

 label define HISPRACE
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other";

 label define HISPRACE2
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race";

 label define NUMKDHH
   0 "NO CHILDREN"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
   4 "4 CHILDREN"
   5 "5 CHILDREN OR MORE";

 label define NUMFMHH
   0 "NO FAMILY MEMBERS"
   1 "1 FAMILY MEMBER"
   2 "2 FAMILY MEMBERS"
   3 "3 FAMILY MEMBERS"
   4 "4 FAMILY MEMBERS"
   5 "5 FAMILY MEMBERS"
   6 "6 FAMILY MEMBERS"
   7 "7 FAMILY MEMBERS OR MORE";

 label define HHFAMTYP
   1 "No spouse/partner and no child(ren) (of R) 18 or younger"
   2 "Spouse/partner, but no child(ren) (of R) 18 or younger"
   3 "Spouse and R's child(ren) 18 or younger"
   4 "Cohabiting partner and R's child(ren) 18 or younger"
   5 "No spouse/partner, but child(ren) of R, 18 or younger";

 label define HHPARTYP
   1 "Both biological or both adoptive parents"
   2 "Biological and step- or adoptive parent"
   3 "Single parent (biological, adoptive, or stepparent)"
   4 "Other";

 label define NCHILDHH
   3 "3 or more of respondent's children 18 or younger in the household";

 label define HHKIDTYP
   0 "No child(ren) 18 or younger in HH or only older child(ren)"
   1 "At least one biological child (of R's) under 18 in HH, no nonbiological child(ren)"
   2 "Any non-biological child (of R's) 18 or younger in HH";

 label define CSPBBHH
   0 "No joint biological children"
   1 "1 joint biological child"
   2 "2 joint biological children"
   3 "3 or more joint biological children";

 label define CSPSBHH
   0 "No such child"
   1 "1 or more such children";

 label define CSPOKDHH
   0 "No such child"
   1 "1 or more such children";

 label define INTCTFAM
   1 "TWO BIOLOGICAL OR ADOPTIVE PARENTS FROM BIRTH"
   2 "ANYTHING OTHER THAN 2 BIOLOGICAL OR ADOPTIVE PARENTS FROM BIRTH";

 label define PARAGE14
   1 "R LIVED WITH BOTH BIOLOGICAL PARENTS AT AGE 14"
   2 "R LIVED WITH BIOLOGICAL MOTHER AND STEPFATHER AT AGE 14"
   3 "R LIVED IN ANY OTHER PARENTAL SITUATION OR A NONPARENTAL SITUATION AT AGE 14";

 label define EDUCMOM
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college, including 2-year degrees"
   4 "Bachelor's degree or higher"
  95 "No mother-figure identified";

 label define AGEMOMB1
   1 "LESS THAN 18 YEARS"
   2 "18-19 YEARS"
   3 "20-24 YEARS"
   4 "25-29 YEARS"
   5 "30 OR OLDER"
  96 "MOTHER-FIGURE HAD NO CHILDREN";

 label define FMARNO
   0 "NEVER BEEN MARRIED"
   1 "1 TIME"
   2 "2 TIMES"
   3 "3 TIMES"
   4 "4 TIMES";

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

 label define HISPRACE_I
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

 label define HADSEX
   1 "YES, R EVER HAD INTERCOURSE"
   2 "NO, R NEVER HAD INTERCOURSE";

 label define SEXONCE
   1 "YES (R HAS HAD SEX ONLY ONCE)"
   2 "NO (R HAS HAD SEX MORE THAN ONCE)";

 label define FIRSTPFLAG
   1 "cmfstsex - CM of first sex ever, based on DL series"
   2 "cmlsxp - CM when R last had sex with most recent partner"
   3 "cmlsxp2 - CM when R last had sex with 2nd-to-last partner"
   4 "cmlsxp3 - CM when R last had sex with 3rd-to-last partner"
   5 "cmfsxp - CM when R first had sex with most recent partner"
   6 "cmfsxp2 - CM when R first had sex with 2nd-to-last partner"
   7 "cmfsxp3 - CM when R first had sex with 3rd-to-last partner"
   8 "cmfsxcwp - CM when R first had sex with CWP"
   9 "unable to determine: raw variable(s) missing";

 label define SEXMAR
   0 "FIRST INTERCOURSE IN SAME MONTH AS MARRIAGE"
 996 "FIRST INTERCOURSE AFTER FIRST MARRIAGE";

 label define SEXUNION
   0 "First intercourse in same month as marriage or cohabitation"
 996 "First intercourse after first marriage or cohabitation";

 label define FSEXRLTN
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
   8 "Hormonal implant -- Norplant"
   9 "Rhythm or safe period"
  10 "Contraceptive Patch"
  11 "Vaginal contraceptive ring"
  12 "Y1:[Not a response option]/Y2+:IUD, coil, loop"
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
   8 "Hormonal implant -- Norplant"
   9 "Rhythm or safe period"
  10 "Contraceptive Patch"
  11 "Vaginal contraceptive ring"
  12 "Y1:[Not a response option]/Y2+:IUD, coil, loop"
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
   8 "Hormonal implant -- Norplant"
   9 "Rhythm or safe period"
  10 "Contraceptive Patch"
  11 "Vaginal contraceptive ring"
  12 "Y1:[Not a response option]/Y2+:IUD, coil, loop"
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
   8 "Hormonal implant -- Norplant"
   9 "Rhythm or safe period"
  10 "Contraceptive Patch"
  11 "Vaginal contraceptive ring"
  12 "Y1:[Not a response option]/Y2+:IUD, coil, loop"
  13 "Something else"
  96 "No method used at first intercourse";

 label define ORDERFLAG
   1 "PARTNER DATES ARE IN ORDER, OR ONLY ONE VALID DATE REPORTED"
   2 "PARTNERS REPORTED OUT OF ORDER: LAST PARTNER AND POSSIBLY OTHERS"
   3 "PARTNERS REPORTED OUT OF ORDER: 2ND-TO-LAST AND 3RD-TO-LAST PARTNERS ONLY"
   4 "NO NONMISSING PARTNER DATES";

 label define SEX3MO
   1 "YES, HAD INTERCOURSE"
   2 "NO, DID NOT HAVE INTERCOURSE";

 label define SEX12MO
   1 "YES, HAD INTERCOURSE"
   2 "NO, DID NOT HAVE INTERCOURSE";

 label define LSEXPRAC
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other";

 label define LSEXRLTN
   1 "Married to her"
   3 "Living together in a sexual relationship"
   4 "Going out with her or going steady"
   5 "Going out with her once in a while"
   6 "Just friends"
   7 "Had just met her"
   8 "Something else"
   9 "Engaged to her: only asked of a subset of Rs";

 label define LSEXUSE1
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "Y1:[NOT A RESPONSE OPTION]/Y2+: IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define LSEXUSE2
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "Y1:[NOT A RESPONSE OPTION]/Y2+: IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define LSEXUSE3
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "Y1:[NOT A RESPONSE OPTION]/Y2+: IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define LSEXUSE4
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "Y1:[NOT A RESPONSE OPTION]/Y2+: IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define METH12M1
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "Y1:[NOT A RESPONSE OPTION]/Y2+: IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define METH12M2
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "Y1:[NOT A RESPONSE OPTION]/Y2+: IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define METH12M3
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "Y1:[NOT A RESPONSE OPTION]/Y2+: IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define METH12M4
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "Y1:[NOT A RESPONSE OPTION]/Y2+: IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define METH3M1
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "Y1:[NOT A RESPONSE OPTION]/Y2+: IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define METH3M2
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "Y1:[NOT A RESPONSE OPTION]/Y2+: IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define METH3M3
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "Y1:[NOT A RESPONSE OPTION]/Y2+: IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define METH3M4
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "Y1:[NOT A RESPONSE OPTION]/Y2+: IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define NUMP3MOS
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS EXACTLY"
   4 "3, POSSIBLY MORE PARTNERS";

 label define LIFPRTNR
   0 "NONE"
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
   0 "NONE"
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

 label define COHEVER
   1 "Yes, ever cohabited (lived with a woman outside of marriage)"
   2 "No, never cohabited (lived with a woman outside of marriage)";

 label define EVMARCOH
   1 "Yes, ever married or cohabited"
   2 "No, never married or cohabited";

 label define PMARRNO
   0 "None"
   1 "One"
   2 "Two";

 label define NONMARR
   0 "None"
   1 "One"
   2 "Two";

 label define TIMESCOH
   0 "None"
   1 "One"
   2 "Two";

 label define MAREND01
   1 "DIVORCED OR ANNULLED"
   2 "SEPARATED"
   3 "WIDOWED";

 label define MAREND02
   1 "DIVORCED OR ANNULLED"
   2 "SEPARATED"
   3 "WIDOWED";

 label define MAREND03
   1 "DIVORCED OR ANNULLED"
   2 "SEPARATED"
   3 "WIDOWED";

 label define MAREND04
   1 "DIVORCED OR ANNULLED"
   2 "SEPARATED"
   3 "WIDOWED";

 label define MAR1DISS
   0 "Less than 1 month";

 label define PREMARW1
   1 "YES"
   2 "NO";

 label define COHSTAT
   1 "Never cohabited outside of marriage"
   2 "First cohabited before first marriage"
   3 "First cohabited after first marriage";

 label define COHOUT
   1 "Intact cohabitation"
   2 "Intact marriage"
   3 "Dissolved marriage"
   4 "Dissolved cohabitation";

 label define COH1DUR
   0 "Less than 1 month";

 label define CSPBIOKD
   0 "None";

 label define B1PREMAR
   1 "Yes (1st biological child born before 1st marriage)"
   2 "No (1st biological child born in same month as or later than 1st marriage)";

 label define MARBABY1
   1 "Yes, married to child's mother"
   2 "No, not married to child's mother";

 label define CEBOW
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children";

 label define CEBOWC
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children";

 label define CEBOWP
   0 "None"
   1 "1 child"
   2 "2 children"
   3 "3 children";

 label define EVRNOPAT
   1 "YES, 1 OR MORE CHILDREN OUT OF WEDLOCK, BUT NO ESTABLISHED PATERNITY"
   2 "NO, 1 OR MORE CHILDREN OUT OF WEDLOCK, BUT ESTABLISHED PATERNITY";

 label define NONLIVEB
   0 "NONE"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES";

 label define COMPREG
   0 "NONE"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES";

 label define ABORTION
   0 "NONE"
   1 "1 PREGNANCY";

 label define LOSSNUM
   0 "NONE"
   1 "1 PREGNANCY";

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
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB02
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB03
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB04
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB05
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB06
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB07
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB08
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB09
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB10
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define UNINTB5
   1 "YES (R HAD ONE OR MORE UNINTENDED BIRTHS IN THE PAST 5 YEARS)"
   2 "NO (R DID NOT HAVE AN UNINTENDED BIRTH IN THE PAST 5 YEARS)"
   3 "R DID NOT KNOW ABOUT THE PREGNANCY(IES) LEADING TO THE BIRTH(S) IN THE PAST 5 YEARS";

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

 label define FSEXPAGE_I
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

 label define LSEXDATE2_I
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

 label define LSEXPAGE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LSEXPRAC_I
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

 label define UNINTB5_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define DADTYPE
   1 "ONLY CORESIDENTIAL CHILDREN"
   2 "ONLY NON-CORESIDENTIAL CHILDREN"
   3 "BOTH CORESIDENTIAL AND NON-CORESIDENTIAL CHILDREN"
   4 "NO CHILDREN 18 OR YOUNGER, OR NO CHILDREN AT ALL";

 label define DADTYPU5
   1 "ONLY CORESIDENTIAL CHILDREN UNDER 5"
   2 "ONLY NON-CORESIDENTIAL CHILDREN UNDER 5"
   3 "BOTH CORESIDENTIAL AND NONCORESIDENTIAL CHILDREN UNDER 5"
   4 "NEITHER CORESIDENTIAL OR NONCORESIDENTIAL CHILDREN UNDER 5, OR NO CHILDREN";

 label define DADTYP518
   1 "ONLY CORESIDENTIAL CHILDREN 5 TO 18"
   2 "ONLY NON-CORESIDENTIAL CHILDREN 5 TO 18"
   3 "BOTH CORESIDENTIAL AND NONCORESIDENTIAL CHILDREN 5 TO 18"
   4 "NEITHER CORESIDENTIAL OR NONCORESIDENTIAL CHILDREN 5 TO 18, OR NO CHILDREN";

 label define NUMCRU18
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define NUMNCU18
   0 "NONE"
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

 label define INTENT
   1 "R intends to have (more) children"
   2 "R does not intend to have (more) children"
   3 "R does not know his intent";

 label define ADDEXP
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
  80 "8 ADDITIONAL BIRTHS"
  90 "9 ADDITIONAL BIRTHS";

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

 label define INFEVER
   1 "YES"
   2 "NO";

 label define EVHIVTST
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

 label define METRO
   1 "MSA, CENTRAL CITY"
   2 "MSA, OTHER"
   3 "NOT MSA";

 label define RELIGION
   1 "No religion"
   2 "Catholic"
   3 "Protestant"
   4 "Other religion";

 label define LABORFOR
   1 "Working full-time"
   2 "Working part-time"
   3 "Working, but on vacation, strike, or had temporary illness"
   4 "Working - paternity or family leave"
   5 "Not working but looking for work"
   6 "In school"
   7 "Keeping house"
   8 "Caring for family"
   9 "Other";

 label define METRO_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define RELIGION_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LABORFOR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define POVERTY
 500 "500 percent of poverty level or greater";

 label define TOTINCR
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
  14 "$75,000 or more";

 label define PUBASSIS
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

 label define CMINTVW
9998 "Refused"
9999 "Don't know";

 label define QUESTYEAR
   1 "Questionnaire version year 1"
   2 "Questionnaire version year 2";

 label define INTVLNGTH
 997 "Not ascertained";

 label values RSCRNINF RSCRNINF ;
 label values RSCRAGE RSCRAGE ;
 label values RSCRHISP RSCRHISP ;
 label values RSCRRACE RSCRRACE ;
 label values RANDVAR1 RANDVAR1 ;
 label values AGE_A AGE_A ;
 label values AGE_R AGE_R ;
 label values CMBIRTH CMBIRTH ;
 label values AGESCRN AGESCRN ;
 label values MARSTAT MARSTAT ;
 label values FMARSTAT FMARSTAT ;
 label values FMARIT FMARIT ;
 label values EVRMARRY EVRMARRY ;
 label values HISP HISP ;
 label values HISPGRP HISPGRP ;
 label values FL_RAGE FL_RAGE ;
 label values FL_RRACE FL_RRACE ;
 label values FL_RHISP FL_RHISP ;
 label values ROSCNT ROSCNT ;
 label values WPLOCALE WPLOCALE ;
 label values WOMREL WOMREL ;
 label values GOSCHOL GOSCHOL ;
 label values VACA VACA ;
 label values HIGRADE HIGRADE ;
 label values COMPGRD COMPGRD ;
 label values HAVEDIP HAVEDIP ;
 label values DIPGED DIPGED ;
 label values EARNHS_M EARNHS_M ;
 label values EARNHS_Y EARNHS_Y ;
 label values CMHSGRAD CMHSGRAD ;
 label values HISCHGRD HISCHGRD ;
 label values LSTGRADE LSTGRADE ;
 label values MYSCHOL_M MYSCHOL_M ;
 label values MYSCHOL_Y MYSCHOL_Y ;
 label values CMLSTSCH CMLSTSCH ;
 label values HAVEDEG HAVEDEG ;
 label values DEGREES DEGREES ;
 label values EARNBA_M EARNBA_M ;
 label values EARNBA_Y EARNBA_Y ;
 label values CMBAGRAD CMBAGRAD ;
 label values WTHPARNW WTHPARNW ;
 label values ONOWN ONOWN ;
 label values ONOWN18 ONOWN18 ;
 label values INTACT INTACT ;
 label values PARMARR PARMARR ;
 label values INTACT18 INTACT18 ;
 label values LVSIT14F LVSIT14F ;
 label values LVSIT14M LVSIT14M ;
 label values WOMRASDU WOMRASDU ;
 label values MOMDEGRE MOMDEGRE ;
 label values MOMWORKD MOMWORKD ;
 label values MOMCHILD MOMCHILD ;
 label values MOMFSTCH MOMFSTCH ;
 label values MOM18 MOM18 ;
 label values MANRASDU MANRASDU ;
 label values DADDEGRE DADDEGRE ;
 label values TIMESMAR TIMESMAR ;
 label values EVCOHAB1 EVCOHAB1 ;
 label values NUMCOH1 NUMCOH1 ;
 label values EVCOHAB2 EVCOHAB2 ;
 label values NUMCOH2 NUMCOH2 ;
 label values EVRCOHAB EVRCOHAB ;
 label values NUMWIFE NUMWIFE ;
 label values NUMCOHAB NUMCOHAB ;
 label values EVERSEX EVERSEX ;
 label values RHADSEX RHADSEX ;
 label values SXMTONCE SXMTONCE ;
 label values YNOSEX YNOSEX ;
 label values TALKPAR1 TALKPAR1 ;
 label values TALKPAR2 TALKPAR2 ;
 label values TALKPAR3 TALKPAR3 ;
 label values TALKPAR4 TALKPAR4 ;
 label values TALKPAR5 TALKPAR5 ;
 label values TALKPAR6 TALKPAR6 ;
 label values SEDNO SEDNO ;
 label values SEDNOG SEDNOG ;
 label values SEDNOSX SEDNOSX ;
 label values SEDBC SEDBC ;
 label values SEDBCG SEDBCG ;
 label values SEDBCSX SEDBCSX ;
 label values SEDSTD SEDSTD ;
 label values SEDSTDG SEDSTDG ;
 label values SEDSTDSX SEDSTDSX ;
 label values SEDHIV SEDHIV ;
 label values SEDHIVG SEDHIVG ;
 label values SEDHIVSX SEDHIVSX ;
 label values PLEDGE PLEDGE ;
 label values EVEROPER EVEROPER ;
 label values TYPEOPER TYPEOPER ;
 label values STEROPER STEROPER ;
 label values VASEC_M VASEC_M ;
 label values VASEC_Y VASEC_Y ;
 label values CMVASEC CMVASEC ;
 label values PLCSTROP PLCSTROP ;
 label values RVRSVAS RVRSVAS ;
 label values VASREV_M VASREV_M ;
 label values VASREV_Y VASREV_Y ;
 label values CMRVRS CMRVRS ;
 label values RSURGSTR RSURGSTR ;
 label values FATHPOSS FATHPOSS ;
 label values FATHDIFF FATHDIFF ;
 label values RSTRSTAT RSTRSTAT ;
 label values EVRCHIL EVRCHIL ;
 label values EVRCHILN EVRCHILN ;
 label values FATHER FATHER ;
 label values LIFEPRT LIFEPRT ;
 label values LIFEPRTS LIFEPRTS ;
 label values SXMON12 SXMON12 ;
 label values MON12PRT MON12PRT ;
 label values MON12PRTS MON12PRTS ;
 label values SEXSTAT SEXSTAT ;
 label values SEXFREQ SEXFREQ ;
 label values CONFREQ CONFREQ ;
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
 label values FIRST FIRST ;
 label values MARRDATE_M MARRDATE_M ;
 label values MARRDATE_Y MARRDATE_Y ;
 label values CMCURMAR CMCURMAR ;
 label values HISAGEM HISAGEM ;
 label values LIVTOGWF LIVTOGWF ;
 label values STRTWFCP_M STRTWFCP_M ;
 label values STRTWFCP_Y STRTWFCP_Y ;
 label values CMCURCOH CMCURCOH ;
 label values HISAGEC HISAGEC ;
 label values CMSTRTWP CMSTRTWP ;
 label values ENGATHEN ENGATHEN ;
 label values WILLMARR WILLMARR ;
 label values CWPDOB_M CWPDOB_M ;
 label values CWPDOB_Y CWPDOB_Y ;
 label values CMCWPDOB CMCWPDOB ;
 label values CWPAGE CWPAGE ;
 label values CWPMULT CWPMULT ;
 label values CWPRACE CWPRACE ;
 label values CWPHRACE CWPHRACE ;
 label values CWPNRACE CWPNRACE ;
 label values CWPEDUCN CWPEDUCN ;
 label values CWPBORN CWPBORN ;
 label values CWPMARBF CWPMARBF ;
 label values CWPSX1WN_M CWPSX1WN_M ;
 label values CWPSX1WN_Y CWPSX1WN_Y ;
 label values CWPSX1AG CWPSX1AG ;
 label values CMFSXCWP CMFSXCWP ;
 label values AGEFSXCWP AGEFSXCWP ;
 label values CWPSX1RL CWPSX1RL ;
 label values CWPFUSE CWPFUSE ;
 label values CWPFMET01 CWPFMET01 ;
 label values CWPFMET02 CWPFMET02 ;
 label values CWPFMET03 CWPFMET03 ;
 label values CWPFMET04 CWPFMET04 ;
 label values CWPOPSTR CWPOPSTR ;
 label values CWPTYPOP1 CWPTYPOP1 ;
 label values CWPTYPOP2 CWPTYPOP2 ;
 label values CWPTOTST CWPTOTST ;
 label values CWPREVST CWPREVST ;
 label values PSURGSTR PSURGSTR ;
 label values CWPPOSS CWPPOSS ;
 label values CWPDIFF CWPDIFF ;
 label values PSTRSTAT PSTRSTAT ;
 label values CMLSXCWP CMLSXCWP ;
 label values CWPLSXWN_M CWPLSXWN_M ;
 label values CWPLSXWN_Y CWPLSXWN_Y ;
 label values CWPLUSE CWPLUSE ;
 label values CWPLMET01 CWPLMET01 ;
 label values CWPLMET02 CWPLMET02 ;
 label values CWPLUSE1 CWPLUSE1 ;
 label values CWPLMET14 CWPLMET14 ;
 label values CWPLMET15 CWPLMET15 ;
 label values CWPLUSE2 CWPLUSE2 ;
 label values DKCWPLUSE DKCWPLUSE ;
 label values CWPLMET201 CWPLMET201 ;
 label values CWPLMET202 CWPLMET202 ;
 label values CWPLMET203 CWPLMET203 ;
 label values DKCWPLMET DKCWPLMET ;
 label values CWPLSXUSE CWPLSXUSE ;
 label values CWPRECBC CWPRECBC ;
 label values CWPALLBC01 CWPALLBC01 ;
 label values CWPALLBC02 CWPALLBC02 ;
 label values CWPALLBC03 CWPALLBC03 ;
 label values CWPALLBC04 CWPALLBC04 ;
 label values CWPALLBC05 CWPALLBC05 ;
 label values CWPALLBC06 CWPALLBC06 ;
 label values CWPBCMST CWPBCMST ;
 label values CONDFREQ CONDFREQ ;
 label values CWPNOFRQ CWPNOFRQ ;
 label values CWPBIOKD CWPBIOKD ;
 label values CWPNUMKD CWPNUMKD ;
 label values PARTFATH PARTFATH ;
 label values CWPCHSEX CWPCHSEX ;
 label values CWPCHDOB_M CWPCHDOB_M ;
 label values CWPCHDOB_Y CWPCHDOB_Y ;
 label values CMCHDOB CMCHDOB ;
 label values CWPCHMAR CWPCHMAR ;
 label values CWPCHRES CWPCHRES ;
 label values CWPCHLRN CWPCHLRN ;
 label values CWPCHLIV1 CWPCHLIV1 ;
 label values CWPCHLIV2 CWPCHLIV2 ;
 label values CWPCHAGE CWPCHAGE ;
 label values CWPCHLEG CWPCHLEG ;
 label values CWPCHHOP CWPCHHOP ;
 label values CWPCHEVR CWPCHEVR ;
 label values CWPCHFAR CWPCHFAR ;
 label values CWPCHWNT CWPCHWNT ;
 label values CWPCHSON CWPCHSON ;
 label values CWPCHHPY CWPCHHPY ;
 label values CWPCHSEX2 CWPCHSEX2 ;
 label values CWPCHDOB_M2 CWPCHDOB_M2 ;
 label values CWPCHDOB_Y2 CWPCHDOB_Y2 ;
 label values CMCHDOB2 CMCHDOB2 ;
 label values MULTBIRT2 MULTBIRT2 ;
 label values CWPCHMAR2 CWPCHMAR2 ;
 label values CWPCHRES2 CWPCHRES2 ;
 label values CWPCHLRN2 CWPCHLRN2 ;
 label values CWPCHLIV10 CWPCHLIV10 ;
 label values CWPCHLIV11 CWPCHLIV11 ;
 label values CWPCHAGE2 CWPCHAGE2 ;
 label values CWPCHLEG2 CWPCHLEG2 ;
 label values CWPCHHOP2 CWPCHHOP2 ;
 label values CWPCHEVR2 CWPCHEVR2 ;
 label values CWPCHFAR2 CWPCHFAR2 ;
 label values CWPCHWNT2 CWPCHWNT2 ;
 label values CWPCHSON2 CWPCHSON2 ;
 label values CWPCHHPY2 CWPCHHPY2 ;
 label values CWPCHSEX3 CWPCHSEX3 ;
 label values CWPCHDOB_M3 CWPCHDOB_M3 ;
 label values CWPCHDOB_Y3 CWPCHDOB_Y3 ;
 label values CMCHDOB3 CMCHDOB3 ;
 label values MULTBIRT3 MULTBIRT3 ;
 label values CWPCHMAR3 CWPCHMAR3 ;
 label values CWPCHRES3 CWPCHRES3 ;
 label values CWPCHLRN3 CWPCHLRN3 ;
 label values CWPCHLIV19 CWPCHLIV19 ;
 label values CWPCHLIV20 CWPCHLIV20 ;
 label values CWPCHAGE3 CWPCHAGE3 ;
 label values CWPCHLEG3 CWPCHLEG3 ;
 label values CWPCHHOP3 CWPCHHOP3 ;
 label values CWPCHEVR3 CWPCHEVR3 ;
 label values CWPCHFAR3 CWPCHFAR3 ;
 label values CWPCHWNT3 CWPCHWNT3 ;
 label values CWPCHSON3 CWPCHSON3 ;
 label values CWPCHHPY3 CWPCHHPY3 ;
 label values CWPCHSEX4 CWPCHSEX4 ;
 label values CWPCHDOB_M4 CWPCHDOB_M4 ;
 label values CWPCHDOB_Y4 CWPCHDOB_Y4 ;
 label values CMCHDOB4 CMCHDOB4 ;
 label values MULTBIRT4 MULTBIRT4 ;
 label values CWPCHMAR4 CWPCHMAR4 ;
 label values CWPCHRES4 CWPCHRES4 ;
 label values CWPCHLRN4 CWPCHLRN4 ;
 label values CWPCHLIV28 CWPCHLIV28 ;
 label values CWPCHLIV29 CWPCHLIV29 ;
 label values CWPCHAGE4 CWPCHAGE4 ;
 label values CWPCHLEG4 CWPCHLEG4 ;
 label values CWPCHHOP4 CWPCHHOP4 ;
 label values CWPCHEVR4 CWPCHEVR4 ;
 label values CWPCHFAR4 CWPCHFAR4 ;
 label values CWPCHWNT4 CWPCHWNT4 ;
 label values CWPCHSON4 CWPCHSON4 ;
 label values CWPCHHPY4 CWPCHHPY4 ;
 label values CWPCHSEX5 CWPCHSEX5 ;
 label values CWPCHDOB_M5 CWPCHDOB_M5 ;
 label values CWPCHDOB_Y5 CWPCHDOB_Y5 ;
 label values CMCHDOB5 CMCHDOB5 ;
 label values MULTBIRT5 MULTBIRT5 ;
 label values CWPCHMAR5 CWPCHMAR5 ;
 label values CWPCHRES5 CWPCHRES5 ;
 label values CWPCHLRN5 CWPCHLRN5 ;
 label values CWPCHLIV37 CWPCHLIV37 ;
 label values CWPCHLIV38 CWPCHLIV38 ;
 label values CWPCHAGE5 CWPCHAGE5 ;
 label values CWPCHLEG5 CWPCHLEG5 ;
 label values CWPCHHOP5 CWPCHHOP5 ;
 label values CWPCHEVR5 CWPCHEVR5 ;
 label values CWPCHFAR5 CWPCHFAR5 ;
 label values CWPCHWNT5 CWPCHWNT5 ;
 label values CWPCHSON5 CWPCHSON5 ;
 label values CWPCHHPY5 CWPCHHPY5 ;
 label values CWPCHSEX6 CWPCHSEX6 ;
 label values CWPCHDOB_M6 CWPCHDOB_M6 ;
 label values CWPCHDOB_Y6 CWPCHDOB_Y6 ;
 label values CMCHDOB6 CMCHDOB6 ;
 label values MULTBIRT6 MULTBIRT6 ;
 label values CWPCHMAR6 CWPCHMAR6 ;
 label values CWPCHRES6 CWPCHRES6 ;
 label values CWPCHLRN6 CWPCHLRN6 ;
 label values CWPCHLIV46 CWPCHLIV46 ;
 label values CWPCHLIV47 CWPCHLIV47 ;
 label values CWPCHAGE6 CWPCHAGE6 ;
 label values CWPCHLEG6 CWPCHLEG6 ;
 label values CWPCHHOP6 CWPCHHOP6 ;
 label values CWPCHEVR6 CWPCHEVR6 ;
 label values CWPCHFAR6 CWPCHFAR6 ;
 label values CWPCHWNT6 CWPCHWNT6 ;
 label values CWPCHSON6 CWPCHSON6 ;
 label values CWPCHHPY6 CWPCHHPY6 ;
 label values CWPCHSEX7 CWPCHSEX7 ;
 label values CWPCHDOB_M7 CWPCHDOB_M7 ;
 label values CWPCHDOB_Y7 CWPCHDOB_Y7 ;
 label values CMCHDOB7 CMCHDOB7 ;
 label values MULTBIRT7 MULTBIRT7 ;
 label values CWPCHMAR7 CWPCHMAR7 ;
 label values CWPCHRES7 CWPCHRES7 ;
 label values CWPCHLRN7 CWPCHLRN7 ;
 label values CWPCHLIV55 CWPCHLIV55 ;
 label values CWPCHLIV56 CWPCHLIV56 ;
 label values CWPCHAGE7 CWPCHAGE7 ;
 label values CWPCHLEG7 CWPCHLEG7 ;
 label values CWPCHHOP7 CWPCHHOP7 ;
 label values CWPCHEVR7 CWPCHEVR7 ;
 label values CWPCHFAR7 CWPCHFAR7 ;
 label values CWPCHWNT7 CWPCHWNT7 ;
 label values CWPCHSON7 CWPCHSON7 ;
 label values CWPCHHPY7 CWPCHHPY7 ;
 label values CWPCHSEX8 CWPCHSEX8 ;
 label values CWPCHDOB_M8 CWPCHDOB_M8 ;
 label values CWPCHDOB_Y8 CWPCHDOB_Y8 ;
 label values CMCHDOB8 CMCHDOB8 ;
 label values MULTBIRT8 MULTBIRT8 ;
 label values CWPCHMAR8 CWPCHMAR8 ;
 label values CWPCHRES8 CWPCHRES8 ;
 label values CWPCHLRN8 CWPCHLRN8 ;
 label values CWPCHLIV64 CWPCHLIV64 ;
 label values CWPCHLIV65 CWPCHLIV65 ;
 label values CWPCHAGE8 CWPCHAGE8 ;
 label values CWPCHLEG8 CWPCHLEG8 ;
 label values CWPCHHOP8 CWPCHHOP8 ;
 label values CWPCHEVR8 CWPCHEVR8 ;
 label values CWPCHFAR8 CWPCHFAR8 ;
 label values CWPCHWNT8 CWPCHWNT8 ;
 label values CWPCHSON8 CWPCHSON8 ;
 label values CWPCHHPY8 CWPCHHPY8 ;
 label values CWPPRGNW CWPPRGNW ;
 label values CWPTRYPG CWPTRYPG ;
 label values CWPTRYLG CWPTRYLG ;
 label values CWPCPWNT CWPCPWNT ;
 label values CWPCPSON CWPCPSON ;
 label values CWPCPHPY CWPCPHPY ;
 label values CWPOTKID CWPOTKID ;
 label values CWPOKNUM CWPOKNUM ;
 label values CWPOKAD CWPOKAD ;
 label values CWPOKADN CWPOKADN ;
 label values CWPOKWTH CWPOKWTH ;
 label values CWPOKWTHN CWPOKWTHN ;
 label values CWPOKSEX CWPOKSEX ;
 label values CWPOKAD2 CWPOKAD2 ;
 label values CWPOKTRY CWPOKTRY ;
 label values CWPOKTHR CWPOKTHR ;
 label values CWPOKLIV1 CWPOKLIV1 ;
 label values CWPOKLIV2 CWPOKLIV2 ;
 label values CWPOKLIV3 CWPOKLIV3 ;
 label values CWPOKFAR CWPOKFAR ;
 label values CWPOKAGE CWPOKAGE ;
 label values CWPOKSEX2 CWPOKSEX2 ;
 label values CWPOKAD3 CWPOKAD3 ;
 label values CWPOKTRY2 CWPOKTRY2 ;
 label values CWPOKTHR2 CWPOKTHR2 ;
 label values CWPOKLIV8 CWPOKLIV8 ;
 label values CWPOKLIV9 CWPOKLIV9 ;
 label values CWPOKLIV10 CWPOKLIV10 ;
 label values CWPOKFAR2 CWPOKFAR2 ;
 label values CWPOKAGE2 CWPOKAGE2 ;
 label values CWPOKSEX3 CWPOKSEX3 ;
 label values CWPOKAD4 CWPOKAD4 ;
 label values CWPOKTRY3 CWPOKTRY3 ;
 label values CWPOKTHR3 CWPOKTHR3 ;
 label values CWPOKLIV15 CWPOKLIV15 ;
 label values CWPOKLIV16 CWPOKLIV16 ;
 label values CWPOKLIV17 CWPOKLIV17 ;
 label values CWPOKFAR3 CWPOKFAR3 ;
 label values CWPOKAGE3 CWPOKAGE3 ;
 label values CWPOKSEX4 CWPOKSEX4 ;
 label values CWPOKAD5 CWPOKAD5 ;
 label values CWPOKTRY4 CWPOKTRY4 ;
 label values CWPOKTHR4 CWPOKTHR4 ;
 label values CWPOKLIV22 CWPOKLIV22 ;
 label values CWPOKLIV23 CWPOKLIV23 ;
 label values CWPOKLIV24 CWPOKLIV24 ;
 label values CWPOKFAR4 CWPOKFAR4 ;
 label values CWPOKAGE4 CWPOKAGE4 ;
 label values CWPOKSEX5 CWPOKSEX5 ;
 label values CWPOKAD6 CWPOKAD6 ;
 label values CWPOKTRY5 CWPOKTRY5 ;
 label values CWPOKTHR5 CWPOKTHR5 ;
 label values CWPOKLIV29 CWPOKLIV29 ;
 label values CWPOKLIV30 CWPOKLIV30 ;
 label values CWPOKLIV31 CWPOKLIV31 ;
 label values CWPOKFAR5 CWPOKFAR5 ;
 label values CWPOKAGE5 CWPOKAGE5 ;
 label values CWPOKSEX6 CWPOKSEX6 ;
 label values CWPOKAD7 CWPOKAD7 ;
 label values CWPOKTRY6 CWPOKTRY6 ;
 label values CWPOKTHR6 CWPOKTHR6 ;
 label values CWPOKLIV36 CWPOKLIV36 ;
 label values CWPOKLIV37 CWPOKLIV37 ;
 label values CWPOKLIV38 CWPOKLIV38 ;
 label values CWPOKFAR6 CWPOKFAR6 ;
 label values CWPOKAGE6 CWPOKAGE6 ;
 label values CWPOKSEX7 CWPOKSEX7 ;
 label values CWPOKAD8 CWPOKAD8 ;
 label values CWPOKTRY7 CWPOKTRY7 ;
 label values CWPOKTHR7 CWPOKTHR7 ;
 label values CWPOKLIV43 CWPOKLIV43 ;
 label values CWPOKLIV44 CWPOKLIV44 ;
 label values CWPOKLIV45 CWPOKLIV45 ;
 label values CWPOKFAR7 CWPOKFAR7 ;
 label values CWPOKAGE7 CWPOKAGE7 ;
 label values C_OKAKIDS C_OKAKIDS ;
 label values CWPNBEVR CWPNBEVR ;
 label values CWPNBNUM CWPNBNUM ;
 label values CWPNBREL CWPNBREL ;
 label values CWPNBRL CWPNBRL ;
 label values CWPNBFOS CWPNBFOS ;
 label values CWPNBFS CWPNBFS ;
 label values CWPNBAD CWPNBAD ;
 label values CWPNBADN CWPNBADN ;
 label values CWPNBREL2 CWPNBREL2 ;
 label values CWPNBFOS2 CWPNBFOS2 ;
 label values CWPNBAD2 CWPNBAD2 ;
 label values CWPNBTRY CWPNBTRY ;
 label values CWPNBTHR CWPNBTHR ;
 label values CWPNBSEX CWPNBSEX ;
 label values CWPNBLIV1 CWPNBLIV1 ;
 label values CWPNBLIV2 CWPNBLIV2 ;
 label values CWPNBFAR CWPNBFAR ;
 label values CWPNBAGE CWPNBAGE ;
 label values CWPNBREL3 CWPNBREL3 ;
 label values CWPNBFOS3 CWPNBFOS3 ;
 label values CWPNBAD3 CWPNBAD3 ;
 label values CWPNBTRY2 CWPNBTRY2 ;
 label values CWPNBTHR2 CWPNBTHR2 ;
 label values CWPNBSEX2 CWPNBSEX2 ;
 label values CWPNBLIV8 CWPNBLIV8 ;
 label values CWPNBLIV9 CWPNBLIV9 ;
 label values CWPNBFAR2 CWPNBFAR2 ;
 label values CWPNBAGE2 CWPNBAGE2 ;
 label values CWPNBREL4 CWPNBREL4 ;
 label values CWPNBFOS4 CWPNBFOS4 ;
 label values CWPNBAD4 CWPNBAD4 ;
 label values CWPNBTRY3 CWPNBTRY3 ;
 label values CWPNBTHR3 CWPNBTHR3 ;
 label values CWPNBSEX3 CWPNBSEX3 ;
 label values CWPNBLIV15 CWPNBLIV15 ;
 label values CWPNBLIV16 CWPNBLIV16 ;
 label values CWPNBFAR3 CWPNBFAR3 ;
 label values CWPNBAGE3 CWPNBAGE3 ;
 label values CWPNBREL5 CWPNBREL5 ;
 label values CWPNBFOS5 CWPNBFOS5 ;
 label values CWPNBAD5 CWPNBAD5 ;
 label values CWPNBTRY4 CWPNBTRY4 ;
 label values CWPNBTHR4 CWPNBTHR4 ;
 label values CWPNBSEX4 CWPNBSEX4 ;
 label values CWPNBLIV22 CWPNBLIV22 ;
 label values CWPNBLIV23 CWPNBLIV23 ;
 label values CWPNBFAR4 CWPNBFAR4 ;
 label values CWPNBAGE4 CWPNBAGE4 ;
 label values CWPNBREL6 CWPNBREL6 ;
 label values CWPNBFOS6 CWPNBFOS6 ;
 label values CWPNBAD6 CWPNBAD6 ;
 label values CWPNBTRY5 CWPNBTRY5 ;
 label values CWPNBTHR5 CWPNBTHR5 ;
 label values CWPNBSEX5 CWPNBSEX5 ;
 label values CWPNBLIV29 CWPNBLIV29 ;
 label values CWPNBLIV30 CWPNBLIV30 ;
 label values CWPNBFAR5 CWPNBFAR5 ;
 label values CWPNBAGE5 CWPNBAGE5 ;
 label values CWPNBREL7 CWPNBREL7 ;
 label values CWPNBFOS7 CWPNBFOS7 ;
 label values CWPNBAD7 CWPNBAD7 ;
 label values CWPNBTRY6 CWPNBTRY6 ;
 label values CWPNBTHR6 CWPNBTHR6 ;
 label values CWPNBSEX6 CWPNBSEX6 ;
 label values CWPNBLIV36 CWPNBLIV36 ;
 label values CWPNBLIV37 CWPNBLIV37 ;
 label values CWPNBFAR6 CWPNBFAR6 ;
 label values CWPNBAGE6 CWPNBAGE6 ;
 label values CWPNBREL8 CWPNBREL8 ;
 label values CWPNBFOS8 CWPNBFOS8 ;
 label values CWPNBAD8 CWPNBAD8 ;
 label values CWPNBTRY7 CWPNBTRY7 ;
 label values CWPNBTHR7 CWPNBTHR7 ;
 label values CWPNBSEX7 CWPNBSEX7 ;
 label values CWPNBLIV43 CWPNBLIV43 ;
 label values CWPNBLIV44 CWPNBLIV44 ;
 label values CWPNBFAR7 CWPNBFAR7 ;
 label values CWPNBAGE7 CWPNBAGE7 ;
 label values CWPNBREL9 CWPNBREL9 ;
 label values CWPNBFOS9 CWPNBFOS9 ;
 label values CWPNBAD9 CWPNBAD9 ;
 label values CWPNBTRY8 CWPNBTRY8 ;
 label values CWPNBTHR8 CWPNBTHR8 ;
 label values CWPNBSEX8 CWPNBSEX8 ;
 label values CWPNBLIV50 CWPNBLIV50 ;
 label values CWPNBLIV51 CWPNBLIV51 ;
 label values CWPNBFAR8 CWPNBFAR8 ;
 label values CWPNBAGE8 CWPNBAGE8 ;
 label values CWPNBREL10 CWPNBREL10 ;
 label values CWPNBFOS10 CWPNBFOS10 ;
 label values CWPNBAD10 CWPNBAD10 ;
 label values CWPNBTRY9 CWPNBTRY9 ;
 label values CWPNBTHR9 CWPNBTHR9 ;
 label values CWPNBSEX9 CWPNBSEX9 ;
 label values CWPNBLIV57 CWPNBLIV57 ;
 label values CWPNBLIV58 CWPNBLIV58 ;
 label values CWPNBFAR9 CWPNBFAR9 ;
 label values CWPNBAGE9 CWPNBAGE9 ;
 label values CWPNBREL11 CWPNBREL11 ;
 label values CWPNBFOS11 CWPNBFOS11 ;
 label values CWPNBAD11 CWPNBAD11 ;
 label values CWPNBTRY10 CWPNBTRY10 ;
 label values CWPNBTHR10 CWPNBTHR10 ;
 label values CWPNBSEX10 CWPNBSEX10 ;
 label values CWPNBLIV64 CWPNBLIV64 ;
 label values CWPNBLIV65 CWPNBLIV65 ;
 label values CWPNBFAR10 CWPNBFAR10 ;
 label values CWPNBAGE10 CWPNBAGE10 ;
 label values C_NBAKIDS C_NBAKIDS ;
 label values MARDATEN_M MARDATEN_M ;
 label values MARDATEN_Y MARDATEN_Y ;
 label values CMMARP CMMARP ;
 label values AGEMARR AGEMARR ;
 label values LIVTOGN LIVTOGN ;
 label values STRTLIVE_M STRTLIVE_M ;
 label values STRTLIVE_Y STRTLIVE_Y ;
 label values CMCOHP CMCOHP ;
 label values AGELIV AGELIV ;
 label values CMUNIONP CMUNIONP ;
 label values ENGAGTHN ENGAGTHN ;
 label values MARREND MARREND ;
 label values WIFEDIED_M WIFEDIED_M ;
 label values WIFEDIED_Y WIFEDIED_Y ;
 label values CMWIDP CMWIDP ;
 label values DIVORFIN_M DIVORFIN_M ;
 label values DIVORFIN_Y DIVORFIN_Y ;
 label values CMDIVP CMDIVP ;
 label values ANNULLED_M ANNULLED_M ;
 label values ANNULLED_Y ANNULLED_Y ;
 label values CMANNP CMANNP ;
 label values STOPLIVE_M STOPLIVE_M ;
 label values STOPLIVE_Y STOPLIVE_Y ;
 label values CMSTOPP CMSTOPP ;
 label values CURRPRTS CURRPRTS ;
 label values PXCURR PXCURR ;
 label values P1CURRPRT P1CURRPRT ;
 label values PXMARRY PXMARRY ;
 label values PXLUSE PXLUSE ;
 label values PXLMETH01 PXLMETH01 ;
 label values PXLMETH02 PXLMETH02 ;
 label values PXLMETH03 PXLMETH03 ;
 label values PXLMETH04 PXLMETH04 ;
 label values PXLRUSE PXLRUSE ;
 label values PXLRMETH1 PXLRMETH1 ;
 label values PXLRMETH2 PXLRMETH2 ;
 label values PXLRMETH3 PXLRMETH3 ;
 label values PXLPUSE PXLPUSE ;
 label values DKPXLPUSE DKPXLPUSE ;
 label values PXLPMETH01 PXLPMETH01 ;
 label values PXLPMETH02 PXLPMETH02 ;
 label values PXLPMETH03 PXLPMETH03 ;
 label values PXLPMETH04 PXLPMETH04 ;
 label values DKPXLPMETH DKPXLPMETH ;
 label values LSXUSEP LSXUSEP ;
 label values MTONCEP MTONCEP ;
 label values PXLSXPRB PXLSXPRB ;
 label values PXMTONCE PXMTONCE ;
 label values PXPAGE PXPAGE ;
 label values PXRELAGE PXRELAGE ;
 label values PXRELYRS PXRELYRS ;
 label values PXFRLTN1 PXFRLTN1 ;
 label values P1YMULT1 P1YMULT1 ;
 label values P1YRACE1 P1YRACE1 ;
 label values P1YHRACE1 P1YHRACE1 ;
 label values P1YNRACE1 P1YNRACE1 ;
 label values PXDOB_M PXDOB_M ;
 label values PXDOB_Y PXDOB_Y ;
 label values CMDOBP CMDOBP ;
 label values PXEDUC PXEDUC ;
 label values PXMARBF PXMARBF ;
 label values PXANYCH PXANYCH ;
 label values PXANYCHN PXANYCHN ;
 label values PXABLECH PXABLECH ;
 label values PXSXFRST_M PXSXFRST_M ;
 label values PXSXFRST_Y PXSXFRST_Y ;
 label values CMFSXP CMFSXP ;
 label values AGEFSXP AGEFSXP ;
 label values PXAGFRST PXAGFRST ;
 label values PXFRLTN2 PXFRLTN2 ;
 label values PXFUSE PXFUSE ;
 label values PXFMETH01 PXFMETH01 ;
 label values PXFMETH02 PXFMETH02 ;
 label values PXFMETH03 PXFMETH03 ;
 label values PXFMETH04 PXFMETH04 ;
 label values PXANYUSE PXANYUSE ;
 label values PXMETHOD01 PXMETHOD01 ;
 label values PXMETHOD02 PXMETHOD02 ;
 label values PXMETHOD03 PXMETHOD03 ;
 label values PXMETHOD04 PXMETHOD04 ;
 label values PXMSTUSE PXMSTUSE ;
 label values PXCONFRQ PXCONFRQ ;
 label values PXNOFREQ PXNOFREQ ;
 label values PXCHILD PXCHILD ;
 label values PXCXSEX PXCXSEX ;
 label values PXCXBORN_M PXCXBORN_M ;
 label values PXCXBORN_Y PXCXBORN_Y ;
 label values CMCHDOB11 CMCHDOB11 ;
 label values MULTBIRT11 MULTBIRT11 ;
 label values PXCXMARB PXCXMARB ;
 label values PXCXRES PXCXRES ;
 label values PXCXKNOW PXCXKNOW ;
 label values PXCXLIV01 PXCXLIV01 ;
 label values PXCXLIV02 PXCXLIV02 ;
 label values PXCXAGE PXCXAGE ;
 label values PXCXLAW PXCXLAW ;
 label values PXCXHOP PXCXHOP ;
 label values PXCXEVER PXCXEVER ;
 label values PXCXFAR PXCXFAR ;
 label values PXWANT PXWANT ;
 label values PXSOON PXSOON ;
 label values PXHPYPG PXHPYPG ;
 label values PXCXSEX2 PXCXSEX2 ;
 label values PXCXBORN_M2 PXCXBORN_M2 ;
 label values PXCXBORN_Y2 PXCXBORN_Y2 ;
 label values CMCHDOB12 CMCHDOB12 ;
 label values MULTBIRT12 MULTBIRT12 ;
 label values PXCXMARB2 PXCXMARB2 ;
 label values PXCXRES2 PXCXRES2 ;
 label values PXCXKNOW2 PXCXKNOW2 ;
 label values PXCXLIV11 PXCXLIV11 ;
 label values PXCXLIV12 PXCXLIV12 ;
 label values PXCXAGE2 PXCXAGE2 ;
 label values PXCXLAW2 PXCXLAW2 ;
 label values PXCXHOP2 PXCXHOP2 ;
 label values PXCXEVER2 PXCXEVER2 ;
 label values PXCXFAR2 PXCXFAR2 ;
 label values PXWANT2 PXWANT2 ;
 label values PXSOON2 PXSOON2 ;
 label values PXHPYPG2 PXHPYPG2 ;
 label values PXCXSEX3 PXCXSEX3 ;
 label values PXCXBORN_M3 PXCXBORN_M3 ;
 label values PXCXBORN_Y3 PXCXBORN_Y3 ;
 label values CMCHDOB13 CMCHDOB13 ;
 label values MULTBIRT13 MULTBIRT13 ;
 label values PXCXMARB3 PXCXMARB3 ;
 label values PXCXRES3 PXCXRES3 ;
 label values PXCXKNOW3 PXCXKNOW3 ;
 label values PXCXLIV21 PXCXLIV21 ;
 label values PXCXLIV22 PXCXLIV22 ;
 label values PXCXAGE3 PXCXAGE3 ;
 label values PXCXLAW3 PXCXLAW3 ;
 label values PXCXHOP3 PXCXHOP3 ;
 label values PXCXEVER3 PXCXEVER3 ;
 label values PXCXFAR3 PXCXFAR3 ;
 label values PXWANT3 PXWANT3 ;
 label values PXSOON3 PXSOON3 ;
 label values PXHPYPG3 PXHPYPG3 ;
 label values PXCXSEX4 PXCXSEX4 ;
 label values PXCXBORN_M4 PXCXBORN_M4 ;
 label values PXCXBORN_Y4 PXCXBORN_Y4 ;
 label values CMCHDOB14 CMCHDOB14 ;
 label values MULTBIRT14 MULTBIRT14 ;
 label values PXCXMARB4 PXCXMARB4 ;
 label values PXCXRES4 PXCXRES4 ;
 label values PXCXKNOW4 PXCXKNOW4 ;
 label values PXCXLIV31 PXCXLIV31 ;
 label values PXCXLIV32 PXCXLIV32 ;
 label values PXCXAGE4 PXCXAGE4 ;
 label values PXCXLAW4 PXCXLAW4 ;
 label values PXCXHOP4 PXCXHOP4 ;
 label values PXCXEVER4 PXCXEVER4 ;
 label values PXCXFAR4 PXCXFAR4 ;
 label values PXWANT4 PXWANT4 ;
 label values PXSOON4 PXSOON4 ;
 label values PXHPYPG4 PXHPYPG4 ;
 label values PXCXSEX5 PXCXSEX5 ;
 label values PXCXBORN_M5 PXCXBORN_M5 ;
 label values PXCXBORN_Y5 PXCXBORN_Y5 ;
 label values CMCHDOB15 CMCHDOB15 ;
 label values MULTBIRT15 MULTBIRT15 ;
 label values PXCXMARB5 PXCXMARB5 ;
 label values PXCXRES5 PXCXRES5 ;
 label values PXCXKNOW5 PXCXKNOW5 ;
 label values PXCXLIV41 PXCXLIV41 ;
 label values PXCXLIV42 PXCXLIV42 ;
 label values PXCXAGE5 PXCXAGE5 ;
 label values PXCXLAW5 PXCXLAW5 ;
 label values PXCXHOP5 PXCXHOP5 ;
 label values PXCXEVER5 PXCXEVER5 ;
 label values PXCXFAR5 PXCXFAR5 ;
 label values PXWANT5 PXWANT5 ;
 label values PXSOON5 PXSOON5 ;
 label values PXHPYPG5 PXHPYPG5 ;
 label values PXCXSEX6 PXCXSEX6 ;
 label values PXCXBORN_M6 PXCXBORN_M6 ;
 label values PXCXBORN_Y6 PXCXBORN_Y6 ;
 label values CMCHDOB16 CMCHDOB16 ;
 label values MULTBIRT16 MULTBIRT16 ;
 label values PXCXMARB6 PXCXMARB6 ;
 label values PXCXRES6 PXCXRES6 ;
 label values PXCXKNOW6 PXCXKNOW6 ;
 label values PXCXLIV51 PXCXLIV51 ;
 label values PXCXLIV52 PXCXLIV52 ;
 label values PXCXAGE6 PXCXAGE6 ;
 label values PXCXLAW6 PXCXLAW6 ;
 label values PXCXHOP6 PXCXHOP6 ;
 label values PXCXEVER6 PXCXEVER6 ;
 label values PXCXFAR6 PXCXFAR6 ;
 label values PXWANT6 PXWANT6 ;
 label values PXSOON6 PXSOON6 ;
 label values PXHPYPG6 PXHPYPG6 ;
 label values PXCXSEX7 PXCXSEX7 ;
 label values PXCXBORN_M7 PXCXBORN_M7 ;
 label values PXCXBORN_Y7 PXCXBORN_Y7 ;
 label values CMCHDOB17 CMCHDOB17 ;
 label values MULTBIRT17 MULTBIRT17 ;
 label values PXCXMARB7 PXCXMARB7 ;
 label values PXCXRES7 PXCXRES7 ;
 label values PXCXKNOW7 PXCXKNOW7 ;
 label values PXCXLIV61 PXCXLIV61 ;
 label values PXCXLIV62 PXCXLIV62 ;
 label values PXCXAGE7 PXCXAGE7 ;
 label values PXCXLAW7 PXCXLAW7 ;
 label values PXCXHOP7 PXCXHOP7 ;
 label values PXCXEVER7 PXCXEVER7 ;
 label values PXCXFAR7 PXCXFAR7 ;
 label values PXWANT7 PXWANT7 ;
 label values PXSOON7 PXSOON7 ;
 label values PXHPYPG7 PXHPYPG7 ;
 label values PXCPREG PXCPREG ;
 label values PXTRYING PXTRYING ;
 label values PXTRYLONG PXTRYLONG ;
 label values PXRWANT PXRWANT ;
 label values PXRSOON PXRSOON ;
 label values PXCPFEEL PXCPFEEL ;
 label values PXOTKID PXOTKID ;
 label values PXOKNUM PXOKNUM ;
 label values PXOKWTH PXOKWTH ;
 label values PXOKWTHN PXOKWTHN ;
 label values PXOKADP1 PXOKADP1 ;
 label values PXOKADN PXOKADN ;
 label values PXOKSEX PXOKSEX ;
 label values PXOKAD PXOKAD ;
 label values PXOKLIV1 PXOKLIV1 ;
 label values PXOKLIV2 PXOKLIV2 ;
 label values PXOKFAR PXOKFAR ;
 label values PXOKAGE PXOKAGE ;
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
 label values D_OKAKIDS D_OKAKIDS ;
 label values PXNBEVR PXNBEVR ;
 label values PXNBNUM PXNBNUM ;
 label values PXNBREL PXNBREL ;
 label values PXNBRL PXNBRL ;
 label values PXNBFOS PXNBFOS ;
 label values PXNBFS PXNBFS ;
 label values PXNBAD PXNBAD ;
 label values PXNBADN PXNBADN ;
 label values PXNBSEX PXNBSEX ;
 label values PXNBLIV1 PXNBLIV1 ;
 label values PXNBFAR PXNBFAR ;
 label values PXNBAGE PXNBAGE ;
 label values PXNBSEX2 PXNBSEX2 ;
 label values PXNBLIV9 PXNBLIV9 ;
 label values PXNBFAR2 PXNBFAR2 ;
 label values PXNBAGE2 PXNBAGE2 ;
 label values D_NBAKIDS D_NBAKIDS ;
 label values MARDATEN_M2 MARDATEN_M2 ;
 label values MARDATEN_Y2 MARDATEN_Y2 ;
 label values CMMARP2 CMMARP2 ;
 label values AGEMARR2 AGEMARR2 ;
 label values LIVTOGN2 LIVTOGN2 ;
 label values STRTLIVE_M2 STRTLIVE_M2 ;
 label values STRTLIVE_Y2 STRTLIVE_Y2 ;
 label values CMCOHP2 CMCOHP2 ;
 label values AGELIV2 AGELIV2 ;
 label values CMUNIONP2 CMUNIONP2 ;
 label values ENGAGTHN2 ENGAGTHN2 ;
 label values MARREND2 MARREND2 ;
 label values WIFEDIED_M2 WIFEDIED_M2 ;
 label values WIFEDIED_Y2 WIFEDIED_Y2 ;
 label values CMWIDP2 CMWIDP2 ;
 label values DIVORFIN_M2 DIVORFIN_M2 ;
 label values DIVORFIN_Y2 DIVORFIN_Y2 ;
 label values CMDIVP2 CMDIVP2 ;
 label values ANNULLED_M2 ANNULLED_M2 ;
 label values ANNULLED_Y2 ANNULLED_Y2 ;
 label values CMANNP2 CMANNP2 ;
 label values STOPLIVE_M2 STOPLIVE_M2 ;
 label values STOPLIVE_Y2 STOPLIVE_Y2 ;
 label values CMSTOPP2 CMSTOPP2 ;
 label values PXCURR2 PXCURR2 ;
 label values P2CURRPRT P2CURRPRT ;
 label values PXMARRY2 PXMARRY2 ;
 label values PXLUSE2 PXLUSE2 ;
 label values PXLMETH14 PXLMETH14 ;
 label values PXLMETH15 PXLMETH15 ;
 label values PXLMETH16 PXLMETH16 ;
 label values PXLMETH17 PXLMETH17 ;
 label values PXLRUSE2 PXLRUSE2 ;
 label values PXLRMETH5 PXLRMETH5 ;
 label values PXLRMETH6 PXLRMETH6 ;
 label values PXLRMETH7 PXLRMETH7 ;
 label values PXLPUSE2 PXLPUSE2 ;
 label values DKPXLPUSE2 DKPXLPUSE2 ;
 label values PXLPMETH12 PXLPMETH12 ;
 label values PXLPMETH13 PXLPMETH13 ;
 label values PXLPMETH14 PXLPMETH14 ;
 label values PXLPMETH15 PXLPMETH15 ;
 label values DKPXLPMETH2 DKPXLPMETH2 ;
 label values LSXUSEP2 LSXUSEP2 ;
 label values MTONCEP2 MTONCEP2 ;
 label values PXLSXPRB2 PXLSXPRB2 ;
 label values PXMTONCE2 PXMTONCE2 ;
 label values PXPAGE2 PXPAGE2 ;
 label values PXRELAGE2 PXRELAGE2 ;
 label values PXRELYRS2 PXRELYRS2 ;
 label values PXFRLTN3 PXFRLTN3 ;
 label values P1YMULT2 P1YMULT2 ;
 label values P1YRACE2 P1YRACE2 ;
 label values P1YHRACE2 P1YHRACE2 ;
 label values P1YNRACE2 P1YNRACE2 ;
 label values PXDOB_M2 PXDOB_M2 ;
 label values PXDOB_Y2 PXDOB_Y2 ;
 label values CMDOBP2 CMDOBP2 ;
 label values PXEDUC2 PXEDUC2 ;
 label values PXMARBF2 PXMARBF2 ;
 label values PXANYCH2 PXANYCH2 ;
 label values PXANYCHN2 PXANYCHN2 ;
 label values PXABLECH2 PXABLECH2 ;
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
 label values PXANYUSE2 PXANYUSE2 ;
 label values PXMETHOD14 PXMETHOD14 ;
 label values PXMETHOD15 PXMETHOD15 ;
 label values PXMETHOD16 PXMETHOD16 ;
 label values PXMETHOD17 PXMETHOD17 ;
 label values PXMSTUSE2 PXMSTUSE2 ;
 label values PXCONFRQ2 PXCONFRQ2 ;
 label values PXNOFREQ2 PXNOFREQ2 ;
 label values PXCHILD2 PXCHILD2 ;
 label values PXCXSEX11 PXCXSEX11 ;
 label values PXCXBORN_M11 PXCXBORN_M11 ;
 label values PXCXBORN_Y11 PXCXBORN_Y11 ;
 label values CMCHDOB21 CMCHDOB21 ;
 label values MULTBIRT21 MULTBIRT21 ;
 label values PXCXMARB11 PXCXMARB11 ;
 label values PXCXRES11 PXCXRES11 ;
 label values PXCXKNOW11 PXCXKNOW11 ;
 label values PXCXLIV101 PXCXLIV101 ;
 label values PXCXLIV102 PXCXLIV102 ;
 label values PXCXAGE11 PXCXAGE11 ;
 label values PXCXLAW11 PXCXLAW11 ;
 label values PXCXHOP11 PXCXHOP11 ;
 label values PXCXEVER11 PXCXEVER11 ;
 label values PXCXFAR11 PXCXFAR11 ;
 label values PXWANT11 PXWANT11 ;
 label values PXSOON11 PXSOON11 ;
 label values PXHPYPG11 PXHPYPG11 ;
 label values PXCXSEX12 PXCXSEX12 ;
 label values PXCXBORN_M12 PXCXBORN_M12 ;
 label values PXCXBORN_Y12 PXCXBORN_Y12 ;
 label values CMCHDOB22 CMCHDOB22 ;
 label values MULTBIRT22 MULTBIRT22 ;
 label values PXCXMARB12 PXCXMARB12 ;
 label values PXCXRES12 PXCXRES12 ;
 label values PXCXKNOW12 PXCXKNOW12 ;
 label values PXCXLIV111 PXCXLIV111 ;
 label values PXCXLIV112 PXCXLIV112 ;
 label values PXCXAGE12 PXCXAGE12 ;
 label values PXCXLAW12 PXCXLAW12 ;
 label values PXCXHOP12 PXCXHOP12 ;
 label values PXCXEVER12 PXCXEVER12 ;
 label values PXCXFAR12 PXCXFAR12 ;
 label values PXWANT12 PXWANT12 ;
 label values PXSOON12 PXSOON12 ;
 label values PXHPYPG12 PXHPYPG12 ;
 label values PXCXSEX13 PXCXSEX13 ;
 label values PXCXBORN_M13 PXCXBORN_M13 ;
 label values PXCXBORN_Y13 PXCXBORN_Y13 ;
 label values CMCHDOB23 CMCHDOB23 ;
 label values MULTBIRT23 MULTBIRT23 ;
 label values PXCXMARB13 PXCXMARB13 ;
 label values PXCXRES13 PXCXRES13 ;
 label values PXCXKNOW13 PXCXKNOW13 ;
 label values PXCXLIV121 PXCXLIV121 ;
 label values PXCXLIV122 PXCXLIV122 ;
 label values PXCXAGE13 PXCXAGE13 ;
 label values PXCXLAW13 PXCXLAW13 ;
 label values PXCXHOP13 PXCXHOP13 ;
 label values PXCXEVER13 PXCXEVER13 ;
 label values PXCXFAR13 PXCXFAR13 ;
 label values PXWANT13 PXWANT13 ;
 label values PXSOON13 PXSOON13 ;
 label values PXHPYPG13 PXHPYPG13 ;
 label values PXCXSEX14 PXCXSEX14 ;
 label values PXCXBORN_M14 PXCXBORN_M14 ;
 label values PXCXBORN_Y14 PXCXBORN_Y14 ;
 label values CMCHDOB24 CMCHDOB24 ;
 label values MULTBIRT24 MULTBIRT24 ;
 label values PXCXMARB14 PXCXMARB14 ;
 label values PXCXRES14 PXCXRES14 ;
 label values PXCXKNOW14 PXCXKNOW14 ;
 label values PXCXLIV131 PXCXLIV131 ;
 label values PXCXLIV132 PXCXLIV132 ;
 label values PXCXAGE14 PXCXAGE14 ;
 label values PXCXLAW14 PXCXLAW14 ;
 label values PXCXHOP14 PXCXHOP14 ;
 label values PXCXEVER14 PXCXEVER14 ;
 label values PXCXFAR14 PXCXFAR14 ;
 label values PXWANT14 PXWANT14 ;
 label values PXSOON14 PXSOON14 ;
 label values PXHPYPG14 PXHPYPG14 ;
 label values PXCXSEX15 PXCXSEX15 ;
 label values PXCXBORN_M15 PXCXBORN_M15 ;
 label values PXCXBORN_Y15 PXCXBORN_Y15 ;
 label values CMCHDOB25 CMCHDOB25 ;
 label values MULTBIRT25 MULTBIRT25 ;
 label values PXCXMARB15 PXCXMARB15 ;
 label values PXCXRES15 PXCXRES15 ;
 label values PXCXKNOW15 PXCXKNOW15 ;
 label values PXCXLIV141 PXCXLIV141 ;
 label values PXCXLIV142 PXCXLIV142 ;
 label values PXCXAGE15 PXCXAGE15 ;
 label values PXCXLAW15 PXCXLAW15 ;
 label values PXCXHOP15 PXCXHOP15 ;
 label values PXCXEVER15 PXCXEVER15 ;
 label values PXCXFAR15 PXCXFAR15 ;
 label values PXWANT15 PXWANT15 ;
 label values PXSOON15 PXSOON15 ;
 label values PXHPYPG15 PXHPYPG15 ;
 label values PXCPREG2 PXCPREG2 ;
 label values PXTRYING2 PXTRYING2 ;
 label values PXTRYLONG2 PXTRYLONG2 ;
 label values PXRWANT2 PXRWANT2 ;
 label values PXRSOON2 PXRSOON2 ;
 label values PXCPFEEL2 PXCPFEEL2 ;
 label values PXOTKID2 PXOTKID2 ;
 label values PXOKNUM2 PXOKNUM2 ;
 label values PXOKADP2 PXOKADP2 ;
 label values PXOKADN2 PXOKADN2 ;
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
 label values PXOKSEX14 PXOKSEX14 ;
 label values PXOKAD14 PXOKAD14 ;
 label values PXOKLIV105 PXOKLIV105 ;
 label values PXOKFAR14 PXOKFAR14 ;
 label values PXOKAGE14 PXOKAGE14 ;
 label values D_OKAKIDS2 D_OKAKIDS2 ;
 label values PXNBEVR2 PXNBEVR2 ;
 label values PXNBNUM2 PXNBNUM2 ;
 label values PXNBREL2 PXNBREL2 ;
 label values PXNBRL2 PXNBRL2 ;
 label values PXNBFOS2 PXNBFOS2 ;
 label values PXNBFS2 PXNBFS2 ;
 label values PXNBAD2 PXNBAD2 ;
 label values D_NBAKIDS2 D_NBAKIDS2 ;
 label values MARDATEN_M3 MARDATEN_M3 ;
 label values MARDATEN_Y3 MARDATEN_Y3 ;
 label values CMMARP3 CMMARP3 ;
 label values AGEMARR3 AGEMARR3 ;
 label values LIVTOGN3 LIVTOGN3 ;
 label values STRTLIVE_M3 STRTLIVE_M3 ;
 label values STRTLIVE_Y3 STRTLIVE_Y3 ;
 label values CMCOHP3 CMCOHP3 ;
 label values AGELIV3 AGELIV3 ;
 label values CMUNIONP3 CMUNIONP3 ;
 label values ENGAGTHN3 ENGAGTHN3 ;
 label values MARREND3 MARREND3 ;
 label values WIFEDIED_M3 WIFEDIED_M3 ;
 label values WIFEDIED_Y3 WIFEDIED_Y3 ;
 label values CMWIDP3 CMWIDP3 ;
 label values DIVORFIN_M3 DIVORFIN_M3 ;
 label values DIVORFIN_Y3 DIVORFIN_Y3 ;
 label values CMDIVP3 CMDIVP3 ;
 label values ANNULLED_M3 ANNULLED_M3 ;
 label values ANNULLED_Y3 ANNULLED_Y3 ;
 label values CMANNP3 CMANNP3 ;
 label values STOPLIVE_M3 STOPLIVE_M3 ;
 label values STOPLIVE_Y3 STOPLIVE_Y3 ;
 label values CMSTOPP3 CMSTOPP3 ;
 label values PXCURR3 PXCURR3 ;
 label values P3CURRPRT P3CURRPRT ;
 label values PXMARRY3 PXMARRY3 ;
 label values PXLUSE3 PXLUSE3 ;
 label values PXLMETH27 PXLMETH27 ;
 label values PXLMETH28 PXLMETH28 ;
 label values PXLMETH29 PXLMETH29 ;
 label values PXLMETH30 PXLMETH30 ;
 label values PXLRUSE3 PXLRUSE3 ;
 label values PXLRMETH9 PXLRMETH9 ;
 label values PXLRMETH10 PXLRMETH10 ;
 label values PXLRMETH11 PXLRMETH11 ;
 label values PXLPUSE3 PXLPUSE3 ;
 label values DKPXLPUSE3 DKPXLPUSE3 ;
 label values PXLPMETH23 PXLPMETH23 ;
 label values PXLPMETH24 PXLPMETH24 ;
 label values PXLPMETH25 PXLPMETH25 ;
 label values PXLPMETH26 PXLPMETH26 ;
 label values DKPXLPMETH3 DKPXLPMETH3 ;
 label values LSXUSEP3 LSXUSEP3 ;
 label values MTONCEP3 MTONCEP3 ;
 label values PXLSXPRB3 PXLSXPRB3 ;
 label values PXMTONCE3 PXMTONCE3 ;
 label values PXPAGE3 PXPAGE3 ;
 label values PXRELAGE3 PXRELAGE3 ;
 label values PXRELYRS3 PXRELYRS3 ;
 label values PXFRLTN5 PXFRLTN5 ;
 label values P1YMULT3 P1YMULT3 ;
 label values P1YRACE3 P1YRACE3 ;
 label values P1YHRACE3 P1YHRACE3 ;
 label values P1YNRACE3 P1YNRACE3 ;
 label values PXDOB_M3 PXDOB_M3 ;
 label values PXDOB_Y3 PXDOB_Y3 ;
 label values CMDOBP3 CMDOBP3 ;
 label values PXEDUC3 PXEDUC3 ;
 label values PXMARBF3 PXMARBF3 ;
 label values PXANYCH3 PXANYCH3 ;
 label values PXANYCHN3 PXANYCHN3 ;
 label values PXABLECH3 PXABLECH3 ;
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
 label values PXANYUSE3 PXANYUSE3 ;
 label values PXMETHOD27 PXMETHOD27 ;
 label values PXMETHOD28 PXMETHOD28 ;
 label values PXMETHOD29 PXMETHOD29 ;
 label values PXMETHOD30 PXMETHOD30 ;
 label values PXMSTUSE3 PXMSTUSE3 ;
 label values PXCONFRQ3 PXCONFRQ3 ;
 label values PXNOFREQ3 PXNOFREQ3 ;
 label values PXCHILD3 PXCHILD3 ;
 label values PXCXSEX21 PXCXSEX21 ;
 label values PXCXBORN_M21 PXCXBORN_M21 ;
 label values PXCXBORN_Y21 PXCXBORN_Y21 ;
 label values CMCHDOB31 CMCHDOB31 ;
 label values MULTBIRT31 MULTBIRT31 ;
 label values PXCXMARB21 PXCXMARB21 ;
 label values PXCXRES21 PXCXRES21 ;
 label values PXCXKNOW21 PXCXKNOW21 ;
 label values PXCXLIV201 PXCXLIV201 ;
 label values PXCXLIV202 PXCXLIV202 ;
 label values PXCXAGE21 PXCXAGE21 ;
 label values PXCXLAW21 PXCXLAW21 ;
 label values PXCXHOP21 PXCXHOP21 ;
 label values PXCXEVER21 PXCXEVER21 ;
 label values PXCXFAR21 PXCXFAR21 ;
 label values PXWANT21 PXWANT21 ;
 label values PXSOON21 PXSOON21 ;
 label values PXHPYPG21 PXHPYPG21 ;
 label values PXCXSEX22 PXCXSEX22 ;
 label values PXCXBORN_M22 PXCXBORN_M22 ;
 label values PXCXBORN_Y22 PXCXBORN_Y22 ;
 label values CMCHDOB32 CMCHDOB32 ;
 label values MULTBIRT32 MULTBIRT32 ;
 label values PXCXMARB22 PXCXMARB22 ;
 label values PXCXRES22 PXCXRES22 ;
 label values PXCXKNOW22 PXCXKNOW22 ;
 label values PXCXLIV211 PXCXLIV211 ;
 label values PXCXLIV212 PXCXLIV212 ;
 label values PXCXAGE22 PXCXAGE22 ;
 label values PXCXLAW22 PXCXLAW22 ;
 label values PXCXHOP22 PXCXHOP22 ;
 label values PXCXEVER22 PXCXEVER22 ;
 label values PXCXFAR22 PXCXFAR22 ;
 label values PXWANT22 PXWANT22 ;
 label values PXSOON22 PXSOON22 ;
 label values PXHPYPG22 PXHPYPG22 ;
 label values PXCXSEX23 PXCXSEX23 ;
 label values PXCXBORN_M23 PXCXBORN_M23 ;
 label values PXCXBORN_Y23 PXCXBORN_Y23 ;
 label values CMCHDOB33 CMCHDOB33 ;
 label values MULTBIRT33 MULTBIRT33 ;
 label values PXCXMARB23 PXCXMARB23 ;
 label values PXCXRES23 PXCXRES23 ;
 label values PXCXKNOW23 PXCXKNOW23 ;
 label values PXCXLIV221 PXCXLIV221 ;
 label values PXCXLIV222 PXCXLIV222 ;
 label values PXCXAGE23 PXCXAGE23 ;
 label values PXCXLAW23 PXCXLAW23 ;
 label values PXCXHOP23 PXCXHOP23 ;
 label values PXCXEVER23 PXCXEVER23 ;
 label values PXCXFAR23 PXCXFAR23 ;
 label values PXWANT23 PXWANT23 ;
 label values PXSOON23 PXSOON23 ;
 label values PXHPYPG23 PXHPYPG23 ;
 label values PXCPREG3 PXCPREG3 ;
 label values PXTRYING3 PXTRYING3 ;
 label values PXTRYLONG3 PXTRYLONG3 ;
 label values PXRWANT3 PXRWANT3 ;
 label values PXRSOON3 PXRSOON3 ;
 label values PXCPFEEL3 PXCPFEEL3 ;
 label values CURRPREG CURRPREG ;
 label values PXOTKID3 PXOTKID3 ;
 label values PXOKNUM3 PXOKNUM3 ;
 label values PXOKADP3 PXOKADP3 ;
 label values PXOKADN3 PXOKADN3 ;
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
 label values PXOKSEX23 PXOKSEX23 ;
 label values PXOKAD23 PXOKAD23 ;
 label values PXOKLIV177 PXOKLIV177 ;
 label values PXOKFAR23 PXOKFAR23 ;
 label values PXOKAGE23 PXOKAGE23 ;
 label values D_OKAKIDS3 D_OKAKIDS3 ;
 label values PXNBEVR3 PXNBEVR3 ;
 label values PXNBNUM3 PXNBNUM3 ;
 label values PXNBREL3 PXNBREL3 ;
 label values PXNBRL3 PXNBRL3 ;
 label values PXNBFOS3 PXNBFOS3 ;
 label values PXNBFS3 PXNBFS3 ;
 label values PXNBAD3 PXNBAD3 ;
 label values D_NBAKIDS3 D_NBAKIDS3 ;
 label values FPFIRST_M FPFIRST_M ;
 label values FPFIRST_Y FPFIRST_Y ;
 label values CMFSTSEX CMFSTSEX ;
 label values FSTSEXAGE FSTSEXAGE ;
 label values FPAGE FPAGE ;
 label values FPAGE18 FPAGE18 ;
 label values FPAGE15 FPAGE15 ;
 label values FPAGE20 FPAGE20 ;
 label values RFSXAGEGP RFSXAGEGP ;
 label values FPPAGE FPPAGE ;
 label values FPRELAGE FPRELAGE ;
 label values FPRELYRS FPRELYRS ;
 label values FPRLTN FPRLTN ;
 label values FPUSE FPUSE ;
 label values FPMETH01 FPMETH01 ;
 label values FPMETH02 FPMETH02 ;
 label values FPMETH03 FPMETH03 ;
 label values FPMETH04 FPMETH04 ;
 label values FPPROBE FPPROBE ;
 label values NFORMWIFE NFORMWIFE ;
 label values NFORMCOHAB NFORMCOHAB ;
 label values FWVERIFY FWVERIFY ;
 label values FWVER FWVER ;
 label values FWVERIFY2 FWVERIFY2 ;
 label values FWVER2 FWVER2 ;
 label values FWVERIFY3 FWVERIFY3 ;
 label values FWVER3 FWVER3 ;
 label values FCVER FCVER ;
 label values FCVERIFY FCVERIFY ;
 label values EXRELATION EXRELATION ;
 label values FWMAREND_M FWMAREND_M ;
 label values FWMAREND_Y FWMAREND_Y ;
 label values CMMARW CMMARW ;
 label values AGEMARRN AGEMARRN ;
 label values LIVTOGN4 LIVTOGN4 ;
 label values STRTLIVE_M4 STRTLIVE_M4 ;
 label values STRTLIVE_Y4 STRTLIVE_Y4 ;
 label values CMCOHW CMCOHW ;
 label values AGELIV4 AGELIV4 ;
 label values CMUNIONW CMUNIONW ;
 label values ENGAGTHN4 ENGAGTHN4 ;
 label values MARREND4 MARREND4 ;
 label values WIFEDIED_M4 WIFEDIED_M4 ;
 label values WIFEDIED_Y4 WIFEDIED_Y4 ;
 label values CMWIDW CMWIDW ;
 label values DIVORFIN_M4 DIVORFIN_M4 ;
 label values DIVORFIN_Y4 DIVORFIN_Y4 ;
 label values CMDIVW CMDIVW ;
 label values ANNULLED_M4 ANNULLED_M4 ;
 label values ANNULLED_Y4 ANNULLED_Y4 ;
 label values CMANNW CMANNW ;
 label values STOPLIVE_M4 STOPLIVE_M4 ;
 label values STOPLIVE_Y4 STOPLIVE_Y4 ;
 label values CMSTOPW CMSTOPW ;
 label values EXRELATION2 EXRELATION2 ;
 label values FWMAREND_M2 FWMAREND_M2 ;
 label values FWMAREND_Y2 FWMAREND_Y2 ;
 label values CMMARW2 CMMARW2 ;
 label values AGEMARRN2 AGEMARRN2 ;
 label values LIVTOGN5 LIVTOGN5 ;
 label values STRTLIVE_M5 STRTLIVE_M5 ;
 label values STRTLIVE_Y5 STRTLIVE_Y5 ;
 label values CMCOHW2 CMCOHW2 ;
 label values AGELIV5 AGELIV5 ;
 label values CMUNIONW2 CMUNIONW2 ;
 label values ENGAGTHN5 ENGAGTHN5 ;
 label values MARREND5 MARREND5 ;
 label values WIFEDIED_M5 WIFEDIED_M5 ;
 label values WIFEDIED_Y5 WIFEDIED_Y5 ;
 label values CMWIDW2 CMWIDW2 ;
 label values DIVORFIN_M5 DIVORFIN_M5 ;
 label values DIVORFIN_Y5 DIVORFIN_Y5 ;
 label values CMDIVW2 CMDIVW2 ;
 label values ANNULLED_M5 ANNULLED_M5 ;
 label values ANNULLED_Y5 ANNULLED_Y5 ;
 label values CMANNW2 CMANNW2 ;
 label values STOPLIVE_M5 STOPLIVE_M5 ;
 label values STOPLIVE_Y5 STOPLIVE_Y5 ;
 label values CMSTOPW2 CMSTOPW2 ;
 label values EXRELATION3 EXRELATION3 ;
 label values FWMAREND_M3 FWMAREND_M3 ;
 label values FWMAREND_Y3 FWMAREND_Y3 ;
 label values CMMARW3 CMMARW3 ;
 label values AGEMARRN3 AGEMARRN3 ;
 label values LIVTOGN6 LIVTOGN6 ;
 label values STRTLIVE_M6 STRTLIVE_M6 ;
 label values STRTLIVE_Y6 STRTLIVE_Y6 ;
 label values CMCOHW3 CMCOHW3 ;
 label values AGELIV6 AGELIV6 ;
 label values CMUNIONW3 CMUNIONW3 ;
 label values ENGAGTHN6 ENGAGTHN6 ;
 label values MARREND6 MARREND6 ;
 label values WIFEDIED_M6 WIFEDIED_M6 ;
 label values WIFEDIED_Y6 WIFEDIED_Y6 ;
 label values CMWIDW3 CMWIDW3 ;
 label values DIVORFIN_M6 DIVORFIN_M6 ;
 label values DIVORFIN_Y6 DIVORFIN_Y6 ;
 label values CMDIVW3 CMDIVW3 ;
 label values ANNULLED_M6 ANNULLED_M6 ;
 label values ANNULLED_Y6 ANNULLED_Y6 ;
 label values CMANNW3 CMANNW3 ;
 label values STOPLIVE_M6 STOPLIVE_M6 ;
 label values STOPLIVE_Y6 STOPLIVE_Y6 ;
 label values CMSTOPW3 CMSTOPW3 ;
 label values EXRELATION11 EXRELATION11 ;
 label values STRTLIVE_M14 STRTLIVE_M14 ;
 label values STRTLIVE_Y14 STRTLIVE_Y14 ;
 label values CMCOHFC11 CMCOHFC11 ;
 label values AGELIV14 AGELIV14 ;
 label values ENGAGTHN14 ENGAGTHN14 ;
 label values STOPLIVE_M14 STOPLIVE_M14 ;
 label values STOPLIVE_Y14 STOPLIVE_Y14 ;
 label values CMSTOPFC11 CMSTOPFC11 ;
 label values FWPDOB_M FWPDOB_M ;
 label values FWPDOB_Y FWPDOB_Y ;
 label values CMFWPDOB CMFWPDOB ;
 label values FWPAGE FWPAGE ;
 label values WIF1MULT WIF1MULT ;
 label values WIF1RACE WIF1RACE ;
 label values WIF1HRACE WIF1HRACE ;
 label values WIF1NRACE WIF1NRACE ;
 label values FWPMARBF FWPMARBF ;
 label values FWPDOB_M2 FWPDOB_M2 ;
 label values FWPDOB_Y2 FWPDOB_Y2 ;
 label values CMFWPDOB2 CMFWPDOB2 ;
 label values FWPAGE2 FWPAGE2 ;
 label values FWPMARBF2 FWPMARBF2 ;
 label values FWPDOB_M3 FWPDOB_M3 ;
 label values FWPDOB_Y3 FWPDOB_Y3 ;
 label values CMFWPDOB3 CMFWPDOB3 ;
 label values FWPAGE3 FWPAGE3 ;
 label values FWPMARBF3 FWPMARBF3 ;
 label values FWPDOB_M11 FWPDOB_M11 ;
 label values FWPDOB_Y11 FWPDOB_Y11 ;
 label values CMFWPDOB11 CMFWPDOB11 ;
 label values FWPAGE11 FWPAGE11 ;
 label values COH1MULT COH1MULT ;
 label values COH1RACE COH1RACE ;
 label values COH1HRACE COH1HRACE ;
 label values COH1NRACE COH1NRACE ;
 label values FWPMARBF11 FWPMARBF11 ;
 label values FWPBIOKD FWPBIOKD ;
 label values FWPNUMKD FWPNUMKD ;
 label values FWPCHSEX FWPCHSEX ;
 label values FWPCHDOB_M FWPCHDOB_M ;
 label values FWPCHDOB_Y FWPCHDOB_Y ;
 label values CMCHDOB41 CMCHDOB41 ;
 label values MULTBIRT41 MULTBIRT41 ;
 label values FWCHMARB FWCHMARB ;
 label values FWPCHRES FWPCHRES ;
 label values FWPCHLRN FWPCHLRN ;
 label values FWPCHLIV01 FWPCHLIV01 ;
 label values FWPCHLIV02 FWPCHLIV02 ;
 label values FWPCHLIV03 FWPCHLIV03 ;
 label values FWPCHAGE FWPCHAGE ;
 label values FWPCHLEG FWPCHLEG ;
 label values FWPCHHOP FWPCHHOP ;
 label values FWPCHEVR FWPCHEVR ;
 label values FWPCHFAR FWPCHFAR ;
 label values FWPRWANT FWPRWANT ;
 label values FWPSOON FWPSOON ;
 label values FWPHPYPG FWPHPYPG ;
 label values FWPCHSEX2 FWPCHSEX2 ;
 label values FWPCHDOB_M2 FWPCHDOB_M2 ;
 label values FWPCHDOB_Y2 FWPCHDOB_Y2 ;
 label values CMCHDOB42 CMCHDOB42 ;
 label values MULTBIRT42 MULTBIRT42 ;
 label values FWCHMARB2 FWCHMARB2 ;
 label values FWPCHRES2 FWPCHRES2 ;
 label values FWPCHLRN2 FWPCHLRN2 ;
 label values FWPCHLIV11 FWPCHLIV11 ;
 label values FWPCHLIV12 FWPCHLIV12 ;
 label values FWPCHLIV13 FWPCHLIV13 ;
 label values FWPCHAGE2 FWPCHAGE2 ;
 label values FWPCHLEG2 FWPCHLEG2 ;
 label values FWPCHHOP2 FWPCHHOP2 ;
 label values FWPCHEVR2 FWPCHEVR2 ;
 label values FWPCHFAR2 FWPCHFAR2 ;
 label values FWPRWANT2 FWPRWANT2 ;
 label values FWPSOON2 FWPSOON2 ;
 label values FWPHPYPG2 FWPHPYPG2 ;
 label values FWPCHSEX3 FWPCHSEX3 ;
 label values FWPCHDOB_M3 FWPCHDOB_M3 ;
 label values FWPCHDOB_Y3 FWPCHDOB_Y3 ;
 label values CMCHDOB43 CMCHDOB43 ;
 label values MULTBIRT43 MULTBIRT43 ;
 label values FWCHMARB3 FWCHMARB3 ;
 label values FWPCHRES3 FWPCHRES3 ;
 label values FWPCHLRN3 FWPCHLRN3 ;
 label values FWPCHLIV21 FWPCHLIV21 ;
 label values FWPCHLIV22 FWPCHLIV22 ;
 label values FWPCHLIV23 FWPCHLIV23 ;
 label values FWPCHAGE3 FWPCHAGE3 ;
 label values FWPCHLEG3 FWPCHLEG3 ;
 label values FWPCHHOP3 FWPCHHOP3 ;
 label values FWPCHEVR3 FWPCHEVR3 ;
 label values FWPCHFAR3 FWPCHFAR3 ;
 label values FWPRWANT3 FWPRWANT3 ;
 label values FWPSOON3 FWPSOON3 ;
 label values FWPHPYPG3 FWPHPYPG3 ;
 label values FWPCHSEX4 FWPCHSEX4 ;
 label values FWPCHDOB_M4 FWPCHDOB_M4 ;
 label values FWPCHDOB_Y4 FWPCHDOB_Y4 ;
 label values CMCHDOB44 CMCHDOB44 ;
 label values MULTBIRT44 MULTBIRT44 ;
 label values FWCHMARB4 FWCHMARB4 ;
 label values FWPCHRES4 FWPCHRES4 ;
 label values FWPCHLRN4 FWPCHLRN4 ;
 label values FWPCHLIV31 FWPCHLIV31 ;
 label values FWPCHLIV32 FWPCHLIV32 ;
 label values FWPCHLIV33 FWPCHLIV33 ;
 label values FWPCHAGE4 FWPCHAGE4 ;
 label values FWPCHLEG4 FWPCHLEG4 ;
 label values FWPCHHOP4 FWPCHHOP4 ;
 label values FWPCHEVR4 FWPCHEVR4 ;
 label values FWPCHFAR4 FWPCHFAR4 ;
 label values FWPRWANT4 FWPRWANT4 ;
 label values FWPSOON4 FWPSOON4 ;
 label values FWPHPYPG4 FWPHPYPG4 ;
 label values FWPCHSEX5 FWPCHSEX5 ;
 label values FWPCHDOB_M5 FWPCHDOB_M5 ;
 label values FWPCHDOB_Y5 FWPCHDOB_Y5 ;
 label values CMCHDOB45 CMCHDOB45 ;
 label values MULTBIRT45 MULTBIRT45 ;
 label values FWCHMARB5 FWCHMARB5 ;
 label values FWPCHRES5 FWPCHRES5 ;
 label values FWPCHLRN5 FWPCHLRN5 ;
 label values FWPCHLIV41 FWPCHLIV41 ;
 label values FWPCHLIV42 FWPCHLIV42 ;
 label values FWPCHLIV43 FWPCHLIV43 ;
 label values FWPCHAGE5 FWPCHAGE5 ;
 label values FWPCHLEG5 FWPCHLEG5 ;
 label values FWPCHHOP5 FWPCHHOP5 ;
 label values FWPCHEVR5 FWPCHEVR5 ;
 label values FWPCHFAR5 FWPCHFAR5 ;
 label values FWPRWANT5 FWPRWANT5 ;
 label values FWPSOON5 FWPSOON5 ;
 label values FWPHPYPG5 FWPHPYPG5 ;
 label values FWPCHSEX6 FWPCHSEX6 ;
 label values FWPCHDOB_M6 FWPCHDOB_M6 ;
 label values FWPCHDOB_Y6 FWPCHDOB_Y6 ;
 label values CMCHDOB46 CMCHDOB46 ;
 label values MULTBIRT46 MULTBIRT46 ;
 label values FWCHMARB6 FWCHMARB6 ;
 label values FWPCHRES6 FWPCHRES6 ;
 label values FWPCHLRN6 FWPCHLRN6 ;
 label values FWPCHLIV51 FWPCHLIV51 ;
 label values FWPCHLIV52 FWPCHLIV52 ;
 label values FWPCHLIV53 FWPCHLIV53 ;
 label values FWPCHAGE6 FWPCHAGE6 ;
 label values FWPCHLEG6 FWPCHLEG6 ;
 label values FWPCHHOP6 FWPCHHOP6 ;
 label values FWPCHEVR6 FWPCHEVR6 ;
 label values FWPCHFAR6 FWPCHFAR6 ;
 label values FWPRWANT6 FWPRWANT6 ;
 label values FWPSOON6 FWPSOON6 ;
 label values FWPHPYPG6 FWPHPYPG6 ;
 label values FWPBIOKD2 FWPBIOKD2 ;
 label values FWPNUMKD2 FWPNUMKD2 ;
 label values FWPCHSEX11 FWPCHSEX11 ;
 label values FWPCHDOB_M11 FWPCHDOB_M11 ;
 label values FWPCHDOB_Y11 FWPCHDOB_Y11 ;
 label values CMCHDOB51 CMCHDOB51 ;
 label values MULTBIRT51 MULTBIRT51 ;
 label values FWCHMARB11 FWCHMARB11 ;
 label values FWPCHRES11 FWPCHRES11 ;
 label values FWPCHLRN11 FWPCHLRN11 ;
 label values FWPCHLIV101 FWPCHLIV101 ;
 label values FWPCHLIV102 FWPCHLIV102 ;
 label values FWPCHLIV103 FWPCHLIV103 ;
 label values FWPCHAGE11 FWPCHAGE11 ;
 label values FWPCHLEG11 FWPCHLEG11 ;
 label values FWPCHHOP11 FWPCHHOP11 ;
 label values FWPCHEVR11 FWPCHEVR11 ;
 label values FWPCHFAR11 FWPCHFAR11 ;
 label values FWPRWANT11 FWPRWANT11 ;
 label values FWPSOON11 FWPSOON11 ;
 label values FWPHPYPG11 FWPHPYPG11 ;
 label values FWPCHSEX12 FWPCHSEX12 ;
 label values FWPCHDOB_M12 FWPCHDOB_M12 ;
 label values FWPCHDOB_Y12 FWPCHDOB_Y12 ;
 label values CMCHDOB52 CMCHDOB52 ;
 label values MULTBIRT52 MULTBIRT52 ;
 label values FWCHMARB12 FWCHMARB12 ;
 label values FWPCHRES12 FWPCHRES12 ;
 label values FWPCHLRN12 FWPCHLRN12 ;
 label values FWPCHLIV111 FWPCHLIV111 ;
 label values FWPCHLIV112 FWPCHLIV112 ;
 label values FWPCHLIV113 FWPCHLIV113 ;
 label values FWPCHAGE12 FWPCHAGE12 ;
 label values FWPCHLEG12 FWPCHLEG12 ;
 label values FWPCHHOP12 FWPCHHOP12 ;
 label values FWPCHEVR12 FWPCHEVR12 ;
 label values FWPCHFAR12 FWPCHFAR12 ;
 label values FWPRWANT12 FWPRWANT12 ;
 label values FWPSOON12 FWPSOON12 ;
 label values FWPHPYPG12 FWPHPYPG12 ;
 label values FWPCHSEX13 FWPCHSEX13 ;
 label values FWPCHDOB_M13 FWPCHDOB_M13 ;
 label values FWPCHDOB_Y13 FWPCHDOB_Y13 ;
 label values CMCHDOB53 CMCHDOB53 ;
 label values MULTBIRT53 MULTBIRT53 ;
 label values FWCHMARB13 FWCHMARB13 ;
 label values FWPCHRES13 FWPCHRES13 ;
 label values FWPCHLRN13 FWPCHLRN13 ;
 label values FWPCHLIV121 FWPCHLIV121 ;
 label values FWPCHLIV122 FWPCHLIV122 ;
 label values FWPCHLIV123 FWPCHLIV123 ;
 label values FWPCHAGE13 FWPCHAGE13 ;
 label values FWPCHLEG13 FWPCHLEG13 ;
 label values FWPCHHOP13 FWPCHHOP13 ;
 label values FWPCHEVR13 FWPCHEVR13 ;
 label values FWPCHFAR13 FWPCHFAR13 ;
 label values FWPRWANT13 FWPRWANT13 ;
 label values FWPSOON13 FWPSOON13 ;
 label values FWPHPYPG13 FWPHPYPG13 ;
 label values FWPBIOKD3 FWPBIOKD3 ;
 label values FWPNUMKD3 FWPNUMKD3 ;
 label values FWPCHSEX21 FWPCHSEX21 ;
 label values FWPCHDOB_M21 FWPCHDOB_M21 ;
 label values FWPCHDOB_Y21 FWPCHDOB_Y21 ;
 label values CMCHDOB61 CMCHDOB61 ;
 label values MULTBIRT61 MULTBIRT61 ;
 label values FWCHMARB21 FWCHMARB21 ;
 label values FWPCHRES21 FWPCHRES21 ;
 label values FWPCHLRN21 FWPCHLRN21 ;
 label values FWPCHLIV201 FWPCHLIV201 ;
 label values FWPCHLIV202 FWPCHLIV202 ;
 label values FWPCHLIV203 FWPCHLIV203 ;
 label values FWPCHAGE21 FWPCHAGE21 ;
 label values FWPCHLEG21 FWPCHLEG21 ;
 label values FWPCHHOP21 FWPCHHOP21 ;
 label values FWPCHEVR21 FWPCHEVR21 ;
 label values FWPCHFAR21 FWPCHFAR21 ;
 label values FWPRWANT21 FWPRWANT21 ;
 label values FWPSOON21 FWPSOON21 ;
 label values FWPHPYPG21 FWPHPYPG21 ;
 label values FWPCHSEX22 FWPCHSEX22 ;
 label values FWPCHDOB_M22 FWPCHDOB_M22 ;
 label values FWPCHDOB_Y22 FWPCHDOB_Y22 ;
 label values CMCHDOB62 CMCHDOB62 ;
 label values MULTBIRT62 MULTBIRT62 ;
 label values FWCHMARB22 FWCHMARB22 ;
 label values FWPCHRES22 FWPCHRES22 ;
 label values FWPCHLRN22 FWPCHLRN22 ;
 label values FWPCHLIV211 FWPCHLIV211 ;
 label values FWPCHLIV212 FWPCHLIV212 ;
 label values FWPCHLIV213 FWPCHLIV213 ;
 label values FWPCHAGE22 FWPCHAGE22 ;
 label values FWPCHLEG22 FWPCHLEG22 ;
 label values FWPCHHOP22 FWPCHHOP22 ;
 label values FWPCHEVR22 FWPCHEVR22 ;
 label values FWPCHFAR22 FWPCHFAR22 ;
 label values FWPRWANT22 FWPRWANT22 ;
 label values FWPSOON22 FWPSOON22 ;
 label values FWPHPYPG22 FWPHPYPG22 ;
 label values FWPCHSEX23 FWPCHSEX23 ;
 label values FWPCHDOB_M23 FWPCHDOB_M23 ;
 label values FWPCHDOB_Y23 FWPCHDOB_Y23 ;
 label values CMCHDOB63 CMCHDOB63 ;
 label values MULTBIRT63 MULTBIRT63 ;
 label values FWCHMARB23 FWCHMARB23 ;
 label values FWPCHRES23 FWPCHRES23 ;
 label values FWPCHLRN23 FWPCHLRN23 ;
 label values FWPCHLIV221 FWPCHLIV221 ;
 label values FWPCHLIV222 FWPCHLIV222 ;
 label values FWPCHLIV223 FWPCHLIV223 ;
 label values FWPCHAGE23 FWPCHAGE23 ;
 label values FWPCHLEG23 FWPCHLEG23 ;
 label values FWPCHHOP23 FWPCHHOP23 ;
 label values FWPCHEVR23 FWPCHEVR23 ;
 label values FWPCHFAR23 FWPCHFAR23 ;
 label values FWPRWANT23 FWPRWANT23 ;
 label values FWPSOON23 FWPSOON23 ;
 label values FWPHPYPG23 FWPHPYPG23 ;
 label values FWPBIOKD11 FWPBIOKD11 ;
 label values FWPNUMKD11 FWPNUMKD11 ;
 label values FWPCHSEX101 FWPCHSEX101 ;
 label values FWPCHDOB_M101 FWPCHDOB_M101 ;
 label values FWPCHDOB_Y101 FWPCHDOB_Y101 ;
 label values CMCHDOB141 CMCHDOB141 ;
 label values MULTBIRT141 MULTBIRT141 ;
 label values FWPCHRES101 FWPCHRES101 ;
 label values FWPCHLRN101 FWPCHLRN101 ;
 label values FWPCHLIV1001 FWPCHLIV1001 ;
 label values FWPCHLIV1002 FWPCHLIV1002 ;
 label values FWPCHLIV1003 FWPCHLIV1003 ;
 label values FWPCHAGE101 FWPCHAGE101 ;
 label values FWPCHLEG101 FWPCHLEG101 ;
 label values FWPCHHOP101 FWPCHHOP101 ;
 label values FWPCHEVR101 FWPCHEVR101 ;
 label values FWPCHFAR101 FWPCHFAR101 ;
 label values FWPRWANT101 FWPRWANT101 ;
 label values FWPSOON101 FWPSOON101 ;
 label values FWPHPYPG101 FWPHPYPG101 ;
 label values FWPCHSEX102 FWPCHSEX102 ;
 label values FWPCHDOB_M102 FWPCHDOB_M102 ;
 label values FWPCHDOB_Y102 FWPCHDOB_Y102 ;
 label values CMCHDOB142 CMCHDOB142 ;
 label values MULTBIRT142 MULTBIRT142 ;
 label values FWPCHRES102 FWPCHRES102 ;
 label values FWPCHLRN102 FWPCHLRN102 ;
 label values FWPCHLIV1011 FWPCHLIV1011 ;
 label values FWPCHLIV1012 FWPCHLIV1012 ;
 label values FWPCHLIV1013 FWPCHLIV1013 ;
 label values FWPCHAGE102 FWPCHAGE102 ;
 label values FWPCHLEG102 FWPCHLEG102 ;
 label values FWPCHHOP102 FWPCHHOP102 ;
 label values FWPCHEVR102 FWPCHEVR102 ;
 label values FWPCHFAR102 FWPCHFAR102 ;
 label values FWPRWANT102 FWPRWANT102 ;
 label values FWPSOON102 FWPSOON102 ;
 label values FWPHPYPG102 FWPHPYPG102 ;
 label values FWPCHSEX103 FWPCHSEX103 ;
 label values FWPCHDOB_M103 FWPCHDOB_M103 ;
 label values FWPCHDOB_Y103 FWPCHDOB_Y103 ;
 label values CMCHDOB143 CMCHDOB143 ;
 label values MULTBIRT143 MULTBIRT143 ;
 label values FWPCHRES103 FWPCHRES103 ;
 label values FWPCHLRN103 FWPCHLRN103 ;
 label values FWPCHLIV1021 FWPCHLIV1021 ;
 label values FWPCHLIV1022 FWPCHLIV1022 ;
 label values FWPCHLIV1023 FWPCHLIV1023 ;
 label values FWPCHAGE103 FWPCHAGE103 ;
 label values FWPCHLEG103 FWPCHLEG103 ;
 label values FWPCHHOP103 FWPCHHOP103 ;
 label values FWPCHEVR103 FWPCHEVR103 ;
 label values FWPCHFAR103 FWPCHFAR103 ;
 label values FWPRWANT103 FWPRWANT103 ;
 label values FWPSOON103 FWPSOON103 ;
 label values FWPHPYPG103 FWPHPYPG103 ;
 label values FWPCHSEX104 FWPCHSEX104 ;
 label values FWPCHDOB_M104 FWPCHDOB_M104 ;
 label values FWPCHDOB_Y104 FWPCHDOB_Y104 ;
 label values CMCHDOB144 CMCHDOB144 ;
 label values MULTBIRT144 MULTBIRT144 ;
 label values FWPCHRES104 FWPCHRES104 ;
 label values FWPCHLRN104 FWPCHLRN104 ;
 label values FWPCHLIV1031 FWPCHLIV1031 ;
 label values FWPCHLIV1032 FWPCHLIV1032 ;
 label values FWPCHLIV1033 FWPCHLIV1033 ;
 label values FWPCHAGE104 FWPCHAGE104 ;
 label values FWPCHLEG104 FWPCHLEG104 ;
 label values FWPCHHOP104 FWPCHHOP104 ;
 label values FWPCHEVR104 FWPCHEVR104 ;
 label values FWPCHFAR104 FWPCHFAR104 ;
 label values FWPRWANT104 FWPRWANT104 ;
 label values FWPSOON104 FWPSOON104 ;
 label values FWPHPYPG104 FWPHPYPG104 ;
 label values FWPCHSEX105 FWPCHSEX105 ;
 label values FWPCHDOB_M105 FWPCHDOB_M105 ;
 label values FWPCHDOB_Y105 FWPCHDOB_Y105 ;
 label values CMCHDOB145 CMCHDOB145 ;
 label values MULTBIRT145 MULTBIRT145 ;
 label values FWPCHRES105 FWPCHRES105 ;
 label values FWPCHLRN105 FWPCHLRN105 ;
 label values FWPCHLIV1041 FWPCHLIV1041 ;
 label values FWPCHLIV1042 FWPCHLIV1042 ;
 label values FWPCHLIV1043 FWPCHLIV1043 ;
 label values FWPCHAGE105 FWPCHAGE105 ;
 label values FWPCHLEG105 FWPCHLEG105 ;
 label values FWPCHHOP105 FWPCHHOP105 ;
 label values FWPCHEVR105 FWPCHEVR105 ;
 label values FWPCHFAR105 FWPCHFAR105 ;
 label values FWPRWANT105 FWPRWANT105 ;
 label values FWPSOON105 FWPSOON105 ;
 label values FWPHPYPG105 FWPHPYPG105 ;
 label values FWPOTKID FWPOTKID ;
 label values FWPOKNUM FWPOKNUM ;
 label values FWPOKWTH FWPOKWTH ;
 label values FWPOKWTHN FWPOKWTHN ;
 label values FWPOKADP1 FWPOKADP1 ;
 label values FWPOKADN FWPOKADN ;
 label values FWPOKSEX FWPOKSEX ;
 label values FWPOKAD FWPOKAD ;
 label values FWPOKLIV1 FWPOKLIV1 ;
 label values FWPOKLIV2 FWPOKLIV2 ;
 label values FWPOKFAR FWPOKFAR ;
 label values FWPOKAGE FWPOKAGE ;
 label values FWPOKSEX2 FWPOKSEX2 ;
 label values FWPOKAD2 FWPOKAD2 ;
 label values FWPOKLIV9 FWPOKLIV9 ;
 label values FWPOKLIV10 FWPOKLIV10 ;
 label values FWPOKFAR2 FWPOKFAR2 ;
 label values FWPOKAGE2 FWPOKAGE2 ;
 label values FWPOKSEX3 FWPOKSEX3 ;
 label values FWPOKAD3 FWPOKAD3 ;
 label values FWPOKLIV17 FWPOKLIV17 ;
 label values FWPOKLIV18 FWPOKLIV18 ;
 label values FWPOKFAR3 FWPOKFAR3 ;
 label values FWPOKAGE3 FWPOKAGE3 ;
 label values FWPOKSEX4 FWPOKSEX4 ;
 label values FWPOKAD4 FWPOKAD4 ;
 label values FWPOKLIV25 FWPOKLIV25 ;
 label values FWPOKLIV26 FWPOKLIV26 ;
 label values FWPOKFAR4 FWPOKFAR4 ;
 label values FWPOKAGE4 FWPOKAGE4 ;
 label values E_OKAKIDS E_OKAKIDS ;
 label values FWPOTKID2 FWPOTKID2 ;
 label values FWPOKNUM2 FWPOKNUM2 ;
 label values FWPOKWTH2 FWPOKWTH2 ;
 label values FWPOKWTHN2 FWPOKWTHN2 ;
 label values FWPOKADP2 FWPOKADP2 ;
 label values FWPOKADN2 FWPOKADN2 ;
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
 label values E_OKAKIDS2 E_OKAKIDS2 ;
 label values FWPOTKID3 FWPOTKID3 ;
 label values FWPOKNUM3 FWPOKNUM3 ;
 label values FWPOKWTH3 FWPOKWTH3 ;
 label values FWPOKWTHN3 FWPOKWTHN3 ;
 label values FWPOKADP3 FWPOKADP3 ;
 label values FWPOKADN3 FWPOKADN3 ;
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
 label values E_OKAKIDS3 E_OKAKIDS3 ;
 label values FWPOTKID11 FWPOTKID11 ;
 label values FWPOKNUM11 FWPOKNUM11 ;
 label values FWPOKWTH11 FWPOKWTH11 ;
 label values FWPOKWTHN11 FWPOKWTHN11 ;
 label values FWPOKADP11 FWPOKADP11 ;
 label values FWPOKADN11 FWPOKADN11 ;
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
 label values FWPOKSEX106 FWPOKSEX106 ;
 label values FWPOKAD106 FWPOKAD106 ;
 label values FWPOKLIV841 FWPOKLIV841 ;
 label values FWPOKFAR106 FWPOKFAR106 ;
 label values FWPOKAGE106 FWPOKAGE106 ;
 label values E_OKAKIDS11 E_OKAKIDS11 ;
 label values FWPNBEVR FWPNBEVR ;
 label values FWPNBNUM FWPNBNUM ;
 label values FWPNBREL FWPNBREL ;
 label values FWPNBRL FWPNBRL ;
 label values FWPNBFOS FWPNBFOS ;
 label values FWPNBFS FWPNBFS ;
 label values FWPNBAD FWPNBAD ;
 label values FWPNBADN FWPNBADN ;
 label values FWPNBSEX FWPNBSEX ;
 label values FWPNBLIV1 FWPNBLIV1 ;
 label values FWPNBFAR FWPNBFAR ;
 label values FWPNBAGE FWPNBAGE ;
 label values FWPNBSEX2 FWPNBSEX2 ;
 label values FWPNBLIV9 FWPNBLIV9 ;
 label values FWPNBFAR2 FWPNBFAR2 ;
 label values FWPNBAGE2 FWPNBAGE2 ;
 label values FWPNBSEX3 FWPNBSEX3 ;
 label values FWPNBLIV17 FWPNBLIV17 ;
 label values FWPNBFAR3 FWPNBFAR3 ;
 label values FWPNBAGE3 FWPNBAGE3 ;
 label values FWPNBSEX4 FWPNBSEX4 ;
 label values FWPNBLIV25 FWPNBLIV25 ;
 label values FWPNBFAR4 FWPNBFAR4 ;
 label values FWPNBAGE4 FWPNBAGE4 ;
 label values E_NBAKIDS E_NBAKIDS ;
 label values FWPNBEVR2 FWPNBEVR2 ;
 label values FWPNBNUM2 FWPNBNUM2 ;
 label values FWPNBREL2 FWPNBREL2 ;
 label values FWPNBRL2 FWPNBRL2 ;
 label values FWPNBFOS2 FWPNBFOS2 ;
 label values FWPNBFS2 FWPNBFS2 ;
 label values FWPNBAD2 FWPNBAD2 ;
 label values FWPNBADN2 FWPNBADN2 ;
 label values FWPNBSEX11 FWPNBSEX11 ;
 label values FWPNBLIV81 FWPNBLIV81 ;
 label values FWPNBFAR11 FWPNBFAR11 ;
 label values FWPNBAGE11 FWPNBAGE11 ;
 label values E_NBAKIDS2 E_NBAKIDS2 ;
 label values FWPNBEVR3 FWPNBEVR3 ;
 label values FWPNBNUM3 FWPNBNUM3 ;
 label values FWPNBREL3 FWPNBREL3 ;
 label values FWPNBRL3 FWPNBRL3 ;
 label values FWPNBFOS3 FWPNBFOS3 ;
 label values FWPNBFS3 FWPNBFS3 ;
 label values FWPNBAD3 FWPNBAD3 ;
 label values FWPNBADN3 FWPNBADN3 ;
 label values FWPNBSEX21 FWPNBSEX21 ;
 label values FWPNBLIV161 FWPNBLIV161 ;
 label values FWPNBFAR21 FWPNBFAR21 ;
 label values FWPNBAGE21 FWPNBAGE21 ;
 label values E_NBAKIDS3 E_NBAKIDS3 ;
 label values FWPNBEVR11 FWPNBEVR11 ;
 label values FWPNBNUM11 FWPNBNUM11 ;
 label values FWPNBREL11 FWPNBREL11 ;
 label values FWPNBRL11 FWPNBRL11 ;
 label values FWPNBFOS11 FWPNBFOS11 ;
 label values FWPNBFS11 FWPNBFS11 ;
 label values FWPNBAD11 FWPNBAD11 ;
 label values FWPNBADN11 FWPNBADN11 ;
 label values FWPNBSEX101 FWPNBSEX101 ;
 label values FWPNBLIV801 FWPNBLIV801 ;
 label values FWPNBFAR101 FWPNBFAR101 ;
 label values FWPNBAGE101 FWPNBAGE101 ;
 label values E_NBAKIDS11 E_NBAKIDS11 ;
 label values OTBCHIL OTBCHIL ;
 label values OTBPROBE OTBPROBE ;
 label values OTBCHILN OTBCHILN ;
 label values OTBSAME OTBSAME ;
 label values OBCSEXX OBCSEXX ;
 label values OBCDOB_M OBCDOB_M ;
 label values OBCDOB_Y OBCDOB_Y ;
 label values CMCHDOB151 CMCHDOB151 ;
 label values MULTBIRT151 MULTBIRT151 ;
 label values OBCMAGEX OBCMAGEX ;
 label values OBCMLIV OBCMLIV ;
 label values OBCKNOWX OBCKNOWX ;
 label values OBCLIVEX01 OBCLIVEX01 ;
 label values OBCLIVEX02 OBCLIVEX02 ;
 label values OBCLIVEX03 OBCLIVEX03 ;
 label values OBCAGE OBCAGE ;
 label values OBCLAW OBCLAW ;
 label values OBCHOP OBCHOP ;
 label values OBCEVER OBCEVER ;
 label values OBCFAR OBCFAR ;
 label values OBCRWANX OBCRWANX ;
 label values OBCSOONX OBCSOONX ;
 label values OBCHPYX OBCHPYX ;
 label values OBCSEXX2 OBCSEXX2 ;
 label values OBCDOB_M2 OBCDOB_M2 ;
 label values OBCDOB_Y2 OBCDOB_Y2 ;
 label values CMCHDOB152 CMCHDOB152 ;
 label values MULTBIRT152 MULTBIRT152 ;
 label values OBCMAGEX2 OBCMAGEX2 ;
 label values OBCMLIV2 OBCMLIV2 ;
 label values OBCKNOWX2 OBCKNOWX2 ;
 label values OBCLIVEX11 OBCLIVEX11 ;
 label values OBCLIVEX12 OBCLIVEX12 ;
 label values OBCLIVEX13 OBCLIVEX13 ;
 label values OBCAGE2 OBCAGE2 ;
 label values OBCLAW2 OBCLAW2 ;
 label values OBCHOP2 OBCHOP2 ;
 label values OBCEVER2 OBCEVER2 ;
 label values OBCFAR2 OBCFAR2 ;
 label values OBCRWANX2 OBCRWANX2 ;
 label values OBCSOONX2 OBCSOONX2 ;
 label values OBCHPYX2 OBCHPYX2 ;
 label values OBCSEXX3 OBCSEXX3 ;
 label values OBCDOB_M3 OBCDOB_M3 ;
 label values OBCDOB_Y3 OBCDOB_Y3 ;
 label values CMCHDOB153 CMCHDOB153 ;
 label values MULTBIRT153 MULTBIRT153 ;
 label values OBCMAGEX3 OBCMAGEX3 ;
 label values OBCMLIV3 OBCMLIV3 ;
 label values OBCKNOWX3 OBCKNOWX3 ;
 label values OBCLIVEX21 OBCLIVEX21 ;
 label values OBCLIVEX22 OBCLIVEX22 ;
 label values OBCLIVEX23 OBCLIVEX23 ;
 label values OBCAGE3 OBCAGE3 ;
 label values OBCLAW3 OBCLAW3 ;
 label values OBCHOP3 OBCHOP3 ;
 label values OBCEVER3 OBCEVER3 ;
 label values OBCFAR3 OBCFAR3 ;
 label values OBCRWANX3 OBCRWANX3 ;
 label values OBCSOONX3 OBCSOONX3 ;
 label values OBCHPYX3 OBCHPYX3 ;
 label values OBCSEXX4 OBCSEXX4 ;
 label values OBCDOB_M4 OBCDOB_M4 ;
 label values OBCDOB_Y4 OBCDOB_Y4 ;
 label values CMCHDOB154 CMCHDOB154 ;
 label values MULTBIRT154 MULTBIRT154 ;
 label values OBCMAGEX4 OBCMAGEX4 ;
 label values OBCMLIV4 OBCMLIV4 ;
 label values OBCKNOWX4 OBCKNOWX4 ;
 label values OBCLIVEX31 OBCLIVEX31 ;
 label values OBCLIVEX32 OBCLIVEX32 ;
 label values OBCLIVEX33 OBCLIVEX33 ;
 label values OBCAGE4 OBCAGE4 ;
 label values OBCLAW4 OBCLAW4 ;
 label values OBCHOP4 OBCHOP4 ;
 label values OBCEVER4 OBCEVER4 ;
 label values OBCFAR4 OBCFAR4 ;
 label values OBCRWANX4 OBCRWANX4 ;
 label values OBCSOONX4 OBCSOONX4 ;
 label values OBCHPYX4 OBCHPYX4 ;
 label values OBCSEXX5 OBCSEXX5 ;
 label values OBCDOB_M5 OBCDOB_M5 ;
 label values OBCDOB_Y5 OBCDOB_Y5 ;
 label values CMCHDOB155 CMCHDOB155 ;
 label values MULTBIRT155 MULTBIRT155 ;
 label values OBCMAGEX5 OBCMAGEX5 ;
 label values OBCMLIV5 OBCMLIV5 ;
 label values OBCKNOWX5 OBCKNOWX5 ;
 label values OBCLIVEX41 OBCLIVEX41 ;
 label values OBCLIVEX42 OBCLIVEX42 ;
 label values OBCLIVEX43 OBCLIVEX43 ;
 label values OBCAGE5 OBCAGE5 ;
 label values OBCLAW5 OBCLAW5 ;
 label values OBCHOP5 OBCHOP5 ;
 label values OBCEVER5 OBCEVER5 ;
 label values OBCFAR5 OBCFAR5 ;
 label values OBCRWANX5 OBCRWANX5 ;
 label values OBCSOONX5 OBCSOONX5 ;
 label values OBCHPYX5 OBCHPYX5 ;
 label values OBCSEXX6 OBCSEXX6 ;
 label values OBCDOB_M6 OBCDOB_M6 ;
 label values OBCDOB_Y6 OBCDOB_Y6 ;
 label values CMCHDOB156 CMCHDOB156 ;
 label values MULTBIRT156 MULTBIRT156 ;
 label values OBCMAGEX6 OBCMAGEX6 ;
 label values OBCMLIV6 OBCMLIV6 ;
 label values OBCKNOWX6 OBCKNOWX6 ;
 label values OBCLIVEX51 OBCLIVEX51 ;
 label values OBCLIVEX52 OBCLIVEX52 ;
 label values OBCLIVEX53 OBCLIVEX53 ;
 label values OBCAGE6 OBCAGE6 ;
 label values OBCLAW6 OBCLAW6 ;
 label values OBCHOP6 OBCHOP6 ;
 label values OBCEVER6 OBCEVER6 ;
 label values OBCFAR6 OBCFAR6 ;
 label values OBCRWANX6 OBCRWANX6 ;
 label values OBCSOONX6 OBCSOONX6 ;
 label values OBCHPYX6 OBCHPYX6 ;
 label values OBCSEXX7 OBCSEXX7 ;
 label values OBCDOB_M7 OBCDOB_M7 ;
 label values OBCDOB_Y7 OBCDOB_Y7 ;
 label values CMCHDOB157 CMCHDOB157 ;
 label values MULTBIRT157 MULTBIRT157 ;
 label values OBCMAGEX7 OBCMAGEX7 ;
 label values OBCMLIV7 OBCMLIV7 ;
 label values OBCKNOWX7 OBCKNOWX7 ;
 label values OBCLIVEX61 OBCLIVEX61 ;
 label values OBCLIVEX62 OBCLIVEX62 ;
 label values OBCLIVEX63 OBCLIVEX63 ;
 label values OBCAGE7 OBCAGE7 ;
 label values OBCLAW7 OBCLAW7 ;
 label values OBCHOP7 OBCHOP7 ;
 label values OBCEVER7 OBCEVER7 ;
 label values OBCFAR7 OBCFAR7 ;
 label values OBCRWANX7 OBCRWANX7 ;
 label values OBCSOONX7 OBCSOONX7 ;
 label values OBCHPYX7 OBCHPYX7 ;
 label values OBCSEXX8 OBCSEXX8 ;
 label values OBCDOB_M8 OBCDOB_M8 ;
 label values OBCDOB_Y8 OBCDOB_Y8 ;
 label values CMCHDOB158 CMCHDOB158 ;
 label values MULTBIRT158 MULTBIRT158 ;
 label values OBCMAGEX8 OBCMAGEX8 ;
 label values OBCMLIV8 OBCMLIV8 ;
 label values OBCKNOWX8 OBCKNOWX8 ;
 label values OBCLIVEX71 OBCLIVEX71 ;
 label values OBCLIVEX72 OBCLIVEX72 ;
 label values OBCLIVEX73 OBCLIVEX73 ;
 label values OBCAGE8 OBCAGE8 ;
 label values OBCLAW8 OBCLAW8 ;
 label values OBCHOP8 OBCHOP8 ;
 label values OBCEVER8 OBCEVER8 ;
 label values OBCFAR8 OBCFAR8 ;
 label values OBCRWANX8 OBCRWANX8 ;
 label values OBCSOONX8 OBCSOONX8 ;
 label values OBCHPYX8 OBCHPYX8 ;
 label values OBCSEXX9 OBCSEXX9 ;
 label values OBCDOB_M9 OBCDOB_M9 ;
 label values OBCDOB_Y9 OBCDOB_Y9 ;
 label values CMCHDOB159 CMCHDOB159 ;
 label values MULTBIRT159 MULTBIRT159 ;
 label values OBCMAGEX9 OBCMAGEX9 ;
 label values OBCMLIV9 OBCMLIV9 ;
 label values OBCKNOWX9 OBCKNOWX9 ;
 label values OBCLIVEX81 OBCLIVEX81 ;
 label values OBCLIVEX82 OBCLIVEX82 ;
 label values OBCLIVEX83 OBCLIVEX83 ;
 label values OBCAGE9 OBCAGE9 ;
 label values OBCLAW9 OBCLAW9 ;
 label values OBCHOP9 OBCHOP9 ;
 label values OBCEVER9 OBCEVER9 ;
 label values OBCFAR9 OBCFAR9 ;
 label values OBCRWANX9 OBCRWANX9 ;
 label values OBCSOONX9 OBCSOONX9 ;
 label values OBCHPYX9 OBCHPYX9 ;
 label values OTACHIL OTACHIL ;
 label values OTACHILN OTACHILN ;
 label values OTNBREL OTNBREL ;
 label values OTNBRL OTNBRL ;
 label values OTNBFOS OTNBFOS ;
 label values OTNBFS OTNBFS ;
 label values OTNBAD OTNBAD ;
 label values OTNBADN OTNBADN ;
 label values OTNBSEX OTNBSEX ;
 label values OTNBLIV1 OTNBLIV1 ;
 label values OTNBLIV2 OTNBLIV2 ;
 label values OTNBFAR OTNBFAR ;
 label values OTNBAGE OTNBAGE ;
 label values OTNBSEX2 OTNBSEX2 ;
 label values OTNBLIV9 OTNBLIV9 ;
 label values OTNBLIV10 OTNBLIV10 ;
 label values OTNBFAR2 OTNBFAR2 ;
 label values OTNBAGE2 OTNBAGE2 ;
 label values OTNBSEX3 OTNBSEX3 ;
 label values OTNBLIV17 OTNBLIV17 ;
 label values OTNBFAR3 OTNBFAR3 ;
 label values OTNBAGE3 OTNBAGE3 ;
 label values F_AKIDS F_AKIDS ;
 label values OTPREG OTPREG ;
 label values OTPRGPRB OTPRGPRB ;
 label values OTPRGN OTPRGN ;
 label values OTPRGEND OTPRGEND ;
 label values OTMSN OTMSN ;
 label values OTSTN OTSTN ;
 label values OTABN OTABN ;
 label values TOTPRG TOTPRG ;
 label values OTPREGS OTPREGS ;
 label values TOTPREGS_C TOTPREGS_C ;
 label values TOTPREGS_R TOTPREGS_R ;
 label values BIOKIDS BIOKIDS ;
 label values ADOPKIDS ADOPKIDS ;
 label values ANYKIDS ANYKIDS ;
 label values BIOADOPT BIOADOPT ;
 label values NUMLIFE NUMLIFE ;
 label values PREGSNOW PREGSNOW ;
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
 label values BIOMULT1 BIOMULT1 ;
 label values BIOMULT2 BIOMULT2 ;
 label values BIOMULT3 BIOMULT3 ;
 label values BIOMULT4 BIOMULT4 ;
 label values BIOMULT5 BIOMULT5 ;
 label values BIOMULT6 BIOMULT6 ;
 label values BIOMULT7 BIOMULT7 ;
 label values BIOMULT8 BIOMULT8 ;
 label values BIOMULT9 BIOMULT9 ;
 label values BIOMULT10 BIOMULT10 ;
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
 label values BIOLGPAT1 BIOLGPAT1 ;
 label values BIOLGPAT2 BIOLGPAT2 ;
 label values BIOLGPAT3 BIOLGPAT3 ;
 label values BIOLGPAT4 BIOLGPAT4 ;
 label values BIOLGPAT5 BIOLGPAT5 ;
 label values BIOLGPAT6 BIOLGPAT6 ;
 label values BIOLGPAT7 BIOLGPAT7 ;
 label values BIOLGPAT8 BIOLGPAT8 ;
 label values BIOLGPAT9 BIOLGPAT9 ;
 label values BIOLGPAT10 BIOLGPAT10 ;
 label values BIOHSPAT1 BIOHSPAT1 ;
 label values BIOHSPAT2 BIOHSPAT2 ;
 label values BIOHSPAT3 BIOHSPAT3 ;
 label values BIOHSPAT4 BIOHSPAT4 ;
 label values BIOHSPAT5 BIOHSPAT5 ;
 label values BIOHSPAT6 BIOHSPAT6 ;
 label values BIOHSPAT7 BIOHSPAT7 ;
 label values BIOHSPAT8 BIOHSPAT8 ;
 label values BIOHSPAT9 BIOHSPAT9 ;
 label values BIOHSPAT10 BIOHSPAT10 ;
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
 label values CRALL CRALL ;
 label values CRALLU5 CRALLU5 ;
 label values CRALL518 CRALL518 ;
 label values CRMALU5 CRMALU5 ;
 label values CRMAL518 CRMAL518 ;
 label values CRFEMU5 CRFEMU5 ;
 label values CRFEM518 CRFEM518 ;
 label values NCALL NCALL ;
 label values NCALLU5 NCALLU5 ;
 label values NCALL518 NCALL518 ;
 label values NCMALU5 NCMALU5 ;
 label values NCMAL518 NCMAL518 ;
 label values NCFEMU5 NCFEMU5 ;
 label values NCFEM518 NCFEM518 ;
 label values CROUTG CROUTG ;
 label values CRRELG CRRELG ;
 label values CRPTA CRPTA ;
 label values CRHELP CRHELP ;
 label values CRTALK CRTALK ;
 label values CRTAKE CRTAKE ;
 label values CRMEAL CRMEAL ;
 label values CRFEED CRFEED ;
 label values CRBATH CRBATH ;
 label values CRPLAY CRPLAY ;
 label values CRREAD CRREAD ;
 label values CRGOOD CRGOOD ;
 label values NCVISIT NCVISIT ;
 label values NCSATVIS NCSATVIS ;
 label values NCEMAIL NCEMAIL ;
 label values NCOUTG NCOUTG ;
 label values NCRELG NCRELG ;
 label values NCPTA NCPTA ;
 label values INTROGB6 INTROGB6 ;
 label values NCHELP NCHELP ;
 label values NCTALK NCTALK ;
 label values NCTAKE NCTAKE ;
 label values NCMEAL NCMEAL ;
 label values INTROGB11 INTROGB11 ;
 label values NCFEED NCFEED ;
 label values NCBATH NCBATH ;
 label values NCPLAY NCPLAY ;
 label values NCREAD NCREAD ;
 label values NCGOOD NCGOOD ;
 label values NCMONEY NCMONEY ;
 label values NCREG NCREG ;
 label values NCAGREE NCAGREE ;
 label values NCAGREEN NCAGREEN ;
 label values CHSUPPYR CHSUPPYR ;
 label values RWANT RWANT ;
 label values PROBWANT PROBWANT ;
 label values JINTEND JINTEND ;
 label values JSUREINT JSUREINT ;
 label values JINTENDN JINTENDN ;
 label values JEXPECTL JEXPECTL ;
 label values JEXPECTS JEXPECTS ;
 label values INTEND INTEND ;
 label values INTENDN INTENDN ;
 label values EXPECTL EXPECTL ;
 label values EXPECTS EXPECTS ;
 label values USUALCAR USUALCAR ;
 label values USLPLACE USLPLACE ;
 label values COVER12 COVER12 ;
 label values NUMNOCOV NUMNOCOV ;
 label values COVERHOW01 COVERHOW01 ;
 label values COVERHOW02 COVERHOW02 ;
 label values COVERHOW03 COVERHOW03 ;
 label values COVERHOW04 COVERHOW04 ;
 label values NOWCOVER01 NOWCOVER01 ;
 label values NOWCOVER02 NOWCOVER02 ;
 label values NOWCOVER03 NOWCOVER03 ;
 label values NOWCOVER04 NOWCOVER04 ;
 label values GOFPCWGF GOFPCWGF ;
 label values WHENGOGF WHENGOGF ;
 label values YOUGOFPC YOUGOFPC ;
 label values WHENGOFP WHENGOFP ;
 label values YOUFPSVC1 YOUFPSVC1 ;
 label values YOUFPSVC2 YOUFPSVC2 ;
 label values YOUFPSVC3 YOUFPSVC3 ;
 label values YOUFPSVC4 YOUFPSVC4 ;
 label values YOUFPSVC5 YOUFPSVC5 ;
 label values YOUFPSVC6 YOUFPSVC6 ;
 label values LIMITED LIMITED ;
 label values EQUIPMNT EQUIPMNT ;
 label values PHYSEXAM PHYSEXAM ;
 label values TESTICHK TESTICHK ;
 label values BCADVICE BCADVICE ;
 label values BCADVICEF BCADVICEF ;
 label values BCADVICEM BCADVICEM ;
 label values STERADVI STERADVI ;
 label values STDADVIC STDADVIC ;
 label values HIVADVIC HIVADVIC ;
 label values ONEVISIT ONEVISIT ;
 label values NUMVISIT NUMVISIT ;
 label values PLACEVIS01 PLACEVIS01 ;
 label values PLACEVIS02 PLACEVIS02 ;
 label values PLACEVIS03 PLACEVIS03 ;
 label values PLACEVIS04 PLACEVIS04 ;
 label values PLACEVIS05 PLACEVIS05 ;
 label values SVCPAY1 SVCPAY1 ;
 label values SVCPAY2 SVCPAY2 ;
 label values SVCPAY3 SVCPAY3 ;
 label values INFHELP INFHELP ;
 label values INFSVCS1 INFSVCS1 ;
 label values INFSVCS2 INFSVCS2 ;
 label values INFSVCS3 INFSVCS3 ;
 label values INFSVCS4 INFSVCS4 ;
 label values INFSVCS5 INFSVCS5 ;
 label values INFSVCS6 INFSVCS6 ;
 label values INFTEST INFTEST ;
 label values WHOINSEM WHOINSEM ;
 label values INFHLPNW INFHLPNW ;
 label values LASTVIS_M LASTVIS_M ;
 label values LASTVIS_Y LASTVIS_Y ;
 label values CMINFVIS CMINFVIS ;
 label values INFRTHIS1 INFRTHIS1 ;
 label values INFRTHIS2 INFRTHIS2 ;
 label values INFRTHIS3 INFRTHIS3 ;
 label values DONBLD85 DONBLD85 ;
 label values HIVTEST HIVTEST ;
 label values WHENHIV_M WHENHIV_M ;
 label values WHENHIV_Y WHENHIV_Y ;
 label values CMHIVTST CMHIVTST ;
 label values HIVTSTYR HIVTSTYR ;
 label values RAPIDHIV RAPIDHIV ;
 label values HIVSOON HIVSOON ;
 label values HIVKIND HIVKIND ;
 label values PLCHIV PLCHIV ;
 label values HIVTST HIVTST ;
 label values WHOSUGG WHOSUGG ;
 label values TALKDOCT TALKDOCT ;
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
 label values RETROVIR RETROVIR ;
 label values SAMEADD SAMEADD ;
 label values CNTRY00 CNTRY00 ;
 label values BRNOUT BRNOUT ;
 label values YRSTRUS YRSTRUS ;
 label values PAYDU PAYDU ;
 label values RELRAISD RELRAISD ;
 label values ATTND14 ATTND14 ;
 label values RELCURR RELCURR ;
 label values RELTRAD RELTRAD ;
 label values FUNDAM1 FUNDAM1 ;
 label values FUNDAM2 FUNDAM2 ;
 label values FUNDAM3 FUNDAM3 ;
 label values FUNDAM4 FUNDAM4 ;
 label values RELDLIFE RELDLIFE ;
 label values ATTNDNOW ATTNDNOW ;
 label values MILSVC MILSVC ;
 label values STARTMIL STARTMIL ;
 label values ENDMIL ENDMIL ;
 label values EVWRK6MO EVWRK6MO ;
 label values BEGFSTWK_M BEGFSTWK_M ;
 label values BEGFSTWK_Y BEGFSTWK_Y ;
 label values CMBFSTWK CMBFSTWK ;
 label values EVRNTWRK EVRNTWRK ;
 label values WRK12MOS WRK12MOS ;
 label values FPT12MOS FPT12MOS ;
 label values DOLASTWK1 DOLASTWK1 ;
 label values DOLASTWK2 DOLASTWK2 ;
 label values DOLASTWK3 DOLASTWK3 ;
 label values DOLASTWK4 DOLASTWK4 ;
 label values DOLASTWK5 DOLASTWK5 ;
 label values DOLASTWK6 DOLASTWK6 ;
 label values RWRKST RWRKST ;
 label values EVERWORK EVERWORK ;
 label values RPAYJOB RPAYJOB ;
 label values RNUMJOB RNUMJOB ;
 label values RFTPTX RFTPTX ;
 label values REARNTY REARNTY ;
 label values SPLSTWK1 SPLSTWK1 ;
 label values SPLSTWK2 SPLSTWK2 ;
 label values SPLSTWK3 SPLSTWK3 ;
 label values SPLSTWK4 SPLSTWK4 ;
 label values SPLSTWK5 SPLSTWK5 ;
 label values SPLSTWK6 SPLSTWK6 ;
 label values SPWRKST SPWRKST ;
 label values SPPAYJOB SPPAYJOB ;
 label values SPNUMJOB SPNUMJOB ;
 label values SPFTPTX SPFTPTX ;
 label values SPEARNTY SPEARNTY ;
 label values BETTER BETTER ;
 label values STAYTOG STAYTOG ;
 label values SAMESEX SAMESEX ;
 label values ANYACT ANYACT ;
 label values SXOK18 SXOK18 ;
 label values SXOK16 SXOK16 ;
 label values CHUNLESS CHUNLESS ;
 label values CHREWARD CHREWARD ;
 label values CHSUPPOR CHSUPPOR ;
 label values GAYADOPT GAYADOPT ;
 label values OKCOHAB OKCOHAB ;
 label values WARM WARM ;
 label values ACHIEVE ACHIEVE ;
 label values FAMILY FAMILY ;
 label values REACTSLF REACTSLF ;
 label values CHBOTHER CHBOTHER ;
 label values MARRFAIL MARRFAIL ;
 label values CHCOHAB CHCOHAB ;
 label values PRVNTDIV PRVNTDIV ;
 label values GETALONG GETALONG ;
 label values PMARCOHB PMARCOHB ;
 label values COHCHANCE COHCHANCE ;
 label values MARRCHANCE MARRCHANCE ;
 label values PMARCOH PMARCOH ;
 label values LESSPLSR LESSPLSR ;
 label values EMBARRAS EMBARRAS ;
 label values APPREC1 APPREC1 ;
 label values ACASILANG ACASILANG ;
 label values GENHEALT GENHEALT ;
 label values INCHES INCHES ;
 label values RWEIGHT RWEIGHT ;
 label values BMI BMI ;
 label values EARNTYPE EARNTYPE ;
 label values EARN EARN ;
 label values EARNDK1 EARNDK1 ;
 label values EARNDK2 EARNDK2 ;
 label values EARNDK3 EARNDK3 ;
 label values WAGE WAGE ;
 label values SELFINC SELFINC ;
 label values SOCSEC SOCSEC ;
 label values DISABIL DISABIL ;
 label values RETIRE RETIRE ;
 label values SSI SSI ;
 label values UNEMP UNEMP ;
 label values CHLDSUPP CHLDSUPP ;
 label values INTEREST INTEREST ;
 label values DIVIDEND DIVIDEND ;
 label values OTHINC OTHINC ;
 label values TOINCWMY TOINCWMY ;
 label values TOTINC TOTINC ;
 label values FMINCDK1 FMINCDK1 ;
 label values FMINCDK2 FMINCDK2 ;
 label values FMINCDK3 FMINCDK3 ;
 label values PUBASST PUBASST ;
 label values PUBASTYP1 PUBASTYP1 ;
 label values FOODSTMP FOODSTMP ;
 label values WIC WIC ;
 label values HLPTRANS HLPTRANS ;
 label values HLPCHLDC HLPCHLDC ;
 label values HLPJOB HLPJOB ;
 label values AGER AGER ;
 label values FMARITAL FMARITAL ;
 label values RMARITAL RMARITAL ;
 label values EDUCAT EDUCAT ;
 label values HIEDUC HIEDUC ;
 label values HISPANIC HISPANIC ;
 label values NUMRACE NUMRACE ;
 label values RACE RACE ;
 label values HISPRACE HISPRACE ;
 label values HISPRACE2 HISPRACE2 ;
 label values NUMKDHH NUMKDHH ;
 label values NUMFMHH NUMFMHH ;
 label values HHFAMTYP HHFAMTYP ;
 label values HHPARTYP HHPARTYP ;
 label values NCHILDHH NCHILDHH ;
 label values HHKIDTYP HHKIDTYP ;
 label values CSPBBHH CSPBBHH ;
 label values CSPSBHH CSPSBHH ;
 label values CSPOKDHH CSPOKDHH ;
 label values INTCTFAM INTCTFAM ;
 label values PARAGE14 PARAGE14 ;
 label values EDUCMOM EDUCMOM ;
 label values AGEMOMB1 AGEMOMB1 ;
 label values FMARNO FMARNO ;
 label values AGER_I AGER_I ;
 label values FMARITAL_I FMARITAL_I ;
 label values RMARITAL_I RMARITAL_I ;
 label values EDUCAT_I EDUCAT_I ;
 label values HIEDUC_I HIEDUC_I ;
 label values HISPANIC_I HISPANIC_I ;
 label values RACE_I RACE_I ;
 label values HISPRACE_I HISPRACE_I ;
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
 label values HADSEX HADSEX ;
 label values SEXONCE SEXONCE ;
 label values FIRSTPFLAG FIRSTPFLAG ;
 label values SEXMAR SEXMAR ;
 label values SEXUNION SEXUNION ;
 label values FSEXRLTN FSEXRLTN ;
 label values SEX1MTHD1 SEX1MTHD1 ;
 label values SEX1MTHD2 SEX1MTHD2 ;
 label values SEX1MTHD3 SEX1MTHD3 ;
 label values SEX1MTHD4 SEX1MTHD4 ;
 label values ORDERFLAG ORDERFLAG ;
 label values SEX3MO SEX3MO ;
 label values SEX12MO SEX12MO ;
 label values LSEXPRAC LSEXPRAC ;
 label values LSEXRLTN LSEXRLTN ;
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
 label values LIFPRTNR LIFPRTNR ;
 label values PARTS1YR PARTS1YR ;
 label values PARTDUR1 PARTDUR1 ;
 label values PARTDUR2 PARTDUR2 ;
 label values PARTDUR3 PARTDUR3 ;
 label values COHEVER COHEVER ;
 label values EVMARCOH EVMARCOH ;
 label values PMARRNO PMARRNO ;
 label values NONMARR NONMARR ;
 label values TIMESCOH TIMESCOH ;
 label values MAREND01 MAREND01 ;
 label values MAREND02 MAREND02 ;
 label values MAREND03 MAREND03 ;
 label values MAREND04 MAREND04 ;
 label values MAR1DISS MAR1DISS ;
 label values PREMARW1 PREMARW1 ;
 label values COHSTAT COHSTAT ;
 label values COHOUT COHOUT ;
 label values COH1DUR COH1DUR ;
 label values CSPBIOKD CSPBIOKD ;
 label values B1PREMAR B1PREMAR ;
 label values MARBABY1 MARBABY1 ;
 label values CEBOW CEBOW ;
 label values CEBOWC CEBOWC ;
 label values CEBOWP CEBOWP ;
 label values EVRNOPAT EVRNOPAT ;
 label values NONLIVEB NONLIVEB ;
 label values COMPREG COMPREG ;
 label values ABORTION ABORTION ;
 label values LOSSNUM LOSSNUM ;
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
 label values UNINTB5 UNINTB5 ;
 label values HADSEX_I HADSEX_I ;
 label values SEXONCE_I SEXONCE_I ;
 label values VRY1STSX_I VRY1STSX_I ;
 label values VRY1STAG_I VRY1STAG_I ;
 label values SEXMAR_I SEXMAR_I ;
 label values SEXUNION_I SEXUNION_I ;
 label values FSEXPAGE_I FSEXPAGE_I ;
 label values FSEXRLTN_I FSEXRLTN_I ;
 label values SEX1MTHD1_I SEX1MTHD1_I ;
 label values SEX1MTHD2_I SEX1MTHD2_I ;
 label values SEX1MTHD3_I SEX1MTHD3_I ;
 label values SEX1MTHD4_I SEX1MTHD4_I ;
 label values LSEXDATE_I LSEXDATE_I ;
 label values LSEXDATE2_I LSEXDATE2_I ;
 label values SEX3MO_I SEX3MO_I ;
 label values SEX12MO_I SEX12MO_I ;
 label values LSEXRAGE_I LSEXRAGE_I ;
 label values LSEXPAGE_I LSEXPAGE_I ;
 label values LSEXPRAC_I LSEXPRAC_I ;
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
 label values MAREND01_I MAREND01_I ;
 label values MAREND02_I MAREND02_I ;
 label values MAREND03_I MAREND03_I ;
 label values MAREND04_I MAREND04_I ;
 label values MARDIS01_I MARDIS01_I ;
 label values MARDIS02_I MARDIS02_I ;
 label values MARDIS03_I MARDIS03_I ;
 label values MARDIS04_I MARDIS04_I ;
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
 label values UNINTB5_I UNINTB5_I ;
 label values DADTYPE DADTYPE ;
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
 label values INTENT INTENT ;
 label values ADDEXP ADDEXP ;
 label values INTENT_I INTENT_I ;
 label values ADDEXP_I ADDEXP_I ;
 label values CURR_INS CURR_INS ;
 label values INFEVER INFEVER ;
 label values EVHIVTST EVHIVTST ;
 label values CURR_INS_I CURR_INS_I ;
 label values INFEVER_I INFEVER_I ;
 label values EVHIVTST_I EVHIVTST_I ;
 label values METRO METRO ;
 label values RELIGION RELIGION ;
 label values LABORFOR LABORFOR ;
 label values METRO_I METRO_I ;
 label values RELIGION_I RELIGION_I ;
 label values LABORFOR_I LABORFOR_I ;
 label values POVERTY POVERTY ;
 label values TOTINCR TOTINCR ;
 label values PUBASSIS PUBASSIS ;
 label values POVERTY_I POVERTY_I ;
 label values TOTINCR_I TOTINCR_I ;
 label values PUBASSIS_I PUBASSIS_I ;
 label values CMINTVW CMINTVW ;
 label values QUESTYEAR QUESTYEAR ;
 label values INTVLNGTH INTVLNGTH ;
 
#delimit cr

/********************************************************************

 Section 4: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

