#!/bin/bash

# 1. print the first column which contains the IP Address on each row
# 2. sort the IP addresses
# 3. get their counts 
# 4. arrange in descending order (highest to lowest count)
# 5. get the first line which would have the highest count
# 6. get the 2nd column which would contain the ip address as the first column contains the count
awk '{print $1}' /home/admin/access.log | sort | uniq -c | sort -r | head -n 1 | awk '{print $2}' > /home/admin/highestip.txt