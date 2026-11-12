#!/bin/bash

# Skrip untuk membuat ikon Install Linexia di Desktop
# dan menghapus ikon Debian lama

# Deteksi folder Desktop yang sudah dilokalisasi
if command -v xdg-user-dir &>/dev/null; then
    DESKTOP=$(xdg-user-dir DESKTOP)
else
    DESKTOP="$HOME/Desktop"
fi

# Fallback untuk bahasa Indonesia
if [ -z "$DESKTOP" ] || [ ! -d "$DESKTOP" ]; then
    if [ -d "$HOME/Destop" ]; then
        DESKTOP="$HOME/Destop"
    else
        DESKTOP="$HOME/Desktop"
    fi
fi

mkdir -p "$DESKTOP"

# Hapus ikon Debian lama dan penguins-eggs
rm -f "$DESKTOP"/calamares-install-debian.desktop 2>/dev/null
rm -f "$DESKTOP"/install-debian.desktop 2>/dev/null
rm -f "$DESKTOP"/penguins-eggs.desktop 2>/dev/null
sudo rm -f /usr/share/applications/calamares-install-debian.desktop 2>/dev/null
sudo rm -f /usr/share/applications/install-debian.desktop 2>/dev/null
sudo rm -f /usr/share/applications/penguins-eggs.desktop 2>/dev/null

# Buat ikon Linexia baru (timpa jika sudah ada)
cat > "$DESKTOP/calamares-install-linexia.desktop" <<EOF
[Desktop Entry]
Name=Install Linexia
Comment=Install Linexia Linux on your computer
Exec=pkexec env DISPLAY=\$DISPLAY XAUTHORITY=\$XAUTHORITY calamares
Icon=/etc/calamares/branding/linexia/icon.png
Terminal=false
Type=Application
Categories=System;
StartupNotify=true
EOF

chmod +x "$DESKTOP/calamares-install-linexia.desktop"

# Catatan: gio set metadata::trusted dilewati karena tidak didukung di lingkungan ini
# Ikon tetap berfungsi tanpa langkah ini di sebagian besar desktop (termasuk COSMIC)

exit 0
