cmd_drivers/net/wireless/rtl8192cd/1x_md5c.o := rsdk-linux-gcc -Wp,-MD,drivers/net/wireless/rtl8192cd/.1x_md5c.o.d  -nostdinc -isystem /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/toolchain/rsdk-1.3.6-5281-EB-2.6.30-0.9.30/bin/../lib/gcc/mips-linux/3.4.6-1.3.6/include -Iinclude  -I/mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include -include include/linux/autoconf.h -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -fno-delete-null-pointer-checks -Os -ffunction-sections -mno-check-zero-division -mabi=32 -G 0 -mno-abicalls -fno-pic -pipe -msoft-float -ffreestanding -EB -UMIPSEB -U_MIPSEB -U__MIPSEB -U__MIPSEB__ -UMIPSEL -U_MIPSEL -U__MIPSEL -U__MIPSEL__ -DMIPSEB -D_MIPSEB -D__MIPSEB -D__MIPSEB__ -Iinclude/asm-rlx -Iarch/rlx/bsp/ -I/mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic -D"VMLINUX_LOAD_ADDRESS=0x80000000" -fomit-frame-pointer -Wdeclaration-after-statement -I/mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/target   -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(1x_md5c)"  -D"KBUILD_MODNAME=KBUILD_STR(rtl8192cd)"  -c -o drivers/net/wireless/rtl8192cd/1x_md5c.o drivers/net/wireless/rtl8192cd/1x_md5c.c

deps_drivers/net/wireless/rtl8192cd/1x_md5c.o := \
  drivers/net/wireless/rtl8192cd/1x_md5c.c \
  drivers/net/wireless/rtl8192cd/./8192cd_cfg.h \
    $(wildcard include/config/rtl/ulinker/brsc.h) \
    $(wildcard include/config/net/pci.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/rtl8190/priv/skb.h) \
    $(wildcard include/config/rtl8196b.h) \
    $(wildcard include/config/rtl8196c.h) \
    $(wildcard include/config/rtl8198.h) \
    $(wildcard include/config/rtl/819x.h) \
    $(wildcard include/config/rtl/8198.h) \
    $(wildcard include/config/rtl/8196c.h) \
    $(wildcard include/config/rtl/8198/ap/root.h) \
    $(wildcard include/config/rtl/custom/passthru.h) \
    $(wildcard include/config/rtl/custom/passthru/pppoe.h) \
    $(wildcard include/config/rtl/92d/support.h) \
    $(wildcard include/config/rtl/92c/support.h) \
    $(wildcard include/config/rtl/92d/dmdp.h) \
    $(wildcard include/config/rtl/dual/pcieslot/biwlan.h) \
    $(wildcard include/config/rtl/92d/smart/concurrent.h) \
    $(wildcard include/config/rtl/dual/pcieslot/biwlan/d.h) \
    $(wildcard include/config/rtk/voip/board.h) \
    $(wildcard include/config/rtl/8197d.h) \
    $(wildcard include/config/rtl/8197dl.h) \
    $(wildcard include/config/rtk/mesh.h) \
    $(wildcard include/config/rtl8196b/ap/root.h) \
    $(wildcard include/config/rtl8196b/tr.h) \
    $(wildcard include/config/rtl8196b/gw.h) \
    $(wildcard include/config/rtl/8196c/gw.h) \
    $(wildcard include/config/rtl/8198/gw.h) \
    $(wildcard include/config/rtl8196b/kld.h) \
    $(wildcard include/config/rtl8196b/tld.h) \
    $(wildcard include/config/rtl8196c/ap/root.h) \
    $(wildcard include/config/rtl8196c/ap/hcm.h) \
    $(wildcard include/config/rtl8198/ap/root.h) \
    $(wildcard include/config/rtl8196c/client/only.h) \
    $(wildcard include/config/rtl/8198/nfbi/board.h) \
    $(wildcard include/config/rtl8196c/kld.h) \
    $(wildcard include/config/rtl8196c/ec.h) \
    $(wildcard include/config/rtl/8196c/inic.h) \
    $(wildcard include/config/rtl/8198/inband/ap.h) \
    $(wildcard include/config/rtl/819xd.h) \
    $(wildcard include/config/rtl/8196e.h) \
    $(wildcard include/config/rtl/8198b.h) \
    $(wildcard include/config/command.h) \
    $(wildcard include/config/latency.h) \
    $(wildcard include/config/base0.h) \
    $(wildcard include/config/base1.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/rtl8196b/gw/8m.h) \
    $(wildcard include/config/pcie/power/saving.h) \
    $(wildcard include/config/rtl/8196cs.h) \
    $(wildcard include/config/rtl/ulinker.h) \
    $(wildcard include/config/rtl/88e/support.h) \
    $(wildcard include/config/slot0h.h) \
    $(wildcard include/config/slot0s.h) \
    $(wildcard include/config/slot1h.h) \
    $(wildcard include/config/slot1s.h) \
    $(wildcard include/config/rtl/wds/support.h) \
    $(wildcard include/config/rtl/client/mode/support.h) \
    $(wildcard include/config/rtl/support/multi/profile.h) \
    $(wildcard include/config/rtl8196b/gw/mp.h) \
    $(wildcard include/config/rtl/fastbridge.h) \
    $(wildcard include/config/rtl8672.h) \
    $(wildcard include/config/rtl8672/bridge/fastpath.h) \
    $(wildcard include/config/enable/efuse.h) \
    $(wildcard include/config/rtl/new/autoch.h) \
    $(wildcard include/config/rtl/new/iqk.h) \
    $(wildcard include/config/rtl/noise/control/92c.h) \
    $(wildcard include/config/rtl/repeater/mode/support.h) \
    $(wildcard include/config/rtl/dfs/support.h) \
    $(wildcard include/config/rtl/hostapd/support.h) \
    $(wildcard include/config/rtl/p2p/support.h) \
    $(wildcard include/config/rtl/comapi/wltools.h) \
    $(wildcard include/config/rtl/vap/support.h) \
    $(wildcard include/config/rtl8671.h) \
    $(wildcard include/config/rtl/tx/reserve/desc.h) \
    $(wildcard include/config/ant/switch.h) \
    $(wildcard include/config/rtl/wapi/support.h) \
    $(wildcard include/config/rtl8192cd.h) \
    $(wildcard include/config/rtl/hw/wapi/support.h) \
    $(wildcard include/config/rtl865x/cmo.h) \
    $(wildcard include/config/usb.h) \
    $(wildcard include/config/wireless/lan.h) \
    $(wildcard include/config/high/power/ext/pa.h) \
    $(wildcard include/config/rtk/vlc/speedup/support.h) \
    $(wildcard include/config/rtl/tx/early/mode/support.h) \
    $(wildcard include/config/rtl/8196d.h) \
    $(wildcard include/config/txpwr/lmt.h) \
    $(wildcard include/config/rtl865x/ac.h) \
    $(wildcard include/config/compat/net/dev/ops.h) \
    $(wildcard include/config/msc.h) \
    $(wildcard include/config/rtl8196c/revision/b.h) \
    $(wildcard include/config/rtl/noise/control.h) \
    $(wildcard include/config/rtl/92d/int/pa.h) \
    $(wildcard include/config/rtl865x/kld.h) \
    $(wildcard include/config/rtl/ulinker/wlan/delay/init.h) \
    $(wildcard include/config/rtl/8198/nfbi/rtk/inband/ap.h) \
    $(wildcard include/config/usb/power/bus.h) \
    $(wildcard include/config/rtl865x/eth/priv/skb.h) \
    $(wildcard include/config/rtl/eth/priv/skb.h) \
    $(wildcard include/config/rtk/vlan/support.h) \
    $(wildcard include/config/mem/limitation.h) \
    $(wildcard include/config/rtl/odm/wlan/driver.h) \
    $(wildcard include/config/macbbrf/by/odm.h) \
  include/linux/version.h \
  include/linux/jiffies.h \
  include/linux/math64.h \
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
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/div64.h \
  include/asm-generic/div64.h \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/spinlock/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/panic/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/toolchain/rsdk-1.3.6-5281-EB-2.6.30-0.9.30/bin/../lib/gcc/mips-linux/3.4.6-1.3.6/include/stdarg.h \
  include/linux/linkage.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/linkage.h \
  include/linux/bitops.h \
    $(wildcard include/config/generic/find/first/bit.h) \
    $(wildcard include/config/generic/find/last/bit.h) \
    $(wildcard include/config/generic/find/next/bit.h) \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h \
    $(wildcard include/config/cpu/has/llsc.h) \
    $(wildcard include/config/cpu/rlx4181.h) \
    $(wildcard include/config/cpu/rlx5181.h) \
    $(wildcard include/config/cpu/rlx5281.h) \
    $(wildcard include/config/cpu/has/radiax.h) \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  include/linux/typecheck.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/irqflags.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/hazards.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cpu-features.h \
    $(wildcard include/config/cpu/has/ejtag.h) \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cpu.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cpu-info.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cache.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic/kmalloc.h \
    $(wildcard include/config/dma/coherent.h) \
  arch/rlx/bsp/bspcpu.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/barrier.h \
    $(wildcard include/config/cpu/has/sync.h) \
    $(wildcard include/config/cpu/has/wb.h) \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/smp.h) \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/byteorder.h \
    $(wildcard include/config/cpu/big/endian.h) \
  include/linux/byteorder/big_endian.h \
  include/linux/swab.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/non-atomic.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/ffz.h \
  include/asm-generic/bitops/find.h \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/ext2-non-atomic.h \
  include/asm-generic/bitops/le.h \
  include/asm-generic/bitops/ext2-atomic.h \
  include/asm-generic/bitops/minix.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/ratelimit.h \
  include/linux/param.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/param.h \
    $(wildcard include/config/hz.h) \
  include/linux/dynamic_debug.h \
  include/linux/time.h \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  include/linux/seqlock.h \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/thread_info.h \
    $(wildcard include/config/kernel/stack/size/order.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/processor.h \
    $(wildcard include/config/cpu/has/sleep.h) \
    $(wildcard include/config/arch/suspend/possible.h) \
    $(wildcard include/config/rtl8197b/pana.h) \
    $(wildcard include/config/rtl819x/suspend/check/interrupt.h) \
  include/linux/cpumask.h \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/bitmap.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/string.h \
    $(wildcard include/config/cpu/rlx4180.h) \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cachectl.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/rlxregs.h \
    $(wildcard include/config/cpu/rlx4281.h) \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/system.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/addrspace.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic/spaces.h \
    $(wildcard include/config/32bit.h) \
    $(wildcard include/config/dma/noncoherent.h) \
  include/linux/const.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cmpxchg.h \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/poison.h \
  include/linux/prefetch.h \
  include/linux/stringify.h \
  include/linux/bottom_half.h \
  include/linux/spinlock_types.h \
  include/linux/spinlock_types_up.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/generic/hardirqs.h) \
  include/linux/spinlock_up.h \
  include/linux/spinlock_api_up.h \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h \
  include/asm-generic/atomic-long.h \
  include/linux/timex.h \
    $(wildcard include/config/no/hz.h) \
  /mnt/sdb/netcore_1.3_spi/sdk-store/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/timex.h \
  drivers/net/wireless/rtl8192cd/./typedef.h \
  drivers/net/wireless/rtl8192cd/1x_md5c.h \

drivers/net/wireless/rtl8192cd/1x_md5c.o: $(deps_drivers/net/wireless/rtl8192cd/1x_md5c.o)

$(deps_drivers/net/wireless/rtl8192cd/1x_md5c.o):
