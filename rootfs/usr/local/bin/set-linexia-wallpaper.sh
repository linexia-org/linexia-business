#!/bin/bash
# Skrip untuk mengatur wallpaper default Linexia pada COSMIC

CONFIG_DIR="$HOME/.config/cosmic/com.system76.CosmicBackground/v1"
TARGET_FILE="$CONFIG_DIR/all"
FLAG_FILE="$HOME/.config/linexia-wallpaper-set"

# Jika sudah dijalankan, keluar
if [ -f "$FLAG_FILE" ]; then
    exit 0
fi

# Pastikan direktori tujuan ada
mkdir -p "$CONFIG_DIR"

# Salin file template wallpaper
if [ -f /usr/share/linexia/cosmic-background-all ]; then
    cp /usr/share/linexia/cosmic-background-all "$TARGET_FILE"
    chmod 644 "$TARGET_FILE"
    chown -R $(id -u):$(id -g) "$HOME/.config/cosmic"
fi

# Tandai sudah dijalankan
touch "$FLAG_FILE"
