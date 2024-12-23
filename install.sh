echo "Installing required packages/fonts ONLY works if you're on Arch or an Arch-based distro. (hit enter otherwise)"
read -r -p "Would you like to install ALL packages required for the configuration? (listed in README) [y/N]: " response
response=$(echo "$response" | tr '[:upper:]' '[:lower:]')
if [ "$response" = "y" ] || [ "$response" = "yes" ]; then
    sudo pacman -S bspwm xorg-server xorg-xinit xorg-xsetroot playerctl pamixer sxhkd polybar picom thunar ranger zathura zathura-pdf-poppler alacritty dmenu alacritty nitrogen bashtop
fi

read -r -p "Would you like to install required fonts? [y/N]: " response
response=$(echo "$response" | tr '[:upper:]' '[:lower:]')
if [ "$response" = "y" ] || [ "$response" = "yes" ]; then
    yay -S siji-git ttf-jetbrains-mono ttf-meslo
    sudo pacman -S nerds-font
fi

if [ ! -d "$HOME/.config" ]; then
  mkdir -p "$HOME/.config"

cd ~/.config
mkdir bspwm sxhkd zathura polybar alacritty nvim

git clone https://github.com/NvChad/starter nvim

git clone https://github.com/akirakani-kei/dotfiles
cd dotfiles
mv .xinitrc ~
cd ~/.config
mv dotfiles/bspwmrc bspwm
mv dotfiles/alacritty.toml alacritty
mv dotfiles/sxhkd/sxhkdrc sxhkd
mv dotfiles/sxhkd/rewind.sh sxhkd
mv dotfiles/zathurarc zathura
mv dotfiles/polybar/launch.sh polybar
mv dotfiles/polybar/config polybar
mv dotfiles/substrata.vim nvim

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/sxhkd/rewind.sh
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/config
chmod +x ~/.config/zathura/zathurarc
chmod +x ~/.config/alacritty/alacritty.toml

rm -rf ~/.config/dotfiles

echo "Installation complete."
