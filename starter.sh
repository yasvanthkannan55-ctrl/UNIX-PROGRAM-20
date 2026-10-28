#!/usr/bin/env bash

# Assignment: Assigning and Verifying an IP Address
# Complete the TODO sections.

set -eu

# TODO 1: Set the NetworkManager connection profile name.
CONNECTION_NAME=""

# TODO 2: Set the static IPv4 address with CIDR prefix.
IP_ADDRESS=""

# TODO 3: Set the IPv4 gateway.
GATEWAY=""

# TODO 4: Set the DNS server.
DNS_SERVER=""

echo "Checking network connection status..."

# TODO 5: Display connection status using nmcli.

echo "Configuring static IPv4 settings..."

# TODO 6: Configure the connection using nmcli.
# Required settings: ipv4.method manual, ipv4.addresses,
# ipv4.gateway, and ipv4.dns.

echo "Activating the connection..."

# TODO 7: Activate the connection using nmcli connection up.

echo "Verifying IP configuration..."

# TODO 8: Display the assigned IP configuration using nmcli.

# TODO 9: Display the active connection details.

echo "IP assignment and verification completed."
