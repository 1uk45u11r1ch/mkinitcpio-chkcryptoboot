#!/bin/bash

DIR="$(dirname "$(realpath "$0")")"
while [ -L "$DIR" ]; do
	DIR="$(readlink $DIR)"
done

# copy files into the appropriate directories
cp "$DIR/chkcryptoboot.conf" /etc/default/
cp "$DIR/chkcryptoboot_install" /etc/initcpio/install/chkcryptoboot
cp "$DIR/chkcryptoboot_hook" /etc/initcpio/hooks/chkcryptoboot
cp "$DIR/chkcryptoboot-profilealert.sh" /etc/profile.d/
