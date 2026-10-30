#!/bin/bash

# Verifica e instala a biblioteca SFML nativamente
if ! pacman -Qs sfml > /dev/null; then
    echo "Instalando dependências (SFML)..."
    sudo pacman -S --noconfirm sfml
fi

# Compila os arquivos do projeto
echo "Compilando o jogo..."
make clean
make pacman

# Inicia o jogo
echo "Iniciando Pac-Man..."
./pacman