## Random OS-Dev Stuff

This is just my little playground repo I made
for doing BIOS stuff, might turn into an OS or
stay a stupid little boot sector (probably the
latter)

## How to run
1. Install the necessary things
 - NASM
 - QEMU
 - WSL if using Windows

2. build
```console
$ make
```
This is what WSL was for, I don't have a build system for Windows.

3. run
```console
$ sh run.sh # run.bat on windows
```
I typically use QEMU inside of Windows, not inside of WSL.