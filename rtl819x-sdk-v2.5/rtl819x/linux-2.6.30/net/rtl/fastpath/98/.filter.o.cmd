cmd_net/rtl/fastpath/98/filter.o := rsdk-linux-gcc -Wp,-MD,net/rtl/fastpath/98/.filter.o.d  -nostdinc -isystem /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/toolchain/rsdk-1.3.6-5281-EB-2.6.30-0.9.30/bin/../lib/gcc/mips-linux/3.4.6-1.3.6/include -Iinclude  -I/mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include -include include/linux/autoconf.h -D__KERNEL__ -D__ASSEMBLY__ -ffunction-sections  -mno-check-zero-division -mabi=32 -G 0 -mno-abicalls -fno-pic -pipe -msoft-float -ffreestanding -EB -UMIPSEB -U_MIPSEB -U__MIPSEB -U__MIPSEB__ -UMIPSEL -U_MIPSEL -U__MIPSEL -U__MIPSEL__ -DMIPSEB -D_MIPSEB -D__MIPSEB -D__MIPSEB__ -Iinclude/asm-rlx -Iarch/rlx/bsp/ -I/mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic       -I /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/net -D__KERNEL__   -c -o net/rtl/fastpath/98/filter.o net/rtl/fastpath/98/filter.S

deps_net/rtl/fastpath/98/filter.o := \
  net/rtl/fastpath/98/filter.S \

net/rtl/fastpath/98/filter.o: $(deps_net/rtl/fastpath/98/filter.o)

$(deps_net/rtl/fastpath/98/filter.o):
