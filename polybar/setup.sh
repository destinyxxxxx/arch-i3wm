#!/usr/bin/env bash

# Install script for polybar

# Dirs
DIR=`pwd`
FDIR="$HOME/.local/share/fonts"
PDIR="$HOME/.config/polybar"

# Install Fonts
install_fonts() {
	echo -e "\n[*] Installing fonts..."
	[[ ! -d "$FDIR" ]] && mkdir -p "$FDIR"
	cp -rf $DIR/fonts/* "$FDIR"
}

# Install Themes
install_themes() {
	if [[ -d "$PDIR" ]]; then
		echo -e "[*] Creating a backup of your polybar configs..."
		mv "$PDIR" "${PDIR}.old"
		mkdir -p "$PDIR"
		mkdir -p "$PDIR/scripts"
		cp -rf $DIR/config.ini "$PDIR"
	       	cp -rf $DIR/launch.sh "$PDIR"
	       	cp -rf $DIR/scripts/* "$PDIR/scripts"
	else
		mkdir -p "$PDIR"
		mkdir -p "$PDIR/scripts"
		cp -rf $DIR/config.ini "$PDIR"
	       	cp -rf $DIR/launch.sh "$PDIR"
	       	cp -rf $DIR/scripts/* "$PDIR/scripts"
	fi
	if [[ -f "$PDIR/launch.sh" ]]; then
		echo -e "[*] Successfully Installed.\n"
		exit 0
	else
		echo -e "[!] Failed to install.\n"
		exit 1
	fi
}

# Main
main() {
	install_fonts
	install_themes
}

main
