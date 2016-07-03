x86 Bootloader
--------------
This is a small experiment to write a x86 bootloader program in assembly. This  can then be compiled to a binary image which can serve as a valid Master Boot Record. The idea was to write a bootloader program that draws a colour gradient on the screen using [Mode 13h](https://en.wikipedia.org/wiki/Mode_13h) graphics, with the restriction that the MBR can not be longer than 512 bytes long. Once this is formatted correctly (see compile.sh) it is then a valid MBR and can be booted!

Compile and run
---------------
To compile the bootloader run
```
./compile.sh
```
This will create a file bootloader.img.
You can run this image in a hypervisor to see it bootup.
To run with [QEMU](https://en.wikipedia.org/wiki/QEMU) run:
```
qemu-system-i386 bootloader.img
```
this will boot the image:


![qemu](https://raw.githubusercontent.com/peter-juritz/x86-bootloader/master/images/qemu.png)
