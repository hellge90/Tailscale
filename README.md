# Tailscale

Tailscale is a private network that connects your devices — laptops, phones, servers — over the internet as if they were all in the same room. It builds a mesh VPN using WireGuard, so traffic goes directly between devices without routing through a central server.

You would use it to reach your home server from anywhere, manage machines across different clouds, or let a friend access your NAS without opening ports on your router.

It is user-friendly because setup is basically just installing an app and logging in with Google or GitHub — no firewall rules, no port forwarding, no config files. It handles the networking magic automatically.

## Features

- Secure, encrypted connectivity between devices
- WireGuard-based mesh networking
- Remote access to home servers and internal services
- Simplified deployment without port forwarding
- Easy management through a web dashboard

## Use cases

- Access your home lab or server from anywhere
- Interconnect machines across cloud providers and offices
- Share secure access to devices without exposing them to the public internet

## Supported Devices

Tailscale runs on basically everything — Windows, macOS, Linux, Android, iOS, and even routers like OpenWrt or a Raspberry Pi. You can also run it on servers, VMs, and containers, so it's not just for personal devices.

## Hosting & Control Plane

You don't really "host" Tailscale yourself — the coordination server is theirs, and that's what makes it free for personal use. What you can self-host is the **control plane** using Headscale, an open-source alternative. Running that in Docker is a good idea because it's a single lightweight container, easy to update, and you keep your identity and device data on your own hardware instead of trusting a third party.

## Exit Nodes

An **exit node** is a device on your tailnet that routes all your internet traffic through it. So if you set up an exit node at home, your laptop abroad can browse the web as if it were sitting in your living room — useful for accessing geo-restricted content or keeping a consistent IP.

Switching between exit nodes is dead simple. In the Tailscale app you just pick which node you want to use, or you can do it from the command line with one command. No reconnecting, no reconfiguring — it flips instantly.

## Installation

Install Tailscale on Linux or Raspberry Pi by following the complete [installation guide](INSTALL.md).

## Mobile Apps

- [Download Tailscale from the App Store](https://apps.apple.com/app/tailscale/id1470333651)
- [Download Tailscale from Google Play](https://play.google.com/store/apps/details?id=com.tailscale.ipn)
