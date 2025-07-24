#!/usr/bin/env bash
set -e

BIN_DIR="$(dirname "$0")/binaries"
ARCH="$(uname -m)"

if [[ "$ARCH" == "x86_64" ]]; then
    BIN="$BIN_DIR/patched-vip_x86_64-linux-musl"
elif [[ "$ARCH" == "aarch64" ]]; then
    BIN="$BIN_DIR/patched-vip_aarch64-linux-musl"
else
    echo "Unknown architecture: $ARCH. Cannot select binary."
    exit 1
fi

chmod +x "$BIN"
echo "Launching $BIN ..."
"$BIN" 