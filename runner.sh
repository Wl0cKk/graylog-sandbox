#!/bin/bash

if ! command -v ruby &> /dev/null; then
    echo "Ruby is not installed, so intalling now..."
    sudo apt update
    sudo apt install ruby -y
fi

if [ -z "$1" ]; then
    echo "Run a Command with a password as an argument - bash runner.sh 1111"
    echo "Where 1111 is your password"
    exit 1
fi
chmod +x genconf
./genconf "$1"
docker-compose up -d