#! /bin/bash

if cp -rT $HOME/dotfiles $HOME/.config; then
  echo "Copying..."
fi
if find $HOME/.config -mtime -1; then
  rm -rf $HOME/.config/.git $HOME/.config/README.md $HOME/.config/install.sh
  echo "Copied successful!"
fi
