# boot: LKL on Unikraft sample

This is "boot" LKL on Unikraft sample app.
The original "boot" is from tools/lkl/tests/boot.c,
on [lkl/linux](https://github.com/lkl/linux).
This sample currently supports x86/linuxu and x86/kvm.

## Build and Run

```
$ mkdir unikraft
$ cd unikraft
$ git clone git@github.com:uk-lkl/unikraft.git --branch=retrage/lkl-v2
$ mkdir libs && cd libs
$ git clone git@github.com:uk-lkl/newlib.git --branch=retrage/fix
$ git clone --recursive git@github.com:uk-lkl/lkl.git
$ cd ..
$ mkdir apps && cd apps
$ git clone git@github.com:uk-lkl/boot.git
$ cd boot
$ make menuconfig
# Select x86
# Select KVM guest or Linux user space
# For Linux user space, default heap size must be larger than 128MB
$ make
# For x86/linuxu,
$ ./build/boot\_linuxu-x86\_64
# For x86/kvm,
$ ./run.sh
```

To debug for x86/kvm,

```
# Disable "Drop unused functions and data"
# Disable "Link time optimizations (LTO)"
# Enable "Debugging information"
# Enable "Create a symbols file"
# Disable "Strip final image"
$ ./debug.sh
# In another console,
$ gdb ./build/boot\_kvm-x86\_64
```
