#!/bin/bash

#  nvim
sudo pacman -S --noconfirm neovim
sudo pacman -S --noconfirm xclip

# for neofetch
sudo pacman --noconfirm -S neofetch

# curl
sudo pacman --noconfirm -S curl

# git and yay
sudo pacman --noconfirm -S git
cd ~/
mkdir packages
cd packages
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si PKGBUILD
cd ~

# font
yay --noconfirm -S nerd-fonts-hack
yay --noconfirm -S otf-font-awesome-5-free
yay --noconfirm -S ttf-scientifica
# amd driver
# sudo pacman --noconfirm -S xf86-video-amdgpu

# for nvidia
sudo pacman --noconfirm -S nvidia nvidia-utils

# for intel
# sudo pacman --noconfirm -S xf86-video-intel

# for vm 
# sudo pacman --noconfirm -S xf86-video-qxl
# bspwm 
# sudo pacman --noconfirm -S xorg xorg-xinit bspwm picom polybar sxhkd
#for multiple monitors
sudo pacman --noconfirm -S arandr

# for dmenu
# sudo pacman --noconfirm -S dmenu 

# for rofi
#sudo pacman --noconfirm -S rofi
#
# for bspwm configs
#mkdir -p ~/.config/bspwm
#mkdir ~/.config/sxhkd
#cp /usr/share/doc/bspwm/examples/bspwmrc .config/bspwm/
#cp /usr/share/doc/bspwm/examples/sxhkdrc .config/sxhkd/
#cp /etc/X11/xinit/xinitrc ~/.xinitrc

# terminal
sudo pacman --noconfirm -S alacritty

# wallpaper
sudo pacman --noconfirm -S nitrogen

# file managers
#yay --noconfirm -S lf
#sudo pacman --noconfirm -S nemo

# for media
sudo pacman --noconfirm -S sxiv
sudo pacman --noconfirm -S vlc
sudo pacman --noconfirm -S pulseaudio
#sudo pacman --noconfirm -S pavucontrol
#sudo pacman --noconfirm -S mate-utils # ss
sudo pacman --noconfirm -S peek
sudo pacman --noconfirm -S mpv


# for pdf and epub
sudo pacman --noconfirm -S zathura zathura-pdf-mupdf


# browsers
sudo pacman --noconfirm -S firefox

# gui code editor
sudo pacman --noconfirm -S code

# for archiving tools
sudo pacman --noconfirm -S unzip unrar ark tar cabextract p7zip

# for discord
sudo pacman --noconfirm -S discord
yay --noconfirm -S cordless-git

# for office programs
sudo pacman --noconfirm -S libreoffice

# for htop
sudo pacman --noconfirm -S htop

# for programming languages
sudo pacman --noconfirm -S python python-pip go rust elixir nim

# for calc
sudo pacman --noconfirm -S kclac

# for zsh
sudo pacman --noconfirm -S zsh 
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh
