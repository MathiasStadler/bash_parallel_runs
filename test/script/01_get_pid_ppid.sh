#!  /usr/bin/bash

# This is also useful to get a script name without using /bin/basename
# FOUND HERE - https://www.cyberciti.biz/tips/bash-shell-parameter-substitution-2.html
filename="${0##*/}"

# SCRIPT_NAME="$(/usr/bin/basename "${BASH_SOURCE[0]}")"


# echo is a shell builtin
echo " $filename-> PPID $PPID -- PID $$"

echo "$$" >/tmp/script_run$$

#w/o cat
# cat /tmp/script_run$$
# DEBUG PLEASE REMOVE FOR PRODUCTION
# cp /tmp/script_run$$ /dev/stdout
# DONN'T USE cp
# Looping through the content of a file in Bash - 
# FOUND HERE - https://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash/ 
echo /tmp/script_run$$


# ls -la /tmp/script_run$$



# PREPARE FOR RUN
# - make executable
# chmod +x 01_get_pid_ppid.sh