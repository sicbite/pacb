#!/bin/bash

# Installer script for pacb

set -e

if [ "$USER" != "root" ]; then
    echo "This installer must be run as root (using doas or sudo)."
    exit 1
fi

echo "Installing pacb to /usr/bin..."

# Copy to temporary location then install to keep repo clean
cp bin/pacb /tmp/pacb
chmod 755 /tmp/pacb
mv /tmp/pacb /usr/bin/pacb

echo "pacb installed successfully."
