#!/bin/sh

qemu-system-i386 -drive format=raw,file=OS.bin,index=0,if=floppy -m 128M
