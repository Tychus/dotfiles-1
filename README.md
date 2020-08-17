# Arch Dotfiles

This are my personal dotfiles for Arch Linux

## Packages:

Install the following packages:

```bash 
alacritty 

bspwm
sxhkd
polybar

mpd
mpc
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
```

Setup Music:
```bash
mpc update
ncmpcpp -c ~/.config/ncmpcpp/config
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

## Screenshot:
![Screenshot](/Pictures/screenshot.png)
