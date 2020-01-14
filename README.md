# piusbdd
project to turn a raspberry pi into a device that cleanses USB drives.

# files

etc/udev/rules.d/66-ddusb_disk.rules - udev rule that can detect new USB drives and kick off a script

bin/usb_disk_detected.sh - script that dd's the USB drive and controls LEDs (via bin/ledctl.py)

bin/ledctl.py - simple python script to control attached LEDs (OPTIONAL)

# installation:

copy bin/usb_disk_detected.sh to /usr/local/sbin/

copy bin/ledctl.py to /usr/local/bin/

copy etc/udev/rules.d/66-ddusb_disk.rules to /etc/udev/rules.d

(TODO: link to GPIO python library requirements for ledctl.py)
