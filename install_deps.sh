#!/usr/bin/env bash

set -e

# List of required packages for different distributions
DEBIAN_PACKAGES=(curl build-essential pkg-config libssl-dev)
FEDORA_PACKAGES=(curl gcc make pkgconf-pkg-config openssl-devel)
ARCH_PACKAGES=(curl base-devel pkgconf openssl)

# Check if command exists
have_cmd() { command -v "$1" >/dev/null 2>&1; }

# Check and install packages for Debian/Ubuntu
install_debian() {
    echo "Detected Debian/Ubuntu"
    apt update
    for pkg in "${DEBIAN_PACKAGES[@]}"; do
        if ! dpkg -s "$pkg" >/dev/null 2>&1; then
            echo "Installing $pkg..."
            apt install -y "$pkg"
        else
            echo "$pkg is already installed"
        fi
    done
}

# Check and install packages for Fedora
install_fedora() {
    echo "Detected Fedora"
    dnf makecache
    for pkg in "${FEDORA_PACKAGES[@]}"; do
        if ! rpm -q "$pkg" >/dev/null 2>&1; then
            echo "Installing $pkg..."
            dnf install -y "$pkg"
        else
            echo "$pkg is already installed"
        fi
    done
}

# Check and install packages for Arch
install_arch() {
    echo "Detected Arch Linux"
    for pkg in "${ARCH_PACKAGES[@]}"; do
        if ! pacman -Qi "$pkg" >/dev/null 2>&1; then
            echo "Installing $pkg..."
            pacman -S --noconfirm "$pkg"
        else
            echo "$pkg is already installed"
        fi
    done
}

# Check and install packages for CentOS/RHEL
install_centos() {
    echo "Detected CentOS/RHEL"
    yum makecache
    for pkg in gcc make pkgconfig openssl-devel curl; do
        if ! rpm -q "$pkg" >/dev/null 2>&1; then
            echo "Installing $pkg..."
            yum install -y "$pkg"
        else
            echo "$pkg is already installed"
        fi
    done
}

# Detect distribution
if [ -f /etc/os-release ]; then
    . /etc/os-release
    case "$ID" in
        ubuntu|debian)
            install_debian
            ;;
        fedora)
            install_fedora
            ;;
        arch|manjaro|endeavouros|arcolinux)
            install_arch
            ;;
        centos|rhel)
            install_centos
            ;;
        *)
            echo "Unknown distribution: $ID"
            echo "Please install manually: curl, gcc, make, pkg-config, openssl-dev"
            exit 1
            ;;
    esac
else
    echo "Could not detect Linux distribution"
    exit 1
fi

# Check rustup/cargo
if ! have_cmd cargo; then
    echo "Installing Rust (rustup)..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    . "$HOME/.cargo/env"
else
    echo "Rust is already installed"
fi

echo "All required dependencies are installed!" 
