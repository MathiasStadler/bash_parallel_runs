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
trap '' SIGINT
trap ''  SIGQUIT
trap '' SIGTSTP

function kind_process () {

    # loop
    echo "start function kind_process"
    for (( ; ; ))
    do
    echo "Pres CTRL+C to stop..."
    sleep 1
    done

}


# FOUND HERE - https://serverfault.com/questions/205498/how-to-get-pid-of-just-started-process
kind_process && kind_pid=$!
echo "pid $$"
echo "kind pid $kind_pid"


