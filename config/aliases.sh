#!/bin/bash

ALIASES=~/.zaliases
PROFILE=~/.zprofile

# create file with aliases
cat ./resources/aliases >> $ALIASES

# activate it
source $ALIASES

# add to profile
echo "\n\n# aliases\nsource $ALIASES" >> $PROFILE
