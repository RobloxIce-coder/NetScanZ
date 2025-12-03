#########################################
#         NetScanZ v1.0 Installer       #
#   Copyright © 2025, RobloxIce-coder   #
#        All rights reversed😎.         #
#########################################

#!/usr/bin/bash

GREEN="\033[1;32m"
CYAN="\033[1;36m"
YELLOW="\033[1;33m"
RESET="\033[0m"

echo -e "${CYAN}"
echo "====================================="
echo "      Installing NetScanZ v1.0 "
echo "====================================="
echo -e "${RESET}"

echo -e "${YELLOW}[+] Updating packages...${RESET}"
apt update

echo -e "${YELLOW}[+] Installing dependencies...${RESET}"
apt install -y traceroute
apt install -y nmap
apt install -y dnsutils
apt install -y whois
apt install -y iproute2
apt install -y iputils-ping
apt install -y curl
apt install -y wget
apt install -y git
apt install -y net-tools

pip install requests

chmod +x netscan.sh
cp netscan.sh /usr/bin/netscanz

echo -e "${GREEN}[✔] Installation Complete!"
echo -e "Run tool: ${CYAN}netscan${RESET}"
