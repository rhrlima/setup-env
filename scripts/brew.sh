#!/bin/bash

echo "BREW"

APP=brew

which -s $APP > /dev/null
if [[ $? != 0 ]]; then
	# install brew
	echo "Installing Brew"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	eval "$(/opt/homebrew/bin/brew shellenv)"

    echo "\n\n# brew" >> ~/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
else
    echo "$APP already installed."
	# brew update
fi
