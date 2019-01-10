# boot: LKL on Unikraft sample

This is "boot" LKL on Unikraft sample app.
The original "boot" is from tools/lkl/tests/boot.c,
on [lkl/linux](https://github.com/lkl/linux).

## Building boot

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
$ make menuconfig # configure boot
$ make
```
