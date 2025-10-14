#!/bin/bash
# FOUND HERE - https://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash/
 
mapfile -t my_array < "$1"

for line in "${my_array[@]}"; do
  
  # process the lines
  echo "$line"
done