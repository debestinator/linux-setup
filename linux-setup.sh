#!/bin/bash

sudo pacman -Syu

read -p "Install ChaoticAUR? " char_input

if [[ "$char_input" =~ y ]]; then
    sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com && sudo pacman-key --lsign-key 3056513887B78AEB
    sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' \
    'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
    sudo echo -e "" >> /etc/pacman.conf
    sudo echo -e "#Chaotic-AUR" >> /etc/pacman.conf
    sudo echo -e "" >> /etc/pacman.conf
    sudo echo -e "[chaotic-aur]" >> /etc/pacman.conf
    sudo echo -e "Include = /etc/pacman.d/chaotic-mirrorlist" >> /etc/pacman.conf
else
    echo "Invalid Choice. Please Run Scipt Again."
fi

sudo pacman -Syu

sudo echo -e "" >> /etc/environment
sudo echo -e 'FREETYPE_PROPERTIES="cff:no-stem-darkening=0 autofitter:no-stem-darkening=0"' >> /etc/environment

read -p "Install yay? " char_input

if [[ "$char_input" =~ y ]]; then
    sudo pacman -S yay
else
    echo "Invalid Choice. Please Run Scipt Again."
fi

read -p "Type k for KDE and g for Gnome? " char_input

if [[ "$char_input" =~ g ]]; then
    yay -S papirus-icon-theme celluloid rhythmbox shotwell onlyoffice-bin extension-manager ptyxis gdm-settings discord zen-browser-bin resources qbittorrent refine vscodium adw-gtk-theme wireguard-tools
elif [[ "$char_input" =~ k ]]; then
    yay -S papirus-icon-theme onlyoffice-bin discord zen-browser-bin qbittorrent vscodium adw-gtk-theme wireguard-tools
else
    echo "Invalid Choice. Please Run Script Again."
fi

read -p "Install Gaming Packages? " char_input

if [[ "$char_input" =~ y ]]; then
    yay -S lutris-git lib32-gnutls zenity libayatana-appindicator python-evdev python-pefile python-pypresence lib32-vkd3d vulkan-tools wine-cachyos lib32-alsa-lib lib32-alsa-plugins lib32-gst-plugins-base lib32-gst-plugins-base-libs lib32-gst-plugins-good lib32-gtk3 lib32-libpulse lib32-libva lib32-libxcomposite lib32-libxinerama lib32-opencl-icd-loader lib32-sdl2 lib32-v4l-utils
else
    echo "Invalid Choice. Please Run Scipt Again."
fi

echo "Sciprt Completed"
