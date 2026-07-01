#!/bin/bash

# My SSH Key
SSH_KEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINdLQVXbDTss6W1a06XwTWaQCH71olpogG46mwo1gNgS macbook@moshai.dev"

# Ensure the .ssh directory exists
mkdir -p ~/.ssh

# Append the SSH public key to the authorized_keys file
echo "$SSH_KEY" >> ~/.ssh/authorized_keys

# Set proper permissions for the authorized_keys file and .ssh directory
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

echo "SSH Access Setup Done."
