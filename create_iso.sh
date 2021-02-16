#!/bin/bash

cd src/boot
sh ./clean.sh
mkdir outputdir
~/opt/cross/i686-elf/bin/as asm/boot.s -o outputdir/boot.o
~/opt/cross/bin/i686-elf-gcc -c C/kernel.c -o outputdir/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
~/opt/cross/bin/i686-elf-gcc -T linker.ld -o junaidos.bin -ffreestanding -O2 -nostdlib outputdir/boot.o outputdir/kernel.o -lgcc
mkdir -p isodir/boot/grub
cp junaidos.bin isodir/boot/junaidos.bin
cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o junaidos.iso isodir
