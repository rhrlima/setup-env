#!/bin/bash

echo "BREW APPS"

APPS=$(cat ./apps)
INSTALLED=$(brew list)

for app in $APPS; do

    if [[ -z $(echo $INSTALLED | grep $app) ]]; then
        echo "Installing $app"
        brew install $app
    else
        echo "$app OK"
    fi

done
