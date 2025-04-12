#!/bin/bash

TIMESTAMP=$(date +%Y_%m_%d_%H:%M:%S)
BACKUP_DIR="./backup/$TIMESTAMP"

# Create backup directory structure
mkdir -p "$BACKUP_DIR"

# Backup existing Sway config
cp "./.config/" "$BACKUP_DIR/" -r

echo "📦 Backup saved in: $PWD/$SWAY_BACKUP_DEST"

