#!/bin/bash

# --- 1. Update System Repositories ---
echo "Updating system..."
#yay -Syu --noconfirm
omarchy-update

# --- 2. Define Package Groups ---
# Official Repos & AUR Packages mixed
APPS=(
    "krita"
    "visual-studio-code-bin"
    "veracrypt"
    "darktable"
    "google-cloud-cli"
    "blender-bin"
    "discord"
    "nano"
    "keepassxc"
)

# --- 3. Install Packages ---
echo "Installing custom packages..."
yay -S --needed --noconfirm "${APPS[@]}"

# --- 4. Post-Install Cleanup ---
echo "Cleaning up orphans..."
yay -Yc --noconfirm

echo "Done! Your Omarchy environment is ready."
