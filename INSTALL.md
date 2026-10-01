# Tailscale Installation Guide

A simple, step-by-step guide to get Tailscale running on Linux and Raspberry Pi.

## Prerequisites

- A device running Linux or Raspberry Pi OS
- Internet connection
- Terminal access
- A Google or GitHub account

## Installation Steps

### Step 1: Open the Terminal

- **Raspberry Pi Desktop:** Click the black terminal icon in the top menu bar
- **Raspberry Pi Lite:** You're already in the terminal

### Step 2: Update Your System

Run these commands to ensure your system is up to date:

```bash
sudo apt update
sudo apt upgrade -y
```

This takes a few minutes. You'll be prompted for your password (the `sudo` command runs everything as admin).

### Step 3: Install Tailscale

Run the official Tailscale install script:

```bash
curl -fsSL https://tailscale.com/install.sh | sh
```

This single command:
- Downloads Tailscale's installation script
- Adds their repository to your system
- Verifies the signing key
- Installs the Tailscale package

No manual configuration needed — it handles everything automatically.

### Step 4: Connect to Your Tailnet

Start Tailscale with:

```bash
sudo tailscale up
```

The terminal will print a URL. Copy it and paste it into any web browser on any device, then log in with Google or GitHub. Your device will instantly join your tailnet.

### Step 5: Verify Installation

Check that everything is working:

```bash
tailscale status
```

You should see your device listed with a 100.x.x.x address (called a Tailscale IP).

## Important Tip for Servers

If this device is a server you'll access remotely:
1. Go to the **Machines** page in the [Tailscale Admin Console](https://login.tailscale.com)
2. Find your device and disable **Key Expiry**

Otherwise, you'll need to re-authenticate every 60 days.

## Getting Tailscale on Mobile

Download Tailscale on your phone or tablet:
- **iPhone/iPad:** [App Store](https://apps.apple.com/app/tailscale/id1470333651)
- **Android:** [Google Play](https://play.google.com/store/apps/details?id=com.tailscale.ipn)

Log in with the same account, and your phone instantly becomes part of your tailnet.

## Troubleshooting

**Installation fails?**
- Ensure you're running the latest OS: `sudo apt update && sudo apt upgrade -y`
- Check your internet connection
- Try running the install script again

**Can't see other devices?**
- Make sure all devices are logged in with the same account
- Check the admin console at https://login.tailscale.com

**Connection issues?**
- Restart Tailscale: `sudo systemctl restart tailscaled`
- Check status: `tailscale status`

## Next Steps

- [Enable SSH access](https://tailscale.com/kb/1193/ssh-server-linux/) between devices
- [Set up an exit node](https://tailscale.com/kb/1147/exit-nodes/) for private browsing
- [Configure DNS](https://tailscale.com/kb/1054/dns/) for custom addresses

---

That's it! You now have Tailscale running and ready to use.
