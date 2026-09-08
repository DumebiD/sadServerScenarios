#!/bin/bash

# merging csv files

# NR means number of records. FNR means File number of records. 
# FNR resets to 1 when a new file is started and being read
# NR continues to increment and does not reset
awk '(NR == 1) || (FNR > 1)' *.csv > all.csv

# print first 10 lines
head all.csv
