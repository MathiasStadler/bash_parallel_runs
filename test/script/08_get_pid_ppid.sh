#!/bin/bash

# FOUND HERE - https://cspell.org/docs/api/cspell
# spell-checker:disable
# set command option
# set: usage: set [-abefhkmnptuvxBCEHPT] [-o option-name] [--] [-] [arg ...]
# spell-checker:enable

set -euxo pipefail

# Condition - Use only commands that are included in Bash, no external binaries :-)

# start kind process 
# get kind pid
# monitor lind process

# FOUND HERE - https://www.cyberciti.biz/faq/bash-infinite-loop/
# capture CTRL+C, CTRL+Z and quit singles using the trap
# trap '' SIGINT
# trap ''  SIGQUIT
# trap '' SIGTSTP

trap "handle_error;exit 1" SIGINT
trap "handle_error;exit 1"  SIGQUIT
trap "handle_error;exit 1" SIGTSTP
trap "handle_error;exit 1" ERR

function handle_error() {
	# NO function arguments

	# local function_name="${FUNCNAME[0]}"
	# local function_caller="${FUNCNAME[1]}"
	# log "${LINENO}" "$ERROR" "Call path => $function_caller->$function_name"
    # echo "${LINENO}" "$ERROR" "Call path => $function_caller->$function_name"
	
	
	# Get information about the error
	local error_code=$?
	local error_line=${BASH_LINENO[0]}
	local error_command=$BASH_COMMAND

	# echo  "TRAP => $ERROR => $$"

	# Log the error details
	# echo "Error occurred on line $error_line: $error_command (exit code: $error_code)"
	# echo "TRAP => $ERROR" "Error occurred on line $error_line: $error_command (exit code: $error_code)"
    echo "TRAP => Error occurred on line $error_line: $error_command (exit code: $error_code)"
	return 1 
}



function kind_process () {

    # loop
    echo "start function kind_process"
    for (( ; ; ))
    do
    # echo "Pres CTRL+C to stop..."
    sleep 1
    done

}


# FOUND HERE - https://serverfault.com/questions/205498/how-to-get-pid-of-just-started-process
# kind_process && kind_pid=$!
kind_process &
kind_pid=$!
echo "pid $$"
echo "kind pid $kind_pid"

sleep 3
kill $kind_pid
echo " ret code => $?"

# Thank you very much. This saves me from rummaging around further
# german - Vielen Dank. Das erspart mir das weitere Herumwühlen

