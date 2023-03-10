#!/bin/sh
# initial setup of wpa_supplicant

# variables:
INTERFACE="wlan0"

####

wpa_supplicant -B -i $INTERFACE -c /etc/wpa_supplicant.conf
dhcpcd




