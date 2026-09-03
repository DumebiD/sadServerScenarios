#!/bin/bash

nmap -p- localhost

# Source - https://stackoverflow.com/a/32816688
# Posted by Renaud Pacalet, modified by community. See post 'Timeline' for change history
# Retrieved 2026-09-03, License - CC BY-SA 3.0

# will check out this code to see if i can knock on every port sequentially
# HOST=$1
# shift
# for (( COUNTER = 0; COUNTER < 100; COUNTER += 1 )); do
#   for PORT in "$@"; do
#     nmap -Pn --host_timeout 100 --max-retries 0 -p $PORT $HOST
#   done
# done
