#!/bin/sh
TEMP=build_intermediate_1
TEMP2=build_intermediate_2
as -o $TEMP bootloader.s
objcopy -O binary $TEMP $TEMP2
tail -c +31745 $TEMP2 > bootloader.img
rm $TEMP $TEMP2
