#!/bin/bash

# Server Information Script

# Hostname
echo "Hostname: $(hostname)"

# IP Address
echo "IP Address: $(hostname -I)"

# RAM
echo "RAM: $(free -h | awk '/^Mem/ {print $2}')"

# CPU Cores
echo "CPU Cores: $(nproc)"

# Total Disk Space
echo "Total Disk Space: $(df -h --total | awk '/^total/ {print $2}')"

# OS Release
echo "OS Release: $(lsb_release -d | cut -f2-)"

