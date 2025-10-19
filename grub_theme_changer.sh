#!/usr/bin/env bash

THEME_DIR="/boot/grub/themes"

themes=()
for dir in "$THEME_DIR"/*/; do
    [ -d "$dir" ] || continue
    themes+=("$dir")
done

random_theme="${themes[RANDOM % ${#themes[@]}]}"

theme_file="${random_theme}theme.txt"

if grep -q '^GRUB_THEME=' /etc/default/grub; then
    sudo sed -i "s|^GRUB_THEME=.*|GRUB_THEME=\"$theme_file\"|" /etc/default/grub
else
    echo "GRUB_THEME=\"$theme_file\"" | sudo tee -a /etc/default/grub
fi

sudo grub-mkconfig -o /boot/grub/grub.cfg
