#!/bin/bash

# Test if five-server is installed globally
if ! command -v five-server &> /dev/null
then
    echo "five-server could not be found, please install it globally using:"
    echo "npm install -g five-server"
    exit 1
fi

# Start a simple HTTP server using five-server
five-server --port=8091 --open='index.html?data=example/2026_Saxony.json&show_week_numbers=true' --root=./