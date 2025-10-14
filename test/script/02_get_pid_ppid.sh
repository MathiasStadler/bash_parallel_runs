#! /bin/bash

# start another script

# type -f exec -- exec is a shell builtin

# echo "$PWD"



return_value="$(exec "${PWD}/01_get_pid_ppid.sh")"

echo "RETURN VALUE $return_value"

#/01_get_pid_ppid.sh

# pid="$("ps -ef | grep script.sh | awk ‘{print $2}")"

# echo "$pid"

# PREPARE FOR RUN
# - make executable
# chmod +x 02_get_pid_ppid.sh