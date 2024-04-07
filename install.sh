#! /bin/bash

if cp -rT $HOME/dotfiles $HOME/.config; then
  echo "Copying..."
else
  echo "Error! Aborting..."
  exit
fi

if find $HOME/.config -mtime -1; then
  rm -rf $HOME/.config/.git $HOME/.config/README.md $HOME/.config/install.sh
  echo "Copied successful!"
fi

if git clone https://github.com/adi1090x/rofi.git; then
  echo "Now let's install rofi scripts"
fi
cd $HOME/rofi/ 
chmod +x setup.sh
./setup.sh

echo "Installing needed programs..."

if sudo pacman -Sy nemo neofetch fish kitty mako neovim waybar i3 polybar waybar; then
  cd $HOME
  git clone https://github.com/pijulius/picom.git
  echo "Installed successful!"
fi
