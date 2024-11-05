#!/bin/bash

echo "Installing required packages/fonts ONLY works if you're on Arch or an Arch-based distro. (hit enter otherwise)"
read -r -p "Would you like to install ALL packages required for the configuration? (listed in README) [y/N]: " response
response=${response,,}
if [[ "$response" =~ ^(yes|y)$ ]]; then
sudo pacman -S bspwm xorg-server xorg-xinit xorg-xsetroot sxhkd code polybar picom thunar ranger zathura zathura-poppler alacritty dmenu nitrogen bashtop
fi

read -r -p "Would you like to install required fonts? [y/N]: " response
response=${response,,}
if [[ "$response" =~ ^(yes|y)$ ]]; then
yay -S siji-git ttf-jetbrains-mono
fi

cd ~/.config
mkdir bspwm
mkdir sxhkd
mkdir zathura
mkdir polybar

git clone https://github.com/akirakani-kei/dotfiles
cd dotfiles
mv .xinitrc ~
cd ~/.config
mv dotfiles/bspwmrc bspwm/
mv dotfiles/sxhkdrc sxhkd/
mv dotfiles/zathurarc zathura/
mv dotfiles/polybar/launch.sh polybar/
mv dotfiles/polybar/config polybar/

cd ~/.config/bspwm
chmod +x bspwmrc
cd ~/.config/sxhkd
chmod +x sxhkdrc
cd ~/.config/polybar
chmod +x launch.sh
chmod +x config
cd ~/.config/zathura
chmod +x zathurarc

cd ~/.config
rm -rf dotfiles

clear

echo "Installation complete."

#**Running *install.sh* will install the following packages**
#`bspwm xorg-server xorg-xinit xorg-xsetroot sxhkd code polybar picom thunar ranger zathura zathura-poppler firefox alacritty dmenu nitrogen bashtop`
