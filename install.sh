#! /bin/bash

echo "Copying..."

if cp -rT $HOME/dotfiles $HOME/.config; then
  echo "Copied successfuly!"
  rm -rf $HOME/.config/.git install.sh README.md
else
  echo "Error! Aborting..."
  exit
fi

echo "Installing needed packages..."

if sudo pacman -Sy rofi breeze-gtk nemo neofetch fish kitty mako neovim waybar i3 polybar nwg-look fisher; then
  cd $HOME
  echo "Installed successfuly!"
fi

echo "Now let's install rofi scripts"

if git clone -q https://github.com/adi1090x/rofi.git $HOME/rofi; then
  cd $HOME/rofi/ 
  chmod +x setup.sh
  ./setup.sh
fi

echo "Trying to change kernel..."
if chsh -s /bin/fish; then
  echo "Changed successfuly!"
else
  echo "Couldn't change the kernel"
fi

echo "Enabling animations..."

if git clone https://github.com/pijulius/picom.git; then
 echo "Enabled successfuly!"
else
  echo "Couldn't enable animations"
fi 
