#!/bin/sh

choices="Devices\nScan"

chosen=$(echo -e "$choices" | dmenu -i)

case "$chosen" in
    Devices)
        device=$(iwctl device list | grep "wlan0" | awk '{print $2}' | dmenu -i -l 15)
        iwctl station $device scan
        sleep 5 
        iwctl station $device get-networks | awk '{print $4}' | dmenu -i -l 15;;
    
    Scan) ;;
esac
