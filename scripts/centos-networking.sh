#!/usr/bin/env bash
set -xe

# Make SSH faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config

# We might use virtio interfaces, undeclare Ethernet
sed -i 's/^TYPE="Ethernet"/# &/' /etc/sysconfig/network-scripts/ifcfg-eth0
