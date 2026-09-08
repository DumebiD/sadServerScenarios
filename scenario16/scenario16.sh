#!/bin/bash
# sleep for 5 seconds
# terminal equivalent: /bin/bash -c 'while true; do sleep 5; echo "this is a test message being sent to the pipe" > /home/admin/namedpipe; done' &
while true; do sleep 5; echo "this is a test message being sent to the pipe" > /home/admin/namedpipe; done &