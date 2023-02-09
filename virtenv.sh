#!/usr/bin/env bash

# Script en bash para ayudarte a usar entornos virtuales en ArchLinux
# Usa el siguiente script para crear un alias para ayudarte a crear entornos virtuales en python
#
# El alias es: python -m venv >>> venv
#

if [ "$SHELL" = "/bin/bash" ]; then
    PROFILE_FILE=~/.bashrc
elif [ "$SHELL" = "/bin/zsh" ]; then
    PROFILE_FILE=~/.zshrc
elif [ "$SHELL" = "/bin/fish" ]; then
    PROFILE_FILE=~/.config/fish/config.fish
else
    echo -e "Tu terminal: $PROFILE_FILE no ha sido reconocida :("
    exit 1
fi

if ! grep -q "alias venv=" $PROFILE_FILE; then
    echo "alias venv='python3 -m venv'" >> $PROFILE_FILE
    source ~/.zshrc

    echo -e "\nCreaste un alias, puedes revisarlo en: ~/.termsh"
    

else 
    echo -e "\nEl alias ya ha sido creado"
    exit 1 
fi
