#!/usr/bin/env bash

qemu-system-x86_64 -cpu host -enable-kvm -m 512M -nodefaults -no-acpi -display none -serial stdio -device isa-debug-exit -kernel build/boot_kvm-x86_64 -append verbose
