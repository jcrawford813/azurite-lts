#!/bin/bash

set -ouex pipefail

### Install packages

#Install Plasma
dnf config-manager --set-enabled crb
dnf install epel-release epel-next-release

dnf group -y install "KDE Plasma Workspaces"

#Install Flatpak
dnf install flatpak -y

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
        flatpak-kcm

#### Example for enabling a System Unit File

systemctl enable podman.socket
systemctl disable gdm
systemctl enable sddm
