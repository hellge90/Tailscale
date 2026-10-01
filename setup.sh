#!/bin/bash

# Tailscale Auto-Install Script
# This script automates the complete Tailscale setup on Linux/Raspberry Pi
# Run this after cloning the repository: bash setup.sh

set -e  # Exit on any error

echo "=========================================="
echo "  Tailscale Auto-Install Script"
echo "=========================================="
echo ""

# Step 1: Update system
echo "[1/5] Updating system packages..."
sudo apt update
sudo apt upgrade -y
echo "✓ System updated"
echo ""

# Step 2: Install Tailscale
echo "[2/5] Installing Tailscale..."
curl -fsSL https://tailscale.com/install.sh | sh
echo "✓ Tailscale installed"
echo ""

# Step 3: Start Tailscale
echo "[3/5] Starting Tailscale service..."
sudo systemctl start tailscaled
sudo systemctl enable tailscaled
echo "✓ Tailscale service started"
echo ""

# Step 4: Connect to tailnet
echo "[4/5] Connecting to your tailnet..."
echo ""
echo "Run the following command to authenticate:"
echo "  sudo tailscale up"
echo ""
echo "Then visit the URL provided to log in with Google or GitHub"
echo ""

# Step 5: Verify
echo "[5/5] Verifying installation..."
sleep 2
tailscale status
echo ""
echo "=========================================="
echo "  Installation Complete!"
echo "=========================================="
echo ""
echo "Next steps:"
echo "1. Run: sudo tailscale up"
echo "2. Follow the authentication link"
echo "3. Check status with: tailscale status"
echo ""
echo "For detailed instructions, see INSTALL.md"
echo ""
