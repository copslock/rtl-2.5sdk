cmd_arch/rlx/kernel/early_printk.o := rsdk-linux-gcc -Wp,-MD,arch/rlx/kernel/.early_printk.o.d  -nostdinc -isystem /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/toolchain/rsdk-1.3.6-5281-EB-2.6.30-0.9.30/bin/../lib/gcc/mips-linux/3.4.6-1.3.6/include -Iinclude  -I/mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include -include include/linux/autoconf.h -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -fno-delete-null-pointer-checks -Os -ffunction-sections -mno-check-zero-division -mabi=32 -G 0 -mno-abicalls -fno-pic -pipe -msoft-float -ffreestanding -EB -UMIPSEB -U_MIPSEB -U__MIPSEB -U__MIPSEB__ -UMIPSEL -U_MIPSEL -U__MIPSEL -U__MIPSEL__ -DMIPSEB -D_MIPSEB -D__MIPSEB -D__MIPSEB__ -Iinclude/asm-rlx -Iarch/rlx/bsp/ -I/mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic -D"VMLINUX_LOAD_ADDRESS=0x80000000" -fomit-frame-pointer -Wdeclaration-after-statement -Werror -I/mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/drivers/net/rtl819x/AsicDriver -I/mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/drivers/net/rtl819x/common   -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(early_printk)"  -D"KBUILD_MODNAME=KBUILD_STR(early_printk)"  -c -o arch/rlx/kernel/early_printk.o arch/rlx/kernel/early_printk.c

deps_arch/rlx/kernel/early_printk.o := \
  arch/rlx/kernel/early_printk.c \
    $(wildcard include/config/serial/sc16is7x0/console.h) \
  include/linux/console.h \
    $(wildcard include/config/vga/console.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbd.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  include/asm-generic/bitsperlong.h \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc3.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/posix_types.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/sgidefs.h \
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  include/linux/section-names.h \
  include/linux/stringify.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/setup.h \
  arch/rlx/bsp/bspchip.h \
    $(wildcard include/config/fpga/platform.h) \
    $(wildcard include/config/rtl/92d/support.h) \
    $(wildcard include/config/rtl/usb/ip/host/speedup.h) \

arch/rlx/kernel/early_printk.o: $(deps_arch/rlx/kernel/early_printk.o)

$(deps_arch/rlx/kernel/early_printk.o):
