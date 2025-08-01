#!/bin/bash

# Check if .zshrc exists in $HOME
if [ -f "$HOME/.zshrc" ]; then
    echo "Found existing .zshrc, backing up to .zshrc-backup"
    mv "$HOME/.zshrc" "$HOME/.zshrc-backup"
fi

# Create symbolic link to ./zsh/.zshrc
echo "Creating symbolic link to ./zsh/.zshrc"
ln -s "$(pwd)/zsh/.zshrc" "$HOME/.zshrc"

echo "Setup complete!"