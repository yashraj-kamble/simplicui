#!/bin/bash

echo "Updating system..."
sudo pacman -Syu --noconfirm --quiet --noprogressbar &> /dev/null
echo "System update completed"
echo "Inatalling packaging..."
sudo pacman -S linux-firmware xf86-video-intel vulkan-intel mesa nvidia-dkms nvidia-utils nvidia-prime mesa vulkan-intel sddm hyprland cinnamon waybar nwg-dock-hyprland nwg-look brightnessctl ghostty rofi  nemo nemo-fileroller  hyprpaper bluez bluez-utils  blueman sof-firmware lm_sensors hyprpolkitagent  nwg-displays swaync pavucontrol vlc git  ninja meson fastfetch
echo "Packege installation completed"

echo "Installing paru..."
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd .. 
rm -rf paru

echo "paru installation completed"
paru -S wlogout waypaper zen-browser-bin localsend-bin  sddm-theme-mountain-git 
echo "AUR Packege installation completed"

echo "Coping config file..."
cp -r -f ~/simplicui/.config/* ~/.config/
cp -r -f ~/simplicui/.themes/* ~/.themes/
cp -r -f ~/simplicui/.bashrc ~/.bashrc
cp -r -f ~/simplicui/.local/share/* ~/.local/share/
mkdir -p ~/.local/bin/
cp -r -f ~/simplicui/.local/bin/* ~/.local/bin/
mkdir -p ~/Documents/
cp -r -f ~/simplicui/Documents/* ~/Documents/

sudo cp -r -f ~/simplicui/etc/* /etc/

sudo cp -r -f ~/simplicui/usr/lib/* /usr/lib/
sudo cp -r -f ~/simplicui/usr/share/* /usr/share/
echo "Copy config file completed"

sudo usermod -aG input $USER
sudo systemctl enable sddm














