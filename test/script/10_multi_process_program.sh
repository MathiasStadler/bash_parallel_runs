#!/bin/bash
# FOUND HERE - https://stackoverflow.com/questions/356100/how-to-wait-in-bash-for-several-subprocesses-to-finish-and-return-exit-code-0#356154
# Search for time ./multi_process_program.sh 

#!/usr/bin/env bash


# This is a special sleep function which returns the number of seconds slept as
# the "error code" or return code" so that we can easily see that we are in
# fact actually obtaining the return code of each process as it finishes.
my_sleep() {
    seconds_to_sleep="$1"
    sleep "$seconds_to_sleep"
    return "$seconds_to_sleep"
}

# Create an array of whatever commands you want to run as subprocesses
procs=()  # bash array
procs+=("my_sleep 5")
procs+=("my_sleep 2")
procs+=("my_sleep 3")
procs+=("my_sleep 4")

num_procs=${#procs[@]}  # number of processes
echo "num_procs = $num_procs"

# run commands as subprocesses and store pids in an array
pids=()  # bash array
for (( i=0; i<"$num_procs"; i++ )); do
    echo "cmd = ${procs[$i]}"
    ${procs[$i]} &  # run the cmd as a subprocess
    # store pid of last subprocess started; see:
    # https://unix.stackexchange.com/a/30371/114401
    pids+=("$!")
    echo "    pid = ${pids[$i]}"
done

# OPTION 1 (comment this option out if using Option 2 below): wait for all pids
for pid in "${pids[@]}"; do
    wait "$pid"
    return_code="$?"
    echo "PID = $pid; return_code = $return_code"
done
echo "All $num_procs processes have ended."

# start on shell with => 
# time ./10_multi_process_program.sh