# Arch Dotfiles

This are my personal dotfiles for Arch Linux base on the Gruvbox color scheme.

## Packages:

Install the following packages:

```bash 
# Terminal:
alacritty 

# Programs:
bspwm
sxhkd
dunst
feh
htop
neovim
picom
redshift
udiskie
udiskie2
zsh
zathura
zathura-pdf-poppler
perl-file-mimeinfo

# from aur:
yay
polybar
ytop

# Music:
mpd
mpc
mplayer
ncmpcpp
```

## Setup:

```bash
## Clone the repository
git clone --bare https://github.com/candreslobor/dotfiles.git $HOME/.dotfiles

## Define the alias in the current shell scope
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

## Checkout the actual content from the git repository to your $HOME
dotfiles checkout

## submodule update:
dotfile submodule update --init --recursive
```

```bash
## Setup Music:
mpc update
```

## Usage:

```bash
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Add vimrc"
dotfiles add .bashrc
dotfiles commit -m "Add bashrc"
dotfiles push
```

## Screenshot Two-Bars:
![Desktop-Preview](https://raw.githubusercontent.com/candreslobor/wallpapers/master/preview2.png)

## Wallpaper:
![Wallpaper](https://raw.githubusercontent.com/candreslobor/wallpapers/master/wallhaven-eydedl.jpg)


