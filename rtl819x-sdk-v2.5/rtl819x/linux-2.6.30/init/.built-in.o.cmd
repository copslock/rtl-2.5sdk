cmd_init/built-in.o :=  rsdk-linux-ld  -m elf32btsmip   -r -o init/built-in.o init/main.o init/version.o init/mounts.o init/noinitramfs.o init/calibrate.o 
