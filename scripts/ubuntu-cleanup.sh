#!/usr/bin/env bash
set -xe

# remove unnecessary packages
sudo apt remove -y --purge snapd git perl-modules lxd lxd-client xfsprogs
apt clean
rm -rf /var/lib/apt/lists/*

# remove locales
find /usr/share/locale -mindepth 1 -maxdepth 1 ! -name 'en' | xargs rm -r

# remove machine IDs
rm -f /etc/machine-id && rm -f /var/lib/dbus/machine-id && touch /etc/machine-id

# mark all free space
fstrim -av
