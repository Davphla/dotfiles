#!/bin/bash

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="./backup/$TIMESTAMP"

# Home config path
CONFIG_DIR="$HOME/.config"

###########
### SWAY
###########

# Paths
SWAY_CONFIG="$CONFIG_DIR/sway/config"
SWAY_BACKUP_DEST="$BACKUP_DIR/sway"

# Create backup directory structure
mkdir -p "$SWAY_BACKUP_DEST"

# Backup existing Sway config
cp "$SWAY_CONFIG" "$SWAY_BACKUP_DEST/config"

echo "📦 Backup saved in: $PWD/$SWAY_BACKUP_DEST"

