#!/usr/bin/env bash

input_file="$1"

# display error message
error_message() {
    echo "Error: ${1:-unknown error.}"
    exit 1
}


# display a help message and exit
prompt_help() {
    script_name="$(basename "$0")"
    cat << EOF

Usage:
    $script_name
    $script_name FILE
    $script_name -h

EOF
    exit 0
}

# main program

if [[ "$input_file" == "" ]]; then
    echo "Warning: file missing."
    echo -n "Please drag-and-drop a file:"
    read input_file

fi

if [[ "$input_file" == "-h" ]]; then
    prompt_help

fi

if [[ ! -f "$input_file" ]]; then
    error_message "'$input_file' is not a file."
fi

md5sum "$input_file"
