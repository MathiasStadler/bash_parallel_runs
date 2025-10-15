#!/bin/bash

# FOUND HERE - https://unix.stackexchange.com/questions/68236/avoiding-busy-waiting-in-bash-without-the-sleep-command

snore()
{
    local IFS
    [[ -n "${_snore_fd:-}" ]] || { exec {_snore_fd}<> <(:); } 2>/dev/null ||
    {
        # workaround for MacOS and similar systems
        local fifo
        fifo=$(mktemp -u)
        mkfifo -m 700 "$fifo"
        exec {_snore_fd}<>"$fifo"
        rm "$fifo"
    }
    read -r ${1:+-t "$1"} -u "$_snore_fd" || :
}

echo "start sleeping"
# snore 0.1  # sleeps for 0.1 seconds
snore 3   # sleeps for 10 seconds
# snore      # sleeps forever
echo "wake up"