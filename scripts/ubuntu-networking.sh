#!/usr/bin/env bash
set -xe

# enable DHCP on all network interfaces by default
cat >/etc/netplan/01-netcfg.yaml <<EOF
# This file describes the network interfaces available on your system
# For more information, see netplan(5).
network:
  version: 2
  renderer: networkd
  ethernets:
    any:
      match: {}
      dhcp4: yes
EOF

netplan generate
netplan apply
