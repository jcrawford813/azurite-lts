#!/bin/bash

set -ouex pipefail

### Install packages

#Install Plasma
dnf config-manager --set-enabled crb

dnf install epel-release -y

dnf update -y

dnf group -y install "KDE Plasma Workspaces" --allowerasing --nobest

#Enable COPR for cryfs
dnf copr enable fcsm/cryfs -y

#Install other tooling
dnf install distrobox libvirt-daemon-config-network libvirt-daemon-kvm swtpm-selinux qemu-kvm virt-manager cryfs -y --allowerasing
dnf install fish borgbackup plasma-firewall-firewalld -y --allowerasing

systemctl enable podman.socket
systemctl enable sddm