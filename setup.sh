#!/bin/bash

echo "Updating system..."
sudo pacman -Syu --noconfirm --quiet --noprogressbar &> /dev/null
echo "System update completed"
echo "Inatalling packaging..."
sudo pacman -S sddm hyprland waybar nwg-dock-hyprland nwg-look brightnessctl ghostty rofi  nemo nemo-fileroller  hyprpaper bluez bluez-utils  blueman sof-firmware lm_sensors hyprpolkitagent  nwg-displays swaync pavucontrol nvidia-prime vlc git  ninja meson
echo "Packege installation completed"

echo "Installing paru..."
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd .. 
rm -rf paru
echo "paru installation completed"
paru -S wlogout waypaper ttf-font-awesome  zen-browser-bin zen-browser-private-window-launcher localsend-bin
echo "AUR Packege installation completed"

echo "Coping config file..."
cp -r -f ~/simplicui/.config/* ~/.config/
cp -r -f ~/simplicui/.local/share/fonts/* ~/.local/share/fonts/
cp -r -f ~/simplicui/Documents/* ~/Documents/
sudo cp -r -f ~/simplicui/etc/* /etc/
sudo cp -r -f ~/simplicui/usr/share/rofi/themes/* /usr/share/rofi/themes
echo "Copy config file completed"
















