#!/bin/bash

if [ "${ACTION}" = "add" -a "${DEVTYPE}" = "disk" -a "${ID_USB_DRIVER}"="usb-storage" -a "${SUBSYSTEM}" = "block" -a -n "${DEVNAME}" ]; then
	date >> /tmp/usb_dd.log
	if [[ "${DEVNAME}" =~ [1-9]$ ]]; then
		echo "skipping ${DEVNAME} as it appears to be a partition" >> /tmp/usb_dd.log
	else
		echo "I think I should dd ${DEVNAME}!" >> /tmp/usb_dd.log
		for i in `seq 1 10`; do
			/usr/local/bin/ledctl.py red on
			sleep 0.5
			/usr/local/bin/ledctl.py red off
			sleep 0.5
		done
		# do the dd!
	fi
	sleep 1
        sync
#else
#	env >> /tmp/usb_dd.skipped.$$.log
fi
exit
