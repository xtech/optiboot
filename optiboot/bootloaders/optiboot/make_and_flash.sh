rm optiboot_atmega328.hex
make BAUD_RATE=38400 AVR_FREQ=8000000L LED_START_FLASHES=0 atmega328
avrdude  -c arduino -v \
              -p atmega328p -P $1 -b19200 \
-e -u -U efuse:w:0xFD:m -U hfuse:w:0xDA:m -U lfuse:w:0xFF:m \
-U flash:w:optiboot_atmega328.hex
