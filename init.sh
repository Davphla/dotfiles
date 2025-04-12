# Install all dependencies for new os
#!/bin/bash

echo "🔧 Installing Sway and related tools..."

# Install sway and friends
sudo pacman -Syu --noconfirm \
  sway swaylock swayidle \
  alacritty wofi mako \
  grim slurp brightnessctl \
  network-manager-applet \
  playerctl xorg-xwayland \
  noto-fonts noto-fonts-emoji \
  ttf-fira-code ttf-nerd-fonts-symbols \
  pulseaudio pavucontrol \
  swaybg wl-clipboard

# Optional: swaylock-effects (prettier lock screen)
yay -S swaylock-effects --noconfirm

# Enable network applet
nmcli networking on

# Set wallpaper using swaybg if desired
mkdir -p ~/Pictures/wallpapers
# cp your wallpaper to that folder

echo "🎉 Setup complete! You can now launch Sway with 'sway' or set it as your default Wayland session."
