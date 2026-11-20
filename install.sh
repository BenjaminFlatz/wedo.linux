#!/bin/bash

# --- 1. Update System Repositories ---
echo "Updating system..."
omarchy-update

# --- 2. Define Package Groups ---
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
    "auto-editor"
    "impressor"
    "hyprmon-bin"
    "masterpdfeditor"
    "orthanc"
    "stripe-cli-bin"
    "element-desktop"
    "mixxx"
    "testdisk"
    "uv"
)

# --- 3. Install Packages (Interactive PKGBUILD Review Enabled) ---
echo "Installing custom packages..."
yay -S --needed "${APPS[@]}"

# --- 4. Post-Install Cleanup (Manual Review) ---
echo "Checking for orphans..."
yay -Yc

echo "Done! Your Omarchy environment is ready."