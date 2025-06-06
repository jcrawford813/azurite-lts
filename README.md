# Azurite LTS Image

This is an azurite image based on CentOS to give a stable workstation-like base for a desktop image. To enhance functionality, I have layered on:

- EPEL
- Plasma 6
- Flatpak
- libVirt and virt-manager

This will likely not support bleeding-edge hardware, but will supply the security and stability while still being reasonably cutting edge in userspace. There may be some missing functionality, due to packages in EPEL 10 that are not available, yet. As able, the packages will be added via COPR.

## How to use

The easiest way to utilize this image is to pull the iso file from the Build ISO action, and install directly. This image has not been tested through a rebase from a Silverblue or Kinoite install base.

## Updating

Keeping the image up to date is the same as with other Atomic distributions. You may use rpm-ostree:

```
rpm-ostree update
```

Alternatively, you may also use the inbuilt alias sysupdate, which will update the image, all flatpaks, and distrobox images.

```
sysupdate
```