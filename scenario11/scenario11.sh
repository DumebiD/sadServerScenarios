#!/bin/bash

# data- is the prefix. -d tells it to use decimal/numerical suffixes -n speficies no. of chunks/files to be generated
# note to self, you cannot split in more than 1 way e.g splitting by bytes using -b and by number of chunks -n
split -n 10 -d data.csv data- 

# loop to add .csv extension to all the files starting with data-
for i in $(find data-*); do mv $i "$i.csv"; done

# copy header from original/first file and put in the rest
for i in $(find . -type f -name "data-*.csv" -not -name "data-00.csv");
    do echo -e "$(head -1 data.csv)\n$(cat $i)" > $i;
done