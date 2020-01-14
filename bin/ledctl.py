#!/usr/bin/python

import RPi.GPIO as GPIO
import time
import sys

RED_LED = 18
GREEN_LED = 23
LED_PIN = RED_LED
LED_STATE = True
if len(sys.argv) == 3:
	if sys.argv[1] == 'green':
		LED_PIN = GREEN_LED
	if sys.argv[2] == 'off':
		LED_STATE = False
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
GPIO.setup(LED_PIN, GPIO.OUT)
GPIO.output(LED_PIN, LED_STATE)
