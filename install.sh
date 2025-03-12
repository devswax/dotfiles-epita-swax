#!/bin/sh

dot_list="bashrc starship.toml config kitty ssh emacs gitconfig gitignore jnewsrc mozilla msmtprc muttrc signature slrnrc thunderbird vim vimrc Xdefaults"

for f in $dot_list; do
  rm -rf "$HOME/.$f"
  ln -s "$AFS_DIR/.confs/$f" "$HOME/.$f"
done


while IFS= read -r line; do
    echo "installing $line"
    nix profile install "nixpkgs#$line"
done < packages.txt
nix profile install --impure --expr 'with builtins.getFlake("flake:nixpkgs"); legacyPackages.x86_64-linux.nerdfonts.override { fonts = ["JetBrainsMono"]; }'

CURSOR_PATH=~/.local/share/icons
if ! test -d $CURSOR_PATH/rose; then
    echo "Installing custom cursor..."
    mkdir -p $CURSOR_PATH
    git clone git@github.com:ndom91/rose-pine-hyprcursor.git $CURSOR_PATH/rose
fi
