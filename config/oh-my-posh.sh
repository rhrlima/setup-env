#!/bin/bash

echo "OH MY POSH"

THEMES_FOLDER=~/.ompthemes
THEME_NAME=ricardo.omp.json
FONT=font-meslo-lg-nerd-font

# theme and initialization
if [ ! -f "$THEMES_FOLDER/$THEME_NAME" ]; then
    mkdir -p $THEMES_FOLDER
    curl https://gist.githubusercontent.com/rhrlima/0b56d42c54a4654a23cbccdae42e3f31/raw/c6e0f3fe8c890941b10011f04b4e5cda207adac1/custom_aliens.omp.json -o $THEMES_FOLDER/$THEME_NAME
    eval "$(oh-my-posh init zsh --config ${THEMES_FOLDER}/${THEME_NAME})"

    echo "\n\n# oh-my-posh" >> ~/.zprofile
    echo "eval \"\$(oh-my-posh init zsh --config ${THEMES_FOLDER}/${THEME_NAME})\"" >> ~/.zprofile
else
    echo "Theme already installed."
fi

# font
if [ -z $(brew list | grep $FONT) ]; then
    brew install --cask $FONT
    echo "Font has been downloaded, but it has to be changed manually."
else
    echo "Font already installed."
fi
