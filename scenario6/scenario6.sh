#!/bin/bash

# finding the average

# get the number of records by getting the last line and then it's first column which contains the line number
COUNT=$(tail -n 1 /home/admin/scores.txt | awk '{print $1}')

# get the sum of all the numbers in the second column. Ensure you use END print to get the returned value
SUM=$(awk '{sum+=$2} END {print sum}' /home/admin/scores.txt)

# divide sum by num to get average and use scale to set number of decimal places
echo "scale=2; $SUM/$COUNT" | bc > ~/solution
