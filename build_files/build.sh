#!/bin/bash

set -ouex pipefail

### Install packages

#Install Plasma
dnf config-manager --set-enabled crb

dnf install epel-release -y

dnf update -y

dnf group -y install "KDE Plasma Workspaces" --allowerasing --nobest

#Install Flatpak
#dnf install flatpak -y --allowerasing

#Install other tooling
dnf install distrobox libvirt-daemon-config-network libvirt-daemon-kvm swtpm-selinux qemu-kvm virt-manager -y --allowerasing
dnf install fish borgbackup plasma-firewall-firewalld -y --allowerasing

cp -r etc /etc
cp -r usr /usr

systemctl enable podman.socket
systemctl disable gdm
systemctl enable sddm
