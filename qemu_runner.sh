#!/bin/bash

sh ./create_iso.sh
cd src/boot

qemu-system-i386 -cdrom junaidos.iso