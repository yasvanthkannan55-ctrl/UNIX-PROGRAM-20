# Assigning and Verifying an IP Address in Linux

## Aim

To assign a static IP address to a Linux network connection
using the nmcli command and verify the assigned IP address.

## Requirements

- A Linux machine or virtual machine.
- NetworkManager installed and running.
- The nmcli command.
- Bash shell.
- A GitHub account.

## Algorithm

1. Open the Linux terminal.
2. Check the current network connection status.
3. Configure a static IPv4 address using nmcli.
4. Activate the connection using nmcli connection up.
5. Verify the IP configuration.
6. Close the terminal.

## Tasks

Complete all TODO sections in `starter.sh`.

Your program must:

1. Declare the connection profile name.
2. Declare the static IPv4 address with CIDR prefix.
3. Declare the IPv4 gateway.
4. Declare the DNS server.
5. Display the network connection status.
6. Configure the static IPv4 settings using nmcli.
7. Activate the connection.
8. Verify the network configuration.
9. Display a completion message.

## Example commands

Check connection profiles:

    nmcli connection show

Check device status:

    nmcli device status

Configure a static IPv4 address:

    nmcli connection modify "Wired connection 1" \
      ipv4.method manual \
      ipv4.addresses 192.168.1.50/24 \
      ipv4.gateway 192.168.1.1 \
      ipv4.dns "8.8.8.8 1.1.1.1"

Activate the connection:

    nmcli connection up "Wired connection 1"

Verify the configuration:

    nmcli device show
