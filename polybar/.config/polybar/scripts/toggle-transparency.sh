#!/bin/bash

CONFIG="$HOME/.config/picom/picom.conf"
BACKUP="$HOME/.config/picom/picom.conf.normal"

if [ ! -f "$BACKUP" ]; then
    cp "$CONFIG" "$BACKUP"
fi

if grep -q '^# TRANSPARENCY_OFF' "$CONFIG"; then
    cp "$BACKUP" "$CONFIG"
else
    cp "$BACKUP" "$CONFIG"

    sed -i '/^opacity-rule =/,/^];/s/^/# TRANSPARENCY_OFF /' "$CONFIG"
fi

pkill picom
picom --config "$CONFIG" -b
