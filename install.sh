#! /bin/bash

if cp -rT $HOME/dotfiles $HOME/.config; then
  echo "Copying..."
else
  echo "Error! Aborting..."
  exit
fi

if find $HOME/.config -mtime -1; then
  rm -rf $HOME/.config/.git $HOME/.config/README.md $HOME/.config/install.sh
  echo "Copied successfuly!"
fi

echo "Now let's install rofi scripts"

if git clone -q https://github.com/adi1090x/rofi.git $HOME/rofi; then
  cd $HOME/rofi/ 
  chmod +x setup.sh
  ./setup.sh
fi

echo "Installing needed packages..."

if sudo pacman -Sy breeze-gtk nemo neofetch fish kitty mako neovim waybar i3 polybar waybar hyprland nwg-look tbsm; then
  cd $HOME
  git clone https://github.com/pijulius/picom.git
  echo "Installed successfuly!"
fi
echo "Trying to change kernel..."
if chsh -s /bin/fish; then
  echo "Changed successfuly!"
else
  echo "Couldn't change the kernel"
fi 
