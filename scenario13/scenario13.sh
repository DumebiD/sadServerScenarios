#!/bin/bash
# type f tells it to look for only files not folders
# {} is a placeholder for the file names found.
# + This tells find to pass as many file names as possible to grep.

find ./ -type f -exec grep 'secret'  {} \;