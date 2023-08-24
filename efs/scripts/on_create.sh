#!/bin/bash

# Define the EFS file system ID and mount point
EFS_FILE_SYSTEM_ID="fs-12345678"
MOUNT_POINT="/mnt/efs"

# Install required packages (if not already installed)
sudo yum install -y amazon-efs-utils

# Create the mount point directory
sudo mkdir -p $MOUNT_POINT

# Mount the EFS filesystem
sudo mount -t efs $EFS_FILE_SYSTEM_ID:$MOUNT_POINT

# Add an entry to /etc/fstab to mount the EFS filesystem on boot
echo "$EFS_FILE_SYSTEM_ID: $MOUNT_POINT efs defaults,_netdev 0 0" | sudo tee -a /etc/fstab