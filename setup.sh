#!/bin/bash
# Installs dotfies

ls $HOME/dotfiles | grep -v '\.sh' | while read dfile; do
    if [ -a "$HOME/.$dfile" ]; then
        echo "$HOME/.$dfile exists"
    else
        echo "Creating symlink for $dfile..."
        ln -s "$HOME/dotfiles/$dfile" "$HOME/.$dfile"
    fi
done
