# DOTFILES

original config made almost entirely by [7USTIN](https://github.com/7USTIN/dotfiles/), this repo only exists for the modifications that i've personally made to my own setup

## Screenshots

![1](https://github.com/user-attachments/assets/093089d0-15a2-49a2-ba2e-4d64921ffdf1)

![2](https://github.com/user-attachments/assets/bd1ccc59-8821-4b5e-8b86-e6a901776244)

![3](https://github.com/user-attachments/assets/97c40fa5-1833-482c-bd27-cfa55c9c8054)

![5](https://github.com/user-attachments/assets/49f48bae-ca9a-4e23-a3e9-3b9836ed13ef)

![10](https://github.com/user-attachments/assets/a27a6e70-ba59-4a95-9c4b-f91b5618a4b6)

![8](https://github.com/user-attachments/assets/ad0eb6c6-35ba-4b21-8eed-ecf8e1cf7ad1)


-----

•                       | • 
------------------------|-----------------------
**distro**              | arch
**wm**                  | bspwm
**ide**                 | nvchad
**bar**                 | polybar
**compositor**          | picom
**file manager**        | thunar/ranger
**pdf reader**          | zathura
**browser**             | firefox
**extension**           | nighttab
**terminal**            | alacritty
**audio visualiser**    | cava
**resource monitor**    | bashtop
**ide font**            | jetbrains mono
**symbol font**         | siji
**wallpapers**          | nitrogen
**background**          | #151515

-----

## Automatic installation

*Run the installation script* <br>
```shell
curl -s https://raw.githubusercontent.com/akirakani-kei/dotfiles/refs/heads/main/install.sh | sh
```

<br>

**Running *install.sh* (if prompted) will install the following packages:**
<br> <br>
`bspwm xorg-server xorg-xinit xorg-xsetroot playerctl pamixer sxhkd polybar picom thunar ranger zathura zathura-pdf-poppler alacritty dmenu alacritty nitrogen bashtop`
<br> <br>
*Installing required packages/fonts **ONLY** works if you're on Arch or an Arch-based distro. (hit enter otherwise)*

-----

## Manual installation

*1. Clone the repository and cd into its directory* <br>
```shell
git clone https://github.com/akirakani-kei/dotfiles/
cd dotfiles
```
*2. Move all configuration files into their respective .config directories (following the example below)* <br>
```shell
mkdir ~/.config/bspwm  # in case directory doesn't exist
mv bspwmrc ~/.config/bspwm/
```
*3. Add execute permissions to each configuration file* <br>
```shell
chmod +x ~/.config/bspwm/bspwmrc
```

***Repeat 2. & 3. for all needed configuration files.***
<br>
