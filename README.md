# DOTFILES

original config made almost entirely by [7USTIN](https://github.com/7USTIN/dotfiles/), this repo only exists for the modifications that i've personally made to my own setup

## Screenshots

![image](https://github.com/user-attachments/assets/d9d109c1-9ac7-4128-85b8-2d1a268eb828)

![image](https://github.com/user-attachments/assets/d5be99c6-5f15-424c-9eb1-f49359a2b07c)

![image](https://github.com/user-attachments/assets/2c4ffa84-03a4-4587-8551-fba234395563)

![image](https://github.com/user-attachments/assets/2ca33859-1702-43dc-b7b1-d4d8674db207)


![8](https://github.com/user-attachments/assets/ad0eb6c6-35ba-4b21-8eed-ecf8e1cf7ad1)


-----

•                       | • 
------------------------|-----------------------
**distro**              | arch
**wm**                  | bspwm
**compositor**          | picom
**bar**                 | polybar
**launcher**            | dmenu
**terminal**            | kitty
**ide**                 | nvim
**file manager**        | ranger
**pdfs**                | zathura
**res mon**             | bashtop
**font**                | jetbrains mono
**symbol font**         | siji
**background**          | #151515

-----

## Automatic installation

*Run the installation script* <br>
```shell
sh -c "$(curl -sS https://raw.githubusercontent.com/akirakani-kei/dotfiles/refs/heads/main/install.sh)"
```

<br>

**Running *install.sh* (if prompted) will install the following packages:**
<br> <br>
`bspwm xorg-server xorg-xinit xorg-xsetroot playerctl pamixer sxhkd polybar picom thunar ranger zathura zathura-pdf-poppler kitty dmenu nitrogen bashtop maim`
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
