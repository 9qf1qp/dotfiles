#! /bin/bash

echo "Copying..."

if cp -rT $HOME/dotfiles $HOME/.config; then
  echo "Copied successfuly!"
  cd $HOME/.config && rm -rf $HOME/.config/.git install.sh README.md userChrome.css
else
  echo "Error! Aborting..."
  exit
fi

echo "Trying to change kernel..."

if chsh -s /bin/fish; then
  echo "Changed successfuly!"
else
  echo "Couldn't change the kernel"
fi
