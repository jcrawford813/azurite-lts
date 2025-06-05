#!/bin/bash

set -ouex pipefail

### Install packages

#Install Plasma
dnf config-manager --set-enabled crb

dnf install epel-release -y

dnf update -y

dnf group -y install "KDE Plasma Workspaces" --allowerasing

#Install Flatpak
dnf install flatpak -y --allowerasing

#Install other tooling
dnf install distrobox \
        rsms-inter-fonts \
        libvirt-daemon-config-network \
        libvirt-daemon-kvm \
        swtpm-selinux \
        fish \
        qemu-kvm \ 
        virt-manager \
        ksshaskpass \
        vorta \
        borgbackup \
        logiops \
        solaar \
        plasma-firewall-firewalld \
        flatpak-kcm -y --allowerasing

#### Example for enabling a System Unit File

systemctl enable podman.socket
systemctl disable gdm
systemctl enable sddm
