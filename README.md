# DOTFILES

original config made almost entirely by [7USTIN](https://github.com/7USTIN/dotfiles/), this repo only exists for the modifications that i've personally made to my own setup
<br> <br>

<div align = center>
  
&ensp;[<kbd> <br> Screenshots <br> </kbd>](#Screenshots)&ensp;
&ensp;[<kbd> <br> Installation <br> </kbd>](#Installation)&ensp;
&ensp;[<kbd> <br> Dependecies <br> </kbd>](#Dependecies)&ensp;
&ensp;[<kbd> <br> Keybindings <br> </kbd>](#Keybindings)&ensp;

</div>

## Screenshots

![image](https://github.com/user-attachments/assets/d9d109c1-9ac7-4128-85b8-2d1a268eb828)

![image](https://github.com/user-attachments/assets/d5be99c6-5f15-424c-9eb1-f49359a2b07c)

![image](https://github.com/user-attachments/assets/2c4ffa84-03a4-4587-8551-fba234395563)

![image](https://github.com/user-attachments/assets/2ca33859-1702-43dc-b7b1-d4d8674db207)


![8](https://github.com/user-attachments/assets/ad0eb6c6-35ba-4b21-8eed-ecf8e1cf7ad1)


-----




## Automatic installation

*Run the installation script.* <br>
```shell
sh -c "$(curl -sS https://raw.githubusercontent.com/akirakani-kei/dotfiles/refs/heads/main/install.sh)"
```

> [!CAUTION]
> *Your current configuration files might be **overwritten**.* <br> *Installing required packages/fonts **ONLY** works if you're on Arch or an Arch-based distro. (hit enter otherwise)*

> [!IMPORTANT]
> *Running *install.sh* (if prompted) will install the following packages:* <br>
`bspwm xorg-server xorg-xinit xorg-xsetroot playerctl pamixer sxhkd polybar picom thunar ranger zathura zathura-pdf-poppler kitty dmenu nitrogen bashtop maim`


## Manual installation

*1. Clone the repository and change into its directory* <br>
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

----

## Dependecies

<table><tr><td>
  <code>a</code><br><code>p</code><br><code>p</code><br><code>s</code><br></td><td><table>
  <tr><td>kitty</td><td>terminal emulator</td></tr>
  <tr><td>ranger</td><td>file manager</td></tr>
  <tr><td>thunar</td><td>gui file manager</td></tr>
  <tr><td>spotify</td><td>music player</td></tr>
  <tr><td>dmenu</td><td>app launcher</td></tr>
  <tr><td>zathura</td><td>pdf viewer</td></tr>
  <tr><td>firefox</td><td>browser</td></tr></table>
</td></tr></table>

<br>

<table><tr><td>
  <code>r</code><br><code>i</code><br><code>c</code><br><code>e</code><br></td><td><table>
  <tr><td>nitrogen</td><td>wallpaper daemon</td></tr>
  <tr><td>maim</td><td>screenshot tool</td></tr>
  <tr><td>polybar</td><td>bar tool</td></tr>
  <tr><td>res mon</td><td>bashtop</td></tr>
</td></tr></table>

<br>

<table><tr><td>
  <code>s</code><br><code>h</code><br><code>e</code><br><code>l</code><br><code>l</code></td><td><table>
  <tr><td>bash</td><td>shell</td></tr>
  <tr><td>neovim</td><td>text editor</td></tr>
  <tr><td>pfetch</td><td>sys info</td></tr></table>
</td></tr></table>

<br>

<table><tr><td>
  <code>e</code><br><code>t</code><br><code>c</code></td><td><table>
  <tr><td>pulseaudio</td><td>audio</td></tr>
  <tr><td>networkmanager</td><td>manages network</td></tr></table>
</td></tr></table>

<br>

## Keybindings

#### Window Mangement

| Keys | Action |
| :--  | :-- |
| <kbd>Super</kbd> + (<kbd>Shift</kbd> ) + <kbd>W</kbd> | quit(/kill) focused window
| <kbd>Super</kbd> + <kbd>S</kbd> | toggle floating window
| <kbd>Super</kbd> + <kbd>F</kbd> | toggle fullscreen
| <kbd>Super</kbd> + <kbd>RightClick</kbd> | resize window
| <kbd>Super</kbd> + <kbd>LeftClick</kbd> | move window

#### Application Shortcuts

| Keys | Action |
| :--  | :-- |
| <kbd>Super</kbd> + <kbd>Enter</kbd> | launch kitty
| <kbd>Super</kbd> + <kbd>R</kbd> | launch ranger
| <kbd>Super</kbd> + <kbd>A</kbd> | launch firefox
| <kbd>Super</kbd> + <kbd>D</kbd> | launch discord
| <kbd>Super</kbd> + <kbd>Q</kbd> | launch spotify
| <kbd>Super</kbd> + <kbd>E</kbd> | launch neovim
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Esc </kbd> | launch bashtop

#### Widgets

| Keys | Action |
| :--  | :-- |
| <kbd>Super</kbd> + <kbd>Space</kbd> | launch dmenu

#### PrintScreen

| Keys | Action |
| :--  | :-- |
| <kbd>Print</kbd> | takes a screenshot of the entire screen
| <kbd>Shift</kbd> + <kbd>Print</kbd> | calls for a regional screenshot
| <kbd>Shift</kbd> + <kbd>Print</kbd> + <kbd>(click window)</kbd> | takes a screenshot of selected window

#### Workspaces

| Keys | Action |
| :--  | :-- |
| <kbd>MouseScroll</kbd> (over polybar) | cycle through desktops
| <kbd>Super</kbd> + <kbd>[1-6]</kbd> | switch to desktop [1-6]
| <kbd>Super</kbd> + <kbd>Tab</kbd> | switches to previous desktop
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>[1-6]</kbd> | move active window to desktop [1-6]

#### Audio Controls

| Keys | Action |
| :--  | :-- |
| <kbd>play-pause</kbd> | pauses/resumes audio
| <kbd>next</kbd> | plays next audio
| <kbd>previous</kbd> | plays previous audio
| <kbd>rewind</kbd> | rewinds audio by 5 seconds (via rewind.sh)
| <kbd>volume-down</kbd> | volume -5%
| <kbd>volume-up</kbd> | volume +5%
| <kbd>mute</kbd> | mutes volume

#### Others
| Keys | Action |
| :--  | :-- |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>S<\kbd> | clear xsel clipboard
| <kbd>Super</kbd> + <kbd>Z/X</kbd> | toggles direct microphone monitoring

<br>
