
Debian
====================
This directory contains files used to package bluenoded/bluenode-qt
for Debian-based Linux systems. If you compile bluenoded/bluenode-qt yourself, there are some useful files here.

## bluenode: URI support ##


bluenode-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bluenode-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bluenode-qt binary to `/usr/bin`
and the `../../share/pixmaps/bluenode128.png` to `/usr/share/pixmaps`

bluenode-qt.protocol (KDE)

