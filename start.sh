#!/bin/bash
# Fix sound device permissions for quectel devices with UAC
chown root:dialout -R /dev/snd/

# Start Asterisk
exec /usr/sbin/asterisk -f -n -Uasterisk -Gdialout "$@"