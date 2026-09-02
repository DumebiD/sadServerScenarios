#!bin/bash

# fuser will return the process ID accessing the log file and -k will simultaneuosly kill that process with that returned process ID
sudo fuser -k /var/log/bad.log