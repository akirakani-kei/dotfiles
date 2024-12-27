echo "Installing required packages/fonts ONLY works if you're on Arch or an Arch-based distro. (hit enter otherwise)"
read -r -p "Would you like to install ALL packages required for the configuration? (listed in README) [y/N]: " response
response=$(echo "$response" | tr '[:upper:]' '[:lower:]')
if [ "$response" = "y" ] || [ "$response" = "yes" ]; then
    sudo pacman -S bspwm xorg-server xorg-xinit xorg-xsetroot playerctl pamixer sxhkd polybar picom thunar ranger zathura zathura-pdf-poppler kitty dmenu nitrogen bashtop maim
fi

read -r -p "Would you like to install required fonts? [y/N]: " response
response=$(echo "$response" | tr '[:upper:]' '[:lower:]')
if [ "$response" = "y" ] || [ "$response" = "yes" ]; then
    yay -S siji-git ttf-jetbrains-mono ttf-meslo
    sudo pacman -S nerds-font
fi

if [ ! -d "$HOME/.config" ]; then
  mkdir -p "$HOME/.config"
fi

cd ~/.config
mkdir -p bspwm sxhkd zathura polybar kitty nvim

git clone https://github.com/akirakani-kei/dotfiles
cd dotfiles
mv .xinitrc ~
cd ~/.config
mv -f dotfiles/bspwmrc bspwm
mv -f dotfiles/kitty.conf kitty
mv -f dotfiles/sxhkd/sxhkdrc sxhkd
mv -f dotfiles/sxhkd/rewind.sh sxhkd
mv -f dotfiles/zathurarc zathura
mv -f dotfiles/polybar/launch.sh polybar
mv -f dotfiles/polybar/config polybar

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/sxhkd/rewind.sh
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/config
chmod +x ~/.config/zathura/zathurarc
chmod +x ~/.config/kitty/kitty.conf

rm -rf ~/.config/dotfiles

echo "Installation complete."
