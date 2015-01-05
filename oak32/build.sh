#!/bin/bash

nasm mbr.asm -o mbr.sys
nasm bootloader1.asm -o bootloader1.sys

cat mbr.sys bootloader1.sys > hdd.img
rm *.sys
