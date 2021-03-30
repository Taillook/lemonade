build:
	x86_64-w64-mingw32-gcc -Wall -Wextra -nostdinc -nostdlib -Wl,--subsystem,10 -e efi_main -o main.efi src/main.c
## mv main.efi image/EFI/BOOT/BOOTX64.EFI
run:
	 qemu-system-x86_64 -bios /usr/share/ovmf/OVMF.fd -drive format=raw,file=fat:rw:root -nographic
## exit: ctrl-A X
