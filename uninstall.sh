#!/bin/bash

# Uninstaller for NetScanZ v1.0

TOOL_DIR="$HOME/netscanz"
CMD="/usr/bin/netscanz"

echo "[*] Uninstalling NetScanZ v1.0..."

# Remove tool directory
if [ -d "$TOOL_DIR" ]; then
    rm -rf "$TOOL_DIR"
    echo "[✔] Removed directory: $TOOL_DIR"
else
    echo "[!] Tool directory not found. Skipping."
fi

# Remove command
if [ -f "$CMD" ]; then
    rm -f "$CMD"
    echo "[✔] Removed command: netscanz"
else
    echo "[!] Command not found. Skipping."
fi

echo "[✔] NetScanZ v1.0 has been successfully uninstalled!"
