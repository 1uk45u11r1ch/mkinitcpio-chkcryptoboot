#!/usr/bin/env bash

# chkcryptoboot-profilealert.sh: copy to /etc/profile.d/chkcryptoboot-profilealert.sh and change its permissions to executable
#
# author: Giancarlo Razzolini <grazzolini@gmail.com>
# heavily based on chkboot: https://github.com/inhies/chkboot

source /etc/default/chkcryptoboot.conf

if [ -n "$CMDLINE_NAME" -a -n "$CMDLINE_VALUE" ]; then
    for param in `cat /proc/cmdline` ; do
	if [ $param = $CMDLINE_NAME=$CMDLINE_VALUE ]; then
	    return 0
	fi
    done
fi

printf "\n\n"
printf "\033[0;31mCHKCRYPTOBOOT ALERT\033[0m"
printf "\n"
printf "\033[0;31mTHE KERNEL CMDLINE DO NOT CONTAIN THE PARAMETERS THAT ARE IN\033[0m\n"
printf "\033[0;31mTHE CHKCRYPTOBOOT CONFIGURATION\033[0m\n"
printf "\033[0;31mTHIS INDICATES THE BOOT LOADER CONFIGURATION WAS PROBABLY BYPASSED\033[0m\n"
printf "\n"
return 1
