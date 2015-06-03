#!/bin.sh

# shell script to download my compton.conf and openbox theme

# cd into home dir
cd ~/

# check if you have a .config directory(you should already)
if [ ! -d ".config" ]; then
	mkdir ~/.config
fi

# cd into config dir
cd ~/.config

# git my compton config file
git clone https://github.com/psilocin/configs/blob/master/compton.conf

# cd back into home
cd ~/

# check if the dir '.themes' exists
if [ ! -d ".themes" ]; then
	mkdir ~/.themes
fi

# cd into themes dir and make custom theme dir
cd ~/.themes
mkdir ~/.themes/psilocin
mkdir ~/.themes/psilocin/openbox-3

# git my theme
git clone https://github.com/psilocin/OpenBox.git

# move files from cloned git
cd OpenBox
mv * ~/.themes/psilocin/openbox-3/
cd - && rm -rf OpenBox
