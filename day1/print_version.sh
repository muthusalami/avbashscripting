#!/usr/bin/env bash

# Bash scripting fo AVpres
# First Session
# 2022-01-25

input="$1"

if [[ "$input" == "Bash" ]] || [[ "$input" == "bash" ]]; then
    bash --version | grep "bash"
elif [[ "$input" == [Ff][Ff]mpeg ]]; then
   ffmpeg -version | grep "FFmpeg"
elif [[ "$input" == [Nn]ano ]]; then
   nano --version | grep "GNU nano"
elif [[ "$input" == [Mm]ediainfo ]]; then
    mediainfo --version
else
    echo "Usage:"
    echo " print_version.sh Bash"
    echo " print _version.sh FFmpeg"
fi
