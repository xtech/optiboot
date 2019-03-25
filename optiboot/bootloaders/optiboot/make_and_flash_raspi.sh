rm optiboot_atmega328.hex
make BAUD_RATE=38400 AVR_FREQ=8000000L LED_START_FLASHES=0 atmega328

/home/pi/Flashing/flash.sh /home/pi/Flashing/avrdude_button.conf ./optiboot_atmega328.hex
