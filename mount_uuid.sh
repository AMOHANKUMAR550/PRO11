#!/bin/bash

# ==========================================
# Mount Filesystem Using UUID
# Student Name:
# Roll Number:
# ==========================================


# Display filesystem UUID
echo "=== Available Filesystem UUIDs ==="
lsblk -f
# Alternative command: sudo blkid


# Create mount directory
MOUNT_DIR="/mnt/my_data"
echo "Creating mount directory at $MOUNT_DIR..."
sudo mkdir -p "$MOUNT_DIR"


# Mount filesystem using UUID
# Replace YOUR_UUID with actual UUID
YOUR_UUID="1234abcd-56ef-7890-ghij-1234567890kl"
echo "Mounting filesystem UUID=$YOUR_UUID to $MOUNT_DIR..."
sudo mount -U "$YOUR_UUID" "$MOUNT_DIR"


# Display mounted filesystem
echo "=== Currently Mounted Filesystems ==="
df -h "$MOUNT_DIR"
