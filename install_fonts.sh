#!/bin/bash

# Define source and target font directories
SRC_FONT_DIR="/workspace/fonts"
DEST_FONT_DIR="/usr/local/share/fonts"

# Ensure the target directory exists
mkdir -p "$DEST_FONT_DIR"

# Copy fonts from the workspace
cp -r "$SRC_FONT_DIR/chinese" "$DEST_FONT_DIR/"
cp -r "$SRC_FONT_DIR/english" "$DEST_FONT_DIR/"

# Set correct permissions
chmod -R 644 "$DEST_FONT_DIR"
chown -R root:root "$DEST_FONT_DIR"

# Rebuild font cache
fc-cache -rv

echo "Fonts installed successfully."
