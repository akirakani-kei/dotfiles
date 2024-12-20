echo "Installing required packages/fonts ONLY works if you're on Arch or an Arch-based distro. (hit enter otherwise)"
read -r -p "Would you like to install ALL packages required for the configuration? (listed in README) [y/N]: " response
response=$(echo "$response" | tr '[:upper:]' '[:lower:]')
if [ "$response" = "y" ] || [ "$response" = "yes" ]; then
    sudo pacman -S bspwm xorg-server xorg-xinit xorg-xsetroot sxhkd code polybar picom thunar ranger zathura zathura-pdf-poppler alacritty dmenu nitrogen bashtop
fi

read -r -p "Would you like to install required fonts? [y/N]: " response
response=$(echo "$response" | tr '[:upper:]' '[:lower:]')
if [ "$response" = "y" ] || [ "$response" = "yes" ]; then
    yay -S siji-git ttf-jetbrains-mono ttf-meslo
fi


cd ~/.config
mkdir bspwm sxhkd zathura polybar

git clone https://github.com/akirakani-kei/dotfiles
cd dotfiles
mv .xinitrc ~
cd ~/.config
mv dotfiles/bspwmrc bspwm
mv dotfiles/sxhkdrc sxhkd
mv dotfiles/zathurarc zathura
mv dotfiles/polybar/launch.sh polybar
mv dotfiles/polybar/config polybar

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/config
chmod +x ~/.config/zathura/zathurarc

rm -rf ~/.config/dotfiles

clear

echo "Installation complete."

#Running *install.sh* (if prompted) will install the following packages
#bspwm xorg-server xorg-xinit xorg-xsetroot sxhkd code polybar picom thunar ranger zathura zathura-poppler firefox alacritty dmenu nitrogen bashtop
