# 1 "net/rtl/fastpath/fastpath_common.c"
# 1 "<built-in>"
# 1 "<command line>"
# 21 "<command line>"
# 1 "./include/linux/autoconf.h" 1
# 22 "<command line>" 2
# 1 "net/rtl/fastpath/fastpath_common.c"




# 1 "include/net/netfilter/nf_conntrack.h" 1
# 22 "include/net/netfilter/nf_conntrack.h"
# 1 "include/linux/netfilter/nf_conntrack_common.h" 1





enum ip_conntrack_info
{

 IP_CT_ESTABLISHED,



 IP_CT_RELATED,



 IP_CT_NEW,


 IP_CT_IS_REPLY,


 IP_CT_NUMBER = IP_CT_IS_REPLY * 2 - 1
};


enum ip_conntrack_status {

 IPS_EXPECTED_BIT = 0,
 IPS_EXPECTED = (1 << IPS_EXPECTED_BIT),


 IPS_SEEN_REPLY_BIT = 1,
 IPS_SEEN_REPLY = (1 << IPS_SEEN_REPLY_BIT),


 IPS_ASSURED_BIT = 2,
 IPS_ASSURED = (1 << IPS_ASSURED_BIT),


 IPS_CONFIRMED_BIT = 3,
 IPS_CONFIRMED = (1 << IPS_CONFIRMED_BIT),


 IPS_SRC_NAT_BIT = 4,
 IPS_SRC_NAT = (1 << IPS_SRC_NAT_BIT),


 IPS_DST_NAT_BIT = 5,
 IPS_DST_NAT = (1 << IPS_DST_NAT_BIT),


 IPS_NAT_MASK = (IPS_DST_NAT | IPS_SRC_NAT),


 IPS_SEQ_ADJUST_BIT = 6,
 IPS_SEQ_ADJUST = (1 << IPS_SEQ_ADJUST_BIT),


 IPS_SRC_NAT_DONE_BIT = 7,
 IPS_SRC_NAT_DONE = (1 << IPS_SRC_NAT_DONE_BIT),

 IPS_DST_NAT_DONE_BIT = 8,
 IPS_DST_NAT_DONE = (1 << IPS_DST_NAT_DONE_BIT),


 IPS_NAT_DONE_MASK = (IPS_DST_NAT_DONE | IPS_SRC_NAT_DONE),


 IPS_DYING_BIT = 9,
 IPS_DYING = (1 << IPS_DYING_BIT),


 IPS_FIXED_TIMEOUT_BIT = 10,
 IPS_FIXED_TIMEOUT = (1 << IPS_FIXED_TIMEOUT_BIT),



 IPS_BT_SESSION_BIT = 11,
 IPS_BT_SESSION = (1 << IPS_BT_SESSION_BIT),


};


enum ip_conntrack_events
{

 IPCT_NEW_BIT = 0,
 IPCT_NEW = (1 << IPCT_NEW_BIT),


 IPCT_RELATED_BIT = 1,
 IPCT_RELATED = (1 << IPCT_RELATED_BIT),


 IPCT_DESTROY_BIT = 2,
 IPCT_DESTROY = (1 << IPCT_DESTROY_BIT),


 IPCT_REFRESH_BIT = 3,
 IPCT_REFRESH = (1 << IPCT_REFRESH_BIT),


 IPCT_STATUS_BIT = 4,
 IPCT_STATUS = (1 << IPCT_STATUS_BIT),


 IPCT_PROTOINFO_BIT = 5,
 IPCT_PROTOINFO = (1 << IPCT_PROTOINFO_BIT),


 IPCT_PROTOINFO_VOLATILE_BIT = 6,
 IPCT_PROTOINFO_VOLATILE = (1 << IPCT_PROTOINFO_VOLATILE_BIT),


 IPCT_HELPER_BIT = 7,
 IPCT_HELPER = (1 << IPCT_HELPER_BIT),


 IPCT_HELPINFO_BIT = 8,
 IPCT_HELPINFO = (1 << IPCT_HELPINFO_BIT),


 IPCT_HELPINFO_VOLATILE_BIT = 9,
 IPCT_HELPINFO_VOLATILE = (1 << IPCT_HELPINFO_VOLATILE_BIT),


 IPCT_NATINFO_BIT = 10,
 IPCT_NATINFO = (1 << IPCT_NATINFO_BIT),


 IPCT_COUNTER_FILLING_BIT = 11,
 IPCT_COUNTER_FILLING = (1 << IPCT_COUNTER_FILLING_BIT),


 IPCT_MARK_BIT = 12,
 IPCT_MARK = (1 << IPCT_MARK_BIT),


 IPCT_NATSEQADJ_BIT = 13,
 IPCT_NATSEQADJ = (1 << IPCT_NATSEQADJ_BIT),


 IPCT_SECMARK_BIT = 14,
 IPCT_SECMARK = (1 << IPCT_SECMARK_BIT),
};

enum ip_conntrack_expect_events {
 IPEXP_NEW_BIT = 0,
 IPEXP_NEW = (1 << IPEXP_NEW_BIT),
};


struct ip_conntrack_stat
{
 unsigned int searched;
 unsigned int found;
 unsigned int new;
 unsigned int invalid;
 unsigned int ignore;
 unsigned int delete;
 unsigned int delete_list;
 unsigned int insert;
 unsigned int insert_failed;
 unsigned int drop;
 unsigned int early_drop;
 unsigned int error;
 unsigned int expect_new;
 unsigned int expect_create;
 unsigned int expect_delete;
};


extern void need_conntrack(void);
# 23 "include/net/netfilter/nf_conntrack.h" 2


# 1 "include/linux/bitops.h" 1


# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/types.h" 1
# 18 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/types.h"
# 1 "include/asm-generic/int-ll64.h" 1
# 11 "include/asm-generic/int-ll64.h"
# 1 "include/asm-generic/bitsperlong.h" 1
# 12 "include/asm-generic/int-ll64.h" 2







typedef __signed__ char __s8;
typedef unsigned char __u8;

typedef __signed__ short __s16;
typedef unsigned short __u16;

typedef __signed__ int __s32;
typedef unsigned int __u32;


__extension__ typedef __signed__ long long __s64;
__extension__ typedef unsigned long long __u64;
# 42 "include/asm-generic/int-ll64.h"
typedef signed char s8;
typedef unsigned char u8;

typedef signed short s16;
typedef unsigned short u16;

typedef signed int s32;
typedef unsigned int u32;

typedef signed long long s64;
typedef unsigned long long u64;
# 19 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/types.h" 2



typedef unsigned short umode_t;
# 35 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/types.h"
typedef u32 dma_addr_t;
typedef u64 dma64_addr_t;




typedef unsigned long phys_t;
# 4 "include/linux/bitops.h" 2
# 17 "include/linux/bitops.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 1
# 16 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
# 1 "include/linux/compiler.h" 1
# 40 "include/linux/compiler.h"
# 1 "include/linux/compiler-gcc.h" 1
# 86 "include/linux/compiler-gcc.h"
# 1 "include/linux/compiler-gcc3.h" 1
# 87 "include/linux/compiler-gcc.h" 2
# 41 "include/linux/compiler.h" 2
# 58 "include/linux/compiler.h"
struct ftrace_branch_data {
 const char *func;
 const char *file;
 unsigned line;
 union {
  struct {
   unsigned long correct;
   unsigned long incorrect;
  };
  struct {
   unsigned long miss;
   unsigned long hit;
  };
  unsigned long miss_hit[2];
 };
};
# 17 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 2
# 1 "include/linux/irqflags.h" 1
# 14 "include/linux/irqflags.h"
# 1 "include/linux/typecheck.h" 1
# 15 "include/linux/irqflags.h" 2
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/irqflags.h" 1
# 17 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/irqflags.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/hazards.h" 1
# 17 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/hazards.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cpu-features.h" 1
# 12 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cpu-features.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cpu.h" 1
# 13 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cpu-features.h" 2
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cpu-info.h" 1
# 15 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cpu-info.h"
# 1 "include/linux/types.h" 1
# 14 "include/linux/types.h"
# 1 "include/linux/posix_types.h" 1



# 1 "include/linux/stddef.h" 1
# 15 "include/linux/stddef.h"
enum {
 false = 0,
 true = 1
};
# 5 "include/linux/posix_types.h" 2
# 36 "include/linux/posix_types.h"
typedef struct {
 unsigned long fds_bits [(1024/(8 * sizeof(unsigned long)))];
} __kernel_fd_set;


typedef void (*__kernel_sighandler_t)(int);


typedef int __kernel_key_t;
typedef int __kernel_mqd_t;

# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/posix_types.h" 1
# 12 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/posix_types.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/sgidefs.h" 1
# 13 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/posix_types.h" 2







typedef unsigned long __kernel_ino_t;
typedef unsigned int __kernel_mode_t;

typedef unsigned long __kernel_nlink_t;




typedef long __kernel_off_t;
typedef int __kernel_pid_t;
typedef int __kernel_ipc_pid_t;
typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;

typedef unsigned int __kernel_size_t;
typedef int __kernel_ssize_t;
typedef int __kernel_ptrdiff_t;






typedef long __kernel_time_t;
typedef long __kernel_suseconds_t;
typedef long __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef long __kernel_daddr_t;
typedef char * __kernel_caddr_t;

typedef unsigned short __kernel_uid16_t;
typedef unsigned short __kernel_gid16_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_uid_t __kernel_old_uid_t;
typedef __kernel_gid_t __kernel_old_gid_t;
typedef unsigned int __kernel_old_dev_t;


typedef long long __kernel_loff_t;


typedef struct {

 long val[2];




} __kernel_fsid_t;




static __inline__ __attribute__((always_inline)) void __FD_SET(unsigned long __fd, __kernel_fd_set *__fdsetp)
{
 unsigned long __tmp = __fd / (8 * sizeof(unsigned long));
 unsigned long __rem = __fd % (8 * sizeof(unsigned long));
 __fdsetp->fds_bits[__tmp] |= (1UL<<__rem);
}


static __inline__ __attribute__((always_inline)) void __FD_CLR(unsigned long __fd, __kernel_fd_set *__fdsetp)
{
 unsigned long __tmp = __fd / (8 * sizeof(unsigned long));
 unsigned long __rem = __fd % (8 * sizeof(unsigned long));
 __fdsetp->fds_bits[__tmp] &= ~(1UL<<__rem);
}


static __inline__ __attribute__((always_inline)) int __FD_ISSET(unsigned long __fd, const __kernel_fd_set *__p)
{
 unsigned long __tmp = __fd / (8 * sizeof(unsigned long));
 unsigned long __rem = __fd % (8 * sizeof(unsigned long));
 return (__p->fds_bits[__tmp] & (1UL<<__rem)) != 0;
}






static __inline__ __attribute__((always_inline)) void __FD_ZERO(__kernel_fd_set *__p)
{
 unsigned long *__tmp = __p->fds_bits;
 int __i;

 if (__builtin_constant_p((1024/(8 * sizeof(unsigned long))))) {
  switch ((1024/(8 * sizeof(unsigned long)))) {
  case 16:
   __tmp[ 0] = 0; __tmp[ 1] = 0;
   __tmp[ 2] = 0; __tmp[ 3] = 0;
   __tmp[ 4] = 0; __tmp[ 5] = 0;
   __tmp[ 6] = 0; __tmp[ 7] = 0;
   __tmp[ 8] = 0; __tmp[ 9] = 0;
   __tmp[10] = 0; __tmp[11] = 0;
   __tmp[12] = 0; __tmp[13] = 0;
   __tmp[14] = 0; __tmp[15] = 0;
   return;

  case 8:
   __tmp[ 0] = 0; __tmp[ 1] = 0;
   __tmp[ 2] = 0; __tmp[ 3] = 0;
   __tmp[ 4] = 0; __tmp[ 5] = 0;
   __tmp[ 6] = 0; __tmp[ 7] = 0;
   return;

  case 4:
   __tmp[ 0] = 0; __tmp[ 1] = 0;
   __tmp[ 2] = 0; __tmp[ 3] = 0;
   return;
  }
 }
 __i = (1024/(8 * sizeof(unsigned long)));
 while (__i) {
  __i--;
  *__tmp = 0;
  __tmp++;
 }
}
# 48 "include/linux/posix_types.h" 2
# 15 "include/linux/types.h" 2



typedef __u32 __kernel_dev_t;

typedef __kernel_fd_set fd_set;
typedef __kernel_dev_t dev_t;
typedef __kernel_ino_t ino_t;
typedef __kernel_mode_t mode_t;
typedef __kernel_nlink_t nlink_t;
typedef __kernel_off_t off_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_daddr_t daddr_t;
typedef __kernel_key_t key_t;
typedef __kernel_suseconds_t suseconds_t;
typedef __kernel_timer_t timer_t;
typedef __kernel_clockid_t clockid_t;
typedef __kernel_mqd_t mqd_t;

typedef _Bool bool;

typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_uid16_t uid16_t;
typedef __kernel_gid16_t gid16_t;

typedef unsigned long uintptr_t;
# 50 "include/linux/types.h"
typedef __kernel_loff_t loff_t;
# 59 "include/linux/types.h"
typedef __kernel_size_t size_t;




typedef __kernel_ssize_t ssize_t;




typedef __kernel_ptrdiff_t ptrdiff_t;




typedef __kernel_time_t time_t;




typedef __kernel_clock_t clock_t;




typedef __kernel_caddr_t caddr_t;



typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;


typedef unsigned char unchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;




typedef __u8 u_int8_t;
typedef __s8 int8_t;
typedef __u16 u_int16_t;
typedef __s16 int16_t;
typedef __u32 u_int32_t;
typedef __s32 int32_t;



typedef __u8 uint8_t;
typedef __u16 uint16_t;
typedef __u32 uint32_t;


typedef __u64 uint64_t;
typedef __u64 u_int64_t;
typedef __s64 int64_t;
# 138 "include/linux/types.h"
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
# 168 "include/linux/types.h"
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u64 __be64;

typedef __u16 __sum16;
typedef __u32 __wsum;


typedef unsigned gfp_t;
typedef unsigned fmode_t;




typedef u32 phys_addr_t;


typedef phys_addr_t resource_size_t;

typedef struct {
 volatile int counter;
} atomic_t;







struct ustat {
 __kernel_daddr_t f_tfree;
 __kernel_ino_t f_tinode;
 char f_fname[6];
 char f_fpack[6];
};
# 16 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cpu-info.h" 2

# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cache.h" 1
# 12 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cache.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic/kmalloc.h" 1
# 13 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cache.h" 2
# 18 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cpu-info.h" 2




struct cache_desc {
 unsigned int waysize;
 unsigned short sets;
 unsigned char ways;
 unsigned char linesz;
 unsigned char waybit;
 unsigned char flags;
};
# 41 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cpu-info.h"
struct cpuinfo_mips {
 unsigned int udelay_val;
 unsigned int asid_cache;




 unsigned long options;
 unsigned long ases;
 unsigned int processor_id;
 unsigned int fpu_id;
 unsigned int cputype;
 int isa_level;
 int tlbsize;
 struct cache_desc icache;
 struct cache_desc dcache;
 struct cache_desc scache;
 struct cache_desc tcache;
 int srsets;
 int core;
 void *data;
} __attribute__((aligned((1 << 5))));

extern struct cpuinfo_mips cpu_data[];



extern void cpu_probe(void);
extern void cpu_report(void);

extern const char *__cpu_name[];
# 14 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cpu-features.h" 2
# 1 "arch/rlx/bsp/bspcpu.h" 1
# 15 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cpu-features.h" 2
# 18 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/hazards.h" 2
# 29 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/hazards.h"
__asm__(".macro " "_ssnop" "; " "sll $0, $0, 1" "; .endm"); static inline __attribute__((always_inline)) void _ssnop(void) { __asm__ __volatile__ ("_ssnop"); }



__asm__(".macro " "_ehb" "; " "sll $0, $0, 3" "; .endm"); static inline __attribute__((always_inline)) void _ehb(void) { __asm__ __volatile__ ("_ehb"); }
# 46 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/hazards.h"
__asm__(".macro " "mtc0_tlbw_hazard" "; " "nop; nop" "; .endm"); static inline __attribute__((always_inline)) void mtc0_tlbw_hazard(void) { __asm__ __volatile__ ("mtc0_tlbw_hazard"); }


__asm__(".macro " "tlbw_use_hazard" "; " "nop; nop; nop" "; .endm"); static inline __attribute__((always_inline)) void tlbw_use_hazard(void) { __asm__ __volatile__ ("tlbw_use_hazard"); }


__asm__(".macro " "tlb_probe_hazard" "; " "nop; nop; nop" "; .endm"); static inline __attribute__((always_inline)) void tlb_probe_hazard(void) { __asm__ __volatile__ ("tlb_probe_hazard"); }


__asm__(".macro " "irq_enable_hazard" "; " "_ssnop; _ssnop; _ssnop;" "; .endm"); static inline __attribute__((always_inline)) void irq_enable_hazard(void) { __asm__ __volatile__ ("irq_enable_hazard"); }


__asm__(".macro " "irq_disable_hazard" "; " "nop; nop; nop" "; .endm"); static inline __attribute__((always_inline)) void irq_disable_hazard(void) { __asm__ __volatile__ ("irq_disable_hazard"); }


__asm__(".macro " "back_to_back_c0_hazard" "; " "_ssnop; _ssnop; _ssnop;" "; .endm"); static inline __attribute__((always_inline)) void back_to_back_c0_hazard(void) { __asm__ __volatile__ ("back_to_back_c0_hazard"); }
# 18 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/irqflags.h" 2

__asm__(
 "	.macro	raw_local_irq_enable				\n"
 "	.set	push						\n"
 "	.set	reorder						\n"
 "	.set	noat						\n"
 "	mfc0	$1,$12						\n"
 "	ori	$1,0x1f						\n"
 "	xori	$1,0x1e						\n"
 "	mtc0	$1,$12						\n"
 "	irq_enable_hazard					\n"
 "	.set	pop						\n"
 "	.endm");

static inline __attribute__((always_inline)) void raw_local_irq_enable(void)
{
 __asm__ __volatile__(
  "raw_local_irq_enable"
  :
  :
  : "memory");
}
# 59 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/irqflags.h"
__asm__(
 "	.macro	raw_local_irq_disable\n"
 "	.set	push						\n"
 "	.set	noat						\n"
 "	mfc0	$1,$12						\n"
 "	ori	$1,0x1f						\n"
 "	xori	$1,0x1f						\n"
 "	.set	noreorder					\n"
 "	mtc0	$1,$12						\n"
 "	irq_disable_hazard					\n"
 "	.set	pop						\n"
 "	.endm							\n");

static inline __attribute__((always_inline)) void raw_local_irq_disable(void)
{
 __asm__ __volatile__(
  "raw_local_irq_disable"
  :
  :
  : "memory");
}

__asm__(
 "	.macro	raw_local_save_flags flags			\n"
 "	.set	push						\n"
 "	.set	reorder						\n"
 "	mfc0	\\flags, $12					\n"
 "	.set	pop						\n"
 "	.endm							\n");






__asm__(
 "	.macro	raw_local_irq_save result			\n"
 "	.set	push						\n"
 "	.set	reorder						\n"
 "	.set	noat						\n"
 "	mfc0	\\result, $12					\n"
 "	ori	$1, \\result, 0x1f				\n"
 "	xori	$1, 0x1f					\n"
 "	.set	noreorder					\n"
 "	mtc0	$1, $12						\n"
 "	irq_disable_hazard					\n"
 "	.set	pop						\n"
 "	.endm							\n");
# 115 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/irqflags.h"
__asm__(
 "	.macro	raw_local_irq_restore flags			\n"
 "	.set	push						\n"
 "	.set	noreorder					\n"
 "	.set	noat						\n"
 "	mfc0	$1, $12						\n"
 "	andi	\\flags, 1					\n"
 "	ori	$1, 0x1f					\n"
 "	xori	$1, 0x1f					\n"
 "	or	\\flags, $1					\n"
 "	mtc0	\\flags, $12					\n"
 "	irq_disable_hazard					\n"
 "	.set	pop						\n"
 "	.endm							\n");

static inline __attribute__((always_inline)) void raw_local_irq_restore(unsigned long flags)
{
 unsigned long __tmp1;

 __asm__ __volatile__(
  "raw_local_irq_restore\t%0"
  : "=r" (__tmp1)
  : "0" (flags)
  : "memory");
}

static inline __attribute__((always_inline)) void __raw_local_irq_restore(unsigned long flags)
{
 unsigned long __tmp1;

 __asm__ __volatile__(
  "raw_local_irq_restore\t%0"
  : "=r" (__tmp1)
  : "0" (flags)
  : "memory");
}

static inline __attribute__((always_inline)) int raw_irqs_disabled_flags(unsigned long flags)
{
 return !(flags & 1);
}
# 16 "include/linux/irqflags.h" 2
# 18 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 2

# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/barrier.h" 1
# 20 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 2
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bug.h" 1
# 43 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bug.h"
# 1 "include/asm-generic/bug.h" 1
# 44 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bug.h" 2
# 21 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 2
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/byteorder.h" 1
# 12 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/byteorder.h"
# 1 "include/linux/byteorder/big_endian.h" 1
# 12 "include/linux/byteorder/big_endian.h"
# 1 "include/linux/swab.h" 1





# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/swab.h" 1
# 7 "include/linux/swab.h" 2
# 46 "include/linux/swab.h"
static inline __attribute__((always_inline)) __attribute__((__const__)) __u16 __fswab16(__u16 val)
{



 return ((__u16)( (((__u16)(val) & (__u16)0x00ffU) << 8) | (((__u16)(val) & (__u16)0xff00U) >> 8)));

}

static inline __attribute__((always_inline)) __attribute__((__const__)) __u32 __fswab32(__u32 val)
{



 return ((__u32)( (((__u32)(val) & (__u32)0x000000ffUL) << 24) | (((__u32)(val) & (__u32)0x0000ff00UL) << 8) | (((__u32)(val) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(val) & (__u32)0xff000000UL) >> 24)));

}

static inline __attribute__((always_inline)) __attribute__((__const__)) __u64 __fswab64(__u64 val)
{



 __u32 h = val >> 32;
 __u32 l = val & ((1ULL << 32) - 1);
 return (((__u64)__fswab32(l)) << 32) | ((__u64)(__fswab32(h)));



}

static inline __attribute__((always_inline)) __attribute__((__const__)) __u32 __fswahw32(__u32 val)
{



 return ((__u32)( (((__u32)(val) & (__u32)0x0000ffffUL) << 16) | (((__u32)(val) & (__u32)0xffff0000UL) >> 16)));

}

static inline __attribute__((always_inline)) __attribute__((__const__)) __u32 __fswahb32(__u32 val)
{



 return ((__u32)( (((__u32)(val) & (__u32)0x00ff00ffUL) << 8) | (((__u32)(val) & (__u32)0xff00ff00UL) >> 8)));

}
# 148 "include/linux/swab.h"
static inline __attribute__((always_inline)) __u16 __swab16p(const __u16 *p)
{



 return (__builtin_constant_p((__u16)(*p)) ? ((__u16)( (((__u16)(*p) & (__u16)0x00ffU) << 8) | (((__u16)(*p) & (__u16)0xff00U) >> 8))) : __fswab16(*p));

}





static inline __attribute__((always_inline)) __u32 __swab32p(const __u32 *p)
{



 return (__builtin_constant_p((__u32)(*p)) ? ((__u32)( (((__u32)(*p) & (__u32)0x000000ffUL) << 24) | (((__u32)(*p) & (__u32)0x0000ff00UL) << 8) | (((__u32)(*p) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(*p) & (__u32)0xff000000UL) >> 24))) : __fswab32(*p));

}





static inline __attribute__((always_inline)) __u64 __swab64p(const __u64 *p)
{



 return (__builtin_constant_p((__u64)(*p)) ? ((__u64)( (((__u64)(*p) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)(*p) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)(*p) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)(*p) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)(*p) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)(*p) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)(*p) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)(*p) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64(*p));

}







static inline __attribute__((always_inline)) __u32 __swahw32p(const __u32 *p)
{



 return (__builtin_constant_p((__u32)(*p)) ? ((__u32)( (((__u32)(*p) & (__u32)0x0000ffffUL) << 16) | (((__u32)(*p) & (__u32)0xffff0000UL) >> 16))) : __fswahw32(*p));

}







static inline __attribute__((always_inline)) __u32 __swahb32p(const __u32 *p)
{



 return (__builtin_constant_p((__u32)(*p)) ? ((__u32)( (((__u32)(*p) & (__u32)0x00ff00ffUL) << 8) | (((__u32)(*p) & (__u32)0xff00ff00UL) >> 8))) : __fswahb32(*p));

}





static inline __attribute__((always_inline)) void __swab16s(__u16 *p)
{



 *p = __swab16p(p);

}




static inline __attribute__((always_inline)) void __swab32s(__u32 *p)
{



 *p = __swab32p(p);

}





static inline __attribute__((always_inline)) void __swab64s(__u64 *p)
{



 *p = __swab64p(p);

}







static inline __attribute__((always_inline)) void __swahw32s(__u32 *p)
{



 *p = __swahw32p(p);

}







static inline __attribute__((always_inline)) void __swahb32s(__u32 *p)
{



 *p = __swahb32p(p);

}
# 13 "include/linux/byteorder/big_endian.h" 2
# 43 "include/linux/byteorder/big_endian.h"
static inline __attribute__((always_inline)) __le64 __cpu_to_le64p(const __u64 *p)
{
 return ( __le64)__swab64p(p);
}
static inline __attribute__((always_inline)) __u64 __le64_to_cpup(const __le64 *p)
{
 return __swab64p((__u64 *)p);
}
static inline __attribute__((always_inline)) __le32 __cpu_to_le32p(const __u32 *p)
{
 return ( __le32)__swab32p(p);
}
static inline __attribute__((always_inline)) __u32 __le32_to_cpup(const __le32 *p)
{
 return __swab32p((__u32 *)p);
}
static inline __attribute__((always_inline)) __le16 __cpu_to_le16p(const __u16 *p)
{
 return ( __le16)__swab16p(p);
}
static inline __attribute__((always_inline)) __u16 __le16_to_cpup(const __le16 *p)
{
 return __swab16p((__u16 *)p);
}
static inline __attribute__((always_inline)) __be64 __cpu_to_be64p(const __u64 *p)
{
 return ( __be64)*p;
}
static inline __attribute__((always_inline)) __u64 __be64_to_cpup(const __be64 *p)
{
 return ( __u64)*p;
}
static inline __attribute__((always_inline)) __be32 __cpu_to_be32p(const __u32 *p)
{
 return ( __be32)*p;
}
static inline __attribute__((always_inline)) __u32 __be32_to_cpup(const __be32 *p)
{
 return ( __u32)*p;
}
static inline __attribute__((always_inline)) __be16 __cpu_to_be16p(const __u16 *p)
{
 return ( __be16)*p;
}
static inline __attribute__((always_inline)) __u16 __be16_to_cpup(const __be16 *p)
{
 return ( __u16)*p;
}
# 105 "include/linux/byteorder/big_endian.h"
# 1 "include/linux/byteorder/generic.h" 1
# 143 "include/linux/byteorder/generic.h"
static inline __attribute__((always_inline)) void le16_add_cpu(__le16 *var, u16 val)
{
 *var = (( __le16)(__builtin_constant_p((__u16)(((__builtin_constant_p((__u16)(( __u16)(__le16)(*var))) ? ((__u16)( (((__u16)(( __u16)(__le16)(*var)) & (__u16)0x00ffU) << 8) | (((__u16)(( __u16)(__le16)(*var)) & (__u16)0xff00U) >> 8))) : __fswab16(( __u16)(__le16)(*var))) + val))) ? ((__u16)( (((__u16)(((__builtin_constant_p((__u16)(( __u16)(__le16)(*var))) ? ((__u16)( (((__u16)(( __u16)(__le16)(*var)) & (__u16)0x00ffU) << 8) | (((__u16)(( __u16)(__le16)(*var)) & (__u16)0xff00U) >> 8))) : __fswab16(( __u16)(__le16)(*var))) + val)) & (__u16)0x00ffU) << 8) | (((__u16)(((__builtin_constant_p((__u16)(( __u16)(__le16)(*var))) ? ((__u16)( (((__u16)(( __u16)(__le16)(*var)) & (__u16)0x00ffU) << 8) | (((__u16)(( __u16)(__le16)(*var)) & (__u16)0xff00U) >> 8))) : __fswab16(( __u16)(__le16)(*var))) + val)) & (__u16)0xff00U) >> 8))) : __fswab16(((__builtin_constant_p((__u16)(( __u16)(__le16)(*var))) ? ((__u16)( (((__u16)(( __u16)(__le16)(*var)) & (__u16)0x00ffU) << 8) | (((__u16)(( __u16)(__le16)(*var)) & (__u16)0xff00U) >> 8))) : __fswab16(( __u16)(__le16)(*var))) + val))));
}

static inline __attribute__((always_inline)) void le32_add_cpu(__le32 *var, u32 val)
{
 *var = (( __le32)(__builtin_constant_p((__u32)(((__builtin_constant_p((__u32)(( __u32)(__le32)(*var))) ? ((__u32)( (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x000000ffUL) << 24) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x0000ff00UL) << 8) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0xff000000UL) >> 24))) : __fswab32(( __u32)(__le32)(*var))) + val))) ? ((__u32)( (((__u32)(((__builtin_constant_p((__u32)(( __u32)(__le32)(*var))) ? ((__u32)( (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x000000ffUL) << 24) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x0000ff00UL) << 8) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0xff000000UL) >> 24))) : __fswab32(( __u32)(__le32)(*var))) + val)) & (__u32)0x000000ffUL) << 24) | (((__u32)(((__builtin_constant_p((__u32)(( __u32)(__le32)(*var))) ? ((__u32)( (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x000000ffUL) << 24) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x0000ff00UL) << 8) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0xff000000UL) >> 24))) : __fswab32(( __u32)(__le32)(*var))) + val)) & (__u32)0x0000ff00UL) << 8) | (((__u32)(((__builtin_constant_p((__u32)(( __u32)(__le32)(*var))) ? ((__u32)( (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x000000ffUL) << 24) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x0000ff00UL) << 8) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0xff000000UL) >> 24))) : __fswab32(( __u32)(__le32)(*var))) + val)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(((__builtin_constant_p((__u32)(( __u32)(__le32)(*var))) ? ((__u32)( (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x000000ffUL) << 24) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x0000ff00UL) << 8) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0xff000000UL) >> 24))) : __fswab32(( __u32)(__le32)(*var))) + val)) & (__u32)0xff000000UL) >> 24))) : __fswab32(((__builtin_constant_p((__u32)(( __u32)(__le32)(*var))) ? ((__u32)( (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x000000ffUL) << 24) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x0000ff00UL) << 8) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(( __u32)(__le32)(*var)) & (__u32)0xff000000UL) >> 24))) : __fswab32(( __u32)(__le32)(*var))) + val))));
}

static inline __attribute__((always_inline)) void le64_add_cpu(__le64 *var, u64 val)
{
 *var = (( __le64)(__builtin_constant_p((__u64)(((__builtin_constant_p((__u64)(( __u64)(__le64)(*var))) ? ((__u64)( (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64(( __u64)(__le64)(*var))) + val))) ? ((__u64)( (((__u64)(((__builtin_constant_p((__u64)(( __u64)(__le64)(*var))) ? ((__u64)( (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64(( __u64)(__le64)(*var))) + val)) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)(((__builtin_constant_p((__u64)(( __u64)(__le64)(*var))) ? ((__u64)( (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64(( __u64)(__le64)(*var))) + val)) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)(((__builtin_constant_p((__u64)(( __u64)(__le64)(*var))) ? ((__u64)( (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64(( __u64)(__le64)(*var))) + val)) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)(((__builtin_constant_p((__u64)(( __u64)(__le64)(*var))) ? ((__u64)( (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64(( __u64)(__le64)(*var))) + val)) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)(((__builtin_constant_p((__u64)(( __u64)(__le64)(*var))) ? ((__u64)( (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64(( __u64)(__le64)(*var))) + val)) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)(((__builtin_constant_p((__u64)(( __u64)(__le64)(*var))) ? ((__u64)( (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64(( __u64)(__le64)(*var))) + val)) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)(((__builtin_constant_p((__u64)(( __u64)(__le64)(*var))) ? ((__u64)( (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64(( __u64)(__le64)(*var))) + val)) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)(((__builtin_constant_p((__u64)(( __u64)(__le64)(*var))) ? ((__u64)( (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64(( __u64)(__le64)(*var))) + val)) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64(((__builtin_constant_p((__u64)(( __u64)(__le64)(*var))) ? ((__u64)( (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000000000ffULL) << 56) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000000000ff00ULL) << 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000000000ff0000ULL) << 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00000000ff000000ULL) << 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x000000ff00000000ULL) >> 8) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x0000ff0000000000ULL) >> 24) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0x00ff000000000000ULL) >> 40) | (((__u64)(( __u64)(__le64)(*var)) & (__u64)0xff00000000000000ULL) >> 56))) : __fswab64(( __u64)(__le64)(*var))) + val))));
}

static inline __attribute__((always_inline)) void be16_add_cpu(__be16 *var, u16 val)
{
 *var = (( __be16)(__u16)((( __u16)(__be16)(*var)) + val));
}

static inline __attribute__((always_inline)) void be32_add_cpu(__be32 *var, u32 val)
{
 *var = (( __be32)(__u32)((( __u32)(__be32)(*var)) + val));
}

static inline __attribute__((always_inline)) void be64_add_cpu(__be64 *var, u64 val)
{
 *var = (( __be64)(__u64)((( __u64)(__be64)(*var)) + val));
}
# 106 "include/linux/byteorder/big_endian.h" 2
# 13 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/byteorder.h" 2
# 22 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 2
# 44 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
static inline __attribute__((always_inline)) void set_bit(unsigned long nr, volatile unsigned long *addr)
{
# 65 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
 volatile unsigned long *a = addr;
    unsigned short bit = nr & 31UL;
 unsigned long mask;
 unsigned long flags;

 a += nr >> 5;
 mask = 1UL << bit;
 __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory");
 *a |= mask;
 raw_local_irq_restore(flags);

}
# 88 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
static inline __attribute__((always_inline)) void clear_bit(unsigned long nr, volatile unsigned long *addr)
{
# 109 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
 volatile unsigned long *a = addr;
 unsigned short bit = nr & 31UL;
 unsigned long mask;
 unsigned long flags;

  a += nr >> 5;
  mask = 1UL << bit;
  __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory");
  *a &= ~mask;
  raw_local_irq_restore(flags);

}
# 130 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
static inline __attribute__((always_inline)) void clear_bit_unlock(unsigned long nr, volatile unsigned long *addr)
{
 __asm__ __volatile__("   \n" : : : "memory");
 clear_bit(nr, addr);
}
# 145 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
static inline __attribute__((always_inline)) void change_bit(unsigned long nr, volatile unsigned long *addr)
{
 unsigned short bit = nr & 31UL;
# 167 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
  volatile unsigned long *a = addr;
  unsigned long mask;
  unsigned long flags;

  a += nr >> 5;
  mask = 1UL << bit;
  __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory");
  *a ^= mask;
  raw_local_irq_restore(flags);

}
# 187 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
static inline __attribute__((always_inline)) int test_and_set_bit(unsigned long nr,
 volatile unsigned long *addr)
{
# 221 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
 volatile unsigned long *a = addr;
 unsigned short bit = nr & 31UL;
 unsigned long res;
 unsigned long mask;
 unsigned long flags;

  a += nr >> 5;
  mask = 1UL << bit;
  __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory");
  res = (mask & *a);
  *a |= mask;
  raw_local_irq_restore(flags);


 return res != 0;
}
# 246 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
static inline __attribute__((always_inline)) int test_and_set_bit_lock(unsigned long nr,
 volatile unsigned long *addr)
{
# 280 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
 volatile unsigned long *a = addr;
 unsigned short bit = nr & 31UL;
 unsigned long res;
 unsigned long mask;
 unsigned long flags;

  a += nr >> 5;
  mask = 1UL << bit;
  __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory");
  res = (mask & *a);
  *a |= mask;
  raw_local_irq_restore(flags);


 return res != 0;
}
# 304 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
static inline __attribute__((always_inline)) int test_and_clear_bit(unsigned long nr,
 volatile unsigned long *addr)
{
# 339 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
 unsigned short bit = nr & 31UL;
 unsigned long res;
    volatile unsigned long *a = addr;
    unsigned long mask;
    unsigned long flags;

  a += nr >> 5;
  mask = 1UL << bit;
  __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory");
  res = (mask & *a);
  *a &= ~mask;
  raw_local_irq_restore(flags);


 return res != 0;
}
# 364 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
static inline __attribute__((always_inline)) int test_and_change_bit(unsigned long nr,
 volatile unsigned long *addr)
{
# 398 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
 unsigned short bit = nr & 31UL;
 unsigned long res;
    volatile unsigned long *a = addr;
    unsigned long mask;
    unsigned long flags;

  a += nr >> 5;
  mask = 1UL << bit;
  __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory");
  res = (mask & *a);
  *a ^= mask;
  raw_local_irq_restore(flags);



 return res != 0;
}

# 1 "include/asm-generic/bitops/non-atomic.h" 1
# 15 "include/asm-generic/bitops/non-atomic.h"
static inline __attribute__((always_inline)) void __set_bit(int nr, volatile unsigned long *addr)
{
 unsigned long mask = (1UL << ((nr) % 32));
 unsigned long *p = ((unsigned long *)addr) + ((nr) / 32);

 *p |= mask;
}

static inline __attribute__((always_inline)) void __clear_bit(int nr, volatile unsigned long *addr)
{
 unsigned long mask = (1UL << ((nr) % 32));
 unsigned long *p = ((unsigned long *)addr) + ((nr) / 32);

 *p &= ~mask;
}
# 40 "include/asm-generic/bitops/non-atomic.h"
static inline __attribute__((always_inline)) void __change_bit(int nr, volatile unsigned long *addr)
{
 unsigned long mask = (1UL << ((nr) % 32));
 unsigned long *p = ((unsigned long *)addr) + ((nr) / 32);

 *p ^= mask;
}
# 57 "include/asm-generic/bitops/non-atomic.h"
static inline __attribute__((always_inline)) int __test_and_set_bit(int nr, volatile unsigned long *addr)
{
 unsigned long mask = (1UL << ((nr) % 32));
 unsigned long *p = ((unsigned long *)addr) + ((nr) / 32);
 unsigned long old = *p;

 *p = old | mask;
 return (old & mask) != 0;
}
# 76 "include/asm-generic/bitops/non-atomic.h"
static inline __attribute__((always_inline)) int __test_and_clear_bit(int nr, volatile unsigned long *addr)
{
 unsigned long mask = (1UL << ((nr) % 32));
 unsigned long *p = ((unsigned long *)addr) + ((nr) / 32);
 unsigned long old = *p;

 *p = old & ~mask;
 return (old & mask) != 0;
}


static inline __attribute__((always_inline)) int __test_and_change_bit(int nr,
         volatile unsigned long *addr)
{
 unsigned long mask = (1UL << ((nr) % 32));
 unsigned long *p = ((unsigned long *)addr) + ((nr) / 32);
 unsigned long old = *p;

 *p = old ^ mask;
 return (old & mask) != 0;
}






static inline __attribute__((always_inline)) int test_bit(int nr, const volatile unsigned long *addr)
{
 return 1UL & (addr[((nr) / 32)] >> (nr & (32 -1)));
}
# 417 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 2
# 427 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
static inline __attribute__((always_inline)) void __clear_bit_unlock(unsigned long nr, volatile unsigned long *addr)
{
 __asm__ __volatile__("   \n" : : : "memory");
 __clear_bit(nr, addr);
}





static inline __attribute__((always_inline)) unsigned long __fls(unsigned long word)
{
 int num;
# 456 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
 num = 32 - 1;

 if (!(word & (~0ul << (32 -16)))) {
  num -= 16;
  word <<= 16;
 }
 if (!(word & (~0ul << (32 -8)))) {
  num -= 8;
  word <<= 8;
 }
 if (!(word & (~0ul << (32 -4)))) {
  num -= 4;
  word <<= 4;
 }
 if (!(word & (~0ul << (32 -2)))) {
  num -= 2;
  word <<= 2;
 }
 if (!(word & (~0ul << (32 -1))))
  num -= 1;
 return num;
}
# 486 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
static inline __attribute__((always_inline)) unsigned long __ffs(unsigned long word)
{
 return __fls(word & -word);
}
# 498 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
static inline __attribute__((always_inline)) int fls(int x)
{
 int r;
# 510 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
 r = 32;
 if (!x)
  return 0;
 if (!(x & 0xffff0000u)) {
  x <<= 16;
  r -= 16;
 }
 if (!(x & 0xff000000u)) {
  x <<= 8;
  r -= 8;
 }
 if (!(x & 0xf0000000u)) {
  x <<= 4;
  r -= 4;
 }
 if (!(x & 0xc0000000u)) {
  x <<= 2;
  r -= 2;
 }
 if (!(x & 0x80000000u)) {
  x <<= 1;
  r -= 1;
 }
 return r;
}

# 1 "include/asm-generic/bitops/fls64.h" 1
# 18 "include/asm-generic/bitops/fls64.h"
static inline __attribute__((always_inline)) __attribute__((always_inline)) int fls64(__u64 x)
{
 __u32 h = x >> 32;
 if (h)
  return fls(h) + 32;
 return fls(x);
}
# 537 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 2
# 546 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h"
static inline __attribute__((always_inline)) int ffs(int word)
{
 if (!word)
  return 0;

 return fls(word & -word);
}

# 1 "include/asm-generic/bitops/ffz.h" 1
# 555 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 2
# 1 "include/asm-generic/bitops/find.h" 1
# 556 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 2



# 1 "include/asm-generic/bitops/sched.h" 1
# 12 "include/asm-generic/bitops/sched.h"
static inline __attribute__((always_inline)) int sched_find_first_bit(const unsigned long *b)
{
 if (b[0])
  return __ffs(b[0]);
 if (b[1])
  return __ffs(b[1]) + 32;
 if (b[2])
  return __ffs(b[2]) + 64;
 return __ffs(b[3]) + 96;
}
# 560 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 2
# 1 "include/asm-generic/bitops/hweight.h" 1





extern unsigned int hweight32(unsigned int w);
extern unsigned int hweight16(unsigned int w);
extern unsigned int hweight8(unsigned int w);
extern unsigned long hweight64(__u64 w);
# 561 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 2
# 1 "include/asm-generic/bitops/ext2-non-atomic.h" 1



# 1 "include/asm-generic/bitops/le.h" 1
# 45 "include/asm-generic/bitops/le.h"
extern unsigned long generic_find_next_zero_le_bit(const unsigned long *addr,
  unsigned long size, unsigned long offset);
extern unsigned long generic_find_next_le_bit(const unsigned long *addr,
  unsigned long size, unsigned long offset);
# 5 "include/asm-generic/bitops/ext2-non-atomic.h" 2
# 562 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 2
# 1 "include/asm-generic/bitops/ext2-atomic.h" 1
# 563 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 2
# 1 "include/asm-generic/bitops/minix.h" 1
# 564 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/bitops.h" 2
# 18 "include/linux/bitops.h" 2







static __inline__ __attribute__((always_inline)) int get_bitmask_order(unsigned int count)
{
 int order;

 order = fls(count);
 return order;
}

static __inline__ __attribute__((always_inline)) int get_count_order(unsigned int count)
{
 int order;

 order = fls(count) - 1;
 if (count & (count - 1))
  order++;
 return order;
}

static inline __attribute__((always_inline)) unsigned long hweight_long(unsigned long w)
{
 return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
}






static inline __attribute__((always_inline)) __u32 rol32(__u32 word, unsigned int shift)
{
 return (word << shift) | (word >> (32 - shift));
}






static inline __attribute__((always_inline)) __u32 ror32(__u32 word, unsigned int shift)
{
 return (word >> shift) | (word << (32 - shift));
}






static inline __attribute__((always_inline)) __u16 rol16(__u16 word, unsigned int shift)
{
 return (word << shift) | (word >> (16 - shift));
}






static inline __attribute__((always_inline)) __u16 ror16(__u16 word, unsigned int shift)
{
 return (word >> shift) | (word << (16 - shift));
}






static inline __attribute__((always_inline)) __u8 rol8(__u8 word, unsigned int shift)
{
 return (word << shift) | (word >> (8 - shift));
}






static inline __attribute__((always_inline)) __u8 ror8(__u8 word, unsigned int shift)
{
 return (word >> shift) | (word << (8 - shift));
}

static inline __attribute__((always_inline)) unsigned fls_long(unsigned long l)
{
 if (sizeof(l) == 4)
  return fls(l);
 return fls64(l);
}
# 123 "include/linux/bitops.h"
static inline __attribute__((always_inline)) unsigned long __ffs64(u64 word)
{

 if (((u32)word) == 0UL)
  return __ffs((u32)(word >> 32)) + 32;



 return __ffs((unsigned long)word);
}
# 166 "include/linux/bitops.h"
extern unsigned long find_last_bit(const unsigned long *addr,
       unsigned long size);
# 178 "include/linux/bitops.h"
extern unsigned long find_next_bit(const unsigned long *addr,
       unsigned long size, unsigned long offset);
# 188 "include/linux/bitops.h"
extern unsigned long find_next_zero_bit(const unsigned long *addr,
     unsigned long size,
     unsigned long offset);
# 26 "include/net/netfilter/nf_conntrack.h" 2

# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h" 1
# 19 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h"
# 1 "include/linux/linkage.h" 1




# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/linkage.h" 1
# 6 "include/linux/linkage.h" 2
# 20 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h" 2


# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/system.h" 1
# 19 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/system.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/addrspace.h" 1
# 13 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/addrspace.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic/spaces.h" 1
# 13 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic/spaces.h"
# 1 "include/linux/const.h" 1
# 14 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic/spaces.h" 2
# 14 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/addrspace.h" 2
# 20 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/system.h" 2

# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cmpxchg.h" 1
# 22 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/system.h" 2







extern void *resume(void *last, void *next, void *next_ti);

struct task_struct;







static inline __attribute__((always_inline)) unsigned long __xchg_u32(volatile int * m, unsigned int val)
{
 __u32 retval;
# 58 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/system.h"
  unsigned long flags;

  __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory");
  retval = *m;
  *m = val;
  raw_local_irq_restore(flags);


 __asm__ __volatile__("   \n" : : : "memory");
 return retval;
}

extern __u64 __xchg_u64_unsupported_on_32bit_kernels(volatile __u64 * m, __u64 val);




extern void __xchg_called_with_bad_pointer(void);

static inline __attribute__((always_inline)) __attribute__((always_inline)) unsigned long __xchg(unsigned long x, volatile void * ptr, int size)
{
 switch (size) {
 case 4:
  return __xchg_u32(ptr, x);
 case 8:
  return __xchg_u64_unsupported_on_32bit_kernels(ptr, x);
 }
 __xchg_called_with_bad_pointer();
 return x;
}



extern void set_handler(unsigned long offset, void *addr, unsigned long len);
extern void set_uncached_handler(unsigned long offset, void *addr, unsigned long len);

extern void *set_except_vector(int n, void *addr);
extern unsigned long ebase;
extern void per_cpu_trap_init(void);







extern unsigned long arch_align_stack(unsigned long sp);
# 23 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h" 2
# 50 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h"
static __inline__ __attribute__((always_inline)) void atomic_add(int i, atomic_t * v)
{
# 75 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h"
  unsigned long flags;

  __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory");
  v->counter += i;
  raw_local_irq_restore(flags);

}
# 90 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h"
static __inline__ __attribute__((always_inline)) void atomic_sub(int i, atomic_t * v)
{
# 113 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h"
  unsigned long flags;

  __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory");
  v->counter -= i;
  raw_local_irq_restore(flags);

}




static __inline__ __attribute__((always_inline)) int atomic_add_return(int i, atomic_t * v)
{
# 149 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h"
 int result;
    unsigned long flags;

  __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory");
  result = v->counter;
  result += i;
  v->counter = result;
  raw_local_irq_restore(flags);


 return result;
}

static __inline__ __attribute__((always_inline)) int atomic_sub_return(int i, atomic_t * v)
{
# 188 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h"
    unsigned long flags;
 int result;

  __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory");
  result = v->counter;
  result -= i;
  v->counter = result;
  raw_local_irq_restore(flags);



 return result;
}
# 210 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h"
static __inline__ __attribute__((always_inline)) int atomic_sub_if_positive(int i, atomic_t * v)
{
# 240 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h"
    unsigned long flags;
 int result;

  __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory");
  result = v->counter;
  result -= i;
  if (result >= 0)
   v->counter = result;
  raw_local_irq_restore(flags);


 return result;
}
# 266 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h"
static __inline__ __attribute__((always_inline)) int atomic_add_unless(atomic_t *v, int a, int u)
{
 int c, old;
 c = ((v)->counter);
 for (;;) {
  if (__builtin_expect(!!(c == (u)), 0))
   break;
  old = (({ __typeof__(&(((v))->counter)) __ptr = (&(((v))->counter)); __typeof__(*(&(((v))->counter))) __old = ((c)); __typeof__(*(&(((v))->counter))) __new = ((c + (a))); __typeof__(*(&(((v))->counter))) __res = 0; __asm__ __volatile__("   \n" : : : "memory"); __res = ({ __typeof(*(__ptr)) __ret; unsigned long __flags; __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (__flags) : : "memory"); __ret = *__ptr; if (__ret == __old) *__ptr = __new; raw_local_irq_restore(__flags); __ret; }); __asm__ __volatile__("   \n" : : : "memory"); __res; }));
  if (__builtin_expect(!!(old == c), 1))
   break;
  c = old;
 }
 return c != (u);
}
# 358 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h"
# 1 "include/asm-generic/atomic-long.h" 1
# 141 "include/asm-generic/atomic-long.h"
typedef atomic_t atomic_long_t;


static inline __attribute__((always_inline)) long atomic_long_read(atomic_long_t *l)
{
 atomic_t *v = (atomic_t *)l;

 return (long)((v)->counter);
}

static inline __attribute__((always_inline)) void atomic_long_set(atomic_long_t *l, long i)
{
 atomic_t *v = (atomic_t *)l;

 ((v)->counter = (i));
}

static inline __attribute__((always_inline)) void atomic_long_inc(atomic_long_t *l)
{
 atomic_t *v = (atomic_t *)l;

 atomic_add(1, (v));
}

static inline __attribute__((always_inline)) void atomic_long_dec(atomic_long_t *l)
{
 atomic_t *v = (atomic_t *)l;

 atomic_sub(1, (v));
}

static inline __attribute__((always_inline)) void atomic_long_add(long i, atomic_long_t *l)
{
 atomic_t *v = (atomic_t *)l;

 atomic_add(i, v);
}

static inline __attribute__((always_inline)) void atomic_long_sub(long i, atomic_long_t *l)
{
 atomic_t *v = (atomic_t *)l;

 atomic_sub(i, v);
}

static inline __attribute__((always_inline)) int atomic_long_sub_and_test(long i, atomic_long_t *l)
{
 atomic_t *v = (atomic_t *)l;

 return (atomic_sub_return((i), (v)) == 0);
}

static inline __attribute__((always_inline)) int atomic_long_dec_and_test(atomic_long_t *l)
{
 atomic_t *v = (atomic_t *)l;

 return (atomic_sub_return(1, (v)) == 0);
}

static inline __attribute__((always_inline)) int atomic_long_inc_and_test(atomic_long_t *l)
{
 atomic_t *v = (atomic_t *)l;

 return (atomic_add_return(1, (v)) == 0);
}

static inline __attribute__((always_inline)) int atomic_long_add_negative(long i, atomic_long_t *l)
{
 atomic_t *v = (atomic_t *)l;

 return (atomic_add_return(i, (v)) < 0);
}

static inline __attribute__((always_inline)) long atomic_long_add_return(long i, atomic_long_t *l)
{
 atomic_t *v = (atomic_t *)l;

 return (long)atomic_add_return(i, v);
}

static inline __attribute__((always_inline)) long atomic_long_sub_return(long i, atomic_long_t *l)
{
 atomic_t *v = (atomic_t *)l;

 return (long)atomic_sub_return(i, v);
}

static inline __attribute__((always_inline)) long atomic_long_inc_return(atomic_long_t *l)
{
 atomic_t *v = (atomic_t *)l;

 return (long)atomic_add_return(1, (v));
}

static inline __attribute__((always_inline)) long atomic_long_dec_return(atomic_long_t *l)
{
 atomic_t *v = (atomic_t *)l;

 return (long)atomic_sub_return(1, (v));
}

static inline __attribute__((always_inline)) long atomic_long_add_unless(atomic_long_t *l, long a, long u)
{
 atomic_t *v = (atomic_t *)l;

 return (long)atomic_add_unless(v, a, u);
}
# 359 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/atomic.h" 2
# 28 "include/net/netfilter/nf_conntrack.h" 2

# 1 "include/linux/netfilter/nf_conntrack_tcp.h" 1







enum tcp_conntrack {
 TCP_CONNTRACK_NONE,
 TCP_CONNTRACK_SYN_SENT,
 TCP_CONNTRACK_SYN_RECV,
 TCP_CONNTRACK_ESTABLISHED,
 TCP_CONNTRACK_FIN_WAIT,
 TCP_CONNTRACK_CLOSE_WAIT,
 TCP_CONNTRACK_LAST_ACK,
 TCP_CONNTRACK_TIME_WAIT,
 TCP_CONNTRACK_CLOSE,
 TCP_CONNTRACK_LISTEN,
 TCP_CONNTRACK_MAX,
 TCP_CONNTRACK_IGNORE
};
# 41 "include/linux/netfilter/nf_conntrack_tcp.h"
struct nf_ct_tcp_flags {
 __u8 flags;
 __u8 mask;
};



struct ip_ct_tcp_state {
 u_int32_t td_end;
 u_int32_t td_maxend;
 u_int32_t td_maxwin;
 u_int32_t td_maxack;
 u_int8_t td_scale;
 u_int8_t flags;
};

struct ip_ct_tcp
{
 struct ip_ct_tcp_state seen[2];
 u_int8_t state;

 u_int8_t last_dir;
 u_int8_t retrans;
 u_int8_t last_index;
 u_int32_t last_seq;
 u_int32_t last_ack;
 u_int32_t last_end;
 u_int16_t last_win;
};
# 30 "include/net/netfilter/nf_conntrack.h" 2
# 1 "include/linux/netfilter/nf_conntrack_dccp.h" 1




enum ct_dccp_states {
 CT_DCCP_NONE,
 CT_DCCP_REQUEST,
 CT_DCCP_RESPOND,
 CT_DCCP_PARTOPEN,
 CT_DCCP_OPEN,
 CT_DCCP_CLOSEREQ,
 CT_DCCP_CLOSING,
 CT_DCCP_TIMEWAIT,
 CT_DCCP_IGNORE,
 CT_DCCP_INVALID,
 __CT_DCCP_MAX
};


enum ct_dccp_roles {
 CT_DCCP_ROLE_CLIENT,
 CT_DCCP_ROLE_SERVER,
 __CT_DCCP_ROLE_MAX
};



# 1 "include/net/netfilter/nf_conntrack_tuple.h" 1
# 13 "include/net/netfilter/nf_conntrack_tuple.h"
# 1 "include/linux/netfilter/x_tables.h" 1
# 14 "include/linux/netfilter/x_tables.h"
struct xt_entry_match
{
 union {
  struct {
   __u16 match_size;


   char name[30 -1];

   __u8 revision;
  } user;
  struct {
   __u16 match_size;


   struct xt_match *match;
  } kernel;


  __u16 match_size;
 } u;

 unsigned char data[0];
};

struct xt_entry_target
{
 union {
  struct {
   __u16 target_size;


   char name[30 -1];

   __u8 revision;
  } user;
  struct {
   __u16 target_size;


   struct xt_target *target;
  } kernel;


  __u16 target_size;
 } u;

 unsigned char data[0];
};
# 72 "include/linux/netfilter/x_tables.h"
struct xt_standard_target
{
 struct xt_entry_target target;
 int verdict;
};



struct xt_get_revision
{
 char name[30 -1];

 __u8 revision;
};
# 98 "include/linux/netfilter/x_tables.h"
struct _xt_align
{
 __u8 u8;
 __u16 u16;
 __u32 u32;
 __u64 u64;
};
# 117 "include/linux/netfilter/x_tables.h"
struct xt_counters
{
 __u64 pcnt, bcnt;
};


struct xt_counters_info
{

 char name[32];

 unsigned int num_counters;


 struct xt_counters counters[0];
};
# 181 "include/linux/netfilter/x_tables.h"
# 1 "include/linux/netdevice.h" 1
# 28 "include/linux/netdevice.h"
# 1 "include/linux/if.h" 1
# 23 "include/linux/if.h"
# 1 "include/linux/socket.h" 1
# 11 "include/linux/socket.h"
struct __kernel_sockaddr_storage {
 unsigned short ss_family;

 char __data[128 - sizeof(unsigned short)];


} __attribute__ ((aligned((__alignof__ (struct sockaddr *)))));



# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/socket.h" 1
# 12 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/socket.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/sockios.h" 1
# 13 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/sockios.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/ioctl.h" 1
# 25 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/ioctl.h"
# 1 "include/asm-generic/ioctl.h" 1
# 73 "include/asm-generic/ioctl.h"
extern unsigned int __invalid_size_argument_for_IOC;
# 26 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/ioctl.h" 2
# 14 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/sockios.h" 2
# 13 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/socket.h" 2
# 97 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/socket.h"
enum sock_type {
 SOCK_DGRAM = 1,
 SOCK_STREAM = 2,
 SOCK_RAW = 3,
 SOCK_RDM = 4,
 SOCK_SEQPACKET = 5,
 SOCK_DCCP = 6,
 SOCK_PACKET = 10,
};
# 22 "include/linux/socket.h" 2
# 1 "include/linux/sockios.h" 1
# 23 "include/linux/socket.h" 2
# 1 "include/linux/uio.h" 1
# 16 "include/linux/uio.h"
struct iovec
{
 void *iov_base;
 __kernel_size_t iov_len;
};



struct kvec {
 void *iov_base;
 size_t iov_len;
};
# 45 "include/linux/uio.h"
static inline __attribute__((always_inline)) size_t iov_length(const struct iovec *iov, unsigned long nr_segs)
{
 unsigned long seg;
 size_t ret = 0;

 for (seg = 0; seg < nr_segs; seg++)
  ret += iov[seg].iov_len;
 return ret;
}

unsigned long iov_shorten(struct iovec *iov, unsigned long nr_segs, size_t to);
# 24 "include/linux/socket.h" 2





struct seq_file;
extern void socket_seq_show(struct seq_file *seq);



typedef unsigned short sa_family_t;





struct sockaddr {
 sa_family_t sa_family;
 char sa_data[14];
};

struct linger {
 int l_onoff;
 int l_linger;
};
# 58 "include/linux/socket.h"
struct msghdr {
 void * msg_name;
 int msg_namelen;
 struct iovec * msg_iov;
 __kernel_size_t msg_iovlen;
 void * msg_control;
 __kernel_size_t msg_controllen;
 unsigned msg_flags;
};







struct cmsghdr {
 __kernel_size_t cmsg_len;
        int cmsg_level;
        int cmsg_type;
};
# 131 "include/linux/socket.h"
static inline __attribute__((always_inline)) struct cmsghdr * __cmsg_nxthdr(void *__ctl, __kernel_size_t __size,
            struct cmsghdr *__cmsg)
{
 struct cmsghdr * __ptr;

 __ptr = (struct cmsghdr*)(((unsigned char *) __cmsg) + ( ((__cmsg->cmsg_len)+sizeof(long)-1) & ~(sizeof(long)-1) ));
 if ((unsigned long)((char*)(__ptr+1) - (char *) __ctl) > __size)
  return (struct cmsghdr *)0;

 return __ptr;
}

static inline __attribute__((always_inline)) struct cmsghdr * cmsg_nxthdr (struct msghdr *__msg, struct cmsghdr *__cmsg)
{
 return __cmsg_nxthdr(__msg->msg_control, __msg->msg_controllen, __cmsg);
}







struct ucred {
 __u32 pid;
 __u32 uid;
 __u32 gid;
};
# 311 "include/linux/socket.h"
extern int memcpy_fromiovec(unsigned char *kdata, struct iovec *iov, int len);
extern int memcpy_fromiovecend(unsigned char *kdata, struct iovec *iov,
    int offset, int len);
extern int csum_partial_copy_fromiovecend(unsigned char *kdata,
       struct iovec *iov,
       int offset,
       unsigned int len, __wsum *csump);

extern int verify_iovec(struct msghdr *m, struct iovec *iov, struct sockaddr *address, int mode);
extern int memcpy_toiovec(struct iovec *v, unsigned char *kdata, int len);
extern int move_addr_to_user(struct sockaddr *kaddr, int klen, void *uaddr, int *ulen);
extern int move_addr_to_kernel(void *uaddr, int ulen, struct sockaddr *kaddr);
extern int put_cmsg(struct msghdr*, int level, int type, int len, void *data);
# 24 "include/linux/if.h" 2




# 1 "include/linux/hdlc/ioctl.h" 1
# 37 "include/linux/hdlc/ioctl.h"
typedef struct {
 unsigned int clock_rate;
 unsigned int clock_type;
 unsigned short loopback;
} sync_serial_settings;

typedef struct {
 unsigned int clock_rate;
 unsigned int clock_type;
 unsigned short loopback;
 unsigned int slot_map;
} te1_settings;

typedef struct {
 unsigned short encoding;
 unsigned short parity;
} raw_hdlc_proto;

typedef struct {
 unsigned int t391;
 unsigned int t392;
 unsigned int n391;
 unsigned int n392;
 unsigned int n393;
 unsigned short lmi;
 unsigned short dce;
} fr_proto;

typedef struct {
 unsigned int dlci;
} fr_proto_pvc;

typedef struct {
 unsigned int dlci;
 char master[16];
}fr_proto_pvc_info;

typedef struct {
    unsigned int interval;
    unsigned int timeout;
} cisco_proto;
# 29 "include/linux/if.h" 2
# 99 "include/linux/if.h"
enum {
 IF_OPER_UNKNOWN,
 IF_OPER_NOTPRESENT,
 IF_OPER_DOWN,
 IF_OPER_LOWERLAYERDOWN,
 IF_OPER_TESTING,
 IF_OPER_DORMANT,
 IF_OPER_UP,
};


enum {
 IF_LINK_MODE_DEFAULT,
 IF_LINK_MODE_DORMANT,
};
# 125 "include/linux/if.h"
struct ifmap
{
 unsigned long mem_start;
 unsigned long mem_end;
 unsigned short base_addr;
 unsigned char irq;
 unsigned char dma;
 unsigned char port;

};

struct if_settings
{
 unsigned int type;
 unsigned int size;
 union {

  raw_hdlc_proto *raw_hdlc;
  cisco_proto *cisco;
  fr_proto *fr;
  fr_proto_pvc *fr_pvc;
  fr_proto_pvc_info *fr_pvc_info;


  sync_serial_settings *sync;
  te1_settings *te1;
 } ifs_ifsu;
};
# 161 "include/linux/if.h"
struct ifreq
{

 union
 {
  char ifrn_name[16];
 } ifr_ifrn;

 union {
  struct sockaddr ifru_addr;
  struct sockaddr ifru_dstaddr;
  struct sockaddr ifru_broadaddr;
  struct sockaddr ifru_netmask;
  struct sockaddr ifru_hwaddr;
  short ifru_flags;
  int ifru_ivalue;
  int ifru_mtu;
  struct ifmap ifru_map;
  char ifru_slave[16];
  char ifru_newname[16];
  void * ifru_data;
  struct if_settings ifru_settings;
 } ifr_ifru;
};
# 211 "include/linux/if.h"
struct ifconf
{
 int ifc_len;
 union
 {
  char *ifcu_buf;
  struct ifreq *ifcu_req;
 } ifc_ifcu;
};
# 29 "include/linux/netdevice.h" 2
# 1 "include/linux/if_ether.h" 1
# 114 "include/linux/if_ether.h"
struct ethhdr {
 unsigned char h_dest[6];
 unsigned char h_source[6];
 __be16 h_proto;
} __attribute__((packed));


# 1 "include/linux/skbuff.h" 1
# 17 "include/linux/skbuff.h"
# 1 "include/linux/kernel.h" 1
# 10 "include/linux/kernel.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/toolchain/rsdk-1.3.6-4181-EB-2.6.30-0.9.30/bin/../lib/gcc/mips-linux/3.4.6-1.3.6/include/stdarg.h" 1 3 4
# 43 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/toolchain/rsdk-1.3.6-4181-EB-2.6.30-0.9.30/bin/../lib/gcc/mips-linux/3.4.6-1.3.6/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 105 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/toolchain/rsdk-1.3.6-4181-EB-2.6.30-0.9.30/bin/../lib/gcc/mips-linux/3.4.6-1.3.6/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 11 "include/linux/kernel.h" 2





# 1 "include/linux/log2.h" 1
# 21 "include/linux/log2.h"
extern __attribute__((const, noreturn))
int ____ilog2_NaN(void);
# 31 "include/linux/log2.h"
static inline __attribute__((always_inline)) __attribute__((const))
int __ilog2_u32(u32 n)
{
 return fls(n) - 1;
}



static inline __attribute__((always_inline)) __attribute__((const))
int __ilog2_u64(u64 n)
{
 return fls64(n) - 1;
}







static inline __attribute__((always_inline)) __attribute__((const))
bool is_power_of_2(unsigned long n)
{
 return (n != 0 && ((n & (n - 1)) == 0));
}




static inline __attribute__((always_inline)) __attribute__((const))
unsigned long __roundup_pow_of_two(unsigned long n)
{
 return 1UL << fls_long(n - 1);
}




static inline __attribute__((always_inline)) __attribute__((const))
unsigned long __rounddown_pow_of_two(unsigned long n)
{
 return 1UL << (fls_long(n) - 1);
}
# 17 "include/linux/kernel.h" 2

# 1 "include/linux/ratelimit.h" 1


# 1 "include/linux/param.h" 1



# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/param.h" 1
# 5 "include/linux/param.h" 2
# 4 "include/linux/ratelimit.h" 2




struct ratelimit_state {
 int interval;
 int burst;
 int printed;
 int missed;
 unsigned long begin;
};




extern int __ratelimit(struct ratelimit_state *rs);
# 19 "include/linux/kernel.h" 2
# 1 "include/linux/dynamic_debug.h" 1







extern long long dynamic_debug_enabled;
extern long long dynamic_debug_enabled2;






struct _ddebug {




 const char *modname;
 const char *function;
 const char *filename;
 const char *format;
 char primary_hash;
 char secondary_hash;
 unsigned int lineno:24;







 unsigned int flags:8;
} __attribute__((aligned(8)));


int ddebug_add_module(struct _ddebug *tab, unsigned int n,
    const char *modname);
# 79 "include/linux/dynamic_debug.h"
static inline __attribute__((always_inline)) int ddebug_remove_module(char *mod)
{
 return 0;
}
# 20 "include/linux/kernel.h" 2



extern const char linux_banner[];
extern const char linux_proc_banner[];
# 107 "include/linux/kernel.h"
extern int console_printk[];






struct completion;
struct pt_regs;
struct user;
# 153 "include/linux/kernel.h"
static inline __attribute__((always_inline)) void might_fault(void)
{
 do { do { } while (0); } while (0);
}


extern struct atomic_notifier_head panic_notifier_list;
extern long (*panic_blink)(long time);
 void panic(const char * fmt, ...)
 __attribute__ ((noreturn, format (printf, 1, 2))) ;
extern void oops_enter(void);
extern void oops_exit(void);
extern int oops_may_print(void);
 void do_exit(long error_code)
 __attribute__((noreturn));
 void complete_and_exit(struct completion *, long)
 __attribute__((noreturn));
extern unsigned long simple_strtoul(const char *,char **,unsigned int);
extern long simple_strtol(const char *,char **,unsigned int);
extern unsigned long long simple_strtoull(const char *,char **,unsigned int);
extern long long simple_strtoll(const char *,char **,unsigned int);
extern int strict_strtoul(const char *, unsigned int, unsigned long *);
extern int strict_strtol(const char *, unsigned int, long *);
extern int strict_strtoull(const char *, unsigned int, unsigned long long *);
extern int strict_strtoll(const char *, unsigned int, long long *);
extern int sprintf(char * buf, const char * fmt, ...)
 __attribute__ ((format (printf, 2, 3)));
extern int vsprintf(char *buf, const char *, va_list)
 __attribute__ ((format (printf, 2, 0)));
extern int snprintf(char * buf, size_t size, const char * fmt, ...)
 __attribute__ ((format (printf, 3, 4)));
extern int vsnprintf(char *buf, size_t size, const char *fmt, va_list args)
 __attribute__ ((format (printf, 3, 0)));
extern int scnprintf(char * buf, size_t size, const char * fmt, ...)
 __attribute__ ((format (printf, 3, 4)));
extern int vscnprintf(char *buf, size_t size, const char *fmt, va_list args)
 __attribute__ ((format (printf, 3, 0)));
extern char *kasprintf(gfp_t gfp, const char *fmt, ...)
 __attribute__ ((format (printf, 2, 3)));
extern char *kvasprintf(gfp_t gfp, const char *fmt, va_list args);

extern int sscanf(const char *, const char *, ...)
 __attribute__ ((format (scanf, 2, 3)));
extern int vsscanf(const char *, const char *, va_list)
 __attribute__ ((format (scanf, 2, 0)));

extern int get_option(char **str, int *pint);
extern char *get_options(const char *str, int nints, int *ints);
extern unsigned long long memparse(const char *ptr, char **retptr);

extern int core_kernel_text(unsigned long addr);
extern int __kernel_text_address(unsigned long addr);
extern int kernel_text_address(unsigned long addr);
extern int func_ptr_is_kernel_text(void *ptr);

struct pid;
extern struct pid *session_of_pgrp(struct pid *pgrp);
# 236 "include/linux/kernel.h"
 int vprintk(const char *fmt, va_list args)
 __attribute__ ((format (printf, 1, 0)));
# 270 "include/linux/kernel.h"
static inline __attribute__((always_inline)) int printk(const char *s, ...)
 __attribute__ ((format (printf, 1, 2)));
 int panic_printk(const char * fmt, ...)
 __attribute__ ((format (printf, 1, 2))) ;
static inline __attribute__((always_inline)) int printk(const char *s, ...) { return 0; }
static inline __attribute__((always_inline)) int printk_ratelimit(void) { return 0; }
static inline __attribute__((always_inline)) bool printk_timed_ratelimit(unsigned long *caller_jiffies, unsigned int interval_msec) { return false; }






static inline __attribute__((always_inline)) void log_buf_kexec_setup(void)
{
}


extern int printk_needs_cpu(int cpu);
extern void printk_tick(void);

extern void __attribute__((format(printf, 1, 2)))
 early_printk(const char *fmt, ...);

unsigned long int_sqrt(unsigned long);

static inline __attribute__((always_inline)) void console_silent(void)
{
 (console_printk[0]) = 0;
}

static inline __attribute__((always_inline)) void console_verbose(void)
{
 if ((console_printk[0]))
  (console_printk[0]) = 15;
}

extern void bust_spinlocks(int yes);
extern void wake_up_klogd(void);
extern int oops_in_progress;
extern int panic_timeout;
extern int panic_on_oops;
extern int panic_on_unrecovered_nmi;
extern const char *print_tainted(void);
extern void add_taint(unsigned flag);
extern int test_taint(unsigned flag);
extern unsigned long get_taint(void);
extern int root_mountflags;


extern enum system_states {
 SYSTEM_BOOTING,
 SYSTEM_RUNNING,
 SYSTEM_HALT,
 SYSTEM_POWER_OFF,
 SYSTEM_RESTART,
 SYSTEM_SUSPEND_DISK,
} system_state;
# 341 "include/linux/kernel.h"
extern void dump_stack(void) ;

enum {
 DUMP_PREFIX_NONE,
 DUMP_PREFIX_ADDRESS,
 DUMP_PREFIX_OFFSET
};
extern void hex_dump_to_buffer(const void *buf, size_t len,
    int rowsize, int groupsize,
    char *linebuf, size_t linebuflen, bool ascii);
extern void print_hex_dump(const char *level, const char *prefix_str,
    int prefix_type, int rowsize, int groupsize,
    const void *buf, size_t len, bool ascii);
extern void print_hex_dump_bytes(const char *prefix_str, int prefix_type,
   const void *buf, size_t len);

extern const char hex_asc[];



static inline __attribute__((always_inline)) char *pack_hex_byte(char *buf, u8 byte)
{
 *buf++ = hex_asc[((byte) & 0xf0) >> 4];
 *buf++ = hex_asc[((byte) & 0x0f)];
 return buf;
}
# 438 "include/linux/kernel.h"
static inline __attribute__((always_inline)) void tracing_on(void) { }
static inline __attribute__((always_inline)) void tracing_off(void) { }
static inline __attribute__((always_inline)) void tracing_off_permanent(void) { }
static inline __attribute__((always_inline)) int tracing_is_on(void) { return 0; }
# 524 "include/linux/kernel.h"
static inline __attribute__((always_inline)) void
ftrace_special(unsigned long arg1, unsigned long arg2, unsigned long arg3) { }
static inline __attribute__((always_inline)) int
trace_printk(const char *fmt, ...) __attribute__ ((format (printf, 1, 2)));

static inline __attribute__((always_inline)) void tracing_start(void) { }
static inline __attribute__((always_inline)) void tracing_stop(void) { }
static inline __attribute__((always_inline)) void ftrace_off_permanent(void) { }
static inline __attribute__((always_inline)) int
trace_printk(const char *fmt, ...)
{
 return 0;
}
static inline __attribute__((always_inline)) int
ftrace_vprintk(const char *fmt, va_list ap)
{
 return 0;
}
static inline __attribute__((always_inline)) void ftrace_dump(void) { }
# 660 "include/linux/kernel.h"
struct sysinfo;
extern int do_sysinfo(struct sysinfo *info);




struct sysinfo {
 long uptime;
 unsigned long loads[3];
 unsigned long totalram;
 unsigned long freeram;
 unsigned long sharedram;
 unsigned long bufferram;
 unsigned long totalswap;
 unsigned long freeswap;
 unsigned short procs;
 unsigned short pad;
 unsigned long totalhigh;
 unsigned long freehigh;
 unsigned int mem_unit;
 char _f[20-2*sizeof(long)-sizeof(int)];
};
# 18 "include/linux/skbuff.h" 2

# 1 "include/linux/time.h" 1






# 1 "include/linux/cache.h" 1
# 8 "include/linux/time.h" 2
# 1 "include/linux/seqlock.h" 1
# 29 "include/linux/seqlock.h"
# 1 "include/linux/spinlock.h" 1
# 50 "include/linux/spinlock.h"
# 1 "include/linux/preempt.h" 1
# 9 "include/linux/preempt.h"
# 1 "include/linux/thread_info.h" 1
# 12 "include/linux/thread_info.h"
struct timespec;
struct compat_timespec;




struct restart_block {
 long (*fn)(struct restart_block *);
 union {
  struct {
   unsigned long arg0, arg1, arg2, arg3;
  };

  struct {
   u32 *uaddr;
   u32 val;
   u32 flags;
   u32 bitset;
   u64 time;
  } futex;

  struct {
   clockid_t index;
   struct timespec *rmtp;



   u64 expires;
  } nanosleep;

  struct {
   struct pollfd *ufds;
   int nfds;
   int has_timeout;
   unsigned long tv_sec;
   unsigned long tv_nsec;
  } poll;
 };
};

extern long do_no_restart_syscall(struct restart_block *parm);


# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/thread_info.h" 1
# 15 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/thread_info.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/processor.h" 1
# 14 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/processor.h"
# 1 "include/linux/cpumask.h" 1
# 141 "include/linux/cpumask.h"
# 1 "include/linux/threads.h" 1
# 142 "include/linux/cpumask.h" 2
# 1 "include/linux/bitmap.h" 1







# 1 "include/linux/string.h" 1
# 15 "include/linux/string.h"
extern char *strndup_user(const char *, long);
extern void *memdup_user(const void *, size_t);
extern char * strtok(char *,const char *);




# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/string.h" 1
# 21 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/string.h"
static __inline__ __attribute__((always_inline)) char *strcpy(char *__dest, __const__ char *__src)
{
  char *__xdest = __dest;

  __asm__ __volatile__(
 ".set\tnoreorder\n\t"
 ".set\tnoat\n"
 "1:\tlbu\t$1,(%1)\n\t"
 "addiu\t%1,1\n\t"
 "sb\t$1,(%0)\n\t"
 "bnez\t$1,1b\n\t"
 "addiu\t%0,1\n\t"
 ".set\tat\n\t"
 ".set\treorder"
 : "=r" (__dest), "=r" (__src)
        : "0" (__dest), "1" (__src)
 : "memory");

  return __xdest;
}


static __inline__ __attribute__((always_inline)) char *strncpy(char *__dest, __const__ char *__src, size_t __n)
{
  char *__xdest = __dest;

  if (__n == 0)
    return __xdest;

  __asm__ __volatile__(
 ".set\tnoreorder\n\t"
 ".set\tnoat\n"
 "1:\tlbu\t$1,(%1)\n\t"
 "subu\t%2,1\n\t"
 "sb\t$1,(%0)\n\t"
 "beqz\t$1,2f\n\t"
 "addiu\t%0,1\n\t"
 "bnez\t%2,1b\n\t"
 "addiu\t%1,1\n"
 "2:\n\t"
 ".set\tat\n\t"
 ".set\treorder"
        : "=r" (__dest), "=r" (__src), "=r" (__n)
        : "0" (__dest), "1" (__src), "2" (__n)
        : "memory");

  return __xdest;
}


static __inline__ __attribute__((always_inline)) int strcmp(__const__ char *__cs, __const__ char *__ct)
{
  int __res;

  __asm__ __volatile__(
 ".set\tnoreorder\n\t"
 ".set\tnoat\n\t"
 "lbu\t%2,(%0)\n"
 "1:\tlbu\t$1,(%1)\n\t"
 "addiu\t%0,1\n\t"
 "bne\t$1,%2,2f\n\t"
 "addiu\t%1,1\n\t"
 "bnez\t%2,1b\n\t"
 "lbu\t%2,(%0)\n\t"

 "nop\n\t"

 "move\t%2,$1\n"
 "2:\tsubu\t%2,$1\n"
 "3:\t.set\tat\n\t"
 ".set\treorder"
 : "=r" (__cs), "=r" (__ct), "=r" (__res)
 : "0" (__cs), "1" (__ct), "m" (*__cs), "m" (*__ct));

  return __res;
}




static __inline__ __attribute__((always_inline)) int
strncmp(__const__ char *__cs, __const__ char *__ct, size_t __count)
{
 int __res;

 __asm__ __volatile__(
 ".set\tnoreorder\n\t"
 ".set\tnoat\n"
 "1:\tlbu\t%3,(%0)\n\t"
 "beqz\t%2,2f\n\t"
 "lbu\t$1,(%1)\n\t"
 "subu\t%2,1\n\t"
 "bne\t$1,%3,3f\n\t"
 "addiu\t%0,1\n\t"
 "bnez\t%3,1b\n\t"
 "addiu\t%1,1\n"
 "2:\n\t"

 "nop\n\t"

 "move\t%3,$1\n"
 "3:\tsubu\t%3,$1\n\t"
 ".set\tat\n\t"
 ".set\treorder"
 : "=r" (__cs), "=r" (__ct), "=r" (__count), "=r" (__res)
 : "0" (__cs), "1" (__ct), "2" (__count), "m" (*__cs), "m" (*__ct));

 return __res;
}


extern void *memset(void *__s, int __c, size_t __count);


extern void *memcpy(void *__to, __const__ void *__from, size_t __n);


extern void *memmove(void *__dest, __const__ void *__src, size_t __n);
# 23 "include/linux/string.h" 2
# 31 "include/linux/string.h"
size_t strlcpy(char *, const char *, size_t);


extern char * strcat(char *, const char *);


extern char * strncat(char *, const char *, __kernel_size_t);


extern size_t strlcat(char *, const char *, __kernel_size_t);
# 49 "include/linux/string.h"
extern int strnicmp(const char *, const char *, __kernel_size_t);


extern int strcasecmp(const char *s1, const char *s2);


extern int strncasecmp(const char *s1, const char *s2, size_t n);


extern char * strchr(const char *,int);


extern char * strnchr(const char *, size_t, int);


extern char * strrchr(const char *,int);

extern char * strstrip(char *);

extern char * strstr(const char *,const char *);


extern __kernel_size_t strlen(const char *);


extern __kernel_size_t strnlen(const char *,__kernel_size_t);


extern char * strpbrk(const char *,const char *);


extern char * strsep(char **,const char *);


extern __kernel_size_t strspn(const char *,const char *);


extern __kernel_size_t strcspn(const char *,const char *);
# 99 "include/linux/string.h"
extern void * memscan(void *,int,__kernel_size_t);


extern int memcmp(const void *,const void *,__kernel_size_t);


extern void * memchr(const void *,int,__kernel_size_t);


extern char *kstrdup(const char *s, gfp_t gfp);
extern char *kstrndup(const char *s, size_t len, gfp_t gfp);
extern void *kmemdup(const void *src, size_t len, gfp_t gfp);

extern char **argv_split(gfp_t gfp, const char *str, int *argcp);
extern void argv_free(char **argv);

extern bool sysfs_streq(const char *s1, const char *s2);







extern ssize_t memory_read_from_buffer(void *to, size_t count, loff_t *ppos,
   const void *from, size_t available);






static inline __attribute__((always_inline)) bool strstarts(const char *str, const char *prefix)
{
 return strncmp(str, prefix, strlen(prefix)) == 0;
}
# 9 "include/linux/bitmap.h" 2
# 87 "include/linux/bitmap.h"
extern int __bitmap_empty(const unsigned long *bitmap, int bits);
extern int __bitmap_full(const unsigned long *bitmap, int bits);
extern int __bitmap_equal(const unsigned long *bitmap1,
                 const unsigned long *bitmap2, int bits);
extern void __bitmap_complement(unsigned long *dst, const unsigned long *src,
   int bits);
extern void __bitmap_shift_right(unsigned long *dst,
                        const unsigned long *src, int shift, int bits);
extern void __bitmap_shift_left(unsigned long *dst,
                        const unsigned long *src, int shift, int bits);
extern int __bitmap_and(unsigned long *dst, const unsigned long *bitmap1,
   const unsigned long *bitmap2, int bits);
extern void __bitmap_or(unsigned long *dst, const unsigned long *bitmap1,
   const unsigned long *bitmap2, int bits);
extern void __bitmap_xor(unsigned long *dst, const unsigned long *bitmap1,
   const unsigned long *bitmap2, int bits);
extern int __bitmap_andnot(unsigned long *dst, const unsigned long *bitmap1,
   const unsigned long *bitmap2, int bits);
extern int __bitmap_intersects(const unsigned long *bitmap1,
   const unsigned long *bitmap2, int bits);
extern int __bitmap_subset(const unsigned long *bitmap1,
   const unsigned long *bitmap2, int bits);
extern int __bitmap_weight(const unsigned long *bitmap, int bits);

extern int bitmap_scnprintf(char *buf, unsigned int len,
   const unsigned long *src, int nbits);
extern int __bitmap_parse(const char *buf, unsigned int buflen, int is_user,
   unsigned long *dst, int nbits);
extern int bitmap_parse_user(const char *ubuf, unsigned int ulen,
   unsigned long *dst, int nbits);
extern int bitmap_scnlistprintf(char *buf, unsigned int len,
   const unsigned long *src, int nbits);
extern int bitmap_parselist(const char *buf, unsigned long *maskp,
   int nmaskbits);
extern void bitmap_remap(unsigned long *dst, const unsigned long *src,
  const unsigned long *old, const unsigned long *new, int bits);
extern int bitmap_bitremap(int oldbit,
  const unsigned long *old, const unsigned long *new, int bits);
extern void bitmap_onto(unsigned long *dst, const unsigned long *orig,
  const unsigned long *relmap, int bits);
extern void bitmap_fold(unsigned long *dst, const unsigned long *orig,
  int sz, int bits);
extern int bitmap_find_free_region(unsigned long *bitmap, int bits, int order);
extern void bitmap_release_region(unsigned long *bitmap, int pos, int order);
extern int bitmap_allocate_region(unsigned long *bitmap, int pos, int order);
extern void bitmap_copy_le(void *dst, const unsigned long *src, int nbits);
# 143 "include/linux/bitmap.h"
static inline __attribute__((always_inline)) void bitmap_zero(unsigned long *dst, int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  *dst = 0UL;
 else {
  int len = (((nbits) + (8 * sizeof(long)) - 1) / (8 * sizeof(long))) * sizeof(unsigned long);
  memset(dst, 0, len);
 }
}

static inline __attribute__((always_inline)) void bitmap_fill(unsigned long *dst, int nbits)
{
 size_t nlongs = (((nbits) + (8 * sizeof(long)) - 1) / (8 * sizeof(long)));
 if (!(__builtin_constant_p(nbits) && (nbits) <= 32)) {
  int len = (nlongs - 1) * sizeof(unsigned long);
  memset(dst, 0xff, len);
 }
 dst[nlongs - 1] = ( ((nbits) % 32) ? (1UL<<((nbits) % 32))-1 : ~0UL );
}

static inline __attribute__((always_inline)) void bitmap_copy(unsigned long *dst, const unsigned long *src,
   int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  *dst = *src;
 else {
  int len = (((nbits) + (8 * sizeof(long)) - 1) / (8 * sizeof(long))) * sizeof(unsigned long);
  memcpy(dst, src, len);
 }
}

static inline __attribute__((always_inline)) int bitmap_and(unsigned long *dst, const unsigned long *src1,
   const unsigned long *src2, int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  return (*dst = *src1 & *src2) != 0;
 return __bitmap_and(dst, src1, src2, nbits);
}

static inline __attribute__((always_inline)) void bitmap_or(unsigned long *dst, const unsigned long *src1,
   const unsigned long *src2, int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  *dst = *src1 | *src2;
 else
  __bitmap_or(dst, src1, src2, nbits);
}

static inline __attribute__((always_inline)) void bitmap_xor(unsigned long *dst, const unsigned long *src1,
   const unsigned long *src2, int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  *dst = *src1 ^ *src2;
 else
  __bitmap_xor(dst, src1, src2, nbits);
}

static inline __attribute__((always_inline)) int bitmap_andnot(unsigned long *dst, const unsigned long *src1,
   const unsigned long *src2, int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  return (*dst = *src1 & ~(*src2)) != 0;
 return __bitmap_andnot(dst, src1, src2, nbits);
}

static inline __attribute__((always_inline)) void bitmap_complement(unsigned long *dst, const unsigned long *src,
   int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  *dst = ~(*src) & ( ((nbits) % 32) ? (1UL<<((nbits) % 32))-1 : ~0UL );
 else
  __bitmap_complement(dst, src, nbits);
}

static inline __attribute__((always_inline)) int bitmap_equal(const unsigned long *src1,
   const unsigned long *src2, int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  return ! ((*src1 ^ *src2) & ( ((nbits) % 32) ? (1UL<<((nbits) % 32))-1 : ~0UL ));
 else
  return __bitmap_equal(src1, src2, nbits);
}

static inline __attribute__((always_inline)) int bitmap_intersects(const unsigned long *src1,
   const unsigned long *src2, int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  return ((*src1 & *src2) & ( ((nbits) % 32) ? (1UL<<((nbits) % 32))-1 : ~0UL )) != 0;
 else
  return __bitmap_intersects(src1, src2, nbits);
}

static inline __attribute__((always_inline)) int bitmap_subset(const unsigned long *src1,
   const unsigned long *src2, int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  return ! ((*src1 & ~(*src2)) & ( ((nbits) % 32) ? (1UL<<((nbits) % 32))-1 : ~0UL ));
 else
  return __bitmap_subset(src1, src2, nbits);
}

static inline __attribute__((always_inline)) int bitmap_empty(const unsigned long *src, int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  return ! (*src & ( ((nbits) % 32) ? (1UL<<((nbits) % 32))-1 : ~0UL ));
 else
  return __bitmap_empty(src, nbits);
}

static inline __attribute__((always_inline)) int bitmap_full(const unsigned long *src, int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  return ! (~(*src) & ( ((nbits) % 32) ? (1UL<<((nbits) % 32))-1 : ~0UL ));
 else
  return __bitmap_full(src, nbits);
}

static inline __attribute__((always_inline)) int bitmap_weight(const unsigned long *src, int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  return hweight_long(*src & ( ((nbits) % 32) ? (1UL<<((nbits) % 32))-1 : ~0UL ));
 return __bitmap_weight(src, nbits);
}

static inline __attribute__((always_inline)) void bitmap_shift_right(unsigned long *dst,
   const unsigned long *src, int n, int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  *dst = *src >> n;
 else
  __bitmap_shift_right(dst, src, n, nbits);
}

static inline __attribute__((always_inline)) void bitmap_shift_left(unsigned long *dst,
   const unsigned long *src, int n, int nbits)
{
 if ((__builtin_constant_p(nbits) && (nbits) <= 32))
  *dst = (*src << n) & ( ((nbits) % 32) ? (1UL<<((nbits) % 32))-1 : ~0UL );
 else
  __bitmap_shift_left(dst, src, n, nbits);
}

static inline __attribute__((always_inline)) int bitmap_parse(const char *buf, unsigned int buflen,
   unsigned long *maskp, int nmaskbits)
{
 return __bitmap_parse(buf, buflen, 0, maskp, nmaskbits);
}
# 143 "include/linux/cpumask.h" 2

typedef struct cpumask { unsigned long bits[(((1) + (8 * sizeof(long)) - 1) / (8 * sizeof(long)))]; } cpumask_t;
extern cpumask_t _unused_cpumask_arg_;



static inline __attribute__((always_inline)) void __cpu_set(int cpu, volatile cpumask_t *dstp)
{
 set_bit(cpu, dstp->bits);
}


static inline __attribute__((always_inline)) void __cpu_clear(int cpu, volatile cpumask_t *dstp)
{
 clear_bit(cpu, dstp->bits);
}


static inline __attribute__((always_inline)) void __cpus_setall(cpumask_t *dstp, int nbits)
{
 bitmap_fill(dstp->bits, nbits);
}


static inline __attribute__((always_inline)) void __cpus_clear(cpumask_t *dstp, int nbits)
{
 bitmap_zero(dstp->bits, nbits);
}





static inline __attribute__((always_inline)) int __cpu_test_and_set(int cpu, cpumask_t *addr)
{
 return test_and_set_bit(cpu, addr->bits);
}


static inline __attribute__((always_inline)) int __cpus_and(cpumask_t *dstp, const cpumask_t *src1p,
     const cpumask_t *src2p, int nbits)
{
 return bitmap_and(dstp->bits, src1p->bits, src2p->bits, nbits);
}


static inline __attribute__((always_inline)) void __cpus_or(cpumask_t *dstp, const cpumask_t *src1p,
     const cpumask_t *src2p, int nbits)
{
 bitmap_or(dstp->bits, src1p->bits, src2p->bits, nbits);
}


static inline __attribute__((always_inline)) void __cpus_xor(cpumask_t *dstp, const cpumask_t *src1p,
     const cpumask_t *src2p, int nbits)
{
 bitmap_xor(dstp->bits, src1p->bits, src2p->bits, nbits);
}



static inline __attribute__((always_inline)) int __cpus_andnot(cpumask_t *dstp, const cpumask_t *src1p,
     const cpumask_t *src2p, int nbits)
{
 return bitmap_andnot(dstp->bits, src1p->bits, src2p->bits, nbits);
}


static inline __attribute__((always_inline)) void __cpus_complement(cpumask_t *dstp,
     const cpumask_t *srcp, int nbits)
{
 bitmap_complement(dstp->bits, srcp->bits, nbits);
}


static inline __attribute__((always_inline)) int __cpus_equal(const cpumask_t *src1p,
     const cpumask_t *src2p, int nbits)
{
 return bitmap_equal(src1p->bits, src2p->bits, nbits);
}


static inline __attribute__((always_inline)) int __cpus_intersects(const cpumask_t *src1p,
     const cpumask_t *src2p, int nbits)
{
 return bitmap_intersects(src1p->bits, src2p->bits, nbits);
}


static inline __attribute__((always_inline)) int __cpus_subset(const cpumask_t *src1p,
     const cpumask_t *src2p, int nbits)
{
 return bitmap_subset(src1p->bits, src2p->bits, nbits);
}


static inline __attribute__((always_inline)) int __cpus_empty(const cpumask_t *srcp, int nbits)
{
 return bitmap_empty(srcp->bits, nbits);
}


static inline __attribute__((always_inline)) int __cpus_full(const cpumask_t *srcp, int nbits)
{
 return bitmap_full(srcp->bits, nbits);
}


static inline __attribute__((always_inline)) int __cpus_weight(const cpumask_t *srcp, int nbits)
{
 return bitmap_weight(srcp->bits, nbits);
}



static inline __attribute__((always_inline)) void __cpus_shift_right(cpumask_t *dstp,
     const cpumask_t *srcp, int n, int nbits)
{
 bitmap_shift_right(dstp->bits, srcp->bits, n, nbits);
}



static inline __attribute__((always_inline)) void __cpus_shift_left(cpumask_t *dstp,
     const cpumask_t *srcp, int n, int nbits)
{
 bitmap_shift_left(dstp->bits, srcp->bits, n, nbits);
}
# 287 "include/linux/cpumask.h"
static inline __attribute__((always_inline)) int __check_is_bitmap(const unsigned long *bitmap)
{
 return 1;
}
# 299 "include/linux/cpumask.h"
extern const unsigned long
 cpu_bit_bitmap[32 +1][(((1) + (8 * sizeof(long)) - 1) / (8 * sizeof(long)))];

static inline __attribute__((always_inline)) const struct cpumask *get_cpu_mask(unsigned int cpu)
{
 const unsigned long *p = cpu_bit_bitmap[1 + cpu % 32];
 p -= cpu / 32;
 return ((struct cpumask *)(1 ? (p) : (void *)sizeof(__check_is_bitmap(p))));
}
# 366 "include/linux/cpumask.h"
static inline __attribute__((always_inline)) int __cpu_remap(int oldbit,
  const cpumask_t *oldp, const cpumask_t *newp, int nbits)
{
 return bitmap_bitremap(oldbit, oldp->bits, newp->bits, nbits);
}



static inline __attribute__((always_inline)) void __cpus_remap(cpumask_t *dstp, const cpumask_t *srcp,
  const cpumask_t *oldp, const cpumask_t *newp, int nbits)
{
 bitmap_remap(dstp->bits, srcp->bits, oldp->bits, newp->bits, nbits);
}



static inline __attribute__((always_inline)) void __cpus_onto(cpumask_t *dstp, const cpumask_t *origp,
  const cpumask_t *relmapp, int nbits)
{
 bitmap_onto(dstp->bits, origp->bits, relmapp->bits, nbits);
}



static inline __attribute__((always_inline)) void __cpus_fold(cpumask_t *dstp, const cpumask_t *origp,
  int sz, int nbits)
{
 bitmap_fold(dstp->bits, origp->bits, sz, nbits);
}
# 485 "include/linux/cpumask.h"
extern const struct cpumask *const cpu_possible_mask;
extern const struct cpumask *const cpu_online_mask;
extern const struct cpumask *const cpu_present_mask;
extern const struct cpumask *const cpu_active_mask;
# 544 "include/linux/cpumask.h"
static inline __attribute__((always_inline)) unsigned int cpumask_check(unsigned int cpu)
{



 return cpu;
}



static inline __attribute__((always_inline)) unsigned int cpumask_first(const struct cpumask *srcp)
{
 return 0;
}


static inline __attribute__((always_inline)) unsigned int cpumask_next(int n, const struct cpumask *srcp)
{
 return n+1;
}

static inline __attribute__((always_inline)) unsigned int cpumask_next_zero(int n, const struct cpumask *srcp)
{
 return n+1;
}

static inline __attribute__((always_inline)) unsigned int cpumask_next_and(int n,
         const struct cpumask *srcp,
         const struct cpumask *andp)
{
 return n+1;
}


static inline __attribute__((always_inline)) unsigned int cpumask_any_but(const struct cpumask *mask,
        unsigned int cpu)
{
 return 1;
}
# 680 "include/linux/cpumask.h"
static inline __attribute__((always_inline)) void cpumask_set_cpu(unsigned int cpu, struct cpumask *dstp)
{
 set_bit(cpumask_check(cpu), ((dstp)->bits));
}






static inline __attribute__((always_inline)) void cpumask_clear_cpu(int cpu, struct cpumask *dstp)
{
 clear_bit(cpumask_check(cpu), ((dstp)->bits));
}
# 712 "include/linux/cpumask.h"
static inline __attribute__((always_inline)) int cpumask_test_and_set_cpu(int cpu, struct cpumask *cpumask)
{
 return test_and_set_bit(cpumask_check(cpu), ((cpumask)->bits));
}





static inline __attribute__((always_inline)) void cpumask_setall(struct cpumask *dstp)
{
 bitmap_fill(((dstp)->bits), 1);
}





static inline __attribute__((always_inline)) void cpumask_clear(struct cpumask *dstp)
{
 bitmap_zero(((dstp)->bits), 1);
}







static inline __attribute__((always_inline)) int cpumask_and(struct cpumask *dstp,
          const struct cpumask *src1p,
          const struct cpumask *src2p)
{
 return bitmap_and(((dstp)->bits), ((src1p)->bits),
           ((src2p)->bits), 1);
}







static inline __attribute__((always_inline)) void cpumask_or(struct cpumask *dstp, const struct cpumask *src1p,
         const struct cpumask *src2p)
{
 bitmap_or(((dstp)->bits), ((src1p)->bits),
          ((src2p)->bits), 1);
}







static inline __attribute__((always_inline)) void cpumask_xor(struct cpumask *dstp,
          const struct cpumask *src1p,
          const struct cpumask *src2p)
{
 bitmap_xor(((dstp)->bits), ((src1p)->bits),
           ((src2p)->bits), 1);
}







static inline __attribute__((always_inline)) int cpumask_andnot(struct cpumask *dstp,
      const struct cpumask *src1p,
      const struct cpumask *src2p)
{
 return bitmap_andnot(((dstp)->bits), ((src1p)->bits),
       ((src2p)->bits), 1);
}






static inline __attribute__((always_inline)) void cpumask_complement(struct cpumask *dstp,
          const struct cpumask *srcp)
{
 bitmap_complement(((dstp)->bits), ((srcp)->bits),
           1);
}






static inline __attribute__((always_inline)) bool cpumask_equal(const struct cpumask *src1p,
    const struct cpumask *src2p)
{
 return bitmap_equal(((src1p)->bits), ((src2p)->bits),
       1);
}






static inline __attribute__((always_inline)) bool cpumask_intersects(const struct cpumask *src1p,
         const struct cpumask *src2p)
{
 return bitmap_intersects(((src1p)->bits), ((src2p)->bits),
            1);
}






static inline __attribute__((always_inline)) int cpumask_subset(const struct cpumask *src1p,
     const struct cpumask *src2p)
{
 return bitmap_subset(((src1p)->bits), ((src2p)->bits),
        1);
}





static inline __attribute__((always_inline)) bool cpumask_empty(const struct cpumask *srcp)
{
 return bitmap_empty(((srcp)->bits), 1);
}





static inline __attribute__((always_inline)) bool cpumask_full(const struct cpumask *srcp)
{
 return bitmap_full(((srcp)->bits), 1);
}





static inline __attribute__((always_inline)) unsigned int cpumask_weight(const struct cpumask *srcp)
{
 return bitmap_weight(((srcp)->bits), 1);
}







static inline __attribute__((always_inline)) void cpumask_shift_right(struct cpumask *dstp,
           const struct cpumask *srcp, int n)
{
 bitmap_shift_right(((dstp)->bits), ((srcp)->bits), n,
            1);
}







static inline __attribute__((always_inline)) void cpumask_shift_left(struct cpumask *dstp,
          const struct cpumask *srcp, int n)
{
 bitmap_shift_left(((dstp)->bits), ((srcp)->bits), n,
           1);
}






static inline __attribute__((always_inline)) void cpumask_copy(struct cpumask *dstp,
    const struct cpumask *srcp)
{
 bitmap_copy(((dstp)->bits), ((srcp)->bits), 1);
}
# 943 "include/linux/cpumask.h"
static inline __attribute__((always_inline)) int cpumask_scnprintf(char *buf, int len,
        const struct cpumask *srcp)
{
 return bitmap_scnprintf(buf, len, ((srcp)->bits), 1);
}
# 957 "include/linux/cpumask.h"
static inline __attribute__((always_inline)) int cpumask_parse_user(const char *buf, int len,
         struct cpumask *dstp)
{
 return bitmap_parse_user(buf, len, ((dstp)->bits), 1);
}
# 972 "include/linux/cpumask.h"
static inline __attribute__((always_inline)) int cpulist_scnprintf(char *buf, int len,
        const struct cpumask *srcp)
{
 return bitmap_scnlistprintf(buf, len, ((srcp)->bits),
        1);
}
# 987 "include/linux/cpumask.h"
static inline __attribute__((always_inline)) int cpulist_parse(const char *buf, struct cpumask *dstp)
{
 return bitmap_parselist(buf, ((dstp)->bits), 1);
}






static inline __attribute__((always_inline)) size_t cpumask_size(void)
{


 return (((1) + (8 * sizeof(long)) - 1) / (8 * sizeof(long))) * sizeof(long);
}
# 1032 "include/linux/cpumask.h"
typedef struct cpumask cpumask_var_t[1];

static inline __attribute__((always_inline)) bool alloc_cpumask_var(cpumask_var_t *mask, gfp_t flags)
{
 return true;
}

static inline __attribute__((always_inline)) bool alloc_cpumask_var_node(cpumask_var_t *mask, gfp_t flags,
       int node)
{
 return true;
}

static inline __attribute__((always_inline)) bool zalloc_cpumask_var(cpumask_var_t *mask, gfp_t flags)
{
 cpumask_clear(*mask);
 return true;
}

static inline __attribute__((always_inline)) bool zalloc_cpumask_var_node(cpumask_var_t *mask, gfp_t flags,
       int node)
{
 cpumask_clear(*mask);
 return true;
}

static inline __attribute__((always_inline)) void alloc_bootmem_cpumask_var(cpumask_var_t *mask)
{
}

static inline __attribute__((always_inline)) void free_cpumask_var(cpumask_var_t mask)
{
}

static inline __attribute__((always_inline)) void free_bootmem_cpumask_var(cpumask_var_t mask)
{
}




extern const unsigned long cpu_all_bits[(((1) + (8 * sizeof(long)) - 1) / (8 * sizeof(long)))];
# 1084 "include/linux/cpumask.h"
void set_cpu_possible(unsigned int cpu, bool possible);
void set_cpu_present(unsigned int cpu, bool present);
void set_cpu_online(unsigned int cpu, bool online);
void set_cpu_active(unsigned int cpu, bool active);
void init_cpu_present(const struct cpumask *src);
void init_cpu_possible(const struct cpumask *src);
void init_cpu_online(const struct cpumask *src);
# 15 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/processor.h" 2


# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cachectl.h" 1
# 18 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/processor.h" 2


# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/rlxregs.h" 1
# 544 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/rlxregs.h"
static inline __attribute__((always_inline)) void tlb_probe(void)
{
 __asm__ __volatile__(
  ".set noreorder\n\t"
  "tlbp\n\t"
  ".set reorder");
}

static inline __attribute__((always_inline)) void tlb_read(void)
{
 __asm__ __volatile__(
  ".set noreorder\n\t"
  "tlbr\n\t"
  ".set reorder");
}

static inline __attribute__((always_inline)) void tlb_write_indexed(void)
{
 __asm__ __volatile__(
  ".set noreorder\n\t"
  "tlbwi\n\t"
  ".set reorder");
}

static inline __attribute__((always_inline)) void tlb_write_random(void)
{
 __asm__ __volatile__(
  ".set noreorder\n\t"
  "tlbwr\n\t"
  ".set reorder");
}
# 617 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/rlxregs.h"
static inline __attribute__((always_inline)) unsigned int set_c0_status(unsigned int set) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mfc0\t%0, " "$12" "\n\t" : "=r" (__res)); __res; }); res |= set; do { __asm__ __volatile__( "mtc0\t%z0, " "$12" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; } static inline __attribute__((always_inline)) unsigned int clear_c0_status(unsigned int clear) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mfc0\t%0, " "$12" "\n\t" : "=r" (__res)); __res; }); res &= ~clear; do { __asm__ __volatile__( "mtc0\t%z0, " "$12" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; } static inline __attribute__((always_inline)) unsigned int change_c0_status(unsigned int change, unsigned int new) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mfc0\t%0, " "$12" "\n\t" : "=r" (__res)); __res; }); res &= ~change; res |= (new & change); do { __asm__ __volatile__( "mtc0\t%z0, " "$12" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; }
static inline __attribute__((always_inline)) unsigned int set_c0_cause(unsigned int set) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mfc0\t%0, " "$13" "\n\t" : "=r" (__res)); __res; }); res |= set; do { __asm__ __volatile__( "mtc0\t%z0, " "$13" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; } static inline __attribute__((always_inline)) unsigned int clear_c0_cause(unsigned int clear) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mfc0\t%0, " "$13" "\n\t" : "=r" (__res)); __res; }); res &= ~clear; do { __asm__ __volatile__( "mtc0\t%z0, " "$13" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; } static inline __attribute__((always_inline)) unsigned int change_c0_cause(unsigned int change, unsigned int new) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mfc0\t%0, " "$13" "\n\t" : "=r" (__res)); __res; }); res &= ~change; res |= (new & change); do { __asm__ __volatile__( "mtc0\t%z0, " "$13" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; }
# 733 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/rlxregs.h"
static inline __attribute__((always_inline)) unsigned int set_lxc0_intvec(unsigned int set) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mflxc0\t%0, " "$2" "\n\t" : "=r" (__res)); __res; }); res |= set; do { __asm__ __volatile__( "mtlxc0\t%z0, " "$2" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; } static inline __attribute__((always_inline)) unsigned int clear_lxc0_intvec(unsigned int clear) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mflxc0\t%0, " "$2" "\n\t" : "=r" (__res)); __res; }); res &= ~clear; do { __asm__ __volatile__( "mtlxc0\t%z0, " "$2" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; } static inline __attribute__((always_inline)) unsigned int change_lxc0_intvec(unsigned int change, unsigned int new) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mflxc0\t%0, " "$2" "\n\t" : "=r" (__res)); __res; }); res &= ~change; res |= (new & change); do { __asm__ __volatile__( "mtlxc0\t%z0, " "$2" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; }
static inline __attribute__((always_inline)) unsigned int set_lxc0_estatus(unsigned int set) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mflxc0\t%0, " "$0" "\n\t" : "=r" (__res)); __res; }); res |= set; do { __asm__ __volatile__( "mtlxc0\t%z0, " "$0" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; } static inline __attribute__((always_inline)) unsigned int clear_lxc0_estatus(unsigned int clear) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mflxc0\t%0, " "$0" "\n\t" : "=r" (__res)); __res; }); res &= ~clear; do { __asm__ __volatile__( "mtlxc0\t%z0, " "$0" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; } static inline __attribute__((always_inline)) unsigned int change_lxc0_estatus(unsigned int change, unsigned int new) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mflxc0\t%0, " "$0" "\n\t" : "=r" (__res)); __res; }); res &= ~change; res |= (new & change); do { __asm__ __volatile__( "mtlxc0\t%z0, " "$0" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; }
static inline __attribute__((always_inline)) unsigned int set_lxc0_ecause(unsigned int set) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mflxc0\t%0, " "$1" "\n\t" : "=r" (__res)); __res; }); res |= set; do { __asm__ __volatile__( "mtlxc0\t%z0, " "$1" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; } static inline __attribute__((always_inline)) unsigned int clear_lxc0_ecause(unsigned int clear) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mflxc0\t%0, " "$1" "\n\t" : "=r" (__res)); __res; }); res &= ~clear; do { __asm__ __volatile__( "mtlxc0\t%z0, " "$1" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; } static inline __attribute__((always_inline)) unsigned int change_lxc0_ecause(unsigned int change, unsigned int new) { unsigned int res; res = ({ int __res; __asm__ __volatile__( "mflxc0\t%0, " "$1" "\n\t" : "=r" (__res)); __res; }); res &= ~change; res |= (new & change); do { __asm__ __volatile__( "mtlxc0\t%z0, " "$1" "\n\t" : : "Jr" ((unsigned int)(res))); } while (0); return res; }
# 21 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/processor.h" 2
# 54 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/processor.h"
static inline __attribute__((always_inline)) void cpu_wait(void)
{
# 71 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/processor.h"
 extern int cpu_can_suspend, cpu_can_suspend_check_init;
 extern void suspend_check_interrupt_init(void);

 if (cpu_can_suspend_check_init) {
  if (!cpu_can_suspend){
             return;
         }
 }
 else {
  suspend_check_interrupt_init();
  cpu_can_suspend_check_init = 1;
 }




 { __asm__ __volatile__( "sleep         \n" "nop           \n" "nop           \n"); };
};
# 112 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/processor.h"
typedef struct {
 unsigned long seg;
} mm_segment_t;



struct mips_abi;




struct thread_struct {

 unsigned long reg16;
 unsigned long reg17, reg18, reg19, reg20, reg21, reg22, reg23;
 unsigned long reg29, reg30, reg31;


 unsigned long cp0_status;


 unsigned long cp0_badvaddr;
 unsigned long cp0_baduaddr;
 unsigned long error_code;
 unsigned long trap_no;
 struct mips_abi *abi;
};
# 168 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/processor.h"
struct task_struct;







extern long kernel_thread(int (*fn)(void *), void * arg, unsigned long flags);

extern unsigned long thread_saved_pc(struct task_struct *tsk);




extern void start_thread(struct pt_regs * regs, unsigned long pc, unsigned long sp);

unsigned long get_wchan(struct task_struct *p);
# 16 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/thread_info.h" 2
# 24 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/thread_info.h"
struct thread_info {
 struct task_struct *task;
 struct exec_domain *exec_domain;
 unsigned long flags;
 unsigned long tp_value;
 __u32 cpu;
 int preempt_count;

 mm_segment_t addr_limit;



 struct restart_block restart_block;
 struct pt_regs *regs;
};
# 60 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/thread_info.h"
register struct thread_info *__current_thread_info __asm__("$28");
# 56 "include/linux/thread_info.h" 2
# 64 "include/linux/thread_info.h"
static inline __attribute__((always_inline)) void set_ti_thread_flag(struct thread_info *ti, int flag)
{
 set_bit(flag, (unsigned long *)&ti->flags);
}

static inline __attribute__((always_inline)) void clear_ti_thread_flag(struct thread_info *ti, int flag)
{
 clear_bit(flag, (unsigned long *)&ti->flags);
}

static inline __attribute__((always_inline)) int test_and_set_ti_thread_flag(struct thread_info *ti, int flag)
{
 return test_and_set_bit(flag, (unsigned long *)&ti->flags);
}

static inline __attribute__((always_inline)) int test_and_clear_ti_thread_flag(struct thread_info *ti, int flag)
{
 return test_and_clear_bit(flag, (unsigned long *)&ti->flags);
}

static inline __attribute__((always_inline)) int test_ti_thread_flag(struct thread_info *ti, int flag)
{
 return test_bit(flag, (unsigned long *)&ti->flags);
}
# 121 "include/linux/thread_info.h"
static inline __attribute__((always_inline)) void set_restore_sigmask(void)
{
 set_ti_thread_flag(__current_thread_info, 9);
 set_ti_thread_flag(__current_thread_info, 1);
}
# 10 "include/linux/preempt.h" 2

# 1 "include/linux/list.h" 1




# 1 "include/linux/poison.h" 1
# 6 "include/linux/list.h" 2
# 1 "include/linux/prefetch.h" 1
# 53 "include/linux/prefetch.h"
static inline __attribute__((always_inline)) void prefetch_range(void *addr, size_t len)
{







}
# 7 "include/linux/list.h" 2
# 19 "include/linux/list.h"
struct list_head {
 struct list_head *next, *prev;
};






static inline __attribute__((always_inline)) void INIT_LIST_HEAD(struct list_head *list)
{
 list->next = list;
 list->prev = list;
}
# 41 "include/linux/list.h"
static inline __attribute__((always_inline)) void __list_add(struct list_head *new,
         struct list_head *prev,
         struct list_head *next)
{
 next->prev = new;
 new->next = next;
 new->prev = prev;
 prev->next = new;
}
# 64 "include/linux/list.h"
static inline __attribute__((always_inline)) void list_add(struct list_head *new, struct list_head *head)
{
 __list_add(new, head, head->next);
}
# 78 "include/linux/list.h"
static inline __attribute__((always_inline)) void list_add_tail(struct list_head *new, struct list_head *head)
{
 __list_add(new, head->prev, head);
}
# 90 "include/linux/list.h"
static inline __attribute__((always_inline)) void __list_del(struct list_head * prev, struct list_head * next)
{
 next->prev = prev;
 prev->next = next;
}
# 103 "include/linux/list.h"
static inline __attribute__((always_inline)) void list_del(struct list_head *entry)
{
 __list_del(entry->prev, entry->next);
 entry->next = ((void *) 0x00100100);
 entry->prev = ((void *) 0x00200200);
}
# 120 "include/linux/list.h"
static inline __attribute__((always_inline)) void list_replace(struct list_head *old,
    struct list_head *new)
{
 new->next = old->next;
 new->next->prev = new;
 new->prev = old->prev;
 new->prev->next = new;
}

static inline __attribute__((always_inline)) void list_replace_init(struct list_head *old,
     struct list_head *new)
{
 list_replace(old, new);
 INIT_LIST_HEAD(old);
}





static inline __attribute__((always_inline)) void list_del_init(struct list_head *entry)
{
 __list_del(entry->prev, entry->next);
 INIT_LIST_HEAD(entry);
}






static inline __attribute__((always_inline)) void list_move(struct list_head *list, struct list_head *head)
{
 __list_del(list->prev, list->next);
 list_add(list, head);
}






static inline __attribute__((always_inline)) void list_move_tail(struct list_head *list,
      struct list_head *head)
{
 __list_del(list->prev, list->next);
 list_add_tail(list, head);
}






static inline __attribute__((always_inline)) int list_is_last(const struct list_head *list,
    const struct list_head *head)
{
 return list->next == head;
}





static inline __attribute__((always_inline)) int list_empty(const struct list_head *head)
{
 return head->next == head;
}
# 202 "include/linux/list.h"
static inline __attribute__((always_inline)) int list_empty_careful(const struct list_head *head)
{
 struct list_head *next = head->next;
 return (next == head) && (next == head->prev);
}





static inline __attribute__((always_inline)) int list_is_singular(const struct list_head *head)
{
 return !list_empty(head) && (head->next == head->prev);
}

static inline __attribute__((always_inline)) void __list_cut_position(struct list_head *list,
  struct list_head *head, struct list_head *entry)
{
 struct list_head *new_first = entry->next;
 list->next = head->next;
 list->next->prev = list;
 list->prev = entry;
 entry->next = list;
 head->next = new_first;
 new_first->prev = head;
}
# 243 "include/linux/list.h"
static inline __attribute__((always_inline)) void list_cut_position(struct list_head *list,
  struct list_head *head, struct list_head *entry)
{
 if (list_empty(head))
  return;
 if (list_is_singular(head) &&
  (head->next != entry && head != entry))
  return;
 if (entry == head)
  INIT_LIST_HEAD(list);
 else
  __list_cut_position(list, head, entry);
}

static inline __attribute__((always_inline)) void __list_splice(const struct list_head *list,
     struct list_head *prev,
     struct list_head *next)
{
 struct list_head *first = list->next;
 struct list_head *last = list->prev;

 first->prev = prev;
 prev->next = first;

 last->next = next;
 next->prev = last;
}






static inline __attribute__((always_inline)) void list_splice(const struct list_head *list,
    struct list_head *head)
{
 if (!list_empty(list))
  __list_splice(list, head, head->next);
}






static inline __attribute__((always_inline)) void list_splice_tail(struct list_head *list,
    struct list_head *head)
{
 if (!list_empty(list))
  __list_splice(list, head->prev, head);
}
# 302 "include/linux/list.h"
static inline __attribute__((always_inline)) void list_splice_init(struct list_head *list,
        struct list_head *head)
{
 if (!list_empty(list)) {
  __list_splice(list, head, head->next);
  INIT_LIST_HEAD(list);
 }
}
# 319 "include/linux/list.h"
static inline __attribute__((always_inline)) void list_splice_tail_init(struct list_head *list,
      struct list_head *head)
{
 if (!list_empty(list)) {
  __list_splice(list, head->prev, head);
  INIT_LIST_HEAD(list);
 }
}
# 540 "include/linux/list.h"
struct hlist_head {
 struct hlist_node *first;
};

struct hlist_node {
 struct hlist_node *next, **pprev;
};




static inline __attribute__((always_inline)) void INIT_HLIST_NODE(struct hlist_node *h)
{
 h->next = ((void *)0);
 h->pprev = ((void *)0);
}

static inline __attribute__((always_inline)) int hlist_unhashed(const struct hlist_node *h)
{
 return !h->pprev;
}

static inline __attribute__((always_inline)) int hlist_empty(const struct hlist_head *h)
{
 return !h->first;
}

static inline __attribute__((always_inline)) void __hlist_del(struct hlist_node *n)
{
 struct hlist_node *next = n->next;
 struct hlist_node **pprev = n->pprev;
 *pprev = next;
 if (next)
  next->pprev = pprev;
}

static inline __attribute__((always_inline)) void hlist_del(struct hlist_node *n)
{
 __hlist_del(n);
 n->next = ((void *) 0x00100100);
 n->pprev = ((void *) 0x00200200);
}

static inline __attribute__((always_inline)) void hlist_del_init(struct hlist_node *n)
{
 if (!hlist_unhashed(n)) {
  __hlist_del(n);
  INIT_HLIST_NODE(n);
 }
}

static inline __attribute__((always_inline)) void hlist_add_head(struct hlist_node *n, struct hlist_head *h)
{
 struct hlist_node *first = h->first;
 n->next = first;
 if (first)
  first->pprev = &n->next;
 h->first = n;
 n->pprev = &h->first;
}


static inline __attribute__((always_inline)) void hlist_add_before(struct hlist_node *n,
     struct hlist_node *next)
{
 n->pprev = next->pprev;
 n->next = next;
 next->pprev = &n->next;
 *(n->pprev) = n;
}

static inline __attribute__((always_inline)) void hlist_add_after(struct hlist_node *n,
     struct hlist_node *next)
{
 next->next = n->next;
 n->next = next;
 next->pprev = &n->next;

 if(next->next)
  next->next->pprev = &next->next;
}





static inline __attribute__((always_inline)) void hlist_move_list(struct hlist_head *old,
       struct hlist_head *new)
{
 new->first = old->first;
 if (new->first)
  new->first->pprev = &new->first;
 old->first = ((void *)0);
}
# 12 "include/linux/preempt.h" 2
# 51 "include/linux/spinlock.h" 2




# 1 "include/linux/stringify.h" 1
# 56 "include/linux/spinlock.h" 2
# 1 "include/linux/bottom_half.h" 1



extern void local_bh_disable(void);
extern void _local_bh_enable(void);
extern void local_bh_enable(void);
extern void local_bh_enable_ip(unsigned long ip);
# 57 "include/linux/spinlock.h" 2
# 80 "include/linux/spinlock.h"
# 1 "include/linux/spinlock_types.h" 1
# 15 "include/linux/spinlock_types.h"
# 1 "include/linux/spinlock_types_up.h" 1
# 25 "include/linux/spinlock_types_up.h"
typedef struct { } raw_spinlock_t;





typedef struct {

} raw_rwlock_t;
# 16 "include/linux/spinlock_types.h" 2


# 1 "include/linux/lockdep.h" 1
# 12 "include/linux/lockdep.h"
struct task_struct;
struct lockdep_map;
# 304 "include/linux/lockdep.h"
static inline __attribute__((always_inline)) void lockdep_off(void)
{
}

static inline __attribute__((always_inline)) void lockdep_on(void)
{
}
# 337 "include/linux/lockdep.h"
struct lock_class_key { };
# 385 "include/linux/lockdep.h"
extern void early_init_irq_lock_class(void);
# 397 "include/linux/lockdep.h"
static inline __attribute__((always_inline)) void early_boot_irqs_off(void)
{
}
static inline __attribute__((always_inline)) void early_boot_irqs_on(void)
{
}
static inline __attribute__((always_inline)) void print_irqtrace_events(struct task_struct *curr)
{
}
# 19 "include/linux/spinlock_types.h" 2

typedef struct {
 raw_spinlock_t raw_lock;
# 32 "include/linux/spinlock_types.h"
} spinlock_t;



typedef struct {
 raw_rwlock_t raw_lock;
# 48 "include/linux/spinlock_types.h"
} rwlock_t;
# 81 "include/linux/spinlock.h" 2

extern int __attribute__((section(".spinlock.text"))) generic__raw_read_trylock(raw_rwlock_t *lock);







# 1 "include/linux/spinlock_up.h" 1
# 91 "include/linux/spinlock.h" 2
# 147 "include/linux/spinlock.h"
# 1 "include/linux/spinlock_api_up.h" 1
# 148 "include/linux/spinlock.h" 2
# 368 "include/linux/spinlock.h"
extern int _atomic_dec_and_lock(atomic_t *atomic, spinlock_t *lock);
# 30 "include/linux/seqlock.h" 2


typedef struct {
 unsigned sequence;
 spinlock_t lock;
} seqlock_t;
# 60 "include/linux/seqlock.h"
static inline __attribute__((always_inline)) void write_seqlock(seqlock_t *sl)
{
 do { do { } while (0); (void)0; (void)(&sl->lock); } while (0);
 ++sl->sequence;
 __asm__ __volatile__("   \n" : : : "memory");
}

static inline __attribute__((always_inline)) void write_sequnlock(seqlock_t *sl)
{
 __asm__ __volatile__("   \n" : : : "memory");
 sl->sequence++;
 do { do { } while (0); (void)0; (void)(&sl->lock); } while (0);
}

static inline __attribute__((always_inline)) int write_tryseqlock(seqlock_t *sl)
{
 int ret = (({ do { do { } while (0); (void)0; (void)(&sl->lock); } while (0); 1; }));

 if (ret) {
  ++sl->sequence;
  __asm__ __volatile__("   \n" : : : "memory");
 }
 return ret;
}


static inline __attribute__((always_inline)) __attribute__((always_inline)) unsigned read_seqbegin(const seqlock_t *sl)
{
 unsigned ret;

repeat:
 ret = sl->sequence;
 __asm__ __volatile__("   \n" : : : "memory");
 if (__builtin_expect(!!(ret & 1), 0)) {
  __asm__ __volatile__("": : :"memory");
  goto repeat;
 }

 return ret;
}






static inline __attribute__((always_inline)) __attribute__((always_inline)) int read_seqretry(const seqlock_t *sl, unsigned start)
{
 __asm__ __volatile__("   \n" : : : "memory");

 return (sl->sequence != start);
}
# 121 "include/linux/seqlock.h"
typedef struct seqcount {
 unsigned sequence;
} seqcount_t;





static inline __attribute__((always_inline)) unsigned read_seqcount_begin(const seqcount_t *s)
{
 unsigned ret;

repeat:
 ret = s->sequence;
 __asm__ __volatile__("   \n" : : : "memory");
 if (__builtin_expect(!!(ret & 1), 0)) {
  __asm__ __volatile__("": : :"memory");
  goto repeat;
 }
 return ret;
}




static inline __attribute__((always_inline)) int read_seqcount_retry(const seqcount_t *s, unsigned start)
{
 __asm__ __volatile__("   \n" : : : "memory");

 return s->sequence != start;
}






static inline __attribute__((always_inline)) void write_seqcount_begin(seqcount_t *s)
{
 s->sequence++;
 __asm__ __volatile__("   \n" : : : "memory");
}

static inline __attribute__((always_inline)) void write_seqcount_end(seqcount_t *s)
{
 __asm__ __volatile__("   \n" : : : "memory");
 s->sequence++;
}
# 9 "include/linux/time.h" 2
# 1 "include/linux/math64.h" 1




# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/div64.h" 1
# 12 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/div64.h"
# 1 "include/asm-generic/div64.h" 1
# 35 "include/asm-generic/div64.h"
extern uint32_t __div64_32(uint64_t *dividend, uint32_t divisor);
# 13 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/div64.h" 2
# 6 "include/linux/math64.h" 2
# 41 "include/linux/math64.h"
static inline __attribute__((always_inline)) u64 div_u64_rem(u64 dividend, u32 divisor, u32 *remainder)
{
 *remainder = ({ uint32_t __base = (divisor); uint32_t __rem; (void)(((typeof((dividend)) *)0) == ((uint64_t *)0)); if (__builtin_expect(!!(((dividend) >> 32) == 0), 1)) { __rem = (uint32_t)(dividend) % __base; (dividend) = (uint32_t)(dividend) / __base; } else __rem = __div64_32(&(dividend), __base); __rem; });
 return dividend;
}



extern s64 div_s64_rem(s64 dividend, s32 divisor, s32 *remainder);



extern u64 div64_u64(u64 dividend, u64 divisor);
# 66 "include/linux/math64.h"
static inline __attribute__((always_inline)) u64 div_u64(u64 dividend, u32 divisor)
{
 u32 remainder;
 return div_u64_rem(dividend, divisor, &remainder);
}






static inline __attribute__((always_inline)) s64 div_s64(s64 dividend, s32 divisor)
{
 s32 remainder;
 return div_s64_rem(dividend, divisor, &remainder);
}


u32 iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder);

static inline __attribute__((always_inline)) __attribute__((always_inline)) u32
__iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
{
 u32 ret = 0;

 while (dividend >= divisor) {


  asm("" : "+rm"(dividend));

  dividend -= divisor;
  ret++;
 }

 *remainder = dividend;

 return ret;
}
# 10 "include/linux/time.h" 2




struct timespec {
 __kernel_time_t tv_sec;
 long tv_nsec;
};


struct timeval {
 __kernel_time_t tv_sec;
 __kernel_suseconds_t tv_usec;
};

struct timezone {
 int tz_minuteswest;
 int tz_dsttime;
};



extern struct timezone sys_tz;
# 45 "include/linux/time.h"
static inline __attribute__((always_inline)) int timespec_equal(const struct timespec *a,
                                 const struct timespec *b)
{
 return (a->tv_sec == b->tv_sec) && (a->tv_nsec == b->tv_nsec);
}






static inline __attribute__((always_inline)) int timespec_compare(const struct timespec *lhs, const struct timespec *rhs)
{
 if (lhs->tv_sec < rhs->tv_sec)
  return -1;
 if (lhs->tv_sec > rhs->tv_sec)
  return 1;
 return lhs->tv_nsec - rhs->tv_nsec;
}

static inline __attribute__((always_inline)) int timeval_compare(const struct timeval *lhs, const struct timeval *rhs)
{
 if (lhs->tv_sec < rhs->tv_sec)
  return -1;
 if (lhs->tv_sec > rhs->tv_sec)
  return 1;
 return lhs->tv_usec - rhs->tv_usec;
}

extern unsigned long mktime(const unsigned int year, const unsigned int mon,
       const unsigned int day, const unsigned int hour,
       const unsigned int min, const unsigned int sec);

extern void set_normalized_timespec(struct timespec *ts, time_t sec, long nsec);
extern struct timespec timespec_add_safe(const struct timespec lhs,
      const struct timespec rhs);




static inline __attribute__((always_inline)) struct timespec timespec_sub(struct timespec lhs,
      struct timespec rhs)
{
 struct timespec ts_delta;
 set_normalized_timespec(&ts_delta, lhs.tv_sec - rhs.tv_sec,
    lhs.tv_nsec - rhs.tv_nsec);
 return ts_delta;
}







extern struct timespec xtime;
extern struct timespec wall_to_monotonic;
extern seqlock_t xtime_lock;

extern unsigned long read_persistent_clock(void);
extern int update_persistent_clock(struct timespec now);
extern int no_sync_cmos_clock ;
void timekeeping_init(void);
extern int timekeeping_suspended;

unsigned long get_seconds(void);
struct timespec current_kernel_time(void);




extern void do_gettimeofday(struct timeval *tv);
extern int do_settimeofday(struct timespec *tv);
extern int do_sys_settimeofday(struct timespec *tv, struct timezone *tz);

extern long do_utimes(int dfd, char *filename, struct timespec *times, int flags);
struct itimerval;
extern int do_setitimer(int which, struct itimerval *value,
   struct itimerval *ovalue);
extern unsigned int alarm_setitimer(unsigned int seconds);
extern int do_getitimer(int which, struct itimerval *value);
extern void getnstimeofday(struct timespec *tv);
extern void getrawmonotonic(struct timespec *ts);
extern void getboottime(struct timespec *ts);
extern void monotonic_to_bootbased(struct timespec *ts);

extern struct timespec timespec_trunc(struct timespec t, unsigned gran);
extern int timekeeping_valid_for_hres(void);
extern void update_wall_time(void);
extern void update_xtime_cache(u64 nsec);

struct tms;
extern void do_sys_times(struct tms *);
# 146 "include/linux/time.h"
static inline __attribute__((always_inline)) s64 timespec_to_ns(const struct timespec *ts)
{
 return ((s64) ts->tv_sec * 1000000000L) + ts->tv_nsec;
}
# 158 "include/linux/time.h"
static inline __attribute__((always_inline)) s64 timeval_to_ns(const struct timeval *tv)
{
 return ((s64) tv->tv_sec * 1000000000L) +
  tv->tv_usec * 1000L;
}







extern struct timespec ns_to_timespec(const s64 nsec);







extern struct timeval ns_to_timeval(const s64 nsec);
# 188 "include/linux/time.h"
static inline __attribute__((always_inline)) __attribute__((always_inline)) void timespec_add_ns(struct timespec *a, u64 ns)
{
 a->tv_sec += __iter_div_u64_rem(a->tv_nsec + ns, 1000000000L, &ns);
 a->tv_nsec = ns;
}
# 211 "include/linux/time.h"
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};

struct itimerval {
 struct timeval it_interval;
 struct timeval it_value;
};
# 20 "include/linux/skbuff.h" 2





# 1 "include/linux/net.h" 1
# 45 "include/linux/net.h"
typedef enum {
 SS_FREE = 0,
 SS_UNCONNECTED,
 SS_CONNECTING,
 SS_CONNECTED,
 SS_DISCONNECTING
} socket_state;





# 1 "include/linux/random.h" 1
# 11 "include/linux/random.h"
# 1 "include/linux/ioctl.h" 1
# 12 "include/linux/random.h" 2
# 1 "include/linux/irqnr.h" 1
# 26 "include/linux/irqnr.h"
extern int nr_irqs;
extern struct irq_desc *irq_to_desc(unsigned int irq);
# 13 "include/linux/random.h" 2
# 37 "include/linux/random.h"
struct rand_pool_info {
 int entropy_count;
 int buf_size;
 __u32 buf[0];
};





extern void rand_initialize_irq(int irq);

extern void add_input_randomness(unsigned int type, unsigned int code,
     unsigned int value);
extern void add_interrupt_randomness(int irq);

extern void get_random_bytes(void *buf, int nbytes);
void generate_random_uuid(unsigned char uuid_out[16]);

extern __u32 secure_ip_id(__be32 daddr);
extern u32 secure_ipv4_port_ephemeral(__be32 saddr, __be32 daddr, __be16 dport);
extern u32 secure_ipv6_port_ephemeral(const __be32 *saddr, const __be32 *daddr,
          __be16 dport);
extern __u32 secure_tcp_sequence_number(__be32 saddr, __be32 daddr,
     __be16 sport, __be16 dport);
extern __u32 secure_tcpv6_sequence_number(__be32 *saddr, __be32 *daddr,
       __be16 sport, __be16 dport);
extern u64 secure_dccp_sequence_number(__be32 saddr, __be32 daddr,
           __be16 sport, __be16 dport);


extern const struct file_operations random_fops, urandom_fops;


unsigned int get_random_int(void);
unsigned long randomize_range(unsigned long start, unsigned long end, unsigned long len);

u32 random32(void);
void srandom32(u32 seed);
# 58 "include/linux/net.h" 2
# 1 "include/linux/wait.h" 1
# 26 "include/linux/wait.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/current.h" 1
# 14 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/current.h"
struct task_struct;

static inline __attribute__((always_inline)) struct task_struct * get_current(void)
{
 return __current_thread_info->task;
}
# 27 "include/linux/wait.h" 2

typedef struct __wait_queue wait_queue_t;
typedef int (*wait_queue_func_t)(wait_queue_t *wait, unsigned mode, int sync, void *key);
int default_wake_function(wait_queue_t *wait, unsigned mode, int sync, void *key);

struct __wait_queue {
 unsigned int flags;

 void *private;
 wait_queue_func_t func;
 struct list_head task_list;
};

struct wait_bit_key {
 void *flags;
 int bit_nr;
};

struct wait_bit_queue {
 struct wait_bit_key key;
 wait_queue_t wait;
};

struct __wait_queue_head {
 spinlock_t lock;
 struct list_head task_list;
};
typedef struct __wait_queue_head wait_queue_head_t;

struct task_struct;
# 80 "include/linux/wait.h"
extern void init_waitqueue_head(wait_queue_head_t *q);
# 91 "include/linux/wait.h"
static inline __attribute__((always_inline)) void init_waitqueue_entry(wait_queue_t *q, struct task_struct *p)
{
 q->flags = 0;
 q->private = p;
 q->func = default_wake_function;
}

static inline __attribute__((always_inline)) void init_waitqueue_func_entry(wait_queue_t *q,
     wait_queue_func_t func)
{
 q->flags = 0;
 q->private = ((void *)0);
 q->func = func;
}

static inline __attribute__((always_inline)) int waitqueue_active(wait_queue_head_t *q)
{
 return !list_empty(&q->task_list);
}

extern void add_wait_queue(wait_queue_head_t *q, wait_queue_t *wait);
extern void add_wait_queue_exclusive(wait_queue_head_t *q, wait_queue_t *wait);
extern void remove_wait_queue(wait_queue_head_t *q, wait_queue_t *wait);

static inline __attribute__((always_inline)) void __add_wait_queue(wait_queue_head_t *head, wait_queue_t *new)
{
 list_add(&new->task_list, &head->task_list);
}




static inline __attribute__((always_inline)) void __add_wait_queue_tail(wait_queue_head_t *head,
      wait_queue_t *new)
{
 list_add_tail(&new->task_list, &head->task_list);
}

static inline __attribute__((always_inline)) void __remove_wait_queue(wait_queue_head_t *head,
       wait_queue_t *old)
{
 list_del(&old->task_list);
}

void __wake_up_common(wait_queue_head_t *q, unsigned int mode,
   int nr_exclusive, int sync, void *key);
void __wake_up(wait_queue_head_t *q, unsigned int mode, int nr, void *key);
void __wake_up_locked_key(wait_queue_head_t *q, unsigned int mode, void *key);
void __wake_up_sync_key(wait_queue_head_t *q, unsigned int mode, int nr,
   void *key);
void __wake_up_locked(wait_queue_head_t *q, unsigned int mode);
void __wake_up_sync(wait_queue_head_t *q, unsigned int mode, int nr);
void __wake_up_bit(wait_queue_head_t *, void *, int);
int __wait_on_bit(wait_queue_head_t *, struct wait_bit_queue *, int (*)(void *), unsigned);
int __wait_on_bit_lock(wait_queue_head_t *, struct wait_bit_queue *, int (*)(void *), unsigned);
void wake_up_bit(void *, int);
int out_of_line_wait_on_bit(void *, int, int (*)(void *), unsigned);
int out_of_line_wait_on_bit_lock(void *, int, int (*)(void *), unsigned);
wait_queue_head_t *bit_waitqueue(void *, int);
# 404 "include/linux/wait.h"
static inline __attribute__((always_inline)) void add_wait_queue_exclusive_locked(wait_queue_head_t *q,
         wait_queue_t * wait)
{
 wait->flags |= 0x01;
 __add_wait_queue_tail(q, wait);
}




static inline __attribute__((always_inline)) void remove_wait_queue_locked(wait_queue_head_t *q,
         wait_queue_t * wait)
{
 __remove_wait_queue(q, wait);
}






extern void sleep_on(wait_queue_head_t *q);
extern long sleep_on_timeout(wait_queue_head_t *q,
          signed long timeout);
extern void interruptible_sleep_on(wait_queue_head_t *q);
extern long interruptible_sleep_on_timeout(wait_queue_head_t *q,
        signed long timeout);




void prepare_to_wait(wait_queue_head_t *q, wait_queue_t *wait, int state);
void prepare_to_wait_exclusive(wait_queue_head_t *q, wait_queue_t *wait, int state);
void finish_wait(wait_queue_head_t *q, wait_queue_t *wait);
void abort_exclusive_wait(wait_queue_head_t *q, wait_queue_t *wait,
   unsigned int mode, void *key);
int autoremove_wake_function(wait_queue_t *wait, unsigned mode, int sync, void *key);
int wake_bit_function(wait_queue_t *wait, unsigned mode, int sync, void *key);
# 484 "include/linux/wait.h"
static inline __attribute__((always_inline)) int wait_on_bit(void *word, int bit,
    int (*action)(void *), unsigned mode)
{
 if (!test_bit(bit, word))
  return 0;
 return out_of_line_wait_on_bit(word, bit, action, mode);
}
# 508 "include/linux/wait.h"
static inline __attribute__((always_inline)) int wait_on_bit_lock(void *word, int bit,
    int (*action)(void *), unsigned mode)
{
 if (!test_and_set_bit(bit, word))
  return 0;
 return out_of_line_wait_on_bit_lock(word, bit, action, mode);
}
# 59 "include/linux/net.h" 2
# 1 "include/linux/fcntl.h" 1



# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/fcntl.h" 1
# 43 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/fcntl.h"
struct flock {
 short l_type;
 short l_whence;
 off_t l_start;
 off_t l_len;
 long l_sysid;
 __kernel_pid_t l_pid;
 long pad[4];
};



# 1 "include/asm-generic/fcntl.h" 1
# 140 "include/asm-generic/fcntl.h"
struct flock64 {
 short l_type;
 short l_whence;
 __kernel_loff_t l_start;
 __kernel_loff_t l_len;
 __kernel_pid_t l_pid;

};
# 56 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/fcntl.h" 2
# 5 "include/linux/fcntl.h" 2
# 60 "include/linux/net.h" 2

struct poll_table_struct;
struct pipe_inode_info;
struct inode;
struct net;
# 111 "include/linux/net.h"
enum sock_shutdown_cmd {
 SHUT_RD = 0,
 SHUT_WR = 1,
 SHUT_RDWR = 2,
};
# 128 "include/linux/net.h"
struct socket {
 socket_state state;
 short type;
 unsigned long flags;



 struct fasync_struct *fasync_list;
 wait_queue_head_t wait;

 struct file *file;
 struct sock *sk;
 const struct proto_ops *ops;
};

struct vm_area_struct;
struct page;
struct kiocb;
struct sockaddr;
struct msghdr;
struct module;

struct proto_ops {
 int family;
 struct module *owner;
 int (*release) (struct socket *sock);
 int (*bind) (struct socket *sock,
          struct sockaddr *myaddr,
          int sockaddr_len);
 int (*connect) (struct socket *sock,
          struct sockaddr *vaddr,
          int sockaddr_len, int flags);
 int (*socketpair)(struct socket *sock1,
          struct socket *sock2);
 int (*accept) (struct socket *sock,
          struct socket *newsock, int flags);
 int (*getname) (struct socket *sock,
          struct sockaddr *addr,
          int *sockaddr_len, int peer);
 unsigned int (*poll) (struct file *file, struct socket *sock,
          struct poll_table_struct *wait);
 int (*ioctl) (struct socket *sock, unsigned int cmd,
          unsigned long arg);
 int (*compat_ioctl) (struct socket *sock, unsigned int cmd,
          unsigned long arg);
 int (*listen) (struct socket *sock, int len);
 int (*shutdown) (struct socket *sock, int flags);
 int (*setsockopt)(struct socket *sock, int level,
          int optname, char *optval, int optlen);
 int (*getsockopt)(struct socket *sock, int level,
          int optname, char *optval, int *optlen);
 int (*compat_setsockopt)(struct socket *sock, int level,
          int optname, char *optval, int optlen);
 int (*compat_getsockopt)(struct socket *sock, int level,
          int optname, char *optval, int *optlen);
 int (*sendmsg) (struct kiocb *iocb, struct socket *sock,
          struct msghdr *m, size_t total_len);
 int (*recvmsg) (struct kiocb *iocb, struct socket *sock,
          struct msghdr *m, size_t total_len,
          int flags);
 int (*mmap) (struct file *file, struct socket *sock,
          struct vm_area_struct * vma);
 ssize_t (*sendpage) (struct socket *sock, struct page *page,
          int offset, size_t size, int flags);
 ssize_t (*splice_read)(struct socket *sock, loff_t *ppos,
           struct pipe_inode_info *pipe, size_t len, unsigned int flags);
};

struct net_proto_family {
 int family;
 int (*create)(struct net *net, struct socket *sock, int protocol);
 struct module *owner;
};

struct iovec;
struct kvec;

enum {
 SOCK_WAKE_IO,
 SOCK_WAKE_WAITD,
 SOCK_WAKE_SPACE,
 SOCK_WAKE_URG,
};

extern int sock_wake_async(struct socket *sk, int how, int band);
extern int sock_register(const struct net_proto_family *fam);
extern void sock_unregister(int family);
extern int sock_create(int family, int type, int proto,
     struct socket **res);
extern int sock_create_kern(int family, int type, int proto,
          struct socket **res);
extern int sock_create_lite(int family, int type, int proto,
          struct socket **res);
extern void sock_release(struct socket *sock);
extern int sock_sendmsg(struct socket *sock, struct msghdr *msg,
      size_t len);
extern int sock_recvmsg(struct socket *sock, struct msghdr *msg,
      size_t size, int flags);
extern int sock_map_fd(struct socket *sock, int flags);
extern struct socket *sockfd_lookup(int fd, int *err);

extern int net_ratelimit(void);




extern int kernel_sendmsg(struct socket *sock, struct msghdr *msg,
        struct kvec *vec, size_t num, size_t len);
extern int kernel_recvmsg(struct socket *sock, struct msghdr *msg,
        struct kvec *vec, size_t num,
        size_t len, int flags);

extern int kernel_bind(struct socket *sock, struct sockaddr *addr,
         int addrlen);
extern int kernel_listen(struct socket *sock, int backlog);
extern int kernel_accept(struct socket *sock, struct socket **newsock,
    int flags);
extern int kernel_connect(struct socket *sock, struct sockaddr *addr,
     int addrlen, int flags);
extern int kernel_getsockname(struct socket *sock, struct sockaddr *addr,
         int *addrlen);
extern int kernel_getpeername(struct socket *sock, struct sockaddr *addr,
         int *addrlen);
extern int kernel_getsockopt(struct socket *sock, int level, int optname,
        char *optval, int *optlen);
extern int kernel_setsockopt(struct socket *sock, int level, int optname,
        char *optval, int optlen);
extern int kernel_sendpage(struct socket *sock, struct page *page, int offset,
      size_t size, int flags);
extern int kernel_sock_ioctl(struct socket *sock, int cmd, unsigned long arg);
extern int kernel_sock_shutdown(struct socket *sock,
    enum sock_shutdown_cmd how);
# 355 "include/linux/net.h"
# 1 "include/linux/sysctl.h" 1
# 32 "include/linux/sysctl.h"
struct file;
struct completion;






struct __sysctl_args {
 int *name;
 int nlen;
 void *oldval;
 size_t *oldlenp;
 void *newval;
 size_t newlen;
 unsigned long __unused[4];
};
# 60 "include/linux/sysctl.h"
enum
{
 CTL_KERN=1,
 CTL_VM=2,
 CTL_NET=3,
 CTL_PROC=4,
 CTL_FS=5,
 CTL_DEBUG=6,
 CTL_DEV=7,
 CTL_BUS=8,
 CTL_ABI=9,
 CTL_CPU=10,
 CTL_ARLAN=254,
 CTL_S390DBF=5677,
 CTL_SUNRPC=7249,
 CTL_PM=9899,
 CTL_FRV=9898,
};


enum
{
 CTL_BUS_ISA=1
};


enum
{
 INOTIFY_MAX_USER_INSTANCES=1,
 INOTIFY_MAX_USER_WATCHES=2,
 INOTIFY_MAX_QUEUED_EVENTS=3
};


enum
{
 KERN_OSTYPE=1,
 KERN_OSRELEASE=2,
 KERN_OSREV=3,
 KERN_VERSION=4,
 KERN_SECUREMASK=5,
 KERN_PROF=6,
 KERN_NODENAME=7,
 KERN_DOMAINNAME=8,

 KERN_PANIC=15,
 KERN_REALROOTDEV=16,

 KERN_SPARC_REBOOT=21,
 KERN_CTLALTDEL=22,
 KERN_PRINTK=23,
 KERN_NAMETRANS=24,
 KERN_PPC_HTABRECLAIM=25,
 KERN_PPC_ZEROPAGED=26,
 KERN_PPC_POWERSAVE_NAP=27,
 KERN_MODPROBE=28,
 KERN_SG_BIG_BUFF=29,
 KERN_ACCT=30,
 KERN_PPC_L2CR=31,

 KERN_RTSIGNR=32,
 KERN_RTSIGMAX=33,

 KERN_SHMMAX=34,
 KERN_MSGMAX=35,
 KERN_MSGMNB=36,
 KERN_MSGPOOL=37,
 KERN_SYSRQ=38,
 KERN_MAX_THREADS=39,
  KERN_RANDOM=40,
  KERN_SHMALL=41,
  KERN_MSGMNI=42,
  KERN_SEM=43,
  KERN_SPARC_STOP_A=44,
  KERN_SHMMNI=45,
 KERN_OVERFLOWUID=46,
 KERN_OVERFLOWGID=47,
 KERN_SHMPATH=48,
 KERN_HOTPLUG=49,
 KERN_IEEE_EMULATION_WARNINGS=50,
 KERN_S390_USER_DEBUG_LOGGING=51,
 KERN_CORE_USES_PID=52,
 KERN_TAINTED=53,
 KERN_CADPID=54,
 KERN_PIDMAX=55,
   KERN_CORE_PATTERN=56,
 KERN_PANIC_ON_OOPS=57,
 KERN_HPPA_PWRSW=58,
 KERN_HPPA_UNALIGNED=59,
 KERN_PRINTK_RATELIMIT=60,
 KERN_PRINTK_RATELIMIT_BURST=61,
 KERN_PTY=62,
 KERN_NGROUPS_MAX=63,
 KERN_SPARC_SCONS_PWROFF=64,
 KERN_HZ_TIMER=65,
 KERN_UNKNOWN_NMI_PANIC=66,
 KERN_BOOTLOADER_TYPE=67,
 KERN_RANDOMIZE=68,
 KERN_SETUID_DUMPABLE=69,
 KERN_SPIN_RETRY=70,
 KERN_ACPI_VIDEO_FLAGS=71,
 KERN_IA64_UNALIGNED=72,
 KERN_COMPAT_LOG=73,
 KERN_MAX_LOCK_DEPTH=74,
 KERN_NMI_WATCHDOG=75,
 KERN_PANIC_ON_NMI=76,
};




enum
{
 VM_UNUSED1=1,
 VM_UNUSED2=2,
 VM_UNUSED3=3,
 VM_UNUSED4=4,
 VM_OVERCOMMIT_MEMORY=5,
 VM_UNUSED5=6,
 VM_UNUSED7=7,
 VM_UNUSED8=8,
 VM_UNUSED9=9,
 VM_PAGE_CLUSTER=10,
 VM_DIRTY_BACKGROUND=11,
 VM_DIRTY_RATIO=12,
 VM_DIRTY_WB_CS=13,
 VM_DIRTY_EXPIRE_CS=14,
 VM_NR_PDFLUSH_THREADS=15,
 VM_OVERCOMMIT_RATIO=16,
 VM_PAGEBUF=17,
 VM_HUGETLB_PAGES=18,
 VM_SWAPPINESS=19,
 VM_LOWMEM_RESERVE_RATIO=20,
 VM_MIN_FREE_KBYTES=21,
 VM_MAX_MAP_COUNT=22,
 VM_LAPTOP_MODE=23,
 VM_BLOCK_DUMP=24,
 VM_HUGETLB_GROUP=25,
 VM_VFS_CACHE_PRESSURE=26,
 VM_LEGACY_VA_LAYOUT=27,
 VM_SWAP_TOKEN_TIMEOUT=28,
 VM_DROP_PAGECACHE=29,
 VM_PERCPU_PAGELIST_FRACTION=30,
 VM_ZONE_RECLAIM_MODE=31,
 VM_MIN_UNMAPPED=32,
 VM_PANIC_ON_OOM=33,
 VM_VDSO_ENABLED=34,
 VM_MIN_SLAB=35,
};



enum
{
 NET_CORE=1,
 NET_ETHER=2,
 NET_802=3,
 NET_UNIX=4,
 NET_IPV4=5,
 NET_IPX=6,
 NET_ATALK=7,
 NET_NETROM=8,
 NET_AX25=9,
 NET_BRIDGE=10,
 NET_ROSE=11,
 NET_IPV6=12,
 NET_X25=13,
 NET_TR=14,
 NET_DECNET=15,
 NET_ECONET=16,
 NET_SCTP=17,
 NET_LLC=18,
 NET_NETFILTER=19,
 NET_DCCP=20,
 NET_IRDA=412,
};


enum
{
 RANDOM_POOLSIZE=1,
 RANDOM_ENTROPY_COUNT=2,
 RANDOM_READ_THRESH=3,
 RANDOM_WRITE_THRESH=4,
 RANDOM_BOOT_ID=5,
 RANDOM_UUID=6
};


enum
{
 PTY_MAX=1,
 PTY_NR=2
};


enum
{
 BUS_ISA_MEM_BASE=1,
 BUS_ISA_PORT_BASE=2,
 BUS_ISA_PORT_SHIFT=3
};


enum
{
 NET_CORE_WMEM_MAX=1,
 NET_CORE_RMEM_MAX=2,
 NET_CORE_WMEM_DEFAULT=3,
 NET_CORE_RMEM_DEFAULT=4,

 NET_CORE_MAX_BACKLOG=6,
 NET_CORE_FASTROUTE=7,
 NET_CORE_MSG_COST=8,
 NET_CORE_MSG_BURST=9,
 NET_CORE_OPTMEM_MAX=10,
 NET_CORE_HOT_LIST_LENGTH=11,
 NET_CORE_DIVERT_VERSION=12,
 NET_CORE_NO_CONG_THRESH=13,
 NET_CORE_NO_CONG=14,
 NET_CORE_LO_CONG=15,
 NET_CORE_MOD_CONG=16,
 NET_CORE_DEV_WEIGHT=17,
 NET_CORE_SOMAXCONN=18,
 NET_CORE_BUDGET=19,
 NET_CORE_AEVENT_ETIME=20,
 NET_CORE_AEVENT_RSEQTH=21,
 NET_CORE_WARNINGS=22,
};







enum
{
 NET_UNIX_DESTROY_DELAY=1,
 NET_UNIX_DELETE_DELAY=2,
 NET_UNIX_MAX_DGRAM_QLEN=3,
};


enum
{
 NET_NF_CONNTRACK_MAX=1,
 NET_NF_CONNTRACK_TCP_TIMEOUT_SYN_SENT=2,
 NET_NF_CONNTRACK_TCP_TIMEOUT_SYN_RECV=3,
 NET_NF_CONNTRACK_TCP_TIMEOUT_ESTABLISHED=4,
 NET_NF_CONNTRACK_TCP_TIMEOUT_FIN_WAIT=5,
 NET_NF_CONNTRACK_TCP_TIMEOUT_CLOSE_WAIT=6,
 NET_NF_CONNTRACK_TCP_TIMEOUT_LAST_ACK=7,
 NET_NF_CONNTRACK_TCP_TIMEOUT_TIME_WAIT=8,
 NET_NF_CONNTRACK_TCP_TIMEOUT_CLOSE=9,
 NET_NF_CONNTRACK_UDP_TIMEOUT=10,
 NET_NF_CONNTRACK_UDP_TIMEOUT_STREAM=11,
 NET_NF_CONNTRACK_ICMP_TIMEOUT=12,
 NET_NF_CONNTRACK_GENERIC_TIMEOUT=13,
 NET_NF_CONNTRACK_BUCKETS=14,
 NET_NF_CONNTRACK_LOG_INVALID=15,
 NET_NF_CONNTRACK_TCP_TIMEOUT_MAX_RETRANS=16,
 NET_NF_CONNTRACK_TCP_LOOSE=17,
 NET_NF_CONNTRACK_TCP_BE_LIBERAL=18,
 NET_NF_CONNTRACK_TCP_MAX_RETRANS=19,
 NET_NF_CONNTRACK_SCTP_TIMEOUT_CLOSED=20,
 NET_NF_CONNTRACK_SCTP_TIMEOUT_COOKIE_WAIT=21,
 NET_NF_CONNTRACK_SCTP_TIMEOUT_COOKIE_ECHOED=22,
 NET_NF_CONNTRACK_SCTP_TIMEOUT_ESTABLISHED=23,
 NET_NF_CONNTRACK_SCTP_TIMEOUT_SHUTDOWN_SENT=24,
 NET_NF_CONNTRACK_SCTP_TIMEOUT_SHUTDOWN_RECD=25,
 NET_NF_CONNTRACK_SCTP_TIMEOUT_SHUTDOWN_ACK_SENT=26,
 NET_NF_CONNTRACK_COUNT=27,
 NET_NF_CONNTRACK_ICMPV6_TIMEOUT=28,
 NET_NF_CONNTRACK_FRAG6_TIMEOUT=29,
 NET_NF_CONNTRACK_FRAG6_LOW_THRESH=30,
 NET_NF_CONNTRACK_FRAG6_HIGH_THRESH=31,
 NET_NF_CONNTRACK_CHECKSUM=32,

 NET_NF_CONNTRACK_GARBAGE_TCP,
 NET_NF_CONNTRACK_GARBAGE_UDP,


};


enum
{

 NET_IPV4_FORWARD=8,
 NET_IPV4_DYNADDR=9,

 NET_IPV4_CONF=16,
 NET_IPV4_NEIGH=17,
 NET_IPV4_ROUTE=18,
 NET_IPV4_FIB_HASH=19,
 NET_IPV4_NETFILTER=20,

 NET_IPV4_TCP_TIMESTAMPS=33,
 NET_IPV4_TCP_WINDOW_SCALING=34,
 NET_IPV4_TCP_SACK=35,
 NET_IPV4_TCP_RETRANS_COLLAPSE=36,
 NET_IPV4_DEFAULT_TTL=37,
 NET_IPV4_AUTOCONFIG=38,
 NET_IPV4_NO_PMTU_DISC=39,
 NET_IPV4_TCP_SYN_RETRIES=40,
 NET_IPV4_IPFRAG_HIGH_THRESH=41,
 NET_IPV4_IPFRAG_LOW_THRESH=42,
 NET_IPV4_IPFRAG_TIME=43,
 NET_IPV4_TCP_MAX_KA_PROBES=44,
 NET_IPV4_TCP_KEEPALIVE_TIME=45,
 NET_IPV4_TCP_KEEPALIVE_PROBES=46,
 NET_IPV4_TCP_RETRIES1=47,
 NET_IPV4_TCP_RETRIES2=48,
 NET_IPV4_TCP_FIN_TIMEOUT=49,
 NET_IPV4_IP_MASQ_DEBUG=50,
 NET_TCP_SYNCOOKIES=51,
 NET_TCP_STDURG=52,
 NET_TCP_RFC1337=53,
 NET_TCP_SYN_TAILDROP=54,
 NET_TCP_MAX_SYN_BACKLOG=55,
 NET_IPV4_LOCAL_PORT_RANGE=56,
 NET_IPV4_ICMP_ECHO_IGNORE_ALL=57,
 NET_IPV4_ICMP_ECHO_IGNORE_BROADCASTS=58,
 NET_IPV4_ICMP_SOURCEQUENCH_RATE=59,
 NET_IPV4_ICMP_DESTUNREACH_RATE=60,
 NET_IPV4_ICMP_TIMEEXCEED_RATE=61,
 NET_IPV4_ICMP_PARAMPROB_RATE=62,
 NET_IPV4_ICMP_ECHOREPLY_RATE=63,
 NET_IPV4_ICMP_IGNORE_BOGUS_ERROR_RESPONSES=64,
 NET_IPV4_IGMP_MAX_MEMBERSHIPS=65,
 NET_TCP_TW_RECYCLE=66,
 NET_IPV4_ALWAYS_DEFRAG=67,
 NET_IPV4_TCP_KEEPALIVE_INTVL=68,
 NET_IPV4_INET_PEER_THRESHOLD=69,
 NET_IPV4_INET_PEER_MINTTL=70,
 NET_IPV4_INET_PEER_MAXTTL=71,
 NET_IPV4_INET_PEER_GC_MINTIME=72,
 NET_IPV4_INET_PEER_GC_MAXTIME=73,
 NET_TCP_ORPHAN_RETRIES=74,
 NET_TCP_ABORT_ON_OVERFLOW=75,
 NET_TCP_SYNACK_RETRIES=76,
 NET_TCP_MAX_ORPHANS=77,
 NET_TCP_MAX_TW_BUCKETS=78,
 NET_TCP_FACK=79,
 NET_TCP_REORDERING=80,
 NET_TCP_ECN=81,
 NET_TCP_DSACK=82,
 NET_TCP_MEM=83,
 NET_TCP_WMEM=84,
 NET_TCP_RMEM=85,
 NET_TCP_APP_WIN=86,
 NET_TCP_ADV_WIN_SCALE=87,
 NET_IPV4_NONLOCAL_BIND=88,
 NET_IPV4_ICMP_RATELIMIT=89,
 NET_IPV4_ICMP_RATEMASK=90,
 NET_TCP_TW_REUSE=91,
 NET_TCP_FRTO=92,
 NET_TCP_LOW_LATENCY=93,
 NET_IPV4_IPFRAG_SECRET_INTERVAL=94,
 NET_IPV4_IGMP_MAX_MSF=96,
 NET_TCP_NO_METRICS_SAVE=97,
 NET_TCP_DEFAULT_WIN_SCALE=105,
 NET_TCP_MODERATE_RCVBUF=106,
 NET_TCP_TSO_WIN_DIVISOR=107,
 NET_TCP_BIC_BETA=108,
 NET_IPV4_ICMP_ERRORS_USE_INBOUND_IFADDR=109,
 NET_TCP_CONG_CONTROL=110,
 NET_TCP_ABC=111,
 NET_IPV4_IPFRAG_MAX_DIST=112,
  NET_TCP_MTU_PROBING=113,
 NET_TCP_BASE_MSS=114,
 NET_IPV4_TCP_WORKAROUND_SIGNED_WINDOWS=115,
 NET_TCP_DMA_COPYBREAK=116,
 NET_TCP_SLOW_START_AFTER_IDLE=117,
 NET_CIPSOV4_CACHE_ENABLE=118,
 NET_CIPSOV4_CACHE_BUCKET_SIZE=119,
 NET_CIPSOV4_RBM_OPTFMT=120,
 NET_CIPSOV4_RBM_STRICTVALID=121,
 NET_TCP_AVAIL_CONG_CONTROL=122,
 NET_TCP_ALLOWED_CONG_CONTROL=123,
 NET_TCP_MAX_SSTHRESH=124,
 NET_TCP_FRTO_RESPONSE=125,
};

enum {
 NET_IPV4_ROUTE_FLUSH=1,
 NET_IPV4_ROUTE_MIN_DELAY=2,
 NET_IPV4_ROUTE_MAX_DELAY=3,
 NET_IPV4_ROUTE_GC_THRESH=4,
 NET_IPV4_ROUTE_MAX_SIZE=5,
 NET_IPV4_ROUTE_GC_MIN_INTERVAL=6,
 NET_IPV4_ROUTE_GC_TIMEOUT=7,
 NET_IPV4_ROUTE_GC_INTERVAL=8,
 NET_IPV4_ROUTE_REDIRECT_LOAD=9,
 NET_IPV4_ROUTE_REDIRECT_NUMBER=10,
 NET_IPV4_ROUTE_REDIRECT_SILENCE=11,
 NET_IPV4_ROUTE_ERROR_COST=12,
 NET_IPV4_ROUTE_ERROR_BURST=13,
 NET_IPV4_ROUTE_GC_ELASTICITY=14,
 NET_IPV4_ROUTE_MTU_EXPIRES=15,
 NET_IPV4_ROUTE_MIN_PMTU=16,
 NET_IPV4_ROUTE_MIN_ADVMSS=17,
 NET_IPV4_ROUTE_SECRET_INTERVAL=18,
 NET_IPV4_ROUTE_GC_MIN_INTERVAL_MS=19,
};

enum
{
 NET_PROTO_CONF_ALL=-2,
 NET_PROTO_CONF_DEFAULT=-3


};

enum
{
 NET_IPV4_CONF_FORWARDING=1,
 NET_IPV4_CONF_MC_FORWARDING=2,
 NET_IPV4_CONF_PROXY_ARP=3,
 NET_IPV4_CONF_ACCEPT_REDIRECTS=4,
 NET_IPV4_CONF_SECURE_REDIRECTS=5,
 NET_IPV4_CONF_SEND_REDIRECTS=6,
 NET_IPV4_CONF_SHARED_MEDIA=7,
 NET_IPV4_CONF_RP_FILTER=8,
 NET_IPV4_CONF_ACCEPT_SOURCE_ROUTE=9,
 NET_IPV4_CONF_BOOTP_RELAY=10,
 NET_IPV4_CONF_LOG_MARTIANS=11,
 NET_IPV4_CONF_TAG=12,
 NET_IPV4_CONF_ARPFILTER=13,
 NET_IPV4_CONF_MEDIUM_ID=14,
 NET_IPV4_CONF_NOXFRM=15,
 NET_IPV4_CONF_NOPOLICY=16,
 NET_IPV4_CONF_FORCE_IGMP_VERSION=17,
 NET_IPV4_CONF_ARP_ANNOUNCE=18,
 NET_IPV4_CONF_ARP_IGNORE=19,
 NET_IPV4_CONF_PROMOTE_SECONDARIES=20,
 NET_IPV4_CONF_ARP_ACCEPT=21,
 NET_IPV4_CONF_ARP_NOTIFY=22,
 __NET_IPV4_CONF_MAX
};


enum
{
 NET_IPV4_NF_CONNTRACK_MAX=1,
 NET_IPV4_NF_CONNTRACK_TCP_TIMEOUT_SYN_SENT=2,
 NET_IPV4_NF_CONNTRACK_TCP_TIMEOUT_SYN_RECV=3,
 NET_IPV4_NF_CONNTRACK_TCP_TIMEOUT_ESTABLISHED=4,
 NET_IPV4_NF_CONNTRACK_TCP_TIMEOUT_FIN_WAIT=5,
 NET_IPV4_NF_CONNTRACK_TCP_TIMEOUT_CLOSE_WAIT=6,
 NET_IPV4_NF_CONNTRACK_TCP_TIMEOUT_LAST_ACK=7,
 NET_IPV4_NF_CONNTRACK_TCP_TIMEOUT_TIME_WAIT=8,
 NET_IPV4_NF_CONNTRACK_TCP_TIMEOUT_CLOSE=9,
 NET_IPV4_NF_CONNTRACK_UDP_TIMEOUT=10,
 NET_IPV4_NF_CONNTRACK_UDP_TIMEOUT_STREAM=11,
 NET_IPV4_NF_CONNTRACK_ICMP_TIMEOUT=12,
 NET_IPV4_NF_CONNTRACK_GENERIC_TIMEOUT=13,
 NET_IPV4_NF_CONNTRACK_BUCKETS=14,
 NET_IPV4_NF_CONNTRACK_LOG_INVALID=15,
 NET_IPV4_NF_CONNTRACK_TCP_TIMEOUT_MAX_RETRANS=16,
 NET_IPV4_NF_CONNTRACK_TCP_LOOSE=17,
 NET_IPV4_NF_CONNTRACK_TCP_BE_LIBERAL=18,
 NET_IPV4_NF_CONNTRACK_TCP_MAX_RETRANS=19,
  NET_IPV4_NF_CONNTRACK_SCTP_TIMEOUT_CLOSED=20,
  NET_IPV4_NF_CONNTRACK_SCTP_TIMEOUT_COOKIE_WAIT=21,
  NET_IPV4_NF_CONNTRACK_SCTP_TIMEOUT_COOKIE_ECHOED=22,
  NET_IPV4_NF_CONNTRACK_SCTP_TIMEOUT_ESTABLISHED=23,
  NET_IPV4_NF_CONNTRACK_SCTP_TIMEOUT_SHUTDOWN_SENT=24,
  NET_IPV4_NF_CONNTRACK_SCTP_TIMEOUT_SHUTDOWN_RECD=25,
  NET_IPV4_NF_CONNTRACK_SCTP_TIMEOUT_SHUTDOWN_ACK_SENT=26,
 NET_IPV4_NF_CONNTRACK_COUNT=27,
 NET_IPV4_NF_CONNTRACK_CHECKSUM=28,
};


enum {
 NET_IPV6_CONF=16,
 NET_IPV6_NEIGH=17,
 NET_IPV6_ROUTE=18,
 NET_IPV6_ICMP=19,
 NET_IPV6_BINDV6ONLY=20,
 NET_IPV6_IP6FRAG_HIGH_THRESH=21,
 NET_IPV6_IP6FRAG_LOW_THRESH=22,
 NET_IPV6_IP6FRAG_TIME=23,
 NET_IPV6_IP6FRAG_SECRET_INTERVAL=24,
 NET_IPV6_MLD_MAX_MSF=25,
};

enum {
 NET_IPV6_ROUTE_FLUSH=1,
 NET_IPV6_ROUTE_GC_THRESH=2,
 NET_IPV6_ROUTE_MAX_SIZE=3,
 NET_IPV6_ROUTE_GC_MIN_INTERVAL=4,
 NET_IPV6_ROUTE_GC_TIMEOUT=5,
 NET_IPV6_ROUTE_GC_INTERVAL=6,
 NET_IPV6_ROUTE_GC_ELASTICITY=7,
 NET_IPV6_ROUTE_MTU_EXPIRES=8,
 NET_IPV6_ROUTE_MIN_ADVMSS=9,
 NET_IPV6_ROUTE_GC_MIN_INTERVAL_MS=10
};

enum {
 NET_IPV6_FORWARDING=1,
 NET_IPV6_HOP_LIMIT=2,
 NET_IPV6_MTU=3,
 NET_IPV6_ACCEPT_RA=4,
 NET_IPV6_ACCEPT_REDIRECTS=5,
 NET_IPV6_AUTOCONF=6,
 NET_IPV6_DAD_TRANSMITS=7,
 NET_IPV6_RTR_SOLICITS=8,
 NET_IPV6_RTR_SOLICIT_INTERVAL=9,
 NET_IPV6_RTR_SOLICIT_DELAY=10,
 NET_IPV6_USE_TEMPADDR=11,
 NET_IPV6_TEMP_VALID_LFT=12,
 NET_IPV6_TEMP_PREFERED_LFT=13,
 NET_IPV6_REGEN_MAX_RETRY=14,
 NET_IPV6_MAX_DESYNC_FACTOR=15,
 NET_IPV6_MAX_ADDRESSES=16,
 NET_IPV6_FORCE_MLD_VERSION=17,
 NET_IPV6_ACCEPT_RA_DEFRTR=18,
 NET_IPV6_ACCEPT_RA_PINFO=19,
 NET_IPV6_ACCEPT_RA_RTR_PREF=20,
 NET_IPV6_RTR_PROBE_INTERVAL=21,
 NET_IPV6_ACCEPT_RA_RT_INFO_MAX_PLEN=22,
 NET_IPV6_PROXY_NDP=23,
 NET_IPV6_ACCEPT_SOURCE_ROUTE=25,
 __NET_IPV6_MAX
};


enum {
 NET_IPV6_ICMP_RATELIMIT=1
};


enum {
 NET_NEIGH_MCAST_SOLICIT=1,
 NET_NEIGH_UCAST_SOLICIT=2,
 NET_NEIGH_APP_SOLICIT=3,
 NET_NEIGH_RETRANS_TIME=4,
 NET_NEIGH_REACHABLE_TIME=5,
 NET_NEIGH_DELAY_PROBE_TIME=6,
 NET_NEIGH_GC_STALE_TIME=7,
 NET_NEIGH_UNRES_QLEN=8,
 NET_NEIGH_PROXY_QLEN=9,
 NET_NEIGH_ANYCAST_DELAY=10,
 NET_NEIGH_PROXY_DELAY=11,
 NET_NEIGH_LOCKTIME=12,
 NET_NEIGH_GC_INTERVAL=13,
 NET_NEIGH_GC_THRESH1=14,
 NET_NEIGH_GC_THRESH2=15,
 NET_NEIGH_GC_THRESH3=16,
 NET_NEIGH_RETRANS_TIME_MS=17,
 NET_NEIGH_REACHABLE_TIME_MS=18,
 __NET_NEIGH_MAX
};


enum {
 NET_DCCP_DEFAULT=1,
};


enum {
 NET_IPX_PPROP_BROADCASTING=1,
 NET_IPX_FORWARDING=2
};


enum {
 NET_LLC2=1,
 NET_LLC_STATION=2,
};


enum {
 NET_LLC2_TIMEOUT=1,
};


enum {
 NET_LLC_STATION_ACK_TIMEOUT=1,
};


enum {
 NET_LLC2_ACK_TIMEOUT=1,
 NET_LLC2_P_TIMEOUT=2,
 NET_LLC2_REJ_TIMEOUT=3,
 NET_LLC2_BUSY_TIMEOUT=4,
};


enum {
 NET_ATALK_AARP_EXPIRY_TIME=1,
 NET_ATALK_AARP_TICK_TIME=2,
 NET_ATALK_AARP_RETRANSMIT_LIMIT=3,
 NET_ATALK_AARP_RESOLVE_TIME=4
};



enum {
 NET_NETROM_DEFAULT_PATH_QUALITY=1,
 NET_NETROM_OBSOLESCENCE_COUNT_INITIALISER=2,
 NET_NETROM_NETWORK_TTL_INITIALISER=3,
 NET_NETROM_TRANSPORT_TIMEOUT=4,
 NET_NETROM_TRANSPORT_MAXIMUM_TRIES=5,
 NET_NETROM_TRANSPORT_ACKNOWLEDGE_DELAY=6,
 NET_NETROM_TRANSPORT_BUSY_DELAY=7,
 NET_NETROM_TRANSPORT_REQUESTED_WINDOW_SIZE=8,
 NET_NETROM_TRANSPORT_NO_ACTIVITY_TIMEOUT=9,
 NET_NETROM_ROUTING_CONTROL=10,
 NET_NETROM_LINK_FAILS_COUNT=11,
 NET_NETROM_RESET=12
};


enum {
 NET_AX25_IP_DEFAULT_MODE=1,
 NET_AX25_DEFAULT_MODE=2,
 NET_AX25_BACKOFF_TYPE=3,
 NET_AX25_CONNECT_MODE=4,
 NET_AX25_STANDARD_WINDOW=5,
 NET_AX25_EXTENDED_WINDOW=6,
 NET_AX25_T1_TIMEOUT=7,
 NET_AX25_T2_TIMEOUT=8,
 NET_AX25_T3_TIMEOUT=9,
 NET_AX25_IDLE_TIMEOUT=10,
 NET_AX25_N2=11,
 NET_AX25_PACLEN=12,
 NET_AX25_PROTOCOL=13,
 NET_AX25_DAMA_SLAVE_TIMEOUT=14
};


enum {
 NET_ROSE_RESTART_REQUEST_TIMEOUT=1,
 NET_ROSE_CALL_REQUEST_TIMEOUT=2,
 NET_ROSE_RESET_REQUEST_TIMEOUT=3,
 NET_ROSE_CLEAR_REQUEST_TIMEOUT=4,
 NET_ROSE_ACK_HOLD_BACK_TIMEOUT=5,
 NET_ROSE_ROUTING_CONTROL=6,
 NET_ROSE_LINK_FAIL_TIMEOUT=7,
 NET_ROSE_MAX_VCS=8,
 NET_ROSE_WINDOW_SIZE=9,
 NET_ROSE_NO_ACTIVITY_TIMEOUT=10
};


enum {
 NET_X25_RESTART_REQUEST_TIMEOUT=1,
 NET_X25_CALL_REQUEST_TIMEOUT=2,
 NET_X25_RESET_REQUEST_TIMEOUT=3,
 NET_X25_CLEAR_REQUEST_TIMEOUT=4,
 NET_X25_ACK_HOLD_BACK_TIMEOUT=5,
 NET_X25_FORWARD=6
};


enum
{
 NET_TR_RIF_TIMEOUT=1
};


enum {
 NET_DECNET_NODE_TYPE = 1,
 NET_DECNET_NODE_ADDRESS = 2,
 NET_DECNET_NODE_NAME = 3,
 NET_DECNET_DEFAULT_DEVICE = 4,
 NET_DECNET_TIME_WAIT = 5,
 NET_DECNET_DN_COUNT = 6,
 NET_DECNET_DI_COUNT = 7,
 NET_DECNET_DR_COUNT = 8,
 NET_DECNET_DST_GC_INTERVAL = 9,
 NET_DECNET_CONF = 10,
 NET_DECNET_NO_FC_MAX_CWND = 11,
 NET_DECNET_MEM = 12,
 NET_DECNET_RMEM = 13,
 NET_DECNET_WMEM = 14,
 NET_DECNET_DEBUG_LEVEL = 255
};


enum {
 NET_DECNET_CONF_LOOPBACK = -2,
 NET_DECNET_CONF_DDCMP = -3,
 NET_DECNET_CONF_PPP = -4,
 NET_DECNET_CONF_X25 = -5,
 NET_DECNET_CONF_GRE = -6,
 NET_DECNET_CONF_ETHER = -7


};


enum {
 NET_DECNET_CONF_DEV_PRIORITY = 1,
 NET_DECNET_CONF_DEV_T1 = 2,
 NET_DECNET_CONF_DEV_T2 = 3,
 NET_DECNET_CONF_DEV_T3 = 4,
 NET_DECNET_CONF_DEV_FORWARDING = 5,
 NET_DECNET_CONF_DEV_BLKSIZE = 6,
 NET_DECNET_CONF_DEV_STATE = 7
};


enum {
 NET_SCTP_RTO_INITIAL = 1,
 NET_SCTP_RTO_MIN = 2,
 NET_SCTP_RTO_MAX = 3,
 NET_SCTP_RTO_ALPHA = 4,
 NET_SCTP_RTO_BETA = 5,
 NET_SCTP_VALID_COOKIE_LIFE = 6,
 NET_SCTP_ASSOCIATION_MAX_RETRANS = 7,
 NET_SCTP_PATH_MAX_RETRANS = 8,
 NET_SCTP_MAX_INIT_RETRANSMITS = 9,
 NET_SCTP_HB_INTERVAL = 10,
 NET_SCTP_PRESERVE_ENABLE = 11,
 NET_SCTP_MAX_BURST = 12,
 NET_SCTP_ADDIP_ENABLE = 13,
 NET_SCTP_PRSCTP_ENABLE = 14,
 NET_SCTP_SNDBUF_POLICY = 15,
 NET_SCTP_SACK_TIMEOUT = 16,
 NET_SCTP_RCVBUF_POLICY = 17,
};


enum {
 NET_BRIDGE_NF_CALL_ARPTABLES = 1,
 NET_BRIDGE_NF_CALL_IPTABLES = 2,
 NET_BRIDGE_NF_CALL_IP6TABLES = 3,
 NET_BRIDGE_NF_FILTER_VLAN_TAGGED = 4,
 NET_BRIDGE_NF_FILTER_PPPOE_TAGGED = 5,
};


enum {
 NET_IRDA_DISCOVERY=1,
 NET_IRDA_DEVNAME=2,
 NET_IRDA_DEBUG=3,
 NET_IRDA_FAST_POLL=4,
 NET_IRDA_DISCOVERY_SLOTS=5,
 NET_IRDA_DISCOVERY_TIMEOUT=6,
 NET_IRDA_SLOT_TIMEOUT=7,
 NET_IRDA_MAX_BAUD_RATE=8,
 NET_IRDA_MIN_TX_TURN_TIME=9,
 NET_IRDA_MAX_TX_DATA_SIZE=10,
 NET_IRDA_MAX_TX_WINDOW=11,
 NET_IRDA_MAX_NOREPLY_TIME=12,
 NET_IRDA_WARN_NOREPLY_TIME=13,
 NET_IRDA_LAP_KEEPALIVE_TIME=14,
};



enum
{
 FS_NRINODE=1,
 FS_STATINODE=2,
 FS_MAXINODE=3,
 FS_NRDQUOT=4,
 FS_MAXDQUOT=5,
 FS_NRFILE=6,
 FS_MAXFILE=7,
 FS_DENTRY=8,
 FS_NRSUPER=9,
 FS_MAXSUPER=10,
 FS_OVERFLOWUID=11,
 FS_OVERFLOWGID=12,
 FS_LEASES=13,
 FS_DIR_NOTIFY=14,
 FS_LEASE_TIME=15,
 FS_DQSTATS=16,
 FS_XFS=17,
 FS_AIO_NR=18,
 FS_AIO_MAX_NR=19,
 FS_INOTIFY=20,
 FS_OCFS2=988,
};


enum {
 FS_DQ_LOOKUPS = 1,
 FS_DQ_DROPS = 2,
 FS_DQ_READS = 3,
 FS_DQ_WRITES = 4,
 FS_DQ_CACHE_HITS = 5,
 FS_DQ_ALLOCATED = 6,
 FS_DQ_FREE = 7,
 FS_DQ_SYNCS = 8,
 FS_DQ_WARNINGS = 9,
};




enum {
 DEV_CDROM=1,
 DEV_HWMON=2,
 DEV_PARPORT=3,
 DEV_RAID=4,
 DEV_MAC_HID=5,
 DEV_SCSI=6,
 DEV_IPMI=7,
};


enum {
 DEV_CDROM_INFO=1,
 DEV_CDROM_AUTOCLOSE=2,
 DEV_CDROM_AUTOEJECT=3,
 DEV_CDROM_DEBUG=4,
 DEV_CDROM_LOCK=5,
 DEV_CDROM_CHECK_MEDIA=6
};


enum {
 DEV_PARPORT_DEFAULT=-3
};


enum {
 DEV_RAID_SPEED_LIMIT_MIN=1,
 DEV_RAID_SPEED_LIMIT_MAX=2
};


enum {
 DEV_PARPORT_DEFAULT_TIMESLICE=1,
 DEV_PARPORT_DEFAULT_SPINTIME=2
};


enum {
 DEV_PARPORT_SPINTIME=1,
 DEV_PARPORT_BASE_ADDR=2,
 DEV_PARPORT_IRQ=3,
 DEV_PARPORT_DMA=4,
 DEV_PARPORT_MODES=5,
 DEV_PARPORT_DEVICES=6,
 DEV_PARPORT_AUTOPROBE=16
};


enum {
 DEV_PARPORT_DEVICES_ACTIVE=-3,
};


enum {
 DEV_PARPORT_DEVICE_TIMESLICE=1,
};


enum {
 DEV_MAC_HID_KEYBOARD_SENDS_LINUX_KEYCODES=1,
 DEV_MAC_HID_KEYBOARD_LOCK_KEYCODES=2,
 DEV_MAC_HID_MOUSE_BUTTON_EMULATION=3,
 DEV_MAC_HID_MOUSE_BUTTON2_KEYCODE=4,
 DEV_MAC_HID_MOUSE_BUTTON3_KEYCODE=5,
 DEV_MAC_HID_ADB_MOUSE_SENDS_KEYCODES=6
};


enum {
 DEV_SCSI_LOGGING_LEVEL=1,
};


enum {
 DEV_IPMI_POWEROFF_POWERCYCLE=1,
};


enum
{
 ABI_DEFHANDLER_COFF=1,
 ABI_DEFHANDLER_ELF=2,
 ABI_DEFHANDLER_LCALL7=3,
 ABI_DEFHANDLER_LIBCSO=4,
 ABI_TRACE=5,
 ABI_FAKE_UTSNAME=6,
};





struct ctl_table;
struct nsproxy;
struct ctl_table_root;

struct ctl_table_set {
 struct list_head list;
 struct ctl_table_set *parent;
 int (*is_seen)(struct ctl_table_set *);
};

extern void setup_sysctl_set(struct ctl_table_set *p,
 struct ctl_table_set *parent,
 int (*is_seen)(struct ctl_table_set *));

struct ctl_table_header;

extern void sysctl_head_get(struct ctl_table_header *);
extern void sysctl_head_put(struct ctl_table_header *);
extern int sysctl_is_seen(struct ctl_table_header *);
extern struct ctl_table_header *sysctl_head_grab(struct ctl_table_header *);
extern struct ctl_table_header *sysctl_head_next(struct ctl_table_header *prev);
extern struct ctl_table_header *__sysctl_head_next(struct nsproxy *namespaces,
      struct ctl_table_header *prev);
extern void sysctl_head_finish(struct ctl_table_header *prev);
extern int sysctl_perm(struct ctl_table_root *root,
  struct ctl_table *table, int op);

typedef struct ctl_table ctl_table;

typedef int ctl_handler (struct ctl_table *table,
    void *oldval, size_t *oldlenp,
    void *newval, size_t newlen);

typedef int proc_handler (struct ctl_table *ctl, int write, struct file * filp,
     void *buffer, size_t *lenp, loff_t *ppos);

extern int proc_dostring(struct ctl_table *, int, struct file *,
    void *, size_t *, loff_t *);
extern int proc_dointvec(struct ctl_table *, int, struct file *,
    void *, size_t *, loff_t *);
extern int proc_dointvec_minmax(struct ctl_table *, int, struct file *,
    void *, size_t *, loff_t *);
extern int proc_dointvec_jiffies(struct ctl_table *, int, struct file *,
     void *, size_t *, loff_t *);
extern int proc_dointvec_userhz_jiffies(struct ctl_table *, int, struct file *,
     void *, size_t *, loff_t *);
extern int proc_dointvec_ms_jiffies(struct ctl_table *, int, struct file *,
        void *, size_t *, loff_t *);
extern int proc_doulongvec_minmax(struct ctl_table *, int, struct file *,
      void *, size_t *, loff_t *);
extern int proc_doulongvec_ms_jiffies_minmax(struct ctl_table *table, int,
          struct file *, void *, size_t *, loff_t *);

extern int do_sysctl (int *name, int nlen,
        void *oldval, size_t *oldlenp,
        void *newval, size_t newlen);

extern ctl_handler sysctl_data;
extern ctl_handler sysctl_string;
extern ctl_handler sysctl_intvec;
extern ctl_handler sysctl_jiffies;
extern ctl_handler sysctl_ms_jiffies;
# 1057 "include/linux/sysctl.h"
struct ctl_table
{
 int ctl_name;
 const char *procname;
 void *data;
 int maxlen;
 mode_t mode;
 struct ctl_table *child;
 struct ctl_table *parent;
 proc_handler *proc_handler;
 ctl_handler *strategy;
 void *extra1;
 void *extra2;
};

struct ctl_table_root {
 struct list_head root_list;
 struct ctl_table_set default_set;
 struct ctl_table_set *(*lookup)(struct ctl_table_root *root,
        struct nsproxy *namespaces);
 int (*permissions)(struct ctl_table_root *root,
   struct nsproxy *namespaces, struct ctl_table *table);
};



struct ctl_table_header
{
 struct ctl_table *ctl_table;
 struct list_head ctl_entry;
 int used;
 int count;
 struct completion *unregistering;
 struct ctl_table *ctl_table_arg;
 struct ctl_table_root *root;
 struct ctl_table_set *set;
 struct ctl_table *attached_by;
 struct ctl_table *attached_to;
 struct ctl_table_header *parent;
};


struct ctl_path {
 const char *procname;
 int ctl_name;
};

void register_sysctl_root(struct ctl_table_root *root);
struct ctl_table_header *__register_sysctl_paths(
 struct ctl_table_root *root, struct nsproxy *namespaces,
 const struct ctl_path *path, struct ctl_table *table);
struct ctl_table_header *register_sysctl_table(struct ctl_table * table);
struct ctl_table_header *register_sysctl_paths(const struct ctl_path *path,
      struct ctl_table *table);

void unregister_sysctl_table(struct ctl_table_header * table);
int sysctl_check_table(struct nsproxy *namespaces, struct ctl_table *table);
# 356 "include/linux/net.h" 2
extern struct ratelimit_state net_ratelimit_state;
# 26 "include/linux/skbuff.h" 2
# 1 "include/linux/textsearch.h" 1






# 1 "include/linux/module.h" 1
# 10 "include/linux/module.h"
# 1 "include/linux/stat.h" 1





# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/stat.h" 1
# 16 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/stat.h"
struct stat {
 unsigned st_dev;
 long st_pad1[3];
 ino_t st_ino;
 mode_t st_mode;
 nlink_t st_nlink;
 uid_t st_uid;
 gid_t st_gid;
 unsigned st_rdev;
 long st_pad2[2];
 off_t st_size;
 long st_pad3;




 time_t st_atime;
 long st_atime_nsec;
 time_t st_mtime;
 long st_mtime_nsec;
 time_t st_ctime;
 long st_ctime_nsec;
 long st_blksize;
 long st_blocks;
 long st_pad4[14];
};







struct stat64 {
 unsigned long st_dev;
 unsigned long st_pad0[3];

 unsigned long long st_ino;

 mode_t st_mode;
 nlink_t st_nlink;

 uid_t st_uid;
 gid_t st_gid;

 unsigned long st_rdev;
 unsigned long st_pad1[3];

 long long st_size;





 time_t st_atime;
 unsigned long st_atime_nsec;

 time_t st_mtime;
 unsigned long st_mtime_nsec;

 time_t st_ctime;
 unsigned long st_ctime_nsec;

 unsigned long st_blksize;
 unsigned long st_pad2;

 long long st_blocks;
};
# 7 "include/linux/stat.h" 2
# 62 "include/linux/stat.h"
struct kstat {
 u64 ino;
 dev_t dev;
 umode_t mode;
 unsigned int nlink;
 uid_t uid;
 gid_t gid;
 dev_t rdev;
 loff_t size;
 struct timespec atime;
 struct timespec mtime;
 struct timespec ctime;
 unsigned long blksize;
 unsigned long long blocks;
};
# 11 "include/linux/module.h" 2


# 1 "include/linux/kmod.h" 1
# 22 "include/linux/kmod.h"
# 1 "include/linux/gfp.h" 1



# 1 "include/linux/mmzone.h" 1
# 13 "include/linux/mmzone.h"
# 1 "include/linux/numa.h" 1
# 14 "include/linux/mmzone.h" 2
# 1 "include/linux/init.h" 1




# 1 "include/linux/section-names.h" 1
# 6 "include/linux/init.h" 2
# 133 "include/linux/init.h"
typedef int (*initcall_t)(void);
typedef void (*exitcall_t)(void);

extern initcall_t __con_initcall_start[], __con_initcall_end[];
extern initcall_t __security_initcall_start[], __security_initcall_end[];


extern int do_one_initcall(initcall_t fn);
extern char __attribute__ ((__section__(".init.data"))) boot_command_line[];
extern char *saved_command_line;
extern unsigned int reset_devices;


void setup_arch(char **);
void prepare_namespace(void);

extern void (*late_time_init)(void);
# 215 "include/linux/init.h"
struct obs_kernel_param {
 const char *str;
 int (*setup_func)(char *);
 int early;
};
# 243 "include/linux/init.h"
void __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) parse_early_param(void);
void __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) parse_early_options(char *cmdline);
# 15 "include/linux/mmzone.h" 2

# 1 "include/linux/nodemask.h" 1
# 92 "include/linux/nodemask.h"
typedef struct { unsigned long bits[((((1 << 0)) + (8 * sizeof(long)) - 1) / (8 * sizeof(long)))]; } nodemask_t;
extern nodemask_t _unused_nodemask_arg_;


static inline __attribute__((always_inline)) void __node_set(int node, volatile nodemask_t *dstp)
{
 set_bit(node, dstp->bits);
}


static inline __attribute__((always_inline)) void __node_clear(int node, volatile nodemask_t *dstp)
{
 clear_bit(node, dstp->bits);
}


static inline __attribute__((always_inline)) void __nodes_setall(nodemask_t *dstp, int nbits)
{
 bitmap_fill(dstp->bits, nbits);
}


static inline __attribute__((always_inline)) void __nodes_clear(nodemask_t *dstp, int nbits)
{
 bitmap_zero(dstp->bits, nbits);
}






static inline __attribute__((always_inline)) int __node_test_and_set(int node, nodemask_t *addr)
{
 return test_and_set_bit(node, addr->bits);
}



static inline __attribute__((always_inline)) void __nodes_and(nodemask_t *dstp, const nodemask_t *src1p,
     const nodemask_t *src2p, int nbits)
{
 bitmap_and(dstp->bits, src1p->bits, src2p->bits, nbits);
}



static inline __attribute__((always_inline)) void __nodes_or(nodemask_t *dstp, const nodemask_t *src1p,
     const nodemask_t *src2p, int nbits)
{
 bitmap_or(dstp->bits, src1p->bits, src2p->bits, nbits);
}



static inline __attribute__((always_inline)) void __nodes_xor(nodemask_t *dstp, const nodemask_t *src1p,
     const nodemask_t *src2p, int nbits)
{
 bitmap_xor(dstp->bits, src1p->bits, src2p->bits, nbits);
}



static inline __attribute__((always_inline)) void __nodes_andnot(nodemask_t *dstp, const nodemask_t *src1p,
     const nodemask_t *src2p, int nbits)
{
 bitmap_andnot(dstp->bits, src1p->bits, src2p->bits, nbits);
}



static inline __attribute__((always_inline)) void __nodes_complement(nodemask_t *dstp,
     const nodemask_t *srcp, int nbits)
{
 bitmap_complement(dstp->bits, srcp->bits, nbits);
}



static inline __attribute__((always_inline)) int __nodes_equal(const nodemask_t *src1p,
     const nodemask_t *src2p, int nbits)
{
 return bitmap_equal(src1p->bits, src2p->bits, nbits);
}



static inline __attribute__((always_inline)) int __nodes_intersects(const nodemask_t *src1p,
     const nodemask_t *src2p, int nbits)
{
 return bitmap_intersects(src1p->bits, src2p->bits, nbits);
}



static inline __attribute__((always_inline)) int __nodes_subset(const nodemask_t *src1p,
     const nodemask_t *src2p, int nbits)
{
 return bitmap_subset(src1p->bits, src2p->bits, nbits);
}


static inline __attribute__((always_inline)) int __nodes_empty(const nodemask_t *srcp, int nbits)
{
 return bitmap_empty(srcp->bits, nbits);
}


static inline __attribute__((always_inline)) int __nodes_full(const nodemask_t *srcp, int nbits)
{
 return bitmap_full(srcp->bits, nbits);
}


static inline __attribute__((always_inline)) int __nodes_weight(const nodemask_t *srcp, int nbits)
{
 return bitmap_weight(srcp->bits, nbits);
}



static inline __attribute__((always_inline)) void __nodes_shift_right(nodemask_t *dstp,
     const nodemask_t *srcp, int n, int nbits)
{
 bitmap_shift_right(dstp->bits, srcp->bits, n, nbits);
}



static inline __attribute__((always_inline)) void __nodes_shift_left(nodemask_t *dstp,
     const nodemask_t *srcp, int n, int nbits)
{
 bitmap_shift_left(dstp->bits, srcp->bits, n, nbits);
}





static inline __attribute__((always_inline)) int __first_node(const nodemask_t *srcp)
{
 return ({ int __min1 = ((1 << 0)); int __min2 = (find_next_bit((srcp->bits), ((1 << 0)), 0)); __min1 < __min2 ? __min1: __min2; });
}


static inline __attribute__((always_inline)) int __next_node(int n, const nodemask_t *srcp)
{
 return ({ int __min1 = ((1 << 0)); int __min2 = (find_next_bit(srcp->bits, (1 << 0), n+1)); __min1 < __min2 ? __min1: __min2; });
}
# 255 "include/linux/nodemask.h"
static inline __attribute__((always_inline)) int __first_unset_node(const nodemask_t *maskp)
{
 return ({ int __min1 = ((1 << 0)); int __min2 = (find_next_zero_bit((maskp->bits), ((1 << 0)), 0)); __min1 < __min2 ? __min1: __min2; });

}
# 289 "include/linux/nodemask.h"
static inline __attribute__((always_inline)) int __nodemask_scnprintf(char *buf, int len,
     const nodemask_t *srcp, int nbits)
{
 return bitmap_scnprintf(buf, len, srcp->bits, nbits);
}



static inline __attribute__((always_inline)) int __nodemask_parse_user(const char *buf, int len,
     nodemask_t *dstp, int nbits)
{
 return bitmap_parse_user(buf, len, dstp->bits, nbits);
}



static inline __attribute__((always_inline)) int __nodelist_scnprintf(char *buf, int len,
     const nodemask_t *srcp, int nbits)
{
 return bitmap_scnlistprintf(buf, len, srcp->bits, nbits);
}


static inline __attribute__((always_inline)) int __nodelist_parse(const char *buf, nodemask_t *dstp, int nbits)
{
 return bitmap_parselist(buf, dstp->bits, nbits);
}



static inline __attribute__((always_inline)) int __node_remap(int oldbit,
  const nodemask_t *oldp, const nodemask_t *newp, int nbits)
{
 return bitmap_bitremap(oldbit, oldp->bits, newp->bits, nbits);
}



static inline __attribute__((always_inline)) void __nodes_remap(nodemask_t *dstp, const nodemask_t *srcp,
  const nodemask_t *oldp, const nodemask_t *newp, int nbits)
{
 bitmap_remap(dstp->bits, srcp->bits, oldp->bits, newp->bits, nbits);
}



static inline __attribute__((always_inline)) void __nodes_onto(nodemask_t *dstp, const nodemask_t *origp,
  const nodemask_t *relmapp, int nbits)
{
 bitmap_onto(dstp->bits, origp->bits, relmapp->bits, nbits);
}



static inline __attribute__((always_inline)) void __nodes_fold(nodemask_t *dstp, const nodemask_t *origp,
  int sz, int nbits)
{
 bitmap_fold(dstp->bits, origp->bits, sz, nbits);
}
# 363 "include/linux/nodemask.h"
enum node_states {
 N_POSSIBLE,
 N_ONLINE,
 N_NORMAL_MEMORY,



 N_HIGH_MEMORY = N_NORMAL_MEMORY,

 N_CPU,
 NR_NODE_STATES
};






extern nodemask_t node_states[NR_NODE_STATES];
# 413 "include/linux/nodemask.h"
static inline __attribute__((always_inline)) int node_state(int node, enum node_states state)
{
 return node == 0;
}

static inline __attribute__((always_inline)) void node_set_state(int node, enum node_states state)
{
}

static inline __attribute__((always_inline)) void node_clear_state(int node, enum node_states state)
{
}

static inline __attribute__((always_inline)) int num_node_state(enum node_states state)
{
 return 1;
}
# 17 "include/linux/mmzone.h" 2
# 1 "include/linux/pageblock-flags.h" 1
# 29 "include/linux/pageblock-flags.h"
enum pageblock_bits {
 PB_migrate,
 PB_migrate_end = PB_migrate + 3 - 1,

 NR_PAGEBLOCK_BITS
};
# 60 "include/linux/pageblock-flags.h"
struct page;


unsigned long get_pageblock_flags_group(struct page *page,
     int start_bitidx, int end_bitidx);
void set_pageblock_flags_group(struct page *page, unsigned long flags,
     int start_bitidx, int end_bitidx);
# 18 "include/linux/mmzone.h" 2
# 1 "include/linux/bounds.h" 1
# 19 "include/linux/mmzone.h" 2

# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/page.h" 1
# 23 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/page.h"
# 1 "include/linux/pfn.h" 1
# 24 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/page.h" 2
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h" 1
# 23 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h"
# 1 "include/asm-generic/iomap.h" 1
# 28 "include/asm-generic/iomap.h"
extern unsigned int ioread8(void *);
extern unsigned int ioread16(void *);
extern unsigned int ioread16be(void *);
extern unsigned int ioread32(void *);
extern unsigned int ioread32be(void *);

extern void iowrite8(u8, void *);
extern void iowrite16(u16, void *);
extern void iowrite16be(u16, void *);
extern void iowrite32(u32, void *);
extern void iowrite32be(u32, void *);
# 51 "include/asm-generic/iomap.h"
extern void ioread8_rep(void *port, void *buf, unsigned long count);
extern void ioread16_rep(void *port, void *buf, unsigned long count);
extern void ioread32_rep(void *port, void *buf, unsigned long count);

extern void iowrite8_rep(void *port, const void *buf, unsigned long count);
extern void iowrite16_rep(void *port, const void *buf, unsigned long count);
extern void iowrite32_rep(void *port, const void *buf, unsigned long count);


extern void *ioport_map(unsigned long port, unsigned int nr);
extern void ioport_unmap(void *);






struct pci_dev;
extern void *pci_iomap(struct pci_dev *dev, int bar, unsigned long max);
extern void pci_iounmap(struct pci_dev *dev, void *);
# 24 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h" 2
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/page.h" 1
# 25 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h" 2
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable-bits.h" 1
# 26 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h" 2



# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic/ioremap.h" 1
# 18 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic/ioremap.h"
static inline __attribute__((always_inline)) phys_t fixup_bigphys_addr(phys_t phys_addr, phys_t size)
{
 return phys_addr;
}

static inline __attribute__((always_inline)) void *plat_ioremap(phys_t offset, unsigned long size,
 unsigned long flags)
{
 return ((void *)0);
}

static inline __attribute__((always_inline)) int plat_iounmap(const volatile void *addr)
{
 return 0;
}
# 30 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h" 2
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic/mangle-port.h" 1
# 31 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h" 2
# 61 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h"
extern const unsigned long mips_io_port_base;
# 72 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h"
static inline __attribute__((always_inline)) void set_io_port_base(unsigned long base)
{
 * (unsigned long *) &mips_io_port_base = base;
 __asm__ __volatile__("": : :"memory");
}
# 117 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h"
static inline __attribute__((always_inline)) unsigned long virt_to_phys(volatile const void *address)
{
 return (unsigned long)address - ((0x80000000UL) + (0UL)) + (0UL);
}
# 134 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h"
static inline __attribute__((always_inline)) void * phys_to_virt(unsigned long address)
{
 return (void *)(address + ((0x80000000UL) + (0UL)) - (0UL));
}




static inline __attribute__((always_inline)) unsigned long isa_virt_to_bus(volatile void * address)
{
 return (unsigned long)address - ((0x80000000UL) + (0UL));
}

static inline __attribute__((always_inline)) void * isa_bus_to_virt(unsigned long address)
{
 return (void *)(address + ((0x80000000UL) + (0UL)));
}
# 168 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h"
extern void * __ioremap(phys_t offset, phys_t size, unsigned long flags);
extern void __iounmap(const volatile void *addr);

static inline __attribute__((always_inline)) void * __ioremap_mode(phys_t offset, unsigned long size,
 unsigned long flags)
{
 void *addr = plat_ioremap(offset, size, flags);

 if (addr)
  return addr;



 if (__builtin_constant_p(offset) &&
     __builtin_constant_p(size) && __builtin_constant_p(flags)) {
  phys_t phys_addr, last_addr;

  phys_addr = fixup_bigphys_addr(offset, size);


  last_addr = phys_addr + size - 1;
  if (!size || last_addr < phys_addr)
   return ((void *)0);





  if ((!((phys_t)(phys_addr) & (phys_t) ~0x1fffffffULL)) && (!((phys_t)(last_addr) & (phys_t) ~0x1fffffffULL)) &&
      flags == (1<<11))
   return (void *)
    (unsigned long)((((int)(int)(phys_addr)) & 0x1fffffff) | 0xa0000000);
 }

 return __ioremap(offset, size, flags);


}
# 272 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h"
static inline __attribute__((always_inline)) void iounmap(const volatile void *addr)
{
 if (plat_iounmap(addr))
  return;



 if (__builtin_constant_p(addr) && (((unsigned long)(addr) & ~0x1fffffffUL) == 0xa0000000))
  return;

 __iounmap(addr);


}
# 365 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h"
static inline __attribute__((always_inline)) void __raw_writeb(u8 val, volatile void *mem) { volatile u8 *__mem; u8 __val; __mem = (void *)((unsigned long)(mem)); __val = (val); if (sizeof(u8) != sizeof(u64) || sizeof(u64) == sizeof(long)) *__mem = __val; else do {} while(0); } static inline __attribute__((always_inline)) u8 __raw_readb(const volatile void *mem) { volatile u8 *__mem; u8 __val; __mem = (void *)((unsigned long)(mem)); if (sizeof(u8) != sizeof(u64) || sizeof(u64) == sizeof(long)) __val = *__mem; else { __val = 0; do {} while(0); } return (__val); } static inline __attribute__((always_inline)) void writeb(u8 val, volatile void *mem) { volatile u8 *__mem; u8 __val; __mem = (void *)((unsigned long)(mem)); __val = (val); if (sizeof(u8) != sizeof(u64) || sizeof(u64) == sizeof(long)) *__mem = __val; else do {} while(0); } static inline __attribute__((always_inline)) u8 readb(const volatile void *mem) { volatile u8 *__mem; u8 __val; __mem = (void *)((unsigned long)(mem)); if (sizeof(u8) != sizeof(u64) || sizeof(u64) == sizeof(long)) __val = *__mem; else { __val = 0; do {} while(0); } return (__val); } static inline __attribute__((always_inline)) void __mem_writeb(u8 val, volatile void *mem) { volatile u8 *__mem; u8 __val; __mem = (void *)((unsigned long)(mem)); __val = (val); if (sizeof(u8) != sizeof(u64) || sizeof(u64) == sizeof(long)) *__mem = __val; else do {} while(0); } static inline __attribute__((always_inline)) u8 __mem_readb(const volatile void *mem) { volatile u8 *__mem; u8 __val; __mem = (void *)((unsigned long)(mem)); if (sizeof(u8) != sizeof(u64) || sizeof(u64) == sizeof(long)) __val = *__mem; else { __val = 0; do {} while(0); } return (__val); }
static inline __attribute__((always_inline)) void __raw_writew(u16 val, volatile void *mem) { volatile u16 *__mem; u16 __val; __mem = (void *)((unsigned long)(mem)); __val = (val); if (sizeof(u16) != sizeof(u64) || sizeof(u64) == sizeof(long)) *__mem = __val; else do {} while(0); } static inline __attribute__((always_inline)) u16 __raw_readw(const volatile void *mem) { volatile u16 *__mem; u16 __val; __mem = (void *)((unsigned long)(mem)); if (sizeof(u16) != sizeof(u64) || sizeof(u64) == sizeof(long)) __val = *__mem; else { __val = 0; do {} while(0); } return (__val); } static inline __attribute__((always_inline)) void writew(u16 val, volatile void *mem) { volatile u16 *__mem; u16 __val; __mem = (void *)((unsigned long)(mem)); __val = (val); if (sizeof(u16) != sizeof(u64) || sizeof(u64) == sizeof(long)) *__mem = __val; else do {} while(0); } static inline __attribute__((always_inline)) u16 readw(const volatile void *mem) { volatile u16 *__mem; u16 __val; __mem = (void *)((unsigned long)(mem)); if (sizeof(u16) != sizeof(u64) || sizeof(u64) == sizeof(long)) __val = *__mem; else { __val = 0; do {} while(0); } return (__val); } static inline __attribute__((always_inline)) void __mem_writew(u16 val, volatile void *mem) { volatile u16 *__mem; u16 __val; __mem = (void *)((unsigned long)(mem)); __val = (( __le16)(__builtin_constant_p((__u16)((val))) ? ((__u16)( (((__u16)((val)) & (__u16)0x00ffU) << 8) | (((__u16)((val)) & (__u16)0xff00U) >> 8))) : __fswab16((val)))); if (sizeof(u16) != sizeof(u64) || sizeof(u64) == sizeof(long)) *__mem = __val; else do {} while(0); } static inline __attribute__((always_inline)) u16 __mem_readw(const volatile void *mem) { volatile u16 *__mem; u16 __val; __mem = (void *)((unsigned long)(mem)); if (sizeof(u16) != sizeof(u64) || sizeof(u64) == sizeof(long)) __val = *__mem; else { __val = 0; do {} while(0); } return (( __le16)(__builtin_constant_p((__u16)((__val))) ? ((__u16)( (((__u16)((__val)) & (__u16)0x00ffU) << 8) | (((__u16)((__val)) & (__u16)0xff00U) >> 8))) : __fswab16((__val)))); }
static inline __attribute__((always_inline)) void __raw_writel(u32 val, volatile void *mem) { volatile u32 *__mem; u32 __val; __mem = (void *)((unsigned long)(mem)); __val = (val); if (sizeof(u32) != sizeof(u64) || sizeof(u64) == sizeof(long)) *__mem = __val; else do {} while(0); } static inline __attribute__((always_inline)) u32 __raw_readl(const volatile void *mem) { volatile u32 *__mem; u32 __val; __mem = (void *)((unsigned long)(mem)); if (sizeof(u32) != sizeof(u64) || sizeof(u64) == sizeof(long)) __val = *__mem; else { __val = 0; do {} while(0); } return (__val); } static inline __attribute__((always_inline)) void writel(u32 val, volatile void *mem) { volatile u32 *__mem; u32 __val; __mem = (void *)((unsigned long)(mem)); __val = (val); if (sizeof(u32) != sizeof(u64) || sizeof(u64) == sizeof(long)) *__mem = __val; else do {} while(0); } static inline __attribute__((always_inline)) u32 readl(const volatile void *mem) { volatile u32 *__mem; u32 __val; __mem = (void *)((unsigned long)(mem)); if (sizeof(u32) != sizeof(u64) || sizeof(u64) == sizeof(long)) __val = *__mem; else { __val = 0; do {} while(0); } return (__val); } static inline __attribute__((always_inline)) void __mem_writel(u32 val, volatile void *mem) { volatile u32 *__mem; u32 __val; __mem = (void *)((unsigned long)(mem)); __val = (( __le32)(__builtin_constant_p((__u32)((val))) ? ((__u32)( (((__u32)((val)) & (__u32)0x000000ffUL) << 24) | (((__u32)((val)) & (__u32)0x0000ff00UL) << 8) | (((__u32)((val)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((val)) & (__u32)0xff000000UL) >> 24))) : __fswab32((val)))); if (sizeof(u32) != sizeof(u64) || sizeof(u64) == sizeof(long)) *__mem = __val; else do {} while(0); } static inline __attribute__((always_inline)) u32 __mem_readl(const volatile void *mem) { volatile u32 *__mem; u32 __val; __mem = (void *)((unsigned long)(mem)); if (sizeof(u32) != sizeof(u64) || sizeof(u64) == sizeof(long)) __val = *__mem; else { __val = 0; do {} while(0); } return (( __le32)(__builtin_constant_p((__u32)((__val))) ? ((__u32)( (((__u32)((__val)) & (__u32)0x000000ffUL) << 24) | (((__u32)((__val)) & (__u32)0x0000ff00UL) << 8) | (((__u32)((__val)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((__val)) & (__u32)0xff000000UL) >> 24))) : __fswab32((__val)))); }
static inline __attribute__((always_inline)) void __raw_writeq(u64 val, volatile void *mem) { volatile u64 *__mem; u64 __val; __mem = (void *)((unsigned long)(mem)); __val = (val); if (sizeof(u64) != sizeof(u64) || sizeof(u64) == sizeof(long)) *__mem = __val; else do {} while(0); } static inline __attribute__((always_inline)) u64 __raw_readq(const volatile void *mem) { volatile u64 *__mem; u64 __val; __mem = (void *)((unsigned long)(mem)); if (sizeof(u64) != sizeof(u64) || sizeof(u64) == sizeof(long)) __val = *__mem; else { __val = 0; do {} while(0); } return (__val); } static inline __attribute__((always_inline)) void writeq(u64 val, volatile void *mem) { volatile u64 *__mem; u64 __val; __mem = (void *)((unsigned long)(mem)); __val = (val); if (sizeof(u64) != sizeof(u64) || sizeof(u64) == sizeof(long)) *__mem = __val; else do {} while(0); } static inline __attribute__((always_inline)) u64 readq(const volatile void *mem) { volatile u64 *__mem; u64 __val; __mem = (void *)((unsigned long)(mem)); if (sizeof(u64) != sizeof(u64) || sizeof(u64) == sizeof(long)) __val = *__mem; else { __val = 0; do {} while(0); } return (__val); } static inline __attribute__((always_inline)) void __mem_writeq(u64 val, volatile void *mem) { volatile u64 *__mem; u64 __val; __mem = (void *)((unsigned long)(mem)); __val = (( __le32)(__builtin_constant_p((__u32)((val))) ? ((__u32)( (((__u32)((val)) & (__u32)0x000000ffUL) << 24) | (((__u32)((val)) & (__u32)0x0000ff00UL) << 8) | (((__u32)((val)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((val)) & (__u32)0xff000000UL) >> 24))) : __fswab32((val)))); if (sizeof(u64) != sizeof(u64) || sizeof(u64) == sizeof(long)) *__mem = __val; else do {} while(0); } static inline __attribute__((always_inline)) u64 __mem_readq(const volatile void *mem) { volatile u64 *__mem; u64 __val; __mem = (void *)((unsigned long)(mem)); if (sizeof(u64) != sizeof(u64) || sizeof(u64) == sizeof(long)) __val = *__mem; else { __val = 0; do {} while(0); } return (( __le32)(__builtin_constant_p((__u32)((__val))) ? ((__u32)( (((__u32)((__val)) & (__u32)0x000000ffUL) << 24) | (((__u32)((__val)) & (__u32)0x0000ff00UL) << 8) | (((__u32)((__val)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((__val)) & (__u32)0xff000000UL) >> 24))) : __fswab32((__val)))); }
# 378 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h"
static inline __attribute__((always_inline)) void outb(u8 val, unsigned long port) { volatile u8 *__addr; u8 __val; __addr = (void *)(mips_io_port_base + port); __val = (val); ((void)sizeof(char[1 - 2*!!(sizeof(u8) > sizeof(unsigned long))])); *__addr = __val; ; } static inline __attribute__((always_inline)) u8 inb(unsigned long port) { volatile u8 *__addr; u8 __val; __addr = (void *)(mips_io_port_base + port); ((void)sizeof(char[1 - 2*!!(sizeof(u8) > sizeof(unsigned long))])); __val = *__addr; ; return (__val); } static inline __attribute__((always_inline)) void outb_p(u8 val, unsigned long port) { volatile u8 *__addr; u8 __val; __addr = (void *)(mips_io_port_base + port); __val = (val); ((void)sizeof(char[1 - 2*!!(sizeof(u8) > sizeof(unsigned long))])); *__addr = __val; ; } static inline __attribute__((always_inline)) u8 inb_p(unsigned long port) { volatile u8 *__addr; u8 __val; __addr = (void *)(mips_io_port_base + port); ((void)sizeof(char[1 - 2*!!(sizeof(u8) > sizeof(unsigned long))])); __val = *__addr; ; return (__val); } static inline __attribute__((always_inline)) void __mem_outb(u8 val, unsigned long port) { volatile u8 *__addr; u8 __val; __addr = (void *)(mips_io_port_base + port); __val = (val); ((void)sizeof(char[1 - 2*!!(sizeof(u8) > sizeof(unsigned long))])); *__addr = __val; ; } static inline __attribute__((always_inline)) u8 __mem_inb(unsigned long port) { volatile u8 *__addr; u8 __val; __addr = (void *)(mips_io_port_base + port); ((void)sizeof(char[1 - 2*!!(sizeof(u8) > sizeof(unsigned long))])); __val = *__addr; ; return (__val); } static inline __attribute__((always_inline)) void __mem_outb_p(u8 val, unsigned long port) { volatile u8 *__addr; u8 __val; __addr = (void *)(mips_io_port_base + port); __val = (val); ((void)sizeof(char[1 - 2*!!(sizeof(u8) > sizeof(unsigned long))])); *__addr = __val; ; } static inline __attribute__((always_inline)) u8 __mem_inb_p(unsigned long port) { volatile u8 *__addr; u8 __val; __addr = (void *)(mips_io_port_base + port); ((void)sizeof(char[1 - 2*!!(sizeof(u8) > sizeof(unsigned long))])); __val = *__addr; ; return (__val); }
static inline __attribute__((always_inline)) void outw(u16 val, unsigned long port) { volatile u16 *__addr; u16 __val; __addr = (void *)(mips_io_port_base + port); __val = (val); ((void)sizeof(char[1 - 2*!!(sizeof(u16) > sizeof(unsigned long))])); *__addr = __val; ; } static inline __attribute__((always_inline)) u16 inw(unsigned long port) { volatile u16 *__addr; u16 __val; __addr = (void *)(mips_io_port_base + port); ((void)sizeof(char[1 - 2*!!(sizeof(u16) > sizeof(unsigned long))])); __val = *__addr; ; return (__val); } static inline __attribute__((always_inline)) void outw_p(u16 val, unsigned long port) { volatile u16 *__addr; u16 __val; __addr = (void *)(mips_io_port_base + port); __val = (val); ((void)sizeof(char[1 - 2*!!(sizeof(u16) > sizeof(unsigned long))])); *__addr = __val; ; } static inline __attribute__((always_inline)) u16 inw_p(unsigned long port) { volatile u16 *__addr; u16 __val; __addr = (void *)(mips_io_port_base + port); ((void)sizeof(char[1 - 2*!!(sizeof(u16) > sizeof(unsigned long))])); __val = *__addr; ; return (__val); } static inline __attribute__((always_inline)) void __mem_outw(u16 val, unsigned long port) { volatile u16 *__addr; u16 __val; __addr = (void *)(mips_io_port_base + port); __val = (( __le16)(__builtin_constant_p((__u16)((val))) ? ((__u16)( (((__u16)((val)) & (__u16)0x00ffU) << 8) | (((__u16)((val)) & (__u16)0xff00U) >> 8))) : __fswab16((val)))); ((void)sizeof(char[1 - 2*!!(sizeof(u16) > sizeof(unsigned long))])); *__addr = __val; ; } static inline __attribute__((always_inline)) u16 __mem_inw(unsigned long port) { volatile u16 *__addr; u16 __val; __addr = (void *)(mips_io_port_base + port); ((void)sizeof(char[1 - 2*!!(sizeof(u16) > sizeof(unsigned long))])); __val = *__addr; ; return (( __le16)(__builtin_constant_p((__u16)((__val))) ? ((__u16)( (((__u16)((__val)) & (__u16)0x00ffU) << 8) | (((__u16)((__val)) & (__u16)0xff00U) >> 8))) : __fswab16((__val)))); } static inline __attribute__((always_inline)) void __mem_outw_p(u16 val, unsigned long port) { volatile u16 *__addr; u16 __val; __addr = (void *)(mips_io_port_base + port); __val = (( __le16)(__builtin_constant_p((__u16)((val))) ? ((__u16)( (((__u16)((val)) & (__u16)0x00ffU) << 8) | (((__u16)((val)) & (__u16)0xff00U) >> 8))) : __fswab16((val)))); ((void)sizeof(char[1 - 2*!!(sizeof(u16) > sizeof(unsigned long))])); *__addr = __val; ; } static inline __attribute__((always_inline)) u16 __mem_inw_p(unsigned long port) { volatile u16 *__addr; u16 __val; __addr = (void *)(mips_io_port_base + port); ((void)sizeof(char[1 - 2*!!(sizeof(u16) > sizeof(unsigned long))])); __val = *__addr; ; return (( __le16)(__builtin_constant_p((__u16)((__val))) ? ((__u16)( (((__u16)((__val)) & (__u16)0x00ffU) << 8) | (((__u16)((__val)) & (__u16)0xff00U) >> 8))) : __fswab16((__val)))); }
static inline __attribute__((always_inline)) void outl(u32 val, unsigned long port) { volatile u32 *__addr; u32 __val; __addr = (void *)(mips_io_port_base + port); __val = (val); ((void)sizeof(char[1 - 2*!!(sizeof(u32) > sizeof(unsigned long))])); *__addr = __val; ; } static inline __attribute__((always_inline)) u32 inl(unsigned long port) { volatile u32 *__addr; u32 __val; __addr = (void *)(mips_io_port_base + port); ((void)sizeof(char[1 - 2*!!(sizeof(u32) > sizeof(unsigned long))])); __val = *__addr; ; return (__val); } static inline __attribute__((always_inline)) void outl_p(u32 val, unsigned long port) { volatile u32 *__addr; u32 __val; __addr = (void *)(mips_io_port_base + port); __val = (val); ((void)sizeof(char[1 - 2*!!(sizeof(u32) > sizeof(unsigned long))])); *__addr = __val; ; } static inline __attribute__((always_inline)) u32 inl_p(unsigned long port) { volatile u32 *__addr; u32 __val; __addr = (void *)(mips_io_port_base + port); ((void)sizeof(char[1 - 2*!!(sizeof(u32) > sizeof(unsigned long))])); __val = *__addr; ; return (__val); } static inline __attribute__((always_inline)) void __mem_outl(u32 val, unsigned long port) { volatile u32 *__addr; u32 __val; __addr = (void *)(mips_io_port_base + port); __val = (( __le32)(__builtin_constant_p((__u32)((val))) ? ((__u32)( (((__u32)((val)) & (__u32)0x000000ffUL) << 24) | (((__u32)((val)) & (__u32)0x0000ff00UL) << 8) | (((__u32)((val)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((val)) & (__u32)0xff000000UL) >> 24))) : __fswab32((val)))); ((void)sizeof(char[1 - 2*!!(sizeof(u32) > sizeof(unsigned long))])); *__addr = __val; ; } static inline __attribute__((always_inline)) u32 __mem_inl(unsigned long port) { volatile u32 *__addr; u32 __val; __addr = (void *)(mips_io_port_base + port); ((void)sizeof(char[1 - 2*!!(sizeof(u32) > sizeof(unsigned long))])); __val = *__addr; ; return (( __le32)(__builtin_constant_p((__u32)((__val))) ? ((__u32)( (((__u32)((__val)) & (__u32)0x000000ffUL) << 24) | (((__u32)((__val)) & (__u32)0x0000ff00UL) << 8) | (((__u32)((__val)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((__val)) & (__u32)0xff000000UL) >> 24))) : __fswab32((__val)))); } static inline __attribute__((always_inline)) void __mem_outl_p(u32 val, unsigned long port) { volatile u32 *__addr; u32 __val; __addr = (void *)(mips_io_port_base + port); __val = (( __le32)(__builtin_constant_p((__u32)((val))) ? ((__u32)( (((__u32)((val)) & (__u32)0x000000ffUL) << 24) | (((__u32)((val)) & (__u32)0x0000ff00UL) << 8) | (((__u32)((val)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((val)) & (__u32)0xff000000UL) >> 24))) : __fswab32((val)))); ((void)sizeof(char[1 - 2*!!(sizeof(u32) > sizeof(unsigned long))])); *__addr = __val; ; } static inline __attribute__((always_inline)) u32 __mem_inl_p(unsigned long port) { volatile u32 *__addr; u32 __val; __addr = (void *)(mips_io_port_base + port); ((void)sizeof(char[1 - 2*!!(sizeof(u32) > sizeof(unsigned long))])); __val = *__addr; ; return (( __le32)(__builtin_constant_p((__u32)((__val))) ? ((__u32)( (((__u32)((__val)) & (__u32)0x000000ffUL) << 24) | (((__u32)((__val)) & (__u32)0x0000ff00UL) << 8) | (((__u32)((__val)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((__val)) & (__u32)0xff000000UL) >> 24))) : __fswab32((__val)))); }





static inline __attribute__((always_inline)) void ____raw_writeq(u64 val, volatile void *mem) { volatile u64 *__mem; u64 __val; __mem = (void *)((unsigned long)(mem)); __val = (val); if (sizeof(u64) != sizeof(u64) || sizeof(u64) == sizeof(long)) *__mem = __val; else do {} while(0); } static inline __attribute__((always_inline)) u64 ____raw_readq(const volatile void *mem) { volatile u64 *__mem; u64 __val; __mem = (void *)((unsigned long)(mem)); if (sizeof(u64) != sizeof(u64) || sizeof(u64) == sizeof(long)) __val = *__mem; else { __val = 0; do {} while(0); } return (__val); }
# 452 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h"
static inline __attribute__((always_inline)) void writesb(volatile void *mem, const void *addr, unsigned int count) { const volatile u8 *__addr = addr; while (count--) { __mem_writeb(*__addr, mem); __addr++; } } static inline __attribute__((always_inline)) void readsb(volatile void *mem, void *addr, unsigned int count) { volatile u8 *__addr = addr; while (count--) { *__addr = __mem_readb(mem); __addr++; } } static inline __attribute__((always_inline)) void outsb(unsigned long port, const void *addr, unsigned int count) { const volatile u8 *__addr = addr; while (count--) { __mem_outb(*__addr, port); __addr++; } } static inline __attribute__((always_inline)) void insb(unsigned long port, void *addr, unsigned int count) { volatile u8 *__addr = addr; while (count--) { *__addr = __mem_inb(port); __addr++; } }
static inline __attribute__((always_inline)) void writesw(volatile void *mem, const void *addr, unsigned int count) { const volatile u16 *__addr = addr; while (count--) { __mem_writew(*__addr, mem); __addr++; } } static inline __attribute__((always_inline)) void readsw(volatile void *mem, void *addr, unsigned int count) { volatile u16 *__addr = addr; while (count--) { *__addr = __mem_readw(mem); __addr++; } } static inline __attribute__((always_inline)) void outsw(unsigned long port, const void *addr, unsigned int count) { const volatile u16 *__addr = addr; while (count--) { __mem_outw(*__addr, port); __addr++; } } static inline __attribute__((always_inline)) void insw(unsigned long port, void *addr, unsigned int count) { volatile u16 *__addr = addr; while (count--) { *__addr = __mem_inw(port); __addr++; } }
static inline __attribute__((always_inline)) void writesl(volatile void *mem, const void *addr, unsigned int count) { const volatile u32 *__addr = addr; while (count--) { __mem_writel(*__addr, mem); __addr++; } } static inline __attribute__((always_inline)) void readsl(volatile void *mem, void *addr, unsigned int count) { volatile u32 *__addr = addr; while (count--) { *__addr = __mem_readl(mem); __addr++; } } static inline __attribute__((always_inline)) void outsl(unsigned long port, const void *addr, unsigned int count) { const volatile u32 *__addr = addr; while (count--) { __mem_outl(*__addr, port); __addr++; } } static inline __attribute__((always_inline)) void insl(unsigned long port, void *addr, unsigned int count) { volatile u32 *__addr = addr; while (count--) { *__addr = __mem_inl(port); __addr++; } }
# 464 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h"
static inline __attribute__((always_inline)) void memset_io(volatile void *addr, unsigned char val, int count)
{
 memset((void *) addr, val, count);
}
static inline __attribute__((always_inline)) void memcpy_fromio(void *dst, const volatile void *src, int count)
{
 memcpy(dst, (void *) src, count);
}
static inline __attribute__((always_inline)) void memcpy_toio(volatile void *dst, const void *src, int count)
{
 memcpy((void *) dst, src, count);
}
# 497 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/io.h"
extern void (*_dma_cache_wback_inv)(unsigned long start, unsigned long size);
extern void (*_dma_cache_wback)(unsigned long start, unsigned long size);
extern void (*_dma_cache_inv)(unsigned long start, unsigned long size);
# 25 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/page.h" 2

extern void build_clear_page(void);
extern void build_copy_page(void);
# 36 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/page.h"
extern void clear_page(void * page);
extern void copy_page(void * to, void * from);

extern unsigned long shm_align_mask;

static inline __attribute__((always_inline)) unsigned long pages_do_alias(unsigned long addr1,
 unsigned long addr2)
{
 return (addr1 ^ addr2) & shm_align_mask;
}

struct page;

static inline __attribute__((always_inline)) void clear_user_page(void *addr, unsigned long vaddr,
 struct page *page)
{
 extern void (*flush_data_cache_page)(unsigned long addr);

 clear_page(addr);
 if (pages_do_alias((unsigned long) addr, vaddr & (~((1 << 12) - 1))))
  flush_data_cache_page((unsigned long)addr);
}

static inline __attribute__((always_inline)) void copy_user_page(void *vto, void *vfrom, unsigned long vaddr,
                                  struct page *to)
{
  extern void (*flush_data_cache_page)(unsigned long addr);
  copy_page(vto, vfrom);
  if (pages_do_alias((unsigned long)vto, vaddr & (~((1 << 12) - 1))))
    flush_data_cache_page((unsigned long)vto);
}




typedef struct { unsigned long pte; } pte_t;


typedef struct page *pgtable_t;
# 84 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/page.h"
typedef struct { unsigned long pgd; } pgd_t;






typedef struct { unsigned long pgprot; } pgprot_t;
# 133 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/page.h"
# 1 "include/asm-generic/memory_model.h" 1
# 134 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/page.h" 2
# 1 "include/asm-generic/getorder.h" 1
# 9 "include/asm-generic/getorder.h"
static inline __attribute__((always_inline)) __attribute__((__const__)) int get_order(unsigned long size)
{
 int order;

 size = (size - 1) >> (12 - 1);
 order = -1;
 do {
  size >>= 1;
  order++;
 } while (size);
 return order;
}
# 135 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/page.h" 2
# 21 "include/linux/mmzone.h" 2
# 49 "include/linux/mmzone.h"
extern int page_group_by_mobility_disabled;

static inline __attribute__((always_inline)) int get_pageblock_migratetype(struct page *page)
{
 if (__builtin_expect(!!(page_group_by_mobility_disabled), 0))
  return 0;

 return get_pageblock_flags_group(page, PB_migrate, PB_migrate_end);
}

struct free_area {
 struct list_head free_list[5];
 unsigned long nr_free;
};

struct pglist_data;
# 81 "include/linux/mmzone.h"
enum zone_stat_item {

 NR_FREE_PAGES,
 NR_LRU_BASE,
 NR_INACTIVE_ANON = NR_LRU_BASE,
 NR_ACTIVE_ANON,
 NR_INACTIVE_FILE,
 NR_ACTIVE_FILE,
 NR_UNEVICTABLE,
 NR_MLOCK,
 NR_ANON_PAGES,
 NR_FILE_MAPPED,

 NR_FILE_PAGES,
 NR_FILE_DIRTY,
 NR_WRITEBACK,
 NR_SLAB_RECLAIMABLE,
 NR_SLAB_UNRECLAIMABLE,
 NR_PAGETABLE,
 NR_UNSTABLE_NFS,
 NR_BOUNCE,
 NR_VMSCAN_WRITE,

 NR_WRITEBACK_TEMP,
# 113 "include/linux/mmzone.h"
 NR_VM_ZONE_STAT_ITEMS };
# 128 "include/linux/mmzone.h"
enum lru_list {
 LRU_INACTIVE_ANON = 0,
 LRU_ACTIVE_ANON = 0 + 1,
 LRU_INACTIVE_FILE = 0 + 2,
 LRU_ACTIVE_FILE = 0 + 2 + 1,
 LRU_UNEVICTABLE,
 NR_LRU_LISTS
};





static inline __attribute__((always_inline)) int is_file_lru(enum lru_list l)
{
 return (l == LRU_INACTIVE_FILE || l == LRU_ACTIVE_FILE);
}

static inline __attribute__((always_inline)) int is_active_lru(enum lru_list l)
{
 return (l == LRU_ACTIVE_ANON || l == LRU_ACTIVE_FILE);
}

static inline __attribute__((always_inline)) int is_unevictable_lru(enum lru_list l)
{
 return (l == LRU_UNEVICTABLE);
}

struct per_cpu_pages {
 int count;
 int high;
 int batch;
 struct list_head list;
};

struct per_cpu_pageset {
 struct per_cpu_pages pcp;







} ;
# 182 "include/linux/mmzone.h"
enum zone_type {
# 217 "include/linux/mmzone.h"
 ZONE_NORMAL,
# 229 "include/linux/mmzone.h"
 ZONE_MOVABLE,
 __MAX_NR_ZONES
};
# 253 "include/linux/mmzone.h"
struct zone_reclaim_stat {
# 262 "include/linux/mmzone.h"
 unsigned long recent_rotated[2];
 unsigned long recent_scanned[2];
};

struct zone {

 unsigned long pages_min, pages_low, pages_high;
# 277 "include/linux/mmzone.h"
 unsigned long lowmem_reserve[2];
# 288 "include/linux/mmzone.h"
 struct per_cpu_pageset pageset[1];




 spinlock_t lock;




 struct free_area free_area[11];






 unsigned long *pageblock_flags;






 spinlock_t lru_lock;
 struct {
  struct list_head list;
  unsigned long nr_scan;
 } lru[NR_LRU_LISTS];

 struct zone_reclaim_stat reclaim_stat;

 unsigned long pages_scanned;
 unsigned long flags;


 atomic_long_t vm_stat[NR_VM_ZONE_STAT_ITEMS];
# 339 "include/linux/mmzone.h"
 int prev_priority;





 unsigned int inactive_ratio;



# 375 "include/linux/mmzone.h"
 wait_queue_head_t * wait_table;
 unsigned long wait_table_hash_nr_entries;
 unsigned long wait_table_bits;




 struct pglist_data *zone_pgdat;

 unsigned long zone_start_pfn;
# 396 "include/linux/mmzone.h"
 unsigned long spanned_pages;
 unsigned long present_pages;




 const char *name;
} ;

typedef enum {
 ZONE_ALL_UNRECLAIMABLE,
 ZONE_RECLAIM_LOCKED,
 ZONE_OOM_LOCKED,
} zone_flags_t;

static inline __attribute__((always_inline)) void zone_set_flag(struct zone *zone, zone_flags_t flag)
{
 set_bit(flag, &zone->flags);
}

static inline __attribute__((always_inline)) int zone_test_and_set_flag(struct zone *zone, zone_flags_t flag)
{
 return test_and_set_bit(flag, &zone->flags);
}

static inline __attribute__((always_inline)) void zone_clear_flag(struct zone *zone, zone_flags_t flag)
{
 clear_bit(flag, &zone->flags);
}

static inline __attribute__((always_inline)) int zone_is_all_unreclaimable(const struct zone *zone)
{
 return test_bit(ZONE_ALL_UNRECLAIMABLE, &zone->flags);
}

static inline __attribute__((always_inline)) int zone_is_reclaim_locked(const struct zone *zone)
{
 return test_bit(ZONE_RECLAIM_LOCKED, &zone->flags);
}

static inline __attribute__((always_inline)) int zone_is_oom_locked(const struct zone *zone)
{
 return test_bit(ZONE_OOM_LOCKED, &zone->flags);
}
# 529 "include/linux/mmzone.h"
struct zonelist_cache;






struct zoneref {
 struct zone *zone;
 int zone_idx;
};
# 558 "include/linux/mmzone.h"
struct zonelist {
 struct zonelist_cache *zlcache_ptr;
 struct zoneref _zonerefs[((1 << 0) * 2) + 1];



};


struct node_active_region {
 unsigned long start_pfn;
 unsigned long end_pfn;
 int nid;
};




extern struct page *mem_map;
# 590 "include/linux/mmzone.h"
struct bootmem_data;
typedef struct pglist_data {
 struct zone node_zones[2];
 struct zonelist node_zonelists[1];
 int nr_zones;

 struct page *node_mem_map;




 struct bootmem_data *bdata;
# 612 "include/linux/mmzone.h"
 unsigned long node_start_pfn;
 unsigned long node_present_pages;
 unsigned long node_spanned_pages;

 int node_id;
 wait_queue_head_t kswapd_wait;
 struct task_struct *kswapd;
 int kswapd_max_order;
} pg_data_t;
# 631 "include/linux/mmzone.h"
# 1 "include/linux/memory_hotplug.h" 1



# 1 "include/linux/mmzone.h" 1
# 5 "include/linux/memory_hotplug.h" 2

# 1 "include/linux/notifier.h" 1
# 12 "include/linux/notifier.h"
# 1 "include/linux/errno.h" 1



# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/errno.h" 1
# 15 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/errno.h"
# 1 "include/asm-generic/errno-base.h" 1
# 16 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/errno.h" 2
# 5 "include/linux/errno.h" 2
# 13 "include/linux/notifier.h" 2
# 1 "include/linux/mutex.h" 1
# 48 "include/linux/mutex.h"
struct mutex {

 atomic_t count;
 spinlock_t wait_lock;
 struct list_head wait_list;
# 63 "include/linux/mutex.h"
};





struct mutex_waiter {
 struct list_head list;
 struct task_struct *task;



};
# 107 "include/linux/mutex.h"
extern void __mutex_init(struct mutex *lock, const char *name,
    struct lock_class_key *key);







static inline __attribute__((always_inline)) int mutex_is_locked(struct mutex *lock)
{
 return ((&lock->count)->counter) != 1;
}
# 136 "include/linux/mutex.h"
extern void mutex_lock(struct mutex *lock);
extern int mutex_lock_interruptible(struct mutex *lock);
extern int mutex_lock_killable(struct mutex *lock);
# 151 "include/linux/mutex.h"
extern int mutex_trylock(struct mutex *lock);
extern void mutex_unlock(struct mutex *lock);
# 14 "include/linux/notifier.h" 2
# 1 "include/linux/rwsem.h" 1
# 17 "include/linux/rwsem.h"
struct rw_semaphore;


# 1 "include/linux/rwsem-spinlock.h" 1
# 22 "include/linux/rwsem-spinlock.h"
struct rwsem_waiter;
# 31 "include/linux/rwsem-spinlock.h"
struct rw_semaphore {
 __s32 activity;
 spinlock_t wait_lock;
 struct list_head wait_list;



};
# 53 "include/linux/rwsem-spinlock.h"
extern void __init_rwsem(struct rw_semaphore *sem, const char *name,
    struct lock_class_key *key);
# 63 "include/linux/rwsem-spinlock.h"
extern void __down_read(struct rw_semaphore *sem);
extern int __down_read_trylock(struct rw_semaphore *sem);
extern void __down_write(struct rw_semaphore *sem);
extern void __down_write_nested(struct rw_semaphore *sem, int subclass);
extern int __down_write_trylock(struct rw_semaphore *sem);
extern void __up_read(struct rw_semaphore *sem);
extern void __up_write(struct rw_semaphore *sem);
extern void __downgrade_write(struct rw_semaphore *sem);

static inline __attribute__((always_inline)) int rwsem_is_locked(struct rw_semaphore *sem)
{
 return (sem->activity != 0);
}
# 21 "include/linux/rwsem.h" 2







extern void down_read(struct rw_semaphore *sem);




extern int down_read_trylock(struct rw_semaphore *sem);




extern void down_write(struct rw_semaphore *sem);




extern int down_write_trylock(struct rw_semaphore *sem);




extern void up_read(struct rw_semaphore *sem);




extern void up_write(struct rw_semaphore *sem);




extern void downgrade_write(struct rw_semaphore *sem);
# 15 "include/linux/notifier.h" 2
# 1 "include/linux/srcu.h" 1
# 30 "include/linux/srcu.h"
struct srcu_struct_array {
 int c[2];
};

struct srcu_struct {
 int completed;
 struct srcu_struct_array *per_cpu_ref;
 struct mutex mutex;
};







int init_srcu_struct(struct srcu_struct *sp);
void cleanup_srcu_struct(struct srcu_struct *sp);
int srcu_read_lock(struct srcu_struct *sp) ;
void srcu_read_unlock(struct srcu_struct *sp, int idx) ;
void synchronize_srcu(struct srcu_struct *sp);
long srcu_batches_completed(struct srcu_struct *sp);
# 16 "include/linux/notifier.h" 2
# 50 "include/linux/notifier.h"
struct notifier_block {
 int (*notifier_call)(struct notifier_block *, unsigned long, void *);
 struct notifier_block *next;
 int priority;
};

struct atomic_notifier_head {
 spinlock_t lock;
 struct notifier_block *head;
};

struct blocking_notifier_head {
 struct rw_semaphore rwsem;
 struct notifier_block *head;
};

struct raw_notifier_head {
 struct notifier_block *head;
};

struct srcu_notifier_head {
 struct mutex mutex;
 struct srcu_struct srcu;
 struct notifier_block *head;
};
# 89 "include/linux/notifier.h"
extern void srcu_init_notifier_head(struct srcu_notifier_head *nh);
# 115 "include/linux/notifier.h"
extern int atomic_notifier_chain_register(struct atomic_notifier_head *nh,
  struct notifier_block *nb);
extern int blocking_notifier_chain_register(struct blocking_notifier_head *nh,
  struct notifier_block *nb);
extern int raw_notifier_chain_register(struct raw_notifier_head *nh,
  struct notifier_block *nb);
extern int srcu_notifier_chain_register(struct srcu_notifier_head *nh,
  struct notifier_block *nb);

extern int blocking_notifier_chain_cond_register(
  struct blocking_notifier_head *nh,
  struct notifier_block *nb);

extern int atomic_notifier_chain_unregister(struct atomic_notifier_head *nh,
  struct notifier_block *nb);
extern int blocking_notifier_chain_unregister(struct blocking_notifier_head *nh,
  struct notifier_block *nb);
extern int raw_notifier_chain_unregister(struct raw_notifier_head *nh,
  struct notifier_block *nb);
extern int srcu_notifier_chain_unregister(struct srcu_notifier_head *nh,
  struct notifier_block *nb);

extern int atomic_notifier_call_chain(struct atomic_notifier_head *nh,
  unsigned long val, void *v);
extern int __atomic_notifier_call_chain(struct atomic_notifier_head *nh,
 unsigned long val, void *v, int nr_to_call, int *nr_calls);
extern int blocking_notifier_call_chain(struct blocking_notifier_head *nh,
  unsigned long val, void *v);
extern int __blocking_notifier_call_chain(struct blocking_notifier_head *nh,
 unsigned long val, void *v, int nr_to_call, int *nr_calls);
extern int raw_notifier_call_chain(struct raw_notifier_head *nh,
  unsigned long val, void *v);
extern int __raw_notifier_call_chain(struct raw_notifier_head *nh,
 unsigned long val, void *v, int nr_to_call, int *nr_calls);
extern int srcu_notifier_call_chain(struct srcu_notifier_head *nh,
  unsigned long val, void *v);
extern int __srcu_notifier_call_chain(struct srcu_notifier_head *nh,
 unsigned long val, void *v, int nr_to_call, int *nr_calls);
# 165 "include/linux/notifier.h"
static inline __attribute__((always_inline)) int notifier_from_errno(int err)
{
 return 0x8000 | (0x0001 - err);
}


static inline __attribute__((always_inline)) int notifier_to_errno(int ret)
{
 ret &= ~0x8000;
 return ret > 0x0001 ? 0x0001 - ret : 0;
}
# 258 "include/linux/notifier.h"
extern struct blocking_notifier_head reboot_notifier_list;
# 7 "include/linux/memory_hotplug.h" 2

struct page;
struct zone;
struct pglist_data;
struct mem_section;
# 165 "include/linux/memory_hotplug.h"
static inline __attribute__((always_inline)) void pgdat_resize_lock(struct pglist_data *p, unsigned long *f) {}
static inline __attribute__((always_inline)) void pgdat_resize_unlock(struct pglist_data *p, unsigned long *f) {}
static inline __attribute__((always_inline)) void pgdat_resize_init(struct pglist_data *pgdat) {}

static inline __attribute__((always_inline)) unsigned zone_span_seqbegin(struct zone *zone)
{
 return 0;
}
static inline __attribute__((always_inline)) int zone_span_seqretry(struct zone *zone, unsigned iv)
{
 return 0;
}
static inline __attribute__((always_inline)) void zone_span_writelock(struct zone *zone) {}
static inline __attribute__((always_inline)) void zone_span_writeunlock(struct zone *zone) {}
static inline __attribute__((always_inline)) void zone_seqlock_init(struct zone *zone) {}

static inline __attribute__((always_inline)) int mhp_notimplemented(const char *func)
{
 printk("<4>" "%s() called, with CONFIG_MEMORY_HOTPLUG disabled\n", func);
 dump_stack();
 return -89;
}

static inline __attribute__((always_inline)) void register_page_bootmem_info_node(struct pglist_data *pgdat)
{
}







extern int walk_memory_resource(unsigned long start_pfn,
   unsigned long nr_pages, void *arg,
   int (*func)(unsigned long, unsigned long, void *));






static inline __attribute__((always_inline)) int is_mem_section_removable(unsigned long pfn,
     unsigned long nr_pages)
{
 return 0;
}


extern int add_memory(int nid, u64 start, u64 size);
extern int arch_add_memory(int nid, u64 start, u64 size);
extern int remove_memory(u64 start, u64 size);
extern int sparse_add_one_section(struct zone *zone, unsigned long start_pfn,
        int nr_pages);
extern void sparse_remove_one_section(struct zone *zone, struct mem_section *ms);
extern struct page *sparse_decode_mem_map(unsigned long coded_mem_map,
       unsigned long pnum);
# 632 "include/linux/mmzone.h" 2

void get_zone_counts(unsigned long *active, unsigned long *inactive,
   unsigned long *free);
void build_all_zonelists(void);
void wakeup_kswapd(struct zone *zone, int order);
int zone_watermark_ok(struct zone *z, int order, unsigned long mark,
  int classzone_idx, int alloc_flags);
enum memmap_context {
 MEMMAP_EARLY,
 MEMMAP_HOTPLUG,
};
extern int init_currently_empty_zone(struct zone *zone, unsigned long start_pfn,
         unsigned long size,
         enum memmap_context context);




static inline __attribute__((always_inline)) void memory_present(int nid, unsigned long start, unsigned long end) {}
# 662 "include/linux/mmzone.h"
static inline __attribute__((always_inline)) int populated_zone(struct zone *zone)
{
 return (!!zone->present_pages);
}

extern int movable_zone;

static inline __attribute__((always_inline)) int zone_movable_is_highmem(void)
{



 return 0;

}

static inline __attribute__((always_inline)) int is_highmem_idx(enum zone_type idx)
{




 return 0;

}

static inline __attribute__((always_inline)) int is_normal_idx(enum zone_type idx)
{
 return (idx == ZONE_NORMAL);
}







static inline __attribute__((always_inline)) int is_highmem(struct zone *zone)
{






 return 0;

}

static inline __attribute__((always_inline)) int is_normal(struct zone *zone)
{
 return zone == zone->zone_pgdat->node_zones + ZONE_NORMAL;
}

static inline __attribute__((always_inline)) int is_dma32(struct zone *zone)
{



 return 0;

}

static inline __attribute__((always_inline)) int is_dma(struct zone *zone)
{



 return 0;

}


struct ctl_table;
struct file;
int min_free_kbytes_sysctl_handler(struct ctl_table *, int, struct file *,
     void *, size_t *, loff_t *);
extern int sysctl_lowmem_reserve_ratio[2 -1];
int lowmem_reserve_ratio_sysctl_handler(struct ctl_table *, int, struct file *,
     void *, size_t *, loff_t *);
int percpu_pagelist_fraction_sysctl_handler(struct ctl_table *, int, struct file *,
     void *, size_t *, loff_t *);
int sysctl_min_unmapped_ratio_sysctl_handler(struct ctl_table *, int,
   struct file *, void *, size_t *, loff_t *);
int sysctl_min_slab_ratio_sysctl_handler(struct ctl_table *, int,
   struct file *, void *, size_t *, loff_t *);

extern int numa_zonelist_order_handler(struct ctl_table *, int,
   struct file *, void *, size_t *, loff_t *);
extern char numa_zonelist_order[];




extern struct pglist_data contig_page_data;
# 766 "include/linux/mmzone.h"
extern struct pglist_data *first_online_pgdat(void);
extern struct pglist_data *next_online_pgdat(struct pglist_data *pgdat);
extern struct zone *next_zone(struct zone *zone);
# 798 "include/linux/mmzone.h"
static inline __attribute__((always_inline)) struct zone *zonelist_zone(struct zoneref *zoneref)
{
 return zoneref->zone;
}

static inline __attribute__((always_inline)) int zonelist_zone_idx(struct zoneref *zoneref)
{
 return zoneref->zone_idx;
}

static inline __attribute__((always_inline)) int zonelist_node_idx(struct zoneref *zoneref)
{




 return 0;

}
# 831 "include/linux/mmzone.h"
struct zoneref *next_zones_zonelist(struct zoneref *z,
     enum zone_type highest_zoneidx,
     nodemask_t *nodes,
     struct zone **zone);
# 848 "include/linux/mmzone.h"
static inline __attribute__((always_inline)) struct zoneref *first_zones_zonelist(struct zonelist *zonelist,
     enum zone_type highest_zoneidx,
     nodemask_t *nodes,
     struct zone **zone)
{
 return next_zones_zonelist(zonelist->_zonerefs, highest_zoneidx, nodes,
        zone);
}
# 1072 "include/linux/mmzone.h"
void memory_present(int nid, unsigned long start, unsigned long end);
unsigned long __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) node_memmap_size_bytes(int, unsigned long, unsigned long);
# 1106 "include/linux/mmzone.h"
static inline __attribute__((always_inline)) int memmap_valid_within(unsigned long pfn,
     struct page *page, struct zone *zone)
{
 return 1;
}
# 5 "include/linux/gfp.h" 2


# 1 "include/linux/topology.h" 1
# 33 "include/linux/topology.h"
# 1 "include/linux/smp.h" 1
# 14 "include/linux/smp.h"
extern void cpu_idle(void);

struct call_single_data {
 struct list_head list;
 void (*func) (void *info);
 void *info;
 u16 flags;
 u16 priv;
};


extern unsigned int total_cpus;

int smp_call_function_single(int cpuid, void (*func) (void *info), void *info,
    int wait);
# 125 "include/linux/smp.h"
static inline __attribute__((always_inline)) void smp_send_stop(void) { }





static inline __attribute__((always_inline)) int up_smp_call_function(void (*func)(void *), void *info)
{
 return 0;
}
# 144 "include/linux/smp.h"
static inline __attribute__((always_inline)) void smp_send_reschedule(int cpu) { }






static inline __attribute__((always_inline)) void init_call_single_data(void)
{
}
# 186 "include/linux/smp.h"
extern void arch_disable_smp_support(void);

void smp_setup_processor_id(void);
# 34 "include/linux/topology.h" 2
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/topology.h" 1
# 11 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/topology.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic/topology.h" 1
# 1 "include/asm-generic/topology.h" 1
# 2 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic/topology.h" 2
# 12 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/topology.h" 2
# 35 "include/linux/topology.h" 2
# 48 "include/linux/topology.h"
int arch_update_cpu_topology(void);
# 8 "include/linux/gfp.h" 2
# 1 "include/linux/mmdebug.h" 1



# 1 "include/linux/autoconf.h" 1
# 5 "include/linux/mmdebug.h" 2
# 9 "include/linux/gfp.h" 2

struct vm_area_struct;
# 104 "include/linux/gfp.h"
static inline __attribute__((always_inline)) int allocflags_to_migratetype(gfp_t gfp_flags)
{
 ({ int __ret_warn_on = !!((gfp_flags & ((( gfp_t)0x80000u)|(( gfp_t)0x100000u))) == ((( gfp_t)0x80000u)|(( gfp_t)0x100000u))); __builtin_expect(!!(__ret_warn_on), 0); });

 if (__builtin_expect(!!(page_group_by_mobility_disabled), 0))
  return 0;


 return (((gfp_flags & (( gfp_t)0x100000u)) != 0) << 1) |
  ((gfp_flags & (( gfp_t)0x80000u)) != 0);
}

static inline __attribute__((always_inline)) enum zone_type gfp_zone(gfp_t flags)
{
# 126 "include/linux/gfp.h"
 if ((flags & ((( gfp_t)0x02u) | (( gfp_t)0x100000u))) ==
   ((( gfp_t)0x02u) | (( gfp_t)0x100000u)))
  return ZONE_MOVABLE;




 return ZONE_NORMAL;
}
# 143 "include/linux/gfp.h"
static inline __attribute__((always_inline)) int gfp_zonelist(gfp_t flags)
{
 if (0 && __builtin_expect(!!(flags & (( gfp_t)0x40000u)), 0))
  return 1;

 return 0;
}
# 160 "include/linux/gfp.h"
static inline __attribute__((always_inline)) struct zonelist *node_zonelist(int nid, gfp_t flags)
{
 return (&contig_page_data)->node_zonelists + gfp_zonelist(flags);
}


static inline __attribute__((always_inline)) void arch_free_page(struct page *page, int order) { }


static inline __attribute__((always_inline)) void arch_alloc_page(struct page *page, int order) { }


struct page *
__alloc_pages_internal(gfp_t gfp_mask, unsigned int order,
         struct zonelist *zonelist, nodemask_t *nodemask);

static inline __attribute__((always_inline)) struct page *
__alloc_pages(gfp_t gfp_mask, unsigned int order,
  struct zonelist *zonelist)
{
 return __alloc_pages_internal(gfp_mask, order, zonelist, ((void *)0));
}

static inline __attribute__((always_inline)) struct page *
__alloc_pages_nodemask(gfp_t gfp_mask, unsigned int order,
  struct zonelist *zonelist, nodemask_t *nodemask)
{
 return __alloc_pages_internal(gfp_mask, order, zonelist, nodemask);
}


static inline __attribute__((always_inline)) struct page *alloc_pages_node(int nid, gfp_t gfp_mask,
      unsigned int order)
{
 if (__builtin_expect(!!(order >= 11), 0))
  return ((void *)0);


 if (nid < 0)
  nid = (((void)(0),0));

 return __alloc_pages(gfp_mask, order, node_zonelist(nid, gfp_mask));
}
# 224 "include/linux/gfp.h"
extern unsigned long __get_free_pages(gfp_t gfp_mask, unsigned int order);
extern unsigned long get_zeroed_page(gfp_t gfp_mask);

void *alloc_pages_exact(size_t size, gfp_t gfp_mask);
void free_pages_exact(void *virt, size_t size);







extern void __free_pages(struct page *page, unsigned int order);
extern void free_pages(unsigned long addr, unsigned int order);
extern void free_hot_page(struct page *page);
extern void free_cold_page(struct page *page);




void page_alloc_init(void);
void drain_zone_pages(struct zone *zone, struct per_cpu_pages *pcp);
void drain_all_pages(void);
void drain_local_pages(void *dummy);
# 23 "include/linux/kmod.h" 2
# 39 "include/linux/kmod.h"
static inline __attribute__((always_inline)) int request_module(const char *name, ...) { return -89; }
static inline __attribute__((always_inline)) int request_module_nowait(const char *name, ...) { return -89; }




struct key;
struct file;
struct subprocess_info;


struct subprocess_info *call_usermodehelper_setup(char *path, char **argv,
        char **envp, gfp_t gfp_mask);


void call_usermodehelper_setkeys(struct subprocess_info *info,
     struct key *session_keyring);
int call_usermodehelper_stdinpipe(struct subprocess_info *sub_info,
      struct file **filp);
void call_usermodehelper_setcleanup(struct subprocess_info *info,
        void (*cleanup)(char **argv, char **envp));

enum umh_wait {
 UMH_NO_WAIT = -1,
 UMH_WAIT_EXEC = 0,
 UMH_WAIT_PROC = 1,
};


int call_usermodehelper_exec(struct subprocess_info *info, enum umh_wait wait);



void call_usermodehelper_freeinfo(struct subprocess_info *info);

static inline __attribute__((always_inline)) int
call_usermodehelper(char *path, char **argv, char **envp, enum umh_wait wait)
{
 struct subprocess_info *info;
 gfp_t gfp_mask = (wait == UMH_NO_WAIT) ? ((( gfp_t)0x20u)) : ((( gfp_t)0x10u) | (( gfp_t)0x40u) | (( gfp_t)0x80u));

 info = call_usermodehelper_setup(path, argv, envp, gfp_mask);
 if (info == ((void *)0))
  return -12;
 return call_usermodehelper_exec(info, wait);
}

static inline __attribute__((always_inline)) int
call_usermodehelper_keys(char *path, char **argv, char **envp,
    struct key *session_keyring, enum umh_wait wait)
{
 struct subprocess_info *info;
 gfp_t gfp_mask = (wait == UMH_NO_WAIT) ? ((( gfp_t)0x20u)) : ((( gfp_t)0x10u) | (( gfp_t)0x40u) | (( gfp_t)0x80u));

 info = call_usermodehelper_setup(path, argv, envp, gfp_mask);
 if (info == ((void *)0))
  return -12;

 call_usermodehelper_setkeys(info, session_keyring);
 return call_usermodehelper_exec(info, wait);
}

extern void usermodehelper_init(void);

struct file;
extern int call_usermodehelper_pipe(char *path, char *argv[], char *envp[],
        struct file **filp);

extern int usermodehelper_disable(void);
extern void usermodehelper_enable(void);
# 14 "include/linux/module.h" 2
# 1 "include/linux/elf.h" 1




# 1 "include/linux/elf-em.h" 1
# 6 "include/linux/elf.h" 2

# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/elf.h" 1
# 170 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/elf.h"
typedef unsigned long elf_greg_t;
typedef elf_greg_t elf_gregset_t[45];

typedef double elf_fpreg_t;
typedef elf_fpreg_t elf_fpregset_t[33];
# 214 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/elf.h"
struct mips_abi;

extern struct mips_abi mips_abi;
extern struct mips_abi mips_abi_32;
extern struct mips_abi mips_abi_n32;
# 227 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/elf.h"
struct task_struct;

extern void elf_dump_regs(elf_greg_t *, struct pt_regs *regs);
extern int dump_task_regs(struct task_struct *, elf_gregset_t *);
extern int dump_task_fpu(struct task_struct *, elf_fpregset_t *);
# 8 "include/linux/elf.h" 2


struct file;
# 20 "include/linux/elf.h"
typedef __u32 Elf32_Addr;
typedef __u16 Elf32_Half;
typedef __u32 Elf32_Off;
typedef __s32 Elf32_Sword;
typedef __u32 Elf32_Word;


typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __s16 Elf64_SHalf;
typedef __u64 Elf64_Off;
typedef __s32 Elf64_Sword;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
typedef __s64 Elf64_Sxword;
# 127 "include/linux/elf.h"
typedef struct dynamic{
  Elf32_Sword d_tag;
  union{
    Elf32_Sword d_val;
    Elf32_Addr d_ptr;
  } d_un;
} Elf32_Dyn;

typedef struct {
  Elf64_Sxword d_tag;
  union {
    Elf64_Xword d_val;
    Elf64_Addr d_ptr;
  } d_un;
} Elf64_Dyn;
# 150 "include/linux/elf.h"
typedef struct elf32_rel {
  Elf32_Addr r_offset;
  Elf32_Word r_info;
} Elf32_Rel;

typedef struct elf64_rel {
  Elf64_Addr r_offset;
  Elf64_Xword r_info;
} Elf64_Rel;

typedef struct elf32_rela{
  Elf32_Addr r_offset;
  Elf32_Word r_info;
  Elf32_Sword r_addend;
} Elf32_Rela;

typedef struct elf64_rela {
  Elf64_Addr r_offset;
  Elf64_Xword r_info;
  Elf64_Sxword r_addend;
} Elf64_Rela;

typedef struct elf32_sym{
  Elf32_Word st_name;
  Elf32_Addr st_value;
  Elf32_Word st_size;
  unsigned char st_info;
  unsigned char st_other;
  Elf32_Half st_shndx;
} Elf32_Sym;

typedef struct elf64_sym {
  Elf64_Word st_name;
  unsigned char st_info;
  unsigned char st_other;
  Elf64_Half st_shndx;
  Elf64_Addr st_value;
  Elf64_Xword st_size;
} Elf64_Sym;




typedef struct elf32_hdr{
  unsigned char e_ident[16];
  Elf32_Half e_type;
  Elf32_Half e_machine;
  Elf32_Word e_version;
  Elf32_Addr e_entry;
  Elf32_Off e_phoff;
  Elf32_Off e_shoff;
  Elf32_Word e_flags;
  Elf32_Half e_ehsize;
  Elf32_Half e_phentsize;
  Elf32_Half e_phnum;
  Elf32_Half e_shentsize;
  Elf32_Half e_shnum;
  Elf32_Half e_shstrndx;
} Elf32_Ehdr;

typedef struct elf64_hdr {
  unsigned char e_ident[16];
  Elf64_Half e_type;
  Elf64_Half e_machine;
  Elf64_Word e_version;
  Elf64_Addr e_entry;
  Elf64_Off e_phoff;
  Elf64_Off e_shoff;
  Elf64_Word e_flags;
  Elf64_Half e_ehsize;
  Elf64_Half e_phentsize;
  Elf64_Half e_phnum;
  Elf64_Half e_shentsize;
  Elf64_Half e_shnum;
  Elf64_Half e_shstrndx;
} Elf64_Ehdr;







typedef struct elf32_phdr{
  Elf32_Word p_type;
  Elf32_Off p_offset;
  Elf32_Addr p_vaddr;
  Elf32_Addr p_paddr;
  Elf32_Word p_filesz;
  Elf32_Word p_memsz;
  Elf32_Word p_flags;
  Elf32_Word p_align;
} Elf32_Phdr;

typedef struct elf64_phdr {
  Elf64_Word p_type;
  Elf64_Word p_flags;
  Elf64_Off p_offset;
  Elf64_Addr p_vaddr;
  Elf64_Addr p_paddr;
  Elf64_Xword p_filesz;
  Elf64_Xword p_memsz;
  Elf64_Xword p_align;
} Elf64_Phdr;
# 289 "include/linux/elf.h"
typedef struct {
  Elf32_Word sh_name;
  Elf32_Word sh_type;
  Elf32_Word sh_flags;
  Elf32_Addr sh_addr;
  Elf32_Off sh_offset;
  Elf32_Word sh_size;
  Elf32_Word sh_link;
  Elf32_Word sh_info;
  Elf32_Word sh_addralign;
  Elf32_Word sh_entsize;
} Elf32_Shdr;

typedef struct elf64_shdr {
  Elf64_Word sh_name;
  Elf64_Word sh_type;
  Elf64_Xword sh_flags;
  Elf64_Addr sh_addr;
  Elf64_Off sh_offset;
  Elf64_Xword sh_size;
  Elf64_Word sh_link;
  Elf64_Word sh_info;
  Elf64_Xword sh_addralign;
  Elf64_Xword sh_entsize;
} Elf64_Shdr;
# 367 "include/linux/elf.h"
typedef struct elf32_note {
  Elf32_Word n_namesz;
  Elf32_Word n_descsz;
  Elf32_Word n_type;
} Elf32_Nhdr;


typedef struct elf64_note {
  Elf64_Word n_namesz;
  Elf64_Word n_descsz;
  Elf64_Word n_type;
} Elf64_Nhdr;




extern Elf32_Dyn _DYNAMIC [];
# 401 "include/linux/elf.h"
static inline __attribute__((always_inline)) int elf_coredump_extra_notes_size(void) { return 0; }
static inline __attribute__((always_inline)) int elf_coredump_extra_notes_write(struct file *file,
   loff_t *foffset) { return 0; }
# 15 "include/linux/module.h" 2

# 1 "include/linux/kobject.h" 1
# 21 "include/linux/kobject.h"
# 1 "include/linux/sysfs.h" 1
# 20 "include/linux/sysfs.h"
struct kobject;
struct module;






struct attribute {
 const char *name;
 struct module *owner;
 mode_t mode;
};

struct attribute_group {
 const char *name;
 mode_t (*is_visible)(struct kobject *,
           struct attribute *, int);
 struct attribute **attrs;
};
# 63 "include/linux/sysfs.h"
struct vm_area_struct;

struct bin_attribute {
 struct attribute attr;
 size_t size;
 void *private;
 ssize_t (*read)(struct kobject *, struct bin_attribute *,
   char *, loff_t, size_t);
 ssize_t (*write)(struct kobject *, struct bin_attribute *,
    char *, loff_t, size_t);
 int (*mmap)(struct kobject *, struct bin_attribute *attr,
      struct vm_area_struct *vma);
};

struct sysfs_ops {
 ssize_t (*show)(struct kobject *, struct attribute *,char *);
 ssize_t (*store)(struct kobject *,struct attribute *,const char *, size_t);
};

struct sysfs_dirent;



int sysfs_schedule_callback(struct kobject *kobj, void (*func)(void *),
       void *data, struct module *owner);

int sysfs_create_dir(struct kobject *kobj);
void sysfs_remove_dir(struct kobject *kobj);
int sysfs_rename_dir(struct kobject *kobj, const char *new_name);
int sysfs_move_dir(struct kobject *kobj,
    struct kobject *new_parent_kobj);

int sysfs_create_file(struct kobject *kobj,
       const struct attribute *attr);
int sysfs_chmod_file(struct kobject *kobj, struct attribute *attr,
      mode_t mode);
void sysfs_remove_file(struct kobject *kobj, const struct attribute *attr);

int sysfs_create_bin_file(struct kobject *kobj,
           struct bin_attribute *attr);
void sysfs_remove_bin_file(struct kobject *kobj, struct bin_attribute *attr);

int sysfs_create_link(struct kobject *kobj, struct kobject *target,
       const char *name);
int sysfs_create_link_nowarn(struct kobject *kobj,
       struct kobject *target,
       const char *name);
void sysfs_remove_link(struct kobject *kobj, const char *name);

int sysfs_create_group(struct kobject *kobj,
        const struct attribute_group *grp);
int sysfs_update_group(struct kobject *kobj,
         const struct attribute_group *grp);
void sysfs_remove_group(struct kobject *kobj,
   const struct attribute_group *grp);
int sysfs_add_file_to_group(struct kobject *kobj,
   const struct attribute *attr, const char *group);
void sysfs_remove_file_from_group(struct kobject *kobj,
   const struct attribute *attr, const char *group);

void sysfs_notify(struct kobject *kobj, const char *dir, const char *attr);
void sysfs_notify_dirent(struct sysfs_dirent *sd);
struct sysfs_dirent *sysfs_get_dirent(struct sysfs_dirent *parent_sd,
          const unsigned char *name);
struct sysfs_dirent *sysfs_get(struct sysfs_dirent *sd);
void sysfs_put(struct sysfs_dirent *sd);
void sysfs_printk_last_file(void);
int sysfs_init(void);
# 22 "include/linux/kobject.h" 2


# 1 "include/linux/kref.h" 1
# 21 "include/linux/kref.h"
struct kref {
 atomic_t refcount;
};

void kref_set(struct kref *kref, int num);
void kref_init(struct kref *kref);
void kref_get(struct kref *kref);
int kref_put(struct kref *kref, void (*release) (struct kref *kref));
# 25 "include/linux/kobject.h" 2
# 34 "include/linux/kobject.h"
extern char uevent_helper[];


extern u64 uevent_seqnum;
# 49 "include/linux/kobject.h"
enum kobject_action {
 KOBJ_ADD,
 KOBJ_REMOVE,
 KOBJ_CHANGE,
 KOBJ_MOVE,
 KOBJ_ONLINE,
 KOBJ_OFFLINE,
 KOBJ_MAX
};

struct kobject {
 const char *name;
 struct list_head entry;
 struct kobject *parent;
 struct kset *kset;
 struct kobj_type *ktype;
 struct sysfs_dirent *sd;
 struct kref kref;
 unsigned int state_initialized:1;
 unsigned int state_in_sysfs:1;
 unsigned int state_add_uevent_sent:1;
 unsigned int state_remove_uevent_sent:1;
 unsigned int uevent_suppress:1;
};

extern int kobject_set_name(struct kobject *kobj, const char *name, ...)
       __attribute__((format(printf, 2, 3)));
extern int kobject_set_name_vargs(struct kobject *kobj, const char *fmt,
      va_list vargs);

static inline __attribute__((always_inline)) const char *kobject_name(const struct kobject *kobj)
{
 return kobj->name;
}

extern void kobject_init(struct kobject *kobj, struct kobj_type *ktype);
extern int kobject_add(struct kobject *kobj,
        struct kobject *parent,
        const char *fmt, ...);
extern int kobject_init_and_add(struct kobject *kobj,
          struct kobj_type *ktype,
          struct kobject *parent,
          const char *fmt, ...);

extern void kobject_del(struct kobject *kobj);

extern struct kobject * kobject_create(void);
extern struct kobject * kobject_create_and_add(const char *name,
      struct kobject *parent);

extern int kobject_rename(struct kobject *, const char *new_name);
extern int kobject_move(struct kobject *, struct kobject *);

extern struct kobject *kobject_get(struct kobject *kobj);
extern void kobject_put(struct kobject *kobj);

extern char *kobject_get_path(struct kobject *kobj, gfp_t flag);

struct kobj_type {
 void (*release)(struct kobject *kobj);
 struct sysfs_ops *sysfs_ops;
 struct attribute **default_attrs;
};

struct kobj_uevent_env {
 char *envp[32];
 int envp_idx;
 char buf[2048];
 int buflen;
};

struct kset_uevent_ops {
 int (*filter)(struct kset *kset, struct kobject *kobj);
 const char *(*name)(struct kset *kset, struct kobject *kobj);
 int (*uevent)(struct kset *kset, struct kobject *kobj,
        struct kobj_uevent_env *env);
};

struct kobj_attribute {
 struct attribute attr;
 ssize_t (*show)(struct kobject *kobj, struct kobj_attribute *attr,
   char *buf);
 ssize_t (*store)(struct kobject *kobj, struct kobj_attribute *attr,
    const char *buf, size_t count);
};

extern struct sysfs_ops kobj_sysfs_ops;
# 154 "include/linux/kobject.h"
struct kset {
 struct list_head list;
 spinlock_t list_lock;
 struct kobject kobj;
 struct kset_uevent_ops *uevent_ops;
};

extern void kset_init(struct kset *kset);
extern int kset_register(struct kset *kset);
extern void kset_unregister(struct kset *kset);
extern struct kset * kset_create_and_add(const char *name,
      struct kset_uevent_ops *u,
      struct kobject *parent_kobj);

static inline __attribute__((always_inline)) struct kset *to_kset(struct kobject *kobj)
{
 return kobj ? ({ const typeof( ((struct kset *)0)->kobj ) *__mptr = (kobj); (struct kset *)( (char *)__mptr - ((size_t) &((struct kset *)0)->kobj) );}) : ((void *)0);
}

static inline __attribute__((always_inline)) struct kset *kset_get(struct kset *k)
{
 return k ? to_kset(kobject_get(&k->kobj)) : ((void *)0);
}

static inline __attribute__((always_inline)) void kset_put(struct kset *k)
{
 kobject_put(&k->kobj);
}

static inline __attribute__((always_inline)) struct kobj_type *get_ktype(struct kobject *kobj)
{
 return kobj->ktype;
}

extern struct kobject *kset_find_obj(struct kset *, const char *);


extern struct kobject *kernel_kobj;

extern struct kobject *mm_kobj;

extern struct kobject *hypervisor_kobj;

extern struct kobject *power_kobj;

extern struct kobject *firmware_kobj;
# 212 "include/linux/kobject.h"
static inline __attribute__((always_inline)) int kobject_uevent(struct kobject *kobj,
     enum kobject_action action)
{ return 0; }
static inline __attribute__((always_inline)) int kobject_uevent_env(struct kobject *kobj,
          enum kobject_action action,
          char *envp[])
{ return 0; }

static inline __attribute__((always_inline)) int add_uevent_var(struct kobj_uevent_env *env,
     const char *format, ...)
{ return 0; }

static inline __attribute__((always_inline)) int kobject_action_type(const char *buf, size_t count,
          enum kobject_action *type)
{ return -22; }
# 17 "include/linux/module.h" 2
# 1 "include/linux/moduleparam.h" 1
# 32 "include/linux/moduleparam.h"
struct kernel_param;


typedef int (*param_set_fn)(const char *val, struct kernel_param *kp);

typedef int (*param_get_fn)(char *buffer, struct kernel_param *kp);

struct kernel_param {
 const char *name;
 unsigned int perm;
 param_set_fn set;
 param_get_fn get;
 union {
  void *arg;
  const struct kparam_string *str;
  const struct kparam_array *arr;
 };
};


struct kparam_string {
 unsigned int maxlen;
 char *string;
};


struct kparam_array
{
 unsigned int max;
 unsigned int *num;
 param_set_fn set;
 param_get_fn get;
 unsigned int elemsize;
 void *elem;
};
# 135 "include/linux/moduleparam.h"
extern int parse_args(const char *name,
        char *args,
        struct kernel_param *params,
        unsigned num,
        int (*unknown)(char *param, char *val));



extern void destroy_params(const struct kernel_param *params, unsigned num);
# 157 "include/linux/moduleparam.h"
extern int param_set_byte(const char *val, struct kernel_param *kp);
extern int param_get_byte(char *buffer, struct kernel_param *kp);


extern int param_set_short(const char *val, struct kernel_param *kp);
extern int param_get_short(char *buffer, struct kernel_param *kp);


extern int param_set_ushort(const char *val, struct kernel_param *kp);
extern int param_get_ushort(char *buffer, struct kernel_param *kp);


extern int param_set_int(const char *val, struct kernel_param *kp);
extern int param_get_int(char *buffer, struct kernel_param *kp);


extern int param_set_uint(const char *val, struct kernel_param *kp);
extern int param_get_uint(char *buffer, struct kernel_param *kp);


extern int param_set_long(const char *val, struct kernel_param *kp);
extern int param_get_long(char *buffer, struct kernel_param *kp);


extern int param_set_ulong(const char *val, struct kernel_param *kp);
extern int param_get_ulong(char *buffer, struct kernel_param *kp);


extern int param_set_charp(const char *val, struct kernel_param *kp);
extern int param_get_charp(char *buffer, struct kernel_param *kp);


extern int param_set_bool(const char *val, struct kernel_param *kp);
extern int param_get_bool(char *buffer, struct kernel_param *kp);


extern int param_set_invbool(const char *val, struct kernel_param *kp);
extern int param_get_invbool(char *buffer, struct kernel_param *kp);
# 209 "include/linux/moduleparam.h"
extern int param_array_set(const char *val, struct kernel_param *kp);
extern int param_array_get(char *buffer, struct kernel_param *kp);

extern int param_set_copystring(const char *val, struct kernel_param *kp);
extern int param_get_string(char *buffer, struct kernel_param *kp);



struct module;
# 226 "include/linux/moduleparam.h"
static inline __attribute__((always_inline)) int module_param_sysfs_setup(struct module *mod,
        struct kernel_param *kparam,
        unsigned int num_params)
{
 return 0;
}

static inline __attribute__((always_inline)) void module_param_sysfs_remove(struct module *mod)
{ }
# 18 "include/linux/module.h" 2
# 1 "include/linux/marker.h" 1
# 18 "include/linux/marker.h"
struct module;
struct marker;
# 33 "include/linux/marker.h"
typedef void marker_probe_func(void *probe_private, void *call_private,
  const char *fmt, va_list *args);

struct marker_probe_closure {
 marker_probe_func *func;
 void *probe_private;
};

struct marker {
 const char *name;
 const char *format;


 char state;
 char ptype;

 void (*call)(const struct marker *mdata, void *call_private, ...);
 struct marker_probe_closure single;
 struct marker_probe_closure *multi;
 const char *tp_name;
 void *tp_cb;
} __attribute__((aligned(8)));
# 124 "include/linux/marker.h"
static inline __attribute__((always_inline)) void marker_update_probe_range(struct marker *begin,
 struct marker *end)
{ }
# 176 "include/linux/marker.h"
static inline __attribute__((always_inline)) void __attribute__((format(printf,1,2))) ___mark_check_format(const char *fmt, ...)
{
}







extern marker_probe_func __mark_empty_function;

extern void marker_probe_cb(const struct marker *mdata,
 void *call_private, ...);





extern int marker_probe_register(const char *name, const char *format,
    marker_probe_func *probe, void *probe_private);




extern int marker_probe_unregister(const char *name,
 marker_probe_func *probe, void *probe_private);



extern int marker_probe_unregister_private_data(marker_probe_func *probe,
 void *probe_private);

extern void *marker_get_private_data(const char *name, marker_probe_func *probe,
 int num);
# 19 "include/linux/module.h" 2
# 1 "include/linux/tracepoint.h" 1
# 18 "include/linux/tracepoint.h"
# 1 "include/linux/rcupdate.h" 1
# 42 "include/linux/rcupdate.h"
# 1 "include/linux/completion.h" 1
# 25 "include/linux/completion.h"
struct completion {
 unsigned int done;
 wait_queue_head_t wait;
};
# 73 "include/linux/completion.h"
static inline __attribute__((always_inline)) void init_completion(struct completion *x)
{
 x->done = 0;
 init_waitqueue_head(&x->wait);
}

extern void wait_for_completion(struct completion *);
extern int wait_for_completion_interruptible(struct completion *x);
extern int wait_for_completion_killable(struct completion *x);
extern unsigned long wait_for_completion_timeout(struct completion *x,
         unsigned long timeout);
extern unsigned long wait_for_completion_interruptible_timeout(
   struct completion *x, unsigned long timeout);
extern bool try_wait_for_completion(struct completion *x);
extern bool completion_done(struct completion *x);

extern void complete(struct completion *);
extern void complete_all(struct completion *);
# 43 "include/linux/rcupdate.h" 2






struct rcu_head {
 struct rcu_head *next;
 void (*func)(struct rcu_head *head);
};


extern int rcu_scheduler_active;


# 1 "include/linux/rcuclassic.h" 1
# 48 "include/linux/rcuclassic.h"
struct rcu_ctrlblk {
 long cur;
 long completed;
 long pending;






 int signaled;

 spinlock_t lock ;
 unsigned long cpumask[(((1) + (8 * sizeof(long)) - 1) / (8 * sizeof(long)))];

} ;


static inline __attribute__((always_inline)) int rcu_batch_before(long a, long b)
{
 return (a - b) < 0;
}


static inline __attribute__((always_inline)) int rcu_batch_after(long a, long b)
{
 return (a - b) > 0;
}


struct rcu_data {

 long quiescbatch;
 int passed_quiesc;
 int qs_pending;
# 99 "include/linux/rcuclassic.h"
 long batch;
 struct rcu_head *nxtlist;
 struct rcu_head **nxttail[3];
 long qlen;
 struct rcu_head *donelist;
 struct rcu_head **donetail;
 long blimit;
 int cpu;
 struct rcu_head barrier;
};







extern void rcu_qsctr_inc(int cpu);
extern void rcu_bh_qsctr_inc(int cpu);

extern int rcu_pending(int cpu);
extern int rcu_needs_cpu(int cpu);
# 161 "include/linux/rcuclassic.h"
extern void __rcu_init(void);

extern void rcu_check_callbacks(int cpu, int user);
extern void rcu_restart_cpu(int cpu);

extern long rcu_batches_completed(void);
extern long rcu_batches_completed_bh(void);





static inline __attribute__((always_inline)) int rcu_blocking_is_gp(void)
{
 return 1 == 1;
}
# 59 "include/linux/rcupdate.h" 2
# 202 "include/linux/rcupdate.h"
struct rcu_synchronize {
 struct rcu_head head;
 struct completion completion;
};

extern void wakeme_after_rcu(struct rcu_head *head);
# 238 "include/linux/rcupdate.h"
extern void call_rcu(struct rcu_head *head,
         void (*func)(struct rcu_head *head));
# 259 "include/linux/rcupdate.h"
extern void call_rcu_bh(struct rcu_head *head,
   void (*func)(struct rcu_head *head));


extern void synchronize_rcu(void);
extern void rcu_barrier(void);
extern void rcu_barrier_bh(void);
extern void rcu_barrier_sched(void);


extern void rcu_init(void);
extern void rcu_scheduler_starting(void);
extern int rcu_needs_cpu(int cpu);
# 19 "include/linux/tracepoint.h" 2

struct module;
struct tracepoint;

struct tracepoint {
 const char *name;
 int state;
 void **funcs;
} __attribute__((aligned(32)));
# 113 "include/linux/tracepoint.h"
static inline __attribute__((always_inline)) void tracepoint_update_probe_range(struct tracepoint *begin,
 struct tracepoint *end)
{ }






extern int tracepoint_probe_register(const char *name, void *probe);





extern int tracepoint_probe_unregister(const char *name, void *probe);

extern int tracepoint_probe_register_noupdate(const char *name, void *probe);
extern int tracepoint_probe_unregister_noupdate(const char *name, void *probe);
extern void tracepoint_probe_update_all(void);

struct tracepoint_iter {
 struct module *module;
 struct tracepoint *tracepoint;
};

extern void tracepoint_iter_start(struct tracepoint_iter *iter);
extern void tracepoint_iter_next(struct tracepoint_iter *iter);
extern void tracepoint_iter_stop(struct tracepoint_iter *iter);
extern void tracepoint_iter_reset(struct tracepoint_iter *iter);
extern int tracepoint_get_iter_range(struct tracepoint **tracepoint,
 struct tracepoint *begin, struct tracepoint *end);






static inline __attribute__((always_inline)) void tracepoint_synchronize_unregister(void)
{
 synchronize_rcu();
}
# 20 "include/linux/module.h" 2
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/local.h" 1



# 1 "include/linux/percpu.h" 1




# 1 "include/linux/slab.h" 1
# 84 "include/linux/slab.h"
void __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) kmem_cache_init(void);
int slab_is_available(void);

struct kmem_cache *kmem_cache_create(const char *, size_t, size_t,
   unsigned long,
   void (*)(void *));
void kmem_cache_destroy(struct kmem_cache *);
int kmem_cache_shrink(struct kmem_cache *);
void kmem_cache_free(struct kmem_cache *, void *);
unsigned int kmem_cache_size(struct kmem_cache *);
const char *kmem_cache_name(struct kmem_cache *);
int kmem_ptr_validate(struct kmem_cache *cachep, const void *ptr);
# 127 "include/linux/slab.h"
void * __krealloc(const void *, size_t, gfp_t);
void * krealloc(const void *, size_t, gfp_t);
void kfree(const void *);
void kzfree(const void *);
size_t ksize(const void *);
# 157 "include/linux/slab.h"
# 1 "include/linux/slab_def.h" 1
# 17 "include/linux/slab_def.h"
# 1 "include/trace/kmemtrace.h" 1
# 18 "include/trace/kmemtrace.h"
static inline __attribute__((always_inline)) void kmemtrace_init(void)
{
}


static inline __attribute__((always_inline)) void _do_trace_kmalloc(struct tracepoint *tp, unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags) { } static inline __attribute__((always_inline)) void trace_kmalloc(unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags) { } static inline __attribute__((always_inline)) int register_trace_kmalloc(void (*probe)(unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags)) { return -89; } static inline __attribute__((always_inline)) int unregister_trace_kmalloc(void (*probe)(unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags)) { return -89; };






static inline __attribute__((always_inline)) void _do_trace_kmem_cache_alloc(struct tracepoint *tp, unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags) { } static inline __attribute__((always_inline)) void trace_kmem_cache_alloc(unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags) { } static inline __attribute__((always_inline)) int register_trace_kmem_cache_alloc(void (*probe)(unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags)) { return -89; } static inline __attribute__((always_inline)) int unregister_trace_kmem_cache_alloc(void (*probe)(unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags)) { return -89; };






static inline __attribute__((always_inline)) void _do_trace_kmalloc_node(struct tracepoint *tp, unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags, int node) { } static inline __attribute__((always_inline)) void trace_kmalloc_node(unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags, int node) { } static inline __attribute__((always_inline)) int register_trace_kmalloc_node(void (*probe)(unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags, int node)) { return -89; } static inline __attribute__((always_inline)) int unregister_trace_kmalloc_node(void (*probe)(unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags, int node)) { return -89; };







static inline __attribute__((always_inline)) void _do_trace_kmem_cache_alloc_node(struct tracepoint *tp, unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags, int node) { } static inline __attribute__((always_inline)) void trace_kmem_cache_alloc_node(unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags, int node) { } static inline __attribute__((always_inline)) int register_trace_kmem_cache_alloc_node(void (*probe)(unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags, int node)) { return -89; } static inline __attribute__((always_inline)) int unregister_trace_kmem_cache_alloc_node(void (*probe)(unsigned long call_site, const void *ptr, size_t bytes_req, size_t bytes_alloc, gfp_t gfp_flags, int node)) { return -89; };







static inline __attribute__((always_inline)) void _do_trace_kfree(struct tracepoint *tp, unsigned long call_site, const void *ptr) { } static inline __attribute__((always_inline)) void trace_kfree(unsigned long call_site, const void *ptr) { } static inline __attribute__((always_inline)) int register_trace_kfree(void (*probe)(unsigned long call_site, const void *ptr)) { return -89; } static inline __attribute__((always_inline)) int unregister_trace_kfree(void (*probe)(unsigned long call_site, const void *ptr)) { return -89; };


static inline __attribute__((always_inline)) void _do_trace_kmem_cache_free(struct tracepoint *tp, unsigned long call_site, const void *ptr) { } static inline __attribute__((always_inline)) void trace_kmem_cache_free(unsigned long call_site, const void *ptr) { } static inline __attribute__((always_inline)) int register_trace_kmem_cache_free(void (*probe)(unsigned long call_site, const void *ptr)) { return -89; } static inline __attribute__((always_inline)) int unregister_trace_kmem_cache_free(void (*probe)(unsigned long call_site, const void *ptr)) { return -89; };
# 18 "include/linux/slab_def.h" 2


struct cache_sizes {
 size_t cs_size;
 struct kmem_cache *cs_cachep;



};
extern struct cache_sizes malloc_sizes[];

void *kmem_cache_alloc(struct kmem_cache *, gfp_t);
void *__kmalloc(size_t size, gfp_t flags);





static inline __attribute__((always_inline)) __attribute__((always_inline)) void *
kmem_cache_alloc_notrace(struct kmem_cache *cachep, gfp_t flags)
{
 return kmem_cache_alloc(cachep, flags);
}
static inline __attribute__((always_inline)) size_t slab_buffer_size(struct kmem_cache *cachep)
{
 return 0;
}


static inline __attribute__((always_inline)) __attribute__((always_inline)) void *kmalloc(size_t size, gfp_t flags)
{
 struct kmem_cache *cachep;
 void *ret;

 if (__builtin_constant_p(size)) {
  int i = 0;

  if (!size)
   return ((void *)16);






# 1 "include/linux/kmalloc_sizes.h" 1

 if (size <= 32) goto found; else i++;

 if (size <= 64) goto found; else i++;

 if (size <= 96) goto found; else i++;

 if (size <= 128) goto found; else i++;

 if (size <= 192) goto found; else i++;

 if (size <= 256) goto found; else i++;
 if (size <= 512) goto found; else i++;
 if (size <= 1024) goto found; else i++;
 if (size <= 2048) goto found; else i++;
 if (size <= 4096) goto found; else i++;
 if (size <= 8192) goto found; else i++;
 if (size <= 16384) goto found; else i++;
 if (size <= 32768) goto found; else i++;
 if (size <= 65536) goto found; else i++;
 if (size <= 131072) goto found; else i++;

 if (size <= 262144) goto found; else i++;


 if (size <= 524288) goto found; else i++;


 if (size <= 1048576) goto found; else i++;


 if (size <= 2097152) goto found; else i++;


 if (size <= 4194304) goto found; else i++;
# 64 "include/linux/slab_def.h" 2

  return ((void *)0);
found:





   cachep = malloc_sizes[i].cs_cachep;

  ret = kmem_cache_alloc_notrace(cachep, flags);

  trace_kmalloc(({ __label__ __here; __here: (unsigned long)&&__here; }), ret,
         size, slab_buffer_size(cachep), flags);

  return ret;
 }
 return __kmalloc(size, flags);
}
# 158 "include/linux/slab.h" 2
# 211 "include/linux/slab.h"
static inline __attribute__((always_inline)) void *kcalloc(size_t n, size_t size, gfp_t flags)
{
 if (size != 0 && n > (~0UL) / size)
  return ((void *)0);
 return __kmalloc(n * size, flags | (( gfp_t)0x8000u));
}
# 229 "include/linux/slab.h"
static inline __attribute__((always_inline)) void *kmalloc_node(size_t size, gfp_t flags, int node)
{
 return kmalloc(size, flags);
}

static inline __attribute__((always_inline)) void *__kmalloc_node(size_t size, gfp_t flags, int node)
{
 return __kmalloc(size, flags);
}

void *kmem_cache_alloc(struct kmem_cache *, gfp_t);

static inline __attribute__((always_inline)) void *kmem_cache_alloc_node(struct kmem_cache *cachep,
     gfp_t flags, int node)
{
 return kmem_cache_alloc(cachep, flags);
}
# 294 "include/linux/slab.h"
static inline __attribute__((always_inline)) void *kmem_cache_zalloc(struct kmem_cache *k, gfp_t flags)
{
 return kmem_cache_alloc(k, flags | (( gfp_t)0x8000u));
}






static inline __attribute__((always_inline)) void *kzalloc(size_t size, gfp_t flags)
{
 return kmalloc(size, flags | (( gfp_t)0x8000u));
}







static inline __attribute__((always_inline)) void *kzalloc_node(size_t size, gfp_t flags, int node)
{
 return kmalloc_node(size, flags | (( gfp_t)0x8000u), node);
}
# 6 "include/linux/percpu.h" 2




# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/percpu.h" 1



# 1 "include/asm-generic/percpu.h" 1





# 1 "include/linux/percpu-defs.h" 1
# 7 "include/asm-generic/percpu.h" 2
# 5 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/percpu.h" 2
# 11 "include/linux/percpu.h" 2
# 106 "include/linux/percpu.h"
static inline __attribute__((always_inline)) void *__alloc_percpu(size_t size, size_t align)
{





 ({ static int __warned; int __ret_warn_once = !!(align > (1 << 5)); if (__builtin_expect(!!(__ret_warn_once), 0)) if (({ int __ret_warn_on = !!(!__warned); __builtin_expect(!!(__ret_warn_on), 0); })) __warned = 1; __builtin_expect(!!(__ret_warn_once), 0); });
 return kzalloc(size, ((( gfp_t)0x10u) | (( gfp_t)0x40u) | (( gfp_t)0x80u)));
}

static inline __attribute__((always_inline)) void free_percpu(void *p)
{
 kfree(p);
}
# 5 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/local.h" 2




typedef struct
{
 atomic_long_t a;
} local_t;
# 27 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/local.h"
static __inline__ __attribute__((always_inline)) long local_add_return(long i, local_t * l)
{
 unsigned long result;
# 49 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/local.h"
  unsigned long flags;

  do { ({ unsigned long __dummy; typeof(flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory"); } while (0);
  result = l->a.counter;
  result += i;
  l->a.counter = result;
  do { ({ unsigned long __dummy; typeof(flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); if (raw_irqs_disabled_flags(flags)) { raw_local_irq_restore(flags); } else { raw_local_irq_restore(flags); } } while (0);


 return result;
}

static __inline__ __attribute__((always_inline)) long local_sub_return(long i, local_t * l)
{
 unsigned long result;
# 83 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/local.h"
  unsigned long flags;

  do { ({ unsigned long __dummy; typeof(flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory"); } while (0);
  result = l->a.counter;
  result -= i;
  l->a.counter = result;
  do { ({ unsigned long __dummy; typeof(flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); if (raw_irqs_disabled_flags(flags)) { raw_local_irq_restore(flags); } else { raw_local_irq_restore(flags); } } while (0);


 return result;
}
# 21 "include/linux/module.h" 2

# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/module.h" 1




# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/uaccess.h" 1
# 192 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/uaccess.h"
struct __large_struct { unsigned long buf[100]; };




extern void __get_user_unknown(void);
# 354 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/uaccess.h"
extern void __put_user_unknown(void);
# 443 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/uaccess.h"
extern void __get_user_unaligned_unknown(void);
# 598 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/uaccess.h"
extern void __put_user_unaligned_unknown(void);
# 617 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/uaccess.h"
extern size_t __copy_user(void *__to, const void *__from, size_t __n);
# 665 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/uaccess.h"
extern size_t __copy_user_inatomic(void *__to, const void *__from, size_t __n);
# 879 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/uaccess.h"
static inline __attribute__((always_inline)) __kernel_size_t
__clear_user(void *addr, __kernel_size_t size)
{
 __kernel_size_t res;

 might_fault();
 __asm__ __volatile__(
  "move\t$4, %1\n\t"
  "move\t$5, $0\n\t"
  "move\t$6, %2\n\t"
  "jal\t" "__bzero" "\n\t"
  "move\t%0, $6"
  : "=r" (res)
  : "r" (addr), "r" (size)
  : "$4", "$5", "$6", "$8", "$9", "$31");

 return res;
}
# 928 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/uaccess.h"
static inline __attribute__((always_inline)) long
__strncpy_from_user(char *__to, const char *__from, long __len)
{
 long res;

 might_fault();
 __asm__ __volatile__(
  "move\t$4, %1\n\t"
  "move\t$5, %2\n\t"
  "move\t$6, %3\n\t"
  "jal\t" "__strncpy_from_user_nocheck_asm" "\n\t"
  "move\t%0, $2"
  : "=r" (res)
  : "r" (__to), "r" (__from), "r" (__len)
  : "$2", "$3", "$4", "$5", "$6", "$8", "$31", "memory");

 return res;
}
# 965 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/uaccess.h"
static inline __attribute__((always_inline)) long
strncpy_from_user(char *__to, const char *__from, long __len)
{
 long res;

 might_fault();
 __asm__ __volatile__(
  "move\t$4, %1\n\t"
  "move\t$5, %2\n\t"
  "move\t$6, %3\n\t"
  "jal\t" "__strncpy_from_user_asm" "\n\t"
  "move\t%0, $2"
  : "=r" (res)
  : "r" (__to), "r" (__from), "r" (__len)
  : "$2", "$3", "$4", "$5", "$6", "$8", "$31", "memory");

 return res;
}


static inline __attribute__((always_inline)) long __strlen_user(const char *s)
{
 long res;

 might_fault();
 __asm__ __volatile__(
  "move\t$4, %1\n\t"
  "jal\t" "__strlen_user_nocheck_asm" "\n\t"
  "move\t%0, $2"
  : "=r" (res)
  : "r" (s)
  : "$2", "$4", "$8", "$31");

 return res;
}
# 1015 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/uaccess.h"
static inline __attribute__((always_inline)) long strlen_user(const char *s)
{
 long res;

 might_fault();
 __asm__ __volatile__(
  "move\t$4, %1\n\t"
  "jal\t" "__strlen_user_asm" "\n\t"
  "move\t%0, $2"
  : "=r" (res)
  : "r" (s)
  : "$2", "$4", "$8", "$31");

 return res;
}


static inline __attribute__((always_inline)) long __strnlen_user(const char *s, long n)
{
 long res;

 might_fault();
 __asm__ __volatile__(
  "move\t$4, %1\n\t"
  "move\t$5, %2\n\t"
  "jal\t" "__strnlen_user_nocheck_asm" "\n\t"
  "move\t%0, $2"
  : "=r" (res)
  : "r" (s), "r" (n)
  : "$2", "$4", "$5", "$8", "$31");

 return res;
}
# 1063 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/uaccess.h"
static inline __attribute__((always_inline)) long strnlen_user(const char *s, long n)
{
 long res;

 might_fault();
 __asm__ __volatile__(
  "move\t$4, %1\n\t"
  "move\t$5, %2\n\t"
  "jal\t" "__strnlen_user_asm" "\n\t"
  "move\t%0, $2"
  : "=r" (res)
  : "r" (s), "r" (n)
  : "$2", "$4", "$5", "$8", "$31");

 return res;
}

struct exception_table_entry
{
 unsigned long insn;
 unsigned long nextinsn;
};

extern int fixup_exception(struct pt_regs *regs);
# 6 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/module.h" 2

struct mod_arch_specific {

 struct list_head dbe_list;
 const struct exception_table_entry *dbe_start;
 const struct exception_table_entry *dbe_end;
};

typedef uint8_t Elf64_Byte;

typedef struct {
 Elf64_Addr r_offset;
 Elf64_Word r_sym;
 Elf64_Byte r_ssym;
 Elf64_Byte r_type3;
 Elf64_Byte r_type2;
 Elf64_Byte r_type;
} Elf64_Mips_Rel;

typedef struct {
 Elf64_Addr r_offset;
 Elf64_Word r_sym;
 Elf64_Byte r_ssym;
 Elf64_Byte r_type3;
 Elf64_Byte r_type2;
 Elf64_Byte r_type;
 Elf64_Sxword r_addend;
} Elf64_Mips_Rela;
# 52 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/module.h"
static inline __attribute__((always_inline)) const struct exception_table_entry *
search_module_dbetables(unsigned long addr)
{
 return ((void *)0);
}
# 23 "include/linux/module.h" 2
# 34 "include/linux/module.h"
struct kernel_symbol
{
 unsigned long value;
 const char *name;
};

struct modversion_info
{
 unsigned long crc;
 char name[(64 - sizeof(unsigned long))];
};

struct module;

struct module_attribute {
        struct attribute attr;
        ssize_t (*show)(struct module_attribute *, struct module *, char *);
        ssize_t (*store)(struct module_attribute *, struct module *,
    const char *, size_t count);
 void (*setup)(struct module *, const char *);
 int (*test)(struct module *);
 void (*free)(struct module *);
};

struct module_kobject
{
 struct kobject kobj;
 struct module *mod;
 struct kobject *drivers_dir;
 struct module_param_attrs *mp;
};


extern int init_module(void);
extern void cleanup_module(void);


struct exception_table_entry;

const struct exception_table_entry *
search_extable(const struct exception_table_entry *first,
        const struct exception_table_entry *last,
        unsigned long value);
void sort_extable(struct exception_table_entry *start,
    struct exception_table_entry *finish);
void sort_main_extable(void);
# 165 "include/linux/module.h"
const struct exception_table_entry *search_exception_tables(unsigned long add);

struct notifier_block;
# 528 "include/linux/module.h"
static inline __attribute__((always_inline)) const struct exception_table_entry *
search_module_extables(unsigned long addr)
{
 return ((void *)0);
}

static inline __attribute__((always_inline)) struct module *__module_address(unsigned long addr)
{
 return ((void *)0);
}

static inline __attribute__((always_inline)) struct module *__module_text_address(unsigned long addr)
{
 return ((void *)0);
}

static inline __attribute__((always_inline)) bool is_module_address(unsigned long addr)
{
 return false;
}

static inline __attribute__((always_inline)) bool is_module_text_address(unsigned long addr)
{
 return false;
}






static inline __attribute__((always_inline)) void __module_get(struct module *module)
{
}

static inline __attribute__((always_inline)) int try_module_get(struct module *module)
{
 return 1;
}

static inline __attribute__((always_inline)) void module_put(struct module *module)
{
}




static inline __attribute__((always_inline)) const char *module_address_lookup(unsigned long addr,
       unsigned long *symbolsize,
       unsigned long *offset,
       char **modname,
       char *namebuf)
{
 return ((void *)0);
}

static inline __attribute__((always_inline)) int lookup_module_symbol_name(unsigned long addr, char *symname)
{
 return -34;
}

static inline __attribute__((always_inline)) int lookup_module_symbol_attrs(unsigned long addr, unsigned long *size, unsigned long *offset, char *modname, char *name)
{
 return -34;
}

static inline __attribute__((always_inline)) int module_get_kallsym(unsigned int symnum, unsigned long *value,
     char *type, char *name,
     char *module_name, int *exported)
{
 return -34;
}

static inline __attribute__((always_inline)) unsigned long module_kallsyms_lookup_name(const char *name)
{
 return 0;
}

static inline __attribute__((always_inline)) int module_kallsyms_on_each_symbol(int (*fn)(void *, const char *,
          struct module *,
          unsigned long),
       void *data)
{
 return 0;
}

static inline __attribute__((always_inline)) int register_module_notifier(struct notifier_block * nb)
{

 return 0;
}

static inline __attribute__((always_inline)) int unregister_module_notifier(struct notifier_block * nb)
{
 return 0;
}



static inline __attribute__((always_inline)) void print_modules(void)
{
}

static inline __attribute__((always_inline)) void module_update_markers(void)
{
}

static inline __attribute__((always_inline)) void module_update_tracepoints(void)
{
}

static inline __attribute__((always_inline)) int module_get_iter_tracepoints(struct tracepoint_iter *iter)
{
 return 0;
}



struct device_driver;

struct module;

extern struct kset *module_kset;
extern struct kobj_type module_ktype;
extern int module_sysfs_initialized;

int mod_sysfs_init(struct module *mod);
int mod_sysfs_setup(struct module *mod,
      struct kernel_param *kparam,
      unsigned int num_params);
int module_add_modinfo_attrs(struct module *mod);
void module_remove_modinfo_attrs(struct module *mod);
# 8 "include/linux/textsearch.h" 2
# 1 "include/linux/err.h" 1
# 22 "include/linux/err.h"
static inline __attribute__((always_inline)) void *ERR_PTR(long error)
{
 return (void *) error;
}

static inline __attribute__((always_inline)) long PTR_ERR(const void *ptr)
{
 return (long) ptr;
}

static inline __attribute__((always_inline)) long IS_ERR(const void *ptr)
{
 return __builtin_expect(!!(((unsigned long)ptr) >= (unsigned long)-4095), 0);
}
# 44 "include/linux/err.h"
static inline __attribute__((always_inline)) void *ERR_CAST(const void *ptr)
{

 return (void *) ptr;
}
# 9 "include/linux/textsearch.h" 2


struct ts_config;
# 21 "include/linux/textsearch.h"
struct ts_state
{
 unsigned int offset;
 char cb[40];
};
# 37 "include/linux/textsearch.h"
struct ts_ops
{
 const char *name;
 struct ts_config * (*init)(const void *, unsigned int, gfp_t, int);
 unsigned int (*find)(struct ts_config *,
     struct ts_state *);
 void (*destroy)(struct ts_config *);
 void * (*get_pattern)(struct ts_config *);
 unsigned int (*get_pattern_len)(struct ts_config *);
 struct module *owner;
 struct list_head list;
};
# 57 "include/linux/textsearch.h"
struct ts_config
{
 struct ts_ops *ops;
 int flags;
# 74 "include/linux/textsearch.h"
 unsigned int (*get_next_block)(unsigned int consumed,
        const u8 **dst,
        struct ts_config *conf,
        struct ts_state *state);
# 87 "include/linux/textsearch.h"
 void (*finish)(struct ts_config *conf,
       struct ts_state *state);
};
# 103 "include/linux/textsearch.h"
static inline __attribute__((always_inline)) unsigned int textsearch_next(struct ts_config *conf,
        struct ts_state *state)
{
 unsigned int ret = conf->ops->find(conf, state);

 if (conf->finish)
  conf->finish(conf, state);

 return ret;
}
# 122 "include/linux/textsearch.h"
static inline __attribute__((always_inline)) unsigned int textsearch_find(struct ts_config *conf,
        struct ts_state *state)
{
 state->offset = 0;
 return textsearch_next(conf, state);
}





static inline __attribute__((always_inline)) void *textsearch_get_pattern(struct ts_config *conf)
{
 return conf->ops->get_pattern(conf);
}





static inline __attribute__((always_inline)) unsigned int textsearch_get_pattern_len(struct ts_config *conf)
{
 return conf->ops->get_pattern_len(conf);
}

extern int textsearch_register(struct ts_ops *);
extern int textsearch_unregister(struct ts_ops *);
extern struct ts_config *textsearch_prepare(const char *, const void *,
         unsigned int, gfp_t, int);
extern void textsearch_destroy(struct ts_config *conf);
extern unsigned int textsearch_find_continuous(struct ts_config *,
            struct ts_state *,
            const void *, unsigned int);





static inline __attribute__((always_inline)) struct ts_config *alloc_ts_config(size_t payload,
      gfp_t gfp_mask)
{
 struct ts_config *conf;

 conf = kzalloc((((sizeof(*conf)) + 8 -1) & ~(8 -1)) + payload, gfp_mask);
 if (conf == ((void *)0))
  return ERR_PTR(-12);

 return conf;
}

static inline __attribute__((always_inline)) void *ts_config_priv(struct ts_config *conf)
{
 return ((u8 *) conf + (((sizeof(struct ts_config)) + 8 -1) & ~(8 -1)));
}
# 27 "include/linux/skbuff.h" 2
# 1 "include/net/checksum.h" 1
# 26 "include/net/checksum.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/checksum.h" 1
# 14 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/checksum.h"
# 1 "include/linux/in6.h" 1
# 30 "include/linux/in6.h"
struct in6_addr
{
 union
 {
  __u8 u6_addr8[16];
  __be16 u6_addr16[8];
  __be32 u6_addr32[4];
 } in6_u;



};






extern const struct in6_addr in6addr_any;

extern const struct in6_addr in6addr_loopback;

extern const struct in6_addr in6addr_linklocal_allnodes;


extern const struct in6_addr in6addr_linklocal_allrouters;




struct sockaddr_in6 {
 unsigned short int sin6_family;
 __be16 sin6_port;
 __be32 sin6_flowinfo;
 struct in6_addr sin6_addr;
 __u32 sin6_scope_id;
};

struct ipv6_mreq {

 struct in6_addr ipv6mr_multiaddr;


 int ipv6mr_ifindex;
};



struct in6_flowlabel_req
{
 struct in6_addr flr_dst;
 __be32 flr_label;
 __u8 flr_action;
 __u8 flr_share;
 __u16 flr_flags;
 __u16 flr_expires;
 __u16 flr_linger;
 __u32 __flr_pad;

};
# 15 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/checksum.h" 2
# 30 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/checksum.h"
__wsum csum_partial(const void *buff, int len, __wsum sum);

__wsum __csum_partial_copy_user(const void *src, void *dst,
    int len, __wsum sum, int *err_ptr);






static inline __attribute__((always_inline))
__wsum csum_partial_copy_from_user(const void *src, void *dst, int len,
       __wsum sum, int *err_ptr)
{
 might_fault();
 return __csum_partial_copy_user(( void *)src, dst,
     len, sum, err_ptr);
}
# 57 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/checksum.h"
static inline __attribute__((always_inline))
__wsum csum_and_copy_to_user(const void *src, void *dst, int len,
        __wsum sum, int *err_ptr)
{
 might_fault();
 if (__builtin_expect(!!(({ unsigned long __addr = (unsigned long) ((dst)); unsigned long __size = (len); unsigned long __mask = (__current_thread_info->addr_limit).seg; unsigned long __ok; (void)0; __ok = (signed long)(__mask & (__addr | (__addr + __size) | ((__builtin_constant_p(__size) && (signed long) (__size) > 0) ? 0 : (__size)))); __ok == 0; })), 1))
  return __csum_partial_copy_user(src, ( void *)dst,
      len, sum, err_ptr);
 if (len)
  *err_ptr = -14;

 return ( __wsum)-1;
}





__wsum csum_partial_copy_nocheck(const void *src, void *dst,
           int len, __wsum sum);




static inline __attribute__((always_inline)) __sum16 csum_fold(__wsum sum)
{
 __asm__(
 "	.set	push		# csum_fold\n"
 "	.set	noat		\n"
 "	sll	$1, %0, 16	\n"
 "	addu	%0, $1		\n"
 "	sltu	$1, %0, $1	\n"
 "	srl	%0, %0, 16	\n"
 "	addu	%0, $1		\n"
 "	xori	%0, 0xffff	\n"
 "	.set	pop"
 : "=r" (sum)
 : "0" (sum));

 return ( __sum16)sum;
}
# 106 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/checksum.h"
static inline __attribute__((always_inline)) __sum16 ip_fast_csum(const void *iph, unsigned int ihl)
{
 const unsigned int *word = iph;
 const unsigned int *stop = word + ihl;
 unsigned int csum;
 int carry;

 csum = word[0];
 csum += word[1];
 carry = (csum < word[1]);
 csum += carry;

 csum += word[2];
 carry = (csum < word[2]);
 csum += carry;

 csum += word[3];
 carry = (csum < word[3]);
 csum += carry;

 word += 4;
 do {
  csum += *word;
  carry = (csum < *word);
  csum += carry;
  word++;
 } while (word != stop);

 return csum_fold(csum);
}

static inline __attribute__((always_inline)) __wsum csum_tcpudp_nofold(__be32 saddr,
 __be32 daddr, unsigned short len, unsigned short proto,
 __wsum sum)
{
 __asm__(
 "	.set	push		# csum_tcpudp_nofold\n"
 "	.set	noat		\n"
 "	addu	%0, %2		\n"
 "	sltu	$1, %0, %2	\n"
 "	addu	%0, $1		\n"

 "	addu	%0, %3		\n"
 "	sltu	$1, %0, %3	\n"
 "	addu	%0, $1		\n"

 "	addu	%0, %4		\n"
 "	sltu	$1, %0, %4	\n"
 "	addu	%0, $1		\n"
 "	.set	pop"
 : "=r" (sum)
 : "0" (( unsigned long)daddr),
   "r" (( unsigned long)saddr),



   "r" (proto + len),

   "r" (( unsigned long)sum));

 return sum;
}





static inline __attribute__((always_inline)) __sum16 csum_tcpudp_magic(__be32 saddr, __be32 daddr,
         unsigned short len,
         unsigned short proto,
         __wsum sum)
{
 return csum_fold(csum_tcpudp_nofold(saddr, daddr, len, proto, sum));
}





static inline __attribute__((always_inline)) __sum16 ip_compute_csum(const void *buff, int len)
{
 return csum_fold(csum_partial(buff, len, 0));
}


static __inline__ __attribute__((always_inline)) __sum16 csum_ipv6_magic(const struct in6_addr *saddr,
              const struct in6_addr *daddr,
       __u32 len, unsigned short proto,
       __wsum sum)
{
 __asm__(
 "	.set	push		# csum_ipv6_magic\n"
 "	.set	noreorder	\n"
 "	.set	noat		\n"
 "	addu	%0, %5		# proto (long in network byte order)\n"
 "	sltu	$1, %0, %5	\n"
 "	addu	%0, $1		\n"

 "	addu	%0, %6		# csum\n"
 "	sltu	$1, %0, %6	\n"
 "	lw	%1, 0(%2)	# four words source address\n"
 "	addu	%0, $1		\n"
 "	addu	%0, %1		\n"
 "	sltu	$1, %0, %1	\n"

 "	lw	%1, 4(%2)	\n"
 "	addu	%0, $1		\n"
 "	addu	%0, %1		\n"
 "	sltu	$1, %0, %1	\n"

 "	lw	%1, 8(%2)	\n"
 "	addu	%0, $1		\n"
 "	addu	%0, %1		\n"
 "	sltu	$1, %0, %1	\n"

 "	lw	%1, 12(%2)	\n"
 "	addu	%0, $1		\n"
 "	addu	%0, %1		\n"
 "	sltu	$1, %0, %1	\n"

 "	lw	%1, 0(%3)	\n"
 "	addu	%0, $1		\n"
 "	addu	%0, %1		\n"
 "	sltu	$1, %0, %1	\n"

 "	lw	%1, 4(%3)	\n"
 "	addu	%0, $1		\n"
 "	addu	%0, %1		\n"
 "	sltu	$1, %0, %1	\n"

 "	lw	%1, 8(%3)	\n"
 "	addu	%0, $1		\n"
 "	addu	%0, %1		\n"
 "	sltu	$1, %0, %1	\n"

 "	lw	%1, 12(%3)	\n"
 "	addu	%0, $1		\n"
 "	addu	%0, %1		\n"
 "	sltu	$1, %0, %1	\n"

 "	addu	%0, $1		# Add final carry\n"
 "	.set	pop"
 : "=r" (sum), "=r" (proto)
 : "r" (saddr), "r" (daddr),
   "0" ((( __be32)(__u32)(len))), "1" ((( __be32)(__u32)(proto))), "r" (sum));

 return csum_fold(sum);
}
# 27 "include/net/checksum.h" 2


static inline __attribute__((always_inline))
__wsum csum_and_copy_from_user (const void *src, void *dst,
          int len, __wsum sum, int *err_ptr)
{
 if (__builtin_expect(!!(({ unsigned long __addr = (unsigned long) ((src)); unsigned long __size = (len); unsigned long __mask = (__current_thread_info->addr_limit).seg; unsigned long __ok; (void)0; __ok = (signed long)(__mask & (__addr | (__addr + __size) | ((__builtin_constant_p(__size) && (signed long) (__size) > 0) ? 0 : (__size)))); __ok == 0; })), 1))
  return csum_partial_copy_from_user(src, dst, len, sum, err_ptr);

 if (len)
  *err_ptr = -14;

 return sum;
}
# 60 "include/net/checksum.h"
static inline __attribute__((always_inline)) __wsum csum_add(__wsum csum, __wsum addend)
{
 u32 res = ( u32)csum;
 res += ( u32)addend;
 return ( __wsum)(res + (res < ( u32)addend));
}

static inline __attribute__((always_inline)) __wsum csum_sub(__wsum csum, __wsum addend)
{
 return csum_add(csum, ~addend);
}

static inline __attribute__((always_inline)) __wsum
csum_block_add(__wsum csum, __wsum csum2, int offset)
{
 u32 sum = ( u32)csum2;
 if (offset&1)
  sum = ((sum&0xFF00FF)<<8)+((sum>>8)&0xFF00FF);
 return csum_add(csum, ( __wsum)sum);
}

static inline __attribute__((always_inline)) __wsum
csum_block_sub(__wsum csum, __wsum csum2, int offset)
{
 u32 sum = ( u32)csum2;
 if (offset&1)
  sum = ((sum&0xFF00FF)<<8)+((sum>>8)&0xFF00FF);
 return csum_sub(csum, ( __wsum)sum);
}

static inline __attribute__((always_inline)) __wsum csum_unfold(__sum16 n)
{
 return ( __wsum)n;
}



static inline __attribute__((always_inline)) void csum_replace4(__sum16 *sum, __be32 from, __be32 to)
{
 __be32 diff[] = { ~from, to };

 *sum = csum_fold(csum_partial(diff, sizeof(diff), ~csum_unfold(*sum)));
}

static inline __attribute__((always_inline)) void csum_replace2(__sum16 *sum, __be16 from, __be16 to)
{
 csum_replace4(sum, ( __be32)from, ( __be32)to);
}

struct sk_buff;
extern void inet_proto_csum_replace4(__sum16 *sum, struct sk_buff *skb,
         __be32 from, __be32 to, int pseudohdr);

static inline __attribute__((always_inline)) void inet_proto_csum_replace2(__sum16 *sum, struct sk_buff *skb,
         __be16 from, __be16 to,
         int pseudohdr)
{
 inet_proto_csum_replace4(sum, skb, ( __be32)from,
     ( __be32)to, pseudohdr);
}
# 28 "include/linux/skbuff.h" 2

# 1 "include/linux/dmaengine.h" 1
# 24 "include/linux/dmaengine.h"
# 1 "include/linux/device.h" 1
# 15 "include/linux/device.h"
# 1 "include/linux/ioport.h" 1
# 18 "include/linux/ioport.h"
struct resource {
 resource_size_t start;
 resource_size_t end;
 const char *name;
 unsigned long flags;
 struct resource *parent, *sibling, *child;
};

struct resource_list {
 struct resource_list *next;
 struct resource *res;
 struct pci_dev *dev;
};
# 108 "include/linux/ioport.h"
extern struct resource ioport_resource;
extern struct resource iomem_resource;

extern int request_resource(struct resource *root, struct resource *new);
extern int release_resource(struct resource *new);
extern void reserve_region_with_split(struct resource *root,
        resource_size_t start, resource_size_t end,
        const char *name);
extern int insert_resource(struct resource *parent, struct resource *new);
extern void insert_resource_expand_to_fit(struct resource *root, struct resource *new);
extern int allocate_resource(struct resource *root, struct resource *new,
        resource_size_t size, resource_size_t min,
        resource_size_t max, resource_size_t align,
        void (*alignf)(void *, struct resource *,
         resource_size_t, resource_size_t),
        void *alignf_data);
int adjust_resource(struct resource *res, resource_size_t start,
      resource_size_t size);
resource_size_t resource_alignment(struct resource *res);
static inline __attribute__((always_inline)) resource_size_t resource_size(struct resource *res)
{
 return res->end - res->start + 1;
}
static inline __attribute__((always_inline)) unsigned long resource_type(struct resource *res)
{
 return res->flags & 0x00000f00;
}
# 144 "include/linux/ioport.h"
extern struct resource * __request_region(struct resource *,
     resource_size_t start,
     resource_size_t n,
     const char *name, int flags);






extern int __check_region(struct resource *, resource_size_t, resource_size_t);
extern void __release_region(struct resource *, resource_size_t,
    resource_size_t);

static inline __attribute__((always_inline)) int check_region(resource_size_t s,
      resource_size_t n)
{
 return __check_region(&ioport_resource, s, n);
}


struct device;





extern struct resource * __devm_request_region(struct device *dev,
    struct resource *parent, resource_size_t start,
    resource_size_t n, const char *name);






extern void __devm_release_region(struct device *dev, struct resource *parent,
      resource_size_t start, resource_size_t n);
extern int iomem_map_sanity_check(resource_size_t addr, unsigned long size);
extern int iomem_is_exclusive(u64 addr);
# 16 "include/linux/device.h" 2

# 1 "include/linux/klist.h" 1
# 19 "include/linux/klist.h"
struct klist_node;
struct klist {
 spinlock_t k_lock;
 struct list_head k_list;
 void (*get)(struct klist_node *);
 void (*put)(struct klist_node *);
} __attribute__ ((aligned (4)));
# 36 "include/linux/klist.h"
extern void klist_init(struct klist *k, void (*get)(struct klist_node *),
         void (*put)(struct klist_node *));

struct klist_node {
 void *n_klist;
 struct list_head n_node;
 struct kref n_ref;
};

extern void klist_add_tail(struct klist_node *n, struct klist *k);
extern void klist_add_head(struct klist_node *n, struct klist *k);
extern void klist_add_after(struct klist_node *n, struct klist_node *pos);
extern void klist_add_before(struct klist_node *n, struct klist_node *pos);

extern void klist_del(struct klist_node *n);
extern void klist_remove(struct klist_node *n);

extern int klist_node_attached(struct klist_node *n);


struct klist_iter {
 struct klist *i_klist;
 struct klist_node *i_cur;
};


extern void klist_iter_init(struct klist *k, struct klist_iter *i);
extern void klist_iter_init_node(struct klist *k, struct klist_iter *i,
     struct klist_node *n);
extern void klist_iter_exit(struct klist_iter *i);
extern struct klist_node *klist_next(struct klist_iter *i);
# 18 "include/linux/device.h" 2





# 1 "include/linux/pm.h" 1
# 29 "include/linux/pm.h"
extern void (*pm_idle)(void);
extern void (*pm_power_off)(void);
extern void (*pm_power_off_prepare)(void);





struct device;

typedef struct pm_message {
 int event;
} pm_message_t;
# 170 "include/linux/pm.h"
struct dev_pm_ops {
 int (*prepare)(struct device *dev);
 void (*complete)(struct device *dev);
 int (*suspend)(struct device *dev);
 int (*resume)(struct device *dev);
 int (*freeze)(struct device *dev);
 int (*thaw)(struct device *dev);
 int (*poweroff)(struct device *dev);
 int (*restore)(struct device *dev);
 int (*suspend_noirq)(struct device *dev);
 int (*resume_noirq)(struct device *dev);
 int (*freeze_noirq)(struct device *dev);
 int (*thaw_noirq)(struct device *dev);
 int (*poweroff_noirq)(struct device *dev);
 int (*restore_noirq)(struct device *dev);
};
# 308 "include/linux/pm.h"
enum dpm_state {
 DPM_INVALID,
 DPM_ON,
 DPM_PREPARING,
 DPM_RESUMING,
 DPM_SUSPENDING,
 DPM_OFF,
 DPM_OFF_IRQ,
};

struct dev_pm_info {
 pm_message_t power_state;
 unsigned can_wakeup:1;
 unsigned should_wakeup:1;
 enum dpm_state status;



};
# 406 "include/linux/pm.h"
static inline __attribute__((always_inline)) int device_suspend(pm_message_t state)
{
 return 0;
}






enum dpm_order {
 DPM_ORDER_NONE,
 DPM_ORDER_DEV_AFTER_PARENT,
 DPM_ORDER_PARENT_BEFORE_DEV,
 DPM_ORDER_DEV_LAST,
};





extern unsigned int pm_flags;
# 24 "include/linux/device.h" 2
# 1 "include/linux/semaphore.h" 1
# 16 "include/linux/semaphore.h"
struct semaphore {
 spinlock_t lock;
 unsigned int count;
 struct list_head wait_list;
};
# 32 "include/linux/semaphore.h"
static inline __attribute__((always_inline)) void sema_init(struct semaphore *sem, int val)
{
 static struct lock_class_key __key;
 *sem = (struct semaphore) { .lock = (spinlock_t) { .raw_lock = { }, }, .count = val, .wait_list = { &((*sem).wait_list), &((*sem).wait_list) }, };
 do { (void)("semaphore->lock"); (void)(&__key); } while (0);
}




extern void down(struct semaphore *sem);
extern int down_interruptible(struct semaphore *sem);
extern int down_killable(struct semaphore *sem);
extern int down_trylock(struct semaphore *sem);
extern int down_timeout(struct semaphore *sem, long jiffies);
extern void up(struct semaphore *sem);
# 25 "include/linux/device.h" 2

# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/device.h" 1





# 1 "include/asm-generic/device.h" 1
# 9 "include/asm-generic/device.h"
struct dev_archdata {
};
# 7 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/device.h" 2
# 27 "include/linux/device.h" 2



struct device;
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct class_private;
struct bus_type;
struct bus_type_private;

struct bus_attribute {
 struct attribute attr;
 ssize_t (*show)(struct bus_type *bus, char *buf);
 ssize_t (*store)(struct bus_type *bus, const char *buf, size_t count);
};




extern int bus_create_file(struct bus_type *,
     struct bus_attribute *);
extern void bus_remove_file(struct bus_type *, struct bus_attribute *);

struct bus_type {
 const char *name;
 struct bus_attribute *bus_attrs;
 struct device_attribute *dev_attrs;
 struct driver_attribute *drv_attrs;

 int (*match)(struct device *dev, struct device_driver *drv);
 int (*uevent)(struct device *dev, struct kobj_uevent_env *env);
 int (*probe)(struct device *dev);
 int (*remove)(struct device *dev);
 void (*shutdown)(struct device *dev);

 int (*suspend)(struct device *dev, pm_message_t state);
 int (*suspend_late)(struct device *dev, pm_message_t state);
 int (*resume_early)(struct device *dev);
 int (*resume)(struct device *dev);

 struct dev_pm_ops *pm;

 struct bus_type_private *p;
};

extern int bus_register(struct bus_type *bus);
extern void bus_unregister(struct bus_type *bus);

extern int bus_rescan_devices(struct bus_type *bus);



int bus_for_each_dev(struct bus_type *bus, struct device *start, void *data,
       int (*fn)(struct device *dev, void *data));
struct device *bus_find_device(struct bus_type *bus, struct device *start,
          void *data,
          int (*match)(struct device *dev, void *data));
struct device *bus_find_device_by_name(struct bus_type *bus,
           struct device *start,
           const char *name);

int bus_for_each_drv(struct bus_type *bus,
      struct device_driver *start, void *data,
      int (*fn)(struct device_driver *, void *));

void bus_sort_breadthfirst(struct bus_type *bus,
      int (*compare)(const struct device *a,
       const struct device *b));






struct notifier_block;

extern int bus_register_notifier(struct bus_type *bus,
     struct notifier_block *nb);
extern int bus_unregister_notifier(struct bus_type *bus,
       struct notifier_block *nb);
# 120 "include/linux/device.h"
extern struct kset *bus_get_kset(struct bus_type *bus);
extern struct klist *bus_get_device_klist(struct bus_type *bus);

struct device_driver {
 const char *name;
 struct bus_type *bus;

 struct module *owner;
 const char *mod_name;

 int (*probe) (struct device *dev);
 int (*remove) (struct device *dev);
 void (*shutdown) (struct device *dev);
 int (*suspend) (struct device *dev, pm_message_t state);
 int (*resume) (struct device *dev);
 struct attribute_group **groups;

 struct dev_pm_ops *pm;

 struct driver_private *p;
};


extern int driver_register(struct device_driver *drv);
extern void driver_unregister(struct device_driver *drv);

extern struct device_driver *get_driver(struct device_driver *drv);
extern void put_driver(struct device_driver *drv);
extern struct device_driver *driver_find(const char *name,
      struct bus_type *bus);
extern int driver_probe_done(void);
extern void wait_for_device_probe(void);




struct driver_attribute {
 struct attribute attr;
 ssize_t (*show)(struct device_driver *driver, char *buf);
 ssize_t (*store)(struct device_driver *driver, const char *buf,
    size_t count);
};





extern int driver_create_file(struct device_driver *driver,
        struct driver_attribute *attr);
extern void driver_remove_file(struct device_driver *driver,
          struct driver_attribute *attr);

extern int driver_add_kobj(struct device_driver *drv,
     struct kobject *kobj,
     const char *fmt, ...);

extern int driver_for_each_device(struct device_driver *drv,
            struct device *start,
            void *data,
            int (*fn)(struct device *dev,
        void *));
struct device *driver_find_device(struct device_driver *drv,
      struct device *start, void *data,
      int (*match)(struct device *dev, void *data));




struct class {
 const char *name;
 struct module *owner;

 struct class_attribute *class_attrs;
 struct device_attribute *dev_attrs;
 struct kobject *dev_kobj;

 int (*dev_uevent)(struct device *dev, struct kobj_uevent_env *env);

 void (*class_release)(struct class *class);
 void (*dev_release)(struct device *dev);

 int (*suspend)(struct device *dev, pm_message_t state);
 int (*resume)(struct device *dev);

 struct dev_pm_ops *pm;
 struct class_private *p;
};

struct class_dev_iter {
 struct klist_iter ki;
 const struct device_type *type;
};

extern struct kobject *sysfs_dev_block_kobj;
extern struct kobject *sysfs_dev_char_kobj;
extern int __class_register(struct class *class,
      struct lock_class_key *key);
extern void class_unregister(struct class *class);
# 227 "include/linux/device.h"
extern void class_dev_iter_init(struct class_dev_iter *iter,
    struct class *class,
    struct device *start,
    const struct device_type *type);
extern struct device *class_dev_iter_next(struct class_dev_iter *iter);
extern void class_dev_iter_exit(struct class_dev_iter *iter);

extern int class_for_each_device(struct class *class, struct device *start,
     void *data,
     int (*fn)(struct device *dev, void *data));
extern struct device *class_find_device(struct class *class,
     struct device *start, void *data,
     int (*match)(struct device *, void *));

struct class_attribute {
 struct attribute attr;
 ssize_t (*show)(struct class *class, char *buf);
 ssize_t (*store)(struct class *class, const char *buf, size_t count);
};




extern int class_create_file(struct class *class,
       const struct class_attribute *attr);
extern void class_remove_file(struct class *class,
         const struct class_attribute *attr);

struct class_interface {
 struct list_head node;
 struct class *class;

 int (*add_dev) (struct device *, struct class_interface *);
 void (*remove_dev) (struct device *, struct class_interface *);
};

extern int class_interface_register(struct class_interface *);
extern void class_interface_unregister(struct class_interface *);

extern struct class * __class_create(struct module *owner,
        const char *name,
        struct lock_class_key *key);
extern void class_destroy(struct class *cls);
# 288 "include/linux/device.h"
struct device_type {
 const char *name;
 struct attribute_group **groups;
 int (*uevent)(struct device *dev, struct kobj_uevent_env *env);
 void (*release)(struct device *dev);

 int (*suspend)(struct device *dev, pm_message_t state);
 int (*resume)(struct device *dev);

 struct dev_pm_ops *pm;
};


struct device_attribute {
 struct attribute attr;
 ssize_t (*show)(struct device *dev, struct device_attribute *attr,
   char *buf);
 ssize_t (*store)(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count);
};




extern int device_create_file(struct device *device,
        struct device_attribute *entry);
extern void device_remove_file(struct device *dev,
          struct device_attribute *attr);
extern int device_create_bin_file(struct device *dev,
            struct bin_attribute *attr);
extern void device_remove_bin_file(struct device *dev,
       struct bin_attribute *attr);
extern int device_schedule_callback_owner(struct device *dev,
  void (*func)(struct device *dev), struct module *owner);






typedef void (*dr_release_t)(struct device *dev, void *res);
typedef int (*dr_match_t)(struct device *dev, void *res, void *match_data);







extern void *devres_alloc(dr_release_t release, size_t size, gfp_t gfp);

extern void devres_free(void *res);
extern void devres_add(struct device *dev, void *res);
extern void *devres_find(struct device *dev, dr_release_t release,
    dr_match_t match, void *match_data);
extern void *devres_get(struct device *dev, void *new_res,
   dr_match_t match, void *match_data);
extern void *devres_remove(struct device *dev, dr_release_t release,
      dr_match_t match, void *match_data);
extern int devres_destroy(struct device *dev, dr_release_t release,
     dr_match_t match, void *match_data);


extern void * devres_open_group(struct device *dev, void *id,
          gfp_t gfp);
extern void devres_close_group(struct device *dev, void *id);
extern void devres_remove_group(struct device *dev, void *id);
extern int devres_release_group(struct device *dev, void *id);


extern void *devm_kzalloc(struct device *dev, size_t size, gfp_t gfp);
extern void devm_kfree(struct device *dev, void *p);

struct device_dma_parameters {




 unsigned int max_segment_size;
 unsigned long segment_boundary_mask;
};

struct device {
 struct device *parent;

 struct device_private *p;

 struct kobject kobj;
 const char *init_name;
 struct device_type *type;

 struct semaphore sem;



 struct bus_type *bus;
 struct device_driver *driver;

 void *driver_data;
 void *platform_data;

 struct dev_pm_info power;




 u64 *dma_mask;
 u64 coherent_dma_mask;





 struct device_dma_parameters *dma_parms;

 struct list_head dma_pools;

 struct dma_coherent_mem *dma_mem;


 struct dev_archdata archdata;

 dev_t devt;

 spinlock_t devres_lock;
 struct list_head devres_head;

 struct klist_node knode_class;
 struct class *class;
 struct attribute_group **groups;

 void (*release)(struct device *dev);
};


# 1 "include/linux/pm_wakeup.h" 1
# 61 "include/linux/pm_wakeup.h"
static inline __attribute__((always_inline)) void device_init_wakeup(struct device *dev, int val)
{
 dev->power.can_wakeup = !!val;
}

static inline __attribute__((always_inline)) void device_set_wakeup_capable(struct device *dev, int val) { }

static inline __attribute__((always_inline)) int device_can_wakeup(struct device *dev)
{
 return dev->power.can_wakeup;
}
# 424 "include/linux/device.h" 2

static inline __attribute__((always_inline)) const char *dev_name(const struct device *dev)
{
 return kobject_name(&dev->kobj);
}

extern int dev_set_name(struct device *dev, const char *name, ...)
   __attribute__((format(printf, 2, 3)));
# 443 "include/linux/device.h"
static inline __attribute__((always_inline)) int dev_to_node(struct device *dev)
{
 return -1;
}
static inline __attribute__((always_inline)) void set_dev_node(struct device *dev, int node)
{
}


static inline __attribute__((always_inline)) void *dev_get_drvdata(const struct device *dev)
{
 return dev->driver_data;
}

static inline __attribute__((always_inline)) void dev_set_drvdata(struct device *dev, void *data)
{
 dev->driver_data = data;
}

static inline __attribute__((always_inline)) unsigned int dev_get_uevent_suppress(const struct device *dev)
{
 return dev->kobj.uevent_suppress;
}

static inline __attribute__((always_inline)) void dev_set_uevent_suppress(struct device *dev, int val)
{
 dev->kobj.uevent_suppress = val;
}

static inline __attribute__((always_inline)) int device_is_registered(struct device *dev)
{
 return dev->kobj.state_in_sysfs;
}

void driver_init(void);




extern int device_register(struct device *dev);
extern void device_unregister(struct device *dev);
extern void device_initialize(struct device *dev);
extern int device_add(struct device *dev);
extern void device_del(struct device *dev);
extern int device_for_each_child(struct device *dev, void *data,
       int (*fn)(struct device *dev, void *data));
extern struct device *device_find_child(struct device *dev, void *data,
    int (*match)(struct device *dev, void *data));
extern int device_rename(struct device *dev, char *new_name);
extern int device_move(struct device *dev, struct device *new_parent,
         enum dpm_order dpm_order);




extern struct device *__root_device_register(const char *name,
          struct module *owner);
static inline __attribute__((always_inline)) struct device *root_device_register(const char *name)
{
 return __root_device_register(name, ((struct module *)0));
}
extern void root_device_unregister(struct device *root);





extern int device_bind_driver(struct device *dev);
extern void device_release_driver(struct device *dev);
extern int device_attach(struct device *dev);
extern int driver_attach(struct device_driver *drv);
extern int device_reprobe(struct device *dev);




extern struct device *device_create_vargs(struct class *cls,
       struct device *parent,
       dev_t devt,
       void *drvdata,
       const char *fmt,
       va_list vargs);
extern struct device *device_create(struct class *cls, struct device *parent,
        dev_t devt, void *drvdata,
        const char *fmt, ...)
        __attribute__((format(printf, 5, 6)));
extern void device_destroy(struct class *cls, dev_t devt);







extern int (*platform_notify)(struct device *dev);

extern int (*platform_notify_remove)(struct device *dev);






extern struct device *get_device(struct device *dev);
extern void put_device(struct device *dev);

extern void wait_for_device_probe(void);


extern void device_shutdown(void);


extern void sysdev_shutdown(void);


extern const char *dev_driver_string(const struct device *dev);
# 25 "include/linux/dmaengine.h" 2

# 1 "include/linux/dma-mapping.h" 1





# 1 "include/linux/dma-attrs.h" 1





# 1 "include/linux/bug.h" 1






enum bug_trap_type {
 BUG_TRAP_TYPE_NONE = 0,
 BUG_TRAP_TYPE_WARN = 1,
 BUG_TRAP_TYPE_BUG = 2,
};

struct pt_regs;
# 36 "include/linux/bug.h"
static inline __attribute__((always_inline)) enum bug_trap_type report_bug(unsigned long bug_addr,
         struct pt_regs *regs)
{
 return BUG_TRAP_TYPE_BUG;
}
static inline __attribute__((always_inline)) int module_bug_finalize(const Elf32_Ehdr *hdr,
     const Elf32_Shdr *sechdrs,
     struct module *mod)
{
 return 0;
}
static inline __attribute__((always_inline)) void module_bug_cleanup(struct module *mod) {}
# 7 "include/linux/dma-attrs.h" 2






enum dma_attr {
 DMA_ATTR_WRITE_BARRIER,
 DMA_ATTR_WEAK_ORDERING,
 DMA_ATTR_MAX,
};







struct dma_attrs {
 unsigned long flags[(((DMA_ATTR_MAX) + (8 * sizeof(long)) - 1) / (8 * sizeof(long)))];
};






static inline __attribute__((always_inline)) void init_dma_attrs(struct dma_attrs *attrs)
{
 bitmap_zero(attrs->flags, (((DMA_ATTR_MAX) + (8 * sizeof(long)) - 1) / (8 * sizeof(long))));
}
# 66 "include/linux/dma-attrs.h"
static inline __attribute__((always_inline)) void dma_set_attr(enum dma_attr attr, struct dma_attrs *attrs)
{
}

static inline __attribute__((always_inline)) int dma_get_attr(enum dma_attr attr, struct dma_attrs *attrs)
{
 return 0;
}
# 7 "include/linux/dma-mapping.h" 2
# 1 "include/linux/scatterlist.h" 1




# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/scatterlist.h" 1





struct scatterlist {



 unsigned long page_link;
 unsigned int offset;
 dma_addr_t dma_address;
 unsigned int length;
};
# 6 "include/linux/scatterlist.h" 2
# 1 "include/linux/mm.h" 1
# 11 "include/linux/mm.h"
# 1 "include/linux/rbtree.h" 1
# 100 "include/linux/rbtree.h"
struct rb_node
{
 unsigned long rb_parent_color;


 struct rb_node *rb_right;
 struct rb_node *rb_left;
} __attribute__((aligned(sizeof(long))));


struct rb_root
{
 struct rb_node *rb_node;
};
# 123 "include/linux/rbtree.h"
static inline __attribute__((always_inline)) void rb_set_parent(struct rb_node *rb, struct rb_node *p)
{
 rb->rb_parent_color = (rb->rb_parent_color & 3) | (unsigned long)p;
}
static inline __attribute__((always_inline)) void rb_set_color(struct rb_node *rb, int color)
{
 rb->rb_parent_color = (rb->rb_parent_color & ~1) | color;
}
# 139 "include/linux/rbtree.h"
extern void rb_insert_color(struct rb_node *, struct rb_root *);
extern void rb_erase(struct rb_node *, struct rb_root *);


extern struct rb_node *rb_next(const struct rb_node *);
extern struct rb_node *rb_prev(const struct rb_node *);
extern struct rb_node *rb_first(const struct rb_root *);
extern struct rb_node *rb_last(const struct rb_root *);


extern void rb_replace_node(struct rb_node *victim, struct rb_node *new,
       struct rb_root *root);

static inline __attribute__((always_inline)) void rb_link_node(struct rb_node * node, struct rb_node * parent,
    struct rb_node ** rb_link)
{
 node->rb_parent_color = (unsigned long )parent;
 node->rb_left = node->rb_right = ((void *)0);

 *rb_link = node;
}
# 12 "include/linux/mm.h" 2
# 1 "include/linux/prio_tree.h" 1
# 14 "include/linux/prio_tree.h"
struct raw_prio_tree_node {
 struct prio_tree_node *left;
 struct prio_tree_node *right;
 struct prio_tree_node *parent;
};

struct prio_tree_node {
 struct prio_tree_node *left;
 struct prio_tree_node *right;
 struct prio_tree_node *parent;
 unsigned long start;
 unsigned long last;
};

struct prio_tree_root {
 struct prio_tree_node *prio_tree_node;
 unsigned short index_bits;
 unsigned short raw;




};

struct prio_tree_iter {
 struct prio_tree_node *cur;
 unsigned long mask;
 unsigned long value;
 int size_level;

 struct prio_tree_root *root;
 unsigned long r_index;
 unsigned long h_index;
};

static inline __attribute__((always_inline)) void prio_tree_iter_init(struct prio_tree_iter *iter,
  struct prio_tree_root *root, unsigned long r_index, unsigned long h_index)
{
 iter->root = root;
 iter->r_index = r_index;
 iter->h_index = h_index;
 iter->cur = ((void *)0);
}
# 84 "include/linux/prio_tree.h"
static inline __attribute__((always_inline)) int prio_tree_empty(const struct prio_tree_root *root)
{
 return root->prio_tree_node == ((void *)0);
}

static inline __attribute__((always_inline)) int prio_tree_root(const struct prio_tree_node *node)
{
 return node->parent == node;
}

static inline __attribute__((always_inline)) int prio_tree_left_empty(const struct prio_tree_node *node)
{
 return node->left == node;
}

static inline __attribute__((always_inline)) int prio_tree_right_empty(const struct prio_tree_node *node)
{
 return node->right == node;
}


struct prio_tree_node *prio_tree_replace(struct prio_tree_root *root,
                struct prio_tree_node *old, struct prio_tree_node *node);
struct prio_tree_node *prio_tree_insert(struct prio_tree_root *root,
                struct prio_tree_node *node);
void prio_tree_remove(struct prio_tree_root *root, struct prio_tree_node *node);
struct prio_tree_node *prio_tree_next(struct prio_tree_iter *iter);
# 13 "include/linux/mm.h" 2
# 1 "include/linux/debug_locks.h" 1







struct task_struct;

extern int debug_locks;
extern int debug_locks_silent;


static inline __attribute__((always_inline)) int __debug_locks_off(void)
{
 return ((__typeof__(*(&debug_locks)))__xchg((unsigned long)(0), (&debug_locks), sizeof(*(&debug_locks))));
}




extern int debug_locks_off(void);
# 48 "include/linux/debug_locks.h"
struct task_struct;
# 57 "include/linux/debug_locks.h"
static inline __attribute__((always_inline)) void debug_show_all_locks(void)
{
}

static inline __attribute__((always_inline)) void __debug_show_held_locks(struct task_struct *task)
{
}

static inline __attribute__((always_inline)) void debug_show_held_locks(struct task_struct *task)
{
}

static inline __attribute__((always_inline)) void
debug_check_no_locks_freed(const void *from, unsigned long len)
{
}

static inline __attribute__((always_inline)) void
debug_check_no_locks_held(struct task_struct *task)
{
}
# 14 "include/linux/mm.h" 2
# 1 "include/linux/mm_types.h" 1



# 1 "include/linux/auxvec.h" 1



# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/auxvec.h" 1
# 5 "include/linux/auxvec.h" 2
# 5 "include/linux/mm_types.h" 2
# 14 "include/linux/mm_types.h"
# 1 "include/linux/page-debug-flags.h" 1
# 14 "include/linux/page-debug-flags.h"
enum page_debug_flags {
 PAGE_DEBUG_FLAG_POISON,
};
# 15 "include/linux/mm_types.h" 2

# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mmu.h" 1



typedef unsigned long mm_context_t[1];
# 17 "include/linux/mm_types.h" 2






struct address_space;






typedef unsigned long mm_counter_t;
# 40 "include/linux/mm_types.h"
struct page {
 unsigned long flags;

 atomic_t _count;
 union {
  atomic_t _mapcount;



  struct {
   u16 inuse;
   u16 objects;
  };
 };
 union {
     struct {
  unsigned long private;






  struct address_space *mapping;






     };



     struct kmem_cache *slab;
     struct page *first_page;
 };
 union {
  unsigned long index;
  void *freelist;
 };
 struct list_head lru;
# 101 "include/linux/mm_types.h"
};






struct vm_region {
 struct rb_node vm_rb;
 unsigned long vm_flags;
 unsigned long vm_start;
 unsigned long vm_end;
 unsigned long vm_top;
 unsigned long vm_pgoff;
 struct file *vm_file;

 atomic_t vm_usage;
};







struct vm_area_struct {
 struct mm_struct * vm_mm;
 unsigned long vm_start;
 unsigned long vm_end;



 struct vm_area_struct *vm_next;

 pgprot_t vm_page_prot;
 unsigned long vm_flags;

 struct rb_node vm_rb;







 union {
  struct {
   struct list_head list;
   void *parent;
   struct vm_area_struct *head;
  } vm_set;

  struct raw_prio_tree_node prio_tree_node;
 } shared;







 struct list_head anon_vma_node;
 struct anon_vma *anon_vma;


 struct vm_operations_struct * vm_ops;


 unsigned long vm_pgoff;

 struct file * vm_file;
 void * vm_private_data;
 unsigned long vm_truncate_count;







};

struct core_thread {
 struct task_struct *task;
 struct core_thread *next;
};

struct core_state {
 atomic_t nr_threads;
 struct core_thread dumper;
 struct completion startup;
};

struct mm_struct {
 struct vm_area_struct * mmap;
 struct rb_root mm_rb;
 struct vm_area_struct * mmap_cache;
 unsigned long (*get_unmapped_area) (struct file *filp,
    unsigned long addr, unsigned long len,
    unsigned long pgoff, unsigned long flags);
 void (*unmap_area) (struct mm_struct *mm, unsigned long addr);
 unsigned long mmap_base;
 unsigned long task_size;
 unsigned long cached_hole_size;
 unsigned long free_area_cache;
 pgd_t * pgd;
 atomic_t mm_users;
 atomic_t mm_count;
 int map_count;
 struct rw_semaphore mmap_sem;
 spinlock_t page_table_lock;

 struct list_head mmlist;







 mm_counter_t _file_rss;
 mm_counter_t _anon_rss;

 unsigned long hiwater_rss;
 unsigned long hiwater_vm;

 unsigned long total_vm, locked_vm, shared_vm, exec_vm;
 unsigned long stack_vm, reserved_vm, def_flags, nr_ptes;
 unsigned long start_code, end_code, start_data, end_data;
 unsigned long start_brk, brk, start_stack;
 unsigned long arg_start, arg_end, env_start, env_end;

 unsigned long saved_auxv[(2*(0 + 19 + 1))];

 cpumask_t cpu_vm_mask;


 mm_context_t context;
# 247 "include/linux/mm_types.h"
 unsigned int faultstamp;
 unsigned int token_priority;
 unsigned int last_interval;

 unsigned long flags;

 struct core_state *core_state;


 spinlock_t ioctx_lock;
 struct hlist_head ioctx_list;
# 275 "include/linux/mm_types.h"
 struct file *exe_file;
 unsigned long num_exe_file_vmas;




};
# 15 "include/linux/mm.h" 2

struct mempolicy;
struct anon_vma;
struct file_ra_state;
struct user_struct;
struct writeback_control;


extern unsigned long max_mapnr;


extern unsigned long num_physpages;
extern void * high_memory;
extern int page_cluster;


extern int sysctl_legacy_va_layout;




extern unsigned long mmap_min_addr;


# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable.h" 1
# 11 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable-32.h" 1
# 17 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable-32.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/fixmap.h" 1
# 47 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/fixmap.h"
enum fixed_addresses {

 FIX_CMAP_BEGIN,
 FIX_CMAP_END = FIX_CMAP_BEGIN + 8,





 __end_of_fixed_addresses
};
# 73 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/fixmap.h"
extern void __this_fixmap_does_not_exist(void);






static inline __attribute__((always_inline)) unsigned long fix_to_virt(const unsigned int idx)
{
# 91 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/fixmap.h"
 if (idx >= __end_of_fixed_addresses)
  __this_fixmap_does_not_exist();

        return (((unsigned long)(long)(int)0xfffe0000) - ((idx) << 12));
}

static inline __attribute__((always_inline)) unsigned long virt_to_fix(const unsigned long vaddr)
{
 do { if (vaddr >= ((unsigned long)(long)(int)0xfffe0000) || vaddr < (((unsigned long)(long)(int)0xfffe0000) - (__end_of_fixed_addresses << 12))) ; } while(0);
 return ((((unsigned long)(long)(int)0xfffe0000) - ((vaddr)&(~((1 << 12) - 1)))) >> 12);
}







extern void fixrange_init(unsigned long start, unsigned long end,
        pgd_t *pgd_base);
# 18 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable-32.h" 2

# 1 "include/asm-generic/pgtable-nopmd.h" 1





# 1 "include/asm-generic/pgtable-nopud.h" 1
# 13 "include/asm-generic/pgtable-nopud.h"
typedef struct { pgd_t pgd; } pud_t;
# 25 "include/asm-generic/pgtable-nopud.h"
static inline __attribute__((always_inline)) int pgd_none(pgd_t pgd) { return 0; }
static inline __attribute__((always_inline)) int pgd_bad(pgd_t pgd) { return 0; }
static inline __attribute__((always_inline)) int pgd_present(pgd_t pgd) { return 1; }
static inline __attribute__((always_inline)) void pgd_clear(pgd_t *pgd) { }
# 38 "include/asm-generic/pgtable-nopud.h"
static inline __attribute__((always_inline)) pud_t * pud_offset(pgd_t * pgd, unsigned long address)
{
 return (pud_t *)pgd;
}
# 7 "include/asm-generic/pgtable-nopmd.h" 2

struct mm_struct;
# 17 "include/asm-generic/pgtable-nopmd.h"
typedef struct { pud_t pud; } pmd_t;
# 29 "include/asm-generic/pgtable-nopmd.h"
static inline __attribute__((always_inline)) int pud_none(pud_t pud) { return 0; }
static inline __attribute__((always_inline)) int pud_bad(pud_t pud) { return 0; }
static inline __attribute__((always_inline)) int pud_present(pud_t pud) { return 1; }
static inline __attribute__((always_inline)) void pud_clear(pud_t *pud) { }
# 43 "include/asm-generic/pgtable-nopmd.h"
static inline __attribute__((always_inline)) pmd_t * pmd_offset(pud_t * pud, unsigned long address)
{
 return (pmd_t *)pud;
}
# 59 "include/asm-generic/pgtable-nopmd.h"
static inline __attribute__((always_inline)) void pmd_free(struct mm_struct *mm, pmd_t *pmd)
{
}
# 20 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable-32.h" 2




extern void add_wired_entry(unsigned long entrylo0, unsigned long entrylo1,
          unsigned long entryhi, unsigned long pagemask);
# 34 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable-32.h"
extern int add_temporary_entry(unsigned long entrylo0, unsigned long entrylo1,
          unsigned long entryhi, unsigned long pagemask);
# 80 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable-32.h"
extern void load_pgd(unsigned long pg_dir);

extern pte_t invalid_pte_table[(1UL << 12)/sizeof(pte_t)];




static inline __attribute__((always_inline)) int pmd_none(pmd_t pmd)
{
 return ((((((pmd).pud).pgd).pgd))) == (unsigned long) invalid_pte_table;
}



static inline __attribute__((always_inline)) int pmd_present(pmd_t pmd)
{
 return ((((((pmd).pud).pgd).pgd))) != (unsigned long) invalid_pte_table;
}

static inline __attribute__((always_inline)) void pmd_clear(pmd_t *pmdp)
{
 ((((((*pmdp).pud).pgd).pgd))) = ((unsigned long) invalid_pte_table);
}
# 12 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable.h" 2




struct mm_struct;
struct vm_area_struct;
# 61 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable.h"
extern unsigned long _page_cachable_default;






extern unsigned long empty_zero_page;
extern unsigned long zero_page_mask;




extern void paging_init(void);
# 92 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable.h"
static inline __attribute__((always_inline)) void set_pte(pte_t *ptep, pte_t pteval)
{
  *ptep = pteval;
}


static inline __attribute__((always_inline)) void pte_clear(struct mm_struct *mm, unsigned long addr, pte_t *ptep)
{
  set_pte(ptep, ((pte_t) { (0) } ));
}
# 117 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable.h"
extern pgd_t swapper_pg_dir[];





static inline __attribute__((always_inline)) int pte_write(pte_t pte) { return ((pte).pte) & (1<<2); }
static inline __attribute__((always_inline)) int pte_dirty(pte_t pte) { return ((pte).pte) & (1<<4); }
static inline __attribute__((always_inline)) int pte_young(pte_t pte) { return ((pte).pte) & (1<<3); }
static inline __attribute__((always_inline)) int pte_file(pte_t pte) { return ((pte).pte) & (1<<4); }

static inline __attribute__((always_inline)) pte_t pte_wrprotect(pte_t pte)
{
 ((pte).pte) &= ~((1<<2) | (1<<10));
 return pte;
}

static inline __attribute__((always_inline)) pte_t pte_mkclean(pte_t pte)
{
 ((pte).pte) &= ~((1<<4)|(1<<10));
 return pte;
}

static inline __attribute__((always_inline)) pte_t pte_mkold(pte_t pte)
{
 ((pte).pte) &= ~((1<<3)|(1<<9));
 return pte;
}

static inline __attribute__((always_inline)) pte_t pte_mkwrite(pte_t pte)
{
 ((pte).pte) |= (1<<2);
 if (((pte).pte) & (1<<4))
  ((pte).pte) |= (1<<10);
 return pte;
}

static inline __attribute__((always_inline)) pte_t pte_mkdirty(pte_t pte)
{
 ((pte).pte) |= (1<<4);
 if (((pte).pte) & (1<<2))
  ((pte).pte) |= (1<<10);
 return pte;
}

static inline __attribute__((always_inline)) pte_t pte_mkyoung(pte_t pte)
{
 ((pte).pte) |= (1<<3);
 if (((pte).pte) & (1<<1))
  ((pte).pte) |= (1<<9);
 return pte;
}

static inline __attribute__((always_inline)) int pte_special(pte_t pte) { return 0; }
static inline __attribute__((always_inline)) pte_t pte_mkspecial(pte_t pte) { return pte; }
# 181 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable.h"
static inline __attribute__((always_inline)) pgprot_t pgprot_noncached(pgprot_t _prot)
{
 unsigned long prot = ((_prot).pgprot);

 prot = (prot & ~(1<<11)) | (1<<11);

 return ((pgprot_t) { (prot) } );
}







static inline __attribute__((always_inline)) pte_t pte_modify(pte_t pte, pgprot_t newprot)
{
 return ((pte_t) { ((((pte).pte) & ((~((1 << 12) - 1)) | (1<<3) | (1<<4) | (1<<11))) | ((newprot).pgprot)) } );
}

extern void __update_tlb(struct vm_area_struct *vma, unsigned long address,
 pte_t pte);
extern void __update_cache(struct vm_area_struct *vma, unsigned long address,
 pte_t pte);

static inline __attribute__((always_inline)) void update_mmu_cache(struct vm_area_struct *vma,
 unsigned long address, pte_t pte)
{
 __update_tlb(vma, address, pte);
 __update_cache(vma, address, pte);
}






# 1 "include/asm-generic/pgtable.h" 1
# 94 "include/asm-generic/pgtable.h"
struct mm_struct;
static inline __attribute__((always_inline)) void ptep_set_wrprotect(struct mm_struct *mm, unsigned long address, pte_t *ptep)
{
 pte_t old_pte = *ptep;
 set_pte(ptep, pte_wrprotect(old_pte));
}
# 166 "include/asm-generic/pgtable.h"
void pgd_clear_bad(pgd_t *);
void pud_clear_bad(pud_t *);
void pmd_clear_bad(pmd_t *);

static inline __attribute__((always_inline)) int pgd_none_or_clear_bad(pgd_t *pgd)
{
 if (pgd_none(*pgd))
  return 1;
 if (__builtin_expect(!!(pgd_bad(*pgd)), 0)) {
  pgd_clear_bad(pgd);
  return 1;
 }
 return 0;
}

static inline __attribute__((always_inline)) int pud_none_or_clear_bad(pud_t *pud)
{
 if (pud_none(*pud))
  return 1;
 if (__builtin_expect(!!(pud_bad(*pud)), 0)) {
  pud_clear_bad(pud);
  return 1;
 }
 return 0;
}

static inline __attribute__((always_inline)) int pmd_none_or_clear_bad(pmd_t *pmd)
{
 if (pmd_none(*pmd))
  return 1;
 if (__builtin_expect(!!((((((((*pmd).pud).pgd).pgd))) & ~(~((1 << 12) - 1)))), 0)) {
  pmd_clear_bad(pmd);
  return 1;
 }
 return 0;
}

static inline __attribute__((always_inline)) pte_t __ptep_modify_prot_start(struct mm_struct *mm,
          unsigned long addr,
          pte_t *ptep)
{





 return ({ pte_t __pte = *(ptep); pte_clear((mm), (addr), (ptep)); __pte; });
}

static inline __attribute__((always_inline)) void __ptep_modify_prot_commit(struct mm_struct *mm,
          unsigned long addr,
          pte_t *ptep, pte_t pte)
{




 set_pte(ptep, pte);
}
# 241 "include/asm-generic/pgtable.h"
static inline __attribute__((always_inline)) pte_t ptep_modify_prot_start(struct mm_struct *mm,
        unsigned long addr,
        pte_t *ptep)
{
 return __ptep_modify_prot_start(mm, addr, ptep);
}





static inline __attribute__((always_inline)) void ptep_modify_prot_commit(struct mm_struct *mm,
        unsigned long addr,
        pte_t *ptep, pte_t pte)
{
 __ptep_modify_prot_commit(mm, addr, ptep, pte);
}
# 304 "include/asm-generic/pgtable.h"
static inline __attribute__((always_inline)) int track_pfn_vma_new(struct vm_area_struct *vma, pgprot_t *prot,
     unsigned long pfn, unsigned long size)
{
 return 0;
}
# 317 "include/asm-generic/pgtable.h"
static inline __attribute__((always_inline)) int track_pfn_vma_copy(struct vm_area_struct *vma)
{
 return 0;
}
# 330 "include/asm-generic/pgtable.h"
static inline __attribute__((always_inline)) void untrack_pfn_vma(struct vm_area_struct *vma,
     unsigned long pfn, unsigned long size)
{
}
# 219 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/pgtable.h" 2
# 40 "include/linux/mm.h" 2
# 56 "include/linux/mm.h"
extern struct kmem_cache *vm_area_cachep;
# 133 "include/linux/mm.h"
extern pgprot_t protection_map[16];
# 147 "include/linux/mm.h"
static inline __attribute__((always_inline)) int is_linear_pfn_mapping(struct vm_area_struct *vma)
{
 return (vma->vm_flags & 0x40000000);
}

static inline __attribute__((always_inline)) int is_pfn_mapping(struct vm_area_struct *vma)
{
 return (vma->vm_flags & 0x00000400);
}
# 166 "include/linux/mm.h"
struct vm_fault {
 unsigned int flags;
 unsigned long pgoff;
 void *virtual_address;

 struct page *page;




};






struct vm_operations_struct {
 void (*open)(struct vm_area_struct * area);
 void (*close)(struct vm_area_struct * area);
 int (*fault)(struct vm_area_struct *vma, struct vm_fault *vmf);



 int (*page_mkwrite)(struct vm_area_struct *vma, struct vm_fault *vmf);




 int (*access)(struct vm_area_struct *vma, unsigned long addr,
        void *buf, int len, int write);
# 222 "include/linux/mm.h"
};

struct mmu_gather;
struct inode;
# 234 "include/linux/mm.h"
# 1 "include/linux/page-flags.h" 1
# 72 "include/linux/page-flags.h"
enum pageflags {
 PG_locked,
 PG_error,
 PG_referenced,
 PG_uptodate,
 PG_dirty,
 PG_lru,
 PG_active,
 PG_slab,
 PG_owner_priv_1,
 PG_arch_1,
 PG_reserved,
 PG_private,
 PG_private_2,
 PG_writeback,

 PG_head,
 PG_tail,



 PG_swapcache,
 PG_mappedtodisk,
 PG_reclaim,
 PG_buddy,
 PG_swapbacked,
 PG_unevictable,

 PG_mlocked,




 __NR_PAGEFLAGS,


 PG_checked = PG_owner_priv_1,





 PG_fscache = PG_private_2,


 PG_pinned = PG_owner_priv_1,
 PG_savepinned = PG_dirty,


 PG_slob_page = PG_active,
 PG_slob_free = PG_private,


 PG_slub_frozen = PG_active,
 PG_slub_debug = PG_error,
};
# 188 "include/linux/page-flags.h"
struct page;

static inline __attribute__((always_inline)) int PageLocked(struct page *page) { return test_bit(PG_locked, &page->flags); } static inline __attribute__((always_inline)) int TestSetPageLocked(struct page *page) { return test_and_set_bit(PG_locked, &page->flags); }
static inline __attribute__((always_inline)) int PageError(struct page *page) { return test_bit(PG_error, &page->flags); } static inline __attribute__((always_inline)) void SetPageError(struct page *page) { set_bit(PG_error, &page->flags); } static inline __attribute__((always_inline)) void ClearPageError(struct page *page) { clear_bit(PG_error, &page->flags); }
static inline __attribute__((always_inline)) int PageReferenced(struct page *page) { return test_bit(PG_referenced, &page->flags); } static inline __attribute__((always_inline)) void SetPageReferenced(struct page *page) { set_bit(PG_referenced, &page->flags); } static inline __attribute__((always_inline)) void ClearPageReferenced(struct page *page) { clear_bit(PG_referenced, &page->flags); } static inline __attribute__((always_inline)) int TestClearPageReferenced(struct page *page) { return test_and_clear_bit(PG_referenced, &page->flags); }
static inline __attribute__((always_inline)) int PageDirty(struct page *page) { return test_bit(PG_dirty, &page->flags); } static inline __attribute__((always_inline)) void SetPageDirty(struct page *page) { set_bit(PG_dirty, &page->flags); } static inline __attribute__((always_inline)) void ClearPageDirty(struct page *page) { clear_bit(PG_dirty, &page->flags); } static inline __attribute__((always_inline)) int TestSetPageDirty(struct page *page) { return test_and_set_bit(PG_dirty, &page->flags); } static inline __attribute__((always_inline)) int TestClearPageDirty(struct page *page) { return test_and_clear_bit(PG_dirty, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageDirty(struct page *page) { __clear_bit(PG_dirty, &page->flags); }
static inline __attribute__((always_inline)) int PageLRU(struct page *page) { return test_bit(PG_lru, &page->flags); } static inline __attribute__((always_inline)) void SetPageLRU(struct page *page) { set_bit(PG_lru, &page->flags); } static inline __attribute__((always_inline)) void ClearPageLRU(struct page *page) { clear_bit(PG_lru, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageLRU(struct page *page) { __clear_bit(PG_lru, &page->flags); }
static inline __attribute__((always_inline)) int PageActive(struct page *page) { return test_bit(PG_active, &page->flags); } static inline __attribute__((always_inline)) void SetPageActive(struct page *page) { set_bit(PG_active, &page->flags); } static inline __attribute__((always_inline)) void ClearPageActive(struct page *page) { clear_bit(PG_active, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageActive(struct page *page) { __clear_bit(PG_active, &page->flags); }
 static inline __attribute__((always_inline)) int TestClearPageActive(struct page *page) { return test_and_clear_bit(PG_active, &page->flags); }
static inline __attribute__((always_inline)) int PageSlab(struct page *page) { return test_bit(PG_slab, &page->flags); } static inline __attribute__((always_inline)) void __SetPageSlab(struct page *page) { __set_bit(PG_slab, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageSlab(struct page *page) { __clear_bit(PG_slab, &page->flags); }
static inline __attribute__((always_inline)) int PageChecked(struct page *page) { return test_bit(PG_checked, &page->flags); } static inline __attribute__((always_inline)) void SetPageChecked(struct page *page) { set_bit(PG_checked, &page->flags); } static inline __attribute__((always_inline)) void ClearPageChecked(struct page *page) { clear_bit(PG_checked, &page->flags); }
static inline __attribute__((always_inline)) int PagePinned(struct page *page) { return test_bit(PG_pinned, &page->flags); } static inline __attribute__((always_inline)) void SetPagePinned(struct page *page) { set_bit(PG_pinned, &page->flags); } static inline __attribute__((always_inline)) void ClearPagePinned(struct page *page) { clear_bit(PG_pinned, &page->flags); } static inline __attribute__((always_inline)) int TestSetPagePinned(struct page *page) { return test_and_set_bit(PG_pinned, &page->flags); } static inline __attribute__((always_inline)) int TestClearPagePinned(struct page *page) { return test_and_clear_bit(PG_pinned, &page->flags); }
static inline __attribute__((always_inline)) int PageSavePinned(struct page *page) { return test_bit(PG_savepinned, &page->flags); } static inline __attribute__((always_inline)) void SetPageSavePinned(struct page *page) { set_bit(PG_savepinned, &page->flags); } static inline __attribute__((always_inline)) void ClearPageSavePinned(struct page *page) { clear_bit(PG_savepinned, &page->flags); };
static inline __attribute__((always_inline)) int PageReserved(struct page *page) { return test_bit(PG_reserved, &page->flags); } static inline __attribute__((always_inline)) void SetPageReserved(struct page *page) { set_bit(PG_reserved, &page->flags); } static inline __attribute__((always_inline)) void ClearPageReserved(struct page *page) { clear_bit(PG_reserved, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageReserved(struct page *page) { __clear_bit(PG_reserved, &page->flags); }
static inline __attribute__((always_inline)) int PageSwapBacked(struct page *page) { return test_bit(PG_swapbacked, &page->flags); } static inline __attribute__((always_inline)) void SetPageSwapBacked(struct page *page) { set_bit(PG_swapbacked, &page->flags); } static inline __attribute__((always_inline)) void ClearPageSwapBacked(struct page *page) { clear_bit(PG_swapbacked, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageSwapBacked(struct page *page) { __clear_bit(PG_swapbacked, &page->flags); }

static inline __attribute__((always_inline)) int PageSlobPage(struct page *page) { return test_bit(PG_slob_page, &page->flags); } static inline __attribute__((always_inline)) void __SetPageSlobPage(struct page *page) { __set_bit(PG_slob_page, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageSlobPage(struct page *page) { __clear_bit(PG_slob_page, &page->flags); }
static inline __attribute__((always_inline)) int PageSlobFree(struct page *page) { return test_bit(PG_slob_free, &page->flags); } static inline __attribute__((always_inline)) void __SetPageSlobFree(struct page *page) { __set_bit(PG_slob_free, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageSlobFree(struct page *page) { __clear_bit(PG_slob_free, &page->flags); }

static inline __attribute__((always_inline)) int PageSlubFrozen(struct page *page) { return test_bit(PG_slub_frozen, &page->flags); } static inline __attribute__((always_inline)) void __SetPageSlubFrozen(struct page *page) { __set_bit(PG_slub_frozen, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageSlubFrozen(struct page *page) { __clear_bit(PG_slub_frozen, &page->flags); }
static inline __attribute__((always_inline)) int PageSlubDebug(struct page *page) { return test_bit(PG_slub_debug, &page->flags); } static inline __attribute__((always_inline)) void __SetPageSlubDebug(struct page *page) { __set_bit(PG_slub_debug, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageSlubDebug(struct page *page) { __clear_bit(PG_slub_debug, &page->flags); }






static inline __attribute__((always_inline)) int PagePrivate(struct page *page) { return test_bit(PG_private, &page->flags); } static inline __attribute__((always_inline)) void SetPagePrivate(struct page *page) { set_bit(PG_private, &page->flags); } static inline __attribute__((always_inline)) void ClearPagePrivate(struct page *page) { clear_bit(PG_private, &page->flags); } static inline __attribute__((always_inline)) void __SetPagePrivate(struct page *page) { __set_bit(PG_private, &page->flags); }
 static inline __attribute__((always_inline)) void __ClearPagePrivate(struct page *page) { __clear_bit(PG_private, &page->flags); }
static inline __attribute__((always_inline)) int PagePrivate2(struct page *page) { return test_bit(PG_private_2, &page->flags); } static inline __attribute__((always_inline)) void SetPagePrivate2(struct page *page) { set_bit(PG_private_2, &page->flags); } static inline __attribute__((always_inline)) void ClearPagePrivate2(struct page *page) { clear_bit(PG_private_2, &page->flags); } static inline __attribute__((always_inline)) int TestSetPagePrivate2(struct page *page) { return test_and_set_bit(PG_private_2, &page->flags); } static inline __attribute__((always_inline)) int TestClearPagePrivate2(struct page *page) { return test_and_clear_bit(PG_private_2, &page->flags); }
static inline __attribute__((always_inline)) int PageOwnerPriv1(struct page *page) { return test_bit(PG_owner_priv_1, &page->flags); } static inline __attribute__((always_inline)) void SetPageOwnerPriv1(struct page *page) { set_bit(PG_owner_priv_1, &page->flags); } static inline __attribute__((always_inline)) void ClearPageOwnerPriv1(struct page *page) { clear_bit(PG_owner_priv_1, &page->flags); } static inline __attribute__((always_inline)) int TestClearPageOwnerPriv1(struct page *page) { return test_and_clear_bit(PG_owner_priv_1, &page->flags); }





static inline __attribute__((always_inline)) int PageWriteback(struct page *page) { return test_bit(PG_writeback, &page->flags); } static inline __attribute__((always_inline)) int TestSetPageWriteback(struct page *page) { return test_and_set_bit(PG_writeback, &page->flags); } static inline __attribute__((always_inline)) int TestClearPageWriteback(struct page *page) { return test_and_clear_bit(PG_writeback, &page->flags); }
static inline __attribute__((always_inline)) int PageBuddy(struct page *page) { return test_bit(PG_buddy, &page->flags); } static inline __attribute__((always_inline)) void __SetPageBuddy(struct page *page) { __set_bit(PG_buddy, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageBuddy(struct page *page) { __clear_bit(PG_buddy, &page->flags); }
static inline __attribute__((always_inline)) int PageMappedToDisk(struct page *page) { return test_bit(PG_mappedtodisk, &page->flags); } static inline __attribute__((always_inline)) void SetPageMappedToDisk(struct page *page) { set_bit(PG_mappedtodisk, &page->flags); } static inline __attribute__((always_inline)) void ClearPageMappedToDisk(struct page *page) { clear_bit(PG_mappedtodisk, &page->flags); }


static inline __attribute__((always_inline)) int PageReclaim(struct page *page) { return test_bit(PG_reclaim, &page->flags); } static inline __attribute__((always_inline)) void SetPageReclaim(struct page *page) { set_bit(PG_reclaim, &page->flags); } static inline __attribute__((always_inline)) void ClearPageReclaim(struct page *page) { clear_bit(PG_reclaim, &page->flags); } static inline __attribute__((always_inline)) int TestClearPageReclaim(struct page *page) { return test_and_clear_bit(PG_reclaim, &page->flags); }
static inline __attribute__((always_inline)) int PageReadahead(struct page *page) { return test_bit(PG_reclaim, &page->flags); } static inline __attribute__((always_inline)) void SetPageReadahead(struct page *page) { set_bit(PG_reclaim, &page->flags); } static inline __attribute__((always_inline)) void ClearPageReadahead(struct page *page) { clear_bit(PG_reclaim, &page->flags); }
# 239 "include/linux/page-flags.h"
static inline __attribute__((always_inline)) int PageHighMem(struct page *page) { return 0; }





static inline __attribute__((always_inline)) int PageSwapCache(struct page *page) { return 0; }
 static inline __attribute__((always_inline)) void SetPageSwapCache(struct page *page) { } static inline __attribute__((always_inline)) void ClearPageSwapCache(struct page *page) { }


static inline __attribute__((always_inline)) int PageUnevictable(struct page *page) { return test_bit(PG_unevictable, &page->flags); } static inline __attribute__((always_inline)) void SetPageUnevictable(struct page *page) { set_bit(PG_unevictable, &page->flags); } static inline __attribute__((always_inline)) void ClearPageUnevictable(struct page *page) { clear_bit(PG_unevictable, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageUnevictable(struct page *page) { __clear_bit(PG_unevictable, &page->flags); }
 static inline __attribute__((always_inline)) int TestClearPageUnevictable(struct page *page) { return test_and_clear_bit(PG_unevictable, &page->flags); }



static inline __attribute__((always_inline)) int PageMlocked(struct page *page) { return test_bit(PG_mlocked, &page->flags); } static inline __attribute__((always_inline)) void SetPageMlocked(struct page *page) { set_bit(PG_mlocked, &page->flags); } static inline __attribute__((always_inline)) void ClearPageMlocked(struct page *page) { clear_bit(PG_mlocked, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageMlocked(struct page *page) { __clear_bit(PG_mlocked, &page->flags); }
 static inline __attribute__((always_inline)) int TestSetPageMlocked(struct page *page) { return test_and_set_bit(PG_mlocked, &page->flags); } static inline __attribute__((always_inline)) int TestClearPageMlocked(struct page *page) { return test_and_clear_bit(PG_mlocked, &page->flags); }
# 265 "include/linux/page-flags.h"
static inline __attribute__((always_inline)) int PageUncached(struct page *page) { return 0; }


static inline __attribute__((always_inline)) int PageUptodate(struct page *page)
{
 int ret = test_bit(PG_uptodate, &(page)->flags);
# 280 "include/linux/page-flags.h"
 if (ret)
  __asm__ __volatile__("   \n" : : : "memory");

 return ret;
}

static inline __attribute__((always_inline)) void __SetPageUptodate(struct page *page)
{
 __asm__ __volatile__("   \n" : : : "memory");
 __set_bit(PG_uptodate, &(page)->flags);
}

static inline __attribute__((always_inline)) void SetPageUptodate(struct page *page)
{
# 306 "include/linux/page-flags.h"
 __asm__ __volatile__("   \n" : : : "memory");
 set_bit(PG_uptodate, &(page)->flags);

}

static inline __attribute__((always_inline)) void ClearPageUptodate(struct page *page) { clear_bit(PG_uptodate, &page->flags); }

extern void cancel_dirty_page(struct page *page, unsigned int account_size);

int test_clear_page_writeback(struct page *page);
int test_set_page_writeback(struct page *page);

static inline __attribute__((always_inline)) void set_page_writeback(struct page *page)
{
 test_set_page_writeback(page);
}
# 330 "include/linux/page-flags.h"
static inline __attribute__((always_inline)) int PageHead(struct page *page) { return test_bit(PG_head, &page->flags); } static inline __attribute__((always_inline)) void __SetPageHead(struct page *page) { __set_bit(PG_head, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageHead(struct page *page) { __clear_bit(PG_head, &page->flags); }
static inline __attribute__((always_inline)) int PageTail(struct page *page) { return test_bit(PG_tail, &page->flags); } static inline __attribute__((always_inline)) void __SetPageTail(struct page *page) { __set_bit(PG_tail, &page->flags); } static inline __attribute__((always_inline)) void __ClearPageTail(struct page *page) { __clear_bit(PG_tail, &page->flags); }

static inline __attribute__((always_inline)) int PageCompound(struct page *page)
{
 return page->flags & ((1L << PG_head) | (1L << PG_tail));

}
# 235 "include/linux/mm.h" 2
# 252 "include/linux/mm.h"
static inline __attribute__((always_inline)) int put_page_testzero(struct page *page)
{
 do { } while (0);
 return (atomic_sub_return(1, (&page->_count)) == 0);
}





static inline __attribute__((always_inline)) int get_page_unless_zero(struct page *page)
{
 return atomic_add_unless((&page->_count), 1, 0);
}


struct page *vmalloc_to_page(const void *addr);
unsigned long vmalloc_to_pfn(const void *addr);







static inline __attribute__((always_inline)) int is_vmalloc_addr(const void *x)
{

 unsigned long addr = (unsigned long)x;

 return addr >= (0xc0000000UL) && addr < ((((unsigned long)(long)(int)0xfffe0000) - (__end_of_fixed_addresses << 12))-2*(1UL << 12));



}

static inline __attribute__((always_inline)) struct page *compound_head(struct page *page)
{
 if (__builtin_expect(!!(PageTail(page)), 0))
  return page->first_page;
 return page;
}

static inline __attribute__((always_inline)) int page_count(struct page *page)
{
 return ((&compound_head(page)->_count)->counter);
}

static inline __attribute__((always_inline)) void get_page(struct page *page)
{
 page = compound_head(page);
 do { } while (0);
 atomic_add(1, (&page->_count));
}

static inline __attribute__((always_inline)) struct page *virt_to_head_page(const void *x)
{
 struct page *page = (mem_map + ((((virt_to_phys(x)) >> 12)) - ((((0UL)) + (1UL << 12)-1) >> 12)));
 return compound_head(page);
}





static inline __attribute__((always_inline)) void init_page_count(struct page *page)
{
 ((&page->_count)->counter = (1));
}

void put_page(struct page *page);
void put_pages_list(struct list_head *pages);

void split_page(struct page *page, unsigned int order);






typedef void compound_page_dtor(struct page *);

static inline __attribute__((always_inline)) void set_compound_page_dtor(struct page *page,
      compound_page_dtor *dtor)
{
 page[1].lru.next = (void *)dtor;
}

static inline __attribute__((always_inline)) compound_page_dtor *get_compound_page_dtor(struct page *page)
{
 return (compound_page_dtor *)page[1].lru.next;
}

static inline __attribute__((always_inline)) int compound_order(struct page *page)
{
 if (!PageHead(page))
  return 0;
 return (unsigned long)page[1].lru.prev;
}

static inline __attribute__((always_inline)) void set_compound_order(struct page *page, unsigned long order)
{
 page[1].lru.prev = (void *)order;
}
# 502 "include/linux/mm.h"
static inline __attribute__((always_inline)) enum zone_type page_zonenum(struct page *page)
{
 return (page->flags >> (((((sizeof(unsigned long)*8) - 0) - 0) - 1) * (1 != 0))) & ((1UL << 1) - 1);
}
# 515 "include/linux/mm.h"
static inline __attribute__((always_inline)) int page_zone_id(struct page *page)
{
 return (page->flags >> ((((((sizeof(unsigned long)*8) - 0) - 0) < ((((sizeof(unsigned long)*8) - 0) - 0) - 1))? (((sizeof(unsigned long)*8) - 0) - 0) : ((((sizeof(unsigned long)*8) - 0) - 0) - 1)) * ((0 + 1) != 0))) & ((1UL << (0 + 1)) - 1);
}

static inline __attribute__((always_inline)) int zone_to_nid(struct zone *zone)
{



 return 0;

}




static inline __attribute__((always_inline)) int page_to_nid(struct page *page)
{
 return (page->flags >> ((((sizeof(unsigned long)*8) - 0) - 0) * (0 != 0))) & ((1UL << 0) - 1);
}


static inline __attribute__((always_inline)) struct zone *page_zone(struct page *page)
{
 return &(&contig_page_data)->node_zones[page_zonenum(page)];
}
# 550 "include/linux/mm.h"
static inline __attribute__((always_inline)) void set_page_zone(struct page *page, enum zone_type zone)
{
 page->flags &= ~(((1UL << 1) - 1) << (((((sizeof(unsigned long)*8) - 0) - 0) - 1) * (1 != 0)));
 page->flags |= (zone & ((1UL << 1) - 1)) << (((((sizeof(unsigned long)*8) - 0) - 0) - 1) * (1 != 0));
}

static inline __attribute__((always_inline)) void set_page_node(struct page *page, unsigned long node)
{
 page->flags &= ~(((1UL << 0) - 1) << ((((sizeof(unsigned long)*8) - 0) - 0) * (0 != 0)));
 page->flags |= (node & ((1UL << 0) - 1)) << ((((sizeof(unsigned long)*8) - 0) - 0) * (0 != 0));
}

static inline __attribute__((always_inline)) void set_page_section(struct page *page, unsigned long section)
{
 page->flags &= ~(((1UL << 0) - 1) << (((sizeof(unsigned long)*8) - 0) * (0 != 0)));
 page->flags |= (section & ((1UL << 0) - 1)) << (((sizeof(unsigned long)*8) - 0) * (0 != 0));
}

static inline __attribute__((always_inline)) void set_page_links(struct page *page, enum zone_type zone,
 unsigned long node, unsigned long pfn)
{
 set_page_zone(page, zone);
 set_page_node(page, node);
 set_page_section(page, ((pfn) >> 0));
}





static inline __attribute__((always_inline)) unsigned long round_hint_to_min(unsigned long hint)
{
 hint &= (~((1 << 12) - 1));
 if (((void *)hint != ((void *)0)) &&
     (hint < mmap_min_addr))
  return (((mmap_min_addr)+((typeof(mmap_min_addr))((1UL << 12))-1))&~((typeof(mmap_min_addr))((1UL << 12))-1));
 return hint;
}




# 1 "include/linux/vmstat.h" 1





# 1 "include/linux/mm.h" 1
# 7 "include/linux/vmstat.h" 2
# 31 "include/linux/vmstat.h"
enum vm_event_item { PGPGIN, PGPGOUT, PSWPIN, PSWPOUT,
  PGALLOC_NORMAL , PGALLOC_MOVABLE,
  PGFREE, PGACTIVATE, PGDEACTIVATE,
  PGFAULT, PGMAJFAULT,
  PGREFILL_NORMAL , PGREFILL_MOVABLE,
  PGSTEAL_NORMAL , PGSTEAL_MOVABLE,
  PGSCAN_KSWAPD_NORMAL , PGSCAN_KSWAPD_MOVABLE,
  PGSCAN_DIRECT_NORMAL , PGSCAN_DIRECT_MOVABLE,



  PGINODESTEAL, SLABS_SCANNED, KSWAPD_STEAL, KSWAPD_INODESTEAL,
  PAGEOUTRUN, ALLOCSTALL, PGROTATED,



  UNEVICTABLE_PGCULLED,
  UNEVICTABLE_PGSCANNED,
  UNEVICTABLE_PGRESCUED,
  UNEVICTABLE_PGMLOCKED,
  UNEVICTABLE_PGMUNLOCKED,
  UNEVICTABLE_PGCLEARED,
  UNEVICTABLE_PGSTRANDED,
  UNEVICTABLE_MLOCKFREED,
  NR_VM_EVENT_ITEMS
};

extern int sysctl_stat_interval;
# 111 "include/linux/vmstat.h"
static inline __attribute__((always_inline)) void count_vm_event(enum vm_event_item item)
{
}
static inline __attribute__((always_inline)) void count_vm_events(enum vm_event_item item, long delta)
{
}
static inline __attribute__((always_inline)) void __count_vm_event(enum vm_event_item item)
{
}
static inline __attribute__((always_inline)) void __count_vm_events(enum vm_event_item item, long delta)
{
}
static inline __attribute__((always_inline)) void all_vm_events(unsigned long *ret)
{
}
static inline __attribute__((always_inline)) void vm_events_fold_cpu(int cpu)
{
}
# 139 "include/linux/vmstat.h"
extern atomic_long_t vm_stat[NR_VM_ZONE_STAT_ITEMS];

static inline __attribute__((always_inline)) void zone_page_state_add(long x, struct zone *zone,
     enum zone_stat_item item)
{
 atomic_long_add(x, &zone->vm_stat[item]);
 atomic_long_add(x, &vm_stat[item]);
}

static inline __attribute__((always_inline)) unsigned long global_page_state(enum zone_stat_item item)
{
 long x = atomic_long_read(&vm_stat[item]);




 return x;
}

static inline __attribute__((always_inline)) unsigned long zone_page_state(struct zone *zone,
     enum zone_stat_item item)
{
 long x = atomic_long_read(&zone->vm_stat[item]);




 return x;
}

extern unsigned long global_lru_pages(void);

static inline __attribute__((always_inline)) unsigned long zone_lru_pages(struct zone *zone)
{
 return (zone_page_state(zone, NR_ACTIVE_ANON)
  + zone_page_state(zone, NR_ACTIVE_FILE)
  + zone_page_state(zone, NR_INACTIVE_ANON)
  + zone_page_state(zone, NR_INACTIVE_FILE));
}
# 221 "include/linux/vmstat.h"
static inline __attribute__((always_inline)) void zap_zone_vm_stats(struct zone *zone)
{
 memset(zone->vm_stat, 0, sizeof(zone->vm_stat));
}

extern void inc_zone_state(struct zone *, enum zone_stat_item);
# 249 "include/linux/vmstat.h"
static inline __attribute__((always_inline)) void __mod_zone_page_state(struct zone *zone,
   enum zone_stat_item item, int delta)
{
 zone_page_state_add(delta, zone, item);
}

static inline __attribute__((always_inline)) void __inc_zone_state(struct zone *zone, enum zone_stat_item item)
{
 atomic_long_inc(&zone->vm_stat[item]);
 atomic_long_inc(&vm_stat[item]);
}

static inline __attribute__((always_inline)) void __inc_zone_page_state(struct page *page,
   enum zone_stat_item item)
{
 __inc_zone_state(page_zone(page), item);
}

static inline __attribute__((always_inline)) void __dec_zone_state(struct zone *zone, enum zone_stat_item item)
{
 atomic_long_dec(&zone->vm_stat[item]);
 atomic_long_dec(&vm_stat[item]);
}

static inline __attribute__((always_inline)) void __dec_zone_page_state(struct page *page,
   enum zone_stat_item item)
{
 __dec_zone_state(page_zone(page), item);
}
# 287 "include/linux/vmstat.h"
static inline __attribute__((always_inline)) void refresh_cpu_vm_stats(int cpu) { }
# 593 "include/linux/mm.h" 2

static inline __attribute__((always_inline)) __attribute__((always_inline)) void *lowmem_page_address(struct page *page)
{
 return ((void *)((unsigned long)(((unsigned long)((page) - mem_map) + ((((0UL)) + (1UL << 12)-1) >> 12)) << 12) + ((0x80000000UL) + (0UL)) - (0UL)));
}
# 635 "include/linux/mm.h"
extern struct address_space swapper_space;
static inline __attribute__((always_inline)) struct address_space *page_mapping(struct page *page)
{
 struct address_space *mapping = page->mapping;

 do { } while (0);





 if (__builtin_expect(!!((unsigned long)mapping & 1), 0))
  mapping = ((void *)0);
 return mapping;
}

static inline __attribute__((always_inline)) int PageAnon(struct page *page)
{
 return ((unsigned long)page->mapping & 1) != 0;
}





static inline __attribute__((always_inline)) unsigned long page_index(struct page *page)
{
 if (__builtin_expect(!!(PageSwapCache(page)), 0))
  return ((page)->private);
 return page->index;
}






static inline __attribute__((always_inline)) void reset_page_mapcount(struct page *page)
{
 ((&(page)->_mapcount)->counter = (-1));
}

static inline __attribute__((always_inline)) int page_mapcount(struct page *page)
{
 return ((&(page)->_mapcount)->counter) + 1;
}




static inline __attribute__((always_inline)) int page_mapped(struct page *page)
{
 return ((&(page)->_mapcount)->counter) >= 0;
}
# 711 "include/linux/mm.h"
extern void pagefault_out_of_memory(void);



extern void show_free_areas(void);




static inline __attribute__((always_inline)) int shmem_lock(struct file *file, int lock,
       struct user_struct *user)
{
 return 0;
}

struct file *shmem_file_setup(char *name, loff_t size, unsigned long flags);

int shmem_zero_setup(struct vm_area_struct *);
# 738 "include/linux/mm.h"
extern int can_do_mlock(void);
extern int user_shm_lock(size_t, struct user_struct *);
extern void user_shm_unlock(size_t, struct user_struct *);




struct zap_details {
 struct vm_area_struct *nonlinear_vma;
 struct address_space *check_mapping;
 unsigned long first_index;
 unsigned long last_index;
 spinlock_t *i_mmap_lock;
 unsigned long truncate_count;
};

struct page *vm_normal_page(struct vm_area_struct *vma, unsigned long addr,
  pte_t pte);

int zap_vma_ptes(struct vm_area_struct *vma, unsigned long address,
  unsigned long size);
unsigned long zap_page_range(struct vm_area_struct *vma, unsigned long address,
  unsigned long size, struct zap_details *);
unsigned long unmap_vmas(struct mmu_gather **tlb,
  struct vm_area_struct *start_vma, unsigned long start_addr,
  unsigned long end_addr, unsigned long *nr_accounted,
  struct zap_details *);
# 776 "include/linux/mm.h"
struct mm_walk {
 int (*pgd_entry)(pgd_t *, unsigned long, unsigned long, struct mm_walk *);
 int (*pud_entry)(pud_t *, unsigned long, unsigned long, struct mm_walk *);
 int (*pmd_entry)(pmd_t *, unsigned long, unsigned long, struct mm_walk *);
 int (*pte_entry)(pte_t *, unsigned long, unsigned long, struct mm_walk *);
 int (*pte_hole)(unsigned long, unsigned long, struct mm_walk *);
 struct mm_struct *mm;
 void *private;
};

int walk_page_range(unsigned long addr, unsigned long end,
  struct mm_walk *walk);
void free_pgd_range(struct mmu_gather *tlb, unsigned long addr,
  unsigned long end, unsigned long floor, unsigned long ceiling);
int copy_page_range(struct mm_struct *dst, struct mm_struct *src,
   struct vm_area_struct *vma);
void unmap_mapping_range(struct address_space *mapping,
  loff_t const holebegin, loff_t const holelen, int even_cows);
int follow_phys(struct vm_area_struct *vma, unsigned long address,
  unsigned int flags, unsigned long *prot, resource_size_t *phys);
int generic_access_phys(struct vm_area_struct *vma, unsigned long addr,
   void *buf, int len, int write);

static inline __attribute__((always_inline)) void unmap_shared_mapping_range(struct address_space *mapping,
  loff_t const holebegin, loff_t const holelen)
{
 unmap_mapping_range(mapping, holebegin, holelen, 0);
}

extern int vmtruncate(struct inode * inode, loff_t offset);
extern int vmtruncate_range(struct inode * inode, loff_t offset, loff_t end);


extern int handle_mm_fault(struct mm_struct *mm, struct vm_area_struct *vma,
   unsigned long address, int write_access);
# 822 "include/linux/mm.h"
extern int make_pages_present(unsigned long addr, unsigned long end);
extern int access_process_vm(struct task_struct *tsk, unsigned long addr, void *buf, int len, int write);

int get_user_pages(struct task_struct *tsk, struct mm_struct *mm,
            unsigned long start, int nr_pages, int write, int force,
            struct page **pages, struct vm_area_struct **vmas);
int get_user_pages_fast(unsigned long start, int nr_pages, int write,
            struct page **pages);


extern int try_to_release_page(struct page * page, gfp_t gfp_mask);
extern void do_invalidatepage(struct page *page, unsigned long offset);

int __set_page_dirty_nobuffers(struct page *page);
int __set_page_dirty_no_writeback(struct page *page);
int redirty_page_for_writepage(struct writeback_control *wbc,
    struct page *page);
void account_page_dirtied(struct page *page, struct address_space *mapping);
int set_page_dirty(struct page *page);
int set_page_dirty_lock(struct page *page);
int clear_page_dirty_for_io(struct page *page);

extern unsigned long move_page_tables(struct vm_area_struct *vma,
  unsigned long old_addr, struct vm_area_struct *new_vma,
  unsigned long new_addr, unsigned long len);
extern unsigned long do_mremap(unsigned long addr,
          unsigned long old_len, unsigned long new_len,
          unsigned long flags, unsigned long new_addr);
extern int mprotect_fixup(struct vm_area_struct *vma,
     struct vm_area_struct **pprev, unsigned long start,
     unsigned long end, unsigned long newflags);




int __get_user_pages_fast(unsigned long start, int nr_pages, int write,
   struct page **pages);
# 875 "include/linux/mm.h"
struct shrinker {
 int (*shrink)(int nr_to_scan, gfp_t gfp_mask);
 int seeks;


 struct list_head list;
 long nr;
};

extern void register_shrinker(struct shrinker *);
extern void unregister_shrinker(struct shrinker *);

int vma_wants_writenotify(struct vm_area_struct *vma);

extern pte_t *get_locked_pte(struct mm_struct *mm, unsigned long addr, spinlock_t **ptl);


static inline __attribute__((always_inline)) int __pud_alloc(struct mm_struct *mm, pgd_t *pgd,
      unsigned long address)
{
 return 0;
}





static inline __attribute__((always_inline)) int __pmd_alloc(struct mm_struct *mm, pud_t *pud,
      unsigned long address)
{
 return 0;
}




int __pte_alloc(struct mm_struct *mm, pmd_t *pmd, unsigned long address);
int __pte_alloc_kernel(pmd_t *pmd, unsigned long address);






static inline __attribute__((always_inline)) pud_t *pud_alloc(struct mm_struct *mm, pgd_t *pgd, unsigned long address)
{
 return (__builtin_expect(!!(pgd_none(*pgd)), 0) && __pud_alloc(mm, pgd, address))?
  ((void *)0): pud_offset(pgd, address);
}

static inline __attribute__((always_inline)) pmd_t *pmd_alloc(struct mm_struct *mm, pud_t *pud, unsigned long address)
{
 return (__builtin_expect(!!(pud_none(*pud)), 0) && __pmd_alloc(mm, pud, address))?
  ((void *)0): pmd_offset(pud, address);
}
# 954 "include/linux/mm.h"
static inline __attribute__((always_inline)) void pgtable_page_ctor(struct page *page)
{
 do {} while (0);
 __inc_zone_page_state(page, NR_PAGETABLE);
}

static inline __attribute__((always_inline)) void pgtable_page_dtor(struct page *page)
{
 do {} while (0);
 __dec_zone_page_state(page, NR_PAGETABLE);
}
# 992 "include/linux/mm.h"
extern void free_area_init(unsigned long * zones_size);
extern void free_area_init_node(int nid, unsigned long * zones_size,
  unsigned long zone_start_pfn, unsigned long *zholes_size);
# 1023 "include/linux/mm.h"
extern void free_area_init_nodes(unsigned long *max_zone_pfn);
extern void add_active_range(unsigned int nid, unsigned long start_pfn,
     unsigned long end_pfn);
extern void remove_active_range(unsigned int nid, unsigned long start_pfn,
     unsigned long end_pfn);
extern void push_node_boundaries(unsigned int nid, unsigned long start_pfn,
     unsigned long end_pfn);
extern void remove_all_active_ranges(void);
extern unsigned long absent_pages_in_range(unsigned long start_pfn,
      unsigned long end_pfn);
extern void get_pfn_range_for_nid(unsigned int nid,
   unsigned long *start_pfn, unsigned long *end_pfn);
extern unsigned long find_min_pfn_with_active_regions(void);
extern void free_bootmem_with_active_regions(int nid,
      unsigned long max_low_pfn);
typedef int (*work_fn_t)(unsigned long, unsigned long, void *);
extern void work_with_active_regions(int nid, work_fn_t work_fn, void *data);
extern void sparse_memory_present_with_active_regions(int nid);
# 1051 "include/linux/mm.h"
extern int __attribute__ ((__section__(".meminit.text"))) early_pfn_to_nid(unsigned long pfn);






extern void set_dma_reserve(unsigned long new_dma_reserve);
extern void memmap_init_zone(unsigned long, int, unsigned long,
    unsigned long, enum memmap_context);
extern void setup_per_zone_pages_min(void);
extern void mem_init(void);
extern void __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) mmap_init(void);
extern void show_mem(void);
extern void si_meminfo(struct sysinfo * val);
extern void si_meminfo_node(struct sysinfo *val, int nid);
extern int after_bootmem;




static inline __attribute__((always_inline)) void setup_per_cpu_pageset(void) {}



extern atomic_long_t mmap_pages_allocated;


void vma_prio_tree_add(struct vm_area_struct *, struct vm_area_struct *old);
void vma_prio_tree_insert(struct vm_area_struct *, struct prio_tree_root *);
void vma_prio_tree_remove(struct vm_area_struct *, struct prio_tree_root *);
struct vm_area_struct *vma_prio_tree_next(struct vm_area_struct *vma,
 struct prio_tree_iter *iter);





static inline __attribute__((always_inline)) void vma_nonlinear_insert(struct vm_area_struct *vma,
     struct list_head *list)
{
 vma->shared.vm_set.parent = ((void *)0);
 list_add_tail(&vma->shared.vm_set.list, list);
}


extern int __vm_enough_memory(struct mm_struct *mm, long pages, int cap_sys_admin);
extern void vma_adjust(struct vm_area_struct *vma, unsigned long start,
 unsigned long end, unsigned long pgoff, struct vm_area_struct *insert);
extern struct vm_area_struct *vma_merge(struct mm_struct *,
 struct vm_area_struct *prev, unsigned long addr, unsigned long end,
 unsigned long vm_flags, struct anon_vma *, struct file *, unsigned long,
 struct mempolicy *);
extern struct anon_vma *find_mergeable_anon_vma(struct vm_area_struct *);
extern int split_vma(struct mm_struct *,
 struct vm_area_struct *, unsigned long addr, int new_below);
extern int insert_vm_struct(struct mm_struct *, struct vm_area_struct *);
extern void __vma_link_rb(struct mm_struct *, struct vm_area_struct *,
 struct rb_node **, struct rb_node *);
extern void unlink_file_vma(struct vm_area_struct *);
extern struct vm_area_struct *copy_vma(struct vm_area_struct **,
 unsigned long addr, unsigned long len, unsigned long pgoff);
extern void exit_mmap(struct mm_struct *);

extern int mm_take_all_locks(struct mm_struct *mm);
extern void mm_drop_all_locks(struct mm_struct *mm);



extern void added_exe_file_vma(struct mm_struct *mm);
extern void removed_exe_file_vma(struct mm_struct *mm);
# 1130 "include/linux/mm.h"
extern int may_expand_vm(struct mm_struct *mm, unsigned long npages);
extern int install_special_mapping(struct mm_struct *mm,
       unsigned long addr, unsigned long len,
       unsigned long flags, struct page **pages);

extern unsigned long get_unmapped_area(struct file *, unsigned long, unsigned long, unsigned long, unsigned long);

extern unsigned long do_mmap_pgoff(struct file *file, unsigned long addr,
 unsigned long len, unsigned long prot,
 unsigned long flag, unsigned long pgoff);
extern unsigned long mmap_region(struct file *file, unsigned long addr,
 unsigned long len, unsigned long flags,
 unsigned int vm_flags, unsigned long pgoff);

static inline __attribute__((always_inline)) unsigned long do_mmap(struct file *file, unsigned long addr,
 unsigned long len, unsigned long prot,
 unsigned long flag, unsigned long offset)
{
 unsigned long ret = -22;
 if ((offset + (((len)+((typeof(len))((1UL << 12))-1))&~((typeof(len))((1UL << 12))-1))) < offset)
  goto out;
 if (!(offset & ~(~((1 << 12) - 1))))
  ret = do_mmap_pgoff(file, addr, len, prot, flag, offset >> 12);
out:
 return ret;
}

extern int do_munmap(struct mm_struct *, unsigned long, size_t);

extern unsigned long do_brk(unsigned long, unsigned long);


extern unsigned long page_unuse(struct page *);
extern void truncate_inode_pages(struct address_space *, loff_t);
extern void truncate_inode_pages_range(struct address_space *,
           loff_t lstart, loff_t lend);


extern int filemap_fault(struct vm_area_struct *, struct vm_fault *);


int write_one_page(struct page *page, int wait);
void task_dirty_inc(struct task_struct *tsk);





int do_page_cache_readahead(struct address_space *mapping, struct file *filp,
   unsigned long offset, unsigned long nr_to_read);
int force_page_cache_readahead(struct address_space *mapping, struct file *filp,
   unsigned long offset, unsigned long nr_to_read);

void page_cache_sync_readahead(struct address_space *mapping,
          struct file_ra_state *ra,
          struct file *filp,
          unsigned long offset,
          unsigned long size);

void page_cache_async_readahead(struct address_space *mapping,
    struct file_ra_state *ra,
    struct file *filp,
    struct page *pg,
    unsigned long offset,
    unsigned long size);

unsigned long max_sane_readahead(unsigned long nr);


extern int expand_stack(struct vm_area_struct *vma, unsigned long address);



extern int expand_stack_downwards(struct vm_area_struct *vma,
      unsigned long address);


extern struct vm_area_struct * find_vma(struct mm_struct * mm, unsigned long addr);
extern struct vm_area_struct * find_vma_prev(struct mm_struct * mm, unsigned long addr,
          struct vm_area_struct **pprev);



static inline __attribute__((always_inline)) struct vm_area_struct * find_vma_intersection(struct mm_struct * mm, unsigned long start_addr, unsigned long end_addr)
{
 struct vm_area_struct * vma = find_vma(mm,start_addr);

 if (vma && end_addr <= vma->vm_start)
  vma = ((void *)0);
 return vma;
}

static inline __attribute__((always_inline)) unsigned long vma_pages(struct vm_area_struct *vma)
{
 return (vma->vm_end - vma->vm_start) >> 12;
}

pgprot_t vm_get_page_prot(unsigned long vm_flags);
struct vm_area_struct *find_extend_vma(struct mm_struct *, unsigned long addr);
int remap_pfn_range(struct vm_area_struct *, unsigned long addr,
   unsigned long pfn, unsigned long size, pgprot_t);
int vm_insert_page(struct vm_area_struct *, unsigned long addr, struct page *);
int vm_insert_pfn(struct vm_area_struct *vma, unsigned long addr,
   unsigned long pfn);
int vm_insert_mixed(struct vm_area_struct *vma, unsigned long addr,
   unsigned long pfn);

struct page *follow_page(struct vm_area_struct *, unsigned long address,
   unsigned int foll_flags);





typedef int (*pte_fn_t)(pte_t *pte, pgtable_t token, unsigned long addr,
   void *data);
extern int apply_to_page_range(struct mm_struct *mm, unsigned long address,
          unsigned long size, pte_fn_t fn, void *data);


void vm_stat_account(struct mm_struct *, unsigned long, struct file *, long);
# 1271 "include/linux/mm.h"
static inline __attribute__((always_inline)) void
kernel_map_pages(struct page *page, int numpages, int enable) {}
static inline __attribute__((always_inline)) void enable_debug_pagealloc(void)
{
}





extern struct vm_area_struct *get_gate_vma(struct task_struct *tsk);




int in_gate_area_no_task(unsigned long addr);



int drop_caches_sysctl_handler(struct ctl_table *, int, struct file *,
     void *, size_t *, loff_t *);
unsigned long shrink_slab(unsigned long scanned, gfp_t gfp_mask,
   unsigned long lru_pages);




extern int randomize_va_space;


const char * arch_vma_name(struct vm_area_struct *vma);
void print_vma_addr(char *prefix, unsigned long rip);

struct page *sparse_mem_map_populate(unsigned long pnum, int nid);
pgd_t *vmemmap_pgd_populate(unsigned long addr, int node);
pud_t *vmemmap_pud_populate(pgd_t *pgd, unsigned long addr, int node);
pmd_t *vmemmap_pmd_populate(pud_t *pud, unsigned long addr, int node);
pte_t *vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node);
void *vmemmap_alloc_block(unsigned long size, int node);
void vmemmap_verify(pte_t *, int, unsigned long, unsigned long);
int vmemmap_populate_basepages(struct page *start_page,
      unsigned long pages, int node);
int vmemmap_populate(struct page *start_page, unsigned long pages, int node);
void vmemmap_populate_print_last(void);

extern void *alloc_locked_buffer(size_t size);
extern void free_locked_buffer(void *buffer, size_t size);
extern void release_locked_buffer(void *buffer, size_t size);
# 7 "include/linux/scatterlist.h" 2



struct sg_table {
 struct scatterlist *sgl;
 unsigned int nents;
 unsigned int orig_nents;
};
# 55 "include/linux/scatterlist.h"
static inline __attribute__((always_inline)) void sg_assign_page(struct scatterlist *sg, struct page *page)
{
 unsigned long page_link = sg->page_link & 0x3;





 do { if ((unsigned long) page & 0x03) ; } while(0);




 sg->page_link = page_link | (unsigned long) page;
}
# 85 "include/linux/scatterlist.h"
static inline __attribute__((always_inline)) void sg_set_page(struct scatterlist *sg, struct page *page,
          unsigned int len, unsigned int offset)
{
 sg_assign_page(sg, page);
 sg->offset = offset;
 sg->length = len;
}

static inline __attribute__((always_inline)) struct page *sg_page(struct scatterlist *sg)
{




 return (struct page *)((sg)->page_link & ~0x3);
}
# 109 "include/linux/scatterlist.h"
static inline __attribute__((always_inline)) void sg_set_buf(struct scatterlist *sg, const void *buf,
         unsigned int buflen)
{
 sg_set_page(sg, (mem_map + ((((virt_to_phys(buf)) >> 12)) - ((((0UL)) + (1UL << 12)-1) >> 12))), buflen, ((unsigned long)(buf) & ~(~((1 << 12) - 1))));
}
# 131 "include/linux/scatterlist.h"
static inline __attribute__((always_inline)) void sg_chain(struct scatterlist *prv, unsigned int prv_nents,
       struct scatterlist *sgl)
{

 do {} while(0);





 prv[prv_nents - 1].offset = 0;
 prv[prv_nents - 1].length = 0;





 prv[prv_nents - 1].page_link = ((unsigned long) sgl | 0x01) & ~0x02;
}
# 160 "include/linux/scatterlist.h"
static inline __attribute__((always_inline)) void sg_mark_end(struct scatterlist *sg)
{






 sg->page_link |= 0x02;
 sg->page_link &= ~0x01;
}
# 182 "include/linux/scatterlist.h"
static inline __attribute__((always_inline)) dma_addr_t sg_phys(struct scatterlist *sg)
{
 return ((dma_addr_t)((unsigned long)((sg_page(sg)) - mem_map) + ((((0UL)) + (1UL << 12)-1) >> 12)) << 12) + sg->offset;
}
# 197 "include/linux/scatterlist.h"
static inline __attribute__((always_inline)) void *sg_virt(struct scatterlist *sg)
{
 return lowmem_page_address(sg_page(sg)) + sg->offset;
}

struct scatterlist *sg_next(struct scatterlist *);
struct scatterlist *sg_last(struct scatterlist *s, unsigned int);
void sg_init_table(struct scatterlist *, unsigned int);
void sg_init_one(struct scatterlist *, const void *, unsigned int);

typedef struct scatterlist *(sg_alloc_fn)(unsigned int, gfp_t);
typedef void (sg_free_fn)(struct scatterlist *, unsigned int);

void __sg_free_table(struct sg_table *, unsigned int, sg_free_fn *);
void sg_free_table(struct sg_table *);
int __sg_alloc_table(struct sg_table *, unsigned int, unsigned int, gfp_t,
       sg_alloc_fn *);
int sg_alloc_table(struct sg_table *, unsigned int, gfp_t);

size_t sg_copy_from_buffer(struct scatterlist *sgl, unsigned int nents,
      void *buf, size_t buflen);
size_t sg_copy_to_buffer(struct scatterlist *sgl, unsigned int nents,
    void *buf, size_t buflen);
# 246 "include/linux/scatterlist.h"
struct sg_mapping_iter {

 struct page *page;
 void *addr;
 size_t length;
 size_t consumed;


 struct scatterlist *__sg;
 unsigned int __nents;
 unsigned int __offset;
 unsigned int __flags;
};

void sg_miter_start(struct sg_mapping_iter *miter, struct scatterlist *sgl,
      unsigned int nents, unsigned int flags);
bool sg_miter_next(struct sg_mapping_iter *miter);
void sg_miter_stop(struct sg_mapping_iter *miter);
# 8 "include/linux/dma-mapping.h" 2



enum dma_data_direction {
 DMA_BIDIRECTIONAL = 0,
 DMA_TO_DEVICE = 1,
 DMA_FROM_DEVICE = 2,
 DMA_NONE = 3,
};

struct dma_map_ops {
 void* (*alloc_coherent)(struct device *dev, size_t size,
    dma_addr_t *dma_handle, gfp_t gfp);
 void (*free_coherent)(struct device *dev, size_t size,
         void *vaddr, dma_addr_t dma_handle);
 dma_addr_t (*map_page)(struct device *dev, struct page *page,
          unsigned long offset, size_t size,
          enum dma_data_direction dir,
          struct dma_attrs *attrs);
 void (*unmap_page)(struct device *dev, dma_addr_t dma_handle,
      size_t size, enum dma_data_direction dir,
      struct dma_attrs *attrs);
 int (*map_sg)(struct device *dev, struct scatterlist *sg,
        int nents, enum dma_data_direction dir,
        struct dma_attrs *attrs);
 void (*unmap_sg)(struct device *dev,
    struct scatterlist *sg, int nents,
    enum dma_data_direction dir,
    struct dma_attrs *attrs);
 void (*sync_single_for_cpu)(struct device *dev,
        dma_addr_t dma_handle, size_t size,
        enum dma_data_direction dir);
 void (*sync_single_for_device)(struct device *dev,
           dma_addr_t dma_handle, size_t size,
           enum dma_data_direction dir);
 void (*sync_single_range_for_cpu)(struct device *dev,
       dma_addr_t dma_handle,
       unsigned long offset,
       size_t size,
       enum dma_data_direction dir);
 void (*sync_single_range_for_device)(struct device *dev,
          dma_addr_t dma_handle,
          unsigned long offset,
          size_t size,
          enum dma_data_direction dir);
 void (*sync_sg_for_cpu)(struct device *dev,
    struct scatterlist *sg, int nents,
    enum dma_data_direction dir);
 void (*sync_sg_for_device)(struct device *dev,
       struct scatterlist *sg, int nents,
       enum dma_data_direction dir);
 int (*mapping_error)(struct device *dev, dma_addr_t dma_addr);
 int (*dma_supported)(struct device *dev, u64 mask);
 int is_phys;
};
# 87 "include/linux/dma-mapping.h"
static inline __attribute__((always_inline)) int valid_dma_direction(int dma_direction)
{
 return ((dma_direction == DMA_BIDIRECTIONAL) ||
  (dma_direction == DMA_TO_DEVICE) ||
  (dma_direction == DMA_FROM_DEVICE));
}

static inline __attribute__((always_inline)) int is_device_dma_capable(struct device *dev)
{
 return dev->dma_mask != ((void *)0) && *dev->dma_mask != 0x0ULL;
}

static inline __attribute__((always_inline)) int is_buffer_dma_capable(u64 mask, dma_addr_t addr, size_t size)
{
 return addr + size <= mask;
}


# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/dma-mapping.h" 1






void *dma_alloc_noncoherent(struct device *dev, size_t size,
      dma_addr_t *dma_handle, gfp_t flag);

void dma_free_noncoherent(struct device *dev, size_t size,
    void *vaddr, dma_addr_t dma_handle);

void *dma_alloc_coherent(struct device *dev, size_t size,
      dma_addr_t *dma_handle, gfp_t flag);

void dma_free_coherent(struct device *dev, size_t size,
    void *vaddr, dma_addr_t dma_handle);

extern dma_addr_t dma_map_single(struct device *dev, void *ptr, size_t size,
 enum dma_data_direction direction);
extern void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
 size_t size, enum dma_data_direction direction);
extern int dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
 enum dma_data_direction direction);
extern dma_addr_t dma_map_page(struct device *dev, struct page *page,
 unsigned long offset, size_t size, enum dma_data_direction direction);

static inline __attribute__((always_inline)) void dma_unmap_page(struct device *dev, dma_addr_t dma_address,
 size_t size, enum dma_data_direction direction)
{
 dma_unmap_single(dev, dma_address, size, direction);
}

extern void dma_unmap_sg(struct device *dev, struct scatterlist *sg,
 int nhwentries, enum dma_data_direction direction);
extern void dma_sync_single_for_cpu(struct device *dev, dma_addr_t dma_handle,
 size_t size, enum dma_data_direction direction);
extern void dma_sync_single_for_device(struct device *dev,
 dma_addr_t dma_handle, size_t size, enum dma_data_direction direction);
extern void dma_sync_single_range_for_cpu(struct device *dev,
 dma_addr_t dma_handle, unsigned long offset, size_t size,
 enum dma_data_direction direction);
extern void dma_sync_single_range_for_device(struct device *dev,
 dma_addr_t dma_handle, unsigned long offset, size_t size,
 enum dma_data_direction direction);
extern void dma_sync_sg_for_cpu(struct device *dev, struct scatterlist *sg,
 int nelems, enum dma_data_direction direction);
extern void dma_sync_sg_for_device(struct device *dev, struct scatterlist *sg,
 int nelems, enum dma_data_direction direction);
extern int dma_mapping_error(struct device *dev, dma_addr_t dma_addr);
extern int dma_supported(struct device *dev, u64 mask);

static inline __attribute__((always_inline)) int
dma_set_mask(struct device *dev, u64 mask)
{
 if(!dev->dma_mask || !dma_supported(dev, mask))
  return -5;

 *dev->dma_mask = mask;

 return 0;
}

static inline __attribute__((always_inline)) int
dma_get_cache_alignment(void)
{

 return 128;
}

extern int dma_is_consistent(struct device *dev, dma_addr_t dma_addr);

extern void dma_cache_sync(struct device *dev, void *vaddr, size_t size,
        enum dma_data_direction direction);
# 106 "include/linux/dma-mapping.h" 2
# 114 "include/linux/dma-mapping.h"
static inline __attribute__((always_inline)) u64 dma_get_mask(struct device *dev)
{
 if (dev && dev->dma_mask && *dev->dma_mask)
  return *dev->dma_mask;
 return (((32) == 64) ? ~0ULL : ((1ULL<<(32))-1));
}

extern u64 dma_get_required_mask(struct device *dev);

static inline __attribute__((always_inline)) unsigned int dma_get_max_seg_size(struct device *dev)
{
 return dev->dma_parms ? dev->dma_parms->max_segment_size : 65536;
}

static inline __attribute__((always_inline)) unsigned int dma_set_max_seg_size(struct device *dev,
      unsigned int size)
{
 if (dev->dma_parms) {
  dev->dma_parms->max_segment_size = size;
  return 0;
 } else
  return -5;
}

static inline __attribute__((always_inline)) unsigned long dma_get_seg_boundary(struct device *dev)
{
 return dev->dma_parms ?
  dev->dma_parms->segment_boundary_mask : 0xffffffff;
}

static inline __attribute__((always_inline)) int dma_set_seg_boundary(struct device *dev, unsigned long mask)
{
 if (dev->dma_parms) {
  dev->dma_parms->segment_boundary_mask = mask;
  return 0;
 } else
  return -5;
}
# 160 "include/linux/dma-mapping.h"
static inline __attribute__((always_inline)) int
dma_declare_coherent_memory(struct device *dev, dma_addr_t bus_addr,
       dma_addr_t device_addr, size_t size, int flags)
{
 return 0;
}

static inline __attribute__((always_inline)) void
dma_release_declared_memory(struct device *dev)
{
}

static inline __attribute__((always_inline)) void *
dma_mark_declared_memory_occupied(struct device *dev,
      dma_addr_t device_addr, size_t size)
{
 return ERR_PTR(-16);
}





extern void *dmam_alloc_coherent(struct device *dev, size_t size,
     dma_addr_t *dma_handle, gfp_t gfp);
extern void dmam_free_coherent(struct device *dev, size_t size, void *vaddr,
          dma_addr_t dma_handle);
extern void *dmam_alloc_noncoherent(struct device *dev, size_t size,
        dma_addr_t *dma_handle, gfp_t gfp);
extern void dmam_free_noncoherent(struct device *dev, size_t size, void *vaddr,
      dma_addr_t dma_handle);






static inline __attribute__((always_inline)) int dmam_declare_coherent_memory(struct device *dev,
    dma_addr_t bus_addr, dma_addr_t device_addr,
    size_t size, gfp_t gfp)
{
 return 0;
}

static inline __attribute__((always_inline)) void dmam_release_declared_memory(struct device *dev)
{
}



struct dma_attrs;
# 27 "include/linux/dmaengine.h" 2






typedef s32 dma_cookie_t;
# 43 "include/linux/dmaengine.h"
enum dma_status {
 DMA_SUCCESS,
 DMA_IN_PROGRESS,
 DMA_ERROR,
};




enum dma_transaction_type {
 DMA_MEMCPY,
 DMA_XOR,
 DMA_PQ_XOR,
 DMA_DUAL_XOR,
 DMA_PQ_UPDATE,
 DMA_ZERO_SUM,
 DMA_PQ_ZERO_SUM,
 DMA_MEMSET,
 DMA_MEMCPY_CRC32C,
 DMA_INTERRUPT,
 DMA_PRIVATE,
 DMA_SLAVE,
};
# 86 "include/linux/dmaengine.h"
enum dma_ctrl_flags {
 DMA_PREP_INTERRUPT = (1 << 0),
 DMA_CTRL_ACK = (1 << 1),
 DMA_COMPL_SKIP_SRC_UNMAP = (1 << 2),
 DMA_COMPL_SKIP_DEST_UNMAP = (1 << 3),
 DMA_COMPL_SRC_UNMAP_SINGLE = (1 << 4),
 DMA_COMPL_DEST_UNMAP_SINGLE = (1 << 5),
};





typedef struct { unsigned long bits[((((DMA_SLAVE + 1)) + (8 * sizeof(long)) - 1) / (8 * sizeof(long)))]; } dma_cap_mask_t;







struct dma_chan_percpu {

 unsigned long memcpy_count;
 unsigned long bytes_transferred;
};
# 125 "include/linux/dmaengine.h"
struct dma_chan {
 struct dma_device *device;
 dma_cookie_t cookie;


 int chan_id;
 struct dma_chan_dev *dev;

 struct list_head device_node;
 struct dma_chan_percpu *local;
 int client_count;
 int table_count;
 void *private;
};
# 147 "include/linux/dmaengine.h"
struct dma_chan_dev {
 struct dma_chan *chan;
 struct device device;
 int dev_id;
 atomic_t *idr_ref;
};

static inline __attribute__((always_inline)) const char *dma_chan_name(struct dma_chan *chan)
{
 return dev_name(&chan->dev->device);
}

void dma_chan_cleanup(struct kref *kref);
# 172 "include/linux/dmaengine.h"
typedef bool (*dma_filter_fn)(struct dma_chan *chan, void *filter_param);

typedef void (*dma_async_tx_callback)(void *dma_async_param);
# 194 "include/linux/dmaengine.h"
struct dma_async_tx_descriptor {
 dma_cookie_t cookie;
 enum dma_ctrl_flags flags;
 dma_addr_t phys;
 struct list_head tx_list;
 struct dma_chan *chan;
 dma_cookie_t (*tx_submit)(struct dma_async_tx_descriptor *tx);
 dma_async_tx_callback callback;
 void *callback_param;
 struct dma_async_tx_descriptor *next;
 struct dma_async_tx_descriptor *parent;
 spinlock_t lock;
};
# 231 "include/linux/dmaengine.h"
struct dma_device {

 unsigned int chancnt;
 unsigned int privatecnt;
 struct list_head channels;
 struct list_head global_node;
 dma_cap_mask_t cap_mask;
 int max_xor;

 int dev_id;
 struct device *dev;

 int (*device_alloc_chan_resources)(struct dma_chan *chan);
 void (*device_free_chan_resources)(struct dma_chan *chan);

 struct dma_async_tx_descriptor *(*device_prep_dma_memcpy)(
  struct dma_chan *chan, dma_addr_t dest, dma_addr_t src,
  size_t len, unsigned long flags);
 struct dma_async_tx_descriptor *(*device_prep_dma_xor)(
  struct dma_chan *chan, dma_addr_t dest, dma_addr_t *src,
  unsigned int src_cnt, size_t len, unsigned long flags);
 struct dma_async_tx_descriptor *(*device_prep_dma_zero_sum)(
  struct dma_chan *chan, dma_addr_t *src, unsigned int src_cnt,
  size_t len, u32 *result, unsigned long flags);
 struct dma_async_tx_descriptor *(*device_prep_dma_memset)(
  struct dma_chan *chan, dma_addr_t dest, int value, size_t len,
  unsigned long flags);
 struct dma_async_tx_descriptor *(*device_prep_dma_interrupt)(
  struct dma_chan *chan, unsigned long flags);

 struct dma_async_tx_descriptor *(*device_prep_slave_sg)(
  struct dma_chan *chan, struct scatterlist *sgl,
  unsigned int sg_len, enum dma_data_direction direction,
  unsigned long flags);
 void (*device_terminate_all)(struct dma_chan *chan);

 enum dma_status (*device_is_tx_complete)(struct dma_chan *chan,
   dma_cookie_t cookie, dma_cookie_t *last,
   dma_cookie_t *used);
 void (*device_issue_pending)(struct dma_chan *chan);
};







static inline __attribute__((always_inline)) void dmaengine_get(void)
{
}
static inline __attribute__((always_inline)) void dmaengine_put(void)
{
}






static inline __attribute__((always_inline)) void net_dmaengine_get(void)
{
}
static inline __attribute__((always_inline)) void net_dmaengine_put(void)
{
}







static inline __attribute__((always_inline)) void async_dmaengine_get(void)
{
}
static inline __attribute__((always_inline)) void async_dmaengine_put(void)
{
}
static inline __attribute__((always_inline)) struct dma_chan *
async_dma_find_channel(enum dma_transaction_type type)
{
 return ((void *)0);
}


dma_cookie_t dma_async_memcpy_buf_to_buf(struct dma_chan *chan,
 void *dest, void *src, size_t len);
dma_cookie_t dma_async_memcpy_buf_to_pg(struct dma_chan *chan,
 struct page *page, unsigned int offset, void *kdata, size_t len);
dma_cookie_t dma_async_memcpy_pg_to_pg(struct dma_chan *chan,
 struct page *dest_pg, unsigned int dest_off, struct page *src_pg,
 unsigned int src_off, size_t len);
void dma_async_tx_descriptor_init(struct dma_async_tx_descriptor *tx,
 struct dma_chan *chan);

static inline __attribute__((always_inline)) void async_tx_ack(struct dma_async_tx_descriptor *tx)
{
 tx->flags |= DMA_CTRL_ACK;
}

static inline __attribute__((always_inline)) void async_tx_clear_ack(struct dma_async_tx_descriptor *tx)
{
 tx->flags &= ~DMA_CTRL_ACK;
}

static inline __attribute__((always_inline)) bool async_tx_test_ack(struct dma_async_tx_descriptor *tx)
{
 return (tx->flags & DMA_CTRL_ACK) == DMA_CTRL_ACK;
}


static inline __attribute__((always_inline)) int __first_dma_cap(const dma_cap_mask_t *srcp)
{
 return ({ int __min1 = ((DMA_SLAVE + 1)); int __min2 = (find_next_bit((srcp->bits), ((DMA_SLAVE + 1)), 0)); __min1 < __min2 ? __min1: __min2; });

}


static inline __attribute__((always_inline)) int __next_dma_cap(int n, const dma_cap_mask_t *srcp)
{
 return ({ int __min1 = ((DMA_SLAVE + 1)); int __min2 = (find_next_bit(srcp->bits, (DMA_SLAVE + 1), n+1)); __min1 < __min2 ? __min1: __min2; });

}


static inline __attribute__((always_inline)) void
__dma_cap_set(enum dma_transaction_type tx_type, dma_cap_mask_t *dstp)
{
 set_bit(tx_type, dstp->bits);
}


static inline __attribute__((always_inline)) void
__dma_cap_clear(enum dma_transaction_type tx_type, dma_cap_mask_t *dstp)
{
 clear_bit(tx_type, dstp->bits);
}


static inline __attribute__((always_inline)) void __dma_cap_zero(dma_cap_mask_t *dstp)
{
 bitmap_zero(dstp->bits, (DMA_SLAVE + 1));
}


static inline __attribute__((always_inline)) int
__dma_has_cap(enum dma_transaction_type tx_type, dma_cap_mask_t *srcp)
{
 return test_bit(tx_type, srcp->bits);
}
# 395 "include/linux/dmaengine.h"
static inline __attribute__((always_inline)) void dma_async_issue_pending(struct dma_chan *chan)
{
 chan->device->device_issue_pending(chan);
}
# 413 "include/linux/dmaengine.h"
static inline __attribute__((always_inline)) enum dma_status dma_async_is_tx_complete(struct dma_chan *chan,
 dma_cookie_t cookie, dma_cookie_t *last, dma_cookie_t *used)
{
 return chan->device->device_is_tx_complete(chan, cookie, last, used);
}
# 431 "include/linux/dmaengine.h"
static inline __attribute__((always_inline)) enum dma_status dma_async_is_complete(dma_cookie_t cookie,
   dma_cookie_t last_complete, dma_cookie_t last_used)
{
 if (last_complete <= last_used) {
  if ((cookie <= last_complete) || (cookie > last_used))
   return DMA_SUCCESS;
 } else {
  if ((cookie <= last_complete) && (cookie > last_used))
   return DMA_SUCCESS;
 }
 return DMA_IN_PROGRESS;
}

enum dma_status dma_sync_wait(struct dma_chan *chan, dma_cookie_t cookie);




static inline __attribute__((always_inline)) enum dma_status dma_wait_for_async_tx(struct dma_async_tx_descriptor *tx)
{
 return DMA_SUCCESS;
}
static inline __attribute__((always_inline)) void dma_issue_pending_all(void)
{
 do { } while (0);
}




int dma_async_device_register(struct dma_device *device);
void dma_async_device_unregister(struct dma_device *device);
void dma_run_dependencies(struct dma_async_tx_descriptor *tx);
struct dma_chan *dma_find_channel(enum dma_transaction_type tx_type);

struct dma_chan *__dma_request_channel(dma_cap_mask_t *mask, dma_filter_fn fn, void *fn_param);
void dma_release_channel(struct dma_chan *chan);



struct dma_page_list {
 char *base_address;
 int nr_pages;
 struct page **pages;
};

struct dma_pinned_list {
 int nr_iovecs;
 struct dma_page_list page_list[0];
};

struct dma_pinned_list *dma_pin_iovec_pages(struct iovec *iov, size_t len);
void dma_unpin_iovec_pages(struct dma_pinned_list* pinned_list);

dma_cookie_t dma_memcpy_to_iovec(struct dma_chan *chan, struct iovec *iov,
 struct dma_pinned_list *pinned_list, unsigned char *kdata, size_t len);
dma_cookie_t dma_memcpy_pg_to_iovec(struct dma_chan *chan, struct iovec *iov,
 struct dma_pinned_list *pinned_list, struct page *page,
 unsigned int offset, size_t len);
# 30 "include/linux/skbuff.h" 2
# 1 "include/linux/hrtimer.h" 1
# 19 "include/linux/hrtimer.h"
# 1 "include/linux/ktime.h" 1
# 25 "include/linux/ktime.h"
# 1 "include/linux/jiffies.h" 1







# 1 "include/linux/timex.h" 1
# 64 "include/linux/timex.h"
struct timex {
 unsigned int modes;
 long offset;
 long freq;
 long maxerror;
 long esterror;
 int status;
 long constant;
 long precision;
 long tolerance;


 struct timeval time;
 long tick;

 long ppsfreq;
 long jitter;
 int shift;
 long stabil;
 long jitcnt;
 long calcnt;
 long errcnt;
 long stbcnt;

 int tai;

 int :32; int :32; int :32; int :32;
 int :32; int :32; int :32; int :32;
 int :32; int :32; int :32;
};
# 170 "include/linux/timex.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/timex.h" 1
# 34 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/timex.h"
typedef unsigned int cycles_t;

static inline __attribute__((always_inline)) cycles_t get_cycles(void)
{
 return 0;
}
# 171 "include/linux/timex.h" 2
# 210 "include/linux/timex.h"
extern unsigned long tick_usec;
extern unsigned long tick_nsec;
extern int tickadj;




extern int time_status;
extern long time_maxerror;
extern long time_esterror;

extern long time_adjust;

extern void ntp_init(void);
extern void ntp_clear(void);





static inline __attribute__((always_inline)) int ntp_synced(void)
{
 return !(time_status & 0x0040);
}
# 252 "include/linux/timex.h"
extern u64 tick_length;

extern void second_overflow(void);
extern void update_ntp_one_tick(void);
extern int do_adjtimex(struct timex *);




int read_current_timer(unsigned long *timer_val);
# 9 "include/linux/jiffies.h" 2
# 85 "include/linux/jiffies.h"
extern u64 __attribute__((section(".dram-gen"))) jiffies_64;
extern unsigned long volatile __attribute__((section(".dram-gen"))) jiffies;


u64 get_jiffies_64(void);
# 187 "include/linux/jiffies.h"
extern unsigned long preset_lpj;
# 300 "include/linux/jiffies.h"
extern unsigned int jiffies_to_msecs(const unsigned long j);
extern unsigned int jiffies_to_usecs(const unsigned long j);
extern unsigned long msecs_to_jiffies(const unsigned int m);
extern unsigned long usecs_to_jiffies(const unsigned int u);
extern unsigned long timespec_to_jiffies(const struct timespec *value);
extern void jiffies_to_timespec(const unsigned long jiffies,
    struct timespec *value);
extern unsigned long timeval_to_jiffies(const struct timeval *value);
extern void jiffies_to_timeval(const unsigned long jiffies,
          struct timeval *value);
extern clock_t jiffies_to_clock_t(long x);
extern unsigned long clock_t_to_jiffies(unsigned long x);
extern u64 jiffies_64_to_clock_t(u64 x);
extern u64 nsec_to_clock_t(u64 x);
# 26 "include/linux/ktime.h" 2
# 46 "include/linux/ktime.h"
union ktime {
 s64 tv64;

 struct {

 s32 sec, nsec;



 } tv;

};

typedef union ktime ktime_t;
# 151 "include/linux/ktime.h"
static inline __attribute__((always_inline)) ktime_t ktime_set(const long secs, const unsigned long nsecs)
{
 return (ktime_t) { .tv = { .sec = secs, .nsec = nsecs } };
}
# 163 "include/linux/ktime.h"
static inline __attribute__((always_inline)) ktime_t ktime_sub(const ktime_t lhs, const ktime_t rhs)
{
 ktime_t res;

 res.tv64 = lhs.tv64 - rhs.tv64;
 if (res.tv.nsec < 0)
  res.tv.nsec += 1000000000L;

 return res;
}
# 181 "include/linux/ktime.h"
static inline __attribute__((always_inline)) ktime_t ktime_add(const ktime_t add1, const ktime_t add2)
{
 ktime_t res;

 res.tv64 = add1.tv64 + add2.tv64;
# 194 "include/linux/ktime.h"
 if (res.tv.nsec >= 1000000000L)
  res.tv64 += (u32)-1000000000L;

 return res;
}
# 207 "include/linux/ktime.h"
extern ktime_t ktime_add_ns(const ktime_t kt, u64 nsec);
# 216 "include/linux/ktime.h"
extern ktime_t ktime_sub_ns(const ktime_t kt, u64 nsec);







static inline __attribute__((always_inline)) ktime_t timespec_to_ktime(const struct timespec ts)
{
 return (ktime_t) { .tv = { .sec = (s32)ts.tv_sec,
          .nsec = (s32)ts.tv_nsec } };
}







static inline __attribute__((always_inline)) ktime_t timeval_to_ktime(const struct timeval tv)
{
 return (ktime_t) { .tv = { .sec = (s32)tv.tv_sec,
       .nsec = (s32)tv.tv_usec * 1000 } };
}







static inline __attribute__((always_inline)) struct timespec ktime_to_timespec(const ktime_t kt)
{
 return (struct timespec) { .tv_sec = (time_t) kt.tv.sec,
       .tv_nsec = (long) kt.tv.nsec };
}







static inline __attribute__((always_inline)) struct timeval ktime_to_timeval(const ktime_t kt)
{
 return (struct timeval) {
  .tv_sec = (time_t) kt.tv.sec,
  .tv_usec = (suseconds_t) (kt.tv.nsec / 1000L) };
}







static inline __attribute__((always_inline)) s64 ktime_to_ns(const ktime_t kt)
{
 return (s64) kt.tv.sec * 1000000000L + kt.tv.nsec;
}
# 287 "include/linux/ktime.h"
static inline __attribute__((always_inline)) int ktime_equal(const ktime_t cmp1, const ktime_t cmp2)
{
 return cmp1.tv64 == cmp2.tv64;
}

static inline __attribute__((always_inline)) s64 ktime_to_us(const ktime_t kt)
{
 struct timeval tv = ktime_to_timeval(kt);
 return (s64) tv.tv_sec * 1000000L + tv.tv_usec;
}

static inline __attribute__((always_inline)) s64 ktime_us_delta(const ktime_t later, const ktime_t earlier)
{
       return ktime_to_us(ktime_sub(later, earlier));
}

static inline __attribute__((always_inline)) ktime_t ktime_add_us(const ktime_t kt, const u64 usec)
{
 return ktime_add_ns(kt, usec * 1000);
}

static inline __attribute__((always_inline)) ktime_t ktime_sub_us(const ktime_t kt, const u64 usec)
{
 return ktime_sub_ns(kt, usec * 1000);
}

extern ktime_t ktime_add_safe(const ktime_t lhs, const ktime_t rhs);
# 325 "include/linux/ktime.h"
extern void ktime_get_ts(struct timespec *ts);




static inline __attribute__((always_inline)) ktime_t ns_to_ktime(u64 ns)
{
 static const ktime_t ktime_zero = { .tv64 = 0 };
 return ktime_add_ns(ktime_zero, ns);
}
# 20 "include/linux/hrtimer.h" 2






struct hrtimer_clock_base;
struct hrtimer_cpu_base;




enum hrtimer_mode {
 HRTIMER_MODE_ABS,
 HRTIMER_MODE_REL,
};




enum hrtimer_restart {
 HRTIMER_NORESTART,
 HRTIMER_RESTART,
};
# 100 "include/linux/hrtimer.h"
struct hrtimer {
 struct rb_node node;
 ktime_t _expires;
 ktime_t _softexpires;
 enum hrtimer_restart (*function)(struct hrtimer *);
 struct hrtimer_clock_base *base;
 unsigned long state;
 struct list_head cb_entry;





};
# 122 "include/linux/hrtimer.h"
struct hrtimer_sleeper {
 struct hrtimer timer;
 struct task_struct *task;
};
# 139 "include/linux/hrtimer.h"
struct hrtimer_clock_base {
 struct hrtimer_cpu_base *cpu_base;
 clockid_t index;
 struct rb_root active;
 struct rb_node *first;
 ktime_t resolution;
 ktime_t (*get_time)(void);
 ktime_t softirq_time;



};
# 168 "include/linux/hrtimer.h"
struct hrtimer_cpu_base {
 spinlock_t lock;
 struct hrtimer_clock_base clock_base[2];





};

static inline __attribute__((always_inline)) void hrtimer_set_expires(struct hrtimer *timer, ktime_t time)
{
 timer->_expires = time;
 timer->_softexpires = time;
}

static inline __attribute__((always_inline)) void hrtimer_set_expires_range(struct hrtimer *timer, ktime_t time, ktime_t delta)
{
 timer->_softexpires = time;
 timer->_expires = ktime_add_safe(time, delta);
}

static inline __attribute__((always_inline)) void hrtimer_set_expires_range_ns(struct hrtimer *timer, ktime_t time, unsigned long delta)
{
 timer->_softexpires = time;
 timer->_expires = ktime_add_safe(time, ns_to_ktime(delta));
}

static inline __attribute__((always_inline)) void hrtimer_set_expires_tv64(struct hrtimer *timer, s64 tv64)
{
 timer->_expires.tv64 = tv64;
 timer->_softexpires.tv64 = tv64;
}

static inline __attribute__((always_inline)) void hrtimer_add_expires(struct hrtimer *timer, ktime_t time)
{
 timer->_expires = ktime_add_safe(timer->_expires, time);
 timer->_softexpires = ktime_add_safe(timer->_softexpires, time);
}

static inline __attribute__((always_inline)) void hrtimer_add_expires_ns(struct hrtimer *timer, u64 ns)
{
 timer->_expires = ktime_add_ns(timer->_expires, ns);
 timer->_softexpires = ktime_add_ns(timer->_softexpires, ns);
}

static inline __attribute__((always_inline)) ktime_t hrtimer_get_expires(const struct hrtimer *timer)
{
 return timer->_expires;
}

static inline __attribute__((always_inline)) ktime_t hrtimer_get_softexpires(const struct hrtimer *timer)
{
 return timer->_softexpires;
}

static inline __attribute__((always_inline)) s64 hrtimer_get_expires_tv64(const struct hrtimer *timer)
{
 return timer->_expires.tv64;
}
static inline __attribute__((always_inline)) s64 hrtimer_get_softexpires_tv64(const struct hrtimer *timer)
{
 return timer->_softexpires.tv64;
}

static inline __attribute__((always_inline)) s64 hrtimer_get_expires_ns(const struct hrtimer *timer)
{
 return ktime_to_ns(timer->_expires);
}

static inline __attribute__((always_inline)) ktime_t hrtimer_expires_remaining(const struct hrtimer *timer)
{
    return ktime_sub(timer->_expires, timer->base->get_time());
}
# 286 "include/linux/hrtimer.h"
static inline __attribute__((always_inline)) void clock_was_set(void) { }
static inline __attribute__((always_inline)) void hrtimer_peek_ahead_timers(void) { }

static inline __attribute__((always_inline)) void hres_timers_resume(void) { }





static inline __attribute__((always_inline)) ktime_t hrtimer_cb_get_time(struct hrtimer *timer)
{
 return timer->base->softirq_time;
}

static inline __attribute__((always_inline)) int hrtimer_is_hres_active(struct hrtimer *timer)
{
 return 0;
}


extern ktime_t ktime_get(void);
extern ktime_t ktime_get_real(void);


extern __attribute__((__section__(".data" ""))) __typeof__(struct tick_device) per_cpu__tick_cpu_device;





extern void hrtimer_init(struct hrtimer *timer, clockid_t which_clock,
    enum hrtimer_mode mode);







static inline __attribute__((always_inline)) void hrtimer_init_on_stack(struct hrtimer *timer,
      clockid_t which_clock,
      enum hrtimer_mode mode)
{
 hrtimer_init(timer, which_clock, mode);
}
static inline __attribute__((always_inline)) void destroy_hrtimer_on_stack(struct hrtimer *timer) { }



extern int hrtimer_start(struct hrtimer *timer, ktime_t tim,
    const enum hrtimer_mode mode);
extern int hrtimer_start_range_ns(struct hrtimer *timer, ktime_t tim,
   unsigned long range_ns, const enum hrtimer_mode mode);
extern int
__hrtimer_start_range_ns(struct hrtimer *timer, ktime_t tim,
    unsigned long delta_ns,
    const enum hrtimer_mode mode, int wakeup);

extern int hrtimer_cancel(struct hrtimer *timer);
extern int hrtimer_try_to_cancel(struct hrtimer *timer);

static inline __attribute__((always_inline)) int hrtimer_start_expires(struct hrtimer *timer,
      enum hrtimer_mode mode)
{
 unsigned long delta;
 ktime_t soft, hard;
 soft = hrtimer_get_softexpires(timer);
 hard = hrtimer_get_expires(timer);
 delta = ktime_to_ns(ktime_sub(hard, soft));
 return hrtimer_start_range_ns(timer, soft, delta, mode);
}

static inline __attribute__((always_inline)) int hrtimer_restart(struct hrtimer *timer)
{
 return hrtimer_start_expires(timer, HRTIMER_MODE_ABS);
}


extern ktime_t hrtimer_get_remaining(const struct hrtimer *timer);
extern int hrtimer_get_res(const clockid_t which_clock, struct timespec *tp);

extern ktime_t hrtimer_get_next_event(void);





static inline __attribute__((always_inline)) int hrtimer_active(const struct hrtimer *timer)
{
 return timer->state != 0x00;
}




static inline __attribute__((always_inline)) int hrtimer_is_queued(struct hrtimer *timer)
{
 return timer->state & 0x01;
}





static inline __attribute__((always_inline)) int hrtimer_callback_running(struct hrtimer *timer)
{
 return timer->state & 0x02;
}


extern u64
hrtimer_forward(struct hrtimer *timer, ktime_t now, ktime_t interval);


static inline __attribute__((always_inline)) u64 hrtimer_forward_now(struct hrtimer *timer,
          ktime_t interval)
{
 return hrtimer_forward(timer, timer->base->get_time(), interval);
}


extern long hrtimer_nanosleep(struct timespec *rqtp,
         struct timespec *rmtp,
         const enum hrtimer_mode mode,
         const clockid_t clockid);
extern long hrtimer_nanosleep_restart(struct restart_block *restart_block);

extern void hrtimer_init_sleeper(struct hrtimer_sleeper *sl,
     struct task_struct *tsk);

extern int schedule_hrtimeout_range(ktime_t *expires, unsigned long delta,
      const enum hrtimer_mode mode);
extern int schedule_hrtimeout(ktime_t *expires, const enum hrtimer_mode mode);


extern void hrtimer_run_queues(void);
extern void hrtimer_run_pending(void);


extern void __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) hrtimers_init(void);


extern u64 ktime_divns(const ktime_t kt, s64 div);





extern void sysrq_timer_list_show(void);
# 464 "include/linux/hrtimer.h"
static inline __attribute__((always_inline)) void timer_stats_account_hrtimer(struct hrtimer *timer)
{
}

static inline __attribute__((always_inline)) void timer_stats_hrtimer_set_start_info(struct hrtimer *timer)
{
}

static inline __attribute__((always_inline)) void timer_stats_hrtimer_clear_start_info(struct hrtimer *timer)
{
}
# 31 "include/linux/skbuff.h" 2

# 1 "include/net/rtl/rtk_vlan.h" 1
# 9 "include/net/rtl/rtk_vlan.h"
# 1 "include/net/rtl/rtl_types.h" 1
# 242 "include/net/rtl/rtl_types.h"
# 1 "include/linux/version.h" 1
# 243 "include/net/rtl/rtl_types.h" 2



# 1 "include/linux/ctype.h" 1
# 18 "include/linux/ctype.h"
extern unsigned char _ctype[];
# 37 "include/linux/ctype.h"
static inline __attribute__((always_inline)) unsigned char __tolower(unsigned char c)
{
 if ((((_ctype[(int)(unsigned char)(c)])&(0x01)) != 0))
  c -= 'A'-'a';
 return c;
}

static inline __attribute__((always_inline)) unsigned char __toupper(unsigned char c)
{
 if ((((_ctype[(int)(unsigned char)(c)])&(0x02)) != 0))
  c -= 'a'-'A';
 return c;
}
# 247 "include/net/rtl/rtl_types.h" 2
# 381 "include/net/rtl/rtl_types.h"
typedef unsigned long long uint64;
typedef long long int64;
typedef unsigned int uint32;




typedef int int32;

typedef unsigned short uint16;
typedef short int16;
typedef unsigned char uint8;
typedef char int8;
# 408 "include/net/rtl/rtl_types.h"
typedef uint32 memaddr;
typedef uint32 ipaddr_t;
typedef struct {
    uint16 mac47_32;
    uint16 mac31_16;
    uint16 mac15_0;
} macaddr_t;


typedef struct ether_addr_s {
 uint8 octet[6];
} ether_addr_t;
# 10 "include/net/rtl/rtk_vlan.h" 2

struct vlan_info {
 int global_vlan;
 int is_lan;
 int vlan;
 int tag;
 int id;
 int pri;
 int cfi;
};

struct _vlan_tag {
 unsigned short tpid;
 unsigned short pci;
};

struct vlan_tag {
 union
 {
  unsigned long v;
  struct _vlan_tag f;
 };
};
# 33 "include/linux/skbuff.h" 2
# 107 "include/linux/skbuff.h"
struct net_device;
struct scatterlist;
struct pipe_inode_info;


struct nf_conntrack {
 atomic_t use;
};
# 127 "include/linux/skbuff.h"
struct sk_buff_head {

 struct sk_buff *next;
 struct sk_buff *prev;

 __u32 qlen;
 spinlock_t lock;
};

struct sk_buff;




typedef struct skb_frag_struct skb_frag_t;

struct skb_frag_struct {
 struct page *page;
 __u32 page_offset;
 __u32 size;
};
# 174 "include/linux/skbuff.h"
struct skb_shared_hwtstamps {
 ktime_t hwtstamp;
 ktime_t syststamp;
};
# 190 "include/linux/skbuff.h"
union skb_shared_tx {
 struct {
  __u8 hardware:1,
   software:1,
   in_progress:1;
 };
 __u8 flags;
};




struct skb_shared_info {
 atomic_t dataref;
 unsigned short nr_frags;
 unsigned short gso_size;

 unsigned short gso_segs;
 unsigned short gso_type;
 __be32 ip6_frag_id;
 union skb_shared_tx tx_flags;

 unsigned int num_dma_maps;

 struct sk_buff *frag_list;
 struct skb_shared_hwtstamps hwtstamps;
 skb_frag_t frags[(65536/(1UL << 12) + 2)];

 dma_addr_t dma_maps[(65536/(1UL << 12) + 2) + 1];

};
# 237 "include/linux/skbuff.h"
enum {
 SKB_FCLONE_UNAVAILABLE,
 SKB_FCLONE_ORIG,
 SKB_FCLONE_CLONE,
};

enum {
 SKB_GSO_TCPV4 = 1 << 0,
 SKB_GSO_UDP = 1 << 1,


 SKB_GSO_DODGY = 1 << 2,


 SKB_GSO_TCP_ECN = 1 << 3,

 SKB_GSO_TCPV6 = 1 << 4,

 SKB_GSO_FCOE = 1 << 5,
};
# 265 "include/linux/skbuff.h"
typedef unsigned char *sk_buff_data_t;
# 327 "include/linux/skbuff.h"
struct sk_buff {

 struct sk_buff *next;
 struct sk_buff *prev;

 struct sock *sk;
 ktime_t tstamp;
 struct net_device *dev;

 union {
  struct dst_entry *dst;
  struct rtable *rtable;
 };
# 349 "include/linux/skbuff.h"
 char cb[48];


 unsigned char __unused;

 unsigned int len,
    data_len;
 __u16 mac_len,
    hdr_len;
 union {
  __wsum csum;
  struct {
   __u16 csum_start;
   __u16 csum_offset;
  };
 };
 __u32 priority;
 __u8 local_df:1,
    cloned:1,
    ip_summed:2,
    nohdr:1,
    nfctinfo:3;
 __u8 pkt_type:3,
    fclone:2,
    ipvs_property:1,
    peeked:1,
    nf_trace:1;
 __be16 protocol;

 void (*destructor)(struct sk_buff *skb);

 struct nf_conntrack *nfct;
 struct sk_buff *nfct_reasm;





 int iif;
 __u16 queue_mapping;

 __u16 tc_index;
# 412 "include/linux/skbuff.h"
 __u16 srcPort;
 __u16 srcVlanId:12;







 __u8 srcPhyPort;
 __u8 dstPhyPort;



 struct vlan_tag tag;
# 441 "include/linux/skbuff.h"
 struct net_device *inDev;



 __u32 mark;

 __u16 vlan_tci;

 sk_buff_data_t transport_header;
 sk_buff_data_t network_header;
 sk_buff_data_t mac_header;

 sk_buff_data_t tail;
 sk_buff_data_t end;
 unsigned char *head,
    *data;
 unsigned int truesize;
 atomic_t users;
};
# 471 "include/linux/skbuff.h"
extern int skb_dma_map(struct device *dev, struct sk_buff *skb,
         enum dma_data_direction dir);
extern void skb_dma_unmap(struct device *dev, struct sk_buff *skb,
     enum dma_data_direction dir);


extern void kfree_skb(struct sk_buff *skb);
extern void consume_skb(struct sk_buff *skb);
extern void __kfree_skb(struct sk_buff *skb);
extern struct sk_buff *__alloc_skb(unsigned int size,
       gfp_t priority, int fclone, int node);
static inline __attribute__((always_inline)) struct sk_buff *alloc_skb(unsigned int size,
     gfp_t priority)
{
 return __alloc_skb(size, priority, 0, -1);
}

static inline __attribute__((always_inline)) struct sk_buff *alloc_skb_fclone(unsigned int size,
            gfp_t priority)
{
 return __alloc_skb(size, priority, 1, -1);
}

extern int skb_recycle_check(struct sk_buff *skb, int skb_size);

extern struct sk_buff *skb_morph(struct sk_buff *dst, struct sk_buff *src);
extern struct sk_buff *skb_clone(struct sk_buff *skb,
     gfp_t priority);
extern struct sk_buff *skb_copy(const struct sk_buff *skb,
    gfp_t priority);
extern struct sk_buff *pskb_copy(struct sk_buff *skb,
     gfp_t gfp_mask);
extern int pskb_expand_head(struct sk_buff *skb,
     int nhead, int ntail,
     gfp_t gfp_mask);
extern struct sk_buff *skb_realloc_headroom(struct sk_buff *skb,
         unsigned int headroom);
extern struct sk_buff *skb_copy_expand(const struct sk_buff *skb,
           int newheadroom, int newtailroom,
           gfp_t priority);
extern int skb_to_sgvec(struct sk_buff *skb,
        struct scatterlist *sg, int offset,
        int len);
extern int skb_cow_data(struct sk_buff *skb, int tailbits,
        struct sk_buff **trailer);
extern int skb_pad(struct sk_buff *skb, int pad);


extern void skb_over_panic(struct sk_buff *skb, int len,
         void *here);
extern void skb_under_panic(struct sk_buff *skb, int len,
          void *here);

extern int skb_append_datato_frags(struct sock *sk, struct sk_buff *skb,
   int getfrag(void *from, char *to, int offset,
   int len,int odd, struct sk_buff *skb),
   void *from, int length);

struct skb_seq_state
{
 __u32 lower_offset;
 __u32 upper_offset;
 __u32 frag_idx;
 __u32 stepped_offset;
 struct sk_buff *root_skb;
 struct sk_buff *cur_skb;
 __u8 *frag_data;
};

extern void skb_prepare_seq_read(struct sk_buff *skb,
        unsigned int from, unsigned int to,
        struct skb_seq_state *st);
extern unsigned int skb_seq_read(unsigned int consumed, const u8 **data,
       struct skb_seq_state *st);
extern void skb_abort_seq_read(struct skb_seq_state *st);

extern unsigned int skb_find_text(struct sk_buff *skb, unsigned int from,
        unsigned int to, struct ts_config *config,
        struct ts_state *state);







static inline __attribute__((always_inline)) unsigned char *skb_end_pointer(const struct sk_buff *skb)
{
 return skb->end;
}





static inline __attribute__((always_inline)) struct skb_shared_hwtstamps *skb_hwtstamps(struct sk_buff *skb)
{
 return &((struct skb_shared_info *)(skb_end_pointer(skb)))->hwtstamps;
}

static inline __attribute__((always_inline)) union skb_shared_tx *skb_tx(struct sk_buff *skb)
{
 return &((struct skb_shared_info *)(skb_end_pointer(skb)))->tx_flags;
}







static inline __attribute__((always_inline)) int skb_queue_empty(const struct sk_buff_head *list)
{
 return list->next == (struct sk_buff *)list;
}
# 594 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) bool skb_queue_is_last(const struct sk_buff_head *list,
         const struct sk_buff *skb)
{
 return (skb->next == (struct sk_buff *) list);
}
# 607 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) bool skb_queue_is_first(const struct sk_buff_head *list,
          const struct sk_buff *skb)
{
 return (skb->prev == (struct sk_buff *) list);
}
# 621 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) struct sk_buff *skb_queue_next(const struct sk_buff_head *list,
          const struct sk_buff *skb)
{



 do { if (skb_queue_is_last(list, skb)) ; } while(0);
 return skb->next;
}
# 639 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) struct sk_buff *skb_queue_prev(const struct sk_buff_head *list,
          const struct sk_buff *skb)
{



 do { if (skb_queue_is_first(list, skb)) ; } while(0);
 return skb->prev;
}
# 656 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) struct sk_buff *skb_get(struct sk_buff *skb)
{
 atomic_add(1, (&skb->users));
 return skb;
}
# 675 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) int skb_cloned(const struct sk_buff *skb)
{
 return skb->cloned &&
        (((&((struct skb_shared_info *)(skb_end_pointer(skb)))->dataref)->counter) & ((1 << 16) - 1)) != 1;
}
# 688 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) int skb_header_cloned(const struct sk_buff *skb)
{
 int dataref;

 if (!skb->cloned)
  return 0;

 dataref = ((&((struct skb_shared_info *)(skb_end_pointer(skb)))->dataref)->counter);
 dataref = (dataref & ((1 << 16) - 1)) - (dataref >> 16);
 return dataref != 1;
}
# 708 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) void skb_header_release(struct sk_buff *skb)
{
 do { if (skb->nohdr) ; } while(0);
 skb->nohdr = 1;
 atomic_add(1 << 16, &((struct skb_shared_info *)(skb_end_pointer(skb)))->dataref);
}
# 722 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) int skb_shared(const struct sk_buff *skb)
{
 return ((&skb->users)->counter) != 1;
}
# 740 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) struct sk_buff *skb_share_check(struct sk_buff *skb,
           gfp_t pri)
{
 do { if (pri & (( gfp_t)0x10u)) do { do { } while (0); } while (0); } while (0);
 if (skb_shared(skb)) {
  struct sk_buff *nskb = skb_clone(skb, pri);
  kfree_skb(skb);
  skb = nskb;
 }
 return skb;
}
# 772 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) struct sk_buff *skb_unshare(struct sk_buff *skb,
       gfp_t pri)
{
 do { if (pri & (( gfp_t)0x10u)) do { do { } while (0); } while (0); } while (0);
 if (skb_cloned(skb)) {
  struct sk_buff *nskb = skb_copy(skb, pri);
  kfree_skb(skb);
  skb = nskb;
 }
 return skb;
}
# 797 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) struct sk_buff *skb_peek(struct sk_buff_head *list_)
{
 struct sk_buff *list = ((struct sk_buff *)list_)->next;
 if (list == (struct sk_buff *)list_)
  list = ((void *)0);
 return list;
}
# 818 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) struct sk_buff *skb_peek_tail(struct sk_buff_head *list_)
{
 struct sk_buff *list = ((struct sk_buff *)list_)->prev;
 if (list == (struct sk_buff *)list_)
  list = ((void *)0);
 return list;
}







static inline __attribute__((always_inline)) __u32 skb_queue_len(const struct sk_buff_head *list_)
{
 return list_->qlen;
}
# 847 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) void __skb_queue_head_init(struct sk_buff_head *list)
{
 list->prev = list->next = (struct sk_buff *)list;
 list->qlen = 0;
}
# 861 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) void skb_queue_head_init(struct sk_buff_head *list)
{
 do { *(&list->lock) = (spinlock_t) { .raw_lock = { }, }; } while (0);
 __skb_queue_head_init(list);
}

static inline __attribute__((always_inline)) void skb_queue_head_init_class(struct sk_buff_head *list,
  struct lock_class_key *class)
{
 skb_queue_head_init(list);
 do { (void)(class); } while (0);
}







extern void skb_insert(struct sk_buff *old, struct sk_buff *newsk, struct sk_buff_head *list);
static inline __attribute__((always_inline)) void __skb_insert(struct sk_buff *newsk,
    struct sk_buff *prev, struct sk_buff *next,
    struct sk_buff_head *list)
{
 newsk->next = next;
 newsk->prev = prev;
 next->prev = prev->next = newsk;
 list->qlen++;
}

static inline __attribute__((always_inline)) void __skb_queue_splice(const struct sk_buff_head *list,
          struct sk_buff *prev,
          struct sk_buff *next)
{
 struct sk_buff *first = list->next;
 struct sk_buff *last = list->prev;

 first->prev = prev;
 prev->next = first;

 last->next = next;
 next->prev = last;
}






static inline __attribute__((always_inline)) void skb_queue_splice(const struct sk_buff_head *list,
        struct sk_buff_head *head)
{
 if (!skb_queue_empty(list)) {
  __skb_queue_splice(list, (struct sk_buff *) head, head->next);
  head->qlen += list->qlen;
 }
}
# 926 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) void skb_queue_splice_init(struct sk_buff_head *list,
      struct sk_buff_head *head)
{
 if (!skb_queue_empty(list)) {
  __skb_queue_splice(list, (struct sk_buff *) head, head->next);
  head->qlen += list->qlen;
  __skb_queue_head_init(list);
 }
}






static inline __attribute__((always_inline)) void skb_queue_splice_tail(const struct sk_buff_head *list,
      struct sk_buff_head *head)
{
 if (!skb_queue_empty(list)) {
  __skb_queue_splice(list, head->prev, (struct sk_buff *) head);
  head->qlen += list->qlen;
 }
}
# 958 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) void skb_queue_splice_tail_init(struct sk_buff_head *list,
           struct sk_buff_head *head)
{
 if (!skb_queue_empty(list)) {
  __skb_queue_splice(list, head->prev, (struct sk_buff *) head);
  head->qlen += list->qlen;
  __skb_queue_head_init(list);
 }
}
# 979 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) void __skb_queue_after(struct sk_buff_head *list,
         struct sk_buff *prev,
         struct sk_buff *newsk)
{
 __skb_insert(newsk, prev, prev->next, list);
}

extern void skb_append(struct sk_buff *old, struct sk_buff *newsk,
         struct sk_buff_head *list);

static inline __attribute__((always_inline)) void __skb_queue_before(struct sk_buff_head *list,
          struct sk_buff *next,
          struct sk_buff *newsk)
{
 __skb_insert(newsk, next->prev, next, list);
}
# 1006 "include/linux/skbuff.h"
extern void skb_queue_head(struct sk_buff_head *list, struct sk_buff *newsk);
static inline __attribute__((always_inline)) void __skb_queue_head(struct sk_buff_head *list,
        struct sk_buff *newsk)
{
 __skb_queue_after(list, (struct sk_buff *)list, newsk);
}
# 1023 "include/linux/skbuff.h"
extern void skb_queue_tail(struct sk_buff_head *list, struct sk_buff *newsk);
static inline __attribute__((always_inline)) void __skb_queue_tail(struct sk_buff_head *list,
       struct sk_buff *newsk)
{
 __skb_queue_before(list, (struct sk_buff *)list, newsk);
}





extern void skb_unlink(struct sk_buff *skb, struct sk_buff_head *list);
static inline __attribute__((always_inline)) void __skb_unlink(struct sk_buff *skb, struct sk_buff_head *list)
{
 struct sk_buff *next, *prev;

 list->qlen--;
 next = skb->next;
 prev = skb->prev;
 skb->next = skb->prev = ((void *)0);
 next->prev = prev;
 prev->next = next;
}
# 1055 "include/linux/skbuff.h"
extern struct sk_buff *skb_dequeue(struct sk_buff_head *list);
static inline __attribute__((always_inline)) struct sk_buff *__skb_dequeue(struct sk_buff_head *list)
{
 struct sk_buff *skb = skb_peek(list);
 if (skb)
  __skb_unlink(skb, list);
 return skb;
}
# 1072 "include/linux/skbuff.h"
extern struct sk_buff *skb_dequeue_tail(struct sk_buff_head *list);
static inline __attribute__((always_inline)) struct sk_buff *__skb_dequeue_tail(struct sk_buff_head *list)
{
 struct sk_buff *skb = skb_peek_tail(list);
 if (skb)
  __skb_unlink(skb, list);
 return skb;
}


static inline __attribute__((always_inline)) int skb_is_nonlinear(const struct sk_buff *skb)
{
 return skb->data_len;
}

static inline __attribute__((always_inline)) unsigned int skb_headlen(const struct sk_buff *skb)
{
 return skb->len - skb->data_len;
}

static inline __attribute__((always_inline)) int skb_pagelen(const struct sk_buff *skb)
{
 int i, len = 0;

 for (i = (int)((struct skb_shared_info *)(skb_end_pointer(skb)))->nr_frags - 1; i >= 0; i--)
  len += ((struct skb_shared_info *)(skb_end_pointer(skb)))->frags[i].size;
 return len + skb_headlen(skb);
}

static inline __attribute__((always_inline)) void skb_fill_page_desc(struct sk_buff *skb, int i,
          struct page *page, int off, int size)
{
 skb_frag_t *frag = &((struct skb_shared_info *)(skb_end_pointer(skb)))->frags[i];

 frag->page = page;
 frag->page_offset = off;
 frag->size = size;
 ((struct skb_shared_info *)(skb_end_pointer(skb)))->nr_frags = i + 1;
}

extern void skb_add_rx_frag(struct sk_buff *skb, int i, struct page *page,
       int off, int size);
# 1136 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) unsigned char *skb_tail_pointer(const struct sk_buff *skb)
{
 return skb->tail;
}

static inline __attribute__((always_inline)) void skb_reset_tail_pointer(struct sk_buff *skb)
{
 skb->tail = skb->data;
}

static inline __attribute__((always_inline)) void skb_set_tail_pointer(struct sk_buff *skb, const int offset)
{
 skb->tail = skb->data + offset;
}






extern unsigned char *skb_put(struct sk_buff *skb, unsigned int len);
static inline __attribute__((always_inline)) unsigned char *__skb_put(struct sk_buff *skb, unsigned int len)
{
 unsigned char *tmp = skb_tail_pointer(skb);
 do { if (skb_is_nonlinear(skb)) ; } while(0);
 skb->tail += len;
 skb->len += len;
 return tmp;
}

extern unsigned char *skb_push(struct sk_buff *skb, unsigned int len);
static inline __attribute__((always_inline)) unsigned char *__skb_push(struct sk_buff *skb, unsigned int len)
{
 skb->data -= len;
 skb->len += len;
 return skb->data;
}

extern unsigned char *skb_pull(struct sk_buff *skb, unsigned int len);
static inline __attribute__((always_inline)) unsigned char *__skb_pull(struct sk_buff *skb, unsigned int len)
{
 skb->len -= len;
 do { if (skb->len < skb->data_len) ; } while(0);
 return skb->data += len;
}

extern unsigned char *__pskb_pull_tail(struct sk_buff *skb, int delta);

static inline __attribute__((always_inline)) unsigned char *__pskb_pull(struct sk_buff *skb, unsigned int len)
{
 if (len > skb_headlen(skb) &&
     !__pskb_pull_tail(skb, len - skb_headlen(skb)))
  return ((void *)0);
 skb->len -= len;
 return skb->data += len;
}

static inline __attribute__((always_inline)) unsigned char *pskb_pull(struct sk_buff *skb, unsigned int len)
{
 return __builtin_expect(!!(len > skb->len), 0) ? ((void *)0) : __pskb_pull(skb, len);
}

static inline __attribute__((always_inline)) int pskb_may_pull(struct sk_buff *skb, unsigned int len)
{
 if (__builtin_expect(!!(len <= skb_headlen(skb)), 1))
  return 1;
 if (__builtin_expect(!!(len > skb->len), 0))
  return 0;
 return __pskb_pull_tail(skb, len - skb_headlen(skb)) != ((void *)0);
}







static inline __attribute__((always_inline)) unsigned int skb_headroom(const struct sk_buff *skb)
{
 return skb->data - skb->head;
}







static inline __attribute__((always_inline)) int skb_tailroom(const struct sk_buff *skb)
{
 return skb_is_nonlinear(skb) ? 0 : skb->end - skb->tail;
}
# 1237 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) void skb_reserve(struct sk_buff *skb, int len)
{
 skb->data += len;
 skb->tail += len;
}
# 1300 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) unsigned char *skb_transport_header(const struct sk_buff *skb)
{
 return skb->transport_header;
}

static inline __attribute__((always_inline)) void skb_reset_transport_header(struct sk_buff *skb)
{
 skb->transport_header = skb->data;
}

static inline __attribute__((always_inline)) void skb_set_transport_header(struct sk_buff *skb,
         const int offset)
{
 skb->transport_header = skb->data + offset;
}

static inline __attribute__((always_inline)) unsigned char *skb_network_header(const struct sk_buff *skb)
{
 return skb->network_header;
}

static inline __attribute__((always_inline)) void skb_reset_network_header(struct sk_buff *skb)
{
 skb->network_header = skb->data;
}

static inline __attribute__((always_inline)) void skb_set_network_header(struct sk_buff *skb, const int offset)
{
 skb->network_header = skb->data + offset;
}

static inline __attribute__((always_inline)) unsigned char *skb_mac_header(const struct sk_buff *skb)
{
 return skb->mac_header;
}

static inline __attribute__((always_inline)) int skb_mac_header_was_set(const struct sk_buff *skb)
{
 return skb->mac_header != ((void *)0);
}

static inline __attribute__((always_inline)) void skb_reset_mac_header(struct sk_buff *skb)
{
 skb->mac_header = skb->data;
}

static inline __attribute__((always_inline)) void skb_set_mac_header(struct sk_buff *skb, const int offset)
{
 skb->mac_header = skb->data + offset;
}


static inline __attribute__((always_inline)) int skb_transport_offset(const struct sk_buff *skb)
{
 return skb_transport_header(skb) - skb->data;
}

static inline __attribute__((always_inline)) u32 skb_network_header_len(const struct sk_buff *skb)
{
 return skb->transport_header - skb->network_header;
}

static inline __attribute__((always_inline)) int skb_network_offset(const struct sk_buff *skb)
{
 return skb_network_header(skb) - skb->data;
}
# 1410 "include/linux/skbuff.h"
extern int ___pskb_trim(struct sk_buff *skb, unsigned int len);

static inline __attribute__((always_inline)) void __skb_trim(struct sk_buff *skb, unsigned int len)
{
 if (__builtin_expect(!!(skb->data_len), 0)) {
  ({ int __ret_warn_on = !!(1); __builtin_expect(!!(__ret_warn_on), 0); });
  return;
 }
 skb->len = len;
 skb_set_tail_pointer(skb, len);
}

extern void skb_trim(struct sk_buff *skb, unsigned int len);

static inline __attribute__((always_inline)) int __pskb_trim(struct sk_buff *skb, unsigned int len)
{
 if (skb->data_len)
  return ___pskb_trim(skb, len);
 __skb_trim(skb, len);
 return 0;
}

static inline __attribute__((always_inline)) int pskb_trim(struct sk_buff *skb, unsigned int len)
{
 return (len < skb->len) ? __pskb_trim(skb, len) : 0;
}
# 1446 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) void pskb_trim_unique(struct sk_buff *skb, unsigned int len)
{
 int err = pskb_trim(skb, len);
 do { if (err) ; } while(0);
}
# 1460 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) void skb_orphan(struct sk_buff *skb)
{
 if (skb->destructor)
  skb->destructor(skb);
 skb->destructor = ((void *)0);
 skb->sk = ((void *)0);
}
# 1476 "include/linux/skbuff.h"
extern void skb_queue_purge(struct sk_buff_head *list);
extern void dev_kfree_skb_any(struct sk_buff *skb);
static inline __attribute__((always_inline)) void __skb_queue_purge(struct sk_buff_head *list)
{
 struct sk_buff *skb;
 while ((skb = __skb_dequeue(list)) != ((void *)0))
 {

  dev_kfree_skb_any(skb);



 }

}
# 1504 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) struct sk_buff *__dev_alloc_skb(unsigned int length,
           gfp_t gfp_mask)
{
 struct sk_buff *skb = alloc_skb(length + 32, gfp_mask);
 if (__builtin_expect(!!(skb), 1))
  skb_reserve(skb, 32);
 return skb;
}

extern struct sk_buff *dev_alloc_skb(unsigned int length);

extern struct sk_buff *__netdev_alloc_skb(struct net_device *dev,
  unsigned int length, gfp_t gfp_mask);
# 1531 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) struct sk_buff *netdev_alloc_skb(struct net_device *dev,
  unsigned int length)
{
 return __netdev_alloc_skb(dev, length, ((( gfp_t)0x20u)));
}

extern struct page *__netdev_alloc_page(struct net_device *dev, gfp_t gfp_mask);
# 1547 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) struct page *netdev_alloc_page(struct net_device *dev)
{
 return __netdev_alloc_page(dev, ((( gfp_t)0x20u)));
}

static inline __attribute__((always_inline)) void netdev_free_page(struct net_device *dev, struct page *page)
{
 __free_pages((page), 0);
}
# 1565 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) int skb_clone_writable(struct sk_buff *skb, unsigned int len)
{
 return !skb_header_cloned(skb) &&
        skb_headroom(skb) + len <= skb->hdr_len;
}

static inline __attribute__((always_inline)) int __skb_cow(struct sk_buff *skb, unsigned int headroom,
       int cloned)
{
 int delta = 0;

 if (headroom < 32)
  headroom = 32;
 if (headroom > skb_headroom(skb))
  delta = headroom - skb_headroom(skb);

 if (delta || cloned)
  return pskb_expand_head(skb, (((delta)+((typeof(delta))(32)-1))&~((typeof(delta))(32)-1)), 0,
     ((( gfp_t)0x20u)));
 return 0;
}
# 1599 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) int skb_cow(struct sk_buff *skb, unsigned int headroom)
{
 return __skb_cow(skb, headroom, skb_cloned(skb));
}
# 1614 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) int skb_cow_head(struct sk_buff *skb, unsigned int headroom)
{
 return __skb_cow(skb, headroom, skb_header_cloned(skb));
}
# 1630 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) int skb_padto(struct sk_buff *skb, unsigned int len)
{
 unsigned int size = skb->len;
 if (__builtin_expect(!!(size >= len), 1))
  return 0;
 return skb_pad(skb, len - size);
}

static inline __attribute__((always_inline)) int skb_add_data(struct sk_buff *skb,
          char *from, int copy)
{
 const int off = skb->len;

 if (skb->ip_summed == 0) {
  int err = 0;
  __wsum csum = csum_and_copy_from_user(from, skb_put(skb, copy),
           copy, 0, &err);
  if (!err) {
   skb->csum = csum_block_add(skb->csum, csum, off);
   return 0;
  }
 } else if (!({ void *__cu_to; const void *__cu_from; long __cu_len; __cu_to = (skb_put(skb, copy)); __cu_from = (from); __cu_len = (copy); if (__builtin_expect(!!(({ unsigned long __addr = (unsigned long) ((__cu_from)); unsigned long __size = (__cu_len); unsigned long __mask = (__current_thread_info->addr_limit).seg; unsigned long __ok; (void)0; __ok = (signed long)(__mask & (__addr | (__addr + __size) | ((__builtin_constant_p(__size) && (signed long) (__size) > 0) ? 0 : (__size)))); __ok == 0; })), 1)) { might_fault(); __cu_len = ({ register void *__cu_to_r __asm__("$4"); register const void *__cu_from_r __asm__("$5"); register long __cu_len_r __asm__("$6"); __cu_to_r = (__cu_to); __cu_from_r = (__cu_from); __cu_len_r = (__cu_len); __asm__ __volatile__( ".set\tnoreorder\n\t" "jal\t" "__copy_user" "\n\t" ".set\tnoat\n\t" "addu" "\t$1, %1, %2\n\t" ".set\tat\n\t" ".set\treorder" : "+r" (__cu_to_r), "+r" (__cu_from_r), "+r" (__cu_len_r) : : "$8", "$9", "$10", "$11", "$12", "$15", "$24", "$31", "$0", "memory"); __cu_len_r; }); } __cu_len; }))
  return 0;

 __skb_trim(skb, off);
 return -14;
}

static inline __attribute__((always_inline)) int skb_can_coalesce(struct sk_buff *skb, int i,
       struct page *page, int off)
{
 if (i) {
  struct skb_frag_struct *frag = &((struct skb_shared_info *)(skb_end_pointer(skb)))->frags[i - 1];

  return page == frag->page &&
         off == frag->page_offset + frag->size;
 }
 return 0;
}

static inline __attribute__((always_inline)) int __skb_linearize(struct sk_buff *skb)
{
 return __pskb_pull_tail(skb, skb->data_len) ? 0 : -12;
}
# 1682 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) int skb_linearize(struct sk_buff *skb)
{
 return skb_is_nonlinear(skb) ? __skb_linearize(skb) : 0;
}
# 1694 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) int skb_linearize_cow(struct sk_buff *skb)
{
 return skb_is_nonlinear(skb) || skb_cloned(skb) ?
        __skb_linearize(skb) : 0;
}
# 1711 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) void skb_postpull_rcsum(struct sk_buff *skb,
          const void *start, unsigned int len)
{
 if (skb->ip_summed == 2)
  skb->csum = csum_sub(skb->csum, csum_partial(start, len, 0));
}

unsigned char *skb_pull_rcsum(struct sk_buff *skb, unsigned int len);
# 1729 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) int pskb_trim_rcsum(struct sk_buff *skb, unsigned int len)
{
 if (__builtin_expect(!!(len >= skb->len), 1))
  return 0;
 if (skb->ip_summed == 2)
  skb->ip_summed = 0;
 return __pskb_trim(skb, len);
}
# 1763 "include/linux/skbuff.h"
extern struct sk_buff *__skb_recv_datagram(struct sock *sk, unsigned flags,
        int *peeked, int *err);
extern struct sk_buff *skb_recv_datagram(struct sock *sk, unsigned flags,
      int noblock, int *err);
extern unsigned int datagram_poll(struct file *file, struct socket *sock,
         struct poll_table_struct *wait);
extern int skb_copy_datagram_iovec(const struct sk_buff *from,
            int offset, struct iovec *to,
            int size);
extern int skb_copy_and_csum_datagram_iovec(struct sk_buff *skb,
       int hlen,
       struct iovec *iov);
extern int skb_copy_datagram_from_iovec(struct sk_buff *skb,
          int offset,
          struct iovec *from,
          int len);
extern void skb_free_datagram(struct sock *sk, struct sk_buff *skb);
extern int skb_kill_datagram(struct sock *sk, struct sk_buff *skb,
      unsigned int flags);
extern __wsum skb_checksum(const struct sk_buff *skb, int offset,
        int len, __wsum csum);
extern int skb_copy_bits(const struct sk_buff *skb, int offset,
         void *to, int len);
extern int skb_store_bits(struct sk_buff *skb, int offset,
          const void *from, int len);
extern __wsum skb_copy_and_csum_bits(const struct sk_buff *skb,
           int offset, u8 *to, int len,
           __wsum csum);
extern int skb_splice_bits(struct sk_buff *skb,
      unsigned int offset,
      struct pipe_inode_info *pipe,
      unsigned int len,
      unsigned int flags);
extern void skb_copy_and_csum_dev(const struct sk_buff *skb, u8 *to);
extern void skb_split(struct sk_buff *skb,
     struct sk_buff *skb1, const u32 len);
extern int skb_shift(struct sk_buff *tgt, struct sk_buff *skb,
     int shiftlen);

extern struct sk_buff *skb_segment(struct sk_buff *skb, int features);

static inline __attribute__((always_inline)) void *skb_header_pointer(const struct sk_buff *skb, int offset,
           int len, void *buffer)
{
 int hlen = skb_headlen(skb);

 if (hlen - offset >= len)
  return skb->data + offset;

 if (skb_copy_bits(skb, offset, buffer, len) < 0)
  return ((void *)0);

 return buffer;
}

static inline __attribute__((always_inline)) void skb_copy_from_linear_data(const struct sk_buff *skb,
          void *to,
          const unsigned int len)
{
 memcpy(to, skb->data, len);
}

static inline __attribute__((always_inline)) void skb_copy_from_linear_data_offset(const struct sk_buff *skb,
          const int offset, void *to,
          const unsigned int len)
{
 memcpy(to, skb->data + offset, len);
}

static inline __attribute__((always_inline)) void skb_copy_to_linear_data(struct sk_buff *skb,
        const void *from,
        const unsigned int len)
{
 memcpy(skb->data, from, len);
}

static inline __attribute__((always_inline)) void skb_copy_to_linear_data_offset(struct sk_buff *skb,
        const int offset,
        const void *from,
        const unsigned int len)
{
 memcpy(skb->data + offset, from, len);
}

extern void skb_init(void);

static inline __attribute__((always_inline)) ktime_t skb_get_ktime(const struct sk_buff *skb)
{
 return skb->tstamp;
}
# 1863 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) void skb_get_timestamp(const struct sk_buff *skb,
         struct timeval *stamp)
{
 *stamp = ktime_to_timeval(skb->tstamp);
}

static inline __attribute__((always_inline)) void skb_get_timestampns(const struct sk_buff *skb,
           struct timespec *stamp)
{
 *stamp = ktime_to_timespec(skb->tstamp);
}

static inline __attribute__((always_inline)) void __net_timestamp(struct sk_buff *skb)
{
 skb->tstamp = ktime_get_real();
}

static inline __attribute__((always_inline)) ktime_t net_timedelta(ktime_t t)
{
 return ktime_sub(ktime_get_real(), t);
}

static inline __attribute__((always_inline)) ktime_t net_invalid_timestamp(void)
{
 return ktime_set(0, 0);
}
# 1901 "include/linux/skbuff.h"
extern void skb_tstamp_tx(struct sk_buff *orig_skb,
   struct skb_shared_hwtstamps *hwtstamps);

extern __sum16 __skb_checksum_complete_head(struct sk_buff *skb, int len);
extern __sum16 __skb_checksum_complete(struct sk_buff *skb);

static inline __attribute__((always_inline)) int skb_csum_unnecessary(const struct sk_buff *skb)
{
 return skb->ip_summed & 1;
}
# 1928 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) __sum16 skb_checksum_complete(struct sk_buff *skb)
{
 return skb_csum_unnecessary(skb) ?
        0 : __skb_checksum_complete(skb);
}


extern void nf_conntrack_destroy(struct nf_conntrack *nfct);
static inline __attribute__((always_inline)) void nf_conntrack_put(struct nf_conntrack *nfct)
{
 if (nfct && (atomic_sub_return(1, (&nfct->use)) == 0))
  nf_conntrack_destroy(nfct);
}
static inline __attribute__((always_inline)) void nf_conntrack_get(struct nf_conntrack *nfct)
{
 if (nfct)
  atomic_add(1, (&nfct->use));
}
static inline __attribute__((always_inline)) void nf_conntrack_get_reasm(struct sk_buff *skb)
{
 if (skb)
  atomic_add(1, (&skb->users));
}
static inline __attribute__((always_inline)) void nf_conntrack_put_reasm(struct sk_buff *skb)
{
 if (skb)
  kfree_skb(skb);
}
# 1969 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) void nf_reset(struct sk_buff *skb)
{

 nf_conntrack_put(skb->nfct);
 skb->nfct = ((void *)0);
 nf_conntrack_put_reasm(skb->nfct_reasm);
 skb->nfct_reasm = ((void *)0);





}


static inline __attribute__((always_inline)) void __nf_copy(struct sk_buff *dst, const struct sk_buff *src)
{

 dst->nfct = src->nfct;
 nf_conntrack_get(src->nfct);
 dst->nfctinfo = src->nfctinfo;
 dst->nfct_reasm = src->nfct_reasm;
 nf_conntrack_get_reasm(src->nfct_reasm);





}

static inline __attribute__((always_inline)) void nf_copy(struct sk_buff *dst, const struct sk_buff *src)
{

 nf_conntrack_put(dst->nfct);
 nf_conntrack_put_reasm(dst->nfct_reasm);




 __nf_copy(dst, src);
}
# 2022 "include/linux/skbuff.h"
static inline __attribute__((always_inline)) void skb_copy_secmark(struct sk_buff *to, const struct sk_buff *from)
{ }

static inline __attribute__((always_inline)) void skb_init_secmark(struct sk_buff *skb)
{ }


static inline __attribute__((always_inline)) void skb_set_queue_mapping(struct sk_buff *skb, u16 queue_mapping)
{
 skb->queue_mapping = queue_mapping;
}

static inline __attribute__((always_inline)) u16 skb_get_queue_mapping(const struct sk_buff *skb)
{
 return skb->queue_mapping;
}

static inline __attribute__((always_inline)) void skb_copy_queue_mapping(struct sk_buff *to, const struct sk_buff *from)
{
 to->queue_mapping = from->queue_mapping;
}

static inline __attribute__((always_inline)) void skb_record_rx_queue(struct sk_buff *skb, u16 rx_queue)
{
 skb->queue_mapping = rx_queue + 1;
}

static inline __attribute__((always_inline)) u16 skb_get_rx_queue(const struct sk_buff *skb)
{
 return skb->queue_mapping - 1;
}

static inline __attribute__((always_inline)) bool skb_rx_queue_recorded(const struct sk_buff *skb)
{
 return (skb->queue_mapping != 0);
}

extern u16 skb_tx_hash(const struct net_device *dev,
         const struct sk_buff *skb);







static inline __attribute__((always_inline)) struct sec_path *skb_sec_path(struct sk_buff *skb)
{
 return ((void *)0);
}


static inline __attribute__((always_inline)) int skb_is_gso(const struct sk_buff *skb)
{
 return ((struct skb_shared_info *)(skb_end_pointer(skb)))->gso_size;
}

static inline __attribute__((always_inline)) int skb_is_gso_v6(const struct sk_buff *skb)
{
 return ((struct skb_shared_info *)(skb_end_pointer(skb)))->gso_type & SKB_GSO_TCPV6;
}

extern void __skb_warn_lro_forwarding(const struct sk_buff *skb);

static inline __attribute__((always_inline)) bool skb_warn_if_lro(const struct sk_buff *skb)
{


 struct skb_shared_info *shinfo = ((struct skb_shared_info *)(skb_end_pointer(skb)));
 if (shinfo->gso_size != 0 && __builtin_expect(!!(shinfo->gso_type == 0), 0)) {
  __skb_warn_lro_forwarding(skb);
  return true;
 }
 return false;
}

static inline __attribute__((always_inline)) void skb_forward_csum(struct sk_buff *skb)
{

 if (skb->ip_summed == 2)
  skb->ip_summed = 0;
}

bool skb_partial_csum_set(struct sk_buff *skb, u16 start, u16 off);
# 122 "include/linux/if_ether.h" 2

static inline __attribute__((always_inline)) struct ethhdr *eth_hdr(const struct sk_buff *skb)
{
 return (struct ethhdr *)skb_mac_header(skb);
}

int eth_header_parse(const struct sk_buff *skb, unsigned char *haddr);


extern struct ctl_table ether_table[];


extern ssize_t sysfs_format_mac(char *buf, const unsigned char *addr, int len);




extern char *print_mac(char *buf, const unsigned char *addr);
# 30 "include/linux/netdevice.h" 2
# 1 "include/linux/if_packet.h" 1





struct sockaddr_pkt
{
 unsigned short spkt_family;
 unsigned char spkt_device[14];
 __be16 spkt_protocol;
};

struct sockaddr_ll
{
 unsigned short sll_family;
 __be16 sll_protocol;
 int sll_ifindex;
 unsigned short sll_hatype;
 unsigned char sll_pkttype;
 unsigned char sll_halen;
 unsigned char sll_addr[8];
};
# 50 "include/linux/if_packet.h"
struct tpacket_stats
{
 unsigned int tp_packets;
 unsigned int tp_drops;
};

struct tpacket_auxdata
{
 __u32 tp_status;
 __u32 tp_len;
 __u32 tp_snaplen;
 __u16 tp_mac;
 __u16 tp_net;
 __u16 tp_vlan_tci;
};

struct tpacket_hdr
{
 unsigned long tp_status;





 unsigned int tp_len;
 unsigned int tp_snaplen;
 unsigned short tp_mac;
 unsigned short tp_net;
 unsigned int tp_sec;
 unsigned int tp_usec;
};





struct tpacket2_hdr
{
 __u32 tp_status;
 __u32 tp_len;
 __u32 tp_snaplen;
 __u16 tp_mac;
 __u16 tp_net;
 __u32 tp_sec;
 __u32 tp_nsec;
 __u16 tp_vlan_tci;
};



enum tpacket_versions
{
 TPACKET_V1,
 TPACKET_V2,
};
# 119 "include/linux/if_packet.h"
struct tpacket_req
{
 unsigned int tp_block_size;
 unsigned int tp_block_nr;
 unsigned int tp_frame_size;
 unsigned int tp_frame_nr;
};

struct packet_mreq
{
 int mr_ifindex;
 unsigned short mr_type;
 unsigned short mr_alen;
 unsigned char mr_address[8];
};
# 31 "include/linux/netdevice.h" 2


# 1 "include/linux/timer.h" 1






# 1 "include/linux/debugobjects.h" 1






enum debug_obj_state {
 ODEBUG_STATE_NONE,
 ODEBUG_STATE_INIT,
 ODEBUG_STATE_INACTIVE,
 ODEBUG_STATE_ACTIVE,
 ODEBUG_STATE_DESTROYED,
 ODEBUG_STATE_NOTAVAILABLE,
 ODEBUG_STATE_MAX,
};

struct debug_obj_descr;
# 26 "include/linux/debugobjects.h"
struct debug_obj {
 struct hlist_node node;
 enum debug_obj_state state;
 void *object;
 struct debug_obj_descr *descr;
};
# 45 "include/linux/debugobjects.h"
struct debug_obj_descr {
 const char *name;

 int (*fixup_init) (void *addr, enum debug_obj_state state);
 int (*fixup_activate) (void *addr, enum debug_obj_state state);
 int (*fixup_destroy) (void *addr, enum debug_obj_state state);
 int (*fixup_free) (void *addr, enum debug_obj_state state);
};
# 66 "include/linux/debugobjects.h"
static inline __attribute__((always_inline)) void
debug_object_init (void *addr, struct debug_obj_descr *descr) { }
static inline __attribute__((always_inline)) void
debug_object_init_on_stack(void *addr, struct debug_obj_descr *descr) { }
static inline __attribute__((always_inline)) void
debug_object_activate (void *addr, struct debug_obj_descr *descr) { }
static inline __attribute__((always_inline)) void
debug_object_deactivate(void *addr, struct debug_obj_descr *descr) { }
static inline __attribute__((always_inline)) void
debug_object_destroy (void *addr, struct debug_obj_descr *descr) { }
static inline __attribute__((always_inline)) void
debug_object_free (void *addr, struct debug_obj_descr *descr) { }

static inline __attribute__((always_inline)) void debug_objects_early_init(void) { }
static inline __attribute__((always_inline)) void debug_objects_mem_init(void) { }





static inline __attribute__((always_inline)) void
debug_check_no_obj_freed(const void *address, unsigned long size) { }
# 8 "include/linux/timer.h" 2


struct tvec_base;

struct timer_list {
 struct list_head entry;
 unsigned long expires;

 void (*function)(unsigned long);
 unsigned long data;

 struct tvec_base *base;
# 28 "include/linux/timer.h"
};

extern struct tvec_base boot_tvec_bases;
# 59 "include/linux/timer.h"
void init_timer_key(struct timer_list *timer,
      const char *name,
      struct lock_class_key *key);
void init_timer_deferrable_key(struct timer_list *timer,
          const char *name,
          struct lock_class_key *key);
# 116 "include/linux/timer.h"
static inline __attribute__((always_inline)) void destroy_timer_on_stack(struct timer_list *timer) { }
static inline __attribute__((always_inline)) void init_timer_on_stack_key(struct timer_list *timer,
        const char *name,
        struct lock_class_key *key)
{
 init_timer_key(timer, name, key);
}


static inline __attribute__((always_inline)) void setup_timer_key(struct timer_list * timer,
    const char *name,
    struct lock_class_key *key,
    void (*function)(unsigned long),
    unsigned long data)
{
 timer->function = function;
 timer->data = data;
 init_timer_key(timer, name, key);
}

static inline __attribute__((always_inline)) void setup_timer_on_stack_key(struct timer_list *timer,
     const char *name,
     struct lock_class_key *key,
     void (*function)(unsigned long),
     unsigned long data)
{
 timer->function = function;
 timer->data = data;
 init_timer_on_stack_key(timer, name, key);
}
# 157 "include/linux/timer.h"
static inline __attribute__((always_inline)) int timer_pending(const struct timer_list * timer)
{
 return timer->entry.next != ((void *)0);
}

extern void add_timer_on(struct timer_list *timer, int cpu);
extern int del_timer(struct timer_list * timer);
extern int mod_timer(struct timer_list *timer, unsigned long expires);
extern int mod_timer_pending(struct timer_list *timer, unsigned long expires);
# 177 "include/linux/timer.h"
extern unsigned long next_timer_interrupt(void);





extern unsigned long get_next_timer_interrupt(unsigned long now);
# 211 "include/linux/timer.h"
static inline __attribute__((always_inline)) void init_timer_stats(void)
{
}

static inline __attribute__((always_inline)) void timer_stats_timer_set_start_info(struct timer_list *timer)
{
}

static inline __attribute__((always_inline)) void timer_stats_timer_clear_start_info(struct timer_list *timer)
{
}


extern void add_timer(struct timer_list *timer);
# 236 "include/linux/timer.h"
extern void init_timers(void);
extern void run_local_timers(void);
struct hrtimer;
extern enum hrtimer_restart it_real_fn(struct hrtimer *);

unsigned long __round_jiffies(unsigned long j, int cpu);
unsigned long __round_jiffies_relative(unsigned long j, int cpu);
unsigned long round_jiffies(unsigned long j);
unsigned long round_jiffies_relative(unsigned long j);

unsigned long __round_jiffies_up(unsigned long j, int cpu);
unsigned long __round_jiffies_up_relative(unsigned long j, int cpu);
unsigned long round_jiffies_up(unsigned long j);
unsigned long round_jiffies_up_relative(unsigned long j);
# 34 "include/linux/netdevice.h" 2
# 1 "include/linux/delay.h" 1
# 12 "include/linux/delay.h"
extern unsigned long loops_per_jiffy;

# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/delay.h" 1
# 16 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/delay.h"
extern void __delay(unsigned int loops);
extern void __ndelay(unsigned int ns);
extern void __udelay(unsigned int us);
# 15 "include/linux/delay.h" 2
# 44 "include/linux/delay.h"
extern unsigned long lpj_fine;
void calibrate_delay(void);
void msleep(unsigned int msecs);
unsigned long msleep_interruptible(unsigned int msecs);

static inline __attribute__((always_inline)) void ssleep(unsigned int seconds)
{
 msleep(seconds * 1000);
}
# 35 "include/linux/netdevice.h" 2
# 43 "include/linux/netdevice.h"
# 1 "include/linux/workqueue.h" 1
# 14 "include/linux/workqueue.h"
struct workqueue_struct;

struct work_struct;
typedef void (*work_func_t)(struct work_struct *work);







struct work_struct {
 atomic_long_t data;



 struct list_head entry;
 work_func_t func;



};



struct delayed_work {
 struct work_struct work;
 struct timer_list timer;
};

static inline __attribute__((always_inline)) struct delayed_work *to_delayed_work(struct work_struct *work)
{
 return ({ const typeof( ((struct delayed_work *)0)->work ) *__mptr = (work); (struct delayed_work *)( (char *)__mptr - ((size_t) &((struct delayed_work *)0)->work) );});
}

struct execute_work {
 struct work_struct work;
};
# 167 "include/linux/workqueue.h"
extern struct workqueue_struct *
__create_workqueue_key(const char *name, int singlethread,
         int freezeable, int rt, struct lock_class_key *key,
         const char *lock_name);
# 198 "include/linux/workqueue.h"
extern void destroy_workqueue(struct workqueue_struct *wq);

extern int queue_work(struct workqueue_struct *wq, struct work_struct *work);
extern int queue_work_on(int cpu, struct workqueue_struct *wq,
   struct work_struct *work);
extern int queue_delayed_work(struct workqueue_struct *wq,
   struct delayed_work *work, unsigned long delay);
extern int queue_delayed_work_on(int cpu, struct workqueue_struct *wq,
   struct delayed_work *work, unsigned long delay);

extern void flush_workqueue(struct workqueue_struct *wq);
extern void flush_scheduled_work(void);

extern int schedule_work(struct work_struct *work);
extern int schedule_work_on(int cpu, struct work_struct *work);
extern int schedule_delayed_work(struct delayed_work *work, unsigned long delay);
extern int schedule_delayed_work_on(int cpu, struct delayed_work *work,
     unsigned long delay);
extern int schedule_on_each_cpu(work_func_t func);
extern int current_is_keventd(void);
extern int keventd_up(void);

extern void init_workqueues(void);
int execute_in_process_context(work_func_t fn, struct execute_work *);

extern int flush_work(struct work_struct *work);

extern int cancel_work_sync(struct work_struct *work);







static inline __attribute__((always_inline)) int cancel_delayed_work(struct delayed_work *work)
{
 int ret;

 ret = del_timer(&work->timer);
 if (ret)
  clear_bit(0, ((unsigned long *)(&(&work->work)->data)));
 return ret;
}

extern int cancel_delayed_work_sync(struct delayed_work *work);


static inline __attribute__((always_inline))
void cancel_rearming_delayed_workqueue(struct workqueue_struct *wq,
     struct delayed_work *work)
{
 cancel_delayed_work_sync(work);
}


static inline __attribute__((always_inline))
void cancel_rearming_delayed_work(struct delayed_work *work)
{
 cancel_delayed_work_sync(work);
}


static inline __attribute__((always_inline)) long work_on_cpu(unsigned int cpu, long (*fn)(void *), void *arg)
{
 return fn(arg);
}
# 44 "include/linux/netdevice.h" 2

# 1 "include/net/net_namespace.h" 1
# 11 "include/net/net_namespace.h"
# 1 "include/net/netns/core.h" 1



struct ctl_table_header;
struct prot_inuse;

struct netns_core {

 struct ctl_table_header *sysctl_hdr;

 int sysctl_somaxconn;

 struct prot_inuse *inuse;
};
# 12 "include/net/net_namespace.h" 2
# 1 "include/net/netns/mib.h" 1



# 1 "include/net/snmp.h" 1
# 23 "include/net/snmp.h"
# 1 "include/linux/snmp.h" 1
# 18 "include/linux/snmp.h"
enum
{
 IPSTATS_MIB_NUM = 0,
 IPSTATS_MIB_INRECEIVES,
 IPSTATS_MIB_INHDRERRORS,
 IPSTATS_MIB_INTOOBIGERRORS,
 IPSTATS_MIB_INNOROUTES,
 IPSTATS_MIB_INADDRERRORS,
 IPSTATS_MIB_INUNKNOWNPROTOS,
 IPSTATS_MIB_INTRUNCATEDPKTS,
 IPSTATS_MIB_INDISCARDS,
 IPSTATS_MIB_INDELIVERS,
 IPSTATS_MIB_OUTFORWDATAGRAMS,
 IPSTATS_MIB_OUTREQUESTS,
 IPSTATS_MIB_OUTDISCARDS,
 IPSTATS_MIB_OUTNOROUTES,
 IPSTATS_MIB_REASMTIMEOUT,
 IPSTATS_MIB_REASMREQDS,
 IPSTATS_MIB_REASMOKS,
 IPSTATS_MIB_REASMFAILS,
 IPSTATS_MIB_FRAGOKS,
 IPSTATS_MIB_FRAGFAILS,
 IPSTATS_MIB_FRAGCREATES,
 IPSTATS_MIB_INMCASTPKTS,
 IPSTATS_MIB_OUTMCASTPKTS,
 IPSTATS_MIB_INBCASTPKTS,
 IPSTATS_MIB_OUTBCASTPKTS,
 __IPSTATS_MIB_MAX
};






enum
{
 ICMP_MIB_NUM = 0,
 ICMP_MIB_INMSGS,
 ICMP_MIB_INERRORS,
 ICMP_MIB_INDESTUNREACHS,
 ICMP_MIB_INTIMEEXCDS,
 ICMP_MIB_INPARMPROBS,
 ICMP_MIB_INSRCQUENCHS,
 ICMP_MIB_INREDIRECTS,
 ICMP_MIB_INECHOS,
 ICMP_MIB_INECHOREPS,
 ICMP_MIB_INTIMESTAMPS,
 ICMP_MIB_INTIMESTAMPREPS,
 ICMP_MIB_INADDRMASKS,
 ICMP_MIB_INADDRMASKREPS,
 ICMP_MIB_OUTMSGS,
 ICMP_MIB_OUTERRORS,
 ICMP_MIB_OUTDESTUNREACHS,
 ICMP_MIB_OUTTIMEEXCDS,
 ICMP_MIB_OUTPARMPROBS,
 ICMP_MIB_OUTSRCQUENCHS,
 ICMP_MIB_OUTREDIRECTS,
 ICMP_MIB_OUTECHOS,
 ICMP_MIB_OUTECHOREPS,
 ICMP_MIB_OUTTIMESTAMPS,
 ICMP_MIB_OUTTIMESTAMPREPS,
 ICMP_MIB_OUTADDRMASKS,
 ICMP_MIB_OUTADDRMASKREPS,
 __ICMP_MIB_MAX
};







enum
{
 ICMP6_MIB_NUM = 0,
 ICMP6_MIB_INMSGS,
 ICMP6_MIB_INERRORS,
 ICMP6_MIB_OUTMSGS,
 __ICMP6_MIB_MAX
};
# 107 "include/linux/snmp.h"
enum
{
 TCP_MIB_NUM = 0,
 TCP_MIB_RTOALGORITHM,
 TCP_MIB_RTOMIN,
 TCP_MIB_RTOMAX,
 TCP_MIB_MAXCONN,
 TCP_MIB_ACTIVEOPENS,
 TCP_MIB_PASSIVEOPENS,
 TCP_MIB_ATTEMPTFAILS,
 TCP_MIB_ESTABRESETS,
 TCP_MIB_CURRESTAB,
 TCP_MIB_INSEGS,
 TCP_MIB_OUTSEGS,
 TCP_MIB_RETRANSSEGS,
 TCP_MIB_INERRS,
 TCP_MIB_OUTRSTS,
 __TCP_MIB_MAX
};






enum
{
 UDP_MIB_NUM = 0,
 UDP_MIB_INDATAGRAMS,
 UDP_MIB_NOPORTS,
 UDP_MIB_INERRORS,
 UDP_MIB_OUTDATAGRAMS,
 UDP_MIB_RCVBUFERRORS,
 UDP_MIB_SNDBUFERRORS,
 __UDP_MIB_MAX
};


enum
{
 LINUX_MIB_NUM = 0,
 LINUX_MIB_SYNCOOKIESSENT,
 LINUX_MIB_SYNCOOKIESRECV,
 LINUX_MIB_SYNCOOKIESFAILED,
 LINUX_MIB_EMBRYONICRSTS,
 LINUX_MIB_PRUNECALLED,
 LINUX_MIB_RCVPRUNED,
 LINUX_MIB_OFOPRUNED,
 LINUX_MIB_OUTOFWINDOWICMPS,
 LINUX_MIB_LOCKDROPPEDICMPS,
 LINUX_MIB_ARPFILTER,
 LINUX_MIB_TIMEWAITED,
 LINUX_MIB_TIMEWAITRECYCLED,
 LINUX_MIB_TIMEWAITKILLED,
 LINUX_MIB_PAWSPASSIVEREJECTED,
 LINUX_MIB_PAWSACTIVEREJECTED,
 LINUX_MIB_PAWSESTABREJECTED,
 LINUX_MIB_DELAYEDACKS,
 LINUX_MIB_DELAYEDACKLOCKED,
 LINUX_MIB_DELAYEDACKLOST,
 LINUX_MIB_LISTENOVERFLOWS,
 LINUX_MIB_LISTENDROPS,
 LINUX_MIB_TCPPREQUEUED,
 LINUX_MIB_TCPDIRECTCOPYFROMBACKLOG,
 LINUX_MIB_TCPDIRECTCOPYFROMPREQUEUE,
 LINUX_MIB_TCPPREQUEUEDROPPED,
 LINUX_MIB_TCPHPHITS,
 LINUX_MIB_TCPHPHITSTOUSER,
 LINUX_MIB_TCPPUREACKS,
 LINUX_MIB_TCPHPACKS,
 LINUX_MIB_TCPRENORECOVERY,
 LINUX_MIB_TCPSACKRECOVERY,
 LINUX_MIB_TCPSACKRENEGING,
 LINUX_MIB_TCPFACKREORDER,
 LINUX_MIB_TCPSACKREORDER,
 LINUX_MIB_TCPRENOREORDER,
 LINUX_MIB_TCPTSREORDER,
 LINUX_MIB_TCPFULLUNDO,
 LINUX_MIB_TCPPARTIALUNDO,
 LINUX_MIB_TCPDSACKUNDO,
 LINUX_MIB_TCPLOSSUNDO,
 LINUX_MIB_TCPLOSS,
 LINUX_MIB_TCPLOSTRETRANSMIT,
 LINUX_MIB_TCPRENOFAILURES,
 LINUX_MIB_TCPSACKFAILURES,
 LINUX_MIB_TCPLOSSFAILURES,
 LINUX_MIB_TCPFASTRETRANS,
 LINUX_MIB_TCPFORWARDRETRANS,
 LINUX_MIB_TCPSLOWSTARTRETRANS,
 LINUX_MIB_TCPTIMEOUTS,
 LINUX_MIB_TCPRENORECOVERYFAIL,
 LINUX_MIB_TCPSACKRECOVERYFAIL,
 LINUX_MIB_TCPSCHEDULERFAILED,
 LINUX_MIB_TCPRCVCOLLAPSED,
 LINUX_MIB_TCPDSACKOLDSENT,
 LINUX_MIB_TCPDSACKOFOSENT,
 LINUX_MIB_TCPDSACKRECV,
 LINUX_MIB_TCPDSACKOFORECV,
 LINUX_MIB_TCPABORTONSYN,
 LINUX_MIB_TCPABORTONDATA,
 LINUX_MIB_TCPABORTONCLOSE,
 LINUX_MIB_TCPABORTONMEMORY,
 LINUX_MIB_TCPABORTONTIMEOUT,
 LINUX_MIB_TCPABORTONLINGER,
 LINUX_MIB_TCPABORTFAILED,
 LINUX_MIB_TCPMEMORYPRESSURES,
 LINUX_MIB_TCPSACKDISCARD,
 LINUX_MIB_TCPDSACKIGNOREDOLD,
 LINUX_MIB_TCPDSACKIGNOREDNOUNDO,
 LINUX_MIB_TCPSPURIOUSRTOS,
 LINUX_MIB_TCPMD5NOTFOUND,
 LINUX_MIB_TCPMD5UNEXPECTED,
 LINUX_MIB_SACKSHIFTED,
 LINUX_MIB_SACKMERGED,
 LINUX_MIB_SACKSHIFTFALLBACK,
 __LINUX_MIB_MAX
};


enum
{
 LINUX_MIB_XFRMNUM = 0,
 LINUX_MIB_XFRMINERROR,
 LINUX_MIB_XFRMINBUFFERERROR,
 LINUX_MIB_XFRMINHDRERROR,
 LINUX_MIB_XFRMINNOSTATES,
 LINUX_MIB_XFRMINSTATEPROTOERROR,
 LINUX_MIB_XFRMINSTATEMODEERROR,
 LINUX_MIB_XFRMINSTATESEQERROR,
 LINUX_MIB_XFRMINSTATEEXPIRED,
 LINUX_MIB_XFRMINSTATEMISMATCH,
 LINUX_MIB_XFRMINSTATEINVALID,
 LINUX_MIB_XFRMINTMPLMISMATCH,
 LINUX_MIB_XFRMINNOPOLS,
 LINUX_MIB_XFRMINPOLBLOCK,
 LINUX_MIB_XFRMINPOLERROR,
 LINUX_MIB_XFRMOUTERROR,
 LINUX_MIB_XFRMOUTBUNDLEGENERROR,
 LINUX_MIB_XFRMOUTBUNDLECHECKERROR,
 LINUX_MIB_XFRMOUTNOSTATES,
 LINUX_MIB_XFRMOUTSTATEPROTOERROR,
 LINUX_MIB_XFRMOUTSTATEMODEERROR,
 LINUX_MIB_XFRMOUTSTATESEQERROR,
 LINUX_MIB_XFRMOUTSTATEEXPIRED,
 LINUX_MIB_XFRMOUTPOLBLOCK,
 LINUX_MIB_XFRMOUTPOLDEAD,
 LINUX_MIB_XFRMOUTPOLERROR,
 __LINUX_MIB_XFRMMAX
};
# 24 "include/net/snmp.h" 2
# 34 "include/net/snmp.h"
struct snmp_mib {
 char *name;
 int entry;
};
# 72 "include/net/snmp.h"
struct ipstats_mib {
 unsigned long mibs[__IPSTATS_MIB_MAX];
} __attribute__((__aligned__((1 << 5))));





struct icmp_mib {
 unsigned long mibs[(__ICMP_MIB_MAX + 1)];
} __attribute__((__aligned__((1 << 5))));


struct icmpmsg_mib {
 unsigned long mibs[512];
} __attribute__((__aligned__((1 << 5))));



struct icmpv6_mib {
 unsigned long mibs[__ICMP6_MIB_MAX];
} __attribute__((__aligned__((1 << 5))));


struct icmpv6msg_mib {
 unsigned long mibs[512];
} __attribute__((__aligned__((1 << 5))));




struct tcp_mib {
 unsigned long mibs[__TCP_MIB_MAX];
} __attribute__((__aligned__((1 << 5))));



struct udp_mib {
 unsigned long mibs[__UDP_MIB_MAX];
} __attribute__((__aligned__((1 << 5))));



struct linux_mib {
 unsigned long mibs[__LINUX_MIB_MAX];
};



struct linux_xfrm_mib {
 unsigned long mibs[__LINUX_MIB_XFRMMAX];
};
# 5 "include/net/netns/mib.h" 2

struct netns_mib {
 __typeof__(struct tcp_mib) *tcp_statistics[2];
 __typeof__(struct ipstats_mib) *ip_statistics[2];
 __typeof__(struct linux_mib) *net_statistics[2];
 __typeof__(struct udp_mib) *udp_statistics[2];
 __typeof__(struct udp_mib) *udplite_statistics[2];
 __typeof__(struct icmp_mib) *icmp_statistics[2];
 __typeof__(struct icmpmsg_mib) *icmpmsg_statistics[2];
# 26 "include/net/netns/mib.h"
};
# 13 "include/net/net_namespace.h" 2
# 1 "include/net/netns/unix.h" 1






struct ctl_table_header;
struct netns_unix {
 int sysctl_max_dgram_qlen;
 struct ctl_table_header *ctl;
};
# 14 "include/net/net_namespace.h" 2
# 1 "include/net/netns/packet.h" 1
# 10 "include/net/netns/packet.h"
struct netns_packet {
 rwlock_t sklist_lock;
 struct hlist_head sklist;
};
# 15 "include/net/net_namespace.h" 2
# 1 "include/net/netns/ipv4.h" 1







# 1 "include/net/inet_frag.h" 1



struct netns_frags {
 int nqueues;
 atomic_t mem;
 struct list_head lru_list;


 int timeout;
 int high_thresh;
 int low_thresh;
};

struct inet_frag_queue {
 struct hlist_node list;
 struct netns_frags *net;
 struct list_head lru_list;
 spinlock_t lock;
 atomic_t refcnt;
 struct timer_list timer;
 struct sk_buff *fragments;
 ktime_t stamp;
 int len;
 int meat;
 __u8 last_in;




};



struct inet_frags {
 struct hlist_head hash[64];
 rwlock_t lock;
 u32 rnd;
 int qsize;
 int secret_interval;
 struct timer_list secret_timer;

 unsigned int (*hashfn)(struct inet_frag_queue *);
 void (*constructor)(struct inet_frag_queue *q,
      void *arg);
 void (*destructor)(struct inet_frag_queue *);
 void (*skb_free)(struct sk_buff *);
 int (*match)(struct inet_frag_queue *q,
      void *arg);
 void (*frag_expire)(unsigned long data);
};

void inet_frags_init(struct inet_frags *);
void inet_frags_fini(struct inet_frags *);

void inet_frags_init_net(struct netns_frags *nf);
void inet_frags_exit_net(struct netns_frags *nf, struct inet_frags *f);

void inet_frag_kill(struct inet_frag_queue *q, struct inet_frags *f);
void inet_frag_destroy(struct inet_frag_queue *q,
    struct inet_frags *f, int *work);
int inet_frag_evictor(struct netns_frags *nf, struct inet_frags *f);
struct inet_frag_queue *inet_frag_find(struct netns_frags *nf,
  struct inet_frags *f, void *key, unsigned int hash)
 ;

static inline __attribute__((always_inline)) void inet_frag_put(struct inet_frag_queue *q, struct inet_frags *f)
{
 if ((atomic_sub_return(1, (&q->refcnt)) == 0))
  inet_frag_destroy(q, f, ((void *)0));
}
# 9 "include/net/netns/ipv4.h" 2

struct ctl_table_header;
struct ipv4_devconf;
struct fib_rules_ops;
struct hlist_head;
struct sock;

struct netns_ipv4 {

 struct ctl_table_header *forw_hdr;
 struct ctl_table_header *frags_hdr;
 struct ctl_table_header *ipv4_hdr;
 struct ctl_table_header *route_hdr;

 struct ipv4_devconf *devconf_all;
 struct ipv4_devconf *devconf_dflt;



 struct hlist_head *fib_table_hash;
 struct sock *fibnl;

 struct sock **icmp_sk;
 struct sock *tcp_sock;

 struct netns_frags frags;

 struct xt_table *iptable_filter;
 struct xt_table *iptable_mangle;
 struct xt_table *iptable_raw;
 struct xt_table *arptable_filter;
 struct xt_table *iptable_security;
 struct xt_table *nat_table;
 struct hlist_head *nat_bysource;
 int nat_vmalloced;


 int sysctl_icmp_echo_ignore_all;
 int sysctl_icmp_echo_ignore_broadcasts;
 int sysctl_icmp_ignore_bogus_error_responses;
 int sysctl_icmp_ratelimit;
 int sysctl_icmp_ratemask;
 int sysctl_icmp_errors_use_inbound_ifaddr;
 int sysctl_rt_cache_rebuild_count;
 int current_rt_cache_rebuild_count;

 struct timer_list rt_secret_timer;
 atomic_t rt_genid;


 struct sock *mroute_sk;
 struct mfc_cache **mfc_cache_array;
 struct vif_device *vif_table;
 int maxvif;
 atomic_t cache_resolve_queue_len;
 int mroute_do_assert;
 int mroute_do_pim;




};
# 16 "include/net/net_namespace.h" 2
# 1 "include/net/netns/ipv6.h" 1
# 10 "include/net/netns/ipv6.h"
struct ctl_table_header;

struct netns_sysctl_ipv6 {

 struct ctl_table_header *table;
 struct ctl_table_header *frags_hdr;

 int bindv6only;
 int flush_delay;
 int ip6_rt_max_size;
 int ip6_rt_gc_min_interval;
 int ip6_rt_gc_timeout;
 int ip6_rt_gc_interval;
 int ip6_rt_gc_elasticity;
 int ip6_rt_mtu_expires;
 int ip6_rt_min_advmss;
 int icmpv6_time;
};

struct netns_ipv6 {
 struct netns_sysctl_ipv6 sysctl;
 struct ipv6_devconf *devconf_all;
 struct ipv6_devconf *devconf_dflt;
 struct netns_frags frags;

 struct xt_table *ip6table_filter;
 struct xt_table *ip6table_mangle;
 struct xt_table *ip6table_raw;
 struct xt_table *ip6table_security;

 struct rt6_info *ip6_null_entry;
 struct rt6_statistics *rt6_stats;
 struct timer_list ip6_fib_timer;
 struct hlist_head *fib_table_hash;
 struct fib6_table *fib6_main_tbl;
 struct dst_ops *ip6_dst_ops;
 unsigned int ip6_rt_gc_expire;
 unsigned long ip6_rt_last_gc;






 struct sock **icmp_sk;
 struct sock *ndisc_sk;
 struct sock *tcp_sk;
 struct sock *igmp_sk;
# 70 "include/net/netns/ipv6.h"
};
# 17 "include/net/net_namespace.h" 2
# 1 "include/net/netns/dccp.h" 1



struct sock;

struct netns_dccp {
 struct sock *v4_ctl_sk;
 struct sock *v6_ctl_sk;
};
# 18 "include/net/net_namespace.h" 2
# 1 "include/net/netns/x_tables.h" 1




# 1 "include/linux/netfilter.h" 1
# 9 "include/linux/netfilter.h"
# 1 "include/linux/in.h" 1
# 25 "include/linux/in.h"
enum {
  IPPROTO_IP = 0,
  IPPROTO_ICMP = 1,
  IPPROTO_IGMP = 2,
  IPPROTO_IPIP = 4,
  IPPROTO_TCP = 6,
  IPPROTO_EGP = 8,
  IPPROTO_PUP = 12,
  IPPROTO_UDP = 17,
  IPPROTO_IDP = 22,
  IPPROTO_DCCP = 33,
  IPPROTO_RSVP = 46,
  IPPROTO_GRE = 47,

  IPPROTO_IPV6 = 41,

  IPPROTO_ESP = 50,
  IPPROTO_AH = 51,
  IPPROTO_BEETPH = 94,
  IPPROTO_PIM = 103,

  IPPROTO_COMP = 108,
  IPPROTO_SCTP = 132,
  IPPROTO_UDPLITE = 136,

  IPPROTO_RAW = 255,
  IPPROTO_MAX
};



struct in_addr {
 __be32 s_addr;
};
# 120 "include/linux/in.h"
struct ip_mreq
{
 struct in_addr imr_multiaddr;
 struct in_addr imr_interface;
};

struct ip_mreqn
{
 struct in_addr imr_multiaddr;
 struct in_addr imr_address;
 int imr_ifindex;
};

struct ip_mreq_source {
 __be32 imr_multiaddr;
 __be32 imr_interface;
 __be32 imr_sourceaddr;
};

struct ip_msfilter {
 __be32 imsf_multiaddr;
 __be32 imsf_interface;
 __u32 imsf_fmode;
 __u32 imsf_numsrc;
 __be32 imsf_slist[1];
};





struct group_req
{
 __u32 gr_interface;
 struct __kernel_sockaddr_storage gr_group;
};

struct group_source_req
{
 __u32 gsr_interface;
 struct __kernel_sockaddr_storage gsr_group;
 struct __kernel_sockaddr_storage gsr_source;
};

struct group_filter
{
 __u32 gf_interface;
 struct __kernel_sockaddr_storage gf_group;
 __u32 gf_fmode;
 __u32 gf_numsrc;
 struct __kernel_sockaddr_storage gf_slist[1];
};





struct in_pktinfo
{
 int ipi_ifindex;
 struct in_addr ipi_spec_dst;
 struct in_addr ipi_addr;
};



struct sockaddr_in {
  sa_family_t sin_family;
  __be16 sin_port;
  struct in_addr sin_addr;


  unsigned char __pad[16 - sizeof(short int) -
   sizeof(unsigned short int) - sizeof(struct in_addr)];
};
# 266 "include/linux/in.h"
static inline __attribute__((always_inline)) bool ipv4_is_loopback(__be32 addr)
{
 return (addr & (( __be32)(__u32)(0xff000000))) == (( __be32)(__u32)(0x7f000000));
}

static inline __attribute__((always_inline)) bool ipv4_is_multicast(__be32 addr)
{
 return (addr & (( __be32)(__u32)(0xf0000000))) == (( __be32)(__u32)(0xe0000000));
}

static inline __attribute__((always_inline)) bool ipv4_is_local_multicast(__be32 addr)
{
 return (addr & (( __be32)(__u32)(0xffffff00))) == (( __be32)(__u32)(0xe0000000));
}

static inline __attribute__((always_inline)) bool ipv4_is_lbcast(__be32 addr)
{

 return addr == (( __be32)(__u32)(((unsigned long int) 0xffffffff)));
}

static inline __attribute__((always_inline)) bool ipv4_is_zeronet(__be32 addr)
{
 return (addr & (( __be32)(__u32)(0xff000000))) == (( __be32)(__u32)(0x00000000));
}



static inline __attribute__((always_inline)) bool ipv4_is_private_10(__be32 addr)
{
 return (addr & (( __be32)(__u32)(0xff000000))) == (( __be32)(__u32)(0x0a000000));
}

static inline __attribute__((always_inline)) bool ipv4_is_private_172(__be32 addr)
{
 return (addr & (( __be32)(__u32)(0xfff00000))) == (( __be32)(__u32)(0xac100000));
}

static inline __attribute__((always_inline)) bool ipv4_is_private_192(__be32 addr)
{
 return (addr & (( __be32)(__u32)(0xffff0000))) == (( __be32)(__u32)(0xc0a80000));
}

static inline __attribute__((always_inline)) bool ipv4_is_linklocal_169(__be32 addr)
{
 return (addr & (( __be32)(__u32)(0xffff0000))) == (( __be32)(__u32)(0xa9fe0000));
}

static inline __attribute__((always_inline)) bool ipv4_is_anycast_6to4(__be32 addr)
{
 return (addr & (( __be32)(__u32)(0xffffff00))) == (( __be32)(__u32)(0xc0586300));
}

static inline __attribute__((always_inline)) bool ipv4_is_test_192(__be32 addr)
{
 return (addr & (( __be32)(__u32)(0xffffff00))) == (( __be32)(__u32)(0xc0000200));
}

static inline __attribute__((always_inline)) bool ipv4_is_test_198(__be32 addr)
{
 return (addr & (( __be32)(__u32)(0xfffe0000))) == (( __be32)(__u32)(0xc6120000));
}
# 10 "include/linux/netfilter.h" 2
# 44 "include/linux/netfilter.h"
enum nf_inet_hooks {
 NF_INET_PRE_ROUTING,
 NF_INET_LOCAL_IN,
 NF_INET_FORWARD,
 NF_INET_LOCAL_OUT,
 NF_INET_POST_ROUTING,
 NF_INET_NUMHOOKS
};

enum {
 NFPROTO_UNSPEC = 0,
 NFPROTO_IPV4 = 2,
 NFPROTO_ARP = 3,
 NFPROTO_BRIDGE = 7,
 NFPROTO_IPV6 = 10,
 NFPROTO_DECNET = 12,
 NFPROTO_NUMPROTO,
};

union nf_inet_addr {
 __u32 all[4];
 __be32 ip;
 __be32 ip6[4];
 struct in_addr in;
 struct in6_addr in6;
};




static inline __attribute__((always_inline)) int nf_inet_addr_cmp(const union nf_inet_addr *a1,
       const union nf_inet_addr *a2)
{
 return a1->all[0] == a2->all[0] &&
        a1->all[1] == a2->all[1] &&
        a1->all[2] == a2->all[2] &&
        a1->all[3] == a2->all[3];
}

extern void netfilter_init(void);




struct sk_buff;

typedef unsigned int nf_hookfn(unsigned int hooknum,
          struct sk_buff *skb,
          const struct net_device *in,
          const struct net_device *out,
          int (*okfn)(struct sk_buff *));

struct nf_hook_ops
{
 struct list_head list;


 nf_hookfn *hook;
 struct module *owner;
 u_int8_t pf;
 unsigned int hooknum;

 int priority;
};

struct nf_sockopt_ops
{
 struct list_head list;

 u_int8_t pf;


 int set_optmin;
 int set_optmax;
 int (*set)(struct sock *sk, int optval, void *user, unsigned int len);
 int (*compat_set)(struct sock *sk, int optval,
   void *user, unsigned int len);

 int get_optmin;
 int get_optmax;
 int (*get)(struct sock *sk, int optval, void *user, int *len);
 int (*compat_get)(struct sock *sk, int optval,
   void *user, int *len);


 struct module *owner;
};


int nf_register_hook(struct nf_hook_ops *reg);
void nf_unregister_hook(struct nf_hook_ops *reg);
int nf_register_hooks(struct nf_hook_ops *reg, unsigned int n);
void nf_unregister_hooks(struct nf_hook_ops *reg, unsigned int n);



int nf_register_sockopt(struct nf_sockopt_ops *reg);
void nf_unregister_sockopt(struct nf_sockopt_ops *reg);



extern struct ctl_path nf_net_netfilter_sysctl_path[];
extern struct ctl_path nf_net_ipv4_netfilter_sysctl_path[];


extern struct list_head nf_hooks[NFPROTO_NUMPROTO][8];

int nf_hook_slow(u_int8_t pf, unsigned int hook, struct sk_buff *skb,
   struct net_device *indev, struct net_device *outdev,
   int (*okfn)(struct sk_buff *), int thresh);
# 162 "include/linux/netfilter.h"
static inline __attribute__((always_inline)) int nf_hook_thresh(u_int8_t pf, unsigned int hook,
     struct sk_buff *skb,
     struct net_device *indev,
     struct net_device *outdev,
     int (*okfn)(struct sk_buff *), int thresh,
     int cond)
{
 if (!cond)
  return 1;

 if (list_empty(&nf_hooks[pf][hook]))
  return 1;

 return nf_hook_slow(pf, hook, skb, indev, outdev, okfn, thresh);
}

static inline __attribute__((always_inline)) int nf_hook(u_int8_t pf, unsigned int hook, struct sk_buff *skb,
     struct net_device *indev, struct net_device *outdev,
     int (*okfn)(struct sk_buff *))
{
 return nf_hook_thresh(pf, hook, skb, indev, outdev, okfn, (-((int)(~0U>>1)) - 1), 1);
}
# 223 "include/linux/netfilter.h"
int nf_setsockopt(struct sock *sk, u_int8_t pf, int optval, char *opt,
    int len);
int nf_getsockopt(struct sock *sk, u_int8_t pf, int optval, char *opt,
    int *len);

int compat_nf_setsockopt(struct sock *sk, u_int8_t pf, int optval,
  char *opt, int len);
int compat_nf_getsockopt(struct sock *sk, u_int8_t pf, int optval,
  char *opt, int *len);




extern int skb_make_writable(struct sk_buff *skb, unsigned int writable_len);

struct flowi;
struct nf_queue_entry;

struct nf_afinfo {
 unsigned short family;
 __sum16 (*checksum)(struct sk_buff *skb, unsigned int hook,
        unsigned int dataoff, u_int8_t protocol);
 __sum16 (*checksum_partial)(struct sk_buff *skb,
         unsigned int hook,
         unsigned int dataoff,
         unsigned int len,
         u_int8_t protocol);
 int (*route)(struct dst_entry **dst, struct flowi *fl);
 void (*saveroute)(const struct sk_buff *skb,
         struct nf_queue_entry *entry);
 int (*reroute)(struct sk_buff *skb,
       const struct nf_queue_entry *entry);
 int route_key_size;
};

extern const struct nf_afinfo *nf_afinfo[NFPROTO_NUMPROTO];
static inline __attribute__((always_inline)) const struct nf_afinfo *nf_get_afinfo(unsigned short family)
{
 return ({ typeof(nf_afinfo[family]) _________p1 = (*(volatile typeof(nf_afinfo[family]) *)&(nf_afinfo[family])); do { } while(0); (_________p1); });
}

static inline __attribute__((always_inline)) __sum16
nf_checksum(struct sk_buff *skb, unsigned int hook, unsigned int dataoff,
     u_int8_t protocol, unsigned short family)
{
 const struct nf_afinfo *afinfo;
 __sum16 csum = 0;

 do { do { } while (0); (void)0; do { } while (0); } while (0);
 afinfo = nf_get_afinfo(family);
 if (afinfo)
  csum = afinfo->checksum(skb, hook, dataoff, protocol);
 do { do { } while (0); (void)0; do { } while (0); } while (0);
 return csum;
}

static inline __attribute__((always_inline)) __sum16
nf_checksum_partial(struct sk_buff *skb, unsigned int hook,
      unsigned int dataoff, unsigned int len,
      u_int8_t protocol, unsigned short family)
{
 const struct nf_afinfo *afinfo;
 __sum16 csum = 0;

 do { do { } while (0); (void)0; do { } while (0); } while (0);
 afinfo = nf_get_afinfo(family);
 if (afinfo)
  csum = afinfo->checksum_partial(skb, hook, dataoff, len,
      protocol);
 do { do { } while (0); (void)0; do { } while (0); } while (0);
 return csum;
}

extern int nf_register_afinfo(const struct nf_afinfo *afinfo);
extern void nf_unregister_afinfo(const struct nf_afinfo *afinfo);

# 1 "include/net/flow.h" 1
# 13 "include/net/flow.h"
struct flowi {
 int oif;
 int iif;
 __u32 mark;

 union {
  struct {
   __be32 daddr;
   __be32 saddr;
   __u8 tos;
   __u8 scope;
  } ip4_u;

  struct {
   struct in6_addr daddr;
   struct in6_addr saddr;
   __be32 flowlabel;
  } ip6_u;

  struct {
   __le16 daddr;
   __le16 saddr;
   __u8 scope;
  } dn_u;
 } nl_u;
# 49 "include/net/flow.h"
 __u8 proto;
 __u8 flags;

 union {
  struct {
   __be16 sport;
   __be16 dport;
  } ports;

  struct {
   __u8 type;
   __u8 code;
  } icmpt;

  struct {
   __le16 sport;
   __le16 dport;
  } dnports;

  __be32 spi;

  struct {
   __u8 type;
  } mht;
 } uli_u;






 __u32 secid;
} __attribute__((__aligned__(32/8)));





struct net;
struct sock;
typedef int (*flow_resolve_t)(struct net *net, struct flowi *key, u16 family,
         u8 dir, void **objp, atomic_t **obj_refp);

extern void *flow_cache_lookup(struct net *net, struct flowi *key, u16 family,
          u8 dir, flow_resolve_t resolver);
extern void flow_cache_flush(void);
extern atomic_t flow_cache_genid;

static inline __attribute__((always_inline)) int flow_cache_uli_match(struct flowi *fl1, struct flowi *fl2)
{
 return (fl1->proto == fl2->proto &&
  !memcmp(&fl1->uli_u, &fl2->uli_u, sizeof(fl1->uli_u)));
}
# 300 "include/linux/netfilter.h" 2
extern void (*ip_nat_decode_session)(struct sk_buff *, struct flowi *);

static inline __attribute__((always_inline)) void
nf_nat_decode_session(struct sk_buff *skb, struct flowi *fl, u_int8_t family)
{

 void (*decodefn)(struct sk_buff *, struct flowi *);

 if (family == 2) {
  do { do { } while (0); (void)0; do { } while (0); } while (0);
  decodefn = ({ typeof(ip_nat_decode_session) _________p1 = (*(volatile typeof(ip_nat_decode_session) *)&(ip_nat_decode_session)); do { } while(0); (_________p1); });
  if (decodefn)
   decodefn(skb, fl);
  do { do { } while (0); (void)0; do { } while (0); } while (0);
 }

}


# 1 "include/linux/proc_fs.h" 1




# 1 "include/linux/fs.h" 1
# 9 "include/linux/fs.h"
# 1 "include/linux/limits.h" 1
# 10 "include/linux/fs.h" 2
# 35 "include/linux/fs.h"
struct files_stat_struct {
 int nr_files;
 int nr_free_files;
 int max_files;
};

struct inodes_stat_t {
 int nr_inodes;
 int nr_unused;
 int dummy[5];
};
# 361 "include/linux/fs.h"
# 1 "include/linux/kdev_t.h" 1
# 21 "include/linux/kdev_t.h"
static inline __attribute__((always_inline)) int old_valid_dev(dev_t dev)
{
 return ((unsigned int) ((dev) >> 20)) < 256 && ((unsigned int) ((dev) & ((1U << 20) - 1))) < 256;
}

static inline __attribute__((always_inline)) u16 old_encode_dev(dev_t dev)
{
 return (((unsigned int) ((dev) >> 20)) << 8) | ((unsigned int) ((dev) & ((1U << 20) - 1)));
}

static inline __attribute__((always_inline)) dev_t old_decode_dev(u16 val)
{
 return ((((val >> 8) & 255) << 20) | (val & 255));
}

static inline __attribute__((always_inline)) int new_valid_dev(dev_t dev)
{
 return 1;
}

static inline __attribute__((always_inline)) u32 new_encode_dev(dev_t dev)
{
 unsigned major = ((unsigned int) ((dev) >> 20));
 unsigned minor = ((unsigned int) ((dev) & ((1U << 20) - 1)));
 return (minor & 0xff) | (major << 8) | ((minor & ~0xff) << 12);
}

static inline __attribute__((always_inline)) dev_t new_decode_dev(u32 dev)
{
 unsigned major = (dev & 0xfff00) >> 8;
 unsigned minor = (dev & 0xff) | ((dev >> 12) & 0xfff00);
 return (((major) << 20) | (minor));
}

static inline __attribute__((always_inline)) int huge_valid_dev(dev_t dev)
{
 return 1;
}

static inline __attribute__((always_inline)) u64 huge_encode_dev(dev_t dev)
{
 return new_encode_dev(dev);
}

static inline __attribute__((always_inline)) dev_t huge_decode_dev(u64 dev)
{
 return new_decode_dev(dev);
}

static inline __attribute__((always_inline)) int sysv_valid_dev(dev_t dev)
{
 return ((unsigned int) ((dev) >> 20)) < (1<<14) && ((unsigned int) ((dev) & ((1U << 20) - 1))) < (1<<18);
}

static inline __attribute__((always_inline)) u32 sysv_encode_dev(dev_t dev)
{
 return ((unsigned int) ((dev) & ((1U << 20) - 1))) | (((unsigned int) ((dev) >> 20)) << 18);
}

static inline __attribute__((always_inline)) unsigned sysv_major(u32 dev)
{
 return (dev >> 18) & 0x3fff;
}

static inline __attribute__((always_inline)) unsigned sysv_minor(u32 dev)
{
 return dev & 0x3ffff;
}
# 362 "include/linux/fs.h" 2
# 1 "include/linux/dcache.h" 1





# 1 "include/linux/rculist.h" 1
# 18 "include/linux/rculist.h"
static inline __attribute__((always_inline)) void __list_add_rcu(struct list_head *new,
  struct list_head *prev, struct list_head *next)
{
 new->next = next;
 new->prev = prev;
 ({ if (!__builtin_constant_p(new) || ((new) != ((void *)0))) __asm__ __volatile__("   \n" : : : "memory"); (prev->next) = (new); });
 next->prev = new;
}
# 43 "include/linux/rculist.h"
static inline __attribute__((always_inline)) void list_add_rcu(struct list_head *new, struct list_head *head)
{
 __list_add_rcu(new, head, head->next);
}
# 64 "include/linux/rculist.h"
static inline __attribute__((always_inline)) void list_add_tail_rcu(struct list_head *new,
     struct list_head *head)
{
 __list_add_rcu(new, head->prev, head);
}
# 94 "include/linux/rculist.h"
static inline __attribute__((always_inline)) void list_del_rcu(struct list_head *entry)
{
 __list_del(entry->prev, entry->next);
 entry->prev = ((void *) 0x00200200);
}
# 120 "include/linux/rculist.h"
static inline __attribute__((always_inline)) void hlist_del_init_rcu(struct hlist_node *n)
{
 if (!hlist_unhashed(n)) {
  __hlist_del(n);
  n->pprev = ((void *)0);
 }
}
# 136 "include/linux/rculist.h"
static inline __attribute__((always_inline)) void list_replace_rcu(struct list_head *old,
    struct list_head *new)
{
 new->next = old->next;
 new->prev = old->prev;
 ({ if (!__builtin_constant_p(new) || ((new) != ((void *)0))) __asm__ __volatile__("   \n" : : : "memory"); (new->prev->next) = (new); });
 new->next->prev = new;
 old->prev = ((void *) 0x00200200);
}
# 163 "include/linux/rculist.h"
static inline __attribute__((always_inline)) void list_splice_init_rcu(struct list_head *list,
     struct list_head *head,
     void (*sync)(void))
{
 struct list_head *first = list->next;
 struct list_head *last = list->prev;
 struct list_head *at = head->next;

 if (list_empty(head))
  return;



 INIT_LIST_HEAD(list);
# 185 "include/linux/rculist.h"
 sync();
# 195 "include/linux/rculist.h"
 last->next = at;
 ({ if (!__builtin_constant_p(first) || ((first) != ((void *)0))) __asm__ __volatile__("   \n" : : : "memory"); (head->next) = (first); });
 first->prev = head;
 at->prev = last;
}
# 257 "include/linux/rculist.h"
static inline __attribute__((always_inline)) void hlist_del_rcu(struct hlist_node *n)
{
 __hlist_del(n);
 n->pprev = ((void *) 0x00200200);
}
# 270 "include/linux/rculist.h"
static inline __attribute__((always_inline)) void hlist_replace_rcu(struct hlist_node *old,
     struct hlist_node *new)
{
 struct hlist_node *next = old->next;

 new->next = next;
 new->pprev = old->pprev;
 ({ if (!__builtin_constant_p(new) || ((new) != ((void *)0))) __asm__ __volatile__("   \n" : : : "memory"); (*new->pprev) = (new); });
 if (next)
  new->next->pprev = &new->next;
 old->pprev = ((void *) 0x00200200);
}
# 302 "include/linux/rculist.h"
static inline __attribute__((always_inline)) void hlist_add_head_rcu(struct hlist_node *n,
     struct hlist_head *h)
{
 struct hlist_node *first = h->first;

 n->next = first;
 n->pprev = &h->first;
 ({ if (!__builtin_constant_p(n) || ((n) != ((void *)0))) __asm__ __volatile__("   \n" : : : "memory"); (h->first) = (n); });
 if (first)
  first->pprev = &n->next;
}
# 332 "include/linux/rculist.h"
static inline __attribute__((always_inline)) void hlist_add_before_rcu(struct hlist_node *n,
     struct hlist_node *next)
{
 n->pprev = next->pprev;
 n->next = next;
 ({ if (!__builtin_constant_p(n) || ((n) != ((void *)0))) __asm__ __volatile__("   \n" : : : "memory"); (*(n->pprev)) = (n); });
 next->pprev = &n->next;
}
# 359 "include/linux/rculist.h"
static inline __attribute__((always_inline)) void hlist_add_after_rcu(struct hlist_node *prev,
           struct hlist_node *n)
{
 n->next = prev->next;
 n->pprev = &prev->next;
 ({ if (!__builtin_constant_p(n) || ((n) != ((void *)0))) __asm__ __volatile__("   \n" : : : "memory"); (prev->next) = (n); });
 if (n->next)
  n->next->pprev = &n->next;
}
# 7 "include/linux/dcache.h" 2




struct nameidata;
struct path;
struct vfsmount;
# 33 "include/linux/dcache.h"
struct qstr {
 unsigned int hash;
 unsigned int len;
 const unsigned char *name;
};

struct dentry_stat_t {
 int nr_dentry;
 int nr_unused;
 int age_limit;
 int want_pages;
 int dummy[2];
};
extern struct dentry_stat_t dentry_stat;






static inline __attribute__((always_inline)) unsigned long
partial_name_hash(unsigned long c, unsigned long prevhash)
{
 return (prevhash + (c << 4) + (c >> 4)) * 11;
}





static inline __attribute__((always_inline)) unsigned long end_name_hash(unsigned long hash)
{
 return (unsigned int) hash;
}


static inline __attribute__((always_inline)) unsigned int
full_name_hash(const unsigned char *name, unsigned int len)
{
 unsigned long hash = 0;
 while (len--)
  hash = partial_name_hash(*name++, hash);
 return end_name_hash(hash);
}
# 89 "include/linux/dcache.h"
struct dentry {
 atomic_t d_count;
 unsigned int d_flags;
 spinlock_t d_lock;
 int d_mounted;
 struct inode *d_inode;





 struct hlist_node d_hash;
 struct dentry *d_parent;
 struct qstr d_name;

 struct list_head d_lru;



 union {
  struct list_head d_child;
   struct rcu_head d_rcu;
 } d_u;
 struct list_head d_subdirs;
 struct list_head d_alias;
 unsigned long d_time;
 const struct dentry_operations *d_op;
 struct super_block *d_sb;
 void *d_fsdata;

 unsigned char d_iname[40];
};







enum dentry_d_lock_class
{
 DENTRY_D_LOCK_NORMAL,
 DENTRY_D_LOCK_NESTED
};

struct dentry_operations {
 int (*d_revalidate)(struct dentry *, struct nameidata *);
 int (*d_hash) (struct dentry *, struct qstr *);
 int (*d_compare) (struct dentry *, struct qstr *, struct qstr *);
 int (*d_delete)(struct dentry *);
 void (*d_release)(struct dentry *);
 void (*d_iput)(struct dentry *, struct inode *);
 char *(*d_dname)(struct dentry *, char *, int);
};
# 187 "include/linux/dcache.h"
extern spinlock_t dcache_lock;
extern seqlock_t rename_lock;
# 206 "include/linux/dcache.h"
static inline __attribute__((always_inline)) void __d_drop(struct dentry *dentry)
{
 if (!(dentry->d_flags & 0x0010)) {
  dentry->d_flags |= 0x0010;
  hlist_del_rcu(&dentry->d_hash);
 }
}

static inline __attribute__((always_inline)) void d_drop(struct dentry *dentry)
{
 do { do { } while (0); (void)0; (void)(&dcache_lock); } while (0);
 do { do { } while (0); (void)0; (void)(&dentry->d_lock); } while (0);
  __d_drop(dentry);
 do { do { } while (0); (void)0; (void)(&dentry->d_lock); } while (0);
 do { do { } while (0); (void)0; (void)(&dcache_lock); } while (0);
}

static inline __attribute__((always_inline)) int dname_external(struct dentry *dentry)
{
 return dentry->d_name.name != dentry->d_iname;
}




extern void d_instantiate(struct dentry *, struct inode *);
extern struct dentry * d_instantiate_unique(struct dentry *, struct inode *);
extern struct dentry * d_materialise_unique(struct dentry *, struct inode *);
extern void d_delete(struct dentry *);


extern struct dentry * d_alloc(struct dentry *, const struct qstr *);
extern struct dentry * d_splice_alias(struct inode *, struct dentry *);
extern struct dentry * d_add_ci(struct dentry *, struct inode *, struct qstr *);
extern struct dentry * d_obtain_alias(struct inode *);
extern void shrink_dcache_sb(struct super_block *);
extern void shrink_dcache_parent(struct dentry *);
extern void shrink_dcache_for_umount(struct super_block *);
extern int d_invalidate(struct dentry *);


extern struct dentry * d_alloc_root(struct inode *);


extern void d_genocide(struct dentry *);

extern struct dentry *d_find_alias(struct inode *);
extern void d_prune_aliases(struct inode *);


extern int have_submounts(struct dentry *);




extern void d_rehash(struct dentry *);
# 272 "include/linux/dcache.h"
static inline __attribute__((always_inline)) void d_add(struct dentry *entry, struct inode *inode)
{
 d_instantiate(entry, inode);
 d_rehash(entry);
}
# 286 "include/linux/dcache.h"
static inline __attribute__((always_inline)) struct dentry *d_add_unique(struct dentry *entry, struct inode *inode)
{
 struct dentry *res;

 res = d_instantiate_unique(entry, inode);
 d_rehash(res != ((void *)0) ? res : entry);
 return res;
}


extern void d_move(struct dentry *, struct dentry *);
extern struct dentry *d_ancestor(struct dentry *, struct dentry *);


extern struct dentry * d_lookup(struct dentry *, struct qstr *);
extern struct dentry * __d_lookup(struct dentry *, struct qstr *);
extern struct dentry * d_hash_and_lookup(struct dentry *, struct qstr *);


extern int d_validate(struct dentry *, struct dentry *);




extern char *dynamic_dname(struct dentry *, char *, int, const char *, ...);

extern char *__d_path(const struct path *path, struct path *root, char *, int);
extern char *d_path(const struct path *, char *, int);
extern char *dentry_path(struct dentry *, char *, int);
# 331 "include/linux/dcache.h"
static inline __attribute__((always_inline)) struct dentry *dget(struct dentry *dentry)
{
 if (dentry) {
  do { if (!((&dentry->d_count)->counter)) ; } while(0);
  atomic_add(1, (&dentry->d_count));
 }
 return dentry;
}

extern struct dentry * dget_locked(struct dentry *);
# 349 "include/linux/dcache.h"
static inline __attribute__((always_inline)) int d_unhashed(struct dentry *dentry)
{
 return (dentry->d_flags & 0x0010);
}

static inline __attribute__((always_inline)) struct dentry *dget_parent(struct dentry *dentry)
{
 struct dentry *ret;

 do { do { } while (0); (void)0; (void)(&dentry->d_lock); } while (0);
 ret = dget(dentry->d_parent);
 do { do { } while (0); (void)0; (void)(&dentry->d_lock); } while (0);
 return ret;
}

extern void dput(struct dentry *);

static inline __attribute__((always_inline)) int d_mountpoint(struct dentry *dentry)
{
 return dentry->d_mounted;
}

extern struct vfsmount *lookup_mnt(struct vfsmount *, struct dentry *);
extern struct dentry *lookup_create(struct nameidata *nd, int is_dir);

extern int sysctl_vfs_cache_pressure;
# 363 "include/linux/fs.h" 2
# 1 "include/linux/path.h" 1



struct dentry;
struct vfsmount;

struct path {
 struct vfsmount *mnt;
 struct dentry *dentry;
};

extern void path_get(struct path *);
extern void path_put(struct path *);
# 364 "include/linux/fs.h" 2




# 1 "include/linux/radix-tree.h" 1
# 41 "include/linux/radix-tree.h"
static inline __attribute__((always_inline)) void *radix_tree_ptr_to_indirect(void *ptr)
{
 return (void *)((unsigned long)ptr | 1);
}

static inline __attribute__((always_inline)) void *radix_tree_indirect_to_ptr(void *ptr)
{
 return (void *)((unsigned long)ptr & ~1);
}

static inline __attribute__((always_inline)) int radix_tree_is_indirect_ptr(void *ptr)
{
 return (int)((unsigned long)ptr & 1);
}






struct radix_tree_root {
 unsigned int height;
 gfp_t gfp_mask;
 struct radix_tree_node *rnode;
};
# 137 "include/linux/radix-tree.h"
static inline __attribute__((always_inline)) void *radix_tree_deref_slot(void **pslot)
{
 void *ret = ({ typeof(*pslot) _________p1 = (*(volatile typeof(*pslot) *)&(*pslot)); do { } while(0); (_________p1); });
 if (__builtin_expect(!!(radix_tree_is_indirect_ptr(ret)), 0))
  ret = ((void *)-1UL);
 return ret;
}
# 152 "include/linux/radix-tree.h"
static inline __attribute__((always_inline)) void radix_tree_replace_slot(void **pslot, void *item)
{
 do { if (radix_tree_is_indirect_ptr(item)) ; } while(0);
 ({ if (!__builtin_constant_p(item) || ((item) != ((void *)0))) __asm__ __volatile__("   \n" : : : "memory"); (*pslot) = (item); });
}

int radix_tree_insert(struct radix_tree_root *, unsigned long, void *);
void *radix_tree_lookup(struct radix_tree_root *, unsigned long);
void **radix_tree_lookup_slot(struct radix_tree_root *, unsigned long);
void *radix_tree_delete(struct radix_tree_root *, unsigned long);
unsigned int
radix_tree_gang_lookup(struct radix_tree_root *root, void **results,
   unsigned long first_index, unsigned int max_items);
unsigned int
radix_tree_gang_lookup_slot(struct radix_tree_root *root, void ***results,
   unsigned long first_index, unsigned int max_items);
unsigned long radix_tree_next_hole(struct radix_tree_root *root,
    unsigned long index, unsigned long max_scan);
int radix_tree_preload(gfp_t gfp_mask);
void radix_tree_init(void);
void *radix_tree_tag_set(struct radix_tree_root *root,
   unsigned long index, unsigned int tag);
void *radix_tree_tag_clear(struct radix_tree_root *root,
   unsigned long index, unsigned int tag);
int radix_tree_tag_get(struct radix_tree_root *root,
   unsigned long index, unsigned int tag);
unsigned int
radix_tree_gang_lookup_tag(struct radix_tree_root *root, void **results,
  unsigned long first_index, unsigned int max_items,
  unsigned int tag);
unsigned int
radix_tree_gang_lookup_tag_slot(struct radix_tree_root *root, void ***results,
  unsigned long first_index, unsigned int max_items,
  unsigned int tag);
int radix_tree_tagged(struct radix_tree_root *root, unsigned int tag);

static inline __attribute__((always_inline)) void radix_tree_preload_end(void)
{
 do { } while (0);
}
# 369 "include/linux/fs.h" 2


# 1 "include/linux/pid.h" 1





enum pid_type
{
 PIDTYPE_PID,
 PIDTYPE_PGID,
 PIDTYPE_SID,
 PIDTYPE_MAX
};
# 50 "include/linux/pid.h"
struct upid {

 int nr;
 struct pid_namespace *ns;
 struct hlist_node pid_chain;
};

struct pid
{
 atomic_t count;
 unsigned int level;

 struct hlist_head tasks[PIDTYPE_MAX];
 struct rcu_head rcu;
 struct upid numbers[1];
};

extern struct pid init_struct_pid;

struct pid_link
{
 struct hlist_node node;
 struct pid *pid;
};

static inline __attribute__((always_inline)) struct pid *get_pid(struct pid *pid)
{
 if (pid)
  atomic_add(1, (&pid->count));
 return pid;
}

extern void put_pid(struct pid *pid);
extern struct task_struct *pid_task(struct pid *pid, enum pid_type);
extern struct task_struct *get_pid_task(struct pid *pid, enum pid_type);

extern struct pid *get_task_pid(struct task_struct *task, enum pid_type type);





extern void attach_pid(struct task_struct *task, enum pid_type type,
   struct pid *pid);
extern void detach_pid(struct task_struct *task, enum pid_type);
extern void change_pid(struct task_struct *task, enum pid_type,
   struct pid *pid);
extern void transfer_pid(struct task_struct *old, struct task_struct *new,
    enum pid_type);

struct pid_namespace;
extern struct pid_namespace init_pid_ns;
# 112 "include/linux/pid.h"
extern struct pid *find_pid_ns(int nr, struct pid_namespace *ns);
extern struct pid *find_vpid(int nr);




extern struct pid *find_get_pid(int nr);
extern struct pid *find_ge_pid(int nr, struct pid_namespace *);
int next_pidmap(struct pid_namespace *pid_ns, int last);

extern struct pid *alloc_pid(struct pid_namespace *ns);
extern void free_pid(struct pid *pid);
# 135 "include/linux/pid.h"
static inline __attribute__((always_inline)) struct pid_namespace *ns_of_pid(struct pid *pid)
{
 struct pid_namespace *ns = ((void *)0);
 if (pid)
  ns = pid->numbers[pid->level].ns;
 return ns;
}
# 154 "include/linux/pid.h"
static inline __attribute__((always_inline)) pid_t pid_nr(struct pid *pid)
{
 pid_t nr = 0;
 if (pid)
  nr = pid->numbers[0].nr;
 return nr;
}

pid_t pid_nr_ns(struct pid *pid, struct pid_namespace *ns);
pid_t pid_vnr(struct pid *pid);
# 372 "include/linux/fs.h" 2

# 1 "include/linux/capability.h" 1
# 18 "include/linux/capability.h"
struct task_struct;
# 40 "include/linux/capability.h"
typedef struct __user_cap_header_struct {
 __u32 version;
 int pid;
} *cap_user_header_t;

typedef struct __user_cap_data_struct {
        __u32 effective;
        __u32 permitted;
        __u32 inheritable;
} *cap_user_data_t;
# 72 "include/linux/capability.h"
struct vfs_cap_data {
 __le32 magic_etc;
 struct {
  __le32 permitted;
  __le32 inheritable;
 } data[2];
};
# 99 "include/linux/capability.h"
typedef struct kernel_cap_struct {
 __u32 cap[2];
} kernel_cap_t;


struct cpu_vfs_cap_data {
 __u32 magic_etc;
 kernel_cap_t permitted;
 kernel_cap_t inheritable;
};
# 444 "include/linux/capability.h"
static inline __attribute__((always_inline)) kernel_cap_t cap_combine(const kernel_cap_t a,
           const kernel_cap_t b)
{
 kernel_cap_t dest;
 do { unsigned __capi; for (__capi = 0; __capi < 2; ++__capi) { dest.cap[__capi] = a.cap[__capi] | b.cap[__capi]; } } while (0);
 return dest;
}

static inline __attribute__((always_inline)) kernel_cap_t cap_intersect(const kernel_cap_t a,
      const kernel_cap_t b)
{
 kernel_cap_t dest;
 do { unsigned __capi; for (__capi = 0; __capi < 2; ++__capi) { dest.cap[__capi] = a.cap[__capi] & b.cap[__capi]; } } while (0);
 return dest;
}

static inline __attribute__((always_inline)) kernel_cap_t cap_drop(const kernel_cap_t a,
        const kernel_cap_t drop)
{
 kernel_cap_t dest;
 do { unsigned __capi; for (__capi = 0; __capi < 2; ++__capi) { dest.cap[__capi] = a.cap[__capi] &~ drop.cap[__capi]; } } while (0);
 return dest;
}

static inline __attribute__((always_inline)) kernel_cap_t cap_invert(const kernel_cap_t c)
{
 kernel_cap_t dest;
 do { unsigned __capi; for (__capi = 0; __capi < 2; ++__capi) { dest.cap[__capi] = ~ c.cap[__capi]; } } while (0);
 return dest;
}

static inline __attribute__((always_inline)) int cap_isclear(const kernel_cap_t a)
{
 unsigned __capi;
 for (__capi = 0; __capi < 2; ++__capi) {
  if (a.cap[__capi] != 0)
   return 0;
 }
 return 1;
}
# 492 "include/linux/capability.h"
static inline __attribute__((always_inline)) int cap_issubset(const kernel_cap_t a, const kernel_cap_t set)
{
 kernel_cap_t dest;
 dest = cap_drop(a, set);
 return cap_isclear(dest);
}



static inline __attribute__((always_inline)) int cap_is_fs_cap(int cap)
{
 const kernel_cap_t __cap_fs_set = ((kernel_cap_t){{ ((1 << ((0) & 31)) | (1 << ((27) & 31)) | (1 << ((1) & 31)) | (1 << ((2) & 31)) | (1 << ((3) & 31)) | (1 << ((4) & 31))) | (1 << ((9) & 31)), ((1 << ((32) & 31))) } });
 return !!((1 << ((cap) & 31)) & __cap_fs_set.cap[((cap) >> 5)]);
}

static inline __attribute__((always_inline)) kernel_cap_t cap_drop_fs_set(const kernel_cap_t a)
{
 const kernel_cap_t __cap_fs_set = ((kernel_cap_t){{ ((1 << ((0) & 31)) | (1 << ((27) & 31)) | (1 << ((1) & 31)) | (1 << ((2) & 31)) | (1 << ((3) & 31)) | (1 << ((4) & 31))) | (1 << ((9) & 31)), ((1 << ((32) & 31))) } });
 return cap_drop(a, __cap_fs_set);
}

static inline __attribute__((always_inline)) kernel_cap_t cap_raise_fs_set(const kernel_cap_t a,
         const kernel_cap_t permitted)
{
 const kernel_cap_t __cap_fs_set = ((kernel_cap_t){{ ((1 << ((0) & 31)) | (1 << ((27) & 31)) | (1 << ((1) & 31)) | (1 << ((2) & 31)) | (1 << ((3) & 31)) | (1 << ((4) & 31))) | (1 << ((9) & 31)), ((1 << ((32) & 31))) } });
 return cap_combine(a,
      cap_intersect(permitted, __cap_fs_set));
}

static inline __attribute__((always_inline)) kernel_cap_t cap_drop_nfsd_set(const kernel_cap_t a)
{
 const kernel_cap_t __cap_fs_set = ((kernel_cap_t){{ ((1 << ((0) & 31)) | (1 << ((27) & 31)) | (1 << ((1) & 31)) | (1 << ((2) & 31)) | (1 << ((3) & 31)) | (1 << ((4) & 31))) | (1 << ((24) & 31)), ((1 << ((32) & 31))) } });
 return cap_drop(a, __cap_fs_set);
}

static inline __attribute__((always_inline)) kernel_cap_t cap_raise_nfsd_set(const kernel_cap_t a,
           const kernel_cap_t permitted)
{
 const kernel_cap_t __cap_nfsd_set = ((kernel_cap_t){{ ((1 << ((0) & 31)) | (1 << ((27) & 31)) | (1 << ((1) & 31)) | (1 << ((2) & 31)) | (1 << ((3) & 31)) | (1 << ((4) & 31))) | (1 << ((24) & 31)), ((1 << ((32) & 31))) } });
 return cap_combine(a,
      cap_intersect(permitted, __cap_nfsd_set));
}

extern const kernel_cap_t __cap_empty_set;
extern const kernel_cap_t __cap_full_set;
extern const kernel_cap_t __cap_init_eff_set;
# 565 "include/linux/capability.h"
extern int capable(int cap);


struct dentry;
extern int get_vfs_caps_from_disk(const struct dentry *dentry, struct cpu_vfs_cap_data *cpu_caps);
# 374 "include/linux/fs.h" 2

# 1 "include/linux/fiemap.h" 1
# 16 "include/linux/fiemap.h"
struct fiemap_extent {
 __u64 fe_logical;

 __u64 fe_physical;

 __u64 fe_length;
 __u64 fe_reserved64[2];
 __u32 fe_flags;
 __u32 fe_reserved[3];
};

struct fiemap {
 __u64 fm_start;

 __u64 fm_length;

 __u32 fm_flags;
 __u32 fm_mapped_extents;
 __u32 fm_extent_count;
 __u32 fm_reserved;
 struct fiemap_extent fm_extents[0];
};
# 376 "include/linux/fs.h" 2




struct export_operations;
struct hd_geometry;
struct iovec;
struct nameidata;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct vm_area_struct;
struct vfsmount;
struct cred;

extern void __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) inode_init(void);
extern void __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) inode_init_early(void);
extern void __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) files_init(unsigned long);

extern struct files_stat_struct files_stat;
extern int get_max_files(void);
extern int sysctl_nr_open;
extern struct inodes_stat_t inodes_stat;
extern int leases_enable, lease_break_time;




struct buffer_head;
typedef int (get_block_t)(struct inode *inode, sector_t iblock,
   struct buffer_head *bh_result, int create);
typedef void (dio_iodone_t)(struct kiocb *iocb, loff_t offset,
   ssize_t bytes, void *private);
# 442 "include/linux/fs.h"
struct iattr {
 unsigned int ia_valid;
 umode_t ia_mode;
 uid_t ia_uid;
 gid_t ia_gid;
 loff_t ia_size;
 struct timespec ia_atime;
 struct timespec ia_mtime;
 struct timespec ia_ctime;






 struct file *ia_file;
};




# 1 "include/linux/quota.h" 1
# 86 "include/linux/quota.h"
enum {
 QIF_BLIMITS_B = 0,
 QIF_SPACE_B,
 QIF_ILIMITS_B,
 QIF_INODES_B,
 QIF_BTIME_B,
 QIF_ITIME_B,
};
# 106 "include/linux/quota.h"
struct if_dqblk {
 __u64 dqb_bhardlimit;
 __u64 dqb_bsoftlimit;
 __u64 dqb_curspace;
 __u64 dqb_ihardlimit;
 __u64 dqb_isoftlimit;
 __u64 dqb_curinodes;
 __u64 dqb_btime;
 __u64 dqb_itime;
 __u32 dqb_valid;
};
# 127 "include/linux/quota.h"
struct if_dqinfo {
 __u64 dqi_bgrace;
 __u64 dqi_igrace;
 __u32 dqi_flags;
 __u32 dqi_valid;
};
# 149 "include/linux/quota.h"
enum {
 QUOTA_NL_C_UNSPEC,
 QUOTA_NL_C_WARNING,
 __QUOTA_NL_C_MAX,
};


enum {
 QUOTA_NL_A_UNSPEC,
 QUOTA_NL_A_QTYPE,
 QUOTA_NL_A_EXCESS_ID,
 QUOTA_NL_A_WARNING,
 QUOTA_NL_A_DEV_MAJOR,
 QUOTA_NL_A_DEV_MINOR,
 QUOTA_NL_A_CAUSED_ID,
 __QUOTA_NL_A_MAX,
};
# 176 "include/linux/quota.h"
# 1 "include/linux/dqblk_xfs.h" 1
# 50 "include/linux/dqblk_xfs.h"
typedef struct fs_disk_quota {
 __s8 d_version;
 __s8 d_flags;
 __u16 d_fieldmask;
 __u32 d_id;
 __u64 d_blk_hardlimit;
 __u64 d_blk_softlimit;
 __u64 d_ino_hardlimit;
 __u64 d_ino_softlimit;
 __u64 d_bcount;
 __u64 d_icount;
 __s32 d_itimer;

 __s32 d_btimer;
 __u16 d_iwarns;
 __u16 d_bwarns;
 __s32 d_padding2;
 __u64 d_rtb_hardlimit;
 __u64 d_rtb_softlimit;
 __u64 d_rtbcount;
 __s32 d_rtbtimer;
 __u16 d_rtbwarns;
 __s16 d_padding3;
 char d_padding4[8];
} fs_disk_quota_t;
# 137 "include/linux/dqblk_xfs.h"
typedef struct fs_qfilestat {
 __u64 qfs_ino;
 __u64 qfs_nblks;
 __u32 qfs_nextents;
} fs_qfilestat_t;

typedef struct fs_quota_stat {
 __s8 qs_version;
 __u16 qs_flags;
 __s8 qs_pad;
 fs_qfilestat_t qs_uquota;
 fs_qfilestat_t qs_gquota;
 __u32 qs_incoredqs;
 __s32 qs_btimelimit;
 __s32 qs_itimelimit;
 __s32 qs_rtbtimelimit;
 __u16 qs_bwarnlimit;
 __u16 qs_iwarnlimit;
} fs_quota_stat_t;
# 177 "include/linux/quota.h" 2
# 1 "include/linux/dqblk_v1.h" 1
# 178 "include/linux/quota.h" 2
# 1 "include/linux/dqblk_v2.h" 1







# 1 "include/linux/dqblk_qtree.h" 1
# 17 "include/linux/dqblk_qtree.h"
struct dquot;


struct qtree_fmt_operations {
 void (*mem2disk_dqblk)(void *disk, struct dquot *dquot);
 void (*disk2mem_dqblk)(struct dquot *dquot, void *disk);
 int (*is_id)(void *disk, struct dquot *dquot);
};


struct qtree_mem_dqinfo {
 struct super_block *dqi_sb;
 int dqi_type;
 unsigned int dqi_blocks;
 unsigned int dqi_free_blk;
 unsigned int dqi_free_entry;
 unsigned int dqi_blocksize_bits;
 unsigned int dqi_entry_size;
 unsigned int dqi_usable_bs;
 unsigned int dqi_qtree_depth;
 struct qtree_fmt_operations *dqi_ops;
};

int qtree_write_dquot(struct qtree_mem_dqinfo *info, struct dquot *dquot);
int qtree_read_dquot(struct qtree_mem_dqinfo *info, struct dquot *dquot);
int qtree_delete_dquot(struct qtree_mem_dqinfo *info, struct dquot *dquot);
int qtree_release_dquot(struct qtree_mem_dqinfo *info, struct dquot *dquot);
int qtree_entry_unused(struct qtree_mem_dqinfo *info, char *disk);
static inline __attribute__((always_inline)) int qtree_depth(struct qtree_mem_dqinfo *info)
{
 unsigned int epb = info->dqi_usable_bs >> 2;
 unsigned long long entries = epb;
 int i;

 for (i = 1; entries < (1ULL << 32); i++)
  entries *= epb;
 return i;
}
# 9 "include/linux/dqblk_v2.h" 2
# 179 "include/linux/quota.h" 2



typedef __kernel_uid32_t qid_t;
typedef long long qsize_t;

extern spinlock_t dq_data_lock;
# 197 "include/linux/quota.h"
struct mem_dqblk {
 qsize_t dqb_bhardlimit;
 qsize_t dqb_bsoftlimit;
 qsize_t dqb_curspace;
 qsize_t dqb_rsvspace;
 qsize_t dqb_ihardlimit;
 qsize_t dqb_isoftlimit;
 qsize_t dqb_curinodes;
 time_t dqb_btime;
 time_t dqb_itime;
};




struct quota_format_type;

struct mem_dqinfo {
 struct quota_format_type *dqi_format;
 int dqi_fmt_id;

 struct list_head dqi_dirty_list;
 unsigned long dqi_flags;
 unsigned int dqi_bgrace;
 unsigned int dqi_igrace;
 qsize_t dqi_maxblimit;
 qsize_t dqi_maxilimit;
 void *dqi_priv;
};

struct super_block;





extern void mark_info_dirty(struct super_block *sb, int type);
static inline __attribute__((always_inline)) int info_dirty(struct mem_dqinfo *info)
{
 return test_bit(16, &info->dqi_flags);
}

struct dqstats {
 int lookups;
 int drops;
 int reads;
 int writes;
 int cache_hits;
 int allocated_dquots;
 int free_dquots;
 int syncs;
};

extern struct dqstats dqstats;
# 264 "include/linux/quota.h"
struct dquot {
 struct hlist_node dq_hash;
 struct list_head dq_inuse;
 struct list_head dq_free;
 struct list_head dq_dirty;
 struct mutex dq_lock;
 atomic_t dq_count;
 wait_queue_head_t dq_wait_unused;
 struct super_block *dq_sb;
 unsigned int dq_id;
 loff_t dq_off;
 unsigned long dq_flags;
 short dq_type;
 struct mem_dqblk dq_dqb;
};





struct quota_format_ops {
 int (*check_quota_file)(struct super_block *sb, int type);
 int (*read_file_info)(struct super_block *sb, int type);
 int (*write_file_info)(struct super_block *sb, int type);
 int (*free_file_info)(struct super_block *sb, int type);
 int (*read_dqblk)(struct dquot *dquot);
 int (*commit_dqblk)(struct dquot *dquot);
 int (*release_dqblk)(struct dquot *dquot);
};


struct dquot_operations {
 int (*initialize) (struct inode *, int);
 int (*drop) (struct inode *);
 int (*alloc_space) (struct inode *, qsize_t, int);
 int (*alloc_inode) (const struct inode *, qsize_t);
 int (*free_space) (struct inode *, qsize_t);
 int (*free_inode) (const struct inode *, qsize_t);
 int (*transfer) (struct inode *, struct iattr *);
 int (*write_dquot) (struct dquot *);
 struct dquot *(*alloc_dquot)(struct super_block *, int);
 void (*destroy_dquot)(struct dquot *);
 int (*acquire_dquot) (struct dquot *);
 int (*release_dquot) (struct dquot *);
 int (*mark_dirty) (struct dquot *);
 int (*write_info) (struct super_block *, int);

 int (*reserve_space) (struct inode *, qsize_t, int);

 int (*claim_space) (struct inode *, qsize_t);

 void (*release_rsv) (struct inode *, qsize_t);

 qsize_t (*get_reserved_space) (struct inode *);
};


struct quotactl_ops {
 int (*quota_on)(struct super_block *, int, int, char *, int);
 int (*quota_off)(struct super_block *, int, int);
 int (*quota_sync)(struct super_block *, int);
 int (*get_info)(struct super_block *, int, struct if_dqinfo *);
 int (*set_info)(struct super_block *, int, struct if_dqinfo *);
 int (*get_dqblk)(struct super_block *, int, qid_t, struct if_dqblk *);
 int (*set_dqblk)(struct super_block *, int, qid_t, struct if_dqblk *);
 int (*get_xstate)(struct super_block *, struct fs_quota_stat *);
 int (*set_xstate)(struct super_block *, unsigned int, int);
 int (*get_xquota)(struct super_block *, int, qid_t, struct fs_disk_quota *);
 int (*set_xquota)(struct super_block *, int, qid_t, struct fs_disk_quota *);
};

struct quota_format_type {
 int qf_fmt_id;
 struct quota_format_ops *qf_ops;
 struct module *qf_owner;
 struct quota_format_type *qf_next;
};


enum {
 _DQUOT_USAGE_ENABLED = 0,
 _DQUOT_LIMITS_ENABLED,
 _DQUOT_SUSPENDED,


 _DQUOT_STATE_FLAGS
};
# 365 "include/linux/quota.h"
static inline __attribute__((always_inline)) unsigned int dquot_state_flag(unsigned int flags, int type)
{
 if (type == 0)
  return flags;
 return flags << _DQUOT_STATE_FLAGS;
}

static inline __attribute__((always_inline)) unsigned int dquot_generic_flag(unsigned int flags, int type)
{
 if (type == 0)
  return flags;
 return flags >> _DQUOT_STATE_FLAGS;
}

struct quota_info {
 unsigned int flags;
 struct mutex dqio_mutex;
 struct mutex dqonoff_mutex;
 struct rw_semaphore dqptr_sem;
 struct inode *files[2];
 struct mem_dqinfo info[2];
 struct quota_format_ops *ops[2];
};

int register_quota_format(struct quota_format_type *fmt);
void unregister_quota_format(struct quota_format_type *fmt);

struct quota_module_name {
 int qm_fmt_id;
 char *qm_mod_name;
};
# 464 "include/linux/fs.h" 2
# 491 "include/linux/fs.h"
enum positive_aop_returns {
 AOP_WRITEPAGE_ACTIVATE = 0x80000,
 AOP_TRUNCATED_PAGE = 0x80001,
};
# 505 "include/linux/fs.h"
struct page;
struct address_space;
struct writeback_control;

struct iov_iter {
 const struct iovec *iov;
 unsigned long nr_segs;
 size_t iov_offset;
 size_t count;
};

size_t iov_iter_copy_from_user_atomic(struct page *page,
  struct iov_iter *i, unsigned long offset, size_t bytes);
size_t iov_iter_copy_from_user(struct page *page,
  struct iov_iter *i, unsigned long offset, size_t bytes);
void iov_iter_advance(struct iov_iter *i, size_t bytes);
int iov_iter_fault_in_readable(struct iov_iter *i, size_t bytes);
size_t iov_iter_single_seg_count(struct iov_iter *i);

static inline __attribute__((always_inline)) void iov_iter_init(struct iov_iter *i,
   const struct iovec *iov, unsigned long nr_segs,
   size_t count, size_t written)
{
 i->iov = iov;
 i->nr_segs = nr_segs;
 i->iov_offset = 0;
 i->count = count + written;

 iov_iter_advance(i, written);
}

static inline __attribute__((always_inline)) size_t iov_iter_count(struct iov_iter *i)
{
 return i->count;
}
# 550 "include/linux/fs.h"
typedef struct {
 size_t written;
 size_t count;
 union {
  char *buf;
  void *data;
 } arg;
 int error;
} read_descriptor_t;

typedef int (*read_actor_t)(read_descriptor_t *, struct page *,
  unsigned long, unsigned long);

struct address_space_operations {
 int (*writepage)(struct page *page, struct writeback_control *wbc);
 int (*readpage)(struct file *, struct page *);
 void (*sync_page)(struct page *);


 int (*writepages)(struct address_space *, struct writeback_control *);


 int (*set_page_dirty)(struct page *page);

 int (*readpages)(struct file *filp, struct address_space *mapping,
   struct list_head *pages, unsigned nr_pages);

 int (*write_begin)(struct file *, struct address_space *mapping,
    loff_t pos, unsigned len, unsigned flags,
    struct page **pagep, void **fsdata);
 int (*write_end)(struct file *, struct address_space *mapping,
    loff_t pos, unsigned len, unsigned copied,
    struct page *page, void *fsdata);


 sector_t (*bmap)(struct address_space *, sector_t);
 void (*invalidatepage) (struct page *, unsigned long);
 int (*releasepage) (struct page *, gfp_t);
 ssize_t (*direct_IO)(int, struct kiocb *, const struct iovec *iov,
   loff_t offset, unsigned long nr_segs);
 int (*get_xip_mem)(struct address_space *, unsigned long, int,
      void **, unsigned long *);

 int (*migratepage) (struct address_space *,
   struct page *, struct page *);
 int (*launder_page) (struct page *);
 int (*is_partially_uptodate) (struct page *, read_descriptor_t *,
     unsigned long);
};





int pagecache_write_begin(struct file *, struct address_space *mapping,
    loff_t pos, unsigned len, unsigned flags,
    struct page **pagep, void **fsdata);

int pagecache_write_end(struct file *, struct address_space *mapping,
    loff_t pos, unsigned len, unsigned copied,
    struct page *page, void *fsdata);

struct backing_dev_info;
struct address_space {
 struct inode *host;
 struct radix_tree_root page_tree;
 spinlock_t tree_lock;
 unsigned int i_mmap_writable;
 struct prio_tree_root i_mmap;
 struct list_head i_mmap_nonlinear;
 spinlock_t i_mmap_lock;
 unsigned int truncate_count;
 unsigned long nrpages;
 unsigned long writeback_index;
 const struct address_space_operations *a_ops;
 unsigned long flags;
 struct backing_dev_info *backing_dev_info;
 spinlock_t private_lock;
 struct list_head private_list;
 struct address_space *assoc_mapping;
} __attribute__((aligned(sizeof(long))));






struct block_device {
 dev_t bd_dev;
 struct inode * bd_inode;
 struct super_block * bd_super;
 int bd_openers;
 struct mutex bd_mutex;
 struct semaphore bd_mount_sem;
 struct list_head bd_inodes;
 void * bd_holder;
 int bd_holders;

 struct list_head bd_holder_list;

 struct block_device * bd_contains;
 unsigned bd_block_size;
 struct hd_struct * bd_part;

 unsigned bd_part_count;
 int bd_invalidated;
 struct gendisk * bd_disk;
 struct list_head bd_list;
 struct backing_dev_info *bd_inode_backing_dev_info;






 unsigned long bd_private;


 int bd_fsfreeze_count;

 struct mutex bd_fsfreeze_mutex;
};
# 680 "include/linux/fs.h"
int mapping_tagged(struct address_space *mapping, int tag);




static inline __attribute__((always_inline)) int mapping_mapped(struct address_space *mapping)
{
 return !prio_tree_empty(&mapping->i_mmap) ||
  !list_empty(&mapping->i_mmap_nonlinear);
}







static inline __attribute__((always_inline)) int mapping_writably_mapped(struct address_space *mapping)
{
 return mapping->i_mmap_writable != 0;
}
# 713 "include/linux/fs.h"
struct inode {
 struct hlist_node i_hash;
 struct list_head i_list;
 struct list_head i_sb_list;
 struct list_head i_dentry;
 unsigned long i_ino;
 atomic_t i_count;
 unsigned int i_nlink;
 uid_t i_uid;
 gid_t i_gid;
 dev_t i_rdev;
 u64 i_version;
 loff_t i_size;



 struct timespec i_atime;
 struct timespec i_mtime;
 struct timespec i_ctime;
 unsigned int i_blkbits;
 blkcnt_t i_blocks;
 unsigned short i_bytes;
 umode_t i_mode;
 spinlock_t i_lock;
 struct mutex i_mutex;
 struct rw_semaphore i_alloc_sem;
 const struct inode_operations *i_op;
 const struct file_operations *i_fop;
 struct super_block *i_sb;
 struct file_lock *i_flock;
 struct address_space *i_mapping;
 struct address_space i_data;



 struct list_head i_devices;
 union {
  struct pipe_inode_info *i_pipe;
  struct block_device *i_bdev;
  struct cdev *i_cdev;
 };
 int i_cindex;

 __u32 i_generation;
# 768 "include/linux/fs.h"
 unsigned long i_state;
 unsigned long dirtied_when;

 unsigned int i_flags;

 atomic_t i_writecount;



 void *i_private;
};
# 791 "include/linux/fs.h"
enum inode_i_mutex_lock_class
{
 I_MUTEX_NORMAL,
 I_MUTEX_PARENT,
 I_MUTEX_CHILD,
 I_MUTEX_XATTR,
 I_MUTEX_QUOTA
};
# 810 "include/linux/fs.h"
static inline __attribute__((always_inline)) loff_t i_size_read(const struct inode *inode)
{
# 829 "include/linux/fs.h"
 return inode->i_size;

}






static inline __attribute__((always_inline)) void i_size_write(struct inode *inode, loff_t i_size)
{
# 849 "include/linux/fs.h"
 inode->i_size = i_size;

}

static inline __attribute__((always_inline)) unsigned iminor(const struct inode *inode)
{
 return ((unsigned int) ((inode->i_rdev) & ((1U << 20) - 1)));
}

static inline __attribute__((always_inline)) unsigned imajor(const struct inode *inode)
{
 return ((unsigned int) ((inode->i_rdev) >> 20));
}

extern struct block_device *I_BDEV(struct inode *inode);

struct fown_struct {
 rwlock_t lock;
 struct pid *pid;
 enum pid_type pid_type;
 uid_t uid, euid;
 int signum;
};




struct file_ra_state {
 unsigned long start;
 unsigned int size;
 unsigned int async_size;


 unsigned int ra_pages;
 int mmap_miss;
 loff_t prev_pos;
};




static inline __attribute__((always_inline)) int ra_has_index(struct file_ra_state *ra, unsigned long index)
{
 return (index >= ra->start &&
  index < ra->start + ra->size);
}




struct file {




 union {
  struct list_head fu_list;
  struct rcu_head fu_rcuhead;
 } f_u;
 struct path f_path;


 const struct file_operations *f_op;
 spinlock_t f_lock;
 atomic_long_t f_count;
 unsigned int f_flags;
 fmode_t f_mode;
 loff_t f_pos;
 struct fown_struct f_owner;
 const struct cred *f_cred;
 struct file_ra_state f_ra;

 u64 f_version;




 void *private_data;





 struct address_space *f_mapping;



};
extern spinlock_t files_lock;
# 977 "include/linux/fs.h"
static inline __attribute__((always_inline)) void file_take_write(struct file *filp) {}
static inline __attribute__((always_inline)) void file_release_write(struct file *filp) {}
static inline __attribute__((always_inline)) void file_reset_write(struct file *filp) {}
static inline __attribute__((always_inline)) void file_check_state(struct file *filp) {}
static inline __attribute__((always_inline)) int file_check_writeable(struct file *filp)
{
 return 0;
}
# 1018 "include/linux/fs.h"
typedef struct files_struct *fl_owner_t;

struct file_lock_operations {
 void (*fl_copy_lock)(struct file_lock *, struct file_lock *);
 void (*fl_release_private)(struct file_lock *);
};

struct lock_manager_operations {
 int (*fl_compare_owner)(struct file_lock *, struct file_lock *);
 void (*fl_notify)(struct file_lock *);
 int (*fl_grant)(struct file_lock *, struct file_lock *, int);
 void (*fl_copy_lock)(struct file_lock *, struct file_lock *);
 void (*fl_release_private)(struct file_lock *);
 void (*fl_break)(struct file_lock *);
 int (*fl_mylease)(struct file_lock *, struct file_lock *);
 int (*fl_change)(struct file_lock **, int);
};

struct lock_manager {
 struct list_head list;
};

void locks_start_grace(struct lock_manager *);
void locks_end_grace(struct lock_manager *);
int locks_in_grace(void);


# 1 "include/linux/nfs_fs_i.h" 1





# 1 "include/linux/nfs.h" 1
# 39 "include/linux/nfs.h"
 enum nfs_stat {
 NFS_OK = 0,
 NFSERR_PERM = 1,
 NFSERR_NOENT = 2,
 NFSERR_IO = 5,
 NFSERR_NXIO = 6,
 NFSERR_EAGAIN = 11,
 NFSERR_ACCES = 13,
 NFSERR_EXIST = 17,
 NFSERR_XDEV = 18,
 NFSERR_NODEV = 19,
 NFSERR_NOTDIR = 20,
 NFSERR_ISDIR = 21,
 NFSERR_INVAL = 22,
 NFSERR_FBIG = 27,
 NFSERR_NOSPC = 28,
 NFSERR_ROFS = 30,
 NFSERR_MLINK = 31,
 NFSERR_OPNOTSUPP = 45,
 NFSERR_NAMETOOLONG = 63,
 NFSERR_NOTEMPTY = 66,
 NFSERR_DQUOT = 69,
 NFSERR_STALE = 70,
 NFSERR_REMOTE = 71,
 NFSERR_WFLUSH = 99,
 NFSERR_BADHANDLE = 10001,
 NFSERR_NOT_SYNC = 10002,
 NFSERR_BAD_COOKIE = 10003,
 NFSERR_NOTSUPP = 10004,
 NFSERR_TOOSMALL = 10005,
 NFSERR_SERVERFAULT = 10006,
 NFSERR_BADTYPE = 10007,
 NFSERR_JUKEBOX = 10008,
 NFSERR_SAME = 10009,
 NFSERR_DENIED = 10010,
 NFSERR_EXPIRED = 10011,
 NFSERR_LOCKED = 10012,
 NFSERR_GRACE = 10013,
 NFSERR_FHEXPIRED = 10014,
 NFSERR_SHARE_DENIED = 10015,
 NFSERR_WRONGSEC = 10016,
 NFSERR_CLID_INUSE = 10017,
 NFSERR_RESOURCE = 10018,
 NFSERR_MOVED = 10019,
 NFSERR_NOFILEHANDLE = 10020,
 NFSERR_MINOR_VERS_MISMATCH = 10021,
 NFSERR_STALE_CLIENTID = 10022,
 NFSERR_STALE_STATEID = 10023,
 NFSERR_OLD_STATEID = 10024,
 NFSERR_BAD_STATEID = 10025,
 NFSERR_BAD_SEQID = 10026,
 NFSERR_NOT_SAME = 10027,
 NFSERR_LOCK_RANGE = 10028,
 NFSERR_SYMLINK = 10029,
 NFSERR_RESTOREFH = 10030,
 NFSERR_LEASE_MOVED = 10031,
 NFSERR_ATTRNOTSUPP = 10032,
 NFSERR_NO_GRACE = 10033,
 NFSERR_RECLAIM_BAD = 10034,
 NFSERR_RECLAIM_CONFLICT = 10035,
 NFSERR_BAD_XDR = 10036,
 NFSERR_LOCKS_HELD = 10037,
 NFSERR_OPENMODE = 10038,
 NFSERR_BADOWNER = 10039,
 NFSERR_BADCHAR = 10040,
 NFSERR_BADNAME = 10041,
 NFSERR_BAD_RANGE = 10042,
 NFSERR_LOCK_NOTSUPP = 10043,
 NFSERR_OP_ILLEGAL = 10044,
 NFSERR_DEADLOCK = 10045,
 NFSERR_FILE_OPEN = 10046,
 NFSERR_ADMIN_REVOKED = 10047,
 NFSERR_CB_PATH_DOWN = 10048,
};



enum nfs_ftype {
 NFNON = 0,
 NFREG = 1,
 NFDIR = 2,
 NFBLK = 3,
 NFCHR = 4,
 NFLNK = 5,
 NFSOCK = 6,
 NFBAD = 7,
 NFFIFO = 8
};


# 1 "include/linux/sunrpc/msg_prot.h" 1
# 18 "include/linux/sunrpc/msg_prot.h"
typedef u32 rpc_authflavor_t;

enum rpc_auth_flavors {
 RPC_AUTH_NULL = 0,
 RPC_AUTH_UNIX = 1,
 RPC_AUTH_SHORT = 2,
 RPC_AUTH_DES = 3,
 RPC_AUTH_KRB = 4,
 RPC_AUTH_GSS = 6,
 RPC_AUTH_MAXFLAVOR = 8,

 RPC_AUTH_GSS_KRB5 = 390003,
 RPC_AUTH_GSS_KRB5I = 390004,
 RPC_AUTH_GSS_KRB5P = 390005,
 RPC_AUTH_GSS_LKEY = 390006,
 RPC_AUTH_GSS_LKEYI = 390007,
 RPC_AUTH_GSS_LKEYP = 390008,
 RPC_AUTH_GSS_SPKM = 390009,
 RPC_AUTH_GSS_SPKMI = 390010,
 RPC_AUTH_GSS_SPKMP = 390011,
};




enum rpc_msg_type {
 RPC_CALL = 0,
 RPC_REPLY = 1
};

enum rpc_reply_stat {
 RPC_MSG_ACCEPTED = 0,
 RPC_MSG_DENIED = 1
};

enum rpc_accept_stat {
 RPC_SUCCESS = 0,
 RPC_PROG_UNAVAIL = 1,
 RPC_PROG_MISMATCH = 2,
 RPC_PROC_UNAVAIL = 3,
 RPC_GARBAGE_ARGS = 4,
 RPC_SYSTEM_ERR = 5,

 RPC_DROP_REPLY = 60000,
};

enum rpc_reject_stat {
 RPC_MISMATCH = 0,
 RPC_AUTH_ERROR = 1
};

enum rpc_auth_stat {
 RPC_AUTH_OK = 0,
 RPC_AUTH_BADCRED = 1,
 RPC_AUTH_REJECTEDCRED = 2,
 RPC_AUTH_BADVERF = 3,
 RPC_AUTH_REJECTEDVERF = 4,
 RPC_AUTH_TOOWEAK = 5,

 RPCSEC_GSS_CREDPROBLEM = 13,
 RPCSEC_GSS_CTXPROBLEM = 14
};
# 102 "include/linux/sunrpc/msg_prot.h"
typedef __be32 rpc_fraghdr;
# 130 "include/linux/nfs.h" 2






struct nfs_fh {
 unsigned short size;
 unsigned char data[128];
};





static inline __attribute__((always_inline)) int nfs_compare_fh(const struct nfs_fh *a, const struct nfs_fh *b)
{
 return a->size != b->size || memcmp(a->data, b->data, a->size) != 0;
}

static inline __attribute__((always_inline)) void nfs_copy_fh(struct nfs_fh *target, const struct nfs_fh *source)
{
 target->size = source->size;
 memcpy(target->data, source->data, source->size);
}
# 164 "include/linux/nfs.h"
enum nfs3_stable_how {
 NFS_UNSTABLE = 0,
 NFS_DATA_SYNC = 1,
 NFS_FILE_SYNC = 2
};
# 7 "include/linux/nfs_fs_i.h" 2

struct nlm_lockowner;




struct nfs_lock_info {
 u32 state;
 struct nlm_lockowner *owner;
 struct list_head list;
};

struct nfs4_lock_state;
struct nfs4_lock_info {
 struct nfs4_lock_state *owner;
};
# 1046 "include/linux/fs.h" 2

struct file_lock {
 struct file_lock *fl_next;
 struct list_head fl_link;
 struct list_head fl_block;
 fl_owner_t fl_owner;
 unsigned char fl_flags;
 unsigned char fl_type;
 unsigned int fl_pid;
 struct pid *fl_nspid;
 wait_queue_head_t fl_wait;
 struct file *fl_file;
 loff_t fl_start;
 loff_t fl_end;

 struct fasync_struct * fl_fasync;
 unsigned long fl_break_time;

 struct file_lock_operations *fl_ops;
 struct lock_manager_operations *fl_lmops;
 union {
  struct nfs_lock_info nfs_fl;
  struct nfs4_lock_info nfs4_fl;
  struct {
   struct list_head link;
   int state;
  } afs;
 } fl_u;
};
# 1085 "include/linux/fs.h"
extern void send_sigio(struct fown_struct *fown, int fd, int band);


extern int do_sync_mapping_range(struct address_space *mapping, loff_t offset,
   loff_t endbyte, unsigned int flags);
# 1127 "include/linux/fs.h"
static inline __attribute__((always_inline)) int fcntl_getlk(struct file *file, struct flock *user)
{
 return -22;
}

static inline __attribute__((always_inline)) int fcntl_setlk(unsigned int fd, struct file *file,
         unsigned int cmd, struct flock *user)
{
 return -13;
}


static inline __attribute__((always_inline)) int fcntl_getlk64(struct file *file, struct flock64 *user)
{
 return -22;
}

static inline __attribute__((always_inline)) int fcntl_setlk64(unsigned int fd, struct file *file,
    unsigned int cmd, struct flock64 *user)
{
 return -13;
}

static inline __attribute__((always_inline)) int fcntl_setlease(unsigned int fd, struct file *filp, long arg)
{
 return 0;
}

static inline __attribute__((always_inline)) int fcntl_getlease(struct file *filp)
{
 return 0;
}

static inline __attribute__((always_inline)) void locks_init_lock(struct file_lock *fl)
{
 return;
}

static inline __attribute__((always_inline)) void __locks_copy_lock(struct file_lock *new, struct file_lock *fl)
{
 return;
}

static inline __attribute__((always_inline)) void locks_copy_lock(struct file_lock *new, struct file_lock *fl)
{
 return;
}

static inline __attribute__((always_inline)) void locks_remove_posix(struct file *filp, fl_owner_t owner)
{
 return;
}

static inline __attribute__((always_inline)) void locks_remove_flock(struct file *filp)
{
 return;
}

static inline __attribute__((always_inline)) void posix_test_lock(struct file *filp, struct file_lock *fl)
{
 return;
}

static inline __attribute__((always_inline)) int posix_lock_file(struct file *filp, struct file_lock *fl,
      struct file_lock *conflock)
{
 return -46;
}

static inline __attribute__((always_inline)) int posix_lock_file_wait(struct file *filp, struct file_lock *fl)
{
 return -46;
}

static inline __attribute__((always_inline)) int posix_unblock_lock(struct file *filp,
         struct file_lock *waiter)
{
 return -2;
}

static inline __attribute__((always_inline)) int vfs_test_lock(struct file *filp, struct file_lock *fl)
{
 return 0;
}

static inline __attribute__((always_inline)) int vfs_lock_file(struct file *filp, unsigned int cmd,
    struct file_lock *fl, struct file_lock *conf)
{
 return -46;
}

static inline __attribute__((always_inline)) int vfs_cancel_lock(struct file *filp, struct file_lock *fl)
{
 return 0;
}

static inline __attribute__((always_inline)) int flock_lock_file_wait(struct file *filp,
           struct file_lock *request)
{
 return -46;
}

static inline __attribute__((always_inline)) int __break_lease(struct inode *inode, unsigned int mode)
{
 return 0;
}

static inline __attribute__((always_inline)) void lease_get_mtime(struct inode *inode, struct timespec *time)
{
 return;
}

static inline __attribute__((always_inline)) int generic_setlease(struct file *filp, long arg,
        struct file_lock **flp)
{
 return -22;
}

static inline __attribute__((always_inline)) int vfs_setlease(struct file *filp, long arg,
          struct file_lock **lease)
{
 return -22;
}

static inline __attribute__((always_inline)) int lease_modify(struct file_lock **before, int arg)
{
 return -22;
}

static inline __attribute__((always_inline)) int lock_may_read(struct inode *inode, loff_t start,
    unsigned long len)
{
 return 1;
}

static inline __attribute__((always_inline)) int lock_may_write(struct inode *inode, loff_t start,
     unsigned long len)
{
 return 1;
}




struct fasync_struct {
 int magic;
 int fa_fd;
 struct fasync_struct *fa_next;
 struct file *fa_file;
};




extern int fasync_helper(int, struct file *, int, struct fasync_struct **);

extern void kill_fasync(struct fasync_struct **, int, int);

extern void __kill_fasync(struct fasync_struct *, int, int);

extern int __f_setown(struct file *filp, struct pid *, enum pid_type, int force);
extern int f_setown(struct file *filp, unsigned long arg, int force);
extern void f_delown(struct file *filp);
extern pid_t f_getown(struct file *filp);
extern int send_sigurg(struct fown_struct *fown);
# 1301 "include/linux/fs.h"
extern struct list_head super_blocks;
extern spinlock_t sb_lock;



struct super_block {
 struct list_head s_list;
 dev_t s_dev;
 unsigned long s_blocksize;
 unsigned char s_blocksize_bits;
 unsigned char s_dirt;
 unsigned long long s_maxbytes;
 struct file_system_type *s_type;
 const struct super_operations *s_op;
 struct dquot_operations *dq_op;
  struct quotactl_ops *s_qcop;
 const struct export_operations *s_export_op;
 unsigned long s_flags;
 unsigned long s_magic;
 struct dentry *s_root;
 struct rw_semaphore s_umount;
 struct mutex s_lock;
 int s_count;
 int s_need_sync_fs;
 atomic_t s_active;



 struct xattr_handler **s_xattr;

 struct list_head s_inodes;
 struct list_head s_dirty;
 struct list_head s_io;
 struct list_head s_more_io;
 struct hlist_head s_anon;
 struct list_head s_files;

 struct list_head s_dentry_lru;
 int s_nr_dentry_unused;

 struct block_device *s_bdev;
 struct mtd_info *s_mtd;
 struct list_head s_instances;
 struct quota_info s_dquot;

 int s_frozen;
 wait_queue_head_t s_wait_unfrozen;

 char s_id[32];

 void *s_fs_info;
 fmode_t s_mode;





 struct mutex s_vfs_rename_mutex;



 u32 s_time_gran;





 char *s_subtype;





 char *s_options;




 struct list_head s_async_list;
};

extern struct timespec current_fs_time(struct super_block *sb);




enum {
 SB_UNFROZEN = 0,
 SB_FREEZE_WRITE = 1,
 SB_FREEZE_TRANS = 2,
};
# 1404 "include/linux/fs.h"
extern void lock_super(struct super_block *);
extern void unlock_super(struct super_block *);




extern int vfs_create(struct inode *, struct dentry *, int, struct nameidata *);
extern int vfs_mkdir(struct inode *, struct dentry *, int);
extern int vfs_mknod(struct inode *, struct dentry *, int, dev_t);
extern int vfs_symlink(struct inode *, struct dentry *, const char *);
extern int vfs_link(struct dentry *, struct inode *, struct dentry *);
extern int vfs_rmdir(struct inode *, struct dentry *);
extern int vfs_unlink(struct inode *, struct dentry *);
extern int vfs_rename(struct inode *, struct dentry *, struct inode *, struct dentry *);




extern void dentry_unhash(struct dentry *dentry);




extern int file_permission(struct file *, int);




struct fiemap_extent_info {
 unsigned int fi_flags;
 unsigned int fi_extents_mapped;
 unsigned int fi_extents_max;
 struct fiemap_extent *fi_extents_start;

};
int fiemap_fill_next_extent(struct fiemap_extent_info *info, u64 logical,
       u64 phys, u64 len, u32 flags);
int fiemap_check_flags(struct fiemap_extent_info *fieinfo, u32 fs_flags);
# 1462 "include/linux/fs.h"
int generic_osync_inode(struct inode *, struct address_space *, int);







typedef int (*filldir_t)(void *, const char *, int, loff_t, u64, unsigned);
struct block_device_operations;
# 1484 "include/linux/fs.h"
struct file_operations {
 struct module *owner;
 loff_t (*llseek) (struct file *, loff_t, int);
 ssize_t (*read) (struct file *, char *, size_t, loff_t *);
 ssize_t (*write) (struct file *, const char *, size_t, loff_t *);
 ssize_t (*aio_read) (struct kiocb *, const struct iovec *, unsigned long, loff_t);
 ssize_t (*aio_write) (struct kiocb *, const struct iovec *, unsigned long, loff_t);
 int (*readdir) (struct file *, void *, filldir_t);
 unsigned int (*poll) (struct file *, struct poll_table_struct *);
 int (*ioctl) (struct inode *, struct file *, unsigned int, unsigned long);
 long (*unlocked_ioctl) (struct file *, unsigned int, unsigned long);
 long (*compat_ioctl) (struct file *, unsigned int, unsigned long);
 int (*mmap) (struct file *, struct vm_area_struct *);
 int (*open) (struct inode *, struct file *);
 int (*flush) (struct file *, fl_owner_t id);
 int (*release) (struct inode *, struct file *);
 int (*fsync) (struct file *, struct dentry *, int datasync);
 int (*aio_fsync) (struct kiocb *, int datasync);
 int (*fasync) (int, struct file *, int);
 int (*lock) (struct file *, int, struct file_lock *);
 ssize_t (*sendpage) (struct file *, struct page *, int, size_t, loff_t *, int);
 unsigned long (*get_unmapped_area)(struct file *, unsigned long, unsigned long, unsigned long, unsigned long);
 int (*check_flags)(int);
 int (*flock) (struct file *, int, struct file_lock *);
 ssize_t (*splice_write)(struct pipe_inode_info *, struct file *, loff_t *, size_t, unsigned int);
 ssize_t (*splice_read)(struct file *, loff_t *, struct pipe_inode_info *, size_t, unsigned int);
 int (*setlease)(struct file *, long, struct file_lock **);
};

struct inode_operations {
 int (*create) (struct inode *,struct dentry *,int, struct nameidata *);
 struct dentry * (*lookup) (struct inode *,struct dentry *, struct nameidata *);
 int (*link) (struct dentry *,struct inode *,struct dentry *);
 int (*unlink) (struct inode *,struct dentry *);
 int (*symlink) (struct inode *,struct dentry *,const char *);
 int (*mkdir) (struct inode *,struct dentry *,int);
 int (*rmdir) (struct inode *,struct dentry *);
 int (*mknod) (struct inode *,struct dentry *,int,dev_t);
 int (*rename) (struct inode *, struct dentry *,
   struct inode *, struct dentry *);
 int (*readlink) (struct dentry *, char *,int);
 void * (*follow_link) (struct dentry *, struct nameidata *);
 void (*put_link) (struct dentry *, struct nameidata *, void *);
 void (*truncate) (struct inode *);
 int (*permission) (struct inode *, int);
 int (*setattr) (struct dentry *, struct iattr *);
 int (*getattr) (struct vfsmount *mnt, struct dentry *, struct kstat *);
 int (*setxattr) (struct dentry *, const char *,const void *,size_t,int);
 ssize_t (*getxattr) (struct dentry *, const char *, void *, size_t);
 ssize_t (*listxattr) (struct dentry *, char *, size_t);
 int (*removexattr) (struct dentry *, const char *);
 void (*truncate_range)(struct inode *, loff_t, loff_t);
 long (*fallocate)(struct inode *inode, int mode, loff_t offset,
     loff_t len);
 int (*fiemap)(struct inode *, struct fiemap_extent_info *, u64 start,
        u64 len);
};

struct seq_file;

ssize_t rw_copy_check_uvector(int type, const struct iovec * uvector,
    unsigned long nr_segs, unsigned long fast_segs,
    struct iovec *fast_pointer,
    struct iovec **ret_pointer);

extern ssize_t vfs_read(struct file *, char *, size_t, loff_t *);
extern ssize_t vfs_write(struct file *, const char *, size_t, loff_t *);
extern ssize_t vfs_readv(struct file *, const struct iovec *,
  unsigned long, loff_t *);
extern ssize_t vfs_writev(struct file *, const struct iovec *,
  unsigned long, loff_t *);

struct super_operations {
    struct inode *(*alloc_inode)(struct super_block *sb);
 void (*destroy_inode)(struct inode *);

    void (*dirty_inode) (struct inode *);
 int (*write_inode) (struct inode *, int);
 void (*drop_inode) (struct inode *);
 void (*delete_inode) (struct inode *);
 void (*put_super) (struct super_block *);
 void (*write_super) (struct super_block *);
 int (*sync_fs)(struct super_block *sb, int wait);
 int (*freeze_fs) (struct super_block *);
 int (*unfreeze_fs) (struct super_block *);
 int (*statfs) (struct dentry *, struct kstatfs *);
 int (*remount_fs) (struct super_block *, int *, char *);
 void (*clear_inode) (struct inode *);
 void (*umount_begin) (struct super_block *);

 int (*show_options)(struct seq_file *, struct vfsmount *);
 int (*show_stats)(struct seq_file *, struct vfsmount *);




 int (*bdev_try_to_free_page)(struct super_block*, struct page*, gfp_t);
};
# 1650 "include/linux/fs.h"
extern void __mark_inode_dirty(struct inode *, int);
static inline __attribute__((always_inline)) void mark_inode_dirty(struct inode *inode)
{
 __mark_inode_dirty(inode, (1 | 2 | 4));
}

static inline __attribute__((always_inline)) void mark_inode_dirty_sync(struct inode *inode)
{
 __mark_inode_dirty(inode, 1);
}
# 1669 "include/linux/fs.h"
static inline __attribute__((always_inline)) void inc_nlink(struct inode *inode)
{
 inode->i_nlink++;
}

static inline __attribute__((always_inline)) void inode_inc_link_count(struct inode *inode)
{
 inc_nlink(inode);
 mark_inode_dirty(inode);
}
# 1691 "include/linux/fs.h"
static inline __attribute__((always_inline)) void drop_nlink(struct inode *inode)
{
 inode->i_nlink--;
}
# 1704 "include/linux/fs.h"
static inline __attribute__((always_inline)) void clear_nlink(struct inode *inode)
{
 inode->i_nlink = 0;
}

static inline __attribute__((always_inline)) void inode_dec_link_count(struct inode *inode)
{
 drop_nlink(inode);
 mark_inode_dirty(inode);
}
# 1723 "include/linux/fs.h"
static inline __attribute__((always_inline)) void inode_inc_iversion(struct inode *inode)
{
       do { do { } while (0); (void)0; (void)(&inode->i_lock); } while (0);
       inode->i_version++;
       do { do { } while (0); (void)0; (void)(&inode->i_lock); } while (0);
}

extern void touch_atime(struct vfsmount *mnt, struct dentry *dentry);
static inline __attribute__((always_inline)) void file_accessed(struct file *file)
{
 if (!(file->f_flags & 01000000))
  touch_atime(file->f_path.mnt, file->f_path.dentry);
}

int sync_inode(struct inode *inode, struct writeback_control *wbc);

struct file_system_type {
 const char *name;
 int fs_flags;
 int (*get_sb) (struct file_system_type *, int,
         const char *, void *, struct vfsmount *);
 void (*kill_sb) (struct super_block *);
 struct module *owner;
 struct file_system_type * next;
 struct list_head fs_supers;

 struct lock_class_key s_lock_key;
 struct lock_class_key s_umount_key;

 struct lock_class_key i_lock_key;
 struct lock_class_key i_mutex_key;
 struct lock_class_key i_mutex_dir_key;
 struct lock_class_key i_alloc_sem_key;
};

extern int get_sb_ns(struct file_system_type *fs_type, int flags, void *data,
 int (*fill_super)(struct super_block *, void *, int),
 struct vfsmount *mnt);
extern int get_sb_bdev(struct file_system_type *fs_type,
 int flags, const char *dev_name, void *data,
 int (*fill_super)(struct super_block *, void *, int),
 struct vfsmount *mnt);
extern int get_sb_single(struct file_system_type *fs_type,
 int flags, void *data,
 int (*fill_super)(struct super_block *, void *, int),
 struct vfsmount *mnt);
extern int get_sb_nodev(struct file_system_type *fs_type,
 int flags, void *data,
 int (*fill_super)(struct super_block *, void *, int),
 struct vfsmount *mnt);
void generic_shutdown_super(struct super_block *sb);
void kill_block_super(struct super_block *sb);
void kill_anon_super(struct super_block *sb);
void kill_litter_super(struct super_block *sb);
void deactivate_super(struct super_block *sb);
void deactivate_locked_super(struct super_block *sb);
int set_anon_super(struct super_block *s, void *data);
struct super_block *sget(struct file_system_type *type,
   int (*test)(struct super_block *,void *),
   int (*set)(struct super_block *,void *),
   void *data);
extern int get_sb_pseudo(struct file_system_type *, char *,
 const struct super_operations *ops, unsigned long,
 struct vfsmount *mnt);
extern void simple_set_mnt(struct vfsmount *mnt, struct super_block *sb);
int __put_super_and_need_restart(struct super_block *sb);







extern int register_filesystem(struct file_system_type *);
extern int unregister_filesystem(struct file_system_type *);
extern struct vfsmount *kern_mount_data(struct file_system_type *, void *data);

extern int may_umount_tree(struct vfsmount *);
extern int may_umount(struct vfsmount *);
extern long do_mount(char *, char *, char *, unsigned long, void *);
extern struct vfsmount *collect_mounts(struct vfsmount *, struct dentry *);
extern void drop_collected_mounts(struct vfsmount *);

extern int vfs_statfs(struct dentry *, struct kstatfs *);

extern int current_umask(void);


extern struct kobject *fs_kobj;

extern int rw_verify_area(int, struct file *, loff_t *, size_t);
# 1870 "include/linux/fs.h"
static inline __attribute__((always_inline)) int locks_mandatory_locked(struct inode *inode)
{
 return 0;
}

static inline __attribute__((always_inline)) int locks_mandatory_area(int rw, struct inode *inode,
           struct file *filp, loff_t offset,
           size_t count)
{
 return 0;
}

static inline __attribute__((always_inline)) int __mandatory_lock(struct inode *inode)
{
 return 0;
}

static inline __attribute__((always_inline)) int mandatory_lock(struct inode *inode)
{
 return 0;
}

static inline __attribute__((always_inline)) int locks_verify_locked(struct inode *inode)
{
 return 0;
}

static inline __attribute__((always_inline)) int locks_verify_truncate(struct inode *inode, struct file *filp,
     size_t size)
{
 return 0;
}

static inline __attribute__((always_inline)) int break_lease(struct inode *inode, unsigned int mode)
{
 return 0;
}





extern int do_truncate(struct dentry *, loff_t start, unsigned int time_attrs,
         struct file *filp);
extern long do_sys_open(int dfd, const char *filename, int flags,
   int mode);
extern struct file *filp_open(const char *, int, int);
extern struct file * dentry_open(struct dentry *, struct vfsmount *, int,
     const struct cred *);
extern int filp_close(struct file *, fl_owner_t id);
extern char * getname(const char *);


extern void __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) vfs_caches_init_early(void);
extern void __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) vfs_caches_init(unsigned long);

extern struct kmem_cache *names_cachep;
# 1937 "include/linux/fs.h"
extern int register_blkdev(unsigned int, const char *);
extern void unregister_blkdev(unsigned int, const char *);
extern struct block_device *bdget(dev_t);
extern void bd_set_size(struct block_device *, loff_t size);
extern void bd_forget(struct inode *inode);
extern void bdput(struct block_device *);
extern struct block_device *open_by_devnum(dev_t, fmode_t);
extern void invalidate_bdev(struct block_device *);
extern int sync_blockdev(struct block_device *bdev);
extern struct super_block *freeze_bdev(struct block_device *);
extern void emergency_thaw_all(void);
extern int thaw_bdev(struct block_device *bdev, struct super_block *sb);
extern int fsync_bdev(struct block_device *);
extern int fsync_super(struct super_block *);
extern int fsync_no_super(struct block_device *);
# 1967 "include/linux/fs.h"
extern const struct file_operations def_blk_fops;
extern const struct file_operations def_chr_fops;
extern const struct file_operations bad_sock_fops;
extern const struct file_operations def_fifo_fops;

extern int ioctl_by_bdev(struct block_device *, unsigned, unsigned long);
extern int blkdev_ioctl(struct block_device *, fmode_t, unsigned, unsigned long);
extern long compat_blkdev_ioctl(struct file *, unsigned, unsigned long);
extern int blkdev_get(struct block_device *, fmode_t);
extern int blkdev_put(struct block_device *, fmode_t);
extern int bd_claim(struct block_device *, void *);
extern void bd_release(struct block_device *);

extern int bd_claim_by_disk(struct block_device *, void *, struct gendisk *);
extern void bd_release_from_disk(struct block_device *, struct gendisk *);
# 1990 "include/linux/fs.h"
extern int alloc_chrdev_region(dev_t *, unsigned, unsigned, const char *);
extern int register_chrdev_region(dev_t, unsigned, const char *);
extern int register_chrdev(unsigned int, const char *,
      const struct file_operations *);
extern void unregister_chrdev(unsigned int, const char *);
extern void unregister_chrdev_region(dev_t, unsigned);
extern void chrdev_show(struct seq_file *,off_t);







extern const char *__bdevname(dev_t, char *buffer);
extern const char *bdevname(struct block_device *bdev, char *buffer);
extern struct block_device *lookup_bdev(const char *);
extern struct block_device *open_bdev_exclusive(const char *, fmode_t, void *);
extern void close_bdev_exclusive(struct block_device *, fmode_t);
extern void blkdev_show(struct seq_file *,off_t);





extern void init_special_inode(struct inode *, umode_t, dev_t);


extern void make_bad_inode(struct inode *);
extern int is_bad_inode(struct inode *);

extern const struct file_operations read_pipefifo_fops;
extern const struct file_operations write_pipefifo_fops;
extern const struct file_operations rdwr_pipefifo_fops;

extern int fs_may_remount_ro(struct super_block *);
# 2038 "include/linux/fs.h"
extern void check_disk_size_change(struct gendisk *disk,
       struct block_device *bdev);
extern int revalidate_disk(struct gendisk *);
extern int check_disk_change(struct block_device *);
extern int __invalidate_device(struct block_device *);
extern int invalidate_partition(struct gendisk *, int);

extern int invalidate_inodes(struct super_block *);
unsigned long __invalidate_mapping_pages(struct address_space *mapping,
     unsigned long start, unsigned long end,
     bool be_atomic);
unsigned long invalidate_mapping_pages(struct address_space *mapping,
     unsigned long start, unsigned long end);

static inline __attribute__((always_inline)) unsigned long
invalidate_inode_pages(struct address_space *mapping)
{
 return invalidate_mapping_pages(mapping, 0, ~0UL);
}

static inline __attribute__((always_inline)) void invalidate_remote_inode(struct inode *inode)
{
 if ((((inode->i_mode) & 00170000) == 0100000) || (((inode->i_mode) & 00170000) == 0040000) ||
     (((inode->i_mode) & 00170000) == 0120000))
  invalidate_mapping_pages(inode->i_mapping, 0, -1);
}
extern int invalidate_inode_pages2(struct address_space *mapping);
extern int invalidate_inode_pages2_range(struct address_space *mapping,
      unsigned long start, unsigned long end);
extern void generic_sync_sb_inodes(struct super_block *sb,
    struct writeback_control *wbc);
extern int write_inode_now(struct inode *, int);
extern int filemap_fdatawrite(struct address_space *);
extern int filemap_flush(struct address_space *);
extern int filemap_fdatawait(struct address_space *);
extern int filemap_write_and_wait(struct address_space *mapping);
extern int filemap_write_and_wait_range(struct address_space *mapping,
            loff_t lstart, loff_t lend);
extern int wait_on_page_writeback_range(struct address_space *mapping,
    unsigned long start, unsigned long end);
extern int __filemap_fdatawrite_range(struct address_space *mapping,
    loff_t start, loff_t end, int sync_mode);
extern int filemap_fdatawrite_range(struct address_space *mapping,
    loff_t start, loff_t end);

extern int vfs_fsync(struct file *file, struct dentry *dentry, int datasync);
extern void sync_supers(void);
extern void sync_filesystems(int wait);
extern void __fsync_super(struct super_block *sb);
extern void emergency_sync(void);
extern void emergency_remount(void);
extern int do_remount_sb(struct super_block *sb, int flags,
    void *data, int force);

extern sector_t bmap(struct inode *, sector_t);

extern int notify_change(struct dentry *, struct iattr *);
extern int inode_permission(struct inode *, int);
extern int generic_permission(struct inode *, int,
  int (*check_acl)(struct inode *, int));

static inline __attribute__((always_inline)) bool execute_ok(struct inode *inode)
{
 return (inode->i_mode & (00100|00010|00001)) || (((inode->i_mode) & 00170000) == 0040000);
}

extern int get_write_access(struct inode *);
extern int deny_write_access(struct file *);
static inline __attribute__((always_inline)) void put_write_access(struct inode * inode)
{
 atomic_sub(1, (&inode->i_writecount));
}
static inline __attribute__((always_inline)) void allow_write_access(struct file *file)
{
 if (file)
  atomic_add(1, (&file->f_path.dentry->d_inode->i_writecount));
}
extern int do_pipe_flags(int *, int);
extern struct file *create_read_pipe(struct file *f, int flags);
extern struct file *create_write_pipe(int flags);
extern void free_write_pipe(struct file *);

extern struct file *do_filp_open(int dfd, const char *pathname,
  int open_flag, int mode, int acc_mode);
extern int may_open(struct path *, int, int);

extern int kernel_read(struct file *, loff_t, char *, unsigned long);
extern struct file * open_exec(const char *);


extern int is_subdir(struct dentry *, struct dentry *);
extern ino_t find_inode_number(struct dentry *, struct qstr *);




extern loff_t default_llseek(struct file *file, loff_t offset, int origin);

extern loff_t vfs_llseek(struct file *file, loff_t offset, int origin);

extern int inode_init_always(struct super_block *, struct inode *);
extern void inode_init_once(struct inode *);
extern void inode_add_to_lists(struct super_block *, struct inode *);
extern void iput(struct inode *);
extern struct inode * igrab(struct inode *);
extern ino_t iunique(struct super_block *, ino_t);
extern int inode_needs_sync(struct inode *inode);
extern void generic_delete_inode(struct inode *inode);
extern void generic_drop_inode(struct inode *inode);

extern struct inode *ilookup5_nowait(struct super_block *sb,
  unsigned long hashval, int (*test)(struct inode *, void *),
  void *data);
extern struct inode *ilookup5(struct super_block *sb, unsigned long hashval,
  int (*test)(struct inode *, void *), void *data);
extern struct inode *ilookup(struct super_block *sb, unsigned long ino);

extern struct inode * iget5_locked(struct super_block *, unsigned long, int (*test)(struct inode *, void *), int (*set)(struct inode *, void *), void *);
extern struct inode * iget_locked(struct super_block *, unsigned long);
extern int insert_inode_locked4(struct inode *, unsigned long, int (*test)(struct inode *, void *), void *);
extern int insert_inode_locked(struct inode *);
extern void unlock_new_inode(struct inode *);

extern void __iget(struct inode * inode);
extern void iget_failed(struct inode *);
extern void clear_inode(struct inode *);
extern void destroy_inode(struct inode *);
extern void __destroy_inode(struct inode *);
extern struct inode *new_inode(struct super_block *);
extern int should_remove_suid(struct dentry *);
extern int file_remove_suid(struct file *);

extern void __insert_inode_hash(struct inode *, unsigned long hashval);
extern void remove_inode_hash(struct inode *);
static inline __attribute__((always_inline)) void insert_inode_hash(struct inode *inode) {
 __insert_inode_hash(inode, inode->i_ino);
}

extern struct file * get_empty_filp(void);
extern void file_move(struct file *f, struct list_head *list);
extern void file_kill(struct file *f);

struct bio;
extern void submit_bio(int, struct bio *);
extern int bdev_read_only(struct block_device *);

extern int set_blocksize(struct block_device *, int);
extern int sb_set_blocksize(struct super_block *, int);
extern int sb_min_blocksize(struct super_block *, int);
extern int sb_has_dirty_inodes(struct super_block *);

extern int generic_file_mmap(struct file *, struct vm_area_struct *);
extern int generic_file_readonly_mmap(struct file *, struct vm_area_struct *);
extern int file_read_actor(read_descriptor_t * desc, struct page *page, unsigned long offset, unsigned long size);
int generic_write_checks(struct file *file, loff_t *pos, size_t *count, int isblk);
extern ssize_t generic_file_aio_read(struct kiocb *, const struct iovec *, unsigned long, loff_t);
extern ssize_t generic_file_aio_write(struct kiocb *, const struct iovec *, unsigned long, loff_t);
extern ssize_t generic_file_aio_write_nolock(struct kiocb *, const struct iovec *,
  unsigned long, loff_t);
extern ssize_t generic_file_direct_write(struct kiocb *, const struct iovec *,
  unsigned long *, loff_t, loff_t *, size_t, size_t);
extern ssize_t generic_file_buffered_write(struct kiocb *, const struct iovec *,
  unsigned long, loff_t, loff_t *, size_t, ssize_t);
extern ssize_t do_sync_read(struct file *filp, char *buf, size_t len, loff_t *ppos);
extern ssize_t do_sync_write(struct file *filp, const char *buf, size_t len, loff_t *ppos);
extern int generic_segment_checks(const struct iovec *iov,
  unsigned long *nr_segs, size_t *count, int access_flags);


extern ssize_t generic_file_splice_read(struct file *, loff_t *,
  struct pipe_inode_info *, size_t, unsigned int);
extern ssize_t generic_file_splice_write(struct pipe_inode_info *,
  struct file *, loff_t *, size_t, unsigned int);
extern ssize_t generic_splice_sendpage(struct pipe_inode_info *pipe,
  struct file *out, loff_t *, size_t len, unsigned int flags);
extern long do_splice_direct(struct file *in, loff_t *ppos, struct file *out,
  size_t len, unsigned int flags);

extern void
file_ra_state_init(struct file_ra_state *ra, struct address_space *mapping);
extern loff_t no_llseek(struct file *file, loff_t offset, int origin);
extern loff_t generic_file_llseek(struct file *file, loff_t offset, int origin);
extern loff_t generic_file_llseek_unlocked(struct file *file, loff_t offset,
   int origin);
extern int generic_file_open(struct inode * inode, struct file * filp);
extern int nonseekable_open(struct inode * inode, struct file * filp);
# 2233 "include/linux/fs.h"
static inline __attribute__((always_inline)) int xip_truncate_page(struct address_space *mapping, loff_t from)
{
 return 0;
}



ssize_t __blockdev_direct_IO(int rw, struct kiocb *iocb, struct inode *inode,
 struct block_device *bdev, const struct iovec *iov, loff_t offset,
 unsigned long nr_segs, get_block_t get_block, dio_iodone_t end_io,
 int lock_type);

enum {
 DIO_LOCKING = 1,
 DIO_NO_LOCKING,
 DIO_OWN_LOCKING,
};

static inline __attribute__((always_inline)) ssize_t blockdev_direct_IO(int rw, struct kiocb *iocb,
 struct inode *inode, struct block_device *bdev, const struct iovec *iov,
 loff_t offset, unsigned long nr_segs, get_block_t get_block,
 dio_iodone_t end_io)
{
 return __blockdev_direct_IO(rw, iocb, inode, bdev, iov, offset,
    nr_segs, get_block, end_io, DIO_LOCKING);
}

static inline __attribute__((always_inline)) ssize_t blockdev_direct_IO_no_locking(int rw, struct kiocb *iocb,
 struct inode *inode, struct block_device *bdev, const struct iovec *iov,
 loff_t offset, unsigned long nr_segs, get_block_t get_block,
 dio_iodone_t end_io)
{
 return __blockdev_direct_IO(rw, iocb, inode, bdev, iov, offset,
    nr_segs, get_block, end_io, DIO_NO_LOCKING);
}

static inline __attribute__((always_inline)) ssize_t blockdev_direct_IO_own_locking(int rw, struct kiocb *iocb,
 struct inode *inode, struct block_device *bdev, const struct iovec *iov,
 loff_t offset, unsigned long nr_segs, get_block_t get_block,
 dio_iodone_t end_io)
{
 return __blockdev_direct_IO(rw, iocb, inode, bdev, iov, offset,
    nr_segs, get_block, end_io, DIO_OWN_LOCKING);
}


extern const struct file_operations generic_ro_fops;



extern int vfs_readlink(struct dentry *, char *, int, const char *);
extern int vfs_follow_link(struct nameidata *, const char *);
extern int page_readlink(struct dentry *, char *, int);
extern void *page_follow_link_light(struct dentry *, struct nameidata *);
extern void page_put_link(struct dentry *, struct nameidata *, void *);
extern int __page_symlink(struct inode *inode, const char *symname, int len,
  int nofs);
extern int page_symlink(struct inode *inode, const char *symname, int len);
extern const struct inode_operations page_symlink_inode_operations;
extern int generic_readlink(struct dentry *, char *, int);
extern void generic_fillattr(struct inode *, struct kstat *);
extern int vfs_getattr(struct vfsmount *, struct dentry *, struct kstat *);
void inode_add_bytes(struct inode *inode, loff_t bytes);
void inode_sub_bytes(struct inode *inode, loff_t bytes);
loff_t inode_get_bytes(struct inode *inode);
void inode_set_bytes(struct inode *inode, loff_t bytes);

extern int vfs_readdir(struct file *, filldir_t, void *);

extern int vfs_stat(char *, struct kstat *);
extern int vfs_lstat(char *, struct kstat *);
extern int vfs_fstat(unsigned int, struct kstat *);
extern int vfs_fstatat(int , char *, struct kstat *, int);

extern int do_vfs_ioctl(struct file *filp, unsigned int fd, unsigned int cmd,
      unsigned long arg);
extern int __generic_block_fiemap(struct inode *inode,
      struct fiemap_extent_info *fieinfo, u64 start,
      u64 len, get_block_t *get_block);
extern int generic_block_fiemap(struct inode *inode,
    struct fiemap_extent_info *fieinfo, u64 start,
    u64 len, get_block_t *get_block);

extern void get_filesystem(struct file_system_type *fs);
extern void put_filesystem(struct file_system_type *fs);
extern struct file_system_type *get_fs_type(const char *name);
extern struct super_block *get_super(struct block_device *);
extern struct super_block *user_get_super(dev_t);
extern void drop_super(struct super_block *sb);

extern int dcache_dir_open(struct inode *, struct file *);
extern int dcache_dir_close(struct inode *, struct file *);
extern loff_t dcache_dir_lseek(struct file *, loff_t, int);
extern int dcache_readdir(struct file *, void *, filldir_t);
extern int simple_getattr(struct vfsmount *, struct dentry *, struct kstat *);
extern int simple_statfs(struct dentry *, struct kstatfs *);
extern int simple_link(struct dentry *, struct inode *, struct dentry *);
extern int simple_unlink(struct inode *, struct dentry *);
extern int simple_rmdir(struct inode *, struct dentry *);
extern int simple_rename(struct inode *, struct dentry *, struct inode *, struct dentry *);
extern int simple_sync_file(struct file *, struct dentry *, int);
extern int simple_empty(struct dentry *);
extern int simple_readpage(struct file *file, struct page *page);
extern int simple_prepare_write(struct file *file, struct page *page,
   unsigned offset, unsigned to);
extern int simple_write_begin(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned flags,
   struct page **pagep, void **fsdata);
extern int simple_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata);

extern struct dentry *simple_lookup(struct inode *, struct dentry *, struct nameidata *);
extern ssize_t generic_read_dir(struct file *, char *, size_t, loff_t *);
extern const struct file_operations simple_dir_operations;
extern const struct inode_operations simple_dir_inode_operations;
struct tree_descr { char *name; const struct file_operations *ops; int mode; };
struct dentry *d_alloc_name(struct dentry *, const char *);
extern int simple_fill_super(struct super_block *, int, struct tree_descr *);
extern int simple_pin_fs(struct file_system_type *, struct vfsmount **mount, int *count);
extern void simple_release_fs(struct vfsmount **mount, int *count);

extern ssize_t simple_read_from_buffer(void *to, size_t count,
   loff_t *ppos, const void *from, size_t available);
# 2365 "include/linux/fs.h"
extern int inode_change_ok(struct inode *, struct iattr *);
extern int inode_setattr(struct inode *, struct iattr *);

extern void file_update_time(struct file *file);

extern int generic_show_options(struct seq_file *m, struct vfsmount *mnt);
extern void save_mount_options(struct super_block *sb, char *options);
extern void replace_mount_options(struct super_block *sb, char *options);

static inline __attribute__((always_inline)) ino_t parent_ino(struct dentry *dentry)
{
 ino_t res;

 do { do { } while (0); (void)0; (void)(&dentry->d_lock); } while (0);
 res = dentry->d_parent->d_inode->i_ino;
 do { do { } while (0); (void)0; (void)(&dentry->d_lock); } while (0);
 return res;
}







struct simple_transaction_argresp {
 ssize_t size;
 char data[0];
};



char *simple_transaction_get(struct file *file, const char *buf,
    size_t size);
ssize_t simple_transaction_read(struct file *file, char *buf,
    size_t size, loff_t *pos);
int simple_transaction_release(struct inode *inode, struct file *file);

void simple_transaction_set(struct file *file, size_t n);
# 2435 "include/linux/fs.h"
static inline __attribute__((always_inline)) void __attribute__((format(printf, 1, 2)))
__simple_attr_check_format(const char *fmt, ...)
{

}

int simple_attr_open(struct inode *inode, struct file *file,
       int (*get)(void *, u64 *), int (*set)(void *, u64),
       const char *fmt);
int simple_attr_release(struct inode *inode, struct file *file);
ssize_t simple_attr_read(struct file *file, char *buf,
    size_t len, loff_t *ppos);
ssize_t simple_attr_write(struct file *file, const char *buf,
     size_t len, loff_t *ppos);

struct ctl_table;
int proc_nr_files(struct ctl_table *table, int write, struct file *filp,
    void *buffer, size_t *lenp, loff_t *ppos);

int __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) get_filesystem_list(char *buf);
# 6 "include/linux/proc_fs.h" 2

# 1 "include/linux/magic.h" 1
# 8 "include/linux/proc_fs.h" 2


struct net;
struct completion;
struct mm_struct;
# 30 "include/linux/proc_fs.h"
enum {
 PROC_ROOT_INO = 1,
};
# 46 "include/linux/proc_fs.h"
typedef int (read_proc_t)(char *page, char **start, off_t off,
     int count, int *eof, void *data);
typedef int (write_proc_t)(struct file *file, const char *buffer,
      unsigned long count, void *data);

struct proc_dir_entry {
 unsigned int low_ino;
 unsigned short namelen;
 const char *name;
 mode_t mode;
 nlink_t nlink;
 uid_t uid;
 gid_t gid;
 loff_t size;
 const struct inode_operations *proc_iops;
# 69 "include/linux/proc_fs.h"
 const struct file_operations *proc_fops;
 struct proc_dir_entry *next, *parent, *subdir;
 void *data;
 read_proc_t *read_proc;
 write_proc_t *write_proc;
 atomic_t count;
 int pde_users;
 spinlock_t pde_unload_lock;
 struct completion *pde_unload_completion;
 struct list_head pde_openers;
};

struct kcore_list {
 struct kcore_list *next;
 unsigned long addr;
 size_t size;
};

struct vmcore {
 struct list_head list;
 unsigned long long paddr;
 unsigned long long size;
 loff_t offset;
};



extern spinlock_t proc_subdir_lock;

extern void proc_root_init(void);

void proc_flush_task(struct task_struct *task);
struct dentry *proc_pid_lookup(struct inode *dir, struct dentry * dentry, struct nameidata *);
int proc_pid_readdir(struct file * filp, void * dirent, filldir_t filldir);
unsigned long task_vsize(struct mm_struct *);
int task_statm(struct mm_struct *, int *, int *, int *, int *);
void task_mem(struct seq_file *, struct mm_struct *);
void clear_refs_smap(struct mm_struct *mm);

struct proc_dir_entry *de_get(struct proc_dir_entry *de);
void de_put(struct proc_dir_entry *de);

extern struct proc_dir_entry *create_proc_entry(const char *name, mode_t mode,
      struct proc_dir_entry *parent);
struct proc_dir_entry *proc_create_data(const char *name, mode_t mode,
    struct proc_dir_entry *parent,
    const struct file_operations *proc_fops,
    void *data);
extern void remove_proc_entry(const char *name, struct proc_dir_entry *parent);

extern struct vfsmount *proc_mnt;
struct pid_namespace;
extern int proc_fill_super(struct super_block *);
extern struct inode *proc_get_inode(struct super_block *, unsigned int, struct proc_dir_entry *);
# 131 "include/linux/proc_fs.h"
extern int proc_readdir(struct file *, void *, filldir_t);
extern struct dentry *proc_lookup(struct inode *, struct dentry *, struct nameidata *);

extern int pid_ns_prepare_proc(struct pid_namespace *ns);
extern void pid_ns_release_proc(struct pid_namespace *ns);




struct tty_driver;
extern void proc_tty_init(void);
extern void proc_tty_register_driver(struct tty_driver *driver);
extern void proc_tty_unregister_driver(struct tty_driver *driver);
# 161 "include/linux/proc_fs.h"
extern struct proc_dir_entry *proc_symlink(const char *,
  struct proc_dir_entry *, const char *);
extern struct proc_dir_entry *proc_mkdir(const char *,struct proc_dir_entry *);
extern struct proc_dir_entry *proc_mkdir_mode(const char *name, mode_t mode,
   struct proc_dir_entry *parent);

static inline __attribute__((always_inline)) struct proc_dir_entry *proc_create(const char *name, mode_t mode,
 struct proc_dir_entry *parent, const struct file_operations *proc_fops)
{
 return proc_create_data(name, mode, parent, proc_fops, ((void *)0));
}

static inline __attribute__((always_inline)) struct proc_dir_entry *create_proc_read_entry(const char *name,
 mode_t mode, struct proc_dir_entry *base,
 read_proc_t *read_proc, void * data)
{
 struct proc_dir_entry *res=create_proc_entry(name,mode,base);
 if (res) {
  res->read_proc=read_proc;
  res->data=data;
 }
 return res;
}

extern struct proc_dir_entry *proc_net_fops_create(struct net *net,
 const char *name, mode_t mode, const struct file_operations *fops);
extern void proc_net_remove(struct net *net, const char *name);
extern struct proc_dir_entry *proc_net_mkdir(struct net *net, const char *name,
 struct proc_dir_entry *parent);



extern void set_mm_exe_file(struct mm_struct *mm, struct file *new_exe_file);
extern struct file *get_mm_exe_file(struct mm_struct *mm);
extern void dup_mm_exe_file(struct mm_struct *oldmm, struct mm_struct *newmm);
# 264 "include/linux/proc_fs.h"
extern void kclist_add(struct kcore_list *, void *, size_t);


union proc_op {
 int (*proc_get_link)(struct inode *, struct path *);
 int (*proc_read)(struct task_struct *task, char *page);
 int (*proc_show)(struct seq_file *m,
  struct pid_namespace *ns, struct pid *pid,
  struct task_struct *task);
};

struct ctl_table_header;
struct ctl_table;

struct proc_inode {
 struct pid *pid;
 int fd;
 union proc_op op;
 struct proc_dir_entry *pde;
 struct ctl_table_header *sysctl;
 struct ctl_table *sysctl_entry;
 struct inode vfs_inode;
};

static inline __attribute__((always_inline)) struct proc_inode *PROC_I(const struct inode *inode)
{
 return ({ const typeof( ((struct proc_inode *)0)->vfs_inode ) *__mptr = (inode); (struct proc_inode *)( (char *)__mptr - ((size_t) &((struct proc_inode *)0)->vfs_inode) );});
}

static inline __attribute__((always_inline)) struct proc_dir_entry *PDE(const struct inode *inode)
{
 return PROC_I(inode)->pde;
}

static inline __attribute__((always_inline)) struct net *PDE_NET(struct proc_dir_entry *pde)
{
 return pde->parent->data;
}

struct proc_maps_private {
 struct pid *pid;
 struct task_struct *task;

 struct vm_area_struct *tail_vma;

};
# 320 "include/linux/netfilter.h" 2
extern struct proc_dir_entry *proc_net_netfilter;
# 349 "include/linux/netfilter.h"
extern void (*ip_ct_attach)(struct sk_buff *, struct sk_buff *);
extern void nf_ct_attach(struct sk_buff *, struct sk_buff *);
extern void (*nf_ct_destroy)(struct nf_conntrack *);
# 6 "include/net/netns/x_tables.h" 2

struct ebt_table;

struct netns_xt {
 struct list_head tables[NFPROTO_NUMPROTO];
 struct ebt_table *broute_table;
 struct ebt_table *frame_filter;
 struct ebt_table *frame_nat;
};
# 19 "include/net/net_namespace.h" 2

# 1 "include/net/netns/conntrack.h" 1




# 1 "include/linux/list_nulls.h" 1
# 17 "include/linux/list_nulls.h"
struct hlist_nulls_head {
 struct hlist_nulls_node *first;
};

struct hlist_nulls_node {
 struct hlist_nulls_node *next, **pprev;
};
# 33 "include/linux/list_nulls.h"
static inline __attribute__((always_inline)) int is_a_nulls(const struct hlist_nulls_node *ptr)
{
 return ((unsigned long)ptr & 1);
}







static inline __attribute__((always_inline)) unsigned long get_nulls_value(const struct hlist_nulls_node *ptr)
{
 return ((unsigned long)ptr) >> 1;
}

static inline __attribute__((always_inline)) int hlist_nulls_unhashed(const struct hlist_nulls_node *h)
{
 return !h->pprev;
}

static inline __attribute__((always_inline)) int hlist_nulls_empty(const struct hlist_nulls_head *h)
{
 return is_a_nulls(h->first);
}

static inline __attribute__((always_inline)) void __hlist_nulls_del(struct hlist_nulls_node *n)
{
 struct hlist_nulls_node *next = n->next;
 struct hlist_nulls_node **pprev = n->pprev;
 *pprev = next;
 if (!is_a_nulls(next))
  next->pprev = pprev;
}
# 6 "include/net/netns/conntrack.h" 2


struct ctl_table_header;
struct nf_conntrack_ecache;

struct netns_ct {
 atomic_t count;
 unsigned int expect_count;
 struct hlist_nulls_head *hash;
 struct hlist_head *expect_hash;
 struct hlist_nulls_head unconfirmed;
 struct ip_conntrack_stat *stat;



 int sysctl_acct;
 int sysctl_checksum;
 unsigned int sysctl_log_invalid;

 struct ctl_table_header *sysctl_header;
 struct ctl_table_header *acct_sysctl_header;

 int hash_vmalloc;
 int expect_vmalloc;
};
# 21 "include/net/net_namespace.h" 2

# 1 "include/net/netns/xfrm.h" 1






# 1 "include/linux/xfrm.h" 1
# 13 "include/linux/xfrm.h"
typedef union
{
 __be32 a4;
 __be32 a6[4];
} xfrm_address_t;





struct xfrm_id
{
 xfrm_address_t daddr;
 __be32 spi;
 __u8 proto;
};

struct xfrm_sec_ctx {
 __u8 ctx_doi;
 __u8 ctx_alg;
 __u16 ctx_len;
 __u32 ctx_sid;
 char ctx_str[0];
};
# 48 "include/linux/xfrm.h"
struct xfrm_selector
{
 xfrm_address_t daddr;
 xfrm_address_t saddr;
 __be16 dport;
 __be16 dport_mask;
 __be16 sport;
 __be16 sport_mask;
 __u16 family;
 __u8 prefixlen_d;
 __u8 prefixlen_s;
 __u8 proto;
 int ifindex;
 __kernel_uid32_t user;
};



struct xfrm_lifetime_cfg
{
 __u64 soft_byte_limit;
 __u64 hard_byte_limit;
 __u64 soft_packet_limit;
 __u64 hard_packet_limit;
 __u64 soft_add_expires_seconds;
 __u64 hard_add_expires_seconds;
 __u64 soft_use_expires_seconds;
 __u64 hard_use_expires_seconds;
};

struct xfrm_lifetime_cur
{
 __u64 bytes;
 __u64 packets;
 __u64 add_time;
 __u64 use_time;
};

struct xfrm_replay_state
{
 __u32 oseq;
 __u32 seq;
 __u32 bitmap;
};

struct xfrm_algo {
 char alg_name[64];
 unsigned int alg_key_len;
 char alg_key[0];
};

struct xfrm_algo_aead {
 char alg_name[64];
 unsigned int alg_key_len;
 unsigned int alg_icv_len;
 char alg_key[0];
};

struct xfrm_stats {
 __u32 replay_window;
 __u32 replay;
 __u32 integrity_failed;
};

enum
{
 XFRM_POLICY_TYPE_MAIN = 0,
 XFRM_POLICY_TYPE_SUB = 1,
 XFRM_POLICY_TYPE_MAX = 2,
 XFRM_POLICY_TYPE_ANY = 255
};

enum
{
 XFRM_POLICY_IN = 0,
 XFRM_POLICY_OUT = 1,
 XFRM_POLICY_FWD = 2,
 XFRM_POLICY_MASK = 3,
 XFRM_POLICY_MAX = 3
};

enum
{
 XFRM_SHARE_ANY,
 XFRM_SHARE_SESSION,
 XFRM_SHARE_USER,
 XFRM_SHARE_UNIQUE
};
# 145 "include/linux/xfrm.h"
enum {
 XFRM_MSG_BASE = 0x10,

 XFRM_MSG_NEWSA = 0x10,

 XFRM_MSG_DELSA,

 XFRM_MSG_GETSA,


 XFRM_MSG_NEWPOLICY,

 XFRM_MSG_DELPOLICY,

 XFRM_MSG_GETPOLICY,


 XFRM_MSG_ALLOCSPI,

 XFRM_MSG_ACQUIRE,

 XFRM_MSG_EXPIRE,


 XFRM_MSG_UPDPOLICY,

 XFRM_MSG_UPDSA,


 XFRM_MSG_POLEXPIRE,


 XFRM_MSG_FLUSHSA,

 XFRM_MSG_FLUSHPOLICY,


 XFRM_MSG_NEWAE,

 XFRM_MSG_GETAE,


 XFRM_MSG_REPORT,


 XFRM_MSG_MIGRATE,


 XFRM_MSG_NEWSADINFO,

 XFRM_MSG_GETSADINFO,


 XFRM_MSG_NEWSPDINFO,

 XFRM_MSG_GETSPDINFO,


 XFRM_MSG_MAPPING,

 __XFRM_MSG_MAX
};
# 215 "include/linux/xfrm.h"
struct xfrm_user_sec_ctx {
 __u16 len;
 __u16 exttype;
 __u8 ctx_alg;
 __u8 ctx_doi;
 __u16 ctx_len;
};

struct xfrm_user_tmpl {
 struct xfrm_id id;
 __u16 family;
 xfrm_address_t saddr;
 __u32 reqid;
 __u8 mode;
 __u8 share;
 __u8 optional;
 __u32 aalgos;
 __u32 ealgos;
 __u32 calgos;
};

struct xfrm_encap_tmpl {
 __u16 encap_type;
 __be16 encap_sport;
 __be16 encap_dport;
 xfrm_address_t encap_oa;
};


enum xfrm_ae_ftype_t {
 XFRM_AE_UNSPEC,
 XFRM_AE_RTHR=1,
 XFRM_AE_RVAL=2,
 XFRM_AE_LVAL=4,
 XFRM_AE_ETHR=8,
 XFRM_AE_CR=16,
 XFRM_AE_CE=32,
 XFRM_AE_CU=64,
 __XFRM_AE_MAX


};

struct xfrm_userpolicy_type {
 __u8 type;
 __u16 reserved1;
 __u8 reserved2;
};


enum xfrm_attr_type_t {
 XFRMA_UNSPEC,
 XFRMA_ALG_AUTH,
 XFRMA_ALG_CRYPT,
 XFRMA_ALG_COMP,
 XFRMA_ENCAP,
 XFRMA_TMPL,
 XFRMA_SA,
 XFRMA_POLICY,
 XFRMA_SEC_CTX,
 XFRMA_LTIME_VAL,
 XFRMA_REPLAY_VAL,
 XFRMA_REPLAY_THRESH,
 XFRMA_ETIMER_THRESH,
 XFRMA_SRCADDR,
 XFRMA_COADDR,
 XFRMA_LASTUSED,
 XFRMA_POLICY_TYPE,
 XFRMA_MIGRATE,
 XFRMA_ALG_AEAD,
 XFRMA_KMADDRESS,
 __XFRMA_MAX


};

enum xfrm_sadattr_type_t {
 XFRMA_SAD_UNSPEC,
 XFRMA_SAD_CNT,
 XFRMA_SAD_HINFO,
 __XFRMA_SAD_MAX


};

struct xfrmu_sadhinfo {
 __u32 sadhcnt;
 __u32 sadhmcnt;
};

enum xfrm_spdattr_type_t {
 XFRMA_SPD_UNSPEC,
 XFRMA_SPD_INFO,
 XFRMA_SPD_HINFO,
 __XFRMA_SPD_MAX


};

struct xfrmu_spdinfo {
 __u32 incnt;
 __u32 outcnt;
 __u32 fwdcnt;
 __u32 inscnt;
 __u32 outscnt;
 __u32 fwdscnt;
};

struct xfrmu_spdhinfo {
 __u32 spdhcnt;
 __u32 spdhmcnt;
};

struct xfrm_usersa_info {
 struct xfrm_selector sel;
 struct xfrm_id id;
 xfrm_address_t saddr;
 struct xfrm_lifetime_cfg lft;
 struct xfrm_lifetime_cur curlft;
 struct xfrm_stats stats;
 __u32 seq;
 __u32 reqid;
 __u16 family;
 __u8 mode;
 __u8 replay_window;
 __u8 flags;






};

struct xfrm_usersa_id {
 xfrm_address_t daddr;
 __be32 spi;
 __u16 family;
 __u8 proto;
};

struct xfrm_aevent_id {
 struct xfrm_usersa_id sa_id;
 xfrm_address_t saddr;
 __u32 flags;
 __u32 reqid;
};

struct xfrm_userspi_info {
 struct xfrm_usersa_info info;
 __u32 min;
 __u32 max;
};

struct xfrm_userpolicy_info {
 struct xfrm_selector sel;
 struct xfrm_lifetime_cfg lft;
 struct xfrm_lifetime_cur curlft;
 __u32 priority;
 __u32 index;
 __u8 dir;
 __u8 action;


 __u8 flags;



 __u8 share;
};

struct xfrm_userpolicy_id {
 struct xfrm_selector sel;
 __u32 index;
 __u8 dir;
};

struct xfrm_user_acquire {
 struct xfrm_id id;
 xfrm_address_t saddr;
 struct xfrm_selector sel;
 struct xfrm_userpolicy_info policy;
 __u32 aalgos;
 __u32 ealgos;
 __u32 calgos;
 __u32 seq;
};

struct xfrm_user_expire {
 struct xfrm_usersa_info state;
 __u8 hard;
};

struct xfrm_user_polexpire {
 struct xfrm_userpolicy_info pol;
 __u8 hard;
};

struct xfrm_usersa_flush {
 __u8 proto;
};

struct xfrm_user_report {
 __u8 proto;
 struct xfrm_selector sel;
};



struct xfrm_user_kmaddress {
 xfrm_address_t local;
 xfrm_address_t remote;
 __u32 reserved;
 __u16 family;
};

struct xfrm_user_migrate {
 xfrm_address_t old_daddr;
 xfrm_address_t old_saddr;
 xfrm_address_t new_daddr;
 xfrm_address_t new_saddr;
 __u8 proto;
 __u8 mode;
 __u16 reserved;
 __u32 reqid;
 __u16 old_family;
 __u16 new_family;
};

struct xfrm_user_mapping {
 struct xfrm_usersa_id id;
 __u32 reqid;
 xfrm_address_t old_saddr;
 xfrm_address_t new_saddr;
 __be16 old_sport;
 __be16 new_sport;
};
# 462 "include/linux/xfrm.h"
enum xfrm_nlgroups {
 XFRMNLGRP_NONE,

 XFRMNLGRP_ACQUIRE,

 XFRMNLGRP_EXPIRE,

 XFRMNLGRP_SA,

 XFRMNLGRP_POLICY,

 XFRMNLGRP_AEVENTS,

 XFRMNLGRP_REPORT,

 XFRMNLGRP_MIGRATE,

 XFRMNLGRP_MAPPING,

 __XFRMNLGRP_MAX
};
# 8 "include/net/netns/xfrm.h" 2

struct ctl_table_header;

struct xfrm_policy_hash {
 struct hlist_head *table;
 unsigned int hmask;
};

struct netns_xfrm {
 struct list_head state_all;
# 26 "include/net/netns/xfrm.h"
 struct hlist_head *state_bydst;
 struct hlist_head *state_bysrc;
 struct hlist_head *state_byspi;
 unsigned int state_hmask;
 unsigned int state_num;
 struct work_struct state_hash_work;
 struct hlist_head state_gc_list;
 struct work_struct state_gc_work;

 wait_queue_head_t km_waitq;

 struct list_head policy_all;
 struct hlist_head *policy_byidx;
 unsigned int policy_idx_hmask;
 struct hlist_head policy_inexact[XFRM_POLICY_MAX * 2];
 struct xfrm_policy_hash policy_bydst[XFRM_POLICY_MAX * 2];
 unsigned int policy_count[XFRM_POLICY_MAX * 2];
 struct work_struct policy_hash_work;

 struct sock *nlsk;

 u32 sysctl_aevent_etime;
 u32 sysctl_aevent_rseqth;
 int sysctl_larval_drop;
 u32 sysctl_acq_expires;

 struct ctl_table_header *sysctl_hdr;

};
# 23 "include/net/net_namespace.h" 2

struct proc_dir_entry;
struct net_device;
struct sock;
struct ctl_table_header;
struct net_generic;

struct net {
 atomic_t count;







 struct list_head list;
 struct work_struct work;

 struct proc_dir_entry *proc_net;
 struct proc_dir_entry *proc_net_stat;


 struct ctl_table_set sysctls;


 struct net_device *loopback_dev;

 struct list_head dev_base_head;
 struct hlist_head *dev_name_head;
 struct hlist_head *dev_index_head;


 struct list_head rules_ops;
 spinlock_t rules_mod_lock;

 struct sock *rtnl;

 struct netns_core core;
 struct netns_mib mib;
 struct netns_packet packet;
 struct netns_unix unx;
 struct netns_ipv4 ipv4;







 struct netns_xt xt;

 struct netns_ct ct;





 struct net_generic *gen;
};


# 1 "include/linux/seq_file_net.h" 1



# 1 "include/linux/seq_file.h" 1
# 10 "include/linux/seq_file.h"
struct seq_operations;
struct file;
struct path;
struct inode;
struct dentry;

struct seq_file {
 char *buf;
 size_t size;
 size_t from;
 size_t count;
 loff_t index;
 loff_t read_pos;
 u64 version;
 struct mutex lock;
 const struct seq_operations *op;
 void *private;
};

struct seq_operations {
 void * (*start) (struct seq_file *m, loff_t *pos);
 void (*stop) (struct seq_file *m, void *v);
 void * (*next) (struct seq_file *m, void *v, loff_t *pos);
 int (*show) (struct seq_file *m, void *v);
};



char *mangle_path(char *s, char *p, char *esc);
int seq_open(struct file *, const struct seq_operations *);
ssize_t seq_read(struct file *, char *, size_t, loff_t *);
loff_t seq_lseek(struct file *, loff_t, int);
int seq_release(struct inode *, struct file *);
int seq_escape(struct seq_file *, const char *, const char *);
int seq_putc(struct seq_file *m, char c);
int seq_puts(struct seq_file *m, const char *s);

int seq_printf(struct seq_file *, const char *, ...)
 __attribute__ ((format (printf,2,3)));

int seq_path(struct seq_file *, struct path *, char *);
int seq_dentry(struct seq_file *, struct dentry *, char *);
int seq_path_root(struct seq_file *m, struct path *path, struct path *root,
    char *esc);
int seq_bitmap(struct seq_file *m, const unsigned long *bits,
       unsigned int nr_bits);
static inline __attribute__((always_inline)) int seq_cpumask(struct seq_file *m, const struct cpumask *mask)
{
 return seq_bitmap(m, ((mask)->bits), 1);
}

static inline __attribute__((always_inline)) int seq_nodemask(struct seq_file *m, nodemask_t *mask)
{
 return seq_bitmap(m, mask->bits, (1 << 0));
}

int seq_bitmap_list(struct seq_file *m, const unsigned long *bits,
  unsigned int nr_bits);

static inline __attribute__((always_inline)) int seq_cpumask_list(struct seq_file *m,
       const struct cpumask *mask)
{
 return seq_bitmap_list(m, ((mask)->bits), 1);
}

static inline __attribute__((always_inline)) int seq_nodemask_list(struct seq_file *m, nodemask_t *mask)
{
 return seq_bitmap_list(m, mask->bits, (1 << 0));
}

int single_open(struct file *, int (*)(struct seq_file *, void *), void *);
int single_release(struct inode *, struct file *);
void *__seq_open_private(struct file *, const struct seq_operations *, int);
int seq_open_private(struct file *, const struct seq_operations *, int);
int seq_release_private(struct inode *, struct file *);







extern struct list_head *seq_list_start(struct list_head *head,
  loff_t pos);
extern struct list_head *seq_list_start_head(struct list_head *head,
  loff_t pos);
extern struct list_head *seq_list_next(void *v, struct list_head *head,
  loff_t *ppos);
# 5 "include/linux/seq_file_net.h" 2

struct net;
extern struct net init_net;

struct seq_net_private {



};

int seq_open_net(struct inode *, struct file *,
   const struct seq_operations *, int);
int single_open_net(struct inode *, struct file *file,
  int (*show)(struct seq_file *, void *));
int seq_release_net(struct inode *, struct file *);
int single_release_net(struct inode *, struct file *);
static inline __attribute__((always_inline)) struct net *seq_file_net(struct seq_file *seq)
{



 return &init_net;

}
# 86 "include/net/net_namespace.h" 2


extern struct net init_net;




extern struct net *copy_net_ns(unsigned long flags, struct net *net_ns);
# 107 "include/net/net_namespace.h"
extern struct list_head net_namespace_list;
# 143 "include/net/net_namespace.h"
static inline __attribute__((always_inline)) struct net *get_net(struct net *net)
{
 return net;
}

static inline __attribute__((always_inline)) void put_net(struct net *net)
{
}

static inline __attribute__((always_inline)) struct net *maybe_get_net(struct net *net)
{
 return net;
}

static inline __attribute__((always_inline))
int net_eq(const struct net *net1, const struct net *net2)
{
 return 1;
}
# 179 "include/net/net_namespace.h"
static inline __attribute__((always_inline)) struct net *hold_net(struct net *net)
{
 return net;
}

static inline __attribute__((always_inline)) void release_net(struct net *net)
{
}
# 221 "include/net/net_namespace.h"
struct pernet_operations {
 struct list_head list;
 int (*init)(struct net *net);
 void (*exit)(struct net *net);
};
# 244 "include/net/net_namespace.h"
extern int register_pernet_subsys(struct pernet_operations *);
extern void unregister_pernet_subsys(struct pernet_operations *);
extern int register_pernet_gen_subsys(int *id, struct pernet_operations *);
extern void unregister_pernet_gen_subsys(int id, struct pernet_operations *);
extern int register_pernet_device(struct pernet_operations *);
extern void unregister_pernet_device(struct pernet_operations *);
extern int register_pernet_gen_device(int *id, struct pernet_operations *);
extern void unregister_pernet_gen_device(int id, struct pernet_operations *);

struct ctl_path;
struct ctl_table;
struct ctl_table_header;

extern struct ctl_table_header *register_net_sysctl_table(struct net *net,
 const struct ctl_path *path, struct ctl_table *table);
extern struct ctl_table_header *register_net_sysctl_rotable(
 const struct ctl_path *path, struct ctl_table *table);
extern void unregister_net_sysctl_table(struct ctl_table_header *header);
# 46 "include/linux/netdevice.h" 2
# 1 "include/net/dsa.h" 1
# 17 "include/net/dsa.h"
struct dsa_chip_data {



 struct device *mii_bus;
 int sw_addr;
# 31 "include/net/dsa.h"
 char *port_names[12];







 s8 *rtable;
};

struct dsa_platform_data {




 struct device *netdev;





 int nr_chips;
 struct dsa_chip_data *chip;
};

extern bool dsa_uses_dsa_tags(void *dsa_ptr);
extern bool dsa_uses_trailer_tags(void *dsa_ptr);
# 47 "include/linux/netdevice.h" 2




struct vlan_group;
struct ethtool_ops;
struct netpoll_info;

struct wireless_dev;
# 133 "include/linux/netdevice.h"
struct net_device_stats
{
 unsigned long rx_packets;
 unsigned long tx_packets;
 unsigned long rx_bytes;
 unsigned long tx_bytes;
 unsigned long rx_errors;
 unsigned long tx_errors;
 unsigned long rx_dropped;
 unsigned long tx_dropped;
 unsigned long multicast;
 unsigned long collisions;


 unsigned long rx_length_errors;
 unsigned long rx_over_errors;
 unsigned long rx_crc_errors;
 unsigned long rx_frame_errors;
 unsigned long rx_fifo_errors;
 unsigned long rx_missed_errors;


 unsigned long tx_aborted_errors;
 unsigned long tx_carrier_errors;
 unsigned long tx_fifo_errors;
 unsigned long tx_heartbeat_errors;
 unsigned long tx_window_errors;


 unsigned long rx_compressed;
 unsigned long tx_compressed;
};



enum {
        IF_PORT_UNKNOWN = 0,
        IF_PORT_10BASE2,
        IF_PORT_10BASET,
        IF_PORT_AUI,
        IF_PORT_100BASET,
        IF_PORT_100BASETX,
        IF_PORT_100BASEFX
};






struct neighbour;
struct neigh_parms;
struct sk_buff;

struct netif_rx_stats
{
 unsigned total;
 unsigned dropped;
 unsigned time_squeeze;
 unsigned cpu_collision;
};

extern __attribute__((__section__(".data" ""))) __typeof__(struct netif_rx_stats) per_cpu__netdev_rx_stat;

struct dev_addr_list
{
 struct dev_addr_list *next;
 u8 da_addr[32];
 u8 da_addrlen;
 u8 da_synced;
 int da_users;
 int da_gusers;
};
# 217 "include/linux/netdevice.h"
struct hh_cache
{
 struct hh_cache *hh_next;
 atomic_t hh_refcnt;






 __be16 hh_type ;




 u16 hh_len;
 int (*hh_output)(struct sk_buff *skb);
 seqlock_t hh_lock;







 unsigned long hh_data[(((32)+(16 -1))&~(16 - 1)) / sizeof(long)];
};
# 263 "include/linux/netdevice.h"
struct header_ops {
 int (*create) (struct sk_buff *skb, struct net_device *dev,
      unsigned short type, const void *daddr,
      const void *saddr, unsigned len);
 int (*parse)(const struct sk_buff *skb, unsigned char *haddr);
 int (*rebuild)(struct sk_buff *skb);

 int (*cache)(const struct neighbour *neigh, struct hh_cache *hh);
 void (*cache_update)(struct hh_cache *hh,
    const struct net_device *dev,
    const unsigned char *haddr);
};






enum netdev_state_t
{
 __LINK_STATE_START,
 __LINK_STATE_PRESENT,
 __LINK_STATE_NOCARRIER,
 __LINK_STATE_LINKWATCH_PENDING,
 __LINK_STATE_DORMANT,
};






struct netdev_boot_setup {
 char name[16];
 struct ifmap map;
};


extern int __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) netdev_boot_setup(char *str);




struct napi_struct {






 struct list_head poll_list;

 unsigned long state;
 int weight;
 int (*poll)(struct napi_struct *, int);





 unsigned int gro_count;

 struct net_device *dev;
 struct list_head dev_list;
 struct sk_buff *gro_list;
 struct sk_buff *skb;
};

enum
{
 NAPI_STATE_SCHED,
 NAPI_STATE_DISABLE,
 NAPI_STATE_NPSVC,
};

enum {
 GRO_MERGED,
 GRO_MERGED_FREE,
 GRO_HELD,
 GRO_NORMAL,
 GRO_DROP,
};

extern void __napi_schedule(struct napi_struct *n);

static inline __attribute__((always_inline)) int napi_disable_pending(struct napi_struct *n)
{
 return test_bit(NAPI_STATE_DISABLE, &n->state);
}
# 362 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) int napi_schedule_prep(struct napi_struct *n)
{
 return !napi_disable_pending(n) &&
  !test_and_set_bit(NAPI_STATE_SCHED, &n->state);
}
# 375 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) void napi_schedule(struct napi_struct *n)
{
 if (napi_schedule_prep(n))
  __napi_schedule(n);
}


static inline __attribute__((always_inline)) int napi_reschedule(struct napi_struct *napi)
{
 if (napi_schedule_prep(napi)) {
  __napi_schedule(napi);
  return 1;
 }
 return 0;
}







extern void __napi_complete(struct napi_struct *n);
extern void napi_complete(struct napi_struct *n);
# 407 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) void napi_disable(struct napi_struct *n)
{
 set_bit(NAPI_STATE_DISABLE, &n->state);
 while (test_and_set_bit(NAPI_STATE_SCHED, &n->state))
  msleep(1);
 clear_bit(NAPI_STATE_DISABLE, &n->state);
}
# 422 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) void napi_enable(struct napi_struct *n)
{
 do { if (!test_bit(NAPI_STATE_SCHED, &n->state)) ; } while(0);
 __asm__ __volatile__("   \n" : : : "memory");
 clear_bit(NAPI_STATE_SCHED, &n->state);
}
# 447 "include/linux/netdevice.h"
enum netdev_queue_state_t
{
 __QUEUE_STATE_XOFF,
 __QUEUE_STATE_FROZEN,
};

struct netdev_queue {
 struct net_device *dev;
 struct Qdisc *qdisc;
 unsigned long state;
 spinlock_t _xmit_lock;
 int xmit_lock_owner;
 struct Qdisc *qdisc_sleeping;
} ;
# 554 "include/linux/netdevice.h"
struct net_device_ops {
 int (*ndo_init)(struct net_device *dev);
 void (*ndo_uninit)(struct net_device *dev);
 int (*ndo_open)(struct net_device *dev);
 int (*ndo_stop)(struct net_device *dev);
 int (*ndo_start_xmit) (struct sk_buff *skb,
         struct net_device *dev);
 u16 (*ndo_select_queue)(struct net_device *dev,
          struct sk_buff *skb);

 void (*ndo_change_rx_flags)(struct net_device *dev,
             int flags);

 void (*ndo_set_rx_mode)(struct net_device *dev);

 void (*ndo_set_multicast_list)(struct net_device *dev);

 int (*ndo_set_mac_address)(struct net_device *dev,
             void *addr);

 int (*ndo_validate_addr)(struct net_device *dev);

 int (*ndo_do_ioctl)(struct net_device *dev,
             struct ifreq *ifr, int cmd);

 int (*ndo_set_config)(struct net_device *dev,
               struct ifmap *map);

 int (*ndo_change_mtu)(struct net_device *dev,
        int new_mtu);
 int (*ndo_neigh_setup)(struct net_device *dev,
         struct neigh_parms *);

 void (*ndo_tx_timeout) (struct net_device *dev);

 struct net_device_stats* (*ndo_get_stats)(struct net_device *dev);

 void (*ndo_vlan_rx_register)(struct net_device *dev,
              struct vlan_group *grp);
 void (*ndo_vlan_rx_add_vid)(struct net_device *dev,
             unsigned short vid);
 void (*ndo_vlan_rx_kill_vid)(struct net_device *dev,
              unsigned short vid);
# 609 "include/linux/netdevice.h"
};
# 621 "include/linux/netdevice.h"
struct net_device
{






 char name[16];

 struct hlist_node name_hlist;

 char *ifalias;





 unsigned long mem_end;
 unsigned long mem_start;
 unsigned long base_addr;
 unsigned int irq;






 unsigned char if_port;
 unsigned char dma;

 unsigned long state;

 struct list_head dev_list;
 struct list_head napi_list;


 unsigned long features;
# 707 "include/linux/netdevice.h"
 int ifindex;
 int iflink;

 struct net_device_stats stats;




 const struct iw_handler_def * wireless_handlers;

 struct iw_public_data * wireless_data;

 void *priv;

 const struct net_device_ops *netdev_ops;
 const struct ethtool_ops *ethtool_ops;


 const struct header_ops *header_ops;

 unsigned int flags;
 unsigned short gflags;
        unsigned short priv_flags;
 unsigned short padded;

 unsigned char operstate;
 unsigned char link_mode;

 unsigned mtu;
 unsigned short type;
 unsigned short hard_header_len;





 unsigned short needed_headroom;
 unsigned short needed_tailroom;

 struct net_device *master;




 unsigned char perm_addr[32];
 unsigned char addr_len;
 unsigned short dev_id;

 spinlock_t addr_list_lock;
 struct dev_addr_list *uc_list;
 int uc_count;
 int uc_promisc;
 struct dev_addr_list *mc_list;
 int mc_count;
 unsigned int promiscuity;
 unsigned int allmulti;







 void *atalk_ptr;
 void *ip_ptr;
 void *dn_ptr;
 void *ip6_ptr;
 void *ec_ptr;
 void *ax25_ptr;
 struct wireless_dev *ieee80211_ptr;





 unsigned long last_rx;

 unsigned char dev_addr[32];


 unsigned char broadcast[32];

 struct netdev_queue rx_queue;

 struct netdev_queue *_tx ;


 unsigned int num_tx_queues;


 unsigned int real_num_tx_queues;

 unsigned long tx_queue_len;
 spinlock_t tx_global_lock;




 unsigned long trans_start;

 int watchdog_timeo;
 struct timer_list watchdog_timer;


 atomic_t refcnt ;


 struct list_head todo_list;

 struct hlist_node index_hlist;

 struct net_device *link_watch_next;


 enum { NETREG_UNINITIALIZED=0,
        NETREG_REGISTERED,
        NETREG_UNREGISTERING,
        NETREG_UNREGISTERED,
        NETREG_RELEASED,
        NETREG_DUMMY,
 } reg_state;


 void (*destructor)(struct net_device *dev);
# 842 "include/linux/netdevice.h"
 void *ml_priv;


 struct net_bridge_port *br_port;

 struct macvlan_port *macvlan_port;

 struct garp_port *garp_port;


 struct device dev;

 struct attribute_group *sysfs_groups[3];


 const struct rtnl_link_ops *rtnl_link_ops;


 unsigned long vlan_features;



 unsigned int gso_max_size;
# 919 "include/linux/netdevice.h"
};





static inline __attribute__((always_inline))
struct netdev_queue *netdev_get_tx_queue(const struct net_device *dev,
      unsigned int index)
{
 return &dev->_tx[index];
}

static inline __attribute__((always_inline)) void netdev_for_each_tx_queue(struct net_device *dev,
         void (*f)(struct net_device *,
            struct netdev_queue *,
            void *),
         void *arg)
{
 unsigned int i;

 for (i = 0; i < dev->num_tx_queues; i++)
  f(dev, &dev->_tx[i], arg);
}




static inline __attribute__((always_inline))
struct net *dev_net(const struct net_device *dev)
{



 return &init_net;

}

static inline __attribute__((always_inline))
void dev_net_set(struct net_device *dev, struct net *net)
{




}

static inline __attribute__((always_inline)) bool netdev_uses_dsa_tags(struct net_device *dev)
{





 return 0;
}

static inline __attribute__((always_inline)) bool netdev_uses_trailer_tags(struct net_device *dev)
{





 return 0;
}







static inline __attribute__((always_inline)) void *netdev_priv(const struct net_device *dev)
{
 return (char *)dev + ((sizeof(struct net_device)
          + (32 - 1))
         & ~(32 - 1));
}
# 1014 "include/linux/netdevice.h"
void netif_napi_add(struct net_device *dev, struct napi_struct *napi,
      int (*poll)(struct napi_struct *, int), int weight);







void netif_napi_del(struct napi_struct *napi);

struct napi_gro_cb {

 int data_offset;


 int same_flow;


 int flush;


 int count;


 int free;
};



struct packet_type {
 __be16 type;
 struct net_device *dev;
 int (*func) (struct sk_buff *,
      struct net_device *,
      struct packet_type *,
      struct net_device *);
 struct sk_buff *(*gso_segment)(struct sk_buff *skb,
      int features);
 int (*gso_send_check)(struct sk_buff *skb);
 struct sk_buff **(*gro_receive)(struct sk_buff **head,
            struct sk_buff *skb);
 int (*gro_complete)(struct sk_buff *skb);
 void *af_packet_priv;
 struct list_head list;
};

struct napi_gro_fraginfo {
 skb_frag_t frags[(65536/(1UL << 12) + 2)];
 unsigned int nr_frags;
 unsigned int ip_summed;
 unsigned int len;
 __wsum csum;
};

# 1 "include/linux/interrupt.h" 1
# 10 "include/linux/interrupt.h"
# 1 "include/linux/irqreturn.h" 1
# 10 "include/linux/irqreturn.h"
enum irqreturn {
 IRQ_NONE,
 IRQ_HANDLED,
 IRQ_WAKE_THREAD,
};

typedef enum irqreturn irqreturn_t;
# 11 "include/linux/interrupt.h" 2

# 1 "include/linux/hardirq.h" 1
# 9 "include/linux/hardirq.h"
# 1 "include/linux/ftrace_irq.h" 1
# 9 "include/linux/ftrace_irq.h"
static inline __attribute__((always_inline)) void ftrace_nmi_enter(void) { }
static inline __attribute__((always_inline)) void ftrace_nmi_exit(void) { }
# 10 "include/linux/hardirq.h" 2
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/hardirq.h" 1
# 14 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/hardirq.h"
# 1 "include/linux/irq.h" 1
# 27 "include/linux/irq.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/irq.h" 1
# 14 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/irq.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/mach-generic/irq.h" 1
# 15 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/irq.h" 2
# 35 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/irq.h"
enum {
 SPURIOS_INT_CPU = 0,
 SPURIOS_INT_LOPI,
 SPURIOS_INT_CASCADE,
 SPURIOS_INT_MAX
};

extern void arch_init_irq(void);

extern void spurious_interrupt(int i);




extern int allocate_irqno(void);
extern void alloc_legacy_irqno(void);
extern void free_irqno(unsigned int irq);







extern int cp0_compare_irq;
extern int cp0_perfcount_irq;
# 28 "include/linux/irq.h" 2
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/ptrace.h" 1
# 24 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/ptrace.h"
struct pt_regs {

 unsigned long pad0[6];


 unsigned long regs[32];


 unsigned long hi;
 unsigned long lo;
 unsigned long cp0_epc;
 unsigned long cp0_badvaddr;
 unsigned long cp0_status;
 unsigned long cp0_cause;
# 47 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/ptrace.h"
} __attribute__ ((aligned (8)));
# 70 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/ptrace.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/isadep.h" 1
# 71 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/ptrace.h" 2

struct task_struct;

extern int ptrace_getregs(struct task_struct *child, __s64 *data);
extern int ptrace_setregs(struct task_struct *child, __s64 *data);
# 85 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/ptrace.h"
extern void do_syscall_trace(struct pt_regs *regs, int entryexit);

extern void die(const char *, const struct pt_regs *) __attribute__((noreturn));

static inline __attribute__((always_inline)) void die_if_kernel(const char *str, const struct pt_regs *regs)
{
 if (__builtin_expect(!!(!(((regs)->cp0_status & 0x08) == 0x08)), 0))
  die(str, regs);
}
# 29 "include/linux/irq.h" 2
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/irq_regs.h" 1
# 16 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/irq_regs.h"
static inline __attribute__((always_inline)) struct pt_regs *get_irq_regs(void)
{
 return __current_thread_info->regs;
}
# 30 "include/linux/irq.h" 2

struct irq_desc;
typedef void (*irq_flow_handler_t)(unsigned int irq,
         struct irq_desc *desc);
# 81 "include/linux/irq.h"
struct proc_dir_entry;
struct msi_desc;
# 106 "include/linux/irq.h"
struct irq_chip {
 const char *name;
 unsigned int (*startup)(unsigned int irq);
 void (*shutdown)(unsigned int irq);
 void (*enable)(unsigned int irq);
 void (*disable)(unsigned int irq);

 void (*ack)(unsigned int irq);
 void (*mask)(unsigned int irq);
 void (*mask_ack)(unsigned int irq);
 void (*unmask)(unsigned int irq);
 void (*eoi)(unsigned int irq);

 void (*end)(unsigned int irq);
 void (*set_affinity)(unsigned int irq,
     const struct cpumask *dest);
 int (*retrigger)(unsigned int irq);
 int (*set_type)(unsigned int irq, unsigned int flow_type);
 int (*set_wake)(unsigned int irq, unsigned int on);
# 134 "include/linux/irq.h"
 const char *typename;
};

struct timer_rand_state;
struct irq_2_iommu;
# 167 "include/linux/irq.h"
struct irq_desc {
 unsigned int irq;
 struct timer_rand_state *timer_rand_state;
 unsigned int *kstat_irqs;



 irq_flow_handler_t handle_irq;
 struct irq_chip *chip;
 struct msi_desc *msi_desc;
 void *handler_data;
 void *chip_data;
 struct irqaction *action;
 unsigned int status;

 unsigned int depth;
 unsigned int wake_depth;
 unsigned int irq_count;
 unsigned long last_unhandled;
 unsigned int irqs_unhandled;
 spinlock_t lock;







 atomic_t threads_active;
 wait_queue_head_t wait_for_threads;

 struct proc_dir_entry *dir;

 const char *name;
} ;

extern void arch_init_copy_chip_data(struct irq_desc *old_desc,
     struct irq_desc *desc, int cpu);
extern void arch_free_chip_data(struct irq_desc *old_desc, struct irq_desc *desc);
# 215 "include/linux/irq.h"
extern struct irq_desc *irq_to_desc_alloc_cpu(unsigned int irq, int cpu);

static inline __attribute__((always_inline)) struct irq_desc *
irq_remap_to_desc(unsigned int irq, struct irq_desc *desc)
{



 return desc;

}






typedef struct irq_desc irq_desc_t;




# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/hw_irq.h" 1
# 238 "include/linux/irq.h" 2

extern int setup_irq(unsigned int irq, struct irqaction *new);
extern void remove_irq(unsigned int irq, struct irqaction *act);
# 274 "include/linux/irq.h"
extern int no_irq_affinity;

static inline __attribute__((always_inline)) int irq_balancing_disabled(unsigned int irq)
{
 struct irq_desc *desc;

 desc = irq_to_desc(irq);
 return desc->status & 0x00400000;
}


extern irqreturn_t handle_IRQ_event(unsigned int irq, struct irqaction *action);





extern void handle_level_irq(unsigned int irq, struct irq_desc *desc);
extern void handle_fasteoi_irq(unsigned int irq, struct irq_desc *desc);
extern void handle_edge_irq(unsigned int irq, struct irq_desc *desc);
extern void handle_simple_irq(unsigned int irq, struct irq_desc *desc);
extern void handle_percpu_irq(unsigned int irq, struct irq_desc *desc);
extern void handle_bad_irq(unsigned int irq, struct irq_desc *desc);
# 311 "include/linux/irq.h"
static inline __attribute__((always_inline)) void generic_handle_irq_desc(unsigned int irq, struct irq_desc *desc)
{

 desc->handle_irq(irq, desc);






}

static inline __attribute__((always_inline)) void generic_handle_irq(unsigned int irq)
{
 generic_handle_irq_desc(irq, irq_to_desc(irq));
}


extern void note_interrupt(unsigned int irq, struct irq_desc *desc,
      irqreturn_t action_ret);


void check_irq_resend(struct irq_desc *desc, unsigned int irq);


extern int noirqdebug_setup(char *str);


extern int can_request_irq(unsigned int irq, unsigned long irqflags);


extern struct irq_chip no_irq_chip;
extern struct irq_chip dummy_irq_chip;

extern void
set_irq_chip_and_handler(unsigned int irq, struct irq_chip *chip,
    irq_flow_handler_t handle);
extern void
set_irq_chip_and_handler_name(unsigned int irq, struct irq_chip *chip,
         irq_flow_handler_t handle, const char *name);

extern void
__set_irq_handler(unsigned int irq, irq_flow_handler_t handle, int is_chained,
    const char *name);


static inline __attribute__((always_inline)) void __set_irq_handler_unlocked(int irq,
           irq_flow_handler_t handler)
{
 struct irq_desc *desc;

 desc = irq_to_desc(irq);
 desc->handle_irq = handler;
}




static inline __attribute__((always_inline)) void
set_irq_handler(unsigned int irq, irq_flow_handler_t handle)
{
 __set_irq_handler(irq, handle, 0, ((void *)0));
}






static inline __attribute__((always_inline)) void
set_irq_chained_handler(unsigned int irq,
   irq_flow_handler_t handle)
{
 __set_irq_handler(irq, handle, 1, ((void *)0));
}

extern void set_irq_noprobe(unsigned int irq);
extern void set_irq_probe(unsigned int irq);


extern unsigned int create_irq_nr(unsigned int irq_want);
extern int create_irq(void);
extern void destroy_irq(unsigned int irq);


static inline __attribute__((always_inline)) int irq_has_action(unsigned int irq)
{
 struct irq_desc *desc = irq_to_desc(irq);
 return desc->action != ((void *)0);
}


extern void dynamic_irq_init(unsigned int irq);
extern void dynamic_irq_cleanup(unsigned int irq);


extern int set_irq_chip(unsigned int irq, struct irq_chip *chip);
extern int set_irq_data(unsigned int irq, void *data);
extern int set_irq_chip_data(unsigned int irq, void *data);
extern int set_irq_type(unsigned int irq, unsigned int type);
extern int set_irq_msi(unsigned int irq, struct msi_desc *entry);
# 504 "include/linux/irq.h"
static inline __attribute__((always_inline)) bool init_alloc_desc_masks(struct irq_desc *desc, int cpu,
        bool boot)
{
 return true;
}

static inline __attribute__((always_inline)) void init_copy_desc_masks(struct irq_desc *old_desc,
     struct irq_desc *new_desc)
{
}

static inline __attribute__((always_inline)) void free_desc_masks(struct irq_desc *old_desc,
       struct irq_desc *new_desc)
{
}
# 15 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/hardirq.h" 2

typedef struct {
 unsigned int __softirq_pending;
} __attribute__((__aligned__((1 << 5)))) irq_cpustat_t;

# 1 "include/linux/irq_cpustat.h" 1
# 20 "include/linux/irq_cpustat.h"
extern irq_cpustat_t irq_stat[];
# 21 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/hardirq.h" 2

extern void ack_bad_irq(unsigned int irq);
# 11 "include/linux/hardirq.h" 2
# 122 "include/linux/hardirq.h"
extern void synchronize_irq(unsigned int irq);




struct task_struct;


static inline __attribute__((always_inline)) void account_system_vtime(struct task_struct *tsk)
{
}
# 163 "include/linux/hardirq.h"
extern void irq_enter(void);
# 178 "include/linux/hardirq.h"
extern void irq_exit(void);
# 13 "include/linux/interrupt.h" 2
# 1 "include/linux/sched.h" 1
# 44 "include/linux/sched.h"
struct sched_param {
 int sched_priority;
};
# 66 "include/linux/sched.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cputime.h" 1



# 1 "include/asm-generic/cputime.h" 1






typedef unsigned long cputime_t;
# 24 "include/asm-generic/cputime.h"
typedef u64 cputime64_t;
# 5 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/cputime.h" 2
# 67 "include/linux/sched.h" 2


# 1 "include/linux/sem.h" 1



# 1 "include/linux/ipc.h" 1
# 9 "include/linux/ipc.h"
struct ipc_perm
{
 __kernel_key_t key;
 __kernel_uid_t uid;
 __kernel_gid_t gid;
 __kernel_uid_t cuid;
 __kernel_gid_t cgid;
 __kernel_mode_t mode;
 unsigned short seq;
};


# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/ipcbuf.h" 1
# 14 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/ipcbuf.h"
struct ipc64_perm
{
 __kernel_key_t key;
 __kernel_uid_t uid;
 __kernel_gid_t gid;
 __kernel_uid_t cuid;
 __kernel_gid_t cgid;
 __kernel_mode_t mode;
 unsigned short seq;
 unsigned short __pad1;
 unsigned long __unused1;
 unsigned long __unused2;
};
# 22 "include/linux/ipc.h" 2
# 57 "include/linux/ipc.h"
struct ipc_kludge {
 struct msgbuf *msgp;
 long msgtyp;
};
# 88 "include/linux/ipc.h"
struct kern_ipc_perm
{
 spinlock_t lock;
 int deleted;
 int id;
 key_t key;
 uid_t uid;
 gid_t gid;
 uid_t cuid;
 gid_t cgid;
 mode_t mode;
 unsigned long seq;
 void *security;
};
# 5 "include/linux/sem.h" 2
# 23 "include/linux/sem.h"
struct semid_ds {
 struct ipc_perm sem_perm;
 __kernel_time_t sem_otime;
 __kernel_time_t sem_ctime;
 struct sem *sem_base;
 struct sem_queue *sem_pending;
 struct sem_queue **sem_pending_last;
 struct sem_undo *undo;
 unsigned short sem_nsems;
};


# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/sembuf.h" 1
# 13 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/sembuf.h"
struct semid64_ds {
 struct ipc64_perm sem_perm;
 __kernel_time_t sem_otime;
 __kernel_time_t sem_ctime;
 unsigned long sem_nsems;
 unsigned long __unused1;
 unsigned long __unused2;
};
# 36 "include/linux/sem.h" 2


struct sembuf {
 unsigned short sem_num;
 short sem_op;
 short sem_flg;
};


union semun {
 int val;
 struct semid_ds *buf;
 unsigned short *array;
 struct seminfo *__buf;
 void *__pad;
};

struct seminfo {
 int semmap;
 int semmni;
 int semmns;
 int semmnu;
 int semmsl;
 int semopm;
 int semume;
 int semusz;
 int semvmx;
 int semaem;
};
# 83 "include/linux/sem.h"
struct task_struct;


struct sem {
 int semval;
 int sempid;
};


struct sem_array {
 struct kern_ipc_perm sem_perm;
 time_t sem_otime;
 time_t sem_ctime;
 struct sem *sem_base;
 struct list_head sem_pending;
 struct list_head list_id;
 unsigned long sem_nsems;
};


struct sem_queue {
 struct list_head list;
 struct task_struct *sleeper;
 struct sem_undo *undo;
 int pid;
 int status;
 struct sembuf *sops;
 int nsops;
 int alter;
};




struct sem_undo {
 struct list_head list_proc;

 struct rcu_head rcu;
 struct sem_undo_list *ulp;
 struct list_head list_id;
 int semid;
 short * semadj;
};




struct sem_undo_list {
 atomic_t refcnt;
 spinlock_t lock;
 struct list_head list_proc;
};

struct sysv_sem {
 struct sem_undo_list *undo_list;
};







static inline __attribute__((always_inline)) int copy_semundo(unsigned long clone_flags, struct task_struct *tsk)
{
 return 0;
}

static inline __attribute__((always_inline)) void exit_sem(struct task_struct *tsk)
{
 return;
}
# 70 "include/linux/sched.h" 2
# 1 "include/linux/signal.h" 1



# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/signal.h" 1
# 18 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/signal.h"
typedef struct {
 unsigned long sig[(128 / (sizeof(unsigned long) * 8))];
} sigset_t;

typedef unsigned long old_sigset_t;
# 112 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/signal.h"
# 1 "include/asm-generic/signal-defs.h" 1
# 17 "include/asm-generic/signal-defs.h"
typedef void __signalfn_t(int);
typedef __signalfn_t *__sighandler_t;

typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
# 113 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/signal.h" 2

struct sigaction {
 unsigned int sa_flags;
 __sighandler_t sa_handler;
 sigset_t sa_mask;
};

struct k_sigaction {
 struct sigaction sa;
};


typedef struct sigaltstack {
 void *ss_sp;
 size_t ss_size;
 int ss_flags;
} stack_t;


# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/sigcontext.h" 1
# 19 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/sigcontext.h"
struct sigcontext {
 unsigned int sc_regmask;
 unsigned int sc_status;
 unsigned long long sc_pc;
 unsigned long long sc_regs[32];
 unsigned long long sc_mdhi;
 unsigned long long sc_mdlo;
};
# 133 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/signal.h" 2
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/siginfo.h" 1
# 23 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/siginfo.h"
struct siginfo;






# 1 "include/asm-generic/siginfo.h" 1






typedef union sigval {
 int sival_int;
 void *sival_ptr;
} sigval_t;
# 253 "include/asm-generic/siginfo.h"
typedef struct sigevent {
 sigval_t sigev_value;
 int sigev_signo;
 int sigev_notify;
 union {
  int _pad[((64 - (sizeof(long) + 2*sizeof(int))) / sizeof(int))];
   int _tid;

  struct {
   void (*_function)(sigval_t);
   void *_attribute;
  } _sigev_thread;
 } _sigev_un;
} sigevent_t;







struct siginfo;
void do_schedule_next_timer(struct siginfo *info);
# 292 "include/asm-generic/siginfo.h"
extern int copy_siginfo_to_user(struct siginfo *to, struct siginfo *from);
# 31 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/siginfo.h" 2

typedef struct siginfo {
 int si_signo;
 int si_code;
 int si_errno;
 int __pad0[128 / sizeof(int) - ((128 - (3 * sizeof(int))) / sizeof(int)) - 3];

 union {
  int _pad[((128 - (3 * sizeof(int))) / sizeof(int))];


  struct {
   pid_t _pid;
   __kernel_uid32_t _uid;
  } _kill;


  struct {
   timer_t _tid;
   int _overrun;
   char _pad[sizeof( __kernel_uid32_t) - sizeof(int)];
   sigval_t _sigval;
   int _sys_private;
  } _timer;


  struct {
   pid_t _pid;
   __kernel_uid32_t _uid;
   sigval_t _sigval;
  } _rt;


  struct {
   pid_t _pid;
   __kernel_uid32_t _uid;
   int _status;
   clock_t _utime;
   clock_t _stime;
  } _sigchld;
# 83 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/siginfo.h"
  struct {
   void *_addr;



  } _sigfault;


  struct {
   long _band;
   int _fd;
  } _sigpoll;
 } _sifields;
} siginfo_t;
# 116 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/siginfo.h"
static inline __attribute__((always_inline)) void copy_siginfo(struct siginfo *to, struct siginfo *from)
{
 if (from->si_code < 0)
  memcpy(to, from, sizeof(*to));
 else

  memcpy(to, from, 3*sizeof(int) + sizeof(from->_sifields._sigchld));
}
# 134 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/signal.h" 2
# 5 "include/linux/signal.h" 2
# 14 "include/linux/signal.h"
struct sigqueue {
 struct list_head list;
 int flags;
 siginfo_t info;
 struct user_struct *user;
};




struct sigpending {
 struct list_head list;
 sigset_t signal;
};
# 38 "include/linux/signal.h"
static inline __attribute__((always_inline)) void sigaddset(sigset_t *set, int _sig)
{
 unsigned long sig = _sig - 1;
 if ((128 / (sizeof(unsigned long) * 8)) == 1)
  set->sig[0] |= 1UL << sig;
 else
  set->sig[sig / (sizeof(unsigned long) * 8)] |= 1UL << (sig % (sizeof(unsigned long) * 8));
}

static inline __attribute__((always_inline)) void sigdelset(sigset_t *set, int _sig)
{
 unsigned long sig = _sig - 1;
 if ((128 / (sizeof(unsigned long) * 8)) == 1)
  set->sig[0] &= ~(1UL << sig);
 else
  set->sig[sig / (sizeof(unsigned long) * 8)] &= ~(1UL << (sig % (sizeof(unsigned long) * 8)));
}

static inline __attribute__((always_inline)) int sigismember(sigset_t *set, int _sig)
{
 unsigned long sig = _sig - 1;
 if ((128 / (sizeof(unsigned long) * 8)) == 1)
  return 1 & (set->sig[0] >> sig);
 else
  return 1 & (set->sig[sig / (sizeof(unsigned long) * 8)] >> (sig % (sizeof(unsigned long) * 8)));
}

static inline __attribute__((always_inline)) int sigfindinword(unsigned long word)
{
 return __ffs(~(~word));
}



static inline __attribute__((always_inline)) int sigisemptyset(sigset_t *set)
{
 extern void _NSIG_WORDS_is_unsupported_size(void);
 switch ((128 / (sizeof(unsigned long) * 8))) {
 case 4:
  return (set->sig[3] | set->sig[2] |
   set->sig[1] | set->sig[0]) == 0;
 case 2:
  return (set->sig[1] | set->sig[0]) == 0;
 case 1:
  return set->sig[0] == 0;
 default:
  _NSIG_WORDS_is_unsupported_size();
  return 0;
 }
}
# 119 "include/linux/signal.h"
static inline __attribute__((always_inline)) void sigorsets(sigset_t *r, const sigset_t *a, const sigset_t *b) { extern void _NSIG_WORDS_is_unsupported_size(void); unsigned long a0, a1, a2, a3, b0, b1, b2, b3; switch ((128 / (sizeof(unsigned long) * 8))) { case 4: a3 = a->sig[3]; a2 = a->sig[2]; b3 = b->sig[3]; b2 = b->sig[2]; r->sig[3] = ((a3) | (b3)); r->sig[2] = ((a2) | (b2)); case 2: a1 = a->sig[1]; b1 = b->sig[1]; r->sig[1] = ((a1) | (b1)); case 1: a0 = a->sig[0]; b0 = b->sig[0]; r->sig[0] = ((a0) | (b0)); break; default: _NSIG_WORDS_is_unsupported_size(); } }


static inline __attribute__((always_inline)) void sigandsets(sigset_t *r, const sigset_t *a, const sigset_t *b) { extern void _NSIG_WORDS_is_unsupported_size(void); unsigned long a0, a1, a2, a3, b0, b1, b2, b3; switch ((128 / (sizeof(unsigned long) * 8))) { case 4: a3 = a->sig[3]; a2 = a->sig[2]; b3 = b->sig[3]; b2 = b->sig[2]; r->sig[3] = ((a3) & (b3)); r->sig[2] = ((a2) & (b2)); case 2: a1 = a->sig[1]; b1 = b->sig[1]; r->sig[1] = ((a1) & (b1)); case 1: a0 = a->sig[0]; b0 = b->sig[0]; r->sig[0] = ((a0) & (b0)); break; default: _NSIG_WORDS_is_unsupported_size(); } }


static inline __attribute__((always_inline)) void signandsets(sigset_t *r, const sigset_t *a, const sigset_t *b) { extern void _NSIG_WORDS_is_unsupported_size(void); unsigned long a0, a1, a2, a3, b0, b1, b2, b3; switch ((128 / (sizeof(unsigned long) * 8))) { case 4: a3 = a->sig[3]; a2 = a->sig[2]; b3 = b->sig[3]; b2 = b->sig[2]; r->sig[3] = ((a3) & ~(b3)); r->sig[2] = ((a2) & ~(b2)); case 2: a1 = a->sig[1]; b1 = b->sig[1]; r->sig[1] = ((a1) & ~(b1)); case 1: a0 = a->sig[0]; b0 = b->sig[0]; r->sig[0] = ((a0) & ~(b0)); break; default: _NSIG_WORDS_is_unsupported_size(); } }
# 149 "include/linux/signal.h"
static inline __attribute__((always_inline)) void signotset(sigset_t *set) { extern void _NSIG_WORDS_is_unsupported_size(void); switch ((128 / (sizeof(unsigned long) * 8))) { case 4: set->sig[3] = (~(set->sig[3])); set->sig[2] = (~(set->sig[2])); case 2: set->sig[1] = (~(set->sig[1])); case 1: set->sig[0] = (~(set->sig[0])); break; default: _NSIG_WORDS_is_unsupported_size(); } }




static inline __attribute__((always_inline)) void sigemptyset(sigset_t *set)
{
 switch ((128 / (sizeof(unsigned long) * 8))) {
 default:
  memset(set, 0, sizeof(sigset_t));
  break;
 case 2: set->sig[1] = 0;
 case 1: set->sig[0] = 0;
  break;
 }
}

static inline __attribute__((always_inline)) void sigfillset(sigset_t *set)
{
 switch ((128 / (sizeof(unsigned long) * 8))) {
 default:
  memset(set, -1, sizeof(sigset_t));
  break;
 case 2: set->sig[1] = -1;
 case 1: set->sig[0] = -1;
  break;
 }
}



static inline __attribute__((always_inline)) void sigaddsetmask(sigset_t *set, unsigned long mask)
{
 set->sig[0] |= mask;
}

static inline __attribute__((always_inline)) void sigdelsetmask(sigset_t *set, unsigned long mask)
{
 set->sig[0] &= ~mask;
}

static inline __attribute__((always_inline)) int sigtestsetmask(sigset_t *set, unsigned long mask)
{
 return (set->sig[0] & mask) != 0;
}

static inline __attribute__((always_inline)) void siginitset(sigset_t *set, unsigned long mask)
{
 set->sig[0] = mask;
 switch ((128 / (sizeof(unsigned long) * 8))) {
 default:
  memset(&set->sig[1], 0, sizeof(long)*((128 / (sizeof(unsigned long) * 8))-1));
  break;
 case 2: set->sig[1] = 0;
 case 1: ;
 }
}

static inline __attribute__((always_inline)) void siginitsetinv(sigset_t *set, unsigned long mask)
{
 set->sig[0] = ~mask;
 switch ((128 / (sizeof(unsigned long) * 8))) {
 default:
  memset(&set->sig[1], -1, sizeof(long)*((128 / (sizeof(unsigned long) * 8))-1));
  break;
 case 2: set->sig[1] = -1;
 case 1: ;
 }
}



static inline __attribute__((always_inline)) void init_sigpending(struct sigpending *sig)
{
 sigemptyset(&sig->signal);
 INIT_LIST_HEAD(&sig->list);
}

extern void flush_sigqueue(struct sigpending *queue);


static inline __attribute__((always_inline)) int valid_signal(unsigned long sig)
{
 return sig <= 128 ? 1 : 0;
}

extern int next_signal(struct sigpending *pending, sigset_t *mask);
extern int group_send_sig_info(int sig, struct siginfo *info, struct task_struct *p);
extern int __group_send_sig_info(int, struct siginfo *, struct task_struct *);
extern long do_sigpending(void *, unsigned long);
extern int sigprocmask(int, sigset_t *, sigset_t *);
extern int show_unhandled_signals;

struct pt_regs;
extern int get_signal_to_deliver(siginfo_t *info, struct k_sigaction *return_ka, struct pt_regs *regs, void *cookie);
extern void exit_signals(struct task_struct *tsk);

extern struct kmem_cache *sighand_cachep;

int unhandled_signal(struct task_struct *tsk, int sig);
# 373 "include/linux/signal.h"
void signals_init(void);
# 71 "include/linux/sched.h" 2






# 1 "include/linux/proportions.h" 1
# 12 "include/linux/proportions.h"
# 1 "include/linux/percpu_counter.h" 1
# 82 "include/linux/percpu_counter.h"
struct percpu_counter {
 s64 count;
};

static inline __attribute__((always_inline)) int percpu_counter_init(struct percpu_counter *fbc, s64 amount)
{
 fbc->count = amount;
 return 0;
}

static inline __attribute__((always_inline)) void percpu_counter_destroy(struct percpu_counter *fbc)
{
}

static inline __attribute__((always_inline)) void percpu_counter_set(struct percpu_counter *fbc, s64 amount)
{
 fbc->count = amount;
}




static inline __attribute__((always_inline)) void
percpu_counter_add(struct percpu_counter *fbc, s64 amount)
{
 do { } while (0);
 fbc->count += amount;
 do { } while (0);
}

static inline __attribute__((always_inline)) s64 percpu_counter_read(struct percpu_counter *fbc)
{
 return fbc->count;
}

static inline __attribute__((always_inline)) s64 percpu_counter_read_positive(struct percpu_counter *fbc)
{
 return fbc->count;
}

static inline __attribute__((always_inline)) s64 percpu_counter_sum_positive(struct percpu_counter *fbc)
{
 return percpu_counter_read_positive(fbc);
}

static inline __attribute__((always_inline)) s64 percpu_counter_sum(struct percpu_counter *fbc)
{
 return percpu_counter_read(fbc);
}



static inline __attribute__((always_inline)) void percpu_counter_inc(struct percpu_counter *fbc)
{
 percpu_counter_add(fbc, 1);
}

static inline __attribute__((always_inline)) void percpu_counter_dec(struct percpu_counter *fbc)
{
 percpu_counter_add(fbc, -1);
}

static inline __attribute__((always_inline)) void percpu_counter_sub(struct percpu_counter *fbc, s64 amount)
{
 percpu_counter_add(fbc, -amount);
}
# 13 "include/linux/proportions.h" 2



struct prop_global {





 int shift;






 struct percpu_counter events;
};






struct prop_descriptor {
 int index;
 struct prop_global pg[2];
 struct mutex mutex;
};

int prop_descriptor_init(struct prop_descriptor *pd, int shift);
void prop_change_shift(struct prop_descriptor *pd, int new_shift);





struct prop_local_percpu {



 struct percpu_counter events;




 int shift;
 unsigned long period;
 spinlock_t lock;
};

int prop_local_init_percpu(struct prop_local_percpu *pl);
void prop_local_destroy_percpu(struct prop_local_percpu *pl);
void __prop_inc_percpu(struct prop_descriptor *pd, struct prop_local_percpu *pl);
void prop_fraction_percpu(struct prop_descriptor *pd, struct prop_local_percpu *pl,
  long *numerator, long *denominator);

static inline __attribute__((always_inline))
void prop_inc_percpu(struct prop_descriptor *pd, struct prop_local_percpu *pl)
{
 unsigned long flags;

 do { ({ unsigned long __dummy; typeof(flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory"); } while (0);
 __prop_inc_percpu(pd, pl);
 do { ({ unsigned long __dummy; typeof(flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); if (raw_irqs_disabled_flags(flags)) { raw_local_irq_restore(flags); } else { raw_local_irq_restore(flags); } } while (0);
}
# 89 "include/linux/proportions.h"
void __prop_inc_percpu_max(struct prop_descriptor *pd,
      struct prop_local_percpu *pl, long frac);






struct prop_local_single {



 unsigned long events;





 unsigned long period;
 int shift;
 spinlock_t lock;
};





int prop_local_init_single(struct prop_local_single *pl);
void prop_local_destroy_single(struct prop_local_single *pl);
void __prop_inc_single(struct prop_descriptor *pd, struct prop_local_single *pl);
void prop_fraction_single(struct prop_descriptor *pd, struct prop_local_single *pl,
  long *numerator, long *denominator);

static inline __attribute__((always_inline))
void prop_inc_single(struct prop_descriptor *pd, struct prop_local_single *pl)
{
 unsigned long flags;

 do { ({ unsigned long __dummy; typeof(flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory"); } while (0);
 __prop_inc_single(pd, pl);
 do { ({ unsigned long __dummy; typeof(flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); if (raw_irqs_disabled_flags(flags)) { raw_local_irq_restore(flags); } else { raw_local_irq_restore(flags); } } while (0);
}
# 78 "include/linux/sched.h" 2
# 1 "include/linux/seccomp.h" 1
# 26 "include/linux/seccomp.h"
typedef struct { } seccomp_t;



static inline __attribute__((always_inline)) long prctl_get_seccomp(void)
{
 return -22;
}

static inline __attribute__((always_inline)) long prctl_set_seccomp(unsigned long arg2)
{
 return -22;
}
# 79 "include/linux/sched.h" 2

# 1 "include/linux/rtmutex.h" 1
# 16 "include/linux/rtmutex.h"
# 1 "include/linux/plist.h" 1
# 80 "include/linux/plist.h"
struct plist_head {
 struct list_head prio_list;
 struct list_head node_list;



};

struct plist_node {
 int prio;
 struct plist_head plist;
};
# 130 "include/linux/plist.h"
static inline __attribute__((always_inline)) void
plist_head_init(struct plist_head *head, spinlock_t *lock)
{
 INIT_LIST_HEAD(&head->prio_list);
 INIT_LIST_HEAD(&head->node_list);



}






static inline __attribute__((always_inline)) void plist_node_init(struct plist_node *node, int prio)
{
 node->prio = prio;
 plist_head_init(&node->plist, ((void *)0));
}

extern void plist_add(struct plist_node *node, struct plist_head *head);
extern void plist_del(struct plist_node *node, struct plist_head *head);
# 198 "include/linux/plist.h"
static inline __attribute__((always_inline)) int plist_head_empty(const struct plist_head *head)
{
 return list_empty(&head->node_list);
}





static inline __attribute__((always_inline)) int plist_node_empty(const struct plist_node *node)
{
 return plist_head_empty(&node->plist);
}
# 237 "include/linux/plist.h"
static inline __attribute__((always_inline)) struct plist_node* plist_first(const struct plist_head *head)
{
 return ({ const typeof( ((struct plist_node *)0)->plist.node_list ) *__mptr = (head->node_list.next); (struct plist_node *)( (char *)__mptr - ((size_t) &((struct plist_node *)0)->plist.node_list) );});

}
# 17 "include/linux/rtmutex.h" 2
# 26 "include/linux/rtmutex.h"
struct rt_mutex {
 spinlock_t wait_lock;
 struct plist_head wait_list;
 struct task_struct *owner;






};

struct rt_mutex_waiter;
struct hrtimer_sleeper;






 static inline __attribute__((always_inline)) int rt_mutex_debug_check_no_locks_freed(const void *from,
             unsigned long len)
 {
 return 0;
 }
# 80 "include/linux/rtmutex.h"
static inline __attribute__((always_inline)) int rt_mutex_is_locked(struct rt_mutex *lock)
{
 return lock->owner != ((void *)0);
}

extern void __rt_mutex_init(struct rt_mutex *lock, const char *name);
extern void rt_mutex_destroy(struct rt_mutex *lock);

extern void rt_mutex_lock(struct rt_mutex *lock);
extern int rt_mutex_lock_interruptible(struct rt_mutex *lock,
      int detect_deadlock);
extern int rt_mutex_timed_lock(struct rt_mutex *lock,
     struct hrtimer_sleeper *timeout,
     int detect_deadlock);

extern int rt_mutex_trylock(struct rt_mutex *lock);

extern void rt_mutex_unlock(struct rt_mutex *lock);
# 81 "include/linux/sched.h" 2



# 1 "include/linux/resource.h" 1





struct task_struct;
# 24 "include/linux/resource.h"
struct rusage {
 struct timeval ru_utime;
 struct timeval ru_stime;
 long ru_maxrss;
 long ru_ixrss;
 long ru_idrss;
 long ru_isrss;
 long ru_minflt;
 long ru_majflt;
 long ru_nswap;
 long ru_inblock;
 long ru_oublock;
 long ru_msgsnd;
 long ru_msgrcv;
 long ru_nsignals;
 long ru_nvcsw;
 long ru_nivcsw;
};

struct rlimit {
 unsigned long rlim_cur;
 unsigned long rlim_max;
};
# 71 "include/linux/resource.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/resource.h" 1
# 31 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/resource.h"
# 1 "include/asm-generic/resource.h" 1
# 32 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/resource.h" 2
# 72 "include/linux/resource.h" 2

int getrusage(struct task_struct *p, int who, struct rusage *ru);
# 85 "include/linux/sched.h" 2


# 1 "include/linux/task_io_accounting.h" 1
# 11 "include/linux/task_io_accounting.h"
struct task_io_accounting {
# 45 "include/linux/task_io_accounting.h"
};
# 88 "include/linux/sched.h" 2

# 1 "include/linux/latencytop.h" 1
# 41 "include/linux/latencytop.h"
static inline __attribute__((always_inline)) void
account_scheduler_latency(struct task_struct *task, int usecs, int inter)
{
}

static inline __attribute__((always_inline)) void clear_all_latency_tracing(struct task_struct *p)
{
}
# 90 "include/linux/sched.h" 2
# 1 "include/linux/cred.h" 1
# 17 "include/linux/cred.h"
# 1 "include/linux/key.h" 1
# 29 "include/linux/key.h"
typedef int32_t key_serial_t;


typedef uint32_t key_perm_t;

struct key;
# 18 "include/linux/cred.h" 2


struct user_struct;
struct cred;
struct inode;







struct group_info {
 atomic_t usage;
 int ngroups;
 int nblocks;
 gid_t small_block[32];
 gid_t *blocks[0];
};
# 47 "include/linux/cred.h"
static inline __attribute__((always_inline)) struct group_info *get_group_info(struct group_info *gi)
{
 atomic_add(1, (&gi->usage));
 return gi;
}
# 63 "include/linux/cred.h"
extern struct group_info *groups_alloc(int);
extern struct group_info init_groups;
extern void groups_free(struct group_info *);
extern int set_current_groups(struct group_info *);
extern int set_groups(struct cred *, struct group_info *);
extern int groups_search(const struct group_info *, gid_t);





extern int in_group_p(gid_t);
extern int in_egroup_p(gid_t);
# 115 "include/linux/cred.h"
struct cred {
 atomic_t usage;
 uid_t uid;
 gid_t gid;
 uid_t suid;
 gid_t sgid;
 uid_t euid;
 gid_t egid;
 uid_t fsuid;
 gid_t fsgid;
 unsigned securebits;
 kernel_cap_t cap_inheritable;
 kernel_cap_t cap_permitted;
 kernel_cap_t cap_effective;
 kernel_cap_t cap_bset;
# 140 "include/linux/cred.h"
 struct user_struct *user;
 struct group_info *group_info;
 struct rcu_head rcu;
};

extern void __put_cred(struct cred *);
extern int copy_creds(struct task_struct *, unsigned long);
extern struct cred *prepare_creds(void);
extern struct cred *prepare_exec_creds(void);
extern struct cred *prepare_usermodehelper_creds(void);
extern int commit_creds(struct cred *);
extern void abort_creds(struct cred *);
extern const struct cred *override_creds(const struct cred *);
extern void revert_creds(const struct cred *);
extern struct cred *prepare_kernel_cred(struct task_struct *);
extern int change_create_files_as(struct cred *, struct inode *);
extern int set_security_override(struct cred *, u32);
extern int set_security_override_from_ctx(struct cred *, const char *);
extern int set_create_files_as(struct cred *, struct inode *);
extern void __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) cred_init(void);
# 168 "include/linux/cred.h"
static inline __attribute__((always_inline)) struct cred *get_new_cred(struct cred *cred)
{
 atomic_add(1, (&cred->usage));
 return cred;
}
# 187 "include/linux/cred.h"
static inline __attribute__((always_inline)) const struct cred *get_cred(const struct cred *cred)
{
 return get_new_cred((struct cred *) cred);
}
# 203 "include/linux/cred.h"
static inline __attribute__((always_inline)) void put_cred(const struct cred *_cred)
{
 struct cred *cred = (struct cred *) _cred;

 do { if (((&(cred)->usage)->counter) <= 0) ; } while(0);
 if ((atomic_sub_return(1, (&(cred)->usage)) == 0))
  __put_cred(cred);
}
# 91 "include/linux/sched.h" 2



struct mem_cgroup;
struct exec_domain;
struct futex_pi_state;
struct robust_list_head;
struct bio;
struct bts_tracer;
struct fs_struct;
# 118 "include/linux/sched.h"
extern unsigned long avenrun[];
# 132 "include/linux/sched.h"
extern unsigned long total_forks;
extern int nr_threads;
extern __attribute__((__section__(".data" ""))) __typeof__(unsigned long) per_cpu__process_counts;
extern int nr_processes(void);
extern unsigned long nr_running(void);
extern unsigned long nr_uninterruptible(void);
extern unsigned long nr_active(void);
extern unsigned long nr_iowait(void);

extern unsigned long get_parent_ip(unsigned long addr);

struct seq_file;
struct cfs_rq;
struct task_group;






static inline __attribute__((always_inline)) void
proc_sched_show_task(struct task_struct *p, struct seq_file *m)
{
}
static inline __attribute__((always_inline)) void proc_sched_set_task(struct task_struct *p)
{
}
static inline __attribute__((always_inline)) void
print_cfs_rq(struct seq_file *m, int cpu, struct cfs_rq *cfs_rq)
{
}


extern unsigned long long time_sync_thresh;
# 243 "include/linux/sched.h"
extern rwlock_t tasklist_lock;
extern spinlock_t mmlist_lock;

struct task_struct;

extern void sched_init(void);
extern void sched_init_smp(void);
extern void schedule_tail(struct task_struct *prev);
extern void init_idle(struct task_struct *idle, int cpu);
extern void init_idle_bootup_task(struct task_struct *idle);

extern int runqueue_is_locked(void);
extern void task_rq_unlock_wait(struct task_struct *p);

extern cpumask_var_t nohz_cpu_mask;



static inline __attribute__((always_inline)) int select_nohz_load_balancer(int cpu)
{
 return 0;
}





extern void show_state_filter(unsigned long state_filter);

static inline __attribute__((always_inline)) void show_state(void)
{
 show_state_filter(0);
}

extern void show_regs(struct pt_regs *);






extern void show_stack(struct task_struct *task, unsigned long *sp);

void io_schedule(void);
long io_schedule_timeout(long timeout);

extern void cpu_init (void);
extern void trap_init(void);
extern void update_process_times(int user);
extern void scheduler_tick(void);

extern void sched_show_task(struct task_struct *p);
# 306 "include/linux/sched.h"
static inline __attribute__((always_inline)) void softlockup_tick(void)
{
}
static inline __attribute__((always_inline)) void touch_softlockup_watchdog(void)
{
}
static inline __attribute__((always_inline)) void touch_all_softlockup_watchdogs(void)
{
}
# 331 "include/linux/sched.h"
extern char __sched_text_start[], __sched_text_end[];


extern int in_sched_functions(unsigned long addr);


extern signed long schedule_timeout(signed long timeout);
extern signed long schedule_timeout_interruptible(signed long timeout);
extern signed long schedule_timeout_killable(signed long timeout);
extern signed long schedule_timeout_uninterruptible(signed long timeout);
 void __schedule(void);
 void schedule(void);
extern int mutex_spin_on_owner(struct mutex *lock, struct thread_info *owner);

struct nsproxy;
struct user_namespace;




extern int sysctl_max_map_count;

# 1 "include/linux/aio.h" 1





# 1 "include/linux/aio_abi.h" 1
# 33 "include/linux/aio_abi.h"
typedef unsigned long aio_context_t;

enum {
 IOCB_CMD_PREAD = 0,
 IOCB_CMD_PWRITE = 1,
 IOCB_CMD_FSYNC = 2,
 IOCB_CMD_FDSYNC = 3,




 IOCB_CMD_NOOP = 6,
 IOCB_CMD_PREADV = 7,
 IOCB_CMD_PWRITEV = 8,
};
# 58 "include/linux/aio_abi.h"
struct io_event {
 __u64 data;
 __u64 obj;
 __s64 res;
 __s64 res2;
};
# 79 "include/linux/aio_abi.h"
struct iocb {

 __u64 aio_data;
 __u32 aio_reserved1, aio_key;



 __u16 aio_lio_opcode;
 __s16 aio_reqprio;
 __u32 aio_fildes;

 __u64 aio_buf;
 __u64 aio_nbytes;
 __s64 aio_offset;


 __u64 aio_reserved2;


 __u32 aio_flags;





 __u32 aio_resfd;
};
# 7 "include/linux/aio.h" 2
# 15 "include/linux/aio.h"
struct kioctx;
# 87 "include/linux/aio.h"
struct kiocb {
 struct list_head ki_run_list;
 unsigned long ki_flags;
 int ki_users;
 unsigned ki_key;

 struct file *ki_filp;
 struct kioctx *ki_ctx;
 int (*ki_cancel)(struct kiocb *, struct io_event *);
 ssize_t (*ki_retry)(struct kiocb *);
 void (*ki_dtor)(struct kiocb *);

 union {
  void *user;
  struct task_struct *tsk;
 } ki_obj;

 __u64 ki_user_data;
 wait_queue_t ki_wait;
 loff_t ki_pos;

 void *private;

 unsigned short ki_opcode;
 size_t ki_nbytes;
 char *ki_buf;
 size_t ki_left;
 struct iovec ki_inline_vec;
  struct iovec *ki_iovec;
  unsigned long ki_nr_segs;
  unsigned long ki_cur_seg;

 struct list_head ki_list;






 struct file *ki_eventfd;
};
# 149 "include/linux/aio.h"
struct aio_ring {
 unsigned id;
 unsigned nr;
 unsigned head;
 unsigned tail;

 unsigned magic;
 unsigned compat_features;
 unsigned incompat_features;
 unsigned header_length;


 struct io_event io_events[0];
};




struct aio_ring_info {
 unsigned long mmap_base;
 unsigned long mmap_size;

 struct page **ring_pages;
 spinlock_t ring_lock;
 long nr_pages;

 unsigned nr, tail;

 struct page *internal_pages[8];
};

struct kioctx {
 atomic_t users;
 int dead;
 struct mm_struct *mm;


 unsigned long user_id;
 struct hlist_node list;

 wait_queue_head_t wait;

 spinlock_t ctx_lock;

 int reqs_active;
 struct list_head active_reqs;
 struct list_head run_list;


 unsigned max_reqs;

 struct aio_ring_info ring_info;

 struct delayed_work wq;

 struct rcu_head rcu_head;
};


extern unsigned aio_max_size;
# 218 "include/linux/aio.h"
static inline __attribute__((always_inline)) ssize_t wait_on_sync_kiocb(struct kiocb *iocb) { return 0; }
static inline __attribute__((always_inline)) int aio_put_req(struct kiocb *iocb) { return 0; }
static inline __attribute__((always_inline)) void kick_iocb(struct kiocb *iocb) { }
static inline __attribute__((always_inline)) int aio_complete(struct kiocb *iocb, long res, long res2) { return 0; }
struct mm_struct;
static inline __attribute__((always_inline)) void exit_aio(struct mm_struct *mm) { }






static inline __attribute__((always_inline)) struct kiocb *list_kiocb(struct list_head *h)
{
 return ({ const typeof( ((struct kiocb *)0)->ki_list ) *__mptr = (h); (struct kiocb *)( (char *)__mptr - ((size_t) &((struct kiocb *)0)->ki_list) );});
}


extern unsigned long aio_nr;
extern unsigned long aio_max_nr;
# 354 "include/linux/sched.h" 2

extern unsigned long
arch_get_unmapped_area(struct file *, unsigned long, unsigned long,
         unsigned long, unsigned long);
extern unsigned long
arch_get_unmapped_area_topdown(struct file *filp, unsigned long addr,
     unsigned long len, unsigned long pgoff,
     unsigned long flags);
extern void arch_unmap_area(struct mm_struct *, unsigned long);
extern void arch_unmap_area_topdown(struct mm_struct *, unsigned long);
# 401 "include/linux/sched.h"
static inline __attribute__((always_inline)) unsigned long get_mm_hiwater_rss(struct mm_struct *mm)
{
 return ({ typeof(mm->hiwater_rss) _max1 = (mm->hiwater_rss); typeof((((mm)->_file_rss) + ((mm)->_anon_rss))) _max2 = ((((mm)->_file_rss) + ((mm)->_anon_rss))); (void) (&_max1 == &_max2); _max1 > _max2 ? _max1 : _max2; });
}

static inline __attribute__((always_inline)) unsigned long get_mm_hiwater_vm(struct mm_struct *mm)
{
 return ({ typeof(mm->hiwater_vm) _max1 = (mm->hiwater_vm); typeof(mm->total_vm) _max2 = (mm->total_vm); (void) (&_max1 == &_max2); _max1 > _max2 ? _max1 : _max2; });
}

extern void set_dumpable(struct mm_struct *mm, int value);
extern int get_dumpable(struct mm_struct *mm);
# 442 "include/linux/sched.h"
struct sighand_struct {
 atomic_t count;
 struct k_sigaction action[128];
 spinlock_t siglock;
 wait_queue_head_t signalfd_wqh;
};

struct pacct_struct {
 int ac_flag;
 long ac_exitcode;
 unsigned long ac_mem;
 cputime_t ac_utime, ac_stime;
 unsigned long ac_minflt, ac_majflt;
};
# 468 "include/linux/sched.h"
struct task_cputime {
 cputime_t utime;
 cputime_t stime;
 unsigned long long sum_exec_runtime;
};
# 504 "include/linux/sched.h"
struct thread_group_cputimer {
 struct task_cputime cputime;
 int running;
 spinlock_t lock;
};
# 517 "include/linux/sched.h"
struct signal_struct {
 atomic_t count;
 atomic_t live;

 wait_queue_head_t wait_chldexit;


 struct task_struct *curr_target;


 struct sigpending shared_pending;


 int group_exit_code;





 int notify_count;
 struct task_struct *group_exit_task;


 int group_stop_count;
 unsigned int flags;


 struct list_head posix_timers;


 struct hrtimer real_timer;
 struct pid *leader_pid;
 ktime_t it_real_incr;


 cputime_t it_prof_expires, it_virt_expires;
 cputime_t it_prof_incr, it_virt_incr;





 struct thread_group_cputimer cputimer;


 struct task_cputime cputime_expires;

 struct list_head cpu_timers[3];

 struct pid *tty_old_pgrp;


 int leader;

 struct tty_struct *tty;







 cputime_t utime, stime, cutime, cstime;
 cputime_t gtime;
 cputime_t cgtime;
 unsigned long nvcsw, nivcsw, cnvcsw, cnivcsw;
 unsigned long min_flt, maj_flt, cmin_flt, cmaj_flt;
 unsigned long inblock, oublock, cinblock, coublock;
 struct task_io_accounting ioac;







 unsigned long long sum_sched_runtime;
# 604 "include/linux/sched.h"
 struct rlimit rlim[16];
# 616 "include/linux/sched.h"
};
# 640 "include/linux/sched.h"
static inline __attribute__((always_inline)) int signal_group_exit(const struct signal_struct *sig)
{
 return (sig->flags & 0x00000008) ||
  (sig->group_exit_task != ((void *)0));
}




struct user_struct {
 atomic_t __count;
 atomic_t processes;
 atomic_t files;
 atomic_t sigpending;
# 665 "include/linux/sched.h"
 unsigned long locked_shm;







 struct hlist_node uidhash_node;
 uid_t uid;
 struct user_namespace *user_ns;
# 684 "include/linux/sched.h"
};

extern int uids_sysfs_init(void);

extern struct user_struct *find_user(uid_t);

extern struct user_struct root_user;



struct backing_dev_info;
struct reclaim_state;
# 747 "include/linux/sched.h"
static inline __attribute__((always_inline)) int sched_info_on(void)
{






 return 0;

}

enum cpu_idle_type {
 CPU_IDLE,
 CPU_NOT_IDLE,
 CPU_NEWLY_IDLE,
 CPU_MAX_IDLE_TYPES
};
# 959 "include/linux/sched.h"
struct sched_domain_attr;

static inline __attribute__((always_inline)) void
partition_sched_domains(int ndoms_new, struct cpumask *doms_new,
   struct sched_domain_attr *dattr_new)
{
}


struct io_context;





static inline __attribute__((always_inline)) void prefetch_stack(struct task_struct *t) { }


struct audit_context;
struct mempolicy;
struct pipe_inode_info;
struct uts_namespace;

struct rq;
struct sched_domain;

struct sched_class {
 const struct sched_class *next;

 void (*enqueue_task) (struct rq *rq, struct task_struct *p, int wakeup);
 void (*dequeue_task) (struct rq *rq, struct task_struct *p, int sleep);
 void (*yield_task) (struct rq *rq);

 void (*check_preempt_curr) (struct rq *rq, struct task_struct *p, int sync);

 struct task_struct * (*pick_next_task) (struct rq *rq);
 void (*put_prev_task) (struct rq *rq, struct task_struct *p);
# 1020 "include/linux/sched.h"
 void (*set_curr_task) (struct rq *rq);
 void (*task_tick) (struct rq *rq, struct task_struct *p, int queued);
 void (*task_new) (struct rq *rq, struct task_struct *p);

 void (*switched_from) (struct rq *this_rq, struct task_struct *task,
          int running);
 void (*switched_to) (struct rq *this_rq, struct task_struct *task,
        int running);
 void (*prio_changed) (struct rq *this_rq, struct task_struct *task,
        int oldprio, int running);




};

struct load_weight {
 unsigned long weight, inv_weight;
};
# 1050 "include/linux/sched.h"
struct sched_entity {
 struct load_weight load;
 struct rb_node run_node;
 struct list_head group_node;
 unsigned int on_rq;

 u64 exec_start;
 u64 sum_exec_runtime;
 u64 vruntime;
 u64 prev_sum_exec_runtime;

 u64 last_wakeup;
 u64 avg_overlap;

 u64 start_runtime;
 u64 avg_wakeup;
 u64 nr_migrations;
# 1108 "include/linux/sched.h"
};

struct sched_rt_entity {
 struct list_head run_list;
 unsigned long timeout;
 unsigned int time_slice;
 int nr_cpus_allowed;

 struct sched_rt_entity *back;







};

struct task_struct {
 volatile long state;
 void *stack;
 atomic_t usage;
 unsigned int flags;
 unsigned int ptrace;

 int lock_depth;







 int prio, static_prio, normal_prio;
 unsigned int rt_priority;
 const struct sched_class *sched_class;
 struct sched_entity se;
 struct sched_rt_entity rt;
# 1160 "include/linux/sched.h"
 unsigned char fpu_counter;
 s8 oomkilladj;




 unsigned int policy;
 cpumask_t cpus_allowed;
# 1178 "include/linux/sched.h"
 struct list_head tasks;
 struct plist_node pushable_tasks;

 struct mm_struct *mm, *active_mm;


 struct linux_binfmt *binfmt;
 int exit_state;
 int exit_code, exit_signal;
 int pdeath_signal;

 unsigned int personality;
 unsigned did_exec:1;
 unsigned in_execve:1;

 pid_t pid;
 pid_t tgid;


 unsigned long stack_canary;






 struct task_struct *real_parent;
 struct task_struct *parent;



 struct list_head children;
 struct list_head sibling;
 struct task_struct *group_leader;






 struct list_head ptraced;
 struct list_head ptrace_entry;
# 1235 "include/linux/sched.h"
 struct pid_link pids[PIDTYPE_MAX];
 struct list_head thread_group;

 struct completion *vfork_done;
 int *set_child_tid;
 int *clear_child_tid;

 cputime_t utime, stime, utimescaled, stimescaled;
 cputime_t gtime;
 cputime_t prev_utime, prev_stime;
 unsigned long nvcsw, nivcsw;
 struct timespec start_time;
 struct timespec real_start_time;

 unsigned long min_flt, maj_flt;

 struct task_cputime cputime_expires;
 struct list_head cpu_timers[3];


 const struct cred *real_cred;

 const struct cred *cred;

 struct mutex cred_exec_mutex;

 char comm[16];




 int link_count, total_link_count;
# 1276 "include/linux/sched.h"
 struct thread_struct thread;

 struct fs_struct *fs;

 struct files_struct *files;

 struct nsproxy *nsproxy;

 struct signal_struct *signal;
 struct sighand_struct *sighand;

 sigset_t blocked, real_blocked;
 sigset_t saved_sigmask;
 struct sigpending pending;

 unsigned long sas_ss_sp;
 size_t sas_ss_size;
 int (*notifier)(void *priv);
 void *notifier_data;
 sigset_t *notifier_mask;
 struct audit_context *audit_context;




 seccomp_t seccomp;


    u32 parent_exec_id;
    u32 self_exec_id;

 spinlock_t alloc_lock;



 struct irqaction *irqaction;



 spinlock_t pi_lock;
# 1353 "include/linux/sched.h"
 void *journal_info;


 struct bio *bio_list, **bio_tail;


 struct reclaim_state *reclaim_state;

 struct backing_dev_info *backing_dev_info;

 struct io_context *io_context;

 unsigned long ptrace_message;
 siginfo_t *last_siginfo;
 struct task_io_accounting ioac;
# 1396 "include/linux/sched.h"
 atomic_t fs_excl;
 struct rcu_head rcu;




 struct pipe_inode_info *splice_pipe;






 struct prop_local_single dirties;
# 1418 "include/linux/sched.h"
 unsigned long timer_slack_ns;
 unsigned long default_timer_slack_ns;

 struct list_head *scm_work_list;
# 1441 "include/linux/sched.h"
};
# 1465 "include/linux/sched.h"
static inline __attribute__((always_inline)) int rt_prio(int prio)
{
 if (__builtin_expect(!!(prio < 100), 0))
  return 1;
 return 0;
}

static inline __attribute__((always_inline)) int rt_task(struct task_struct *p)
{
 return rt_prio(p->prio);
}

static inline __attribute__((always_inline)) struct pid *task_pid(struct task_struct *task)
{
 return task->pids[PIDTYPE_PID].pid;
}

static inline __attribute__((always_inline)) struct pid *task_tgid(struct task_struct *task)
{
 return task->group_leader->pids[PIDTYPE_PID].pid;
}






static inline __attribute__((always_inline)) struct pid *task_pgrp(struct task_struct *task)
{
 return task->group_leader->pids[PIDTYPE_PGID].pid;
}

static inline __attribute__((always_inline)) struct pid *task_session(struct task_struct *task)
{
 return task->group_leader->pids[PIDTYPE_SID].pid;
}

struct pid_namespace;
# 1517 "include/linux/sched.h"
pid_t __task_pid_nr_ns(struct task_struct *task, enum pid_type type,
   struct pid_namespace *ns);

static inline __attribute__((always_inline)) pid_t task_pid_nr(struct task_struct *tsk)
{
 return tsk->pid;
}

static inline __attribute__((always_inline)) pid_t task_pid_nr_ns(struct task_struct *tsk,
     struct pid_namespace *ns)
{
 return __task_pid_nr_ns(tsk, PIDTYPE_PID, ns);
}

static inline __attribute__((always_inline)) pid_t task_pid_vnr(struct task_struct *tsk)
{
 return __task_pid_nr_ns(tsk, PIDTYPE_PID, ((void *)0));
}


static inline __attribute__((always_inline)) pid_t task_tgid_nr(struct task_struct *tsk)
{
 return tsk->tgid;
}

pid_t task_tgid_nr_ns(struct task_struct *tsk, struct pid_namespace *ns);

static inline __attribute__((always_inline)) pid_t task_tgid_vnr(struct task_struct *tsk)
{
 return pid_vnr(task_tgid(tsk));
}


static inline __attribute__((always_inline)) pid_t task_pgrp_nr_ns(struct task_struct *tsk,
     struct pid_namespace *ns)
{
 return __task_pid_nr_ns(tsk, PIDTYPE_PGID, ns);
}

static inline __attribute__((always_inline)) pid_t task_pgrp_vnr(struct task_struct *tsk)
{
 return __task_pid_nr_ns(tsk, PIDTYPE_PGID, ((void *)0));
}


static inline __attribute__((always_inline)) pid_t task_session_nr_ns(struct task_struct *tsk,
     struct pid_namespace *ns)
{
 return __task_pid_nr_ns(tsk, PIDTYPE_SID, ns);
}

static inline __attribute__((always_inline)) pid_t task_session_vnr(struct task_struct *tsk)
{
 return __task_pid_nr_ns(tsk, PIDTYPE_SID, ((void *)0));
}


static inline __attribute__((always_inline)) pid_t task_pgrp_nr(struct task_struct *tsk)
{
 return task_pgrp_nr_ns(tsk, &init_pid_ns);
}
# 1587 "include/linux/sched.h"
static inline __attribute__((always_inline)) int pid_alive(struct task_struct *p)
{
 return p->pids[PIDTYPE_PID].pid != ((void *)0);
}







static inline __attribute__((always_inline)) int is_global_init(struct task_struct *tsk)
{
 return tsk->pid == 1;
}





extern int is_container_init(struct task_struct *tsk);

extern struct pid *cad_pid;

extern void free_task(struct task_struct *tsk);


extern void __put_task_struct(struct task_struct *t);

static inline __attribute__((always_inline)) void put_task_struct(struct task_struct *t)
{
 if ((atomic_sub_return(1, (&t->usage)) == 0))
  __put_task_struct(t);
}

extern cputime_t task_utime(struct task_struct *p);
extern cputime_t task_stime(struct task_struct *p);
extern cputime_t task_gtime(struct task_struct *p);
# 1689 "include/linux/sched.h"
static inline __attribute__((always_inline)) int set_cpus_allowed_ptr(struct task_struct *p,
           const struct cpumask *new_mask)
{
 if (!test_bit(cpumask_check(0), (((new_mask))->bits)))
  return -22;
 return 0;
}

static inline __attribute__((always_inline)) int set_cpus_allowed(struct task_struct *p, cpumask_t new_mask)
{
 return set_cpus_allowed_ptr(p, &new_mask);
}
# 1712 "include/linux/sched.h"
extern unsigned long long sched_clock(void);

extern void sched_clock_init(void);
extern u64 sched_clock_cpu(int cpu);


static inline __attribute__((always_inline)) void sched_clock_tick(void)
{
}

static inline __attribute__((always_inline)) void sched_clock_idle_sleep_event(void)
{
}

static inline __attribute__((always_inline)) void sched_clock_idle_wakeup_event(u64 delta_ns)
{
}
# 1739 "include/linux/sched.h"
extern unsigned long long cpu_clock(int cpu);

extern unsigned long long
task_sched_runtime(struct task_struct *task);
extern unsigned long long thread_group_sched_runtime(struct task_struct *task);
# 1752 "include/linux/sched.h"
extern void sched_clock_idle_sleep_event(void);
extern void sched_clock_idle_wakeup_event(u64 delta_ns);




static inline __attribute__((always_inline)) void idle_task_exit(void) {}


extern void sched_idle_next(void);




static inline __attribute__((always_inline)) void wake_up_idle_cpu(int cpu) { }


extern unsigned int sysctl_sched_latency;
extern unsigned int sysctl_sched_min_granularity;
extern unsigned int sysctl_sched_wakeup_granularity;
extern unsigned int sysctl_sched_shares_ratelimit;
extern unsigned int sysctl_sched_shares_thresh;
# 1784 "include/linux/sched.h"
extern unsigned int sysctl_sched_rt_period;
extern int sysctl_sched_rt_runtime;

int sched_rt_handler(struct ctl_table *table, int write,
  struct file *filp, void *buffer, size_t *lenp,
  loff_t *ppos);

extern unsigned int sysctl_sched_compat_yield;






static inline __attribute__((always_inline)) int rt_mutex_getprio(struct task_struct *p)
{
 return p->normal_prio;
}



extern void set_user_nice(struct task_struct *p, long nice);
extern int task_prio(const struct task_struct *p);
extern int task_nice(const struct task_struct *p);
extern int can_nice(const struct task_struct *p, const int nice);
extern int task_curr(const struct task_struct *p);
extern int idle_cpu(int cpu);
extern int sched_setscheduler(struct task_struct *, int, struct sched_param *);
extern int sched_setscheduler_nocheck(struct task_struct *, int,
          struct sched_param *);
extern struct task_struct *idle_task(int cpu);
extern struct task_struct *curr_task(int cpu);
extern void set_curr_task(int cpu, struct task_struct *p);

void yield(void);




extern struct exec_domain default_exec_domain;

union thread_union {
 struct thread_info thread_info;
 unsigned long stack[((1UL << 12) << (3))/sizeof(long)];
};


static inline __attribute__((always_inline)) int kstack_end(void *addr)
{



 return !(((unsigned long)addr+sizeof(void*)-1) & (((1UL << 12) << (3))-sizeof(void*)));
}


extern union thread_union init_thread_union;
extern struct task_struct init_task;

extern struct mm_struct init_mm;

extern struct pid_namespace init_pid_ns;
# 1861 "include/linux/sched.h"
extern struct task_struct *find_task_by_pid_type_ns(int type, int pid,
  struct pid_namespace *ns);

extern struct task_struct *find_task_by_vpid(pid_t nr);
extern struct task_struct *find_task_by_pid_ns(pid_t nr,
  struct pid_namespace *ns);

extern void __set_special_pids(struct pid *pid);


extern struct user_struct * alloc_uid(struct user_namespace *, uid_t);
static inline __attribute__((always_inline)) struct user_struct *get_uid(struct user_struct *u)
{
 atomic_add(1, (&u->__count));
 return u;
}
extern void free_uid(struct user_struct *);
extern void release_uids(struct user_namespace *ns);



extern void do_timer(unsigned long ticks);

extern int wake_up_state(struct task_struct *tsk, unsigned int state);
extern int wake_up_process(struct task_struct *tsk);
extern void wake_up_new_task(struct task_struct *tsk,
    unsigned long clone_flags);



 static inline __attribute__((always_inline)) void kick_process(struct task_struct *tsk) { }

extern void sched_fork(struct task_struct *p, int clone_flags);
extern void sched_dead(struct task_struct *p);

extern void proc_caches_init(void);
extern void flush_signals(struct task_struct *);
extern void ignore_signals(struct task_struct *);
extern void flush_signal_handlers(struct task_struct *, int force_default);
extern int dequeue_signal(struct task_struct *tsk, sigset_t *mask, siginfo_t *info);

static inline __attribute__((always_inline)) int dequeue_signal_lock(struct task_struct *tsk, sigset_t *mask, siginfo_t *info)
{
 unsigned long flags;
 int ret;

 do { ({ unsigned long __dummy; typeof(flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); do { do { ({ unsigned long __dummy; typeof(flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); __asm__ __volatile__( "raw_local_irq_save\t%0" : "=r" (flags) : : "memory"); } while (0); do { do { } while (0); (void)0; (void)(&tsk->sighand->siglock); } while (0); } while (0); } while (0);
 ret = dequeue_signal(tsk, mask, info);
 do { ({ unsigned long __dummy; typeof(flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); do { do { ({ unsigned long __dummy; typeof(flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); if (raw_irqs_disabled_flags(flags)) { raw_local_irq_restore(flags); } else { raw_local_irq_restore(flags); } } while (0); do { do { } while (0); (void)0; (void)(&tsk->sighand->siglock); } while (0); } while (0); } while (0);

 return ret;
}

extern void block_all_signals(int (*notifier)(void *priv), void *priv,
         sigset_t *mask);
extern void unblock_all_signals(void);
extern void release_task(struct task_struct * p);
extern int send_sig_info(int, struct siginfo *, struct task_struct *);
extern int force_sigsegv(int, struct task_struct *);
extern int force_sig_info(int, struct siginfo *, struct task_struct *);
extern int __kill_pgrp_info(int sig, struct siginfo *info, struct pid *pgrp);
extern int kill_pid_info(int sig, struct siginfo *info, struct pid *pid);
extern int kill_pid_info_as_uid(int, struct siginfo *, struct pid *, uid_t, uid_t, u32);
extern int kill_pgrp(struct pid *pid, int sig, int priv);
extern int kill_pid(struct pid *pid, int sig, int priv);
extern int kill_proc_info(int, struct siginfo *, pid_t);
extern int do_notify_parent(struct task_struct *, int);
extern void force_sig(int, struct task_struct *);
extern void force_sig_specific(int, struct task_struct *);
extern int send_sig(int, struct task_struct *, int);
extern void zap_other_threads(struct task_struct *p);
extern struct sigqueue *sigqueue_alloc(void);
extern void sigqueue_free(struct sigqueue *);
extern int send_sigqueue(struct sigqueue *, struct task_struct *, int group);
extern int do_sigaction(int, struct k_sigaction *, struct k_sigaction *);
extern int do_sigaltstack(const stack_t *, stack_t *, unsigned long);

static inline __attribute__((always_inline)) int kill_cad_pid(int sig, int priv)
{
 return kill_pid(cad_pid, sig, priv);
}






static inline __attribute__((always_inline)) int is_si_special(const struct siginfo *info)
{
 return info <= ((struct siginfo *) 2);
}



static inline __attribute__((always_inline)) int on_sig_stack(unsigned long sp)
{
 return (sp - get_current()->sas_ss_sp < get_current()->sas_ss_size);
}

static inline __attribute__((always_inline)) int sas_ss_flags(unsigned long sp)
{
 return (get_current()->sas_ss_size == 0 ? 2
  : on_sig_stack(sp) ? 1 : 0);
}




extern struct mm_struct * mm_alloc(void);


extern void __mmdrop(struct mm_struct *);
static inline __attribute__((always_inline)) void mmdrop(struct mm_struct * mm)
{
 if (__builtin_expect(!!((atomic_sub_return(1, (&mm->mm_count)) == 0)), 0))
  __mmdrop(mm);
}


extern void mmput(struct mm_struct *);

extern struct mm_struct *get_task_mm(struct task_struct *task);

extern void mm_release(struct task_struct *, struct mm_struct *);

extern struct mm_struct *dup_mm(struct task_struct *tsk);

extern int copy_thread(unsigned long, unsigned long, unsigned long,
   struct task_struct *, struct pt_regs *);
extern void flush_thread(void);
extern void exit_thread(void);

extern void exit_files(struct task_struct *);
extern void __cleanup_signal(struct signal_struct *);
extern void __cleanup_sighand(struct sighand_struct *);

extern void exit_itimers(struct signal_struct *);
extern void flush_itimer_signals(void);

extern void do_group_exit(int);

extern void daemonize(const char *, ...);
extern int allow_signal(int);
extern int disallow_signal(int);

extern int do_execve(char *, char * *, char * *, struct pt_regs *);
extern long do_fork(unsigned long, unsigned long, struct pt_regs *, unsigned long, int *, int *);
struct task_struct *fork_idle(int);

extern void set_task_comm(struct task_struct *tsk, char *from);
extern char *get_task_comm(char *to, struct task_struct *tsk);




static inline __attribute__((always_inline)) unsigned long wait_task_inactive(struct task_struct *p,
            long match_state)
{
 return 1;
}







extern bool is_single_threaded(struct task_struct *);
# 2049 "include/linux/sched.h"
static inline __attribute__((always_inline)) int has_group_leader_pid(struct task_struct *p)
{
 return p->pid == p->tgid;
}

static inline __attribute__((always_inline))
int same_thread_group(struct task_struct *p1, struct task_struct *p2)
{
 return p1->tgid == p2->tgid;
}

static inline __attribute__((always_inline)) struct task_struct *next_thread(const struct task_struct *p)
{
 return ({ const typeof( ((struct task_struct *)0)->thread_group ) *__mptr = (({ typeof(p->thread_group.next) _________p1 = (*(volatile typeof(p->thread_group.next) *)&(p->thread_group.next)); do { } while(0); (_________p1); })); (struct task_struct *)( (char *)__mptr - ((size_t) &((struct task_struct *)0)->thread_group) );});

}

static inline __attribute__((always_inline)) int thread_group_empty(struct task_struct *p)
{
 return list_empty(&p->thread_group);
}




static inline __attribute__((always_inline)) int task_detached(struct task_struct *p)
{
 return p->exit_signal == -1;
}
# 2089 "include/linux/sched.h"
static inline __attribute__((always_inline)) void task_lock(struct task_struct *p)
{
 do { do { } while (0); (void)0; (void)(&p->alloc_lock); } while (0);
}

static inline __attribute__((always_inline)) void task_unlock(struct task_struct *p)
{
 do { do { } while (0); (void)0; (void)(&p->alloc_lock); } while (0);
}

extern struct sighand_struct *lock_task_sighand(struct task_struct *tsk,
       unsigned long *flags);

static inline __attribute__((always_inline)) void unlock_task_sighand(struct task_struct *tsk,
      unsigned long *flags)
{
 do { ({ unsigned long __dummy; typeof(*flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); do { do { ({ unsigned long __dummy; typeof(*flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); if (raw_irqs_disabled_flags(*flags)) { raw_local_irq_restore(*flags); } else { raw_local_irq_restore(*flags); } } while (0); do { do { } while (0); (void)0; (void)(&tsk->sighand->siglock); } while (0); } while (0); } while (0);
}






static inline __attribute__((always_inline)) void setup_thread_stack(struct task_struct *p, struct task_struct *org)
{
 *((struct thread_info *)(p)->stack) = *((struct thread_info *)(org)->stack);
 ((struct thread_info *)(p)->stack)->task = p;
}

static inline __attribute__((always_inline)) unsigned long *end_of_stack(struct task_struct *p)
{
 return (unsigned long *)(((struct thread_info *)(p)->stack) + 1);
}



static inline __attribute__((always_inline)) int object_is_on_stack(void *obj)
{
 void *stack = ((get_current())->stack);

 return (obj >= stack) && (obj < (stack + ((1UL << 12) << (3))));
}

extern void thread_info_cache_init(void);
# 2151 "include/linux/sched.h"
static inline __attribute__((always_inline)) void set_tsk_thread_flag(struct task_struct *tsk, int flag)
{
 set_ti_thread_flag(((struct thread_info *)(tsk)->stack), flag);
}

static inline __attribute__((always_inline)) void clear_tsk_thread_flag(struct task_struct *tsk, int flag)
{
 clear_ti_thread_flag(((struct thread_info *)(tsk)->stack), flag);
}

static inline __attribute__((always_inline)) int test_and_set_tsk_thread_flag(struct task_struct *tsk, int flag)
{
 return test_and_set_ti_thread_flag(((struct thread_info *)(tsk)->stack), flag);
}

static inline __attribute__((always_inline)) int test_and_clear_tsk_thread_flag(struct task_struct *tsk, int flag)
{
 return test_and_clear_ti_thread_flag(((struct thread_info *)(tsk)->stack), flag);
}

static inline __attribute__((always_inline)) int test_tsk_thread_flag(struct task_struct *tsk, int flag)
{
 return test_ti_thread_flag(((struct thread_info *)(tsk)->stack), flag);
}

static inline __attribute__((always_inline)) void set_tsk_need_resched(struct task_struct *tsk)
{
 set_tsk_thread_flag(tsk,2);
}

static inline __attribute__((always_inline)) void clear_tsk_need_resched(struct task_struct *tsk)
{
 clear_tsk_thread_flag(tsk,2);
}

static inline __attribute__((always_inline)) int test_tsk_need_resched(struct task_struct *tsk)
{
 return __builtin_expect(!!(test_tsk_thread_flag(tsk,2)), 0);
}

static inline __attribute__((always_inline)) int signal_pending(struct task_struct *p)
{
 return __builtin_expect(!!(test_tsk_thread_flag(p,1)), 0);
}

extern int __fatal_signal_pending(struct task_struct *p);

static inline __attribute__((always_inline)) int fatal_signal_pending(struct task_struct *p)
{
 return signal_pending(p) && __fatal_signal_pending(p);
}

static inline __attribute__((always_inline)) int signal_pending_state(long state, struct task_struct *p)
{
 if (!(state & (1 | 128)))
  return 0;
 if (!signal_pending(p))
  return 0;

 return (state & 1) || __fatal_signal_pending(p);
}

static inline __attribute__((always_inline)) int need_resched(void)
{
 return __builtin_expect(!!(test_ti_thread_flag(__current_thread_info, 2)), 0);
}
# 2225 "include/linux/sched.h"
extern int _cond_resched(void);






static inline __attribute__((always_inline)) int cond_resched(void)
{
 return _cond_resched();
}

extern int cond_resched_lock(spinlock_t * lock);
extern int cond_resched_softirq(void);
static inline __attribute__((always_inline)) int cond_resched_bkl(void)
{
 return _cond_resched();
}






static inline __attribute__((always_inline)) int spin_needbreak(spinlock_t *lock)
{



 return 0;

}




void thread_group_cputime(struct task_struct *tsk, struct task_cputime *times);
void thread_group_cputimer(struct task_struct *tsk, struct task_cputime *times);

static inline __attribute__((always_inline)) void thread_group_cputime_init(struct signal_struct *sig)
{
 sig->cputimer.cputime = (struct task_cputime) { .utime = (0UL), .stime = (0UL), .sum_exec_runtime = 0, };
 do { *(&sig->cputimer.lock) = (spinlock_t) { .raw_lock = { }, }; } while (0);
 sig->cputimer.running = 0;
}

static inline __attribute__((always_inline)) void thread_group_cputime_free(struct signal_struct *sig)
{
}







extern void recalc_sigpending_and_wake(struct task_struct *t);
extern void recalc_sigpending(void);

extern void signal_wake_up(struct task_struct *t, int resume_stopped);
# 2300 "include/linux/sched.h"
static inline __attribute__((always_inline)) unsigned int task_cpu(const struct task_struct *p)
{
 return 0;
}

static inline __attribute__((always_inline)) void set_task_cpu(struct task_struct *p, unsigned int cpu)
{
}



extern void arch_pick_mmap_layout(struct mm_struct *mm);






static inline __attribute__((always_inline)) void
__trace_special(void *__tr, void *__data,
  unsigned long arg1, unsigned long arg2, unsigned long arg3)
{
}


extern long sched_setaffinity(pid_t pid, const struct cpumask *new_mask);
extern long sched_getaffinity(pid_t pid, struct cpumask *mask);

extern void normalize_rt_tasks(void);
# 2356 "include/linux/sched.h"
extern int task_can_switch_user(struct user_struct *up,
     struct task_struct *tsk);
# 2380 "include/linux/sched.h"
static inline __attribute__((always_inline)) void add_rchar(struct task_struct *tsk, ssize_t amt)
{
}

static inline __attribute__((always_inline)) void add_wchar(struct task_struct *tsk, ssize_t amt)
{
}

static inline __attribute__((always_inline)) void inc_syscr(struct task_struct *tsk)
{
}

static inline __attribute__((always_inline)) void inc_syscw(struct task_struct *tsk)
{
}
# 2405 "include/linux/sched.h"
static inline __attribute__((always_inline)) void mm_update_next_owner(struct mm_struct *mm)
{
}

static inline __attribute__((always_inline)) void mm_init_owner(struct mm_struct *mm, struct task_struct *p)
{
}
# 14 "include/linux/interrupt.h" 2
# 68 "include/linux/interrupt.h"
enum {
 IRQTF_RUNTHREAD,
 IRQTF_DIED,
 IRQTF_WARNED,
};

typedef irqreturn_t (*irq_handler_t)(int, void *);
# 90 "include/linux/interrupt.h"
struct irqaction {
 irq_handler_t handler;
 unsigned long flags;
 cpumask_t mask;
 const char *name;
 void *dev_id;
 struct irqaction *next;
 int irq;
 struct proc_dir_entry *dir;
 irq_handler_t thread_fn;
 struct task_struct *thread;
 unsigned long thread_flags;
};

extern irqreturn_t no_action(int cpl, void *dev_id);


extern int
request_threaded_irq(unsigned int irq, irq_handler_t handler,
       irq_handler_t thread_fn,
       unsigned long flags, const char *name, void *dev);

static inline __attribute__((always_inline)) int
request_irq(unsigned int irq, irq_handler_t handler, unsigned long flags,
     const char *name, void *dev)
{
 return request_threaded_irq(irq, handler, ((void *)0), flags, name, dev);
}

extern void exit_irq_thread(void);
# 143 "include/linux/interrupt.h"
extern void free_irq(unsigned int, void *);

struct device;

extern int
devm_request_threaded_irq(struct device *dev, unsigned int irq,
     irq_handler_t handler, irq_handler_t thread_fn,
     unsigned long irqflags, const char *devname,
     void *dev_id);

static inline __attribute__((always_inline)) int
devm_request_irq(struct device *dev, unsigned int irq, irq_handler_t handler,
   unsigned long irqflags, const char *devname, void *dev_id)
{
 return devm_request_threaded_irq(dev, irq, handler, ((void *)0), irqflags,
      devname, dev_id);
}

extern void devm_free_irq(struct device *dev, unsigned int irq, void *dev_id);
# 181 "include/linux/interrupt.h"
extern void disable_irq_nosync(unsigned int irq);
extern void disable_irq(unsigned int irq);
extern void enable_irq(unsigned int irq);


extern void suspend_device_irqs(void);
extern void resume_device_irqs(void);



static inline __attribute__((always_inline)) int check_wakeup_irqs(void) { return 0; }
# 204 "include/linux/interrupt.h"
static inline __attribute__((always_inline)) int irq_set_affinity(unsigned int irq, const struct cpumask *m)
{
 return -22;
}

static inline __attribute__((always_inline)) int irq_can_set_affinity(unsigned int irq)
{
 return 0;
}

static inline __attribute__((always_inline)) int irq_select_affinity(unsigned int irq) { return 0; }
# 230 "include/linux/interrupt.h"
static inline __attribute__((always_inline)) void disable_irq_nosync_lockdep(unsigned int irq)
{
 disable_irq_nosync(irq);



}

static inline __attribute__((always_inline)) void disable_irq_nosync_lockdep_irqsave(unsigned int irq, unsigned long *flags)
{
 disable_irq_nosync(irq);



}

static inline __attribute__((always_inline)) void disable_irq_lockdep(unsigned int irq)
{
 disable_irq(irq);



}

static inline __attribute__((always_inline)) void enable_irq_lockdep(unsigned int irq)
{



 enable_irq(irq);
}

static inline __attribute__((always_inline)) void enable_irq_lockdep_irqrestore(unsigned int irq, unsigned long *flags)
{



 enable_irq(irq);
}


extern int set_irq_wake(unsigned int irq, unsigned int on);

static inline __attribute__((always_inline)) int enable_irq_wake(unsigned int irq)
{
 return set_irq_wake(irq, 1);
}

static inline __attribute__((always_inline)) int disable_irq_wake(unsigned int irq)
{
 return set_irq_wake(irq, 0);
}
# 331 "include/linux/interrupt.h"
enum
{
 HI_SOFTIRQ=0,
 TIMER_SOFTIRQ,
 NET_TX_SOFTIRQ,
 NET_RX_SOFTIRQ,
 BLOCK_SOFTIRQ,
 TASKLET_SOFTIRQ,
 SCHED_SOFTIRQ,
 HRTIMER_SOFTIRQ,
 RCU_SOFTIRQ,

 NR_SOFTIRQS
};




extern char *softirq_to_name[NR_SOFTIRQS];





struct softirq_action
{
 void (*action)(struct softirq_action *);
};

 void do_softirq(void);
 void __do_softirq(void);
extern void open_softirq(int nr, void (*action)(struct softirq_action *));
extern void softirq_init(void);

extern void raise_softirq_irqoff(unsigned int nr);
extern void raise_softirq(unsigned int nr);
extern void wakeup_softirqd(void);
# 376 "include/linux/interrupt.h"
extern __attribute__((__section__(".data" ""))) __typeof__(struct list_head [NR_SOFTIRQS]) per_cpu__softirq_work_list;




extern void send_remote_softirq(struct call_single_data *cp, int cpu, int softirq);




extern void __send_remote_softirq(struct call_single_data *cp, int cpu,
      int this_cpu, int softirq);
# 409 "include/linux/interrupt.h"
struct tasklet_struct
{
 struct tasklet_struct *next;
 unsigned long state;
 atomic_t count;
 void (*func)(unsigned long);
 unsigned long data;
};
# 425 "include/linux/interrupt.h"
enum
{
 TASKLET_STATE_SCHED,
 TASKLET_STATE_RUN
};
# 453 "include/linux/interrupt.h"
extern void __tasklet_schedule(struct tasklet_struct *t);

static inline __attribute__((always_inline)) void tasklet_schedule(struct tasklet_struct *t)
{
 if (!test_and_set_bit(TASKLET_STATE_SCHED, &t->state))
  __tasklet_schedule(t);
}

extern void __tasklet_hi_schedule(struct tasklet_struct *t);

static inline __attribute__((always_inline)) void tasklet_hi_schedule(struct tasklet_struct *t)
{
 if (!test_and_set_bit(TASKLET_STATE_SCHED, &t->state))
  __tasklet_hi_schedule(t);
}


static inline __attribute__((always_inline)) void tasklet_disable_nosync(struct tasklet_struct *t)
{
 atomic_add(1, (&t->count));
 __asm__ __volatile__("   \n" : : : "memory");
}

static inline __attribute__((always_inline)) void tasklet_disable(struct tasklet_struct *t)
{
 tasklet_disable_nosync(t);
 do { } while (0);
 __asm__ __volatile__("   \n" : : : "memory");
}

static inline __attribute__((always_inline)) void tasklet_enable(struct tasklet_struct *t)
{
 __asm__ __volatile__("   \n" : : : "memory");
 atomic_sub(1, (&t->count));
}

static inline __attribute__((always_inline)) void tasklet_hi_enable(struct tasklet_struct *t)
{
 __asm__ __volatile__("   \n" : : : "memory");
 atomic_sub(1, (&t->count));
}

extern void tasklet_kill(struct tasklet_struct *t);
extern void tasklet_kill_immediate(struct tasklet_struct *t, unsigned int cpu);
extern void tasklet_init(struct tasklet_struct *t,
    void (*func)(unsigned long), unsigned long data);
# 529 "include/linux/interrupt.h"
static inline __attribute__((always_inline)) unsigned long probe_irq_on(void)
{
 return 0;
}
static inline __attribute__((always_inline)) int probe_irq_off(unsigned long val)
{
 return 0;
}
static inline __attribute__((always_inline)) unsigned int probe_irq_mask(unsigned long val)
{
 return 0;
}
# 549 "include/linux/interrupt.h"
extern void init_irq_proc(void);
# 559 "include/linux/interrupt.h"
static inline __attribute__((always_inline)) void debug_poll_all_shared_irqs(void) { }


int show_interrupts(struct seq_file *p, void *v);

struct irq_desc;

extern int early_irq_init(void);
extern int arch_probe_nr_irqs(void);
extern int arch_early_irq_init(void);
extern int arch_init_chip_data(struct irq_desc *desc, int cpu);
# 1070 "include/linux/netdevice.h" 2


extern rwlock_t dev_base_lock;
# 1083 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) struct net_device *next_net_device(struct net_device *dev)
{
 struct list_head *lh;
 struct net *net;

 net = dev_net(dev);
 lh = dev->dev_list.next;
 return lh == &net->dev_base_head ? ((void *)0) : ({ const typeof( ((struct net_device *)0)->dev_list ) *__mptr = (lh); (struct net_device *)( (char *)__mptr - ((size_t) &((struct net_device *)0)->dev_list) );});
}

static inline __attribute__((always_inline)) struct net_device *first_net_device(struct net *net)
{
 return list_empty(&net->dev_base_head) ? ((void *)0) :
  ({ const typeof( ((struct net_device *)0)->dev_list ) *__mptr = (net->dev_base_head.next); (struct net_device *)( (char *)__mptr - ((size_t) &((struct net_device *)0)->dev_list) );});
}

extern int netdev_boot_setup_check(struct net_device *dev);
extern unsigned long netdev_boot_base(const char *prefix, int unit);
extern struct net_device *dev_getbyhwaddr(struct net *net, unsigned short type, char *hwaddr);
extern struct net_device *dev_getfirstbyhwtype(struct net *net, unsigned short type);
extern struct net_device *__dev_getfirstbyhwtype(struct net *net, unsigned short type);
extern void dev_add_pack(struct packet_type *pt);
extern void dev_remove_pack(struct packet_type *pt);
extern void __dev_remove_pack(struct packet_type *pt);

extern struct net_device *dev_get_by_flags(struct net *net, unsigned short flags,
        unsigned short mask);
extern struct net_device *dev_get_by_name(struct net *net, const char *name);
extern struct net_device *__dev_get_by_name(struct net *net, const char *name);
extern int rtl865x_getDevIpAndNetmask(struct net_device * dev, unsigned int *ipAddr, unsigned int *netMask );
extern int dev_alloc_name(struct net_device *dev, const char *name);
extern int dev_open(struct net_device *dev);
extern int dev_close(struct net_device *dev);
extern void dev_disable_lro(struct net_device *dev);
extern int dev_queue_xmit(struct sk_buff *skb);
extern int register_netdevice(struct net_device *dev);
extern void unregister_netdevice(struct net_device *dev);
extern void free_netdev(struct net_device *dev);
extern void synchronize_net(void);
extern int register_netdevice_notifier(struct notifier_block *nb);
extern int unregister_netdevice_notifier(struct notifier_block *nb);
extern int init_dummy_netdev(struct net_device *dev);
extern void netdev_resync_ops(struct net_device *dev);

extern int call_netdevice_notifiers(unsigned long val, struct net_device *dev);
extern struct net_device *dev_get_by_index(struct net *net, int ifindex);
extern struct net_device *__dev_get_by_index(struct net *net, int ifindex);
extern int dev_restart(struct net_device *dev);



extern void *skb_gro_header(struct sk_buff *skb, unsigned int hlen);
extern int skb_gro_receive(struct sk_buff **head,
           struct sk_buff *skb);

static inline __attribute__((always_inline)) unsigned int skb_gro_offset(const struct sk_buff *skb)
{
 return ((struct napi_gro_cb *)(skb)->cb)->data_offset;
}

static inline __attribute__((always_inline)) unsigned int skb_gro_len(const struct sk_buff *skb)
{
 return skb->len - ((struct napi_gro_cb *)(skb)->cb)->data_offset;
}

static inline __attribute__((always_inline)) void skb_gro_pull(struct sk_buff *skb, unsigned int len)
{
 ((struct napi_gro_cb *)(skb)->cb)->data_offset += len;
}

static inline __attribute__((always_inline)) void skb_gro_reset_offset(struct sk_buff *skb)
{
 ((struct napi_gro_cb *)(skb)->cb)->data_offset = 0;
}

static inline __attribute__((always_inline)) void *skb_gro_mac_header(struct sk_buff *skb)
{
 return skb_mac_header(skb) < skb->data ? skb_mac_header(skb) :
        lowmem_page_address(((struct skb_shared_info *)(skb_end_pointer(skb)))->frags[0].page) +
        ((struct skb_shared_info *)(skb_end_pointer(skb)))->frags[0].page_offset;
}

static inline __attribute__((always_inline)) int dev_hard_header(struct sk_buff *skb, struct net_device *dev,
      unsigned short type,
      const void *daddr, const void *saddr,
      unsigned len)
{
 if (!dev->header_ops || !dev->header_ops->create)
  return 0;

 return dev->header_ops->create(skb, dev, type, daddr, saddr, len);
}

static inline __attribute__((always_inline)) int dev_parse_header(const struct sk_buff *skb,
       unsigned char *haddr)
{
 const struct net_device *dev = skb->dev;

 if (!dev->header_ops || !dev->header_ops->parse)
  return 0;
 return dev->header_ops->parse(skb, haddr);
}

typedef int gifconf_func_t(struct net_device * dev, char * bufptr, int len);
extern int register_gifconf(unsigned int family, gifconf_func_t * gifconf);
static inline __attribute__((always_inline)) int unregister_gifconf(unsigned int family)
{
 return register_gifconf(family, ((void *)0));
}





struct softnet_data
{
 struct Qdisc *output_queue;
 struct sk_buff_head input_pkt_queue;
 struct list_head poll_list;
 struct sk_buff *completion_queue;

 struct napi_struct backlog;
};

extern __attribute__((__section__(".data" ""))) __typeof__(struct softnet_data) per_cpu__softnet_data;



extern void __netif_schedule(struct Qdisc *q);

static inline __attribute__((always_inline)) void netif_schedule_queue(struct netdev_queue *txq)
{
 if (!test_bit(__QUEUE_STATE_XOFF, &txq->state))
  __netif_schedule(txq->qdisc);
}

static inline __attribute__((always_inline)) void netif_tx_schedule_all(struct net_device *dev)
{
 unsigned int i;

 for (i = 0; i < dev->num_tx_queues; i++)
  netif_schedule_queue(netdev_get_tx_queue(dev, i));
}

static inline __attribute__((always_inline)) void netif_tx_start_queue(struct netdev_queue *dev_queue)
{
 clear_bit(__QUEUE_STATE_XOFF, &dev_queue->state);
}







static inline __attribute__((always_inline)) void netif_start_queue(struct net_device *dev)
{
 netif_tx_start_queue(netdev_get_tx_queue(dev, 0));
}

static inline __attribute__((always_inline)) void netif_tx_start_all_queues(struct net_device *dev)
{
 unsigned int i;

 for (i = 0; i < dev->num_tx_queues; i++) {
  struct netdev_queue *txq = netdev_get_tx_queue(dev, i);
  netif_tx_start_queue(txq);
 }
}

static inline __attribute__((always_inline)) void netif_tx_wake_queue(struct netdev_queue *dev_queue)
{






 if (test_and_clear_bit(__QUEUE_STATE_XOFF, &dev_queue->state))
  __netif_schedule(dev_queue->qdisc);
}
# 1272 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) void netif_wake_queue(struct net_device *dev)
{
 netif_tx_wake_queue(netdev_get_tx_queue(dev, 0));
}

static inline __attribute__((always_inline)) void netif_tx_wake_all_queues(struct net_device *dev)
{
 unsigned int i;

 for (i = 0; i < dev->num_tx_queues; i++) {
  struct netdev_queue *txq = netdev_get_tx_queue(dev, i);
  netif_tx_wake_queue(txq);
 }
}

static inline __attribute__((always_inline)) void netif_tx_stop_queue(struct netdev_queue *dev_queue)
{
 set_bit(__QUEUE_STATE_XOFF, &dev_queue->state);
}
# 1299 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) void netif_stop_queue(struct net_device *dev)
{
 netif_tx_stop_queue(netdev_get_tx_queue(dev, 0));
}

static inline __attribute__((always_inline)) void netif_tx_stop_all_queues(struct net_device *dev)
{
 unsigned int i;

 for (i = 0; i < dev->num_tx_queues; i++) {
  struct netdev_queue *txq = netdev_get_tx_queue(dev, i);
  netif_tx_stop_queue(txq);
 }
}

static inline __attribute__((always_inline)) int netif_tx_queue_stopped(const struct netdev_queue *dev_queue)
{
 return test_bit(__QUEUE_STATE_XOFF, &dev_queue->state);
}







static inline __attribute__((always_inline)) int netif_queue_stopped(const struct net_device *dev)
{
 return netif_tx_queue_stopped(netdev_get_tx_queue(dev, 0));
}

static inline __attribute__((always_inline)) int netif_tx_queue_frozen(const struct netdev_queue *dev_queue)
{
 return test_bit(__QUEUE_STATE_FROZEN, &dev_queue->state);
}







static inline __attribute__((always_inline)) int netif_running(const struct net_device *dev)
{
 return test_bit(__LINK_STATE_START, &dev->state);
}
# 1360 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) void netif_start_subqueue(struct net_device *dev, u16 queue_index)
{
 struct netdev_queue *txq = netdev_get_tx_queue(dev, queue_index);
 clear_bit(__QUEUE_STATE_XOFF, &txq->state);
}
# 1373 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) void netif_stop_subqueue(struct net_device *dev, u16 queue_index)
{
 struct netdev_queue *txq = netdev_get_tx_queue(dev, queue_index);




 set_bit(__QUEUE_STATE_XOFF, &txq->state);
}
# 1390 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) int __netif_subqueue_stopped(const struct net_device *dev,
      u16 queue_index)
{
 struct netdev_queue *txq = netdev_get_tx_queue(dev, queue_index);
 return test_bit(__QUEUE_STATE_XOFF, &txq->state);
}

static inline __attribute__((always_inline)) int netif_subqueue_stopped(const struct net_device *dev,
      struct sk_buff *skb)
{
 return __netif_subqueue_stopped(dev, skb_get_queue_mapping(skb));
}
# 1410 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) void netif_wake_subqueue(struct net_device *dev, u16 queue_index)
{
 struct netdev_queue *txq = netdev_get_tx_queue(dev, queue_index);




 if (test_and_clear_bit(__QUEUE_STATE_XOFF, &txq->state))
  __netif_schedule(txq->qdisc);
}







static inline __attribute__((always_inline)) int netif_is_multiqueue(const struct net_device *dev)
{
 return (dev->num_tx_queues > 1);
}





extern void dev_kfree_skb_irq(struct sk_buff *skb);





extern void dev_kfree_skb_any(struct sk_buff *skb);


extern int netif_rx(struct sk_buff *skb);
extern int netif_rx_ni(struct sk_buff *skb);

extern int netif_receive_skb(struct sk_buff *skb);
extern void napi_gro_flush(struct napi_struct *napi);
extern int dev_gro_receive(struct napi_struct *napi,
     struct sk_buff *skb);
extern int napi_skb_finish(int ret, struct sk_buff *skb);
extern int napi_gro_receive(struct napi_struct *napi,
      struct sk_buff *skb);
extern void napi_reuse_skb(struct napi_struct *napi,
           struct sk_buff *skb);
extern struct sk_buff * napi_fraginfo_skb(struct napi_struct *napi,
       struct napi_gro_fraginfo *info);
extern int napi_frags_finish(struct napi_struct *napi,
       struct sk_buff *skb, int ret);
extern int napi_gro_frags(struct napi_struct *napi,
           struct napi_gro_fraginfo *info);
extern void netif_nit_deliver(struct sk_buff *skb);
extern int dev_valid_name(const char *name);
extern int dev_ioctl(struct net *net, unsigned int cmd, void *);
extern int dev_ethtool(struct net *net, struct ifreq *);
extern unsigned dev_get_flags(const struct net_device *);
extern int dev_change_flags(struct net_device *, unsigned);
extern int dev_change_name(struct net_device *, const char *);
extern int dev_set_alias(struct net_device *, const char *, size_t);
extern int dev_change_net_namespace(struct net_device *,
       struct net *, const char *);
extern int dev_set_mtu(struct net_device *, int);
extern int dev_set_mac_address(struct net_device *,
         struct sockaddr *);
extern int dev_hard_start_xmit(struct sk_buff *skb,
         struct net_device *dev,
         struct netdev_queue *txq);

extern int netdev_budget;


extern void netdev_run_todo(void);







static inline __attribute__((always_inline)) void dev_put(struct net_device *dev)
{
 atomic_sub(1, (&dev->refcnt));
}







static inline __attribute__((always_inline)) void dev_hold(struct net_device *dev)
{
 atomic_add(1, (&dev->refcnt));
}
# 1516 "include/linux/netdevice.h"
extern void linkwatch_fire_event(struct net_device *dev);







static inline __attribute__((always_inline)) int netif_carrier_ok(const struct net_device *dev)
{
 return !test_bit(__LINK_STATE_NOCARRIER, &dev->state);
}

extern void __netdev_watchdog_up(struct net_device *dev);

extern void netif_carrier_on(struct net_device *dev);

extern void netif_carrier_off(struct net_device *dev);
# 1548 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) void netif_dormant_on(struct net_device *dev)
{
 if (!test_and_set_bit(__LINK_STATE_DORMANT, &dev->state))
  linkwatch_fire_event(dev);
}







static inline __attribute__((always_inline)) void netif_dormant_off(struct net_device *dev)
{
 if (test_and_clear_bit(__LINK_STATE_DORMANT, &dev->state))
  linkwatch_fire_event(dev);
}







static inline __attribute__((always_inline)) int netif_dormant(const struct net_device *dev)
{
 return test_bit(__LINK_STATE_DORMANT, &dev->state);
}
# 1584 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) int netif_oper_up(const struct net_device *dev) {
 return (dev->operstate == IF_OPER_UP ||
  dev->operstate == IF_OPER_UNKNOWN );
}







static inline __attribute__((always_inline)) int netif_device_present(struct net_device *dev)
{
 return test_bit(__LINK_STATE_PRESENT, &dev->state);
}

extern void netif_device_detach(struct net_device *dev);

extern void netif_device_attach(struct net_device *dev);






enum {
 NETIF_MSG_DRV = 0x0001,
 NETIF_MSG_PROBE = 0x0002,
 NETIF_MSG_LINK = 0x0004,
 NETIF_MSG_TIMER = 0x0008,
 NETIF_MSG_IFDOWN = 0x0010,
 NETIF_MSG_IFUP = 0x0020,
 NETIF_MSG_RX_ERR = 0x0040,
 NETIF_MSG_TX_ERR = 0x0080,
 NETIF_MSG_TX_QUEUED = 0x0100,
 NETIF_MSG_INTR = 0x0200,
 NETIF_MSG_TX_DONE = 0x0400,
 NETIF_MSG_RX_STATUS = 0x0800,
 NETIF_MSG_PKTDATA = 0x1000,
 NETIF_MSG_HW = 0x2000,
 NETIF_MSG_WOL = 0x4000,
};
# 1643 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) u32 netif_msg_init(int debug_value, int default_msg_enable_bits)
{

 if (debug_value < 0 || debug_value >= (sizeof(u32) * 8))
  return default_msg_enable_bits;
 if (debug_value == 0)
  return 0;

 return (1 << debug_value) - 1;
}

static inline __attribute__((always_inline)) void __netif_tx_lock(struct netdev_queue *txq, int cpu)
{
 do { do { } while (0); (void)0; (void)(&txq->_xmit_lock); } while (0);
 txq->xmit_lock_owner = cpu;
}

static inline __attribute__((always_inline)) void __netif_tx_lock_bh(struct netdev_queue *txq)
{
 do { local_bh_disable(); do { do { } while (0); (void)0; (void)(&txq->_xmit_lock); } while (0); } while (0);
 txq->xmit_lock_owner = 0;
}

static inline __attribute__((always_inline)) int __netif_tx_trylock(struct netdev_queue *txq)
{
 int ok = (({ do { do { } while (0); (void)0; (void)(&txq->_xmit_lock); } while (0); 1; }));
 if (__builtin_expect(!!(ok), 1))
  txq->xmit_lock_owner = 0;
 return ok;
}

static inline __attribute__((always_inline)) void __netif_tx_unlock(struct netdev_queue *txq)
{
 txq->xmit_lock_owner = -1;
 do { do { } while (0); (void)0; (void)(&txq->_xmit_lock); } while (0);
}

static inline __attribute__((always_inline)) void __netif_tx_unlock_bh(struct netdev_queue *txq)
{
 txq->xmit_lock_owner = -1;
 do { do { } while (0); local_bh_enable(); (void)0; (void)(&txq->_xmit_lock); } while (0);
}







static inline __attribute__((always_inline)) void netif_tx_lock(struct net_device *dev)
{
 unsigned int i;
 int cpu;

 do { do { } while (0); (void)0; (void)(&dev->tx_global_lock); } while (0);
 cpu = 0;
 for (i = 0; i < dev->num_tx_queues; i++) {
  struct netdev_queue *txq = netdev_get_tx_queue(dev, i);







  __netif_tx_lock(txq, cpu);
  set_bit(__QUEUE_STATE_FROZEN, &txq->state);
  __netif_tx_unlock(txq);
 }
}

static inline __attribute__((always_inline)) void netif_tx_lock_bh(struct net_device *dev)
{
 local_bh_disable();
 netif_tx_lock(dev);
}

static inline __attribute__((always_inline)) void netif_tx_unlock(struct net_device *dev)
{
 unsigned int i;

 for (i = 0; i < dev->num_tx_queues; i++) {
  struct netdev_queue *txq = netdev_get_tx_queue(dev, i);





  clear_bit(__QUEUE_STATE_FROZEN, &txq->state);
  if (!test_bit(__QUEUE_STATE_XOFF, &txq->state))
   __netif_schedule(txq->qdisc);
 }
 do { do { } while (0); (void)0; (void)(&dev->tx_global_lock); } while (0);
}

static inline __attribute__((always_inline)) void netif_tx_unlock_bh(struct net_device *dev)
{
 netif_tx_unlock(dev);
 local_bh_enable();
}
# 1756 "include/linux/netdevice.h"
static inline __attribute__((always_inline)) void netif_tx_disable(struct net_device *dev)
{
 unsigned int i;
 int cpu;

 local_bh_disable();
 cpu = 0;
 for (i = 0; i < dev->num_tx_queues; i++) {
  struct netdev_queue *txq = netdev_get_tx_queue(dev, i);

  __netif_tx_lock(txq, cpu);
  netif_tx_stop_queue(txq);
  __netif_tx_unlock(txq);
 }
 local_bh_enable();
}

static inline __attribute__((always_inline)) void netif_addr_lock(struct net_device *dev)
{
 do { do { } while (0); (void)0; (void)(&dev->addr_list_lock); } while (0);
}

static inline __attribute__((always_inline)) void netif_addr_lock_bh(struct net_device *dev)
{
 do { local_bh_disable(); do { do { } while (0); (void)0; (void)(&dev->addr_list_lock); } while (0); } while (0);
}

static inline __attribute__((always_inline)) void netif_addr_unlock(struct net_device *dev)
{
 do { do { } while (0); (void)0; (void)(&dev->addr_list_lock); } while (0);
}

static inline __attribute__((always_inline)) void netif_addr_unlock_bh(struct net_device *dev)
{
 do { do { } while (0); local_bh_enable(); (void)0; (void)(&dev->addr_list_lock); } while (0);
}



extern void ether_setup(struct net_device *dev);


extern struct net_device *alloc_netdev_mq(int sizeof_priv, const char *name,
           void (*setup)(struct net_device *),
           unsigned int queue_count);


extern int register_netdev(struct net_device *dev);
extern void unregister_netdev(struct net_device *dev);

extern void dev_set_rx_mode(struct net_device *dev);
extern void __dev_set_rx_mode(struct net_device *dev);
extern int dev_unicast_delete(struct net_device *dev, void *addr, int alen);
extern int dev_unicast_add(struct net_device *dev, void *addr, int alen);
extern int dev_unicast_sync(struct net_device *to, struct net_device *from);
extern void dev_unicast_unsync(struct net_device *to, struct net_device *from);
extern int dev_mc_delete(struct net_device *dev, void *addr, int alen, int all);
extern int dev_mc_add(struct net_device *dev, void *addr, int alen, int newonly);
extern int dev_mc_sync(struct net_device *to, struct net_device *from);
extern void dev_mc_unsync(struct net_device *to, struct net_device *from);
extern int __dev_addr_delete(struct dev_addr_list **list, int *count, void *addr, int alen, int all);
extern int __dev_addr_add(struct dev_addr_list **list, int *count, void *addr, int alen, int newonly);
extern int __dev_addr_sync(struct dev_addr_list **to, int *to_count, struct dev_addr_list **from, int *from_count);
extern void __dev_addr_unsync(struct dev_addr_list **to, int *to_count, struct dev_addr_list **from, int *from_count);
extern int dev_set_promiscuity(struct net_device *dev, int inc);
extern int dev_set_allmulti(struct net_device *dev, int inc);
extern void netdev_state_change(struct net_device *dev);
extern void netdev_bonding_change(struct net_device *dev);
extern void netdev_features_change(struct net_device *dev);

extern void dev_load(struct net *net, const char *name);
extern void dev_mcast_init(void);
extern const struct net_device_stats *dev_get_stats(struct net_device *dev);

extern int netdev_max_backlog;
extern int weight_p;
extern int netdev_set_master(struct net_device *dev, struct net_device *master);
extern int skb_checksum_help(struct sk_buff *skb);
extern struct sk_buff *skb_gso_segment(struct sk_buff *skb, int features);



static inline __attribute__((always_inline)) void netdev_rx_csum_fault(struct net_device *dev)
{
}


extern void net_enable_timestamp(void);
extern void net_disable_timestamp(void);


extern void *dev_seq_start(struct seq_file *seq, loff_t *pos);
extern void *dev_seq_next(struct seq_file *seq, void *v, loff_t *pos);
extern void dev_seq_stop(struct seq_file *seq, void *v);


extern int netdev_class_create_file(struct class_attribute *class_attr);
extern void netdev_class_remove_file(struct class_attribute *class_attr);

extern char *netdev_drivername(const struct net_device *dev, char *buffer, int len);

extern void linkwatch_run_queue(void);

unsigned long netdev_increment_features(unsigned long all, unsigned long one,
     unsigned long mask);
unsigned long netdev_fix_features(unsigned long features, const char *name);

static inline __attribute__((always_inline)) int net_gso_ok(int features, int gso_type)
{
 int feature = gso_type << 16;
 return (features & feature) == feature;
}

static inline __attribute__((always_inline)) int skb_gso_ok(struct sk_buff *skb, int features)
{
 return net_gso_ok(features, ((struct skb_shared_info *)(skb_end_pointer(skb)))->gso_type) &&
        (!((struct skb_shared_info *)(skb_end_pointer(skb)))->frag_list || (features & 64));
}

static inline __attribute__((always_inline)) int netif_needs_gso(struct net_device *dev, struct sk_buff *skb)
{
 return skb_is_gso(skb) &&
        (!skb_gso_ok(skb, dev->features) ||
  __builtin_expect(!!(skb->ip_summed != 3), 0));
}

static inline __attribute__((always_inline)) void netif_set_gso_max_size(struct net_device *dev,
       unsigned int size)
{
 dev->gso_max_size = size;
}





static inline __attribute__((always_inline)) int skb_bond_should_drop(struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;
 struct net_device *master = dev->master;

 if (master) {
  if (master->priv_flags & 0x100)
   dev->last_rx = jiffies;

  if (dev->priv_flags & 0x4) {
   if ((dev->priv_flags & 0x40) &&
       skb->protocol == (( __be16)(__u16)(0x0806)))
    return 0;

   if (master->priv_flags & 0x10) {
    if (skb->pkt_type != 1 &&
        skb->pkt_type != 2)
     return 0;
   }
   if (master->priv_flags & 0x8 &&
       skb->protocol == (( __be16)(__u16)(0x8809)))
    return 0;

   return 1;
  }
 }
 return 0;
}

extern struct pernet_operations __attribute__ ((__section__(".init.data"))) loopback_net_ops;
# 182 "include/linux/netfilter/x_tables.h" 2
# 196 "include/linux/netfilter/x_tables.h"
struct xt_match_param {
 const struct net_device *in, *out;
 const struct xt_match *match;
 const void *matchinfo;
 int fragoff;
 unsigned int thoff;
 bool *hotdrop;
 u_int8_t family;
};
# 217 "include/linux/netfilter/x_tables.h"
struct xt_mtchk_param {
 const char *table;
 const void *entryinfo;
 const struct xt_match *match;
 void *matchinfo;
 unsigned int hook_mask;
 u_int8_t family;
};


struct xt_mtdtor_param {
 const struct xt_match *match;
 void *matchinfo;
 u_int8_t family;
};
# 242 "include/linux/netfilter/x_tables.h"
struct xt_target_param {
 const struct net_device *in, *out;
 unsigned int hooknum;
 const struct xt_target *target;
 const void *targinfo;
 u_int8_t family;
};
# 259 "include/linux/netfilter/x_tables.h"
struct xt_tgchk_param {
 const char *table;
 const void *entryinfo;
 const struct xt_target *target;
 void *targinfo;
 unsigned int hook_mask;
 u_int8_t family;
};


struct xt_tgdtor_param {
 const struct xt_target *target;
 void *targinfo;
 u_int8_t family;
};

struct xt_match
{
 struct list_head list;

 const char name[30 -1];
 u_int8_t revision;






 bool (*match)(const struct sk_buff *skb,
        const struct xt_match_param *);


 bool (*checkentry)(const struct xt_mtchk_param *);


 void (*destroy)(const struct xt_mtdtor_param *);


 void (*compat_from_user)(void *dst, void *src);
 int (*compat_to_user)(void *dst, void *src);
# 310 "include/linux/netfilter/x_tables.h"
 struct module *me;


 unsigned long data;

 const char *table;
 unsigned int matchsize;
 unsigned int compatsize;
 unsigned int hooks;
 unsigned short proto;

 unsigned short family;
};


struct xt_target
{
 struct list_head list;

 const char name[30 -1];




 unsigned int (*target)(struct sk_buff *skb,
          const struct xt_target_param *);





 bool (*checkentry)(const struct xt_tgchk_param *);


 void (*destroy)(const struct xt_tgdtor_param *);


 void (*compat_from_user)(void *dst, void *src);
 int (*compat_to_user)(void *dst, void *src);


 struct module *me;
# 363 "include/linux/netfilter/x_tables.h"
 const char *table;
 unsigned int targetsize;
 unsigned int compatsize;
 unsigned int hooks;
 unsigned short proto;

 unsigned short family;
 u_int8_t revision;
};


struct xt_table
{
 struct list_head list;


 unsigned int valid_hooks;


 struct xt_table_info *private;


 struct module *me;

 u_int8_t af;


 const char name[32];
};

# 1 "include/linux/netfilter_ipv4.h" 1
# 55 "include/linux/netfilter_ipv4.h"
enum nf_ip_hook_priorities {
 NF_IP_PRI_FIRST = (-((int)(~0U>>1)) - 1),
 NF_IP_PRI_CONNTRACK_DEFRAG = -400,
 NF_IP_PRI_RAW = -300,
 NF_IP_PRI_SELINUX_FIRST = -225,
 NF_IP_PRI_CONNTRACK = -200,
 NF_IP_PRI_MANGLE = -150,
 NF_IP_PRI_NAT_DST = -100,
 NF_IP_PRI_FILTER = 0,
 NF_IP_PRI_SECURITY = 50,
 NF_IP_PRI_NAT_SRC = 100,
 NF_IP_PRI_SELINUX_LAST = 225,
 NF_IP_PRI_CONNTRACK_CONFIRM = ((int)(~0U>>1)),
 NF_IP_PRI_LAST = ((int)(~0U>>1)),
};
# 78 "include/linux/netfilter_ipv4.h"
extern int ip_route_me_harder(struct sk_buff *skb, unsigned addr_type);
extern int ip_xfrm_me_harder(struct sk_buff *skb);
extern __sum16 nf_ip_checksum(struct sk_buff *skb, unsigned int hook,
       unsigned int dataoff, u_int8_t protocol);
# 394 "include/linux/netfilter/x_tables.h" 2


struct xt_table_info
{

 unsigned int size;

 unsigned int number;

 unsigned int initial_entries;


 unsigned int hook_entry[NF_INET_NUMHOOKS];
 unsigned int underflow[NF_INET_NUMHOOKS];



 void *entries[1];
};



extern int xt_register_target(struct xt_target *target);
extern void xt_unregister_target(struct xt_target *target);
extern int xt_register_targets(struct xt_target *target, unsigned int n);
extern void xt_unregister_targets(struct xt_target *target, unsigned int n);

extern int xt_register_match(struct xt_match *target);
extern void xt_unregister_match(struct xt_match *target);
extern int xt_register_matches(struct xt_match *match, unsigned int n);
extern void xt_unregister_matches(struct xt_match *match, unsigned int n);

extern int xt_check_match(struct xt_mtchk_param *,
     unsigned int size, u_int8_t proto, bool inv_proto);
extern int xt_check_target(struct xt_tgchk_param *,
      unsigned int size, u_int8_t proto, bool inv_proto);

extern struct xt_table *xt_register_table(struct net *net,
       struct xt_table *table,
       struct xt_table_info *bootstrap,
       struct xt_table_info *newinfo);
extern void *xt_unregister_table(struct xt_table *table);

extern struct xt_table_info *xt_replace_table(struct xt_table *table,
           unsigned int num_counters,
           struct xt_table_info *newinfo,
           int *error);

extern struct xt_match *xt_find_match(u8 af, const char *name, u8 revision);
extern struct xt_target *xt_find_target(u8 af, const char *name, u8 revision);
extern struct xt_target *xt_request_find_target(u8 af, const char *name,
      u8 revision);
extern int xt_find_revision(u8 af, const char *name, u8 revision,
       int target, int *err);

extern struct xt_table *xt_find_table_lock(struct net *net, u_int8_t af,
        const char *name);
extern void xt_table_unlock(struct xt_table *t);

extern int xt_proto_init(struct net *net, u_int8_t af);
extern void xt_proto_fini(struct net *net, u_int8_t af);

extern struct xt_table_info *xt_alloc_table_info(unsigned int size);
extern void xt_free_table_info(struct xt_table_info *info);
# 474 "include/linux/netfilter/x_tables.h"
struct xt_info_lock {
 spinlock_t lock;
 unsigned char readers;
};
extern __attribute__((__section__(".data" ""))) __typeof__(struct xt_info_lock) per_cpu__xt_info_locks;
# 493 "include/linux/netfilter/x_tables.h"
static inline __attribute__((always_inline)) void xt_info_rdlock_bh(void)
{
 struct xt_info_lock *lock;

 local_bh_disable();
 lock = &per_cpu__xt_info_locks;
 if (__builtin_expect(!!(!lock->readers++), 1))
  do { do { } while (0); (void)0; (void)(&lock->lock); } while (0);
}

static inline __attribute__((always_inline)) void xt_info_rdunlock_bh(void)
{
 struct xt_info_lock *lock = &per_cpu__xt_info_locks;

 if (__builtin_expect(!!(!--lock->readers), 1))
  do { do { } while (0); (void)0; (void)(&lock->lock); } while (0);
 local_bh_enable();
}






static inline __attribute__((always_inline)) void xt_info_wrlock(unsigned int cpu)
{
 do { do { } while (0); (void)0; (void)(&(*((void)(cpu), &per_cpu__xt_info_locks)).lock); } while (0);
}

static inline __attribute__((always_inline)) void xt_info_wrunlock(unsigned int cpu)
{
 do { do { } while (0); (void)0; (void)(&(*((void)(cpu), &per_cpu__xt_info_locks)).lock); } while (0);
}




static inline __attribute__((always_inline)) unsigned long ifname_compare_aligned(const char *_a,
         const char *_b,
         const char *_mask)
{
 const unsigned long *a = (const unsigned long *)_a;
 const unsigned long *b = (const unsigned long *)_b;
 const unsigned long *mask = (const unsigned long *)_mask;
 unsigned long ret;

 ret = (a[0] ^ b[0]) & mask[0];
 if (16 > sizeof(unsigned long))
  ret |= (a[1] ^ b[1]) & mask[1];
 if (16 > 2 * sizeof(unsigned long))
  ret |= (a[2] ^ b[2]) & mask[2];
 if (16 > 3 * sizeof(unsigned long))
  ret |= (a[3] ^ b[3]) & mask[3];
 ((void)sizeof(char[1 - 2*!!(16 > 4 * sizeof(unsigned long))]));
 return ret;
}
# 14 "include/net/netfilter/nf_conntrack_tuple.h" 2
# 1 "include/linux/netfilter/nf_conntrack_tuple_common.h" 1



enum ip_conntrack_dir
{
 IP_CT_DIR_ORIGINAL,
 IP_CT_DIR_REPLY,
 IP_CT_DIR_MAX
};
# 15 "include/net/netfilter/nf_conntrack_tuple.h" 2
# 29 "include/net/netfilter/nf_conntrack_tuple.h"
union nf_conntrack_man_proto
{

 __be16 all;

 struct {
  __be16 port;
 } tcp;
 struct {
  __be16 port;
 } udp;
 struct {
  __be16 id;
 } icmp;
 struct {
  __be16 port;
 } dccp;
 struct {
  __be16 port;
 } sctp;
 struct {
  __be16 key;
 } gre;
};


struct nf_conntrack_man
{
 union nf_inet_addr u3;
 union nf_conntrack_man_proto u;

 u_int16_t l3num;
};


struct nf_conntrack_tuple
{
 struct nf_conntrack_man src;


 struct {
  union nf_inet_addr u3;
  union {

   __be16 all;

   struct {
    __be16 port;
   } tcp;
   struct {
    __be16 port;
   } udp;
   struct {
    u_int8_t type, code;
   } icmp;
   struct {
    __be16 port;
   } dccp;
   struct {
    __be16 port;
   } sctp;
   struct {
    __be16 key;
   } gre;
  } u;


  u_int8_t protonum;


  u_int8_t dir;
 } dst;
};

struct nf_conntrack_tuple_mask
{
 struct {
  union nf_inet_addr u3;
  union nf_conntrack_man_proto u;
 } src;
};



static inline __attribute__((always_inline)) void nf_ct_dump_tuple_ip(const struct nf_conntrack_tuple *t)
{






}

static inline __attribute__((always_inline)) void nf_ct_dump_tuple_ipv6(const struct nf_conntrack_tuple *t)
{






}

static inline __attribute__((always_inline)) void nf_ct_dump_tuple(const struct nf_conntrack_tuple *t)
{
 switch (t->src.l3num) {
 case 2:
  nf_ct_dump_tuple_ip(t);
  break;
 case 10:
  nf_ct_dump_tuple_ipv6(t);
  break;
 }
}






struct nf_conntrack_tuple_hash {
 struct hlist_nulls_node hnnode;
 struct nf_conntrack_tuple tuple;
};


static inline __attribute__((always_inline)) bool __nf_ct_tuple_src_equal(const struct nf_conntrack_tuple *t1,
        const struct nf_conntrack_tuple *t2)
{
 return (nf_inet_addr_cmp(&t1->src.u3, &t2->src.u3) &&
  t1->src.u.all == t2->src.u.all &&
  t1->src.l3num == t2->src.l3num);
}

static inline __attribute__((always_inline)) bool __nf_ct_tuple_dst_equal(const struct nf_conntrack_tuple *t1,
        const struct nf_conntrack_tuple *t2)
{
 return (nf_inet_addr_cmp(&t1->dst.u3, &t2->dst.u3) &&
  t1->dst.u.all == t2->dst.u.all &&
  t1->dst.protonum == t2->dst.protonum);
}

static inline __attribute__((always_inline)) bool nf_ct_tuple_equal(const struct nf_conntrack_tuple *t1,
         const struct nf_conntrack_tuple *t2)
{
 return __nf_ct_tuple_src_equal(t1, t2) &&
        __nf_ct_tuple_dst_equal(t1, t2);
}

static inline __attribute__((always_inline)) bool
nf_ct_tuple_mask_equal(const struct nf_conntrack_tuple_mask *m1,
         const struct nf_conntrack_tuple_mask *m2)
{
 return (nf_inet_addr_cmp(&m1->src.u3, &m2->src.u3) &&
  m1->src.u.all == m2->src.u.all);
}

static inline __attribute__((always_inline)) bool
nf_ct_tuple_src_mask_cmp(const struct nf_conntrack_tuple *t1,
    const struct nf_conntrack_tuple *t2,
    const struct nf_conntrack_tuple_mask *mask)
{
 int count;

 for (count = 0; count < (sizeof(((union nf_inet_addr *)((void *)0))->all) / sizeof((((union nf_inet_addr *)((void *)0))->all)[0]) + (sizeof(char[1 - 2 * !!(__builtin_types_compatible_p(typeof(((union nf_inet_addr *)((void *)0))->all), typeof(&((union nf_inet_addr *)((void *)0))->all[0])))]) - 1)); count++) {
  if ((t1->src.u3.all[count] ^ t2->src.u3.all[count]) &
      mask->src.u3.all[count])
   return false;
 }

 if ((t1->src.u.all ^ t2->src.u.all) & mask->src.u.all)
  return false;

 if (t1->src.l3num != t2->src.l3num ||
     t1->dst.protonum != t2->dst.protonum)
  return false;

 return true;
}

static inline __attribute__((always_inline)) bool
nf_ct_tuple_mask_cmp(const struct nf_conntrack_tuple *t,
       const struct nf_conntrack_tuple *tuple,
       const struct nf_conntrack_tuple_mask *mask)
{
 return nf_ct_tuple_src_mask_cmp(t, tuple, mask) &&
        __nf_ct_tuple_dst_equal(t, tuple);
}
# 29 "include/linux/netfilter/nf_conntrack_dccp.h" 2

struct nf_ct_dccp {
 u_int8_t role[IP_CT_DIR_MAX];
 u_int8_t state;
 u_int8_t last_pkt;
 u_int8_t last_dir;
 u_int64_t handshake_seq;
};
# 31 "include/net/netfilter/nf_conntrack.h" 2
# 1 "include/linux/netfilter/nf_conntrack_sctp.h" 1






enum sctp_conntrack {
 SCTP_CONNTRACK_NONE,
 SCTP_CONNTRACK_CLOSED,
 SCTP_CONNTRACK_COOKIE_WAIT,
 SCTP_CONNTRACK_COOKIE_ECHOED,
 SCTP_CONNTRACK_ESTABLISHED,
 SCTP_CONNTRACK_SHUTDOWN_SENT,
 SCTP_CONNTRACK_SHUTDOWN_RECD,
 SCTP_CONNTRACK_SHUTDOWN_ACK_SENT,
 SCTP_CONNTRACK_MAX
};

struct ip_ct_sctp
{
 enum sctp_conntrack state;

 __be32 vtag[IP_CT_DIR_MAX];
};
# 32 "include/net/netfilter/nf_conntrack.h" 2
# 1 "include/linux/netfilter/nf_conntrack_proto_gre.h" 1
# 28 "include/linux/netfilter/nf_conntrack_proto_gre.h"
struct gre_hdr {
# 40 "include/linux/netfilter/nf_conntrack_proto_gre.h"
 __u16 csum:1,
  routing:1,
  key:1,
  seq:1,
  srr:1,
  rec:3,
  ack:1,
  reserved:4,
  version:3;



 __be16 protocol;
};


struct gre_hdr_pptp {
 __u8 flags;
 __u8 version;
 __be16 protocol;
 __be16 payload_len;
 __be16 call_id;
 __be32 seq;
 __be32 ack;

};

struct nf_ct_gre {
 unsigned int stream_timeout;
 unsigned int timeout;
};




struct nf_conn;


struct nf_ct_gre_keymap {
 struct list_head list;
 struct nf_conntrack_tuple tuple;
};


int nf_ct_gre_keymap_add(struct nf_conn *ct, enum ip_conntrack_dir dir,
    struct nf_conntrack_tuple *t);


void nf_ct_gre_keymap_destroy(struct nf_conn *ct);

extern void nf_ct_gre_keymap_flush(struct net *net);
extern void nf_nat_need_gre(void);
# 33 "include/net/netfilter/nf_conntrack.h" 2
# 1 "include/net/netfilter/ipv4/nf_conntrack_icmp.h" 1





struct ip_ct_icmp
{

 atomic_t count;
};
# 34 "include/net/netfilter/nf_conntrack.h" 2
# 1 "include/net/netfilter/ipv6/nf_conntrack_icmpv6.h" 1
# 21 "include/net/netfilter/ipv6/nf_conntrack_icmpv6.h"
struct nf_ct_icmpv6
{

 atomic_t count;
};
# 35 "include/net/netfilter/nf_conntrack.h" 2




union nf_conntrack_proto {

 struct nf_ct_dccp dccp;
 struct ip_ct_sctp sctp;
 struct ip_ct_tcp tcp;
 struct ip_ct_icmp icmp;
 struct nf_ct_icmpv6 icmpv6;
 struct nf_ct_gre gre;
};

union nf_conntrack_expect_proto {

};


# 1 "include/linux/netfilter/nf_conntrack_ftp.h" 1





enum nf_ct_ftp_type
{

 NF_CT_FTP_PORT,

 NF_CT_FTP_PASV,

 NF_CT_FTP_EPRT,

 NF_CT_FTP_EPSV,
};







struct nf_ct_ftp_master {

 u_int32_t seq_aft_nl[IP_CT_DIR_MAX][2];

 int seq_aft_nl_num[IP_CT_DIR_MAX];
};

struct nf_conntrack_expect;



extern unsigned int (*nf_nat_ftp_hook)(struct sk_buff *skb,
           enum ip_conntrack_info ctinfo,
           enum nf_ct_ftp_type type,
           unsigned int matchoff,
           unsigned int matchlen,
           struct nf_conntrack_expect *exp);
# 55 "include/net/netfilter/nf_conntrack.h" 2
# 1 "include/linux/netfilter/nf_conntrack_pptp.h" 1






extern const char *const pptp_msg_name[];


enum pptp_ctrlsess_state {
 PPTP_SESSION_NONE,
 PPTP_SESSION_ERROR,
 PPTP_SESSION_STOPREQ,
 PPTP_SESSION_REQUESTED,
 PPTP_SESSION_CONFIRMED,
};


enum pptp_ctrlcall_state {
 PPTP_CALL_NONE,
 PPTP_CALL_ERROR,
 PPTP_CALL_OUT_REQ,
 PPTP_CALL_OUT_CONF,
 PPTP_CALL_IN_REQ,
 PPTP_CALL_IN_REP,
 PPTP_CALL_IN_CONF,
 PPTP_CALL_CLEAR_REQ,
};


struct nf_ct_pptp_master {
 enum pptp_ctrlsess_state sstate;
 enum pptp_ctrlcall_state cstate;
 __be16 pac_call_id;
 __be16 pns_call_id;



 struct nf_ct_gre_keymap *keymap[IP_CT_DIR_MAX];
};

struct nf_nat_pptp {
 __be16 pns_call_id;
 __be16 pac_call_id;
};
# 56 "include/linux/netfilter/nf_conntrack_pptp.h"
struct pptp_pkt_hdr {
 __u16 packetLength;
 __be16 packetType;
 __be32 magicCookie;
};
# 90 "include/linux/netfilter/nf_conntrack_pptp.h"
struct PptpControlHeader {
 __be16 messageType;
 __u16 reserved;
};
# 103 "include/linux/netfilter/nf_conntrack_pptp.h"
struct PptpStartSessionRequest {
 __be16 protocolVersion;
 __u16 reserved1;
 __be32 framingCapability;
 __be32 bearerCapability;
 __be16 maxChannels;
 __be16 firmwareRevision;
 __u8 hostName[64];
 __u8 vendorString[64];
};
# 121 "include/linux/netfilter/nf_conntrack_pptp.h"
struct PptpStartSessionReply {
 __be16 protocolVersion;
 __u8 resultCode;
 __u8 generalErrorCode;
 __be32 framingCapability;
 __be32 bearerCapability;
 __be16 maxChannels;
 __be16 firmwareRevision;
 __u8 hostName[64];
 __u8 vendorString[64];
};






struct PptpStopSessionRequest {
 __u8 reason;
 __u8 reserved1;
 __u16 reserved2;
};





struct PptpStopSessionReply {
 __u8 resultCode;
 __u8 generalErrorCode;
 __u16 reserved1;
};

struct PptpEchoRequest {
 __be32 identNumber;
};





struct PptpEchoReply {
 __be32 identNumber;
 __u8 resultCode;
 __u8 generalErrorCode;
 __u16 reserved;
};
# 179 "include/linux/netfilter/nf_conntrack_pptp.h"
struct PptpOutCallRequest {
 __be16 callID;
 __be16 callSerialNumber;
 __be32 minBPS;
 __be32 maxBPS;
 __be32 bearerType;
 __be32 framingType;
 __be16 packetWindow;
 __be16 packetProcDelay;
 __be16 phoneNumberLength;
 __u16 reserved1;
 __u8 phoneNumber[64];
 __u8 subAddress[64];
};
# 203 "include/linux/netfilter/nf_conntrack_pptp.h"
struct PptpOutCallReply {
 __be16 callID;
 __be16 peersCallID;
 __u8 resultCode;
 __u8 generalErrorCode;
 __be16 causeCode;
 __be32 connectSpeed;
 __be16 packetWindow;
 __be16 packetProcDelay;
 __be32 physChannelID;
};

struct PptpInCallRequest {
 __be16 callID;
 __be16 callSerialNumber;
 __be32 callBearerType;
 __be32 physChannelID;
 __be16 dialedNumberLength;
 __be16 dialingNumberLength;
 __u8 dialedNumber[64];
 __u8 dialingNumber[64];
 __u8 subAddress[64];
};






struct PptpInCallReply {
 __be16 callID;
 __be16 peersCallID;
 __u8 resultCode;
 __u8 generalErrorCode;
 __be16 packetWindow;
 __be16 packetProcDelay;
 __u16 reserved;
};

struct PptpInCallConnected {
 __be16 peersCallID;
 __u16 reserved;
 __be32 connectSpeed;
 __be16 packetWindow;
 __be16 packetProcDelay;
 __be32 callFramingType;
};

struct PptpClearCallRequest {
 __be16 callID;
 __u16 reserved;
};

struct PptpCallDisconnectNotify {
 __be16 callID;
 __u8 resultCode;
 __u8 generalErrorCode;
 __be16 causeCode;
 __u16 reserved;
 __u8 callStatistics[128];
};

struct PptpWanErrorNotify {
 __be16 peersCallID;
 __u16 reserved;
 __be32 crcErrors;
 __be32 framingErrors;
 __be32 hardwareOverRuns;
 __be32 bufferOverRuns;
 __be32 timeoutErrors;
 __be32 alignmentErrors;
};

struct PptpSetLinkInfo {
 __be16 peersCallID;
 __u16 reserved;
 __be32 sendAccm;
 __be32 recvAccm;
};

union pptp_ctrl_union {
 struct PptpStartSessionRequest sreq;
 struct PptpStartSessionReply srep;
 struct PptpStopSessionRequest streq;
 struct PptpStopSessionReply strep;
 struct PptpOutCallRequest ocreq;
 struct PptpOutCallReply ocack;
 struct PptpInCallRequest icreq;
 struct PptpInCallReply icack;
 struct PptpInCallConnected iccon;
 struct PptpClearCallRequest clrreq;
 struct PptpCallDisconnectNotify disc;
 struct PptpWanErrorNotify wanerr;
 struct PptpSetLinkInfo setlink;
};


struct nf_conn;
struct nf_conntrack_expect;

extern int
(*nf_nat_pptp_hook_outbound)(struct sk_buff *skb,
        struct nf_conn *ct, enum ip_conntrack_info ctinfo,
        struct PptpControlHeader *ctlh,
        union pptp_ctrl_union *pptpReq);

extern int
(*nf_nat_pptp_hook_inbound)(struct sk_buff *skb,
       struct nf_conn *ct, enum ip_conntrack_info ctinfo,
       struct PptpControlHeader *ctlh,
       union pptp_ctrl_union *pptpReq);

extern void
(*nf_nat_pptp_hook_exp_gre)(struct nf_conntrack_expect *exp_orig,
       struct nf_conntrack_expect *exp_reply);

extern void
(*nf_nat_pptp_hook_expectfn)(struct nf_conn *ct,
        struct nf_conntrack_expect *exp);
# 56 "include/net/netfilter/nf_conntrack.h" 2
# 1 "include/linux/netfilter/nf_conntrack_h323.h" 1





# 1 "include/linux/netfilter/nf_conntrack_h323_asn1.h" 1
# 43 "include/linux/netfilter/nf_conntrack_h323_asn1.h"
# 1 "include/linux/netfilter/nf_conntrack_h323_types.h" 1







typedef struct TransportAddress_ipAddress {
 int options;
 unsigned ip;
} TransportAddress_ipAddress;

typedef struct TransportAddress_ip6Address {
 int options;
 unsigned ip;
} TransportAddress_ip6Address;

typedef struct TransportAddress {
 enum {
  eTransportAddress_ipAddress,
  eTransportAddress_ipSourceRoute,
  eTransportAddress_ipxAddress,
  eTransportAddress_ip6Address,
  eTransportAddress_netBios,
  eTransportAddress_nsap,
  eTransportAddress_nonStandardAddress,
 } choice;
 union {
  TransportAddress_ipAddress ipAddress;
  TransportAddress_ip6Address ip6Address;
 };
} TransportAddress;

typedef struct DataProtocolCapability {
 enum {
  eDataProtocolCapability_nonStandard,
  eDataProtocolCapability_v14buffered,
  eDataProtocolCapability_v42lapm,
  eDataProtocolCapability_hdlcFrameTunnelling,
  eDataProtocolCapability_h310SeparateVCStack,
  eDataProtocolCapability_h310SingleVCStack,
  eDataProtocolCapability_transparent,
  eDataProtocolCapability_segmentationAndReassembly,
  eDataProtocolCapability_hdlcFrameTunnelingwSAR,
  eDataProtocolCapability_v120,
  eDataProtocolCapability_separateLANStack,
  eDataProtocolCapability_v76wCompression,
  eDataProtocolCapability_tcp,
  eDataProtocolCapability_udp,
 } choice;
} DataProtocolCapability;

typedef struct DataApplicationCapability_application {
 enum {
  eDataApplicationCapability_application_nonStandard,
  eDataApplicationCapability_application_t120,
  eDataApplicationCapability_application_dsm_cc,
  eDataApplicationCapability_application_userData,
  eDataApplicationCapability_application_t84,
  eDataApplicationCapability_application_t434,
  eDataApplicationCapability_application_h224,
  eDataApplicationCapability_application_nlpid,
  eDataApplicationCapability_application_dsvdControl,
  eDataApplicationCapability_application_h222DataPartitioning,
  eDataApplicationCapability_application_t30fax,
  eDataApplicationCapability_application_t140,
  eDataApplicationCapability_application_t38fax,
  eDataApplicationCapability_application_genericDataCapability,
 } choice;
 union {
  DataProtocolCapability t120;
 };
} DataApplicationCapability_application;

typedef struct DataApplicationCapability {
 int options;
 DataApplicationCapability_application application;
} DataApplicationCapability;

typedef struct DataType {
 enum {
  eDataType_nonStandard,
  eDataType_nullData,
  eDataType_videoData,
  eDataType_audioData,
  eDataType_data,
  eDataType_encryptionData,
  eDataType_h235Control,
  eDataType_h235Media,
  eDataType_multiplexedStream,
 } choice;
 union {
  DataApplicationCapability data;
 };
} DataType;

typedef struct UnicastAddress_iPAddress {
 int options;
 unsigned network;
} UnicastAddress_iPAddress;

typedef struct UnicastAddress_iP6Address {
 int options;
 unsigned network;
} UnicastAddress_iP6Address;

typedef struct UnicastAddress {
 enum {
  eUnicastAddress_iPAddress,
  eUnicastAddress_iPXAddress,
  eUnicastAddress_iP6Address,
  eUnicastAddress_netBios,
  eUnicastAddress_iPSourceRouteAddress,
  eUnicastAddress_nsap,
  eUnicastAddress_nonStandardAddress,
 } choice;
 union {
  UnicastAddress_iPAddress iPAddress;
  UnicastAddress_iP6Address iP6Address;
 };
} UnicastAddress;

typedef struct H245_TransportAddress {
 enum {
  eH245_TransportAddress_unicastAddress,
  eH245_TransportAddress_multicastAddress,
 } choice;
 union {
  UnicastAddress unicastAddress;
 };
} H245_TransportAddress;

typedef struct H2250LogicalChannelParameters {
 enum {
  eH2250LogicalChannelParameters_nonStandard = (1 << 31),
  eH2250LogicalChannelParameters_associatedSessionID =
      (1 << 30),
  eH2250LogicalChannelParameters_mediaChannel = (1 << 29),
  eH2250LogicalChannelParameters_mediaGuaranteedDelivery =
      (1 << 28),
  eH2250LogicalChannelParameters_mediaControlChannel =
      (1 << 27),
  eH2250LogicalChannelParameters_mediaControlGuaranteedDelivery
      = (1 << 26),
  eH2250LogicalChannelParameters_silenceSuppression = (1 << 25),
  eH2250LogicalChannelParameters_destination = (1 << 24),
  eH2250LogicalChannelParameters_dynamicRTPPayloadType =
      (1 << 23),
  eH2250LogicalChannelParameters_mediaPacketization = (1 << 22),
  eH2250LogicalChannelParameters_transportCapability =
      (1 << 21),
  eH2250LogicalChannelParameters_redundancyEncoding = (1 << 20),
  eH2250LogicalChannelParameters_source = (1 << 19),
 } options;
 H245_TransportAddress mediaChannel;
 H245_TransportAddress mediaControlChannel;
} H2250LogicalChannelParameters;

typedef struct OpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters {
 enum {
  eOpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters_h222LogicalChannelParameters,
  eOpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters_h223LogicalChannelParameters,
  eOpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters_v76LogicalChannelParameters,
  eOpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters_h2250LogicalChannelParameters,
  eOpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters_none,
 } choice;
 union {
  H2250LogicalChannelParameters h2250LogicalChannelParameters;
 };
} OpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters;

typedef struct OpenLogicalChannel_forwardLogicalChannelParameters {
 enum {
  eOpenLogicalChannel_forwardLogicalChannelParameters_portNumber
      = (1 << 31),
  eOpenLogicalChannel_forwardLogicalChannelParameters_forwardLogicalChannelDependency
      = (1 << 30),
  eOpenLogicalChannel_forwardLogicalChannelParameters_replacementFor
      = (1 << 29),
 } options;
 DataType dataType;
 OpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters
     multiplexParameters;
} OpenLogicalChannel_forwardLogicalChannelParameters;

typedef struct OpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters {
 enum {
  eOpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters_h223LogicalChannelParameters,
  eOpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters_v76LogicalChannelParameters,
  eOpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters_h2250LogicalChannelParameters,
 } choice;
 union {
  H2250LogicalChannelParameters h2250LogicalChannelParameters;
 };
} OpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters;

typedef struct OpenLogicalChannel_reverseLogicalChannelParameters {
 enum {
  eOpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters
      = (1 << 31),
  eOpenLogicalChannel_reverseLogicalChannelParameters_reverseLogicalChannelDependency
      = (1 << 30),
  eOpenLogicalChannel_reverseLogicalChannelParameters_replacementFor
      = (1 << 29),
 } options;
 OpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters
     multiplexParameters;
} OpenLogicalChannel_reverseLogicalChannelParameters;

typedef struct NetworkAccessParameters_networkAddress {
 enum {
  eNetworkAccessParameters_networkAddress_q2931Address,
  eNetworkAccessParameters_networkAddress_e164Address,
  eNetworkAccessParameters_networkAddress_localAreaAddress,
 } choice;
 union {
  H245_TransportAddress localAreaAddress;
 };
} NetworkAccessParameters_networkAddress;

typedef struct NetworkAccessParameters {
 enum {
  eNetworkAccessParameters_distribution = (1 << 31),
  eNetworkAccessParameters_externalReference = (1 << 30),
  eNetworkAccessParameters_t120SetupProcedure = (1 << 29),
 } options;
 NetworkAccessParameters_networkAddress networkAddress;
} NetworkAccessParameters;

typedef struct OpenLogicalChannel {
 enum {
  eOpenLogicalChannel_reverseLogicalChannelParameters =
      (1 << 31),
  eOpenLogicalChannel_separateStack = (1 << 30),
  eOpenLogicalChannel_encryptionSync = (1 << 29),
 } options;
 OpenLogicalChannel_forwardLogicalChannelParameters
     forwardLogicalChannelParameters;
 OpenLogicalChannel_reverseLogicalChannelParameters
     reverseLogicalChannelParameters;
 NetworkAccessParameters separateStack;
} OpenLogicalChannel;

typedef struct Setup_UUIE_fastStart {
 int count;
 OpenLogicalChannel item[30];
} Setup_UUIE_fastStart;

typedef struct Setup_UUIE {
 enum {
  eSetup_UUIE_h245Address = (1 << 31),
  eSetup_UUIE_sourceAddress = (1 << 30),
  eSetup_UUIE_destinationAddress = (1 << 29),
  eSetup_UUIE_destCallSignalAddress = (1 << 28),
  eSetup_UUIE_destExtraCallInfo = (1 << 27),
  eSetup_UUIE_destExtraCRV = (1 << 26),
  eSetup_UUIE_callServices = (1 << 25),
  eSetup_UUIE_sourceCallSignalAddress = (1 << 24),
  eSetup_UUIE_remoteExtensionAddress = (1 << 23),
  eSetup_UUIE_callIdentifier = (1 << 22),
  eSetup_UUIE_h245SecurityCapability = (1 << 21),
  eSetup_UUIE_tokens = (1 << 20),
  eSetup_UUIE_cryptoTokens = (1 << 19),
  eSetup_UUIE_fastStart = (1 << 18),
  eSetup_UUIE_mediaWaitForConnect = (1 << 17),
  eSetup_UUIE_canOverlapSend = (1 << 16),
  eSetup_UUIE_endpointIdentifier = (1 << 15),
  eSetup_UUIE_multipleCalls = (1 << 14),
  eSetup_UUIE_maintainConnection = (1 << 13),
  eSetup_UUIE_connectionParameters = (1 << 12),
  eSetup_UUIE_language = (1 << 11),
  eSetup_UUIE_presentationIndicator = (1 << 10),
  eSetup_UUIE_screeningIndicator = (1 << 9),
  eSetup_UUIE_serviceControl = (1 << 8),
  eSetup_UUIE_symmetricOperationRequired = (1 << 7),
  eSetup_UUIE_capacity = (1 << 6),
  eSetup_UUIE_circuitInfo = (1 << 5),
  eSetup_UUIE_desiredProtocols = (1 << 4),
  eSetup_UUIE_neededFeatures = (1 << 3),
  eSetup_UUIE_desiredFeatures = (1 << 2),
  eSetup_UUIE_supportedFeatures = (1 << 1),
  eSetup_UUIE_parallelH245Control = (1 << 0),
 } options;
 TransportAddress h245Address;
 TransportAddress destCallSignalAddress;
 TransportAddress sourceCallSignalAddress;
 Setup_UUIE_fastStart fastStart;
} Setup_UUIE;

typedef struct CallProceeding_UUIE_fastStart {
 int count;
 OpenLogicalChannel item[30];
} CallProceeding_UUIE_fastStart;

typedef struct CallProceeding_UUIE {
 enum {
  eCallProceeding_UUIE_h245Address = (1 << 31),
  eCallProceeding_UUIE_callIdentifier = (1 << 30),
  eCallProceeding_UUIE_h245SecurityMode = (1 << 29),
  eCallProceeding_UUIE_tokens = (1 << 28),
  eCallProceeding_UUIE_cryptoTokens = (1 << 27),
  eCallProceeding_UUIE_fastStart = (1 << 26),
  eCallProceeding_UUIE_multipleCalls = (1 << 25),
  eCallProceeding_UUIE_maintainConnection = (1 << 24),
  eCallProceeding_UUIE_fastConnectRefused = (1 << 23),
  eCallProceeding_UUIE_featureSet = (1 << 22),
 } options;
 TransportAddress h245Address;
 CallProceeding_UUIE_fastStart fastStart;
} CallProceeding_UUIE;

typedef struct Connect_UUIE_fastStart {
 int count;
 OpenLogicalChannel item[30];
} Connect_UUIE_fastStart;

typedef struct Connect_UUIE {
 enum {
  eConnect_UUIE_h245Address = (1 << 31),
  eConnect_UUIE_callIdentifier = (1 << 30),
  eConnect_UUIE_h245SecurityMode = (1 << 29),
  eConnect_UUIE_tokens = (1 << 28),
  eConnect_UUIE_cryptoTokens = (1 << 27),
  eConnect_UUIE_fastStart = (1 << 26),
  eConnect_UUIE_multipleCalls = (1 << 25),
  eConnect_UUIE_maintainConnection = (1 << 24),
  eConnect_UUIE_language = (1 << 23),
  eConnect_UUIE_connectedAddress = (1 << 22),
  eConnect_UUIE_presentationIndicator = (1 << 21),
  eConnect_UUIE_screeningIndicator = (1 << 20),
  eConnect_UUIE_fastConnectRefused = (1 << 19),
  eConnect_UUIE_serviceControl = (1 << 18),
  eConnect_UUIE_capacity = (1 << 17),
  eConnect_UUIE_featureSet = (1 << 16),
 } options;
 TransportAddress h245Address;
 Connect_UUIE_fastStart fastStart;
} Connect_UUIE;

typedef struct Alerting_UUIE_fastStart {
 int count;
 OpenLogicalChannel item[30];
} Alerting_UUIE_fastStart;

typedef struct Alerting_UUIE {
 enum {
  eAlerting_UUIE_h245Address = (1 << 31),
  eAlerting_UUIE_callIdentifier = (1 << 30),
  eAlerting_UUIE_h245SecurityMode = (1 << 29),
  eAlerting_UUIE_tokens = (1 << 28),
  eAlerting_UUIE_cryptoTokens = (1 << 27),
  eAlerting_UUIE_fastStart = (1 << 26),
  eAlerting_UUIE_multipleCalls = (1 << 25),
  eAlerting_UUIE_maintainConnection = (1 << 24),
  eAlerting_UUIE_alertingAddress = (1 << 23),
  eAlerting_UUIE_presentationIndicator = (1 << 22),
  eAlerting_UUIE_screeningIndicator = (1 << 21),
  eAlerting_UUIE_fastConnectRefused = (1 << 20),
  eAlerting_UUIE_serviceControl = (1 << 19),
  eAlerting_UUIE_capacity = (1 << 18),
  eAlerting_UUIE_featureSet = (1 << 17),
 } options;
 TransportAddress h245Address;
 Alerting_UUIE_fastStart fastStart;
} Alerting_UUIE;

typedef struct FacilityReason {
 enum {
  eFacilityReason_routeCallToGatekeeper,
  eFacilityReason_callForwarded,
  eFacilityReason_routeCallToMC,
  eFacilityReason_undefinedReason,
  eFacilityReason_conferenceListChoice,
  eFacilityReason_startH245,
  eFacilityReason_noH245,
  eFacilityReason_newTokens,
  eFacilityReason_featureSetUpdate,
  eFacilityReason_forwardedElements,
  eFacilityReason_transportedInformation,
 } choice;
} FacilityReason;

typedef struct Facility_UUIE_fastStart {
 int count;
 OpenLogicalChannel item[30];
} Facility_UUIE_fastStart;

typedef struct Facility_UUIE {
 enum {
  eFacility_UUIE_alternativeAddress = (1 << 31),
  eFacility_UUIE_alternativeAliasAddress = (1 << 30),
  eFacility_UUIE_conferenceID = (1 << 29),
  eFacility_UUIE_callIdentifier = (1 << 28),
  eFacility_UUIE_destExtraCallInfo = (1 << 27),
  eFacility_UUIE_remoteExtensionAddress = (1 << 26),
  eFacility_UUIE_tokens = (1 << 25),
  eFacility_UUIE_cryptoTokens = (1 << 24),
  eFacility_UUIE_conferences = (1 << 23),
  eFacility_UUIE_h245Address = (1 << 22),
  eFacility_UUIE_fastStart = (1 << 21),
  eFacility_UUIE_multipleCalls = (1 << 20),
  eFacility_UUIE_maintainConnection = (1 << 19),
  eFacility_UUIE_fastConnectRefused = (1 << 18),
  eFacility_UUIE_serviceControl = (1 << 17),
  eFacility_UUIE_circuitInfo = (1 << 16),
  eFacility_UUIE_featureSet = (1 << 15),
  eFacility_UUIE_destinationInfo = (1 << 14),
  eFacility_UUIE_h245SecurityMode = (1 << 13),
 } options;
 TransportAddress alternativeAddress;
 FacilityReason reason;
 TransportAddress h245Address;
 Facility_UUIE_fastStart fastStart;
} Facility_UUIE;

typedef struct Progress_UUIE_fastStart {
 int count;
 OpenLogicalChannel item[30];
} Progress_UUIE_fastStart;

typedef struct Progress_UUIE {
 enum {
  eProgress_UUIE_h245Address = (1 << 31),
  eProgress_UUIE_h245SecurityMode = (1 << 30),
  eProgress_UUIE_tokens = (1 << 29),
  eProgress_UUIE_cryptoTokens = (1 << 28),
  eProgress_UUIE_fastStart = (1 << 27),
  eProgress_UUIE_multipleCalls = (1 << 26),
  eProgress_UUIE_maintainConnection = (1 << 25),
  eProgress_UUIE_fastConnectRefused = (1 << 24),
 } options;
 TransportAddress h245Address;
 Progress_UUIE_fastStart fastStart;
} Progress_UUIE;

typedef struct H323_UU_PDU_h323_message_body {
 enum {
  eH323_UU_PDU_h323_message_body_setup,
  eH323_UU_PDU_h323_message_body_callProceeding,
  eH323_UU_PDU_h323_message_body_connect,
  eH323_UU_PDU_h323_message_body_alerting,
  eH323_UU_PDU_h323_message_body_information,
  eH323_UU_PDU_h323_message_body_releaseComplete,
  eH323_UU_PDU_h323_message_body_facility,
  eH323_UU_PDU_h323_message_body_progress,
  eH323_UU_PDU_h323_message_body_empty,
  eH323_UU_PDU_h323_message_body_status,
  eH323_UU_PDU_h323_message_body_statusInquiry,
  eH323_UU_PDU_h323_message_body_setupAcknowledge,
  eH323_UU_PDU_h323_message_body_notify,
 } choice;
 union {
  Setup_UUIE setup;
  CallProceeding_UUIE callProceeding;
  Connect_UUIE connect;
  Alerting_UUIE alerting;
  Facility_UUIE facility;
  Progress_UUIE progress;
 };
} H323_UU_PDU_h323_message_body;

typedef struct RequestMessage {
 enum {
  eRequestMessage_nonStandard,
  eRequestMessage_masterSlaveDetermination,
  eRequestMessage_terminalCapabilitySet,
  eRequestMessage_openLogicalChannel,
  eRequestMessage_closeLogicalChannel,
  eRequestMessage_requestChannelClose,
  eRequestMessage_multiplexEntrySend,
  eRequestMessage_requestMultiplexEntry,
  eRequestMessage_requestMode,
  eRequestMessage_roundTripDelayRequest,
  eRequestMessage_maintenanceLoopRequest,
  eRequestMessage_communicationModeRequest,
  eRequestMessage_conferenceRequest,
  eRequestMessage_multilinkRequest,
  eRequestMessage_logicalChannelRateRequest,
 } choice;
 union {
  OpenLogicalChannel openLogicalChannel;
 };
} RequestMessage;

typedef struct OpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters {
 enum {
  eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters_h222LogicalChannelParameters,
  eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters_h2250LogicalChannelParameters,
 } choice;
 union {
  H2250LogicalChannelParameters h2250LogicalChannelParameters;
 };
} OpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters;

typedef struct OpenLogicalChannelAck_reverseLogicalChannelParameters {
 enum {
  eOpenLogicalChannelAck_reverseLogicalChannelParameters_portNumber
      = (1 << 31),
  eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters
      = (1 << 30),
  eOpenLogicalChannelAck_reverseLogicalChannelParameters_replacementFor
      = (1 << 29),
 } options;
 OpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters
     multiplexParameters;
} OpenLogicalChannelAck_reverseLogicalChannelParameters;

typedef struct H2250LogicalChannelAckParameters {
 enum {
  eH2250LogicalChannelAckParameters_nonStandard = (1 << 31),
  eH2250LogicalChannelAckParameters_sessionID = (1 << 30),
  eH2250LogicalChannelAckParameters_mediaChannel = (1 << 29),
  eH2250LogicalChannelAckParameters_mediaControlChannel =
      (1 << 28),
  eH2250LogicalChannelAckParameters_dynamicRTPPayloadType =
      (1 << 27),
  eH2250LogicalChannelAckParameters_flowControlToZero =
      (1 << 26),
  eH2250LogicalChannelAckParameters_portNumber = (1 << 25),
 } options;
 H245_TransportAddress mediaChannel;
 H245_TransportAddress mediaControlChannel;
} H2250LogicalChannelAckParameters;

typedef struct OpenLogicalChannelAck_forwardMultiplexAckParameters {
 enum {
  eOpenLogicalChannelAck_forwardMultiplexAckParameters_h2250LogicalChannelAckParameters,
 } choice;
 union {
  H2250LogicalChannelAckParameters
      h2250LogicalChannelAckParameters;
 };
} OpenLogicalChannelAck_forwardMultiplexAckParameters;

typedef struct OpenLogicalChannelAck {
 enum {
  eOpenLogicalChannelAck_reverseLogicalChannelParameters =
      (1 << 31),
  eOpenLogicalChannelAck_separateStack = (1 << 30),
  eOpenLogicalChannelAck_forwardMultiplexAckParameters =
      (1 << 29),
  eOpenLogicalChannelAck_encryptionSync = (1 << 28),
 } options;
 OpenLogicalChannelAck_reverseLogicalChannelParameters
     reverseLogicalChannelParameters;
 NetworkAccessParameters separateStack;
 OpenLogicalChannelAck_forwardMultiplexAckParameters
     forwardMultiplexAckParameters;
} OpenLogicalChannelAck;

typedef struct ResponseMessage {
 enum {
  eResponseMessage_nonStandard,
  eResponseMessage_masterSlaveDeterminationAck,
  eResponseMessage_masterSlaveDeterminationReject,
  eResponseMessage_terminalCapabilitySetAck,
  eResponseMessage_terminalCapabilitySetReject,
  eResponseMessage_openLogicalChannelAck,
  eResponseMessage_openLogicalChannelReject,
  eResponseMessage_closeLogicalChannelAck,
  eResponseMessage_requestChannelCloseAck,
  eResponseMessage_requestChannelCloseReject,
  eResponseMessage_multiplexEntrySendAck,
  eResponseMessage_multiplexEntrySendReject,
  eResponseMessage_requestMultiplexEntryAck,
  eResponseMessage_requestMultiplexEntryReject,
  eResponseMessage_requestModeAck,
  eResponseMessage_requestModeReject,
  eResponseMessage_roundTripDelayResponse,
  eResponseMessage_maintenanceLoopAck,
  eResponseMessage_maintenanceLoopReject,
  eResponseMessage_communicationModeResponse,
  eResponseMessage_conferenceResponse,
  eResponseMessage_multilinkResponse,
  eResponseMessage_logicalChannelRateAcknowledge,
  eResponseMessage_logicalChannelRateReject,
 } choice;
 union {
  OpenLogicalChannelAck openLogicalChannelAck;
 };
} ResponseMessage;

typedef struct MultimediaSystemControlMessage {
 enum {
  eMultimediaSystemControlMessage_request,
  eMultimediaSystemControlMessage_response,
  eMultimediaSystemControlMessage_command,
  eMultimediaSystemControlMessage_indication,
 } choice;
 union {
  RequestMessage request;
  ResponseMessage response;
 };
} MultimediaSystemControlMessage;

typedef struct H323_UU_PDU_h245Control {
 int count;
 MultimediaSystemControlMessage item[4];
} H323_UU_PDU_h245Control;

typedef struct H323_UU_PDU {
 enum {
  eH323_UU_PDU_nonStandardData = (1 << 31),
  eH323_UU_PDU_h4501SupplementaryService = (1 << 30),
  eH323_UU_PDU_h245Tunneling = (1 << 29),
  eH323_UU_PDU_h245Control = (1 << 28),
  eH323_UU_PDU_nonStandardControl = (1 << 27),
  eH323_UU_PDU_callLinkage = (1 << 26),
  eH323_UU_PDU_tunnelledSignallingMessage = (1 << 25),
  eH323_UU_PDU_provisionalRespToH245Tunneling = (1 << 24),
  eH323_UU_PDU_stimulusControl = (1 << 23),
  eH323_UU_PDU_genericData = (1 << 22),
 } options;
 H323_UU_PDU_h323_message_body h323_message_body;
 H323_UU_PDU_h245Control h245Control;
} H323_UU_PDU;

typedef struct H323_UserInformation {
 enum {
  eH323_UserInformation_user_data = (1 << 31),
 } options;
 H323_UU_PDU h323_uu_pdu;
} H323_UserInformation;

typedef struct GatekeeperRequest {
 enum {
  eGatekeeperRequest_nonStandardData = (1 << 31),
  eGatekeeperRequest_gatekeeperIdentifier = (1 << 30),
  eGatekeeperRequest_callServices = (1 << 29),
  eGatekeeperRequest_endpointAlias = (1 << 28),
  eGatekeeperRequest_alternateEndpoints = (1 << 27),
  eGatekeeperRequest_tokens = (1 << 26),
  eGatekeeperRequest_cryptoTokens = (1 << 25),
  eGatekeeperRequest_authenticationCapability = (1 << 24),
  eGatekeeperRequest_algorithmOIDs = (1 << 23),
  eGatekeeperRequest_integrity = (1 << 22),
  eGatekeeperRequest_integrityCheckValue = (1 << 21),
  eGatekeeperRequest_supportsAltGK = (1 << 20),
  eGatekeeperRequest_featureSet = (1 << 19),
  eGatekeeperRequest_genericData = (1 << 18),
 } options;
 TransportAddress rasAddress;
} GatekeeperRequest;

typedef struct GatekeeperConfirm {
 enum {
  eGatekeeperConfirm_nonStandardData = (1 << 31),
  eGatekeeperConfirm_gatekeeperIdentifier = (1 << 30),
  eGatekeeperConfirm_alternateGatekeeper = (1 << 29),
  eGatekeeperConfirm_authenticationMode = (1 << 28),
  eGatekeeperConfirm_tokens = (1 << 27),
  eGatekeeperConfirm_cryptoTokens = (1 << 26),
  eGatekeeperConfirm_algorithmOID = (1 << 25),
  eGatekeeperConfirm_integrity = (1 << 24),
  eGatekeeperConfirm_integrityCheckValue = (1 << 23),
  eGatekeeperConfirm_featureSet = (1 << 22),
  eGatekeeperConfirm_genericData = (1 << 21),
 } options;
 TransportAddress rasAddress;
} GatekeeperConfirm;

typedef struct RegistrationRequest_callSignalAddress {
 int count;
 TransportAddress item[10];
} RegistrationRequest_callSignalAddress;

typedef struct RegistrationRequest_rasAddress {
 int count;
 TransportAddress item[10];
} RegistrationRequest_rasAddress;

typedef struct RegistrationRequest {
 enum {
  eRegistrationRequest_nonStandardData = (1 << 31),
  eRegistrationRequest_terminalAlias = (1 << 30),
  eRegistrationRequest_gatekeeperIdentifier = (1 << 29),
  eRegistrationRequest_alternateEndpoints = (1 << 28),
  eRegistrationRequest_timeToLive = (1 << 27),
  eRegistrationRequest_tokens = (1 << 26),
  eRegistrationRequest_cryptoTokens = (1 << 25),
  eRegistrationRequest_integrityCheckValue = (1 << 24),
  eRegistrationRequest_keepAlive = (1 << 23),
  eRegistrationRequest_endpointIdentifier = (1 << 22),
  eRegistrationRequest_willSupplyUUIEs = (1 << 21),
  eRegistrationRequest_maintainConnection = (1 << 20),
  eRegistrationRequest_alternateTransportAddresses = (1 << 19),
  eRegistrationRequest_additiveRegistration = (1 << 18),
  eRegistrationRequest_terminalAliasPattern = (1 << 17),
  eRegistrationRequest_supportsAltGK = (1 << 16),
  eRegistrationRequest_usageReportingCapability = (1 << 15),
  eRegistrationRequest_multipleCalls = (1 << 14),
  eRegistrationRequest_supportedH248Packages = (1 << 13),
  eRegistrationRequest_callCreditCapability = (1 << 12),
  eRegistrationRequest_capacityReportingCapability = (1 << 11),
  eRegistrationRequest_capacity = (1 << 10),
  eRegistrationRequest_featureSet = (1 << 9),
  eRegistrationRequest_genericData = (1 << 8),
 } options;
 RegistrationRequest_callSignalAddress callSignalAddress;
 RegistrationRequest_rasAddress rasAddress;
 unsigned timeToLive;
} RegistrationRequest;

typedef struct RegistrationConfirm_callSignalAddress {
 int count;
 TransportAddress item[10];
} RegistrationConfirm_callSignalAddress;

typedef struct RegistrationConfirm {
 enum {
  eRegistrationConfirm_nonStandardData = (1 << 31),
  eRegistrationConfirm_terminalAlias = (1 << 30),
  eRegistrationConfirm_gatekeeperIdentifier = (1 << 29),
  eRegistrationConfirm_alternateGatekeeper = (1 << 28),
  eRegistrationConfirm_timeToLive = (1 << 27),
  eRegistrationConfirm_tokens = (1 << 26),
  eRegistrationConfirm_cryptoTokens = (1 << 25),
  eRegistrationConfirm_integrityCheckValue = (1 << 24),
  eRegistrationConfirm_willRespondToIRR = (1 << 23),
  eRegistrationConfirm_preGrantedARQ = (1 << 22),
  eRegistrationConfirm_maintainConnection = (1 << 21),
  eRegistrationConfirm_serviceControl = (1 << 20),
  eRegistrationConfirm_supportsAdditiveRegistration = (1 << 19),
  eRegistrationConfirm_terminalAliasPattern = (1 << 18),
  eRegistrationConfirm_supportedPrefixes = (1 << 17),
  eRegistrationConfirm_usageSpec = (1 << 16),
  eRegistrationConfirm_featureServerAlias = (1 << 15),
  eRegistrationConfirm_capacityReportingSpec = (1 << 14),
  eRegistrationConfirm_featureSet = (1 << 13),
  eRegistrationConfirm_genericData = (1 << 12),
 } options;
 RegistrationConfirm_callSignalAddress callSignalAddress;
 unsigned timeToLive;
} RegistrationConfirm;

typedef struct UnregistrationRequest_callSignalAddress {
 int count;
 TransportAddress item[10];
} UnregistrationRequest_callSignalAddress;

typedef struct UnregistrationRequest {
 enum {
  eUnregistrationRequest_endpointAlias = (1 << 31),
  eUnregistrationRequest_nonStandardData = (1 << 30),
  eUnregistrationRequest_endpointIdentifier = (1 << 29),
  eUnregistrationRequest_alternateEndpoints = (1 << 28),
  eUnregistrationRequest_gatekeeperIdentifier = (1 << 27),
  eUnregistrationRequest_tokens = (1 << 26),
  eUnregistrationRequest_cryptoTokens = (1 << 25),
  eUnregistrationRequest_integrityCheckValue = (1 << 24),
  eUnregistrationRequest_reason = (1 << 23),
  eUnregistrationRequest_endpointAliasPattern = (1 << 22),
  eUnregistrationRequest_supportedPrefixes = (1 << 21),
  eUnregistrationRequest_alternateGatekeeper = (1 << 20),
  eUnregistrationRequest_genericData = (1 << 19),
 } options;
 UnregistrationRequest_callSignalAddress callSignalAddress;
} UnregistrationRequest;

typedef struct AdmissionRequest {
 enum {
  eAdmissionRequest_callModel = (1 << 31),
  eAdmissionRequest_destinationInfo = (1 << 30),
  eAdmissionRequest_destCallSignalAddress = (1 << 29),
  eAdmissionRequest_destExtraCallInfo = (1 << 28),
  eAdmissionRequest_srcCallSignalAddress = (1 << 27),
  eAdmissionRequest_nonStandardData = (1 << 26),
  eAdmissionRequest_callServices = (1 << 25),
  eAdmissionRequest_canMapAlias = (1 << 24),
  eAdmissionRequest_callIdentifier = (1 << 23),
  eAdmissionRequest_srcAlternatives = (1 << 22),
  eAdmissionRequest_destAlternatives = (1 << 21),
  eAdmissionRequest_gatekeeperIdentifier = (1 << 20),
  eAdmissionRequest_tokens = (1 << 19),
  eAdmissionRequest_cryptoTokens = (1 << 18),
  eAdmissionRequest_integrityCheckValue = (1 << 17),
  eAdmissionRequest_transportQOS = (1 << 16),
  eAdmissionRequest_willSupplyUUIEs = (1 << 15),
  eAdmissionRequest_callLinkage = (1 << 14),
  eAdmissionRequest_gatewayDataRate = (1 << 13),
  eAdmissionRequest_capacity = (1 << 12),
  eAdmissionRequest_circuitInfo = (1 << 11),
  eAdmissionRequest_desiredProtocols = (1 << 10),
  eAdmissionRequest_desiredTunnelledProtocol = (1 << 9),
  eAdmissionRequest_featureSet = (1 << 8),
  eAdmissionRequest_genericData = (1 << 7),
 } options;
 TransportAddress destCallSignalAddress;
 TransportAddress srcCallSignalAddress;
} AdmissionRequest;

typedef struct AdmissionConfirm {
 enum {
  eAdmissionConfirm_irrFrequency = (1 << 31),
  eAdmissionConfirm_nonStandardData = (1 << 30),
  eAdmissionConfirm_destinationInfo = (1 << 29),
  eAdmissionConfirm_destExtraCallInfo = (1 << 28),
  eAdmissionConfirm_destinationType = (1 << 27),
  eAdmissionConfirm_remoteExtensionAddress = (1 << 26),
  eAdmissionConfirm_alternateEndpoints = (1 << 25),
  eAdmissionConfirm_tokens = (1 << 24),
  eAdmissionConfirm_cryptoTokens = (1 << 23),
  eAdmissionConfirm_integrityCheckValue = (1 << 22),
  eAdmissionConfirm_transportQOS = (1 << 21),
  eAdmissionConfirm_willRespondToIRR = (1 << 20),
  eAdmissionConfirm_uuiesRequested = (1 << 19),
  eAdmissionConfirm_language = (1 << 18),
  eAdmissionConfirm_alternateTransportAddresses = (1 << 17),
  eAdmissionConfirm_useSpecifiedTransport = (1 << 16),
  eAdmissionConfirm_circuitInfo = (1 << 15),
  eAdmissionConfirm_usageSpec = (1 << 14),
  eAdmissionConfirm_supportedProtocols = (1 << 13),
  eAdmissionConfirm_serviceControl = (1 << 12),
  eAdmissionConfirm_multipleCalls = (1 << 11),
  eAdmissionConfirm_featureSet = (1 << 10),
  eAdmissionConfirm_genericData = (1 << 9),
 } options;
 TransportAddress destCallSignalAddress;
} AdmissionConfirm;

typedef struct LocationRequest {
 enum {
  eLocationRequest_endpointIdentifier = (1 << 31),
  eLocationRequest_nonStandardData = (1 << 30),
  eLocationRequest_sourceInfo = (1 << 29),
  eLocationRequest_canMapAlias = (1 << 28),
  eLocationRequest_gatekeeperIdentifier = (1 << 27),
  eLocationRequest_tokens = (1 << 26),
  eLocationRequest_cryptoTokens = (1 << 25),
  eLocationRequest_integrityCheckValue = (1 << 24),
  eLocationRequest_desiredProtocols = (1 << 23),
  eLocationRequest_desiredTunnelledProtocol = (1 << 22),
  eLocationRequest_featureSet = (1 << 21),
  eLocationRequest_genericData = (1 << 20),
  eLocationRequest_hopCount = (1 << 19),
  eLocationRequest_circuitInfo = (1 << 18),
 } options;
 TransportAddress replyAddress;
} LocationRequest;

typedef struct LocationConfirm {
 enum {
  eLocationConfirm_nonStandardData = (1 << 31),
  eLocationConfirm_destinationInfo = (1 << 30),
  eLocationConfirm_destExtraCallInfo = (1 << 29),
  eLocationConfirm_destinationType = (1 << 28),
  eLocationConfirm_remoteExtensionAddress = (1 << 27),
  eLocationConfirm_alternateEndpoints = (1 << 26),
  eLocationConfirm_tokens = (1 << 25),
  eLocationConfirm_cryptoTokens = (1 << 24),
  eLocationConfirm_integrityCheckValue = (1 << 23),
  eLocationConfirm_alternateTransportAddresses = (1 << 22),
  eLocationConfirm_supportedProtocols = (1 << 21),
  eLocationConfirm_multipleCalls = (1 << 20),
  eLocationConfirm_featureSet = (1 << 19),
  eLocationConfirm_genericData = (1 << 18),
  eLocationConfirm_circuitInfo = (1 << 17),
  eLocationConfirm_serviceControl = (1 << 16),
 } options;
 TransportAddress callSignalAddress;
 TransportAddress rasAddress;
} LocationConfirm;

typedef struct InfoRequestResponse_callSignalAddress {
 int count;
 TransportAddress item[10];
} InfoRequestResponse_callSignalAddress;

typedef struct InfoRequestResponse {
 enum {
  eInfoRequestResponse_nonStandardData = (1 << 31),
  eInfoRequestResponse_endpointAlias = (1 << 30),
  eInfoRequestResponse_perCallInfo = (1 << 29),
  eInfoRequestResponse_tokens = (1 << 28),
  eInfoRequestResponse_cryptoTokens = (1 << 27),
  eInfoRequestResponse_integrityCheckValue = (1 << 26),
  eInfoRequestResponse_needResponse = (1 << 25),
  eInfoRequestResponse_capacity = (1 << 24),
  eInfoRequestResponse_irrStatus = (1 << 23),
  eInfoRequestResponse_unsolicited = (1 << 22),
  eInfoRequestResponse_genericData = (1 << 21),
 } options;
 TransportAddress rasAddress;
 InfoRequestResponse_callSignalAddress callSignalAddress;
} InfoRequestResponse;

typedef struct RasMessage {
 enum {
  eRasMessage_gatekeeperRequest,
  eRasMessage_gatekeeperConfirm,
  eRasMessage_gatekeeperReject,
  eRasMessage_registrationRequest,
  eRasMessage_registrationConfirm,
  eRasMessage_registrationReject,
  eRasMessage_unregistrationRequest,
  eRasMessage_unregistrationConfirm,
  eRasMessage_unregistrationReject,
  eRasMessage_admissionRequest,
  eRasMessage_admissionConfirm,
  eRasMessage_admissionReject,
  eRasMessage_bandwidthRequest,
  eRasMessage_bandwidthConfirm,
  eRasMessage_bandwidthReject,
  eRasMessage_disengageRequest,
  eRasMessage_disengageConfirm,
  eRasMessage_disengageReject,
  eRasMessage_locationRequest,
  eRasMessage_locationConfirm,
  eRasMessage_locationReject,
  eRasMessage_infoRequest,
  eRasMessage_infoRequestResponse,
  eRasMessage_nonStandardMessage,
  eRasMessage_unknownMessageResponse,
  eRasMessage_requestInProgress,
  eRasMessage_resourcesAvailableIndicate,
  eRasMessage_resourcesAvailableConfirm,
  eRasMessage_infoRequestAck,
  eRasMessage_infoRequestNak,
  eRasMessage_serviceControlIndication,
  eRasMessage_serviceControlResponse,
 } choice;
 union {
  GatekeeperRequest gatekeeperRequest;
  GatekeeperConfirm gatekeeperConfirm;
  RegistrationRequest registrationRequest;
  RegistrationConfirm registrationConfirm;
  UnregistrationRequest unregistrationRequest;
  AdmissionRequest admissionRequest;
  AdmissionConfirm admissionConfirm;
  LocationRequest locationRequest;
  LocationConfirm locationConfirm;
  InfoRequestResponse infoRequestResponse;
 };
} RasMessage;
# 44 "include/linux/netfilter/nf_conntrack_h323_asn1.h" 2

typedef struct {
 enum {
  Q931_NationalEscape = 0x00,
  Q931_Alerting = 0x01,
  Q931_CallProceeding = 0x02,
  Q931_Connect = 0x07,
  Q931_ConnectAck = 0x0F,
  Q931_Progress = 0x03,
  Q931_Setup = 0x05,
  Q931_SetupAck = 0x0D,
  Q931_Resume = 0x26,
  Q931_ResumeAck = 0x2E,
  Q931_ResumeReject = 0x22,
  Q931_Suspend = 0x25,
  Q931_SuspendAck = 0x2D,
  Q931_SuspendReject = 0x21,
  Q931_UserInformation = 0x20,
  Q931_Disconnect = 0x45,
  Q931_Release = 0x4D,
  Q931_ReleaseComplete = 0x5A,
  Q931_Restart = 0x46,
  Q931_RestartAck = 0x4E,
  Q931_Segment = 0x60,
  Q931_CongestionCtrl = 0x79,
  Q931_Information = 0x7B,
  Q931_Notify = 0x6E,
  Q931_Status = 0x7D,
  Q931_StatusEnquiry = 0x75,
  Q931_Facility = 0x62
 } MessageType;
 H323_UserInformation UUIE;
} Q931;
# 92 "include/linux/netfilter/nf_conntrack_h323_asn1.h"
int DecodeRasMessage(unsigned char *buf, size_t sz, RasMessage * ras);
int DecodeQ931(unsigned char *buf, size_t sz, Q931 * q931);
int DecodeMultimediaSystemControlMessage(unsigned char *buf, size_t sz,
      MultimediaSystemControlMessage *
      mscm);
# 7 "include/linux/netfilter/nf_conntrack_h323.h" 2






struct nf_ct_h323_master {


 __be16 sig_port[IP_CT_DIR_MAX];


 __be16 rtp_port[4][IP_CT_DIR_MAX];

 union {

  u_int32_t timeout;


  u_int16_t tpkt_len[IP_CT_DIR_MAX];
 };
};

struct nf_conn;

extern int get_h225_addr(struct nf_conn *ct, unsigned char *data,
    TransportAddress *taddr,
    union nf_inet_addr *addr, __be16 *port);
extern void nf_conntrack_h245_expect(struct nf_conn *new,
         struct nf_conntrack_expect *this);
extern void nf_conntrack_q931_expect(struct nf_conn *new,
         struct nf_conntrack_expect *this);
extern int (*set_h245_addr_hook) (struct sk_buff *skb,
      unsigned char **data, int dataoff,
      H245_TransportAddress *taddr,
      union nf_inet_addr *addr,
      __be16 port);
extern int (*set_h225_addr_hook) (struct sk_buff *skb,
      unsigned char **data, int dataoff,
      TransportAddress *taddr,
      union nf_inet_addr *addr,
      __be16 port);
extern int (*set_sig_addr_hook) (struct sk_buff *skb,
     struct nf_conn *ct,
     enum ip_conntrack_info ctinfo,
     unsigned char **data,
     TransportAddress *taddr, int count);
extern int (*set_ras_addr_hook) (struct sk_buff *skb,
     struct nf_conn *ct,
     enum ip_conntrack_info ctinfo,
     unsigned char **data,
     TransportAddress *taddr, int count);
extern int (*nat_rtp_rtcp_hook) (struct sk_buff *skb,
     struct nf_conn *ct,
     enum ip_conntrack_info ctinfo,
     unsigned char **data, int dataoff,
     H245_TransportAddress *taddr,
     __be16 port, __be16 rtp_port,
     struct nf_conntrack_expect *rtp_exp,
     struct nf_conntrack_expect *rtcp_exp);
extern int (*nat_t120_hook) (struct sk_buff *skb, struct nf_conn *ct,
        enum ip_conntrack_info ctinfo,
        unsigned char **data, int dataoff,
        H245_TransportAddress *taddr, __be16 port,
        struct nf_conntrack_expect *exp);
extern int (*nat_h245_hook) (struct sk_buff *skb, struct nf_conn *ct,
        enum ip_conntrack_info ctinfo,
        unsigned char **data, int dataoff,
        TransportAddress *taddr, __be16 port,
        struct nf_conntrack_expect *exp);
extern int (*nat_callforwarding_hook) (struct sk_buff *skb,
           struct nf_conn *ct,
           enum ip_conntrack_info ctinfo,
           unsigned char **data, int dataoff,
           TransportAddress *taddr,
           __be16 port,
           struct nf_conntrack_expect *exp);
extern int (*nat_q931_hook) (struct sk_buff *skb, struct nf_conn *ct,
        enum ip_conntrack_info ctinfo,
        unsigned char **data, TransportAddress *taddr,
        int idx, __be16 port,
        struct nf_conntrack_expect *exp);
# 57 "include/net/netfilter/nf_conntrack.h" 2
# 1 "include/linux/netfilter/nf_conntrack_sane.h" 1
# 9 "include/linux/netfilter/nf_conntrack_sane.h"
enum sane_state {
 SANE_STATE_NORMAL,
 SANE_STATE_START_REQUESTED,
};


struct nf_ct_sane_master {
 enum sane_state state;
};
# 58 "include/net/netfilter/nf_conntrack.h" 2
# 1 "include/linux/netfilter/nf_conntrack_sip.h" 1







struct nf_ct_sip_master {
 unsigned int register_cseq;
 unsigned int invite_cseq;
};

enum sip_expectation_classes {
 SIP_EXPECT_SIGNALLING,
 SIP_EXPECT_AUDIO,
 SIP_EXPECT_VIDEO,
 __SIP_EXPECT_MAX
};


struct sdp_media_type {
 const char *name;
 unsigned int len;
 enum sip_expectation_classes class;
};
# 34 "include/linux/netfilter/nf_conntrack_sip.h"
struct sip_handler {
 const char *method;
 unsigned int len;
 int (*request)(struct sk_buff *skb,
       const char **dptr, unsigned int *datalen,
       unsigned int cseq);
 int (*response)(struct sk_buff *skb,
        const char **dptr, unsigned int *datalen,
        unsigned int cseq, unsigned int code);
};
# 53 "include/linux/netfilter/nf_conntrack_sip.h"
struct sip_header {
 const char *name;
 const char *cname;
 const char *search;
 unsigned int len;
 unsigned int clen;
 unsigned int slen;
 int (*match_len)(const struct nf_conn *ct,
         const char *dptr, const char *limit,
         int *shift);
};
# 82 "include/linux/netfilter/nf_conntrack_sip.h"
enum sip_header_types {
 SIP_HDR_CSEQ,
 SIP_HDR_FROM,
 SIP_HDR_TO,
 SIP_HDR_CONTACT,
 SIP_HDR_VIA,
 SIP_HDR_EXPIRES,
 SIP_HDR_CONTENT_LENGTH,
};

enum sdp_header_types {
 SDP_HDR_UNSPEC,
 SDP_HDR_VERSION,
 SDP_HDR_OWNER_IP4,
 SDP_HDR_CONNECTION_IP4,
 SDP_HDR_OWNER_IP6,
 SDP_HDR_CONNECTION_IP6,
 SDP_HDR_MEDIA,
};

extern unsigned int (*nf_nat_sip_hook)(struct sk_buff *skb,
           const char **dptr,
           unsigned int *datalen);
extern unsigned int (*nf_nat_sip_expect_hook)(struct sk_buff *skb,
           const char **dptr,
           unsigned int *datalen,
           struct nf_conntrack_expect *exp,
           unsigned int matchoff,
           unsigned int matchlen);
extern unsigned int (*nf_nat_sdp_addr_hook)(struct sk_buff *skb,
         const char **dptr,
         unsigned int dataoff,
         unsigned int *datalen,
         enum sdp_header_types type,
         enum sdp_header_types term,
         const union nf_inet_addr *addr);
extern unsigned int (*nf_nat_sdp_port_hook)(struct sk_buff *skb,
         const char **dptr,
         unsigned int *datalen,
         unsigned int matchoff,
         unsigned int matchlen,
         u_int16_t port);
extern unsigned int (*nf_nat_sdp_session_hook)(struct sk_buff *skb,
            const char **dptr,
            unsigned int dataoff,
            unsigned int *datalen,
            const union nf_inet_addr *addr);
extern unsigned int (*nf_nat_sdp_media_hook)(struct sk_buff *skb,
          const char **dptr,
          unsigned int *datalen,
          struct nf_conntrack_expect *rtp_exp,
          struct nf_conntrack_expect *rtcp_exp,
          unsigned int mediaoff,
          unsigned int medialen,
          union nf_inet_addr *rtp_addr);

extern int ct_sip_parse_request(const struct nf_conn *ct,
    const char *dptr, unsigned int datalen,
    unsigned int *matchoff, unsigned int *matchlen,
    union nf_inet_addr *addr, __be16 *port);
extern int ct_sip_get_header(const struct nf_conn *ct, const char *dptr,
        unsigned int dataoff, unsigned int datalen,
        enum sip_header_types type,
        unsigned int *matchoff, unsigned int *matchlen);
extern int ct_sip_parse_header_uri(const struct nf_conn *ct, const char *dptr,
       unsigned int *dataoff, unsigned int datalen,
       enum sip_header_types type, int *in_header,
       unsigned int *matchoff, unsigned int *matchlen,
       union nf_inet_addr *addr, __be16 *port);
extern int ct_sip_parse_address_param(const struct nf_conn *ct, const char *dptr,
          unsigned int dataoff, unsigned int datalen,
          const char *name,
          unsigned int *matchoff, unsigned int *matchlen,
          union nf_inet_addr *addr);
extern int ct_sip_parse_numerical_param(const struct nf_conn *ct, const char *dptr,
     unsigned int off, unsigned int datalen,
     const char *name,
     unsigned int *matchoff, unsigned int *matchen,
     unsigned int *val);

extern int ct_sip_get_sdp_header(const struct nf_conn *ct, const char *dptr,
     unsigned int dataoff, unsigned int datalen,
     enum sdp_header_types type,
     enum sdp_header_types term,
     unsigned int *matchoff, unsigned int *matchlen);
# 59 "include/net/netfilter/nf_conntrack.h" 2


union nf_conntrack_help {

 struct nf_ct_ftp_master ct_ftp_info;
 struct nf_ct_pptp_master ct_pptp_info;
 struct nf_ct_h323_master ct_h323_info;
 struct nf_ct_sane_master ct_sane_info;
 struct nf_ct_sip_master ct_sip_info;
};
# 80 "include/net/netfilter/nf_conntrack.h"
struct nf_conntrack_helper;





struct nf_conn_help {

 struct nf_conntrack_helper *helper;

 union nf_conntrack_help help;

 struct hlist_head expectations;


 u8 expecting[3];
};

# 1 "include/net/netfilter/ipv4/nf_conntrack_ipv4.h" 1
# 13 "include/net/netfilter/ipv4/nf_conntrack_ipv4.h"
extern struct nf_conntrack_l3proto nf_conntrack_l3proto_ipv4;

extern struct nf_conntrack_l4proto nf_conntrack_l4proto_tcp4;
extern struct nf_conntrack_l4proto nf_conntrack_l4proto_udp4;
extern struct nf_conntrack_l4proto nf_conntrack_l4proto_icmp;

extern int nf_conntrack_ipv4_compat_init(void);
extern void nf_conntrack_ipv4_compat_fini(void);

extern void need_ipv4_conntrack(void);
# 99 "include/net/netfilter/nf_conntrack.h" 2
# 1 "include/net/netfilter/ipv6/nf_conntrack_ipv6.h" 1



extern struct nf_conntrack_l3proto nf_conntrack_l3proto_ipv6;

extern struct nf_conntrack_l4proto nf_conntrack_l4proto_tcp6;
extern struct nf_conntrack_l4proto nf_conntrack_l4proto_udp6;
extern struct nf_conntrack_l4proto nf_conntrack_l4proto_icmpv6;

extern int nf_ct_frag6_init(void);
extern void nf_ct_frag6_cleanup(void);
extern struct sk_buff *nf_ct_frag6_gather(struct sk_buff *skb);
extern void nf_ct_frag6_output(unsigned int hooknum, struct sk_buff *skb,
          struct net_device *in,
          struct net_device *out,
          int (*okfn)(struct sk_buff *));

struct inet_frags_ctl;


extern struct ctl_table nf_ct_ipv6_sysctl_table[];
# 100 "include/net/netfilter/nf_conntrack.h" 2

struct nf_conn {



 struct nf_conntrack ct_general;




 struct nf_conntrack_tuple_hash tuplehash[IP_CT_DIR_MAX];


 unsigned long status;


 struct nf_conn *master;


 struct timer_list timeout;


 union nf_conntrack_proto proto;


 struct nf_ct_ext *ext;






       struct list_head state_tuple;
# 142 "include/net/netfilter/nf_conntrack.h"
};

static inline __attribute__((always_inline)) struct nf_conn *
nf_ct_tuplehash_to_ctrack(const struct nf_conntrack_tuple_hash *hash)
{
 return ({ const typeof( ((struct nf_conn *)0)->tuplehash[hash->tuple.dst.dir] ) *__mptr = (hash); (struct nf_conn *)( (char *)__mptr - ((size_t) &((struct nf_conn *)0)->tuplehash[hash->tuple.dst.dir]) );});

}

static inline __attribute__((always_inline)) u_int16_t nf_ct_l3num(const struct nf_conn *ct)
{
 return ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple.src.l3num;
}

static inline __attribute__((always_inline)) u_int8_t nf_ct_protonum(const struct nf_conn *ct)
{
 return ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple.dst.protonum;
}




extern struct net init_net;

static inline __attribute__((always_inline)) struct net *nf_ct_net(const struct nf_conn *ct)
{



 return &init_net;

}


extern void
nf_conntrack_alter_reply(struct nf_conn *ct,
    const struct nf_conntrack_tuple *newreply);



extern int
nf_conntrack_tuple_taken(const struct nf_conntrack_tuple *tuple,
    const struct nf_conn *ignored_conntrack);




static inline __attribute__((always_inline)) struct nf_conn *
nf_ct_get(const struct sk_buff *skb, enum ip_conntrack_info *ctinfo)
{
 *ctinfo = skb->nfctinfo;
 return (struct nf_conn *)skb->nfct;
}


static inline __attribute__((always_inline)) void nf_ct_put(struct nf_conn *ct)
{
 ;
 nf_conntrack_put(&ct->ct_general);
}



extern int nf_ct_l3proto_try_module_get(unsigned short l3proto);
extern void nf_ct_l3proto_module_put(unsigned short l3proto);





extern void *nf_ct_alloc_hashtable(unsigned int *sizep, int *vmalloced, int nulls);

extern void nf_ct_free_hashtable(void *hash, int vmalloced, unsigned int size);

extern struct nf_conntrack_tuple_hash *
__nf_conntrack_find(struct net *net, const struct nf_conntrack_tuple *tuple);

extern void nf_conntrack_hash_insert(struct nf_conn *ct);

extern void nf_conntrack_flush(struct net *net, u32 pid, int report);

extern bool nf_ct_get_tuplepr(const struct sk_buff *skb,
         unsigned int nhoff, u_int16_t l3num,
         struct nf_conntrack_tuple *tuple);
extern bool nf_ct_invert_tuplepr(struct nf_conntrack_tuple *inverse,
     const struct nf_conntrack_tuple *orig);

extern void __nf_ct_refresh_acct(struct nf_conn *ct,
     enum ip_conntrack_info ctinfo,
     const struct sk_buff *skb,
     unsigned long extra_jiffies,
     int do_acct);


extern void __nf_ct_refresh_acct_proto(struct nf_conn *ct,
          enum ip_conntrack_info ctinfo,
          const struct sk_buff *skb,
          unsigned long extra_jiffies,
          int do_acct,
          unsigned char proto,
          void * extra1,
          void * extra2);

static inline __attribute__((always_inline)) void nf_ct_refresh_acct_tcp(struct nf_conn *ct,
          enum ip_conntrack_info ctinfo,
          const struct sk_buff *skb,
          unsigned long extra_jiffies,
          enum tcp_conntrack oldstate,
          enum tcp_conntrack newstate)
{
 __nf_ct_refresh_acct_proto(ct, ctinfo, skb, extra_jiffies, 1, 6, (void *)oldstate, (void *)newstate);
}


static inline __attribute__((always_inline)) void nf_ct_refresh_acct_udp(struct nf_conn *ct,
          enum ip_conntrack_info ctinfo,
          const struct sk_buff *skb,
          unsigned long extra_jiffies, char * status)
{
 __nf_ct_refresh_acct_proto(ct, ctinfo, skb, extra_jiffies, 1, 17, (void *)status, (void *)0);
}




static inline __attribute__((always_inline)) void nf_ct_refresh_acct(struct nf_conn *ct,
          enum ip_conntrack_info ctinfo,
          const struct sk_buff *skb,
          unsigned long extra_jiffies)
{
 __nf_ct_refresh_acct(ct, ctinfo, skb, extra_jiffies, 1);
}


static inline __attribute__((always_inline)) void nf_ct_refresh(struct nf_conn *ct,
     const struct sk_buff *skb,
     unsigned long extra_jiffies)
{
 __nf_ct_refresh_acct(ct, 0, skb, extra_jiffies, 0);
}

extern bool __nf_ct_kill_acct(struct nf_conn *ct,
         enum ip_conntrack_info ctinfo,
         const struct sk_buff *skb,
         int do_acct);


static inline __attribute__((always_inline)) bool nf_ct_kill_acct(struct nf_conn *ct,
       enum ip_conntrack_info ctinfo,
       const struct sk_buff *skb)
{
 return __nf_ct_kill_acct(ct, ctinfo, skb, 1);
}


static inline __attribute__((always_inline)) bool nf_ct_kill(struct nf_conn *ct)
{
 return __nf_ct_kill_acct(ct, 0, ((void *)0), 0);
}



extern void nf_conntrack_tcp_update(const struct sk_buff *skb,
        unsigned int dataoff,
        struct nf_conn *ct, int dir,
        s16 offset);


extern struct nf_conn nf_conntrack_untracked;


extern void
nf_ct_iterate_cleanup(struct net *net, int (*iter)(struct nf_conn *i, void *data), void *data);
extern void nf_conntrack_free(struct nf_conn *ct);
extern struct nf_conn *
nf_conntrack_alloc(struct net *net,
     const struct nf_conntrack_tuple *orig,
     const struct nf_conntrack_tuple *repl,
     gfp_t gfp);


static inline __attribute__((always_inline)) int nf_ct_is_confirmed(struct nf_conn *ct)
{
 return test_bit(IPS_CONFIRMED_BIT, &ct->status);
}

static inline __attribute__((always_inline)) int nf_ct_is_dying(struct nf_conn *ct)
{
 return test_bit(IPS_DYING_BIT, &ct->status);
}


static inline __attribute__((always_inline)) int nf_ct_is_untracked(const struct sk_buff *skb)
{
 return (skb->nfct == &nf_conntrack_untracked.ct_general);
}


extern int nf_conntrack_set_hashsize(const char *val, struct kernel_param *kp);
extern unsigned int nf_conntrack_htable_size;
extern unsigned int nf_conntrack_max;
# 6 "net/rtl/fastpath/fastpath_common.c" 2
# 1 "include/net/netfilter/nf_conntrack_core.h" 1
# 16 "include/net/netfilter/nf_conntrack_core.h"
# 1 "include/net/netfilter/nf_conntrack_l3proto.h" 1
# 14 "include/net/netfilter/nf_conntrack_l3proto.h"
# 1 "include/linux/netlink.h" 1
# 33 "include/linux/netlink.h"
struct net;

struct sockaddr_nl
{
 sa_family_t nl_family;
 unsigned short nl_pad;
 __u32 nl_pid;
        __u32 nl_groups;
};

struct nlmsghdr
{
 __u32 nlmsg_len;
 __u16 nlmsg_type;
 __u16 nlmsg_flags;
 __u32 nlmsg_seq;
 __u32 nlmsg_pid;
};
# 100 "include/linux/netlink.h"
struct nlmsgerr
{
 int error;
 struct nlmsghdr msg;
};







struct nl_pktinfo
{
 __u32 group;
};



enum {
 NETLINK_UNCONNECTED = 0,
 NETLINK_CONNECTED,
};
# 133 "include/linux/netlink.h"
struct nlattr
{
 __u16 nla_len;
 __u16 nla_type;
};
# 162 "include/linux/netlink.h"
static inline __attribute__((always_inline)) struct nlmsghdr *nlmsg_hdr(const struct sk_buff *skb)
{
 return (struct nlmsghdr *)skb->data;
}

struct netlink_skb_parms
{
 struct ucred creds;
 __u32 pid;
 __u32 dst_group;
 kernel_cap_t eff_cap;
 __u32 loginuid;
 __u32 sessionid;
 __u32 sid;
};




extern int rtk_nlrecvmsg(struct sk_buff *_skb,int _len, void *_recv_data);
extern int rtk_nlsendmsg (int _pid,struct sock *_nl_sk,int _len,void *_send_info);

extern struct sock *netlink_kernel_create(struct net *net,
       int unit,unsigned int groups,
       void (*input)(struct sk_buff *skb),
       struct mutex *cb_mutex,
       struct module *module);
extern void netlink_kernel_release(struct sock *sk);
extern int netlink_change_ngroups(struct sock *sk, unsigned int groups);
extern void netlink_clear_multicast_users(struct sock *sk, unsigned int group);
extern void netlink_ack(struct sk_buff *in_skb, struct nlmsghdr *nlh, int err);
extern int netlink_has_listeners(struct sock *sk, unsigned int group);
extern int netlink_unicast(struct sock *ssk, struct sk_buff *skb, __u32 pid, int nonblock);
extern int netlink_broadcast(struct sock *ssk, struct sk_buff *skb, __u32 pid,
        __u32 group, gfp_t allocation);
extern void netlink_set_err(struct sock *ssk, __u32 pid, __u32 group, int code);
extern int netlink_register_notifier(struct notifier_block *nb);
extern int netlink_unregister_notifier(struct notifier_block *nb);


struct sock *netlink_getsockbyfilp(struct file *filp);
int netlink_attachskb(struct sock *sk, struct sk_buff *skb,
        long *timeo, struct sock *ssk);
void netlink_detachskb(struct sock *sk, struct sk_buff *skb);
int netlink_sendskb(struct sock *sk, struct sk_buff *skb);
# 223 "include/linux/netlink.h"
struct netlink_callback
{
 struct sk_buff *skb;
 struct nlmsghdr *nlh;
 int (*dump)(struct sk_buff * skb, struct netlink_callback *cb);
 int (*done)(struct netlink_callback *cb);
 int family;
 long args[6];
};

struct netlink_notify
{
 struct net *net;
 int pid;
 int protocol;
};

static __inline__ __attribute__((always_inline)) struct nlmsghdr *
__nlmsg_put(struct sk_buff *skb, u32 pid, u32 seq, int type, int len, int flags)
{
 struct nlmsghdr *nlh;
 int size = ((len)+( ((((int) ( ((sizeof(struct nlmsghdr))+4 -1) & ~(4 -1) )))+4 -1) & ~(4 -1) ));

 nlh = (struct nlmsghdr*)skb_put(skb, ( ((size)+4 -1) & ~(4 -1) ));
 nlh->nlmsg_type = type;
 nlh->nlmsg_len = size;
 nlh->nlmsg_flags = flags;
 nlh->nlmsg_pid = pid;
 nlh->nlmsg_seq = seq;
 if (!__builtin_constant_p(size) || ( ((size)+4 -1) & ~(4 -1) ) - size != 0)
  memset(((void*)(((char*)nlh) + ((0)+( ((((int) ( ((sizeof(struct nlmsghdr))+4 -1) & ~(4 -1) )))+4 -1) & ~(4 -1) )))) + len, 0, ( ((size)+4 -1) & ~(4 -1) ) - size);
 return nlh;
}
# 265 "include/linux/netlink.h"
extern int netlink_dump_start(struct sock *ssk, struct sk_buff *skb,
         struct nlmsghdr *nlh,
         int (*dump)(struct sk_buff *skb, struct netlink_callback*),
         int (*done)(struct netlink_callback*));




extern void netlink_set_nonroot(int protocol, unsigned flag);
# 15 "include/net/netfilter/nf_conntrack_l3proto.h" 2
# 1 "include/net/netlink.h" 1
# 164 "include/net/netlink.h"
enum {
 NLA_UNSPEC,
 NLA_U8,
 NLA_U16,
 NLA_U32,
 NLA_U64,
 NLA_STRING,
 NLA_FLAG,
 NLA_MSECS,
 NLA_NESTED,
 NLA_NESTED_COMPAT,
 NLA_NUL_STRING,
 NLA_BINARY,
 __NLA_TYPE_MAX,
};
# 205 "include/net/netlink.h"
struct nla_policy {
 u16 type;
 u16 len;
};






struct nl_info {
 struct nlmsghdr *nlh;
 struct net *nl_net;
 u32 pid;
};

extern int netlink_rcv_skb(struct sk_buff *skb,
     int (*cb)(struct sk_buff *,
        struct nlmsghdr *));
extern int nlmsg_notify(struct sock *sk, struct sk_buff *skb,
         u32 pid, unsigned int group, int report,
         gfp_t flags);

extern int nla_validate(struct nlattr *head, int len, int maxtype,
         const struct nla_policy *policy);
extern int nla_parse(struct nlattr *tb[], int maxtype,
      struct nlattr *head, int len,
      const struct nla_policy *policy);
extern int nla_policy_len(const struct nla_policy *, int);
extern struct nlattr * nla_find(struct nlattr *head, int len, int attrtype);
extern size_t nla_strlcpy(char *dst, const struct nlattr *nla,
        size_t dstsize);
extern int nla_memcpy(void *dest, const struct nlattr *src, int count);
extern int nla_memcmp(const struct nlattr *nla, const void *data,
       size_t size);
extern int nla_strcmp(const struct nlattr *nla, const char *str);
extern struct nlattr * __nla_reserve(struct sk_buff *skb, int attrtype,
          int attrlen);
extern void * __nla_reserve_nohdr(struct sk_buff *skb, int attrlen);
extern struct nlattr * nla_reserve(struct sk_buff *skb, int attrtype,
        int attrlen);
extern void * nla_reserve_nohdr(struct sk_buff *skb, int attrlen);
extern void __nla_put(struct sk_buff *skb, int attrtype,
      int attrlen, const void *data);
extern void __nla_put_nohdr(struct sk_buff *skb, int attrlen,
     const void *data);
extern int nla_put(struct sk_buff *skb, int attrtype,
    int attrlen, const void *data);
extern int nla_put_nohdr(struct sk_buff *skb, int attrlen,
          const void *data);
extern int nla_append(struct sk_buff *skb, int attrlen,
       const void *data);
# 266 "include/net/netlink.h"
static inline __attribute__((always_inline)) int nlmsg_msg_size(int payload)
{
 return ((int) ( ((sizeof(struct nlmsghdr))+4 -1) & ~(4 -1) )) + payload;
}





static inline __attribute__((always_inline)) int nlmsg_total_size(int payload)
{
 return ( ((nlmsg_msg_size(payload))+4 -1) & ~(4 -1) );
}





static inline __attribute__((always_inline)) int nlmsg_padlen(int payload)
{
 return nlmsg_total_size(payload) - nlmsg_msg_size(payload);
}





static inline __attribute__((always_inline)) void *nlmsg_data(const struct nlmsghdr *nlh)
{
 return (unsigned char *) nlh + ((int) ( ((sizeof(struct nlmsghdr))+4 -1) & ~(4 -1) ));
}





static inline __attribute__((always_inline)) int nlmsg_len(const struct nlmsghdr *nlh)
{
 return nlh->nlmsg_len - ((int) ( ((sizeof(struct nlmsghdr))+4 -1) & ~(4 -1) ));
}






static inline __attribute__((always_inline)) struct nlattr *nlmsg_attrdata(const struct nlmsghdr *nlh,
         int hdrlen)
{
 unsigned char *data = nlmsg_data(nlh);
 return (struct nlattr *) (data + ( ((hdrlen)+4 -1) & ~(4 -1) ));
}






static inline __attribute__((always_inline)) int nlmsg_attrlen(const struct nlmsghdr *nlh, int hdrlen)
{
 return nlmsg_len(nlh) - ( ((hdrlen)+4 -1) & ~(4 -1) );
}






static inline __attribute__((always_inline)) int nlmsg_ok(const struct nlmsghdr *nlh, int remaining)
{
 return (remaining >= (int) sizeof(struct nlmsghdr) &&
  nlh->nlmsg_len >= sizeof(struct nlmsghdr) &&
  nlh->nlmsg_len <= remaining);
}
# 349 "include/net/netlink.h"
static inline __attribute__((always_inline)) struct nlmsghdr *nlmsg_next(struct nlmsghdr *nlh, int *remaining)
{
 int totlen = ( ((nlh->nlmsg_len)+4 -1) & ~(4 -1) );

 *remaining -= totlen;

 return (struct nlmsghdr *) ((unsigned char *) nlh + totlen);
}
# 368 "include/net/netlink.h"
static inline __attribute__((always_inline)) int nlmsg_parse(struct nlmsghdr *nlh, int hdrlen,
         struct nlattr *tb[], int maxtype,
         const struct nla_policy *policy)
{
 if (nlh->nlmsg_len < nlmsg_msg_size(hdrlen))
  return -22;

 return nla_parse(tb, maxtype, nlmsg_attrdata(nlh, hdrlen),
    nlmsg_attrlen(nlh, hdrlen), policy);
}
# 387 "include/net/netlink.h"
static inline __attribute__((always_inline)) struct nlattr *nlmsg_find_attr(struct nlmsghdr *nlh,
          int hdrlen, int attrtype)
{
 return nla_find(nlmsg_attrdata(nlh, hdrlen),
   nlmsg_attrlen(nlh, hdrlen), attrtype);
}
# 401 "include/net/netlink.h"
static inline __attribute__((always_inline)) int nlmsg_validate(struct nlmsghdr *nlh, int hdrlen, int maxtype,
     const struct nla_policy *policy)
{
 if (nlh->nlmsg_len < nlmsg_msg_size(hdrlen))
  return -22;

 return nla_validate(nlmsg_attrdata(nlh, hdrlen),
       nlmsg_attrlen(nlh, hdrlen), maxtype, policy);
}







static inline __attribute__((always_inline)) int nlmsg_report(struct nlmsghdr *nlh)
{
 return !!(nlh->nlmsg_flags & 8);
}
# 480 "include/net/netlink.h"
static inline __attribute__((always_inline)) struct nlmsghdr *nlmsg_put(struct sk_buff *skb, u32 pid, u32 seq,
      int type, int payload, int flags)
{
 if (__builtin_expect(!!(skb_tailroom(skb) < nlmsg_total_size(payload)), 0))
  return ((void *)0);

 return __nlmsg_put(skb, pid, seq, type, payload, flags);
}
# 500 "include/net/netlink.h"
static inline __attribute__((always_inline)) struct nlmsghdr *nlmsg_put_answer(struct sk_buff *skb,
      struct netlink_callback *cb,
      int type, int payload,
      int flags)
{
 return nlmsg_put(skb, (*(struct netlink_skb_parms*)&((cb->skb)->cb)).pid, cb->nlh->nlmsg_seq,
    type, payload, flags);
}
# 517 "include/net/netlink.h"
static inline __attribute__((always_inline)) struct sk_buff *nlmsg_new(size_t payload, gfp_t flags)
{
 return alloc_skb(nlmsg_total_size(payload), flags);
}
# 533 "include/net/netlink.h"
static inline __attribute__((always_inline)) int nlmsg_end(struct sk_buff *skb, struct nlmsghdr *nlh)
{
 nlh->nlmsg_len = skb_tail_pointer(skb) - (unsigned char *)nlh;

 return skb->len;
}







static inline __attribute__((always_inline)) void *nlmsg_get_pos(struct sk_buff *skb)
{
 return skb_tail_pointer(skb);
}
# 558 "include/net/netlink.h"
static inline __attribute__((always_inline)) void nlmsg_trim(struct sk_buff *skb, const void *mark)
{
 if (mark)
  skb_trim(skb, (unsigned char *) mark - skb->data);
}
# 572 "include/net/netlink.h"
static inline __attribute__((always_inline)) void nlmsg_cancel(struct sk_buff *skb, struct nlmsghdr *nlh)
{
 nlmsg_trim(skb, nlh);
}





static inline __attribute__((always_inline)) void nlmsg_free(struct sk_buff *skb)
{
 kfree_skb(skb);
}
# 594 "include/net/netlink.h"
static inline __attribute__((always_inline)) int nlmsg_multicast(struct sock *sk, struct sk_buff *skb,
      u32 pid, unsigned int group, gfp_t flags)
{
 int err;

 (*(struct netlink_skb_parms*)&((skb)->cb)).dst_group = group;

 err = netlink_broadcast(sk, skb, pid, group, flags);
 if (err > 0)
  err = 0;

 return err;
}







static inline __attribute__((always_inline)) int nlmsg_unicast(struct sock *sk, struct sk_buff *skb, u32 pid)
{
 int err;

 err = netlink_unicast(sk, skb, pid, 0x40);
 if (err > 0)
  err = 0;

 return err;
}
# 645 "include/net/netlink.h"
static inline __attribute__((always_inline)) int nla_attr_size(int payload)
{
 return ((int) (((sizeof(struct nlattr)) + 4 - 1) & ~(4 - 1))) + payload;
}





static inline __attribute__((always_inline)) int nla_total_size(int payload)
{
 return (((nla_attr_size(payload)) + 4 - 1) & ~(4 - 1));
}





static inline __attribute__((always_inline)) int nla_padlen(int payload)
{
 return nla_total_size(payload) - nla_attr_size(payload);
}





static inline __attribute__((always_inline)) int nla_type(const struct nlattr *nla)
{
 return nla->nla_type & ~((1 << 15) | (1 << 14));
}





static inline __attribute__((always_inline)) void *nla_data(const struct nlattr *nla)
{
 return (char *) nla + ((int) (((sizeof(struct nlattr)) + 4 - 1) & ~(4 - 1)));
}





static inline __attribute__((always_inline)) int nla_len(const struct nlattr *nla)
{
 return nla->nla_len - ((int) (((sizeof(struct nlattr)) + 4 - 1) & ~(4 - 1)));
}






static inline __attribute__((always_inline)) int nla_ok(const struct nlattr *nla, int remaining)
{
 return remaining >= (int) sizeof(*nla) &&
        nla->nla_len >= sizeof(*nla) &&
        nla->nla_len <= remaining;
}
# 715 "include/net/netlink.h"
static inline __attribute__((always_inline)) struct nlattr *nla_next(const struct nlattr *nla, int *remaining)
{
 int totlen = (((nla->nla_len) + 4 - 1) & ~(4 - 1));

 *remaining -= totlen;
 return (struct nlattr *) ((char *) nla + totlen);
}
# 730 "include/net/netlink.h"
static inline __attribute__((always_inline)) struct nlattr *nla_find_nested(struct nlattr *nla, int attrtype)
{
 return nla_find(nla_data(nla), nla_len(nla), attrtype);
}
# 744 "include/net/netlink.h"
static inline __attribute__((always_inline)) int nla_parse_nested(struct nlattr *tb[], int maxtype,
       const struct nlattr *nla,
       const struct nla_policy *policy)
{
 return nla_parse(tb, maxtype, nla_data(nla), nla_len(nla), policy);
}







static inline __attribute__((always_inline)) int nla_put_u8(struct sk_buff *skb, int attrtype, u8 value)
{
 return nla_put(skb, attrtype, sizeof(u8), &value);
}







static inline __attribute__((always_inline)) int nla_put_u16(struct sk_buff *skb, int attrtype, u16 value)
{
 return nla_put(skb, attrtype, sizeof(u16), &value);
}







static inline __attribute__((always_inline)) int nla_put_u32(struct sk_buff *skb, int attrtype, u32 value)
{
 return nla_put(skb, attrtype, sizeof(u32), &value);
}







static inline __attribute__((always_inline)) int nla_put_u64(struct sk_buff *skb, int attrtype, u64 value)
{
 return nla_put(skb, attrtype, sizeof(u64), &value);
}







static inline __attribute__((always_inline)) int nla_put_string(struct sk_buff *skb, int attrtype,
     const char *str)
{
 return nla_put(skb, attrtype, strlen(str) + 1, str);
}






static inline __attribute__((always_inline)) int nla_put_flag(struct sk_buff *skb, int attrtype)
{
 return nla_put(skb, attrtype, 0, ((void *)0));
}







static inline __attribute__((always_inline)) int nla_put_msecs(struct sk_buff *skb, int attrtype,
    unsigned long jiffies)
{
 u64 tmp = jiffies_to_msecs(jiffies);
 return nla_put(skb, attrtype, sizeof(u64), &tmp);
}
# 879 "include/net/netlink.h"
static inline __attribute__((always_inline)) u32 nla_get_u32(const struct nlattr *nla)
{
 return *(u32 *) nla_data(nla);
}





static inline __attribute__((always_inline)) __be32 nla_get_be32(const struct nlattr *nla)
{
 return *(__be32 *) nla_data(nla);
}





static inline __attribute__((always_inline)) u16 nla_get_u16(const struct nlattr *nla)
{
 return *(u16 *) nla_data(nla);
}





static inline __attribute__((always_inline)) __be16 nla_get_be16(const struct nlattr *nla)
{
 return *(__be16 *) nla_data(nla);
}





static inline __attribute__((always_inline)) __le16 nla_get_le16(const struct nlattr *nla)
{
 return *(__le16 *) nla_data(nla);
}





static inline __attribute__((always_inline)) u8 nla_get_u8(const struct nlattr *nla)
{
 return *(u8 *) nla_data(nla);
}





static inline __attribute__((always_inline)) u64 nla_get_u64(const struct nlattr *nla)
{
 u64 tmp;

 nla_memcpy(&tmp, nla, sizeof(tmp));

 return tmp;
}





static inline __attribute__((always_inline)) int nla_get_flag(const struct nlattr *nla)
{
 return !!nla;
}







static inline __attribute__((always_inline)) unsigned long nla_get_msecs(const struct nlattr *nla)
{
 u64 msecs = nla_get_u64(nla);

 return msecs_to_jiffies((unsigned long) msecs);
}
# 971 "include/net/netlink.h"
static inline __attribute__((always_inline)) struct nlattr *nla_nest_start(struct sk_buff *skb, int attrtype)
{
 struct nlattr *start = (struct nlattr *)skb_tail_pointer(skb);

 if (nla_put(skb, attrtype, 0, ((void *)0)) < 0)
  return ((void *)0);

 return start;
}
# 991 "include/net/netlink.h"
static inline __attribute__((always_inline)) int nla_nest_end(struct sk_buff *skb, struct nlattr *start)
{
 start->nla_len = skb_tail_pointer(skb) - (unsigned char *)start;
 return skb->len;
}
# 1005 "include/net/netlink.h"
static inline __attribute__((always_inline)) void nla_nest_cancel(struct sk_buff *skb, struct nlattr *start)
{
 nlmsg_trim(skb, start);
}
# 1022 "include/net/netlink.h"
static inline __attribute__((always_inline)) int nla_validate_nested(struct nlattr *start, int maxtype,
          const struct nla_policy *policy)
{
 return nla_validate(nla_data(start), nla_len(start), maxtype, policy);
}
# 16 "include/net/netfilter/nf_conntrack_l3proto.h" 2



struct nf_conntrack_l3proto
{

 u_int16_t l3proto;


 const char *name;





 bool (*pkt_to_tuple)(const struct sk_buff *skb, unsigned int nhoff,
        struct nf_conntrack_tuple *tuple);





 bool (*invert_tuple)(struct nf_conntrack_tuple *inverse,
        const struct nf_conntrack_tuple *orig);


 int (*print_tuple)(struct seq_file *s,
      const struct nf_conntrack_tuple *);






 int (*get_l4proto)(const struct sk_buff *skb, unsigned int nhoff,
      unsigned int *dataoff, u_int8_t *protonum);

 int (*tuple_to_nlattr)(struct sk_buff *skb,
          const struct nf_conntrack_tuple *t);




 int (*nlattr_tuple_size)(void);

 int (*nlattr_to_tuple)(struct nlattr *tb[],
          struct nf_conntrack_tuple *t);
 const struct nla_policy *nla_policy;

 size_t nla_size;


 struct ctl_table_header *ctl_table_header;
 struct ctl_path *ctl_table_path;
 struct ctl_table *ctl_table;



 struct module *me;
};

extern struct nf_conntrack_l3proto *nf_ct_l3protos[36];


extern int nf_conntrack_l3proto_register(struct nf_conntrack_l3proto *proto);
extern void nf_conntrack_l3proto_unregister(struct nf_conntrack_l3proto *proto);
extern struct nf_conntrack_l3proto *nf_ct_l3proto_find_get(u_int16_t l3proto);
extern void nf_ct_l3proto_put(struct nf_conntrack_l3proto *p);


extern struct nf_conntrack_l3proto nf_conntrack_l3proto_generic;

static inline __attribute__((always_inline)) struct nf_conntrack_l3proto *
__nf_ct_l3proto_find(u_int16_t l3proto)
{
 if (__builtin_expect(!!(l3proto >= 36), 0))
  return &nf_conntrack_l3proto_generic;
 return ({ typeof(nf_ct_l3protos[l3proto]) _________p1 = (*(volatile typeof(nf_ct_l3protos[l3proto]) *)&(nf_ct_l3protos[l3proto])); do { } while(0); (_________p1); });
}
# 17 "include/net/netfilter/nf_conntrack_core.h" 2
# 1 "include/net/netfilter/nf_conntrack_l4proto.h" 1
# 16 "include/net/netfilter/nf_conntrack_l4proto.h"
struct seq_file;

struct nf_conntrack_l4proto
{

 u_int16_t l3proto;


 u_int8_t l4proto;



 bool (*pkt_to_tuple)(const struct sk_buff *skb, unsigned int dataoff,
        struct nf_conntrack_tuple *tuple);




 bool (*invert_tuple)(struct nf_conntrack_tuple *inverse,
        const struct nf_conntrack_tuple *orig);


 int (*packet)(struct nf_conn *ct,
        const struct sk_buff *skb,
        unsigned int dataoff,
        enum ip_conntrack_info ctinfo,
        u_int8_t pf,
        unsigned int hooknum);



 bool (*new)(struct nf_conn *ct, const struct sk_buff *skb,
      unsigned int dataoff);


 void (*destroy)(struct nf_conn *ct);

 int (*error)(struct net *net, struct sk_buff *skb, unsigned int dataoff,
       enum ip_conntrack_info *ctinfo,
       u_int8_t pf, unsigned int hooknum);


 int (*print_tuple)(struct seq_file *s,
      const struct nf_conntrack_tuple *);


 int (*print_conntrack)(struct seq_file *s, const struct nf_conn *);


 int (*to_nlattr)(struct sk_buff *skb, struct nlattr *nla,
    const struct nf_conn *ct);

 int (*nlattr_size)(void);


 int (*from_nlattr)(struct nlattr *tb[], struct nf_conn *ct);

 int (*tuple_to_nlattr)(struct sk_buff *skb,
          const struct nf_conntrack_tuple *t);

 int (*nlattr_tuple_size)(void);
 int (*nlattr_to_tuple)(struct nlattr *tb[],
          struct nf_conntrack_tuple *t);
 const struct nla_policy *nla_policy;

 size_t nla_size;


 struct ctl_table_header **ctl_table_header;
 struct ctl_table *ctl_table;
 unsigned int *ctl_table_users;

 struct ctl_table_header *ctl_compat_table_header;
 struct ctl_table *ctl_compat_table;



 const char *name;


 struct module *me;
};


extern struct nf_conntrack_l4proto nf_conntrack_l4proto_generic;



extern struct nf_conntrack_l4proto *
__nf_ct_l4proto_find(u_int16_t l3proto, u_int8_t l4proto);


extern int nf_conntrack_l4proto_register(struct nf_conntrack_l4proto *proto);
extern void nf_conntrack_l4proto_unregister(struct nf_conntrack_l4proto *proto);


extern int nf_ct_port_tuple_to_nlattr(struct sk_buff *skb,
          const struct nf_conntrack_tuple *tuple);
extern int nf_ct_port_nlattr_to_tuple(struct nlattr *tb[],
          struct nf_conntrack_tuple *t);
extern int nf_ct_port_nlattr_tuple_size(void);
extern const struct nla_policy nf_ct_port_nla_policy[];
# 18 "include/net/netfilter/nf_conntrack_core.h" 2
# 1 "include/net/netfilter/nf_conntrack_ecache.h" 1
# 12 "include/net/netfilter/nf_conntrack_ecache.h"
# 1 "include/net/netfilter/nf_conntrack_expect.h" 1
# 9 "include/net/netfilter/nf_conntrack_expect.h"
extern unsigned int nf_ct_expect_hsize;
extern unsigned int nf_ct_expect_max;

struct nf_conntrack_expect
{

 struct hlist_node lnode;


 struct hlist_node hnode;


 struct nf_conntrack_tuple tuple;
 struct nf_conntrack_tuple_mask mask;


 void (*expectfn)(struct nf_conn *new,
    struct nf_conntrack_expect *this);


 struct nf_conntrack_helper *helper;


 struct nf_conn *master;


 struct timer_list timeout;


 atomic_t use;


 unsigned int flags;


 unsigned int class;


 __be32 saved_ip;


 union nf_conntrack_man_proto saved_proto;

 enum ip_conntrack_dir dir;


 struct rcu_head rcu;
};

static inline __attribute__((always_inline)) struct net *nf_ct_exp_net(struct nf_conntrack_expect *exp)
{



 return &init_net;

}

struct nf_conntrack_expect_policy
{
 unsigned int max_expected;
 unsigned int timeout;
};






int nf_conntrack_expect_init(struct net *net);
void nf_conntrack_expect_fini(struct net *net);

struct nf_conntrack_expect *
__nf_ct_expect_find(struct net *net, const struct nf_conntrack_tuple *tuple);

struct nf_conntrack_expect *
nf_ct_expect_find_get(struct net *net, const struct nf_conntrack_tuple *tuple);

struct nf_conntrack_expect *
nf_ct_find_expectation(struct net *net, const struct nf_conntrack_tuple *tuple);

void nf_ct_unlink_expect(struct nf_conntrack_expect *exp);
void nf_ct_remove_expectations(struct nf_conn *ct);
void nf_ct_unexpect_related(struct nf_conntrack_expect *exp);



struct nf_conntrack_expect *nf_ct_expect_alloc(struct nf_conn *me);
void nf_ct_expect_init(struct nf_conntrack_expect *, unsigned int, u_int8_t,
         const union nf_inet_addr *,
         const union nf_inet_addr *,
         u_int8_t, const __be16 *, const __be16 *);
void nf_ct_expect_put(struct nf_conntrack_expect *exp);
int nf_ct_expect_related_report(struct nf_conntrack_expect *expect,
    u32 pid, int report);
static inline __attribute__((always_inline)) int nf_ct_expect_related(struct nf_conntrack_expect *expect)
{
 return nf_ct_expect_related_report(expect, 0, 0);
}
# 13 "include/net/netfilter/nf_conntrack_ecache.h" 2
# 106 "include/net/netfilter/nf_conntrack_ecache.h"
static inline __attribute__((always_inline)) void nf_conntrack_event_cache(enum ip_conntrack_events event,
         struct nf_conn *ct) {}
static inline __attribute__((always_inline)) void nf_conntrack_event(enum ip_conntrack_events event,
          struct nf_conn *ct) {}
static inline __attribute__((always_inline)) void nf_conntrack_event_report(enum ip_conntrack_events event,
          struct nf_conn *ct,
          u32 pid,
          int report) {}
static inline __attribute__((always_inline)) void nf_ct_deliver_cached_events(const struct nf_conn *ct) {}
static inline __attribute__((always_inline)) void nf_ct_expect_event(enum ip_conntrack_expect_events event,
          struct nf_conntrack_expect *exp) {}
static inline __attribute__((always_inline)) void nf_ct_expect_event_report(enum ip_conntrack_expect_events e,
          struct nf_conntrack_expect *exp,
           u32 pid,
           int report) {}
static inline __attribute__((always_inline)) void nf_ct_event_cache_flush(struct net *net) {}

static inline __attribute__((always_inline)) int nf_conntrack_ecache_init(struct net *net)
{
 return 0;
}

static inline __attribute__((always_inline)) void nf_conntrack_ecache_fini(struct net *net)
{
}
# 19 "include/net/netfilter/nf_conntrack_core.h" 2




extern unsigned int nf_conntrack_in(struct net *net,
        u_int8_t pf,
        unsigned int hooknum,
        struct sk_buff *skb);

extern int nf_conntrack_init(struct net *net);
extern void nf_conntrack_cleanup(struct net *net);

extern int nf_conntrack_proto_init(void);
extern void nf_conntrack_proto_fini(void);

extern bool
nf_ct_get_tuple(const struct sk_buff *skb,
  unsigned int nhoff,
  unsigned int dataoff,
  u_int16_t l3num,
  u_int8_t protonum,
  struct nf_conntrack_tuple *tuple,
  const struct nf_conntrack_l3proto *l3proto,
  const struct nf_conntrack_l4proto *l4proto);

extern bool
nf_ct_invert_tuple(struct nf_conntrack_tuple *inverse,
     const struct nf_conntrack_tuple *orig,
     const struct nf_conntrack_l3proto *l3proto,
     const struct nf_conntrack_l4proto *l4proto);


extern struct nf_conntrack_tuple_hash *
nf_conntrack_find_get(struct net *net, const struct nf_conntrack_tuple *tuple);


extern int __nf_conntrack_confirm(struct sk_buff *skb);


static inline __attribute__((always_inline)) int nf_conntrack_confirm(struct sk_buff *skb)
{
 struct nf_conn *ct = (struct nf_conn *)skb->nfct;
 int ret = 1;

 if (ct && ct != &nf_conntrack_untracked) {
  if (!nf_ct_is_confirmed(ct) && !nf_ct_is_dying(ct))
   ret = __nf_conntrack_confirm(skb);
  if (__builtin_expect(!!(ret == 1), 1))
   nf_ct_deliver_cached_events(ct);
 }
 return ret;
}


int
print_tuple(struct seq_file *s, const struct nf_conntrack_tuple *tuple,
            const struct nf_conntrack_l3proto *l3proto,
            const struct nf_conntrack_l4proto *proto);

extern spinlock_t nf_conntrack_lock ;
# 7 "net/rtl/fastpath/fastpath_common.c" 2


# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/net/bridge/br_private.h" 1
# 17 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/net/bridge/br_private.h"
# 1 "include/linux/if_bridge.h" 1
# 62 "include/linux/if_bridge.h"
struct __bridge_info
{
 __u64 designated_root;
 __u64 bridge_id;
 __u32 root_path_cost;
 __u32 max_age;
 __u32 hello_time;
 __u32 forward_delay;
 __u32 bridge_max_age;
 __u32 bridge_hello_time;
 __u32 bridge_forward_delay;
 __u8 topology_change;
 __u8 topology_change_detected;
 __u8 root_port;
 __u8 stp_enabled;
 __u32 ageing_time;
 __u32 gc_interval;
 __u32 hello_timer_value;
 __u32 tcn_timer_value;
 __u32 topology_change_timer_value;
 __u32 gc_timer_value;
};

struct __port_info
{
 __u64 designated_root;
 __u64 designated_bridge;
 __u16 port_id;
 __u16 designated_port;
 __u32 path_cost;
 __u32 designated_cost;
 __u8 state;
 __u8 top_change_ack;
 __u8 config_pending;
 __u8 unused0;
 __u32 message_age_timer_value;
 __u32 forward_delay_timer_value;
 __u32 hold_timer_value;
};

struct __fdb_entry
{
 __u8 mac_addr[6];
 __u8 port_no;
 __u8 is_local;
 __u32 ageing_timer_value;
 __u8 port_hi;
 __u8 pad0;
 __u16 unused;
};





extern void brioctl_set(int (*ioctl_hook)(struct net *, unsigned int, void *));
extern struct sk_buff *(*br_handle_frame_hook)(struct net_bridge_port *p,
            struct sk_buff *skb);
extern int (*br_should_route_hook)(struct sk_buff *skb);
# 18 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/net/bridge/br_private.h" 2
# 1 "include/net/route.h" 1
# 27 "include/net/route.h"
# 1 "include/net/dst.h" 1
# 12 "include/net/dst.h"
# 1 "include/linux/rtnetlink.h" 1





# 1 "include/linux/if_link.h" 1







struct rtnl_link_stats
{
 __u32 rx_packets;
 __u32 tx_packets;
 __u32 rx_bytes;
 __u32 tx_bytes;
 __u32 rx_errors;
 __u32 tx_errors;
 __u32 rx_dropped;
 __u32 tx_dropped;
 __u32 multicast;
 __u32 collisions;


 __u32 rx_length_errors;
 __u32 rx_over_errors;
 __u32 rx_crc_errors;
 __u32 rx_frame_errors;
 __u32 rx_fifo_errors;
 __u32 rx_missed_errors;


 __u32 tx_aborted_errors;
 __u32 tx_carrier_errors;
 __u32 tx_fifo_errors;
 __u32 tx_heartbeat_errors;
 __u32 tx_window_errors;


 __u32 rx_compressed;
 __u32 tx_compressed;
};


struct rtnl_link_ifmap
{
 __u64 mem_start;
 __u64 mem_end;
 __u64 base_addr;
 __u16 irq;
 __u8 dma;
 __u8 port;
};

enum
{
 IFLA_UNSPEC,
 IFLA_ADDRESS,
 IFLA_BROADCAST,
 IFLA_IFNAME,
 IFLA_MTU,
 IFLA_LINK,
 IFLA_QDISC,
 IFLA_STATS,
 IFLA_COST,

 IFLA_PRIORITY,

 IFLA_MASTER,

 IFLA_WIRELESS,

 IFLA_PROTINFO,

 IFLA_TXQLEN,

 IFLA_MAP,

 IFLA_WEIGHT,

 IFLA_OPERSTATE,
 IFLA_LINKMODE,
 IFLA_LINKINFO,

 IFLA_NET_NS_PID,
 IFLA_IFALIAS,
 __IFLA_MAX
};
# 126 "include/linux/if_link.h"
enum
{
 IFLA_INET6_UNSPEC,
 IFLA_INET6_FLAGS,
 IFLA_INET6_CONF,
 IFLA_INET6_STATS,
 IFLA_INET6_MCAST,
 IFLA_INET6_CACHEINFO,
 IFLA_INET6_ICMP6STATS,
 __IFLA_INET6_MAX
};



struct ifla_cacheinfo
{
 __u32 max_reasm_len;
 __u32 tstamp;
 __u32 reachable_time;
 __u32 retrans_time;
};

enum
{
 IFLA_INFO_UNSPEC,
 IFLA_INFO_KIND,
 IFLA_INFO_DATA,
 IFLA_INFO_XSTATS,
 __IFLA_INFO_MAX,
};





enum
{
 IFLA_VLAN_UNSPEC,
 IFLA_VLAN_ID,
 IFLA_VLAN_FLAGS,
 IFLA_VLAN_EGRESS_QOS,
 IFLA_VLAN_INGRESS_QOS,
 __IFLA_VLAN_MAX,
};



struct ifla_vlan_flags {
 __u32 flags;
 __u32 mask;
};

enum
{
 IFLA_VLAN_QOS_UNSPEC,
 IFLA_VLAN_QOS_MAPPING,
 __IFLA_VLAN_QOS_MAX
};



struct ifla_vlan_qos_mapping
{
 __u32 from;
 __u32 to;
};
# 7 "include/linux/rtnetlink.h" 2
# 1 "include/linux/if_addr.h" 1






struct ifaddrmsg
{
 __u8 ifa_family;
 __u8 ifa_prefixlen;
 __u8 ifa_flags;
 __u8 ifa_scope;
 __u32 ifa_index;
};
# 23 "include/linux/if_addr.h"
enum
{
 IFA_UNSPEC,
 IFA_ADDRESS,
 IFA_LOCAL,
 IFA_LABEL,
 IFA_BROADCAST,
 IFA_ANYCAST,
 IFA_CACHEINFO,
 IFA_MULTICAST,
 __IFA_MAX,
};
# 49 "include/linux/if_addr.h"
struct ifa_cacheinfo
{
 __u32 ifa_prefered;
 __u32 ifa_valid;
 __u32 cstamp;
 __u32 tstamp;
};
# 8 "include/linux/rtnetlink.h" 2
# 1 "include/linux/neighbour.h" 1






struct ndmsg
{
 __u8 ndm_family;
 __u8 ndm_pad1;
 __u16 ndm_pad2;
 __s32 ndm_ifindex;
 __u16 ndm_state;
 __u8 ndm_flags;
 __u8 ndm_type;
};

enum
{
 NDA_UNSPEC,
 NDA_DST,
 NDA_LLADDR,
 NDA_CACHEINFO,
 NDA_PROBES,
 __NDA_MAX
};
# 59 "include/linux/neighbour.h"
struct nda_cacheinfo
{
 __u32 ndm_confirmed;
 __u32 ndm_used;
 __u32 ndm_updated;
 __u32 ndm_refcnt;
};
# 92 "include/linux/neighbour.h"
struct ndt_stats
{
 __u64 ndts_allocs;
 __u64 ndts_destroys;
 __u64 ndts_hash_grows;
 __u64 ndts_res_failed;
 __u64 ndts_lookups;
 __u64 ndts_hits;
 __u64 ndts_rcv_probes_mcast;
 __u64 ndts_rcv_probes_ucast;
 __u64 ndts_periodic_gc_runs;
 __u64 ndts_forced_gc_runs;
};

enum {
 NDTPA_UNSPEC,
 NDTPA_IFINDEX,
 NDTPA_REFCNT,
 NDTPA_REACHABLE_TIME,
 NDTPA_BASE_REACHABLE_TIME,
 NDTPA_RETRANS_TIME,
 NDTPA_GC_STALETIME,
 NDTPA_DELAY_PROBE_TIME,
 NDTPA_QUEUE_LEN,
 NDTPA_APP_PROBES,
 NDTPA_UCAST_PROBES,
 NDTPA_MCAST_PROBES,
 NDTPA_ANYCAST_DELAY,
 NDTPA_PROXY_DELAY,
 NDTPA_PROXY_QLEN,
 NDTPA_LOCKTIME,
 __NDTPA_MAX
};


struct ndtmsg
{
 __u8 ndtm_family;
 __u8 ndtm_pad1;
 __u16 ndtm_pad2;
};

struct ndt_config
{
 __u16 ndtc_key_len;
 __u16 ndtc_entry_size;
 __u32 ndtc_entries;
 __u32 ndtc_last_flush;
 __u32 ndtc_last_rand;
 __u32 ndtc_hash_rnd;
 __u32 ndtc_hash_mask;
 __u32 ndtc_hash_chain_gc;
 __u32 ndtc_proxy_qlen;
};

enum {
 NDTA_UNSPEC,
 NDTA_NAME,
 NDTA_THRESH1,
 NDTA_THRESH2,
 NDTA_THRESH3,
 NDTA_CONFIG,
 NDTA_PARMS,
 NDTA_STATS,
 NDTA_GC_INTERVAL,
 __NDTA_MAX
};
# 9 "include/linux/rtnetlink.h" 2







enum {
 RTM_BASE = 16,


 RTM_NEWLINK = 16,

 RTM_DELLINK,

 RTM_GETLINK,

 RTM_SETLINK,


 RTM_NEWADDR = 20,

 RTM_DELADDR,

 RTM_GETADDR,


 RTM_NEWROUTE = 24,

 RTM_DELROUTE,

 RTM_GETROUTE,


 RTM_NEWNEIGH = 28,

 RTM_DELNEIGH,

 RTM_GETNEIGH,


 RTM_NEWRULE = 32,

 RTM_DELRULE,

 RTM_GETRULE,


 RTM_NEWQDISC = 36,

 RTM_DELQDISC,

 RTM_GETQDISC,


 RTM_NEWTCLASS = 40,

 RTM_DELTCLASS,

 RTM_GETTCLASS,


 RTM_NEWTFILTER = 44,

 RTM_DELTFILTER,

 RTM_GETTFILTER,


 RTM_NEWACTION = 48,

 RTM_DELACTION,

 RTM_GETACTION,


 RTM_NEWPREFIX = 52,


 RTM_GETMULTICAST = 58,


 RTM_GETANYCAST = 62,


 RTM_NEWNEIGHTBL = 64,

 RTM_GETNEIGHTBL = 66,

 RTM_SETNEIGHTBL,


 RTM_NEWNDUSEROPT = 68,


 RTM_NEWADDRLABEL = 72,

 RTM_DELADDRLABEL,

 RTM_GETADDRLABEL,


 RTM_GETDCB = 78,

 RTM_SETDCB,







 __RTM_MAX,

};
# 135 "include/linux/rtnetlink.h"
struct rtattr
{
 unsigned short rta_len;
 unsigned short rta_type;
};
# 162 "include/linux/rtnetlink.h"
struct rtmsg
{
 unsigned char rtm_family;
 unsigned char rtm_dst_len;
 unsigned char rtm_src_len;
 unsigned char rtm_tos;

 unsigned char rtm_table;
 unsigned char rtm_protocol;
 unsigned char rtm_scope;
 unsigned char rtm_type;

 unsigned rtm_flags;
};



enum
{
 RTN_UNSPEC,
 RTN_UNICAST,
 RTN_LOCAL,
 RTN_BROADCAST,

 RTN_ANYCAST,

 RTN_MULTICAST,
 RTN_BLACKHOLE,
 RTN_UNREACHABLE,
 RTN_PROHIBIT,
 RTN_THROW,
 RTN_NAT,
 RTN_XRESOLVE,
 __RTN_MAX
};
# 238 "include/linux/rtnetlink.h"
enum rt_scope_t
{
 RT_SCOPE_UNIVERSE=0,

 RT_SCOPE_SITE=200,
 RT_SCOPE_LINK=253,
 RT_SCOPE_HOST=254,
 RT_SCOPE_NOWHERE=255
};
# 257 "include/linux/rtnetlink.h"
enum rt_class_t
{
 RT_TABLE_UNSPEC=0,

 RT_TABLE_COMPAT=252,
 RT_TABLE_DEFAULT=253,
 RT_TABLE_MAIN=254,
 RT_TABLE_LOCAL=255,
 RT_TABLE_MAX=0xFFFFFFFF
};




enum rtattr_type_t
{
 RTA_UNSPEC,
 RTA_DST,
 RTA_SRC,
 RTA_IIF,
 RTA_OIF,
 RTA_GATEWAY,
 RTA_PRIORITY,
 RTA_PREFSRC,
 RTA_METRICS,
 RTA_MULTIPATH,
 RTA_PROTOINFO,
 RTA_FLOW,
 RTA_CACHEINFO,
 RTA_SESSION,
 RTA_MP_ALGO,
 RTA_TABLE,
 __RTA_MAX
};
# 306 "include/linux/rtnetlink.h"
struct rtnexthop
{
 unsigned short rtnh_len;
 unsigned char rtnh_flags;
 unsigned char rtnh_hops;
 int rtnh_ifindex;
};
# 333 "include/linux/rtnetlink.h"
struct rta_cacheinfo
{
 __u32 rta_clntref;
 __u32 rta_lastuse;
 __s32 rta_expires;
 __u32 rta_error;
 __u32 rta_used;


 __u32 rta_id;
 __u32 rta_ts;
 __u32 rta_tsage;
};



enum
{
 RTAX_UNSPEC,

 RTAX_LOCK,

 RTAX_MTU,

 RTAX_WINDOW,

 RTAX_RTT,

 RTAX_RTTVAR,

 RTAX_SSTHRESH,

 RTAX_CWND,

 RTAX_ADVMSS,

 RTAX_REORDERING,

 RTAX_HOPLIMIT,

 RTAX_INITCWND,

 RTAX_FEATURES,

 RTAX_RTO_MIN,

 __RTAX_MAX
};
# 389 "include/linux/rtnetlink.h"
struct rta_session
{
 __u8 proto;
 __u8 pad1;
 __u16 pad2;

 union {
  struct {
   __u16 sport;
   __u16 dport;
  } ports;

  struct {
   __u8 type;
   __u8 code;
   __u16 ident;
  } icmpt;

  __u32 spi;
 } u;
};





struct rtgenmsg
{
 unsigned char rtgen_family;
};
# 429 "include/linux/rtnetlink.h"
struct ifinfomsg
{
 unsigned char ifi_family;
 unsigned char __ifi_pad;
 unsigned short ifi_type;
 int ifi_index;
 unsigned ifi_flags;
 unsigned ifi_change;
};





struct prefixmsg
{
 unsigned char prefix_family;
 unsigned char prefix_pad1;
 unsigned short prefix_pad2;
 int prefix_ifindex;
 unsigned char prefix_type;
 unsigned char prefix_len;
 unsigned char prefix_flags;
 unsigned char prefix_pad3;
};

enum
{
 PREFIX_UNSPEC,
 PREFIX_ADDRESS,
 PREFIX_CACHEINFO,
 __PREFIX_MAX
};



struct prefix_cacheinfo
{
 __u32 preferred_time;
 __u32 valid_time;
};






struct tcmsg
{
 unsigned char tcm_family;
 unsigned char tcm__pad1;
 unsigned short tcm__pad2;
 int tcm_ifindex;
 __u32 tcm_handle;
 __u32 tcm_parent;
 __u32 tcm_info;
};

enum
{
 TCA_UNSPEC,
 TCA_KIND,
 TCA_OPTIONS,
 TCA_STATS,
 TCA_XSTATS,
 TCA_RATE,
 TCA_FCNT,
 TCA_STATS2,
 TCA_STAB,
 __TCA_MAX
};
# 510 "include/linux/rtnetlink.h"
struct nduseroptmsg
{
 unsigned char nduseropt_family;
 unsigned char nduseropt_pad1;
 unsigned short nduseropt_opts_len;
 int nduseropt_ifindex;
 __u8 nduseropt_icmp_type;
 __u8 nduseropt_icmp_code;
 unsigned short nduseropt_pad2;
 unsigned int nduseropt_pad3;

};

enum
{
 NDUSEROPT_UNSPEC,
 NDUSEROPT_SRCADDR,
 __NDUSEROPT_MAX
};
# 556 "include/linux/rtnetlink.h"
enum rtnetlink_groups {
 RTNLGRP_NONE,

 RTNLGRP_LINK,

 RTNLGRP_NOTIFY,

 RTNLGRP_NEIGH,

 RTNLGRP_TC,

 RTNLGRP_IPV4_IFADDR,

 RTNLGRP_IPV4_MROUTE,

 RTNLGRP_IPV4_ROUTE,

 RTNLGRP_IPV4_RULE,

 RTNLGRP_IPV6_IFADDR,

 RTNLGRP_IPV6_MROUTE,

 RTNLGRP_IPV6_ROUTE,

 RTNLGRP_IPV6_IFINFO,

 RTNLGRP_DECnet_IFADDR,

 RTNLGRP_NOP2,
 RTNLGRP_DECnet_ROUTE,

 RTNLGRP_DECnet_RULE,

 RTNLGRP_NOP4,
 RTNLGRP_IPV6_PREFIX,

 RTNLGRP_IPV6_RULE,

 RTNLGRP_ND_USEROPT,

 RTNLGRP_PHONET_IFADDR,

 RTNLGRP_PHONET_ROUTE,

 __RTNLGRP_MAX
};



struct tcamsg
{
 unsigned char tca_family;
 unsigned char tca__pad1;
 unsigned short tca__pad2;
};
# 623 "include/linux/rtnetlink.h"
static __inline__ __attribute__((always_inline)) int rtattr_strcmp(const struct rtattr *rta, const char *str)
{
 int len = strlen(str) + 1;
 return len > rta->rta_len || memcmp(((void*)(((char*)(rta)) + (( ((sizeof(struct rtattr))+4 -1) & ~(4 -1) ) + (0)))), str, len);
}

extern int rtnetlink_send(struct sk_buff *skb, struct net *net, u32 pid, u32 group, int echo);
extern int rtnl_unicast(struct sk_buff *skb, struct net *net, u32 pid);
extern void rtnl_notify(struct sk_buff *skb, struct net *net, u32 pid,
   u32 group, struct nlmsghdr *nlh, gfp_t flags);
extern void rtnl_set_sk_err(struct net *net, u32 group, int error);
extern int rtnetlink_put_metrics(struct sk_buff *skb, u32 *metrics);
extern int rtnl_put_cacheinfo(struct sk_buff *skb, struct dst_entry *dst,
         u32 id, u32 ts, u32 tsage, long expires,
         u32 error);

extern void __rta_fill(struct sk_buff *skb, int attrtype, int attrlen, const void *data);
# 737 "include/linux/rtnetlink.h"
static inline __attribute__((always_inline)) struct rtattr *
__rta_reserve(struct sk_buff *skb, int attrtype, int attrlen)
{
 struct rtattr *rta;
 int size = (( ((sizeof(struct rtattr))+4 -1) & ~(4 -1) ) + (attrlen));

 rta = (struct rtattr*)skb_put(skb, ( ((size)+4 -1) & ~(4 -1) ));
 rta->rta_type = attrtype;
 rta->rta_len = size;
 memset(((void*)(((char*)(rta)) + (( ((sizeof(struct rtattr))+4 -1) & ~(4 -1) ) + (0)))) + attrlen, 0, ( ((size)+4 -1) & ~(4 -1) ) - size);
 return rta;
}






extern void rtmsg_ifinfo(int type, struct net_device *dev, unsigned change);


extern void rtnl_lock(void);
extern void rtnl_unlock(void);
extern int rtnl_trylock(void);
extern int rtnl_is_locked(void);

extern void rtnetlink_init(void);
extern void __rtnl_unlock(void);
# 774 "include/linux/rtnetlink.h"
static inline __attribute__((always_inline)) u32 rtm_get_table(struct rtattr **rta, u8 table)
{
 return ({ if (!rta[RTA_TABLE-1] || ((int)((rta[RTA_TABLE-1])->rta_len) - (( ((sizeof(struct rtattr))+4 -1) & ~(4 -1) ) + (0))) < sizeof(u32)) goto rtattr_failure; *(u32 *) ((void*)(((char*)(rta[RTA_TABLE-1])) + (( ((sizeof(struct rtattr))+4 -1) & ~(4 -1) ) + (0)))); });
rtattr_failure:
 return table;
}
# 13 "include/net/dst.h" 2


# 1 "include/net/neighbour.h" 1
# 27 "include/net/neighbour.h"
# 1 "include/net/rtnetlink.h" 1






typedef int (*rtnl_doit_func)(struct sk_buff *, struct nlmsghdr *, void *);
typedef int (*rtnl_dumpit_func)(struct sk_buff *, struct netlink_callback *);

extern int __rtnl_register(int protocol, int msgtype,
    rtnl_doit_func, rtnl_dumpit_func);
extern void rtnl_register(int protocol, int msgtype,
         rtnl_doit_func, rtnl_dumpit_func);
extern int rtnl_unregister(int protocol, int msgtype);
extern void rtnl_unregister_all(int protocol);

static inline __attribute__((always_inline)) int rtnl_msg_family(struct nlmsghdr *nlh)
{
 if (nlmsg_len(nlh) >= sizeof(struct rtgenmsg))
  return ((struct rtgenmsg *) nlmsg_data(nlh))->rtgen_family;
 else
  return 0;
}
# 45 "include/net/rtnetlink.h"
struct rtnl_link_ops {
 struct list_head list;

 const char *kind;

 size_t priv_size;
 void (*setup)(struct net_device *dev);

 int maxtype;
 const struct nla_policy *policy;
 int (*validate)(struct nlattr *tb[],
         struct nlattr *data[]);

 int (*newlink)(struct net_device *dev,
        struct nlattr *tb[],
        struct nlattr *data[]);
 int (*changelink)(struct net_device *dev,
           struct nlattr *tb[],
           struct nlattr *data[]);
 void (*dellink)(struct net_device *dev);

 size_t (*get_size)(const struct net_device *dev);
 int (*fill_info)(struct sk_buff *skb,
          const struct net_device *dev);

 size_t (*get_xstats_size)(const struct net_device *dev);
 int (*fill_xstats)(struct sk_buff *skb,
            const struct net_device *dev);
};

extern int __rtnl_link_register(struct rtnl_link_ops *ops);
extern void __rtnl_link_unregister(struct rtnl_link_ops *ops);
extern void rtnl_kill_links(struct net *net, struct rtnl_link_ops *ops);

extern int rtnl_link_register(struct rtnl_link_ops *ops);
extern void rtnl_link_unregister(struct rtnl_link_ops *ops);

extern struct net_device *rtnl_create_link(struct net *net, char *ifname,
  const struct rtnl_link_ops *ops, struct nlattr *tb[]);
extern const struct nla_policy ifla_policy[(__IFLA_MAX - 1)+1];
# 28 "include/net/neighbour.h" 2
# 37 "include/net/neighbour.h"
struct neighbour;

struct neigh_parms
{



 struct net_device *dev;
 struct neigh_parms *next;
 int (*neigh_setup)(struct neighbour *);
 void (*neigh_cleanup)(struct neighbour *);
 struct neigh_table *tbl;

 void *sysctl_table;

 int dead;
 atomic_t refcnt;
 struct rcu_head rcu_head;

 int base_reachable_time;
 int retrans_time;
 int gc_staletime;
 int reachable_time;
 int delay_probe_time;

 int queue_len;
 int ucast_probes;
 int app_probes;
 int mcast_probes;
 int anycast_delay;
 int proxy_delay;
 int proxy_qlen;
 int locktime;
};

struct neigh_statistics
{
 unsigned long allocs;
 unsigned long destroys;
 unsigned long hash_grows;

 unsigned long res_failed;

 unsigned long lookups;
 unsigned long hits;

 unsigned long rcv_probes_mcast;
 unsigned long rcv_probes_ucast;

 unsigned long periodic_gc_runs;
 unsigned long forced_gc_runs;

 unsigned long unres_discards;
};
# 99 "include/net/neighbour.h"
struct neighbour
{
 struct neighbour *next;
 struct neigh_table *tbl;
 struct neigh_parms *parms;
 struct net_device *dev;
 unsigned long used;
 unsigned long confirmed;
 unsigned long updated;
 __u8 flags;
 __u8 nud_state;
 __u8 type;
 __u8 dead;
 atomic_t probes;
 rwlock_t lock;
 unsigned char ha[(((32)+((typeof(32))(sizeof(unsigned long))-1))&~((typeof(32))(sizeof(unsigned long))-1))];
 struct hh_cache *hh;
 atomic_t refcnt;
 int (*output)(struct sk_buff *skb);
 struct sk_buff_head arp_queue;
 struct timer_list timer;
 struct neigh_ops *ops;
 u8 primary_key[0];
};

struct neigh_ops
{
 int family;
 void (*solicit)(struct neighbour *, struct sk_buff*);
 void (*error_report)(struct neighbour *, struct sk_buff*);
 int (*output)(struct sk_buff*);
 int (*connected_output)(struct sk_buff*);
 int (*hh_output)(struct sk_buff*);
 int (*queue_xmit)(struct sk_buff*);
};

struct pneigh_entry
{
 struct pneigh_entry *next;



 struct net_device *dev;
 u8 flags;
 u8 key[0];
};






struct neigh_table
{
 struct neigh_table *next;
 int family;
 int entry_size;
 int key_len;
 __u32 (*hash)(const void *pkey, const struct net_device *);
 int (*constructor)(struct neighbour *);
 int (*pconstructor)(struct pneigh_entry *);
 void (*pdestructor)(struct pneigh_entry *);
 void (*proxy_redo)(struct sk_buff *skb);
 char *id;
 struct neigh_parms parms;

 int gc_interval;
 int gc_thresh1;
 int gc_thresh2;
 int gc_thresh3;
 unsigned long last_flush;
 struct timer_list gc_timer;
 struct timer_list proxy_timer;
 struct sk_buff_head proxy_queue;
 atomic_t entries;
 rwlock_t lock;
 unsigned long last_rand;
 struct kmem_cache *kmem_cachep;
 struct neigh_statistics *stats;
 struct neighbour **hash_buckets;
 unsigned int hash_mask;
 __u32 hash_rnd;
 unsigned int hash_chain_gc;
 struct pneigh_entry **phash_buckets;
};
# 192 "include/net/neighbour.h"
extern void neigh_table_init(struct neigh_table *tbl);
extern void neigh_table_init_no_netlink(struct neigh_table *tbl);
extern int neigh_table_clear(struct neigh_table *tbl);
extern struct neighbour * neigh_lookup(struct neigh_table *tbl,
          const void *pkey,
          struct net_device *dev);
extern struct neighbour * neigh_lookup_nodev(struct neigh_table *tbl,
         struct net *net,
         const void *pkey);
extern struct neighbour * neigh_create(struct neigh_table *tbl,
          const void *pkey,
          struct net_device *dev);
extern void neigh_destroy(struct neighbour *neigh);
extern int __neigh_event_send(struct neighbour *neigh, struct sk_buff *skb);
extern int neigh_update(struct neighbour *neigh, const u8 *lladdr, u8 new,
          u32 flags);
extern void neigh_changeaddr(struct neigh_table *tbl, struct net_device *dev);
extern int neigh_ifdown(struct neigh_table *tbl, struct net_device *dev);
extern int neigh_resolve_output(struct sk_buff *skb);
extern int neigh_connected_output(struct sk_buff *skb);
extern int neigh_compat_output(struct sk_buff *skb);
extern struct neighbour *neigh_event_ns(struct neigh_table *tbl,
      u8 *lladdr, void *saddr,
      struct net_device *dev);

extern struct neigh_parms *neigh_parms_alloc(struct net_device *dev, struct neigh_table *tbl);
extern void neigh_parms_release(struct neigh_table *tbl, struct neigh_parms *parms);

static inline __attribute__((always_inline))
struct net *neigh_parms_net(const struct neigh_parms *parms)
{
 return (&init_net);
}

extern unsigned long neigh_rand_reach_time(unsigned long base);

extern void pneigh_enqueue(struct neigh_table *tbl, struct neigh_parms *p,
            struct sk_buff *skb);
extern struct pneigh_entry *pneigh_lookup(struct neigh_table *tbl, struct net *net, const void *key, struct net_device *dev, int creat);
extern struct pneigh_entry *__pneigh_lookup(struct neigh_table *tbl,
       struct net *net,
       const void *key,
       struct net_device *dev);
extern int pneigh_delete(struct neigh_table *tbl, struct net *net, const void *key, struct net_device *dev);

static inline __attribute__((always_inline))
struct net *pneigh_net(const struct pneigh_entry *pneigh)
{
 return (&init_net);
}

extern void neigh_app_ns(struct neighbour *n);
extern void neigh_for_each(struct neigh_table *tbl, void (*cb)(struct neighbour *, void *), void *cookie);
extern void __neigh_for_each_release(struct neigh_table *tbl, int (*cb)(struct neighbour *));
extern void pneigh_for_each(struct neigh_table *tbl, void (*cb)(struct pneigh_entry *));

struct neigh_seq_state {
 struct seq_net_private p;
 struct neigh_table *tbl;
 void *(*neigh_sub_iter)(struct neigh_seq_state *state,
    struct neighbour *n, loff_t *pos);
 unsigned int bucket;
 unsigned int flags;



};
extern void *neigh_seq_start(struct seq_file *, loff_t *, struct neigh_table *, unsigned int);
extern void *neigh_seq_next(struct seq_file *, void *, loff_t *);
extern void neigh_seq_stop(struct seq_file *, void *);

extern int neigh_sysctl_register(struct net_device *dev,
            struct neigh_parms *p,
            int p_id, int pdev_id,
            char *p_name,
            proc_handler *proc_handler,
            ctl_handler *strategy);
extern void neigh_sysctl_unregister(struct neigh_parms *p);

static inline __attribute__((always_inline)) void __neigh_parms_put(struct neigh_parms *parms)
{
 atomic_sub(1, (&parms->refcnt));
}

static inline __attribute__((always_inline)) struct neigh_parms *neigh_parms_clone(struct neigh_parms *parms)
{
 atomic_add(1, (&parms->refcnt));
 return parms;
}





static inline __attribute__((always_inline)) void neigh_release(struct neighbour *neigh)
{
 if ((atomic_sub_return(1, (&neigh->refcnt)) == 0))
  neigh_destroy(neigh);
}

static inline __attribute__((always_inline)) struct neighbour * neigh_clone(struct neighbour *neigh)
{
 if (neigh)
  atomic_add(1, (&neigh->refcnt));
 return neigh;
}



static inline __attribute__((always_inline)) void neigh_confirm(struct neighbour *neigh)
{
 if (neigh)
  neigh->confirmed = jiffies;
}

static inline __attribute__((always_inline)) int neigh_event_send(struct neighbour *neigh, struct sk_buff *skb)
{
 neigh->used = jiffies;
 if (!(neigh->nud_state&((0x80|0x40|0x02)|0x08|0x10)))
  return __neigh_event_send(neigh, skb);
 return 0;
}

static inline __attribute__((always_inline)) int neigh_hh_output(struct hh_cache *hh, struct sk_buff *skb)
{
 unsigned seq;
 int hh_len;

 do {
  int hh_alen;

  seq = read_seqbegin(&hh->hh_lock);
  hh_len = hh->hh_len;
  hh_alen = (((hh_len)+(16 -1))&~(16 - 1));
  memcpy(skb->data - hh_alen, hh->hh_data, hh_alen);
 } while (read_seqretry(&hh->hh_lock, seq));

 skb_push(skb, hh_len);
 return hh->hh_output(skb);
}

static inline __attribute__((always_inline)) struct neighbour *
__neigh_lookup(struct neigh_table *tbl, const void *pkey, struct net_device *dev, int creat)
{
 struct neighbour *n = neigh_lookup(tbl, pkey, dev);

 if (n || !creat)
  return n;

 n = neigh_create(tbl, pkey, dev);
 return IS_ERR(n) ? ((void *)0) : n;
}

static inline __attribute__((always_inline)) struct neighbour *
__neigh_lookup_errno(struct neigh_table *tbl, const void *pkey,
  struct net_device *dev)
{
 struct neighbour *n = neigh_lookup(tbl, pkey, dev);

 if (n)
  return n;

 return neigh_create(tbl, pkey, dev);
}

struct neighbour_cb {
 unsigned long sched_next;
 unsigned int flags;
};
# 16 "include/net/dst.h" 2
# 36 "include/net/dst.h"
struct sk_buff;

struct dst_entry
{
 struct rcu_head rcu_head;
 struct dst_entry *child;
 struct net_device *dev;
 short error;
 short obsolete;
 int flags;




 unsigned long expires;

 unsigned short header_len;
 unsigned short trailer_len;

 unsigned int rate_tokens;
 unsigned long rate_last;

 struct dst_entry *path;

 struct neighbour *neighbour;
 struct hh_cache *hh;



 void *__pad1;

 int (*input)(struct sk_buff*);
 int (*output)(struct sk_buff*);

 struct dst_ops *ops;

 u32 metrics[(__RTAX_MAX - 1)];




 __u32 __pad2;
# 88 "include/net/dst.h"
 long __pad_to_align_refcnt[1];





 atomic_t __refcnt;
 int __use;
 unsigned long lastuse;
 union {
  struct dst_entry *next;
  struct rtable *rt_next;
  struct rt6_info *rt6_next;
  struct dn_route *dn_next;
 };
};


struct dst_ops
{
 unsigned short family;
 __be16 protocol;
 unsigned gc_thresh;

 int (*gc)(struct dst_ops *ops);
 struct dst_entry * (*check)(struct dst_entry *, __u32 cookie);
 void (*destroy)(struct dst_entry *);
 void (*ifdown)(struct dst_entry *,
       struct net_device *dev, int how);
 struct dst_entry * (*negative_advice)(struct dst_entry *);
 void (*link_failure)(struct sk_buff *);
 void (*update_pmtu)(struct dst_entry *dst, u32 mtu);
 int (*local_out)(struct sk_buff *skb);

 atomic_t entries;
 struct kmem_cache *kmem_cachep;
 struct net *dst_net;
};

struct dst_gc
{
 spinlock_t lock;
 struct dst_entry *list;
 unsigned long timer_inc;
 unsigned long timer_expires;
};




static inline __attribute__((always_inline)) u32
dst_metric(const struct dst_entry *dst, int metric)
{
 return dst->metrics[metric-1];
}

static inline __attribute__((always_inline)) u32 dst_mtu(const struct dst_entry *dst)
{
 u32 mtu = dst_metric(dst, RTAX_MTU);



 __asm__ __volatile__("": : :"memory");
 return mtu;
}


static inline __attribute__((always_inline)) unsigned long dst_metric_rtt(const struct dst_entry *dst, int metric)
{
 return msecs_to_jiffies(dst_metric(dst, metric));
}

static inline __attribute__((always_inline)) void set_dst_metric_rtt(struct dst_entry *dst, int metric,
          unsigned long rtt)
{
 dst->metrics[metric-1] = jiffies_to_msecs(rtt);
}

static inline __attribute__((always_inline)) u32
dst_allfrag(const struct dst_entry *dst)
{
 int ret = dst_metric(dst, RTAX_FEATURES) & 0x00000008;

 __asm__ __volatile__("": : :"memory");
 return ret;
}

static inline __attribute__((always_inline)) int
dst_metric_locked(struct dst_entry *dst, int metric)
{
 return dst_metric(dst, RTAX_LOCK) & (1<<metric);
}

static inline __attribute__((always_inline)) void dst_hold(struct dst_entry * dst)
{




 ((void)sizeof(char[1 - 2*!!(((size_t) &((struct dst_entry *)0)->__refcnt) & 63)]));
 atomic_add(1, (&dst->__refcnt));
}

static inline __attribute__((always_inline)) void dst_use(struct dst_entry *dst, unsigned long time)
{
 dst_hold(dst);
 dst->__use++;
 dst->lastuse = time;
}

static inline __attribute__((always_inline))
struct dst_entry * dst_clone(struct dst_entry * dst)
{
 if (dst)
  atomic_add(1, (&dst->__refcnt));
 return dst;
}

extern void dst_release(struct dst_entry *dst);





static inline __attribute__((always_inline)) struct dst_entry *dst_pop(struct dst_entry *dst)
{
 struct dst_entry *child = dst_clone(dst->child);

 dst_release(dst);
 return child;
}

extern int dst_discard(struct sk_buff *skb);
extern void * dst_alloc(struct dst_ops * ops);
extern void __dst_free(struct dst_entry * dst);
extern struct dst_entry *dst_destroy(struct dst_entry * dst);

static inline __attribute__((always_inline)) void dst_free(struct dst_entry * dst)
{
 if (dst->obsolete > 1)
  return;
 if (!((&dst->__refcnt)->counter)) {
  dst = dst_destroy(dst);
  if (!dst)
   return;
 }
 __dst_free(dst);
}

static inline __attribute__((always_inline)) void dst_rcu_free(struct rcu_head *head)
{
 struct dst_entry *dst = ({ const typeof( ((struct dst_entry *)0)->rcu_head ) *__mptr = (head); (struct dst_entry *)( (char *)__mptr - ((size_t) &((struct dst_entry *)0)->rcu_head) );});
 dst_free(dst);
}

static inline __attribute__((always_inline)) void dst_confirm(struct dst_entry *dst)
{
 if (dst)
  neigh_confirm(dst->neighbour);
}

static inline __attribute__((always_inline)) void dst_negative_advice(struct dst_entry **dst_p)
{
 struct dst_entry * dst = *dst_p;
 if (dst && dst->ops->negative_advice)
  *dst_p = dst->ops->negative_advice(dst);
}

static inline __attribute__((always_inline)) void dst_link_failure(struct sk_buff *skb)
{
 struct dst_entry * dst = skb->dst;
 if (dst && dst->ops && dst->ops->link_failure)
  dst->ops->link_failure(skb);
}

static inline __attribute__((always_inline)) void dst_set_expires(struct dst_entry *dst, int timeout)
{
 unsigned long expires = jiffies + timeout;

 if (expires == 0)
  expires = 1;

 if (dst->expires == 0 || (({ unsigned long __dummy; typeof(dst->expires) __dummy2; (void)(&__dummy == &__dummy2); 1; }) && ({ unsigned long __dummy; typeof(expires) __dummy2; (void)(&__dummy == &__dummy2); 1; }) && ((long)(expires) - (long)(dst->expires) < 0)))
  dst->expires = expires;
}


static inline __attribute__((always_inline)) int dst_output(struct sk_buff *skb)
{
 return skb->dst->output(skb);
}


static inline __attribute__((always_inline)) int dst_input(struct sk_buff *skb)
{
 if(skb->dst == ((void *)0))
 {

  kfree_skb(skb);
             return -148;
 }

        if(skb->dst->output == ((void *)0))
        {



                kfree_skb(skb);
                return -148;
        }

 return skb->dst->input(skb);
}

static inline __attribute__((always_inline)) struct dst_entry *dst_check(struct dst_entry *dst, u32 cookie)
{
 if (dst->obsolete)
  dst = dst->ops->check(dst, cookie);
 return dst;
}

extern void dst_init(void);


enum {
 XFRM_LOOKUP_WAIT = 1 << 0,
 XFRM_LOOKUP_ICMP = 1 << 1,
};

struct flowi;

static inline __attribute__((always_inline)) int xfrm_lookup(struct net *net, struct dst_entry **dst_p,
         struct flowi *fl, struct sock *sk, int flags)
{
 return 0;
}
static inline __attribute__((always_inline)) int __xfrm_lookup(struct net *net, struct dst_entry **dst_p,
    struct flowi *fl, struct sock *sk, int flags)
{
 return 0;
}
# 28 "include/net/route.h" 2
# 1 "include/net/inetpeer.h" 1
# 16 "include/net/inetpeer.h"
struct inet_peer
{

 struct inet_peer *avl_left, *avl_right;
 __be32 v4daddr;
 __u16 avl_height;
 __u16 ip_id_count;
 struct list_head unused;
 __u32 dtime;

 atomic_t refcnt;
 atomic_t rid;
 __u32 tcp_ts;
 unsigned long tcp_ts_stamp;
};

void inet_initpeers(void) __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function));


struct inet_peer *inet_getpeer(__be32 daddr, int create);


extern void inet_putpeer(struct inet_peer *p);

extern spinlock_t inet_peer_idlock;

static inline __attribute__((always_inline)) __u16 inet_getid(struct inet_peer *p, int more)
{
 __u16 id;

 do { local_bh_disable(); do { do { } while (0); (void)0; (void)(&inet_peer_idlock); } while (0); } while (0);
 id = p->ip_id_count;
 p->ip_id_count += 1 + more;
 do { do { } while (0); local_bh_enable(); (void)0; (void)(&inet_peer_idlock); } while (0);
 return id;
}
# 29 "include/net/route.h" 2

# 1 "include/net/inet_sock.h" 1
# 22 "include/net/inet_sock.h"
# 1 "include/linux/jhash.h" 1
# 44 "include/linux/jhash.h"
static inline __attribute__((always_inline)) u32 jhash(const void *key, u32 length, u32 initval)
{
 u32 a, b, c, len;
 const u8 *k = key;

 len = length;
 a = b = 0x9e3779b9;
 c = initval;

 while (len >= 12) {
  a += (k[0] +((u32)k[1]<<8) +((u32)k[2]<<16) +((u32)k[3]<<24));
  b += (k[4] +((u32)k[5]<<8) +((u32)k[6]<<16) +((u32)k[7]<<24));
  c += (k[8] +((u32)k[9]<<8) +((u32)k[10]<<16)+((u32)k[11]<<24));

  { a -= b; a -= c; a ^= (c>>13); b -= c; b -= a; b ^= (a<<8); c -= a; c -= b; c ^= (b>>13); a -= b; a -= c; a ^= (c>>12); b -= c; b -= a; b ^= (a<<16); c -= a; c -= b; c ^= (b>>5); a -= b; a -= c; a ^= (c>>3); b -= c; b -= a; b ^= (a<<10); c -= a; c -= b; c ^= (b>>15); };

  k += 12;
  len -= 12;
 }

 c += length;
 switch (len) {
 case 11: c += ((u32)k[10]<<24);
 case 10: c += ((u32)k[9]<<16);
 case 9 : c += ((u32)k[8]<<8);
 case 8 : b += ((u32)k[7]<<24);
 case 7 : b += ((u32)k[6]<<16);
 case 6 : b += ((u32)k[5]<<8);
 case 5 : b += k[4];
 case 4 : a += ((u32)k[3]<<24);
 case 3 : a += ((u32)k[2]<<16);
 case 2 : a += ((u32)k[1]<<8);
 case 1 : a += k[0];
 };

 { a -= b; a -= c; a ^= (c>>13); b -= c; b -= a; b ^= (a<<8); c -= a; c -= b; c ^= (b>>13); a -= b; a -= c; a ^= (c>>12); b -= c; b -= a; b ^= (a<<16); c -= a; c -= b; c ^= (b>>5); a -= b; a -= c; a ^= (c>>3); b -= c; b -= a; b ^= (a<<10); c -= a; c -= b; c ^= (b>>15); };

 return c;
}




static inline __attribute__((always_inline)) u32 jhash2(const u32 *k, u32 length, u32 initval)
{
 u32 a, b, c, len;

 a = b = 0x9e3779b9;
 c = initval;
 len = length;

 while (len >= 3) {
  a += k[0];
  b += k[1];
  c += k[2];
  { a -= b; a -= c; a ^= (c>>13); b -= c; b -= a; b ^= (a<<8); c -= a; c -= b; c ^= (b>>13); a -= b; a -= c; a ^= (c>>12); b -= c; b -= a; b ^= (a<<16); c -= a; c -= b; c ^= (b>>5); a -= b; a -= c; a ^= (c>>3); b -= c; b -= a; b ^= (a<<10); c -= a; c -= b; c ^= (b>>15); };
  k += 3; len -= 3;
 }

 c += length * 4;

 switch (len) {
 case 2 : b += k[1];
 case 1 : a += k[0];
 };

 { a -= b; a -= c; a ^= (c>>13); b -= c; b -= a; b ^= (a<<8); c -= a; c -= b; c ^= (b>>13); a -= b; a -= c; a ^= (c>>12); b -= c; b -= a; b ^= (a<<16); c -= a; c -= b; c ^= (b>>5); a -= b; a -= c; a ^= (c>>3); b -= c; b -= a; b ^= (a<<10); c -= a; c -= b; c ^= (b>>15); };

 return c;
}
# 122 "include/linux/jhash.h"
static inline __attribute__((always_inline)) u32 jhash_3words(u32 a, u32 b, u32 c, u32 initval)
{
 a += 0x9e3779b9;
 b += 0x9e3779b9;
 c += initval;

 { a -= b; a -= c; a ^= (c>>13); b -= c; b -= a; b ^= (a<<8); c -= a; c -= b; c ^= (b>>13); a -= b; a -= c; a ^= (c>>12); b -= c; b -= a; b ^= (a<<16); c -= a; c -= b; c ^= (b>>5); a -= b; a -= c; a ^= (c>>3); b -= c; b -= a; b ^= (a<<10); c -= a; c -= b; c ^= (b>>15); };

 return c;
}

static inline __attribute__((always_inline)) u32 jhash_2words(u32 a, u32 b, u32 initval)
{
 return jhash_3words(a, b, 0, initval);
}

static inline __attribute__((always_inline)) u32 jhash_1word(u32 a, u32 initval)
{
 return jhash_3words(a, 0, 0, initval);
}
# 23 "include/net/inet_sock.h" 2


# 1 "include/net/sock.h" 1
# 53 "include/net/sock.h"
# 1 "include/linux/security.h" 1
# 26 "include/linux/security.h"
# 1 "include/linux/binfmts.h" 1





struct pt_regs;
# 28 "include/linux/binfmts.h"
struct linux_binprm{
 char buf[128];

 struct vm_area_struct *vma;




 struct mm_struct *mm;
 unsigned long p;
 unsigned int
  cred_prepared:1,

  cap_effective:1;





 unsigned int recursion_depth;
 struct file * file;
 struct cred *cred;
 int unsafe;
 unsigned int per_clear;
 int argc, envc;
 char * filename;
 char * interp;


 unsigned interp_flags;
 unsigned interp_data;
 unsigned long loader, exec;
};
# 75 "include/linux/binfmts.h"
struct linux_binfmt {
 struct list_head lh;
 struct module *module;
 int (*load_binary)(struct linux_binprm *, struct pt_regs * regs);
 int (*load_shlib)(struct file *);
 int (*core_dump)(long signr, struct pt_regs *regs, struct file *file, unsigned long limit);
 unsigned long min_coredump;
 int hasvdso;
};

extern int __register_binfmt(struct linux_binfmt *fmt, int insert);


static inline __attribute__((always_inline)) int register_binfmt(struct linux_binfmt *fmt)
{
 return __register_binfmt(fmt, 0);
}

static inline __attribute__((always_inline)) int insert_binfmt(struct linux_binfmt *fmt)
{
 return __register_binfmt(fmt, 1);
}

extern void unregister_binfmt(struct linux_binfmt *);

extern int prepare_binprm(struct linux_binprm *);
extern int remove_arg_zero(struct linux_binprm *);
extern int search_binary_handler(struct linux_binprm *,struct pt_regs *);
extern int flush_old_exec(struct linux_binprm * bprm);

extern int suid_dumpable;
# 115 "include/linux/binfmts.h"
extern int setup_arg_pages(struct linux_binprm * bprm,
      unsigned long stack_top,
      int executable_stack);
extern int bprm_mm_init(struct linux_binprm *bprm);
extern int copy_strings_kernel(int argc,char ** argv,struct linux_binprm *bprm);
extern void install_exec_creds(struct linux_binprm *bprm);
extern void do_coredump(long signr, int exit_code, struct pt_regs *regs);
extern int set_binfmt(struct linux_binfmt *new);
extern void free_bprm(struct linux_binprm *);
# 27 "include/linux/security.h" 2



# 1 "include/linux/shm.h" 1
# 28 "include/linux/shm.h"
# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/shmparam.h" 1
# 29 "include/linux/shm.h" 2



struct shmid_ds {
 struct ipc_perm shm_perm;
 int shm_segsz;
 __kernel_time_t shm_atime;
 __kernel_time_t shm_dtime;
 __kernel_time_t shm_ctime;
 __kernel_ipc_pid_t shm_cpid;
 __kernel_ipc_pid_t shm_lpid;
 unsigned short shm_nattch;
 unsigned short shm_unused;
 void *shm_unused2;
 void *shm_unused3;
};


# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/shmbuf.h" 1
# 13 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/shmbuf.h"
struct shmid64_ds {
 struct ipc64_perm shm_perm;
 size_t shm_segsz;
 __kernel_time_t shm_atime;
 __kernel_time_t shm_dtime;
 __kernel_time_t shm_ctime;
 __kernel_pid_t shm_cpid;
 __kernel_pid_t shm_lpid;
 unsigned long shm_nattch;
 unsigned long __unused1;
 unsigned long __unused2;
};

struct shminfo64 {
 unsigned long shmmax;
 unsigned long shmmin;
 unsigned long shmmni;
 unsigned long shmseg;
 unsigned long shmall;
 unsigned long __unused1;
 unsigned long __unused2;
 unsigned long __unused3;
 unsigned long __unused4;
};
# 48 "include/linux/shm.h" 2
# 68 "include/linux/shm.h"
struct shminfo {
 int shmmax;
 int shmmin;
 int shmmni;
 int shmseg;
 int shmall;
};

struct shm_info {
 int used_ids;
 unsigned long shm_tot;
 unsigned long shm_rss;
 unsigned long shm_swp;
 unsigned long swap_attempts;
 unsigned long swap_successes;
};


struct shmid_kernel
{
 struct kern_ipc_perm shm_perm;
 struct file * shm_file;
 unsigned long shm_nattch;
 unsigned long shm_segsz;
 time_t shm_atim;
 time_t shm_dtim;
 time_t shm_ctim;
 pid_t shm_cprid;
 pid_t shm_lprid;
 struct user_struct *mlock_user;
};
# 110 "include/linux/shm.h"
static inline __attribute__((always_inline)) long do_shmat(int shmid, char *shmaddr,
    int shmflg, unsigned long *addr)
{
 return -89;
}
static inline __attribute__((always_inline)) int is_file_shm_hugepages(struct file *file)
{
 return 0;
}
# 31 "include/linux/security.h" 2
# 1 "include/linux/msg.h" 1
# 15 "include/linux/msg.h"
struct msqid_ds {
 struct ipc_perm msg_perm;
 struct msg *msg_first;
 struct msg *msg_last;
 __kernel_time_t msg_stime;
 __kernel_time_t msg_rtime;
 __kernel_time_t msg_ctime;
 unsigned long msg_lcbytes;
 unsigned long msg_lqbytes;
 unsigned short msg_cbytes;
 unsigned short msg_qnum;
 unsigned short msg_qbytes;
 __kernel_ipc_pid_t msg_lspid;
 __kernel_ipc_pid_t msg_lrpid;
};


# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/msgbuf.h" 1
# 15 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/msgbuf.h"
struct msqid64_ds {
 struct ipc64_perm msg_perm;

 unsigned long __unused1;

 __kernel_time_t msg_stime;




 unsigned long __unused2;

 __kernel_time_t msg_rtime;




 unsigned long __unused3;

 __kernel_time_t msg_ctime;



 unsigned long msg_cbytes;
 unsigned long msg_qnum;
 unsigned long msg_qbytes;
 __kernel_pid_t msg_lspid;
 __kernel_pid_t msg_lrpid;
 unsigned long __unused4;
 unsigned long __unused5;
};
# 33 "include/linux/msg.h" 2


struct msgbuf {
 long mtype;
 char mtext[1];
};


struct msginfo {
 int msgpool;
 int msgmap;
 int msgmax;
 int msgmnb;
 int msgmni;
 int msgssz;
 int msgtql;
 unsigned short msgseg;
};
# 78 "include/linux/msg.h"
struct msg_msg {
 struct list_head m_list;
 long m_type;
 int m_ts;
 struct msg_msgseg* next;
 void *security;

};


struct msg_queue {
 struct kern_ipc_perm q_perm;
 time_t q_stime;
 time_t q_rtime;
 time_t q_ctime;
 unsigned long q_cbytes;
 unsigned long q_qnum;
 unsigned long q_qbytes;
 pid_t q_lspid;
 pid_t q_lrpid;

 struct list_head q_messages;
 struct list_head q_receivers;
 struct list_head q_senders;
};


extern long do_msgsnd(int msqid, long mtype, void *mtext,
   size_t msgsz, int msgflg);
extern long do_msgrcv(int msqid, long *pmtype, void *mtext,
   size_t msgsz, long msgtyp, int msgflg);
# 32 "include/linux/security.h" 2
# 45 "include/linux/security.h"
struct ctl_table;
struct audit_krule;





extern int cap_capable(struct task_struct *tsk, const struct cred *cred,
         int cap, int audit);
extern int cap_settime(struct timespec *ts, struct timezone *tz);
extern int cap_ptrace_may_access(struct task_struct *child, unsigned int mode);
extern int cap_ptrace_traceme(struct task_struct *parent);
extern int cap_capget(struct task_struct *target, kernel_cap_t *effective, kernel_cap_t *inheritable, kernel_cap_t *permitted);
extern int cap_capset(struct cred *new, const struct cred *old,
        const kernel_cap_t *effective,
        const kernel_cap_t *inheritable,
        const kernel_cap_t *permitted);
extern int cap_bprm_set_creds(struct linux_binprm *bprm);
extern int cap_bprm_secureexec(struct linux_binprm *bprm);
extern int cap_inode_setxattr(struct dentry *dentry, const char *name,
         const void *value, size_t size, int flags);
extern int cap_inode_removexattr(struct dentry *dentry, const char *name);
extern int cap_inode_need_killpriv(struct dentry *dentry);
extern int cap_inode_killpriv(struct dentry *dentry);
extern int cap_task_fix_setuid(struct cred *new, const struct cred *old, int flags);
extern int cap_task_prctl(int option, unsigned long arg2, unsigned long arg3,
     unsigned long arg4, unsigned long arg5);
extern int cap_task_setscheduler(struct task_struct *p, int policy, struct sched_param *lp);
extern int cap_task_setioprio(struct task_struct *p, int ioprio);
extern int cap_task_setnice(struct task_struct *p, int nice);
extern int cap_syslog(int type);
extern int cap_vm_enough_memory(struct mm_struct *mm, long pages);

struct msghdr;
struct sk_buff;
struct sock;
struct sockaddr;
struct socket;
struct flowi;
struct dst_entry;
struct xfrm_selector;
struct xfrm_policy;
struct xfrm_state;
struct xfrm_user_sec_ctx;
struct seq_file;

extern int cap_netlink_send(struct sock *sk, struct sk_buff *skb);
extern int cap_netlink_recv(struct sk_buff *skb, int cap);

extern unsigned long mmap_min_addr;
# 111 "include/linux/security.h"
struct sched_param;
struct request_sock;
# 1780 "include/linux/security.h"
struct security_mnt_opts {
};

static inline __attribute__((always_inline)) void security_init_mnt_opts(struct security_mnt_opts *opts)
{
}

static inline __attribute__((always_inline)) void security_free_mnt_opts(struct security_mnt_opts *opts)
{
}






static inline __attribute__((always_inline)) int security_init(void)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_ptrace_may_access(struct task_struct *child,
          unsigned int mode)
{
 return cap_ptrace_may_access(child, mode);
}

static inline __attribute__((always_inline)) int security_ptrace_traceme(struct task_struct *parent)
{
 return cap_ptrace_traceme(parent);
}

static inline __attribute__((always_inline)) int security_capget(struct task_struct *target,
       kernel_cap_t *effective,
       kernel_cap_t *inheritable,
       kernel_cap_t *permitted)
{
 return cap_capget(target, effective, inheritable, permitted);
}

static inline __attribute__((always_inline)) int security_capset(struct cred *new,
       const struct cred *old,
       const kernel_cap_t *effective,
       const kernel_cap_t *inheritable,
       const kernel_cap_t *permitted)
{
 return cap_capset(new, old, effective, inheritable, permitted);
}

static inline __attribute__((always_inline)) int security_capable(int cap)
{
 return cap_capable(get_current(), (get_current()->cred), cap, 1);
}

static inline __attribute__((always_inline)) int security_real_capable(struct task_struct *tsk, int cap)
{
 int ret;

 do { do { } while (0); (void)0; do { } while (0); } while (0);
 ret = cap_capable(tsk, ((const struct cred *)(({ typeof((tsk)->real_cred) _________p1 = (*(volatile typeof((tsk)->real_cred) *)&((tsk)->real_cred)); do { } while(0); (_________p1); }))), cap, 1);
 do { do { } while (0); (void)0; do { } while (0); } while (0);
 return ret;
}

static inline __attribute__((always_inline))
int security_real_capable_noaudit(struct task_struct *tsk, int cap)
{
 int ret;

 do { do { } while (0); (void)0; do { } while (0); } while (0);
 ret = cap_capable(tsk, ((const struct cred *)(({ typeof((tsk)->real_cred) _________p1 = (*(volatile typeof((tsk)->real_cred) *)&((tsk)->real_cred)); do { } while(0); (_________p1); }))), cap,
          0);
 do { do { } while (0); (void)0; do { } while (0); } while (0);
 return ret;
}

static inline __attribute__((always_inline)) int security_acct(struct file *file)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_sysctl(struct ctl_table *table, int op)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_quotactl(int cmds, int type, int id,
         struct super_block *sb)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_quota_on(struct dentry *dentry)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_syslog(int type)
{
 return cap_syslog(type);
}

static inline __attribute__((always_inline)) int security_settime(struct timespec *ts, struct timezone *tz)
{
 return cap_settime(ts, tz);
}

static inline __attribute__((always_inline)) int security_vm_enough_memory(long pages)
{
 ({ int __ret_warn_on = !!(get_current()->mm == ((void *)0)); __builtin_expect(!!(__ret_warn_on), 0); });
 return cap_vm_enough_memory(get_current()->mm, pages);
}

static inline __attribute__((always_inline)) int security_vm_enough_memory_mm(struct mm_struct *mm, long pages)
{
 ({ int __ret_warn_on = !!(mm == ((void *)0)); __builtin_expect(!!(__ret_warn_on), 0); });
 return cap_vm_enough_memory(mm, pages);
}

static inline __attribute__((always_inline)) int security_vm_enough_memory_kern(long pages)
{


 return cap_vm_enough_memory(get_current()->mm, pages);
}

static inline __attribute__((always_inline)) int security_bprm_set_creds(struct linux_binprm *bprm)
{
 return cap_bprm_set_creds(bprm);
}

static inline __attribute__((always_inline)) int security_bprm_check(struct linux_binprm *bprm)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_bprm_committing_creds(struct linux_binprm *bprm)
{
}

static inline __attribute__((always_inline)) void security_bprm_committed_creds(struct linux_binprm *bprm)
{
}

static inline __attribute__((always_inline)) int security_bprm_secureexec(struct linux_binprm *bprm)
{
 return cap_bprm_secureexec(bprm);
}

static inline __attribute__((always_inline)) int security_sb_alloc(struct super_block *sb)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_sb_free(struct super_block *sb)
{ }

static inline __attribute__((always_inline)) int security_sb_copy_data(char *orig, char *copy)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_sb_kern_mount(struct super_block *sb, int flags, void *data)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_sb_show_options(struct seq_file *m,
        struct super_block *sb)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_sb_statfs(struct dentry *dentry)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_sb_mount(char *dev_name, struct path *path,
        char *type, unsigned long flags,
        void *data)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_sb_check_sb(struct vfsmount *mnt,
           struct path *path)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_sb_umount(struct vfsmount *mnt, int flags)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_sb_umount_close(struct vfsmount *mnt)
{ }

static inline __attribute__((always_inline)) void security_sb_umount_busy(struct vfsmount *mnt)
{ }

static inline __attribute__((always_inline)) void security_sb_post_remount(struct vfsmount *mnt,
          unsigned long flags, void *data)
{ }

static inline __attribute__((always_inline)) void security_sb_post_addmount(struct vfsmount *mnt,
          struct path *mountpoint)
{ }

static inline __attribute__((always_inline)) int security_sb_pivotroot(struct path *old_path,
     struct path *new_path)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_sb_post_pivotroot(struct path *old_path,
           struct path *new_path)
{ }

static inline __attribute__((always_inline)) int security_sb_set_mnt_opts(struct super_block *sb,
        struct security_mnt_opts *opts)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_sb_clone_mnt_opts(const struct super_block *oldsb,
           struct super_block *newsb)
{ }

static inline __attribute__((always_inline)) int security_sb_parse_opts_str(char *options, struct security_mnt_opts *opts)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_alloc(struct inode *inode)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_inode_free(struct inode *inode)
{ }

static inline __attribute__((always_inline)) int security_inode_init_security(struct inode *inode,
      struct inode *dir,
      char **name,
      void **value,
      size_t *len)
{
 return -122;
}

static inline __attribute__((always_inline)) int security_inode_create(struct inode *dir,
      struct dentry *dentry,
      int mode)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_link(struct dentry *old_dentry,
           struct inode *dir,
           struct dentry *new_dentry)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_unlink(struct inode *dir,
      struct dentry *dentry)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_symlink(struct inode *dir,
       struct dentry *dentry,
       const char *old_name)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_mkdir(struct inode *dir,
     struct dentry *dentry,
     int mode)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_rmdir(struct inode *dir,
     struct dentry *dentry)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_mknod(struct inode *dir,
     struct dentry *dentry,
     int mode, dev_t dev)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_rename(struct inode *old_dir,
      struct dentry *old_dentry,
      struct inode *new_dir,
      struct dentry *new_dentry)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_readlink(struct dentry *dentry)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_follow_link(struct dentry *dentry,
           struct nameidata *nd)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_permission(struct inode *inode, int mask)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_setattr(struct dentry *dentry,
       struct iattr *attr)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_getattr(struct vfsmount *mnt,
       struct dentry *dentry)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_inode_delete(struct inode *inode)
{ }

static inline __attribute__((always_inline)) int security_inode_setxattr(struct dentry *dentry,
  const char *name, const void *value, size_t size, int flags)
{
 return cap_inode_setxattr(dentry, name, value, size, flags);
}

static inline __attribute__((always_inline)) void security_inode_post_setxattr(struct dentry *dentry,
  const char *name, const void *value, size_t size, int flags)
{ }

static inline __attribute__((always_inline)) int security_inode_getxattr(struct dentry *dentry,
   const char *name)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_listxattr(struct dentry *dentry)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_inode_removexattr(struct dentry *dentry,
   const char *name)
{
 return cap_inode_removexattr(dentry, name);
}

static inline __attribute__((always_inline)) int security_inode_need_killpriv(struct dentry *dentry)
{
 return cap_inode_need_killpriv(dentry);
}

static inline __attribute__((always_inline)) int security_inode_killpriv(struct dentry *dentry)
{
 return cap_inode_killpriv(dentry);
}

static inline __attribute__((always_inline)) int security_inode_getsecurity(const struct inode *inode, const char *name, void **buffer, bool alloc)
{
 return -122;
}

static inline __attribute__((always_inline)) int security_inode_setsecurity(struct inode *inode, const char *name, const void *value, size_t size, int flags)
{
 return -122;
}

static inline __attribute__((always_inline)) int security_inode_listsecurity(struct inode *inode, char *buffer, size_t buffer_size)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_inode_getsecid(const struct inode *inode, u32 *secid)
{
 *secid = 0;
}

static inline __attribute__((always_inline)) int security_file_permission(struct file *file, int mask)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_file_alloc(struct file *file)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_file_free(struct file *file)
{ }

static inline __attribute__((always_inline)) int security_file_ioctl(struct file *file, unsigned int cmd,
          unsigned long arg)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_file_mmap(struct file *file, unsigned long reqprot,
         unsigned long prot,
         unsigned long flags,
         unsigned long addr,
         unsigned long addr_only)
{
 if ((addr < mmap_min_addr) && !capable(17))
  return -13;
 return 0;
}

static inline __attribute__((always_inline)) int security_file_mprotect(struct vm_area_struct *vma,
      unsigned long reqprot,
      unsigned long prot)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_file_lock(struct file *file, unsigned int cmd)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_file_fcntl(struct file *file, unsigned int cmd,
          unsigned long arg)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_file_set_fowner(struct file *file)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_file_send_sigiotask(struct task_struct *tsk,
            struct fown_struct *fown,
            int sig)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_file_receive(struct file *file)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_dentry_open(struct file *file,
           const struct cred *cred)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_task_create(unsigned long clone_flags)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_cred_free(struct cred *cred)
{ }

static inline __attribute__((always_inline)) int security_prepare_creds(struct cred *new,
      const struct cred *old,
      gfp_t gfp)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_commit_creds(struct cred *new,
      const struct cred *old)
{
}

static inline __attribute__((always_inline)) int security_kernel_act_as(struct cred *cred, u32 secid)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_kernel_create_files_as(struct cred *cred,
        struct inode *inode)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_task_setuid(uid_t id0, uid_t id1, uid_t id2,
           int flags)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_task_fix_setuid(struct cred *new,
        const struct cred *old,
        int flags)
{
 return cap_task_fix_setuid(new, old, flags);
}

static inline __attribute__((always_inline)) int security_task_setgid(gid_t id0, gid_t id1, gid_t id2,
           int flags)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_task_setpgid(struct task_struct *p, pid_t pgid)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_task_getpgid(struct task_struct *p)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_task_getsid(struct task_struct *p)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_task_getsecid(struct task_struct *p, u32 *secid)
{
 *secid = 0;
}

static inline __attribute__((always_inline)) int security_task_setgroups(struct group_info *group_info)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_task_setnice(struct task_struct *p, int nice)
{
 return cap_task_setnice(p, nice);
}

static inline __attribute__((always_inline)) int security_task_setioprio(struct task_struct *p, int ioprio)
{
 return cap_task_setioprio(p, ioprio);
}

static inline __attribute__((always_inline)) int security_task_getioprio(struct task_struct *p)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_task_setrlimit(unsigned int resource,
       struct rlimit *new_rlim)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_task_setscheduler(struct task_struct *p,
          int policy,
          struct sched_param *lp)
{
 return cap_task_setscheduler(p, policy, lp);
}

static inline __attribute__((always_inline)) int security_task_getscheduler(struct task_struct *p)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_task_movememory(struct task_struct *p)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_task_kill(struct task_struct *p,
         struct siginfo *info, int sig,
         u32 secid)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_task_wait(struct task_struct *p)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_task_prctl(int option, unsigned long arg2,
          unsigned long arg3,
          unsigned long arg4,
          unsigned long arg5)
{
 return cap_task_prctl(option, arg2, arg3, arg3, arg5);
}

static inline __attribute__((always_inline)) void security_task_to_inode(struct task_struct *p, struct inode *inode)
{ }

static inline __attribute__((always_inline)) int security_ipc_permission(struct kern_ipc_perm *ipcp,
       short flag)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_ipc_getsecid(struct kern_ipc_perm *ipcp, u32 *secid)
{
 *secid = 0;
}

static inline __attribute__((always_inline)) int security_msg_msg_alloc(struct msg_msg *msg)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_msg_msg_free(struct msg_msg *msg)
{ }

static inline __attribute__((always_inline)) int security_msg_queue_alloc(struct msg_queue *msq)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_msg_queue_free(struct msg_queue *msq)
{ }

static inline __attribute__((always_inline)) int security_msg_queue_associate(struct msg_queue *msq,
            int msqflg)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_msg_queue_msgctl(struct msg_queue *msq, int cmd)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_msg_queue_msgsnd(struct msg_queue *msq,
         struct msg_msg *msg, int msqflg)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_msg_queue_msgrcv(struct msg_queue *msq,
         struct msg_msg *msg,
         struct task_struct *target,
         long type, int mode)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_shm_alloc(struct shmid_kernel *shp)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_shm_free(struct shmid_kernel *shp)
{ }

static inline __attribute__((always_inline)) int security_shm_associate(struct shmid_kernel *shp,
      int shmflg)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_shm_shmctl(struct shmid_kernel *shp, int cmd)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_shm_shmat(struct shmid_kernel *shp,
         char *shmaddr, int shmflg)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_sem_alloc(struct sem_array *sma)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_sem_free(struct sem_array *sma)
{ }

static inline __attribute__((always_inline)) int security_sem_associate(struct sem_array *sma, int semflg)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_sem_semctl(struct sem_array *sma, int cmd)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_sem_semop(struct sem_array *sma,
         struct sembuf *sops, unsigned nsops,
         int alter)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_d_instantiate(struct dentry *dentry, struct inode *inode)
{ }

static inline __attribute__((always_inline)) int security_getprocattr(struct task_struct *p, char *name, char **value)
{
 return -22;
}

static inline __attribute__((always_inline)) int security_setprocattr(struct task_struct *p, char *name, void *value, size_t size)
{
 return -22;
}

static inline __attribute__((always_inline)) int security_netlink_send(struct sock *sk, struct sk_buff *skb)
{
 return cap_netlink_send(sk, skb);
}

static inline __attribute__((always_inline)) int security_netlink_recv(struct sk_buff *skb, int cap)
{
 return cap_netlink_recv(skb, cap);
}

static inline __attribute__((always_inline)) int security_secid_to_secctx(u32 secid, char **secdata, u32 *seclen)
{
 return -122;
}

static inline __attribute__((always_inline)) int security_secctx_to_secid(const char *secdata,
        u32 seclen,
        u32 *secid)
{
 return -122;
}

static inline __attribute__((always_inline)) void security_release_secctx(char *secdata, u32 seclen)
{
}
# 2562 "include/linux/security.h"
static inline __attribute__((always_inline)) int security_unix_stream_connect(struct socket *sock,
            struct socket *other,
            struct sock *newsk)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_unix_may_send(struct socket *sock,
      struct socket *other)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_socket_create(int family, int type,
      int protocol, int kern)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_socket_post_create(struct socket *sock,
           int family,
           int type,
           int protocol, int kern)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_socket_bind(struct socket *sock,
           struct sockaddr *address,
           int addrlen)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_socket_connect(struct socket *sock,
       struct sockaddr *address,
       int addrlen)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_socket_listen(struct socket *sock, int backlog)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_socket_accept(struct socket *sock,
      struct socket *newsock)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_socket_sendmsg(struct socket *sock,
       struct msghdr *msg, int size)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_socket_recvmsg(struct socket *sock,
       struct msghdr *msg, int size,
       int flags)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_socket_getsockname(struct socket *sock)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_socket_getpeername(struct socket *sock)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_socket_getsockopt(struct socket *sock,
          int level, int optname)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_socket_setsockopt(struct socket *sock,
          int level, int optname)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_socket_shutdown(struct socket *sock, int how)
{
 return 0;
}
static inline __attribute__((always_inline)) int security_sock_rcv_skb(struct sock *sk,
     struct sk_buff *skb)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_socket_getpeersec_stream(struct socket *sock, char *optval,
          int *optlen, unsigned len)
{
 return -99;
}

static inline __attribute__((always_inline)) int security_socket_getpeersec_dgram(struct socket *sock, struct sk_buff *skb, u32 *secid)
{
 return -99;
}

static inline __attribute__((always_inline)) int security_sk_alloc(struct sock *sk, int family, gfp_t priority)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_sk_free(struct sock *sk)
{
}

static inline __attribute__((always_inline)) void security_sk_clone(const struct sock *sk, struct sock *newsk)
{
}

static inline __attribute__((always_inline)) void security_sk_classify_flow(struct sock *sk, struct flowi *fl)
{
}

static inline __attribute__((always_inline)) void security_req_classify_flow(const struct request_sock *req, struct flowi *fl)
{
}

static inline __attribute__((always_inline)) void security_sock_graft(struct sock *sk, struct socket *parent)
{
}

static inline __attribute__((always_inline)) int security_inet_conn_request(struct sock *sk,
   struct sk_buff *skb, struct request_sock *req)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_inet_csk_clone(struct sock *newsk,
   const struct request_sock *req)
{
}

static inline __attribute__((always_inline)) void security_inet_conn_established(struct sock *sk,
   struct sk_buff *skb)
{
}
# 2731 "include/linux/security.h"
static inline __attribute__((always_inline)) int security_xfrm_policy_alloc(struct xfrm_sec_ctx **ctxp, struct xfrm_user_sec_ctx *sec_ctx)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_xfrm_policy_clone(struct xfrm_sec_ctx *old, struct xfrm_sec_ctx **new_ctxp)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_xfrm_policy_free(struct xfrm_sec_ctx *ctx)
{
}

static inline __attribute__((always_inline)) int security_xfrm_policy_delete(struct xfrm_sec_ctx *ctx)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_xfrm_state_alloc(struct xfrm_state *x,
     struct xfrm_user_sec_ctx *sec_ctx)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_xfrm_state_alloc_acquire(struct xfrm_state *x,
     struct xfrm_sec_ctx *polsec, u32 secid)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_xfrm_state_free(struct xfrm_state *x)
{
}

static inline __attribute__((always_inline)) int security_xfrm_state_delete(struct xfrm_state *x)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_xfrm_policy_lookup(struct xfrm_sec_ctx *ctx, u32 fl_secid, u8 dir)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_xfrm_state_pol_flow_match(struct xfrm_state *x,
   struct xfrm_policy *xp, struct flowi *fl)
{
 return 1;
}

static inline __attribute__((always_inline)) int security_xfrm_decode_session(struct sk_buff *skb, u32 *secid)
{
 return 0;
}

static inline __attribute__((always_inline)) void security_skb_classify_flow(struct sk_buff *skb, struct flowi *fl)
{
}
# 2808 "include/linux/security.h"
static inline __attribute__((always_inline)) int security_path_unlink(struct path *dir, struct dentry *dentry)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_path_mkdir(struct path *dir, struct dentry *dentry,
          int mode)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_path_rmdir(struct path *dir, struct dentry *dentry)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_path_mknod(struct path *dir, struct dentry *dentry,
          int mode, unsigned int dev)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_path_truncate(struct path *path, loff_t length,
      unsigned int time_attrs)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_path_symlink(struct path *dir, struct dentry *dentry,
     const char *old_name)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_path_link(struct dentry *old_dentry,
         struct path *new_dir,
         struct dentry *new_dentry)
{
 return 0;
}

static inline __attribute__((always_inline)) int security_path_rename(struct path *old_dir,
           struct dentry *old_dentry,
           struct path *new_dir,
           struct dentry *new_dentry)
{
 return 0;
}
# 2939 "include/linux/security.h"
static inline __attribute__((always_inline)) struct dentry *securityfs_create_dir(const char *name,
         struct dentry *parent)
{
 return ERR_PTR(-19);
}

static inline __attribute__((always_inline)) struct dentry *securityfs_create_file(const char *name,
          mode_t mode,
          struct dentry *parent,
          void *data,
          const struct file_operations *fops)
{
 return ERR_PTR(-19);
}

static inline __attribute__((always_inline)) void securityfs_remove(struct dentry *dentry)
{}
# 2973 "include/linux/security.h"
static inline __attribute__((always_inline)) char *alloc_secdata(void)
{
        return (char *)1;
}

static inline __attribute__((always_inline)) void free_secdata(void *secdata)
{ }
# 54 "include/net/sock.h" 2

# 1 "include/linux/filter.h" 1
# 26 "include/linux/filter.h"
struct sock_filter
{
 __u16 code;
 __u8 jt;
 __u8 jf;
 __u32 k;
};

struct sock_fprog
{
 unsigned short len;
 struct sock_filter *filter;
};
# 131 "include/linux/filter.h"
struct sk_filter
{
 atomic_t refcnt;
 unsigned int len;
 struct rcu_head rcu;
 struct sock_filter insns[0];
};

static inline __attribute__((always_inline)) unsigned int sk_filter_len(const struct sk_filter *fp)
{
 return fp->len * sizeof(struct sock_filter) + sizeof(*fp);
}

struct sk_buff;
struct sock;

extern int sk_filter(struct sock *sk, struct sk_buff *skb);
extern unsigned int sk_run_filter(struct sk_buff *skb,
      struct sock_filter *filter, int flen);
extern int sk_attach_filter(struct sock_fprog *fprog, struct sock *sk);
extern int sk_detach_filter(struct sock *sk);
extern int sk_chk_filter(struct sock_filter *filter, int flen);
# 56 "include/net/sock.h" 2
# 1 "include/linux/rculist_nulls.h" 1
# 32 "include/linux/rculist_nulls.h"
static inline __attribute__((always_inline)) void hlist_nulls_del_init_rcu(struct hlist_nulls_node *n)
{
 if (!hlist_nulls_unhashed(n)) {
  __hlist_nulls_del(n);
  n->pprev = ((void *)0);
 }
}
# 59 "include/linux/rculist_nulls.h"
static inline __attribute__((always_inline)) void hlist_nulls_del_rcu(struct hlist_nulls_node *n)
{
 __hlist_nulls_del(n);
 n->pprev = ((void *) 0x00200200);
}
# 84 "include/linux/rculist_nulls.h"
static inline __attribute__((always_inline)) void hlist_nulls_add_head_rcu(struct hlist_nulls_node *n,
     struct hlist_nulls_head *h)
{
 struct hlist_nulls_node *first = h->first;

 n->next = first;
 n->pprev = &h->first;
 ({ if (!__builtin_constant_p(n) || ((n) != ((void *)0))) __asm__ __volatile__("   \n" : : : "memory"); (h->first) = (n); });
 if (!is_a_nulls(first))
  first->pprev = &n->next;
}
# 57 "include/net/sock.h" 2
# 85 "include/net/sock.h"
typedef struct {
 spinlock_t slock;
 int owned;
 wait_queue_head_t wq;
# 98 "include/net/sock.h"
} socket_lock_t;

struct sock;
struct proto;
struct net;
# 121 "include/net/sock.h"
struct sock_common {



 union {
  struct hlist_node skc_node;
  struct hlist_nulls_node skc_nulls_node;
 };
 atomic_t skc_refcnt;

 unsigned int skc_hash;
 unsigned short skc_family;
 volatile unsigned char skc_state;
 unsigned char skc_reuse;
 int skc_bound_dev_if;
 struct hlist_node skc_bind_node;
 struct proto *skc_prot;



};
# 208 "include/net/sock.h"
struct sock {




 struct sock_common __sk_common;
# 227 "include/net/sock.h"
 unsigned char sk_shutdown : 2,
    sk_no_check : 2,
    sk_userlocks : 4;
 unsigned char sk_protocol;
 unsigned short sk_type;
 int sk_rcvbuf;
 socket_lock_t sk_lock;





 struct {
  struct sk_buff *head;
  struct sk_buff *tail;
 } sk_backlog;
 wait_queue_head_t *sk_sleep;
 struct dst_entry *sk_dst_cache;



 rwlock_t sk_dst_lock;
 atomic_t sk_rmem_alloc;
 atomic_t sk_wmem_alloc;
 atomic_t sk_omem_alloc;
 int sk_sndbuf;
 struct sk_buff_head sk_receive_queue;
 struct sk_buff_head sk_write_queue;



 int sk_wmem_queued;
 int sk_forward_alloc;
 gfp_t sk_allocation;
 int sk_route_caps;
 int sk_gso_type;
 unsigned int sk_gso_max_size;
 int sk_rcvlowat;
 unsigned long sk_flags;
 unsigned long sk_lingertime;
 struct sk_buff_head sk_error_queue;
 struct proto *sk_prot_creator;
 rwlock_t sk_callback_lock;
 int sk_err,
    sk_err_soft;
 atomic_t sk_drops;
 unsigned short sk_ack_backlog;
 unsigned short sk_max_ack_backlog;
 __u32 sk_priority;
 struct ucred sk_peercred;
 long sk_rcvtimeo;
 long sk_sndtimeo;
 struct sk_filter *sk_filter;
 void *sk_protinfo;
 struct timer_list sk_timer;
 ktime_t sk_stamp;
 struct socket *sk_socket;
 void *sk_user_data;
 struct page *sk_sndmsg_page;
 struct sk_buff *sk_send_head;
 __u32 sk_sndmsg_off;
 int sk_write_pending;



 __u32 sk_mark;

 void (*sk_state_change)(struct sock *sk);
 void (*sk_data_ready)(struct sock *sk, int bytes);
 void (*sk_write_space)(struct sock *sk);
 void (*sk_error_report)(struct sock *sk);
   int (*sk_backlog_rcv)(struct sock *sk,
        struct sk_buff *skb);
 void (*sk_destruct)(struct sock *sk);
};




static inline __attribute__((always_inline)) struct sock *__sk_head(const struct hlist_head *head)
{
 return ({ const typeof( ((struct sock *)0)->__sk_common.skc_node ) *__mptr = (head->first); (struct sock *)( (char *)__mptr - ((size_t) &((struct sock *)0)->__sk_common.skc_node) );});
}

static inline __attribute__((always_inline)) struct sock *sk_head(const struct hlist_head *head)
{
 return hlist_empty(head) ? ((void *)0) : __sk_head(head);
}

static inline __attribute__((always_inline)) struct sock *__sk_nulls_head(const struct hlist_nulls_head *head)
{
 return ({ const typeof( ((struct sock *)0)->__sk_common.skc_nulls_node ) *__mptr = (head->first); (struct sock *)( (char *)__mptr - ((size_t) &((struct sock *)0)->__sk_common.skc_nulls_node) );});
}

static inline __attribute__((always_inline)) struct sock *sk_nulls_head(const struct hlist_nulls_head *head)
{
 return hlist_nulls_empty(head) ? ((void *)0) : __sk_nulls_head(head);
}

static inline __attribute__((always_inline)) struct sock *sk_next(const struct sock *sk)
{
 return sk->__sk_common.skc_node.next ?
  ({ const typeof( ((struct sock *)0)->__sk_common.skc_node ) *__mptr = (sk->__sk_common.skc_node.next); (struct sock *)( (char *)__mptr - ((size_t) &((struct sock *)0)->__sk_common.skc_node) );}) : ((void *)0);
}

static inline __attribute__((always_inline)) struct sock *sk_nulls_next(const struct sock *sk)
{
 return (!is_a_nulls(sk->__sk_common.skc_nulls_node.next)) ?
  ({ const typeof( ((struct sock *)0)->__sk_common.skc_nulls_node ) *__mptr = (sk->__sk_common.skc_nulls_node.next); (struct sock *)( (char *)__mptr - ((size_t) &((struct sock *)0)->__sk_common.skc_nulls_node) );}) :

  ((void *)0);
}

static inline __attribute__((always_inline)) int sk_unhashed(const struct sock *sk)
{
 return hlist_unhashed(&sk->__sk_common.skc_node);
}

static inline __attribute__((always_inline)) int sk_hashed(const struct sock *sk)
{
 return !sk_unhashed(sk);
}

static __inline__ __attribute__((always_inline)) void sk_node_init(struct hlist_node *node)
{
 node->pprev = ((void *)0);
}

static __inline__ __attribute__((always_inline)) void sk_nulls_node_init(struct hlist_nulls_node *node)
{
 node->pprev = ((void *)0);
}

static __inline__ __attribute__((always_inline)) void __sk_del_node(struct sock *sk)
{
 __hlist_del(&sk->__sk_common.skc_node);
}

static __inline__ __attribute__((always_inline)) int __sk_del_node_init(struct sock *sk)
{
 if (sk_hashed(sk)) {
  __sk_del_node(sk);
  sk_node_init(&sk->__sk_common.skc_node);
  return 1;
 }
 return 0;
}







static inline __attribute__((always_inline)) void sock_hold(struct sock *sk)
{
 atomic_add(1, (&sk->__sk_common.skc_refcnt));
}




static inline __attribute__((always_inline)) void __sock_put(struct sock *sk)
{
 atomic_sub(1, (&sk->__sk_common.skc_refcnt));
}

static __inline__ __attribute__((always_inline)) int sk_del_node_init(struct sock *sk)
{
 int rc = __sk_del_node_init(sk);

 if (rc) {

  ({ int __ret_warn_on = !!(((&sk->__sk_common.skc_refcnt)->counter) == 1); __builtin_expect(!!(__ret_warn_on), 0); });
  __sock_put(sk);
 }
 return rc;
}

static __inline__ __attribute__((always_inline)) int __sk_nulls_del_node_init_rcu(struct sock *sk)
{
 if (sk_hashed(sk)) {
  hlist_nulls_del_init_rcu(&sk->__sk_common.skc_nulls_node);
  return 1;
 }
 return 0;
}

static __inline__ __attribute__((always_inline)) int sk_nulls_del_node_init_rcu(struct sock *sk)
{
 int rc = __sk_nulls_del_node_init_rcu(sk);

 if (rc) {

  ({ int __ret_warn_on = !!(((&sk->__sk_common.skc_refcnt)->counter) == 1); __builtin_expect(!!(__ret_warn_on), 0); });
  __sock_put(sk);
 }
 return rc;
}

static __inline__ __attribute__((always_inline)) void __sk_add_node(struct sock *sk, struct hlist_head *list)
{
 hlist_add_head(&sk->__sk_common.skc_node, list);
}

static __inline__ __attribute__((always_inline)) void sk_add_node(struct sock *sk, struct hlist_head *list)
{
 sock_hold(sk);
 __sk_add_node(sk, list);
}

static __inline__ __attribute__((always_inline)) void __sk_nulls_add_node_rcu(struct sock *sk, struct hlist_nulls_head *list)
{
 hlist_nulls_add_head_rcu(&sk->__sk_common.skc_nulls_node, list);
}

static __inline__ __attribute__((always_inline)) void sk_nulls_add_node_rcu(struct sock *sk, struct hlist_nulls_head *list)
{
 sock_hold(sk);
 __sk_nulls_add_node_rcu(sk, list);
}

static __inline__ __attribute__((always_inline)) void __sk_del_bind_node(struct sock *sk)
{
 __hlist_del(&sk->__sk_common.skc_bind_node);
}

static __inline__ __attribute__((always_inline)) void sk_add_bind_node(struct sock *sk,
     struct hlist_head *list)
{
 hlist_add_head(&sk->__sk_common.skc_bind_node, list);
}
# 481 "include/net/sock.h"
enum sock_flags {
 SOCK_DEAD,
 SOCK_DONE,
 SOCK_URGINLINE,
 SOCK_KEEPOPEN,
 SOCK_LINGER,
 SOCK_DESTROY,
 SOCK_BROADCAST,
 SOCK_TIMESTAMP,
 SOCK_ZAPPED,
 SOCK_USE_WRITE_QUEUE,
 SOCK_DBG,
 SOCK_RCVTSTAMP,
 SOCK_RCVTSTAMPNS,
 SOCK_LOCALROUTE,
 SOCK_QUEUE_SHRUNK,
 SOCK_TIMESTAMPING_TX_HARDWARE,
 SOCK_TIMESTAMPING_TX_SOFTWARE,
 SOCK_TIMESTAMPING_RX_HARDWARE,
 SOCK_TIMESTAMPING_RX_SOFTWARE,
 SOCK_TIMESTAMPING_SOFTWARE,
 SOCK_TIMESTAMPING_RAW_HARDWARE,
 SOCK_TIMESTAMPING_SYS_HARDWARE,
};

static inline __attribute__((always_inline)) void sock_copy_flags(struct sock *nsk, struct sock *osk)
{
 nsk->sk_flags = osk->sk_flags;
}

static inline __attribute__((always_inline)) void sock_set_flag(struct sock *sk, enum sock_flags flag)
{
 __set_bit(flag, &sk->sk_flags);
}

static inline __attribute__((always_inline)) void sock_reset_flag(struct sock *sk, enum sock_flags flag)
{
 __clear_bit(flag, &sk->sk_flags);
}

static inline __attribute__((always_inline)) int sock_flag(struct sock *sk, enum sock_flags flag)
{
 return test_bit(flag, &sk->sk_flags);
}

static inline __attribute__((always_inline)) void sk_acceptq_removed(struct sock *sk)
{
 sk->sk_ack_backlog--;
}

static inline __attribute__((always_inline)) void sk_acceptq_added(struct sock *sk)
{
 sk->sk_ack_backlog++;
}

static inline __attribute__((always_inline)) int sk_acceptq_is_full(struct sock *sk)
{
 return sk->sk_ack_backlog > sk->sk_max_ack_backlog;
}




static inline __attribute__((always_inline)) int sk_stream_min_wspace(struct sock *sk)
{
 return sk->sk_wmem_queued >> 1;
}

static inline __attribute__((always_inline)) int sk_stream_wspace(struct sock *sk)
{
 return sk->sk_sndbuf - sk->sk_wmem_queued;
}

extern void sk_stream_write_space(struct sock *sk);

static inline __attribute__((always_inline)) int sk_stream_memory_free(struct sock *sk)
{
 return sk->sk_wmem_queued < sk->sk_sndbuf;
}


static inline __attribute__((always_inline)) void sk_add_backlog(struct sock *sk, struct sk_buff *skb)
{
 if (!sk->sk_backlog.tail) {
  sk->sk_backlog.head = sk->sk_backlog.tail = skb;
 } else {
  sk->sk_backlog.tail->next = skb;
  sk->sk_backlog.tail = skb;
 }
 skb->next = ((void *)0);
}

static inline __attribute__((always_inline)) int sk_backlog_rcv(struct sock *sk, struct sk_buff *skb)
{
 return sk->sk_backlog_rcv(sk, skb);
}
# 590 "include/net/sock.h"
extern int sk_stream_wait_connect(struct sock *sk, long *timeo_p);
extern int sk_stream_wait_memory(struct sock *sk, long *timeo_p);
extern void sk_stream_wait_close(struct sock *sk, long timeo_p);
extern int sk_stream_error(struct sock *sk, int flags, int err);
extern void sk_stream_kill_queues(struct sock *sk);

extern int sk_wait_data(struct sock *sk, long *timeo);

struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;





struct proto {
 void (*close)(struct sock *sk,
     long timeout);
 int (*connect)(struct sock *sk,
            struct sockaddr *uaddr,
     int addr_len);
 int (*disconnect)(struct sock *sk, int flags);

 struct sock * (*accept) (struct sock *sk, int flags, int *err);

 int (*ioctl)(struct sock *sk, int cmd,
      unsigned long arg);
 int (*init)(struct sock *sk);
 void (*destroy)(struct sock *sk);
 void (*shutdown)(struct sock *sk, int how);
 int (*setsockopt)(struct sock *sk, int level,
     int optname, char *optval,
     int optlen);
 int (*getsockopt)(struct sock *sk, int level,
     int optname, char *optval,
     int *option);
# 638 "include/net/sock.h"
 int (*sendmsg)(struct kiocb *iocb, struct sock *sk,
        struct msghdr *msg, size_t len);
 int (*recvmsg)(struct kiocb *iocb, struct sock *sk,
        struct msghdr *msg,
     size_t len, int noblock, int flags,
     int *addr_len);
 int (*sendpage)(struct sock *sk, struct page *page,
     int offset, size_t size, int flags);
 int (*bind)(struct sock *sk,
     struct sockaddr *uaddr, int addr_len);

 int (*backlog_rcv) (struct sock *sk,
      struct sk_buff *skb);


 void (*hash)(struct sock *sk);
 void (*unhash)(struct sock *sk);
 int (*get_port)(struct sock *sk, unsigned short snum);



 unsigned int inuse_idx;



 void (*enter_memory_pressure)(struct sock *sk);
 atomic_t *memory_allocated;
 struct percpu_counter *sockets_allocated;






 int *memory_pressure;
 int *sysctl_mem;
 int *sysctl_wmem;
 int *sysctl_rmem;
 int max_header;

 struct kmem_cache *slab;
 unsigned int obj_size;
 int slab_flags;

 struct percpu_counter *orphan_count;

 struct request_sock_ops *rsk_prot;
 struct timewait_sock_ops *twsk_prot;

 union {
  struct inet_hashinfo *hashinfo;
  struct udp_table *udp_table;
  struct raw_hashinfo *raw_hash;
 } h;

 struct module *owner;

 char name[32];

 struct list_head node;



};

extern int proto_register(struct proto *prot, int alloc_slab);
extern void proto_unregister(struct proto *prot);
# 734 "include/net/sock.h"
extern void sock_prot_inuse_add(struct net *net, struct proto *prot, int inc);
extern int sock_prot_inuse_get(struct net *net, struct proto *proto);
# 747 "include/net/sock.h"
static inline __attribute__((always_inline)) void __sk_prot_rehash(struct sock *sk)
{
 sk->__sk_common.skc_prot->unhash(sk);
 sk->__sk_common.skc_prot->hash(sk);
}
# 769 "include/net/sock.h"
struct sock_iocb {
 struct list_head list;

 int flags;
 int size;
 struct socket *sock;
 struct sock *sk;
 struct scm_cookie *scm;
 struct msghdr *msg, async_msg;
 struct kiocb *kiocb;
};

static inline __attribute__((always_inline)) struct sock_iocb *kiocb_to_siocb(struct kiocb *iocb)
{
 return (struct sock_iocb *)iocb->private;
}

static inline __attribute__((always_inline)) struct kiocb *siocb_to_kiocb(struct sock_iocb *si)
{
 return si->kiocb;
}

struct socket_alloc {
 struct socket socket;
 struct inode vfs_inode;
};

static inline __attribute__((always_inline)) struct socket *SOCKET_I(struct inode *inode)
{
 return &({ const typeof( ((struct socket_alloc *)0)->vfs_inode ) *__mptr = (inode); (struct socket_alloc *)( (char *)__mptr - ((size_t) &((struct socket_alloc *)0)->vfs_inode) );})->socket;
}

static inline __attribute__((always_inline)) struct inode *SOCK_INODE(struct socket *socket)
{
 return &({ const typeof( ((struct socket_alloc *)0)->socket ) *__mptr = (socket); (struct socket_alloc *)( (char *)__mptr - ((size_t) &((struct socket_alloc *)0)->socket) );})->vfs_inode;
}




extern int __sk_mem_schedule(struct sock *sk, int size, int kind);
extern void __sk_mem_reclaim(struct sock *sk);






static inline __attribute__((always_inline)) int sk_mem_pages(int amt)
{
 return (amt + ((int)(1UL << 12)) - 1) >> ( __builtin_constant_p(((int)(1UL << 12))) ? ( (((int)(1UL << 12))) < 1 ? ____ilog2_NaN() : (((int)(1UL << 12))) & (1ULL << 63) ? 63 : (((int)(1UL << 12))) & (1ULL << 62) ? 62 : (((int)(1UL << 12))) & (1ULL << 61) ? 61 : (((int)(1UL << 12))) & (1ULL << 60) ? 60 : (((int)(1UL << 12))) & (1ULL << 59) ? 59 : (((int)(1UL << 12))) & (1ULL << 58) ? 58 : (((int)(1UL << 12))) & (1ULL << 57) ? 57 : (((int)(1UL << 12))) & (1ULL << 56) ? 56 : (((int)(1UL << 12))) & (1ULL << 55) ? 55 : (((int)(1UL << 12))) & (1ULL << 54) ? 54 : (((int)(1UL << 12))) & (1ULL << 53) ? 53 : (((int)(1UL << 12))) & (1ULL << 52) ? 52 : (((int)(1UL << 12))) & (1ULL << 51) ? 51 : (((int)(1UL << 12))) & (1ULL << 50) ? 50 : (((int)(1UL << 12))) & (1ULL << 49) ? 49 : (((int)(1UL << 12))) & (1ULL << 48) ? 48 : (((int)(1UL << 12))) & (1ULL << 47) ? 47 : (((int)(1UL << 12))) & (1ULL << 46) ? 46 : (((int)(1UL << 12))) & (1ULL << 45) ? 45 : (((int)(1UL << 12))) & (1ULL << 44) ? 44 : (((int)(1UL << 12))) & (1ULL << 43) ? 43 : (((int)(1UL << 12))) & (1ULL << 42) ? 42 : (((int)(1UL << 12))) & (1ULL << 41) ? 41 : (((int)(1UL << 12))) & (1ULL << 40) ? 40 : (((int)(1UL << 12))) & (1ULL << 39) ? 39 : (((int)(1UL << 12))) & (1ULL << 38) ? 38 : (((int)(1UL << 12))) & (1ULL << 37) ? 37 : (((int)(1UL << 12))) & (1ULL << 36) ? 36 : (((int)(1UL << 12))) & (1ULL << 35) ? 35 : (((int)(1UL << 12))) & (1ULL << 34) ? 34 : (((int)(1UL << 12))) & (1ULL << 33) ? 33 : (((int)(1UL << 12))) & (1ULL << 32) ? 32 : (((int)(1UL << 12))) & (1ULL << 31) ? 31 : (((int)(1UL << 12))) & (1ULL << 30) ? 30 : (((int)(1UL << 12))) & (1ULL << 29) ? 29 : (((int)(1UL << 12))) & (1ULL << 28) ? 28 : (((int)(1UL << 12))) & (1ULL << 27) ? 27 : (((int)(1UL << 12))) & (1ULL << 26) ? 26 : (((int)(1UL << 12))) & (1ULL << 25) ? 25 : (((int)(1UL << 12))) & (1ULL << 24) ? 24 : (((int)(1UL << 12))) & (1ULL << 23) ? 23 : (((int)(1UL << 12))) & (1ULL << 22) ? 22 : (((int)(1UL << 12))) & (1ULL << 21) ? 21 : (((int)(1UL << 12))) & (1ULL << 20) ? 20 : (((int)(1UL << 12))) & (1ULL << 19) ? 19 : (((int)(1UL << 12))) & (1ULL << 18) ? 18 : (((int)(1UL << 12))) & (1ULL << 17) ? 17 : (((int)(1UL << 12))) & (1ULL << 16) ? 16 : (((int)(1UL << 12))) & (1ULL << 15) ? 15 : (((int)(1UL << 12))) & (1ULL << 14) ? 14 : (((int)(1UL << 12))) & (1ULL << 13) ? 13 : (((int)(1UL << 12))) & (1ULL << 12) ? 12 : (((int)(1UL << 12))) & (1ULL << 11) ? 11 : (((int)(1UL << 12))) & (1ULL << 10) ? 10 : (((int)(1UL << 12))) & (1ULL << 9) ? 9 : (((int)(1UL << 12))) & (1ULL << 8) ? 8 : (((int)(1UL << 12))) & (1ULL << 7) ? 7 : (((int)(1UL << 12))) & (1ULL << 6) ? 6 : (((int)(1UL << 12))) & (1ULL << 5) ? 5 : (((int)(1UL << 12))) & (1ULL << 4) ? 4 : (((int)(1UL << 12))) & (1ULL << 3) ? 3 : (((int)(1UL << 12))) & (1ULL << 2) ? 2 : (((int)(1UL << 12))) & (1ULL << 1) ? 1 : (((int)(1UL << 12))) & (1ULL << 0) ? 0 : ____ilog2_NaN() ) : (sizeof(((int)(1UL << 12))) <= 4) ? __ilog2_u32(((int)(1UL << 12))) : __ilog2_u64(((int)(1UL << 12))) );
}

static inline __attribute__((always_inline)) int sk_has_account(struct sock *sk)
{

 return !!sk->__sk_common.skc_prot->memory_allocated;
}

static inline __attribute__((always_inline)) int sk_wmem_schedule(struct sock *sk, int size)
{
 if (!sk_has_account(sk))
  return 1;
 return size <= sk->sk_forward_alloc ||
  __sk_mem_schedule(sk, size, 0);
}

static inline __attribute__((always_inline)) int sk_rmem_schedule(struct sock *sk, int size)
{
 if (!sk_has_account(sk))
  return 1;
 return size <= sk->sk_forward_alloc ||
  __sk_mem_schedule(sk, size, 1);
}

static inline __attribute__((always_inline)) void sk_mem_reclaim(struct sock *sk)
{
 if (!sk_has_account(sk))
  return;
 if (sk->sk_forward_alloc >= ((int)(1UL << 12)))
  __sk_mem_reclaim(sk);
}

static inline __attribute__((always_inline)) void sk_mem_reclaim_partial(struct sock *sk)
{
 if (!sk_has_account(sk))
  return;
 if (sk->sk_forward_alloc > ((int)(1UL << 12)))
  __sk_mem_reclaim(sk);
}

static inline __attribute__((always_inline)) void sk_mem_charge(struct sock *sk, int size)
{
 if (!sk_has_account(sk))
  return;
 sk->sk_forward_alloc -= size;
}

static inline __attribute__((always_inline)) void sk_mem_uncharge(struct sock *sk, int size)
{
 if (!sk_has_account(sk))
  return;
 sk->sk_forward_alloc += size;
}

static inline __attribute__((always_inline)) void sk_wmem_free_skb(struct sock *sk, struct sk_buff *skb)
{
 sock_set_flag(sk, SOCK_QUEUE_SHRUNK);
 sk->sk_wmem_queued -= skb->truesize;
 sk_mem_uncharge(sk, skb->truesize);
 __kfree_skb(skb);
}
# 916 "include/net/sock.h"
extern void lock_sock_nested(struct sock *sk, int subclass);

static inline __attribute__((always_inline)) void lock_sock(struct sock *sk)
{
 lock_sock_nested(sk, 0);
}

extern void release_sock(struct sock *sk);
# 932 "include/net/sock.h"
extern struct sock *sk_alloc(struct net *net, int family,
       gfp_t priority,
       struct proto *prot);
extern void sk_free(struct sock *sk);
extern void sk_release_kernel(struct sock *sk);
extern struct sock *sk_clone(const struct sock *sk,
       const gfp_t priority);

extern struct sk_buff *sock_wmalloc(struct sock *sk,
           unsigned long size, int force,
           gfp_t priority);
extern struct sk_buff *sock_rmalloc(struct sock *sk,
           unsigned long size, int force,
           gfp_t priority);
extern void sock_wfree(struct sk_buff *skb);
extern void sock_rfree(struct sk_buff *skb);

extern int sock_setsockopt(struct socket *sock, int level,
      int op, char *optval,
      int optlen);

extern int sock_getsockopt(struct socket *sock, int level,
      int op, char *optval,
      int *optlen);
extern struct sk_buff *sock_alloc_send_skb(struct sock *sk,
           unsigned long size,
           int noblock,
           int *errcode);
extern struct sk_buff *sock_alloc_send_pskb(struct sock *sk,
            unsigned long header_len,
            unsigned long data_len,
            int noblock,
            int *errcode);
extern void *sock_kmalloc(struct sock *sk, int size,
     gfp_t priority);
extern void sock_kfree_s(struct sock *sk, void *mem, int size);
extern void sk_send_sigurg(struct sock *sk);





extern int sock_no_bind(struct socket *,
          struct sockaddr *, int);
extern int sock_no_connect(struct socket *,
      struct sockaddr *, int, int);
extern int sock_no_socketpair(struct socket *,
         struct socket *);
extern int sock_no_accept(struct socket *,
            struct socket *, int);
extern int sock_no_getname(struct socket *,
      struct sockaddr *, int *, int);
extern unsigned int sock_no_poll(struct file *, struct socket *,
          struct poll_table_struct *);
extern int sock_no_ioctl(struct socket *, unsigned int,
           unsigned long);
extern int sock_no_listen(struct socket *, int);
extern int sock_no_shutdown(struct socket *, int);
extern int sock_no_getsockopt(struct socket *, int , int,
         char *, int *);
extern int sock_no_setsockopt(struct socket *, int, int,
         char *, int);
extern int sock_no_sendmsg(struct kiocb *, struct socket *,
      struct msghdr *, size_t);
extern int sock_no_recvmsg(struct kiocb *, struct socket *,
      struct msghdr *, size_t, int);
extern int sock_no_mmap(struct file *file,
          struct socket *sock,
          struct vm_area_struct *vma);
extern ssize_t sock_no_sendpage(struct socket *sock,
      struct page *page,
      int offset, size_t size,
      int flags);





extern int sock_common_getsockopt(struct socket *sock, int level, int optname,
      char *optval, int *optlen);
extern int sock_common_recvmsg(struct kiocb *iocb, struct socket *sock,
          struct msghdr *msg, size_t size, int flags);
extern int sock_common_setsockopt(struct socket *sock, int level, int optname,
      char *optval, int optlen);
extern int compat_sock_common_getsockopt(struct socket *sock, int level,
  int optname, char *optval, int *optlen);
extern int compat_sock_common_setsockopt(struct socket *sock, int level,
  int optname, char *optval, int optlen);

extern void sk_common_release(struct sock *sk);






extern void sock_init_data(struct socket *sock, struct sock *sk);
# 1037 "include/net/sock.h"
static inline __attribute__((always_inline)) void sk_filter_release(struct sk_filter *fp)
{
 if ((atomic_sub_return(1, (&fp->refcnt)) == 0))
  kfree(fp);
}

static inline __attribute__((always_inline)) void sk_filter_uncharge(struct sock *sk, struct sk_filter *fp)
{
 unsigned int size = sk_filter_len(fp);

 atomic_sub(size, &sk->sk_omem_alloc);
 sk_filter_release(fp);
}

static inline __attribute__((always_inline)) void sk_filter_charge(struct sock *sk, struct sk_filter *fp)
{
 atomic_add(1, (&fp->refcnt));
 atomic_add(sk_filter_len(fp), &sk->sk_omem_alloc);
}
# 1083 "include/net/sock.h"
static inline __attribute__((always_inline)) void sock_put(struct sock *sk)
{
 if ((atomic_sub_return(1, (&sk->__sk_common.skc_refcnt)) == 0))
  sk_free(sk);
}

extern int sk_receive_skb(struct sock *sk, struct sk_buff *skb,
     const int nested);

static inline __attribute__((always_inline)) void sk_set_socket(struct sock *sk, struct socket *sock)
{
 sk->sk_socket = sock;
}
# 1104 "include/net/sock.h"
static inline __attribute__((always_inline)) void sock_orphan(struct sock *sk)
{
 do { local_bh_disable(); do { do { } while (0); (void)0; (void)(&sk->sk_callback_lock); } while (0); } while (0);
 sock_set_flag(sk, SOCK_DEAD);
 sk_set_socket(sk, ((void *)0));
 sk->sk_sleep = ((void *)0);
 do { do { } while (0); local_bh_enable(); (void)0; (void)(&sk->sk_callback_lock); } while (0);
}

static inline __attribute__((always_inline)) void sock_graft(struct sock *sk, struct socket *parent)
{
 do { local_bh_disable(); do { do { } while (0); (void)0; (void)(&sk->sk_callback_lock); } while (0); } while (0);
 sk->sk_sleep = &parent->wait;
 parent->sk = sk;
 sk_set_socket(sk, parent);
 security_sock_graft(sk, parent);
 do { do { } while (0); local_bh_enable(); (void)0; (void)(&sk->sk_callback_lock); } while (0);
}

extern int sock_i_uid(struct sock *sk);
extern unsigned long sock_i_ino(struct sock *sk);

static inline __attribute__((always_inline)) struct dst_entry *
__sk_dst_get(struct sock *sk)
{
 return sk->sk_dst_cache;
}

static inline __attribute__((always_inline)) struct dst_entry *
sk_dst_get(struct sock *sk)
{
 struct dst_entry *dst;

 do { do { } while (0); (void)0; (void)(&sk->sk_dst_lock); } while (0);
 dst = sk->sk_dst_cache;
 if (dst)
  dst_hold(dst);
 do { do { } while (0); (void)0; (void)(&sk->sk_dst_lock); } while (0);
 return dst;
}

static inline __attribute__((always_inline)) void
__sk_dst_set(struct sock *sk, struct dst_entry *dst)
{
 struct dst_entry *old_dst;

 old_dst = sk->sk_dst_cache;
 sk->sk_dst_cache = dst;
 dst_release(old_dst);
}

static inline __attribute__((always_inline)) void
sk_dst_set(struct sock *sk, struct dst_entry *dst)
{
 do { do { } while (0); (void)0; (void)(&sk->sk_dst_lock); } while (0);
 __sk_dst_set(sk, dst);
 do { do { } while (0); (void)0; (void)(&sk->sk_dst_lock); } while (0);
}

static inline __attribute__((always_inline)) void
__sk_dst_reset(struct sock *sk)
{
 struct dst_entry *old_dst;

 old_dst = sk->sk_dst_cache;
 sk->sk_dst_cache = ((void *)0);
 dst_release(old_dst);
}

static inline __attribute__((always_inline)) void
sk_dst_reset(struct sock *sk)
{
 do { do { } while (0); (void)0; (void)(&sk->sk_dst_lock); } while (0);
 __sk_dst_reset(sk);
 do { do { } while (0); (void)0; (void)(&sk->sk_dst_lock); } while (0);
}

extern struct dst_entry *__sk_dst_check(struct sock *sk, u32 cookie);

extern struct dst_entry *sk_dst_check(struct sock *sk, u32 cookie);

static inline __attribute__((always_inline)) int sk_can_gso(const struct sock *sk)
{
 return net_gso_ok(sk->sk_route_caps, sk->sk_gso_type);
}

extern void sk_setup_caps(struct sock *sk, struct dst_entry *dst);

static inline __attribute__((always_inline)) int skb_copy_to_page(struct sock *sk, char *from,
       struct sk_buff *skb, struct page *page,
       int off, int copy)
{
 if (skb->ip_summed == 0) {
  int err = 0;
  __wsum csum = csum_and_copy_from_user(from,
           lowmem_page_address(page) + off,
           copy, 0, &err);
  if (err)
   return err;
  skb->csum = csum_block_add(skb->csum, csum, skb->len);
 } else if (({ void *__cu_to; const void *__cu_from; long __cu_len; __cu_to = (lowmem_page_address(page) + off); __cu_from = (from); __cu_len = (copy); if (__builtin_expect(!!(({ unsigned long __addr = (unsigned long) ((__cu_from)); unsigned long __size = (__cu_len); unsigned long __mask = (__current_thread_info->addr_limit).seg; unsigned long __ok; (void)0; __ok = (signed long)(__mask & (__addr | (__addr + __size) | ((__builtin_constant_p(__size) && (signed long) (__size) > 0) ? 0 : (__size)))); __ok == 0; })), 1)) { might_fault(); __cu_len = ({ register void *__cu_to_r __asm__("$4"); register const void *__cu_from_r __asm__("$5"); register long __cu_len_r __asm__("$6"); __cu_to_r = (__cu_to); __cu_from_r = (__cu_from); __cu_len_r = (__cu_len); __asm__ __volatile__( ".set\tnoreorder\n\t" "jal\t" "__copy_user" "\n\t" ".set\tnoat\n\t" "addu" "\t$1, %1, %2\n\t" ".set\tat\n\t" ".set\treorder" : "+r" (__cu_to_r), "+r" (__cu_from_r), "+r" (__cu_len_r) : : "$8", "$9", "$10", "$11", "$12", "$15", "$24", "$31", "$0", "memory"); __cu_len_r; }); } __cu_len; }))
  return -14;

 skb->len += copy;
 skb->data_len += copy;
 skb->truesize += copy;
 sk->sk_wmem_queued += copy;
 sk_mem_charge(sk, copy);
 return 0;
}
# 1224 "include/net/sock.h"
static inline __attribute__((always_inline)) void skb_set_owner_w(struct sk_buff *skb, struct sock *sk)
{
 sock_hold(sk);
 skb->sk = sk;
 skb->destructor = sock_wfree;
 atomic_add(skb->truesize, &sk->sk_wmem_alloc);
}

static inline __attribute__((always_inline)) void skb_set_owner_r(struct sk_buff *skb, struct sock *sk)
{
 skb_orphan(skb);
 skb_orphan(skb);
 skb->sk = sk;
 skb->destructor = sock_rfree;
 atomic_add(skb->truesize, &sk->sk_rmem_alloc);
 sk_mem_charge(sk, skb->truesize);
}

extern void sk_reset_timer(struct sock *sk, struct timer_list* timer,
      unsigned long expires);

extern void sk_stop_timer(struct sock *sk, struct timer_list* timer);

extern int sock_queue_rcv_skb(struct sock *sk, struct sk_buff *skb);

static inline __attribute__((always_inline)) int sock_queue_err_skb(struct sock *sk, struct sk_buff *skb)
{



 if (((&sk->sk_rmem_alloc)->counter) + skb->truesize >=
     (unsigned)sk->sk_rcvbuf)
  return -12;
 skb_set_owner_r(skb, sk);
 skb_queue_tail(&sk->sk_error_queue, skb);
 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_data_ready(sk, skb->len);
 return 0;
}





static inline __attribute__((always_inline)) int sock_error(struct sock *sk)
{
 int err;
 if (__builtin_expect(!!(!sk->sk_err), 1))
  return 0;
 err = ((__typeof__(*(&sk->sk_err)))__xchg((unsigned long)(0), (&sk->sk_err), sizeof(*(&sk->sk_err))));
 return -err;
}

static inline __attribute__((always_inline)) unsigned long sock_wspace(struct sock *sk)
{
 int amt = 0;

 if (!(sk->sk_shutdown & 2)) {
  amt = sk->sk_sndbuf - ((&sk->sk_wmem_alloc)->counter);
  if (amt < 0)
   amt = 0;
 }
 return amt;
}

static inline __attribute__((always_inline)) void sk_wake_async(struct sock *sk, int how, int band)
{
 if (sk->sk_socket && sk->sk_socket->fasync_list)
  sock_wake_async(sk->sk_socket, how, band);
}




static inline __attribute__((always_inline)) void sk_stream_moderate_sndbuf(struct sock *sk)
{
 if (!(sk->sk_userlocks & 1)) {
  sk->sk_sndbuf = ({ typeof(sk->sk_sndbuf) _min1 = (sk->sk_sndbuf); typeof(sk->sk_wmem_queued >> 1) _min2 = (sk->sk_wmem_queued >> 1); (void) (&_min1 == &_min2); _min1 < _min2 ? _min1 : _min2; });
  sk->sk_sndbuf = ({ typeof(sk->sk_sndbuf) _max1 = (sk->sk_sndbuf); typeof(2048) _max2 = (2048); (void) (&_max1 == &_max2); _max1 > _max2 ? _max1 : _max2; });
 }
}

struct sk_buff *sk_stream_alloc_skb(struct sock *sk, int size, gfp_t gfp);

static inline __attribute__((always_inline)) struct page *sk_stream_alloc_page(struct sock *sk)
{
 struct page *page = ((void *)0);

 page = alloc_pages_node((((void)(0),0)), sk->sk_allocation, 0);
 if (!page) {
  sk->__sk_common.skc_prot->enter_memory_pressure(sk);
  sk_stream_moderate_sndbuf(sk);
 }
 return page;
}




static inline __attribute__((always_inline)) int sock_writeable(const struct sock *sk)
{
 return ((&sk->sk_wmem_alloc)->counter) < (sk->sk_sndbuf >> 1);
}

static inline __attribute__((always_inline)) gfp_t gfp_any(void)
{
 return (((__current_thread_info->preempt_count) & (((1UL << (8))-1) << (0 + 8)))) ? ((( gfp_t)0x20u)) : ((( gfp_t)0x10u) | (( gfp_t)0x40u) | (( gfp_t)0x80u));
}

static inline __attribute__((always_inline)) long sock_rcvtimeo(const struct sock *sk, int noblock)
{
 return noblock ? 0 : sk->sk_rcvtimeo;
}

static inline __attribute__((always_inline)) long sock_sndtimeo(const struct sock *sk, int noblock)
{
 return noblock ? 0 : sk->sk_sndtimeo;
}

static inline __attribute__((always_inline)) int sock_rcvlowat(const struct sock *sk, int waitall, int len)
{
 return (waitall ? len : ({ int __min1 = (sk->sk_rcvlowat); int __min2 = (len); __min1 < __min2 ? __min1: __min2; })) ? : 1;
}




static inline __attribute__((always_inline)) int sock_intr_errno(long timeo)
{
 return timeo == ((long)(~0UL>>1)) ? -512 : -4;
}

extern void __sock_recv_timestamp(struct msghdr *msg, struct sock *sk,
 struct sk_buff *skb);

static __inline__ __attribute__((always_inline)) void
sock_recv_timestamp(struct msghdr *msg, struct sock *sk, struct sk_buff *skb)
{
 ktime_t kt = skb->tstamp;
 struct skb_shared_hwtstamps *hwtstamps = skb_hwtstamps(skb);
# 1375 "include/net/sock.h"
 if (sock_flag(sk, SOCK_RCVTSTAMP) ||
     sock_flag(sk, SOCK_TIMESTAMPING_RX_SOFTWARE) ||
     (kt.tv64 && sock_flag(sk, SOCK_TIMESTAMPING_SOFTWARE)) ||
     (hwtstamps->hwtstamp.tv64 &&
      sock_flag(sk, SOCK_TIMESTAMPING_RAW_HARDWARE)) ||
     (hwtstamps->syststamp.tv64 &&
      sock_flag(sk, SOCK_TIMESTAMPING_SYS_HARDWARE)))
  __sock_recv_timestamp(msg, sk, skb);
 else
  sk->sk_stamp = kt;
}
# 1396 "include/net/sock.h"
extern int sock_tx_timestamp(struct msghdr *msg,
        struct sock *sk,
        union skb_shared_tx *shtx);
# 1420 "include/net/sock.h"
static inline __attribute__((always_inline)) void sk_eat_skb(struct sock *sk, struct sk_buff *skb, int copied_early)
{
 __skb_unlink(skb, &sk->sk_receive_queue);
 __kfree_skb(skb);
}


static inline __attribute__((always_inline))
struct net *sock_net(const struct sock *sk)
{



 return &init_net;

}

static inline __attribute__((always_inline))
void sock_net_set(struct sock *sk, struct net *net)
{



}







static inline __attribute__((always_inline)) void sk_change_net(struct sock *sk, struct net *net)
{
 put_net(sock_net(sk));
 sock_net_set(sk, hold_net(net));
}

static inline __attribute__((always_inline)) struct sock *skb_steal_sock(struct sk_buff *skb)
{
 if (__builtin_expect(!!(skb->sk), 0)) {
  struct sock *sk = skb->sk;

  skb->destructor = ((void *)0);
  skb->sk = ((void *)0);
  return sk;
 }
 return ((void *)0);
}

extern void sock_enable_timestamp(struct sock *sk, int flag);
extern int sock_get_timestamp(struct sock *, struct timeval *);
extern int sock_get_timestampns(struct sock *, struct timespec *);




extern int net_msg_warn;






extern __u32 sysctl_wmem_max;
extern __u32 sysctl_rmem_max;

extern void sk_init(void);

extern int sysctl_optmem_max;

extern __u32 sysctl_wmem_default;
extern __u32 sysctl_rmem_default;
# 26 "include/net/inet_sock.h" 2
# 1 "include/net/request_sock.h" 1
# 25 "include/net/request_sock.h"
struct request_sock;
struct sk_buff;
struct dst_entry;
struct proto;

struct request_sock_ops {
 int family;
 int obj_size;
 struct kmem_cache *slab;
 char *slab_name;
 int (*rtx_syn_ack)(struct sock *sk,
           struct request_sock *req);
 void (*send_ack)(struct sock *sk, struct sk_buff *skb,
        struct request_sock *req);
 void (*send_reset)(struct sock *sk,
          struct sk_buff *skb);
 void (*destructor)(struct request_sock *req);
};



struct request_sock {
 struct request_sock *dl_next;
 u16 mss;
 u8 retrans;
 u8 cookie_ts;

 u32 window_clamp;
 u32 rcv_wnd;
 u32 ts_recent;
 unsigned long expires;
 const struct request_sock_ops *rsk_ops;
 struct sock *sk;
 u32 secid;
 u32 peer_secid;
};

static inline __attribute__((always_inline)) struct request_sock *reqsk_alloc(const struct request_sock_ops *ops)
{
 struct request_sock *req = kmem_cache_alloc(ops->slab, ((( gfp_t)0x20u)));

 if (req != ((void *)0))
  req->rsk_ops = ops;

 return req;
}

static inline __attribute__((always_inline)) void __reqsk_free(struct request_sock *req)
{
 kmem_cache_free(req->rsk_ops->slab, req);
}

static inline __attribute__((always_inline)) void reqsk_free(struct request_sock *req)
{
 req->rsk_ops->destructor(req);
 __reqsk_free(req);
}

extern int sysctl_max_syn_backlog;





struct listen_sock {
 u8 max_qlen_log;

 int qlen;
 int qlen_young;
 int clock_hand;
 u32 hash_rnd;
 u32 nr_table_entries;
 struct request_sock *syn_table[0];
};
# 116 "include/net/request_sock.h"
struct request_sock_queue {
 struct request_sock *rskq_accept_head;
 struct request_sock *rskq_accept_tail;
 rwlock_t syn_wait_lock;
 u8 rskq_defer_accept;

 struct listen_sock *listen_opt;
};

extern int reqsk_queue_alloc(struct request_sock_queue *queue,
        unsigned int nr_table_entries);

extern void __reqsk_queue_destroy(struct request_sock_queue *queue);
extern void reqsk_queue_destroy(struct request_sock_queue *queue);

static inline __attribute__((always_inline)) struct request_sock *
 reqsk_queue_yank_acceptq(struct request_sock_queue *queue)
{
 struct request_sock *req = queue->rskq_accept_head;

 queue->rskq_accept_head = ((void *)0);
 return req;
}

static inline __attribute__((always_inline)) int reqsk_queue_empty(struct request_sock_queue *queue)
{
 return queue->rskq_accept_head == ((void *)0);
}

static inline __attribute__((always_inline)) void reqsk_queue_unlink(struct request_sock_queue *queue,
          struct request_sock *req,
          struct request_sock **prev_req)
{
 do { do { } while (0); (void)0; (void)(&queue->syn_wait_lock); } while (0);
 *prev_req = req->dl_next;
 do { do { } while (0); (void)0; (void)(&queue->syn_wait_lock); } while (0);
}

static inline __attribute__((always_inline)) void reqsk_queue_add(struct request_sock_queue *queue,
       struct request_sock *req,
       struct sock *parent,
       struct sock *child)
{
 req->sk = child;
 sk_acceptq_added(parent);

 if (queue->rskq_accept_head == ((void *)0))
  queue->rskq_accept_head = req;
 else
  queue->rskq_accept_tail->dl_next = req;

 queue->rskq_accept_tail = req;
 req->dl_next = ((void *)0);
}

static inline __attribute__((always_inline)) struct request_sock *reqsk_queue_remove(struct request_sock_queue *queue)
{
 struct request_sock *req = queue->rskq_accept_head;

 ({ int __ret_warn_on = !!(req == ((void *)0)); __builtin_expect(!!(__ret_warn_on), 0); });

 queue->rskq_accept_head = req->dl_next;
 if (queue->rskq_accept_head == ((void *)0))
  queue->rskq_accept_tail = ((void *)0);

 return req;
}

static inline __attribute__((always_inline)) struct sock *reqsk_queue_get_child(struct request_sock_queue *queue,
       struct sock *parent)
{
 struct request_sock *req = reqsk_queue_remove(queue);
 struct sock *child = req->sk;

 ({ int __ret_warn_on = !!(child == ((void *)0)); __builtin_expect(!!(__ret_warn_on), 0); });

 sk_acceptq_removed(parent);
 __reqsk_free(req);
 return child;
}

static inline __attribute__((always_inline)) int reqsk_queue_removed(struct request_sock_queue *queue,
          struct request_sock *req)
{
 struct listen_sock *lopt = queue->listen_opt;

 if (req->retrans == 0)
  --lopt->qlen_young;

 return --lopt->qlen;
}

static inline __attribute__((always_inline)) int reqsk_queue_added(struct request_sock_queue *queue)
{
 struct listen_sock *lopt = queue->listen_opt;
 const int prev_qlen = lopt->qlen;

 lopt->qlen_young++;
 lopt->qlen++;
 return prev_qlen;
}

static inline __attribute__((always_inline)) int reqsk_queue_len(const struct request_sock_queue *queue)
{
 return queue->listen_opt != ((void *)0) ? queue->listen_opt->qlen : 0;
}

static inline __attribute__((always_inline)) int reqsk_queue_len_young(const struct request_sock_queue *queue)
{
 return queue->listen_opt->qlen_young;
}

static inline __attribute__((always_inline)) int reqsk_queue_is_full(const struct request_sock_queue *queue)
{
 return queue->listen_opt->qlen >> queue->listen_opt->max_qlen_log;
}

static inline __attribute__((always_inline)) void reqsk_queue_hash_req(struct request_sock_queue *queue,
     u32 hash, struct request_sock *req,
     unsigned long timeout)
{
 struct listen_sock *lopt = queue->listen_opt;

 req->expires = jiffies + timeout;
 req->retrans = 0;
 req->sk = ((void *)0);
 req->dl_next = lopt->syn_table[hash];

 do { do { } while (0); (void)0; (void)(&queue->syn_wait_lock); } while (0);
 lopt->syn_table[hash] = req;
 do { do { } while (0); (void)0; (void)(&queue->syn_wait_lock); } while (0);
}
# 27 "include/net/inet_sock.h" 2
# 1 "include/net/netns/hash.h" 1





struct net;

static inline __attribute__((always_inline)) unsigned net_hash_mix(struct net *net)
{
# 18 "include/net/netns/hash.h"
 return 0;

}
# 28 "include/net/inet_sock.h" 2
# 40 "include/net/inet_sock.h"
struct ip_options {
 __be32 faddr;
 unsigned char optlen;
 unsigned char srr;
 unsigned char rr;
 unsigned char ts;
 unsigned char is_strictroute:1,
   srr_is_hit:1,
   is_changed:1,
   rr_needaddr:1,
   ts_needtime:1,
   ts_needaddr:1;
 unsigned char router_alert;
 unsigned char cipso;
 unsigned char __pad2;
 unsigned char __data[0];
};



struct inet_request_sock {
 struct request_sock req;



 __be16 loc_port;
 __be32 loc_addr;
 __be32 rmt_addr;
 __be16 rmt_port;
 u16 snd_wscale : 4,
    rcv_wscale : 4,
    tstamp_ok : 1,
    sack_ok : 1,
    wscale_ok : 1,
    ecn_ok : 1,
    acked : 1,
    no_srccheck: 1;
 struct ip_options *opt;
};

static inline __attribute__((always_inline)) struct inet_request_sock *inet_rsk(const struct request_sock *sk)
{
 return (struct inet_request_sock *)sk;
}

struct ip_mc_socklist;
struct ipv6_pinfo;
struct rtable;
# 108 "include/net/inet_sock.h"
struct inet_sock {

 struct sock sk;




 __be32 daddr;
 __be32 rcv_saddr;
 __be16 dport;
 __u16 num;
 __be32 saddr;
 __s16 uc_ttl;
 __u16 cmsg_flags;
 struct ip_options *opt;
 __be16 sport;
 __u16 id;
 __u8 tos;
 __u8 mc_ttl;
 __u8 pmtudisc;
 __u8 recverr:1,
    is_icsk:1,
    freebind:1,
    hdrincl:1,
    mc_loop:1,
    transparent:1;
 int mc_index;
 __be32 mc_addr;
 struct ip_mc_socklist *mc_list;
 struct {
  unsigned int flags;
  unsigned int fragsize;
  struct ip_options *opt;
  struct dst_entry *dst;
  int length;
  __be32 addr;
  struct flowi fl;
 } cork;
};




static inline __attribute__((always_inline)) struct inet_sock *inet_sk(const struct sock *sk)
{
 return (struct inet_sock *)sk;
}

static inline __attribute__((always_inline)) void __inet_sk_copy_descendant(struct sock *sk_to,
          const struct sock *sk_from,
          const int ancestor_size)
{
 memcpy(inet_sk(sk_to) + 1, inet_sk(sk_from) + 1,
        sk_from->__sk_common.skc_prot->obj_size - ancestor_size);
}

static inline __attribute__((always_inline)) void inet_sk_copy_descendant(struct sock *sk_to,
        const struct sock *sk_from)
{
 __inet_sk_copy_descendant(sk_to, sk_from, sizeof(struct inet_sock));
}


extern int inet_sk_rebuild_header(struct sock *sk);

extern u32 inet_ehash_secret;
extern void build_ehash_secret(void);

static inline __attribute__((always_inline)) unsigned int inet_ehashfn(struct net *net,
     const __be32 laddr, const __u16 lport,
     const __be32 faddr, const __be16 fport)
{
 return jhash_3words(( __u32) laddr,
       ( __u32) faddr,
       ((__u32) lport) << 16 | ( __u32)fport,
       inet_ehash_secret + net_hash_mix(net));
}

static inline __attribute__((always_inline)) int inet_sk_ehashfn(const struct sock *sk)
{
 const struct inet_sock *inet = inet_sk(sk);
 const __be32 laddr = inet->rcv_saddr;
 const __u16 lport = inet->num;
 const __be32 faddr = inet->daddr;
 const __be16 fport = inet->dport;
 struct net *net = sock_net(sk);

 return inet_ehashfn(net, laddr, lport, faddr, fport);
}

static inline __attribute__((always_inline)) struct request_sock *inet_reqsk_alloc(struct request_sock_ops *ops)
{
 struct request_sock *req = reqsk_alloc(ops);

 if (req != ((void *)0))
  inet_rsk(req)->opt = ((void *)0);

 return req;
}

static inline __attribute__((always_inline)) __u8 inet_sk_flowi_flags(const struct sock *sk)
{
 return inet_sk(sk)->transparent ? 0x01 : 0;
}
# 31 "include/net/route.h" 2
# 1 "include/linux/in_route.h" 1
# 32 "include/net/route.h" 2

# 1 "include/linux/route.h" 1
# 30 "include/linux/route.h"
struct rtentry
{
 unsigned long rt_pad1;
 struct sockaddr rt_dst;
 struct sockaddr rt_gateway;
 struct sockaddr rt_genmask;
 unsigned short rt_flags;
 short rt_pad2;
 unsigned long rt_pad3;
 void *rt_pad4;
 short rt_metric;
 char *rt_dev;
 unsigned long rt_mtu;



 unsigned long rt_window;
 unsigned short rt_irtt;
};
# 34 "include/net/route.h" 2
# 1 "include/linux/ip.h" 1
# 85 "include/linux/ip.h"
struct iphdr {




 __u8 version:4,
    ihl:4;



 __u8 tos;
 __be16 tot_len;
 __be16 id;
 __be16 frag_off;
 __u8 ttl;
 __u8 protocol;
 __sum16 check;
 __be32 saddr;
 __be32 daddr;

};




static inline __attribute__((always_inline)) struct iphdr *ip_hdr(const struct sk_buff *skb)
{
 return (struct iphdr *)skb_network_header(skb);
}

static inline __attribute__((always_inline)) struct iphdr *ipip_hdr(const struct sk_buff *skb)
{
 return (struct iphdr *)skb_transport_header(skb);
}


struct ip_auth_hdr {
 __u8 nexthdr;
 __u8 hdrlen;
 __be16 reserved;
 __be32 spi;
 __be32 seq_no;
 __u8 auth_data[0];
};

struct ip_esp_hdr {
 __be32 spi;
 __be32 seq_no;
 __u8 enc_data[0];
};

struct ip_comp_hdr {
 __u8 nexthdr;
 __u8 flags;
 __be16 cpi;
};

struct ip_beet_phdr {
 __u8 nexthdr;
 __u8 hdrlen;
 __u8 padlen;
 __u8 reserved;
};
# 35 "include/net/route.h" 2
# 50 "include/net/route.h"
struct fib_nh;
struct inet_peer;
struct rtable
{
 union
 {
  struct dst_entry dst;
 } u;


 struct flowi fl;

 struct in_device *idev;

 int rt_genid;
 unsigned rt_flags;
 __u16 rt_type;

 __be32 rt_dst;
 __be32 rt_src;
 int rt_iif;


 __be32 rt_gateway;


 __be32 rt_spec_dst;
 struct inet_peer *peer;
};

struct ip_rt_acct
{
 __u32 o_bytes;
 __u32 o_packets;
 __u32 i_bytes;
 __u32 i_packets;
};

struct rt_cache_stat
{
        unsigned int in_hit;
        unsigned int in_slow_tot;
        unsigned int in_slow_mc;
        unsigned int in_no_route;
        unsigned int in_brd;
        unsigned int in_martian_dst;
        unsigned int in_martian_src;
        unsigned int out_hit;
        unsigned int out_slow_tot;
        unsigned int out_slow_mc;
        unsigned int gc_total;
        unsigned int gc_ignored;
        unsigned int gc_goal_miss;
        unsigned int gc_dst_overflow;
        unsigned int in_hlist_search;
        unsigned int out_hlist_search;
};

extern struct ip_rt_acct *ip_rt_acct;

struct in_device;
extern int ip_rt_init(void);
extern void ip_rt_redirect(__be32 old_gw, __be32 dst, __be32 new_gw,
           __be32 src, struct net_device *dev);
extern void rt_cache_flush(struct net *net, int how);
extern int __ip_route_output_key(struct net *, struct rtable **, const struct flowi *flp);
extern int ip_route_output_key(struct net *, struct rtable **, struct flowi *flp);
extern int ip_route_output_flow(struct net *, struct rtable **rp, struct flowi *flp, struct sock *sk, int flags);
extern int ip_route_input(struct sk_buff*, __be32 dst, __be32 src, u8 tos, struct net_device *devin);
extern unsigned short ip_rt_frag_needed(struct net *net, struct iphdr *iph, unsigned short new_mtu, struct net_device *dev);
extern void ip_rt_send_redirect(struct sk_buff *skb);

extern unsigned inet_addr_type(struct net *net, __be32 addr);
extern unsigned inet_dev_addr_type(struct net *net, const struct net_device *dev, __be32 addr);
extern void ip_rt_multicast_event(struct in_device *);
extern int ip_rt_ioctl(struct net *, unsigned int cmd, void *arg);
extern void ip_rt_get_source(u8 *src, struct rtable *rt);
extern int ip_rt_dump(struct sk_buff *skb, struct netlink_callback *cb);

struct in_ifaddr;
extern void fib_add_ifaddr(struct in_ifaddr *);

static inline __attribute__((always_inline)) void ip_rt_put(struct rtable * rt)
{
 if (rt)
  dst_release(&rt->u.dst);
}



extern const __u8 ip_tos2prio[16];

static inline __attribute__((always_inline)) char rt_tos2priority(u8 tos)
{
 return ip_tos2prio[((tos)&0x1E)>>1];
}

static inline __attribute__((always_inline)) int ip_route_connect(struct rtable **rp, __be32 dst,
       __be32 src, u32 tos, int oif, u8 protocol,
       __be16 sport, __be16 dport, struct sock *sk,
       int flags)
{
 struct flowi fl = { .oif = oif,
       .mark = sk->sk_mark,
       .nl_u = { .ip4_u = { .daddr = dst,
       .saddr = src,
       .tos = tos } },
       .proto = protocol,
       .uli_u = { .ports =
           { .sport = sport,
      .dport = dport } } };

 int err;
 struct net *net = sock_net(sk);

 if (inet_sk(sk)->transparent)
  fl.flags |= 0x01;

 if (!dst || !src) {
  err = __ip_route_output_key(net, rp, &fl);
  if (err)
   return err;
  fl.nl_u.ip4_u.daddr = (*rp)->rt_dst;
  fl.nl_u.ip4_u.saddr = (*rp)->rt_src;
  ip_rt_put(*rp);
  *rp = ((void *)0);
 }
 security_sk_classify_flow(sk, &fl);
 return ip_route_output_flow(net, rp, &fl, sk, flags);
}

static inline __attribute__((always_inline)) int ip_route_newports(struct rtable **rp, u8 protocol,
        __be16 sport, __be16 dport, struct sock *sk)
{
 if (sport != (*rp)->fl.uli_u.ports.sport ||
     dport != (*rp)->fl.uli_u.ports.dport) {
  struct flowi fl;

  memcpy(&fl, &(*rp)->fl, sizeof(fl));
  fl.uli_u.ports.sport = sport;
  fl.uli_u.ports.dport = dport;
  fl.proto = protocol;
  ip_rt_put(*rp);
  *rp = ((void *)0);
  security_sk_classify_flow(sk, &fl);
  return ip_route_output_flow(sock_net(sk), rp, &fl, sk, 0);
 }
 return 0;
}

extern void rt_bind_peer(struct rtable *rt, int create);

static inline __attribute__((always_inline)) struct inet_peer *rt_get_peer(struct rtable *rt)
{
 if (rt->peer)
  return rt->peer;

 rt_bind_peer(rt, 0);
 return rt->peer;
}

static inline __attribute__((always_inline)) int inet_iif(const struct sk_buff *skb)
{
 return skb->rtable->rt_iif;
}
# 19 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/net/bridge/br_private.h" 2
# 39 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/net/bridge/br_private.h"
extern int rtk_vlan_support_enable;
# 86 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/net/bridge/br_private.h"
typedef struct bridge_id bridge_id;
typedef struct mac_addr mac_addr;
typedef __u16 port_id;



struct fdb_igmp_ext_entry
{
 int valid;
 unsigned long ageing_time;
 unsigned char SrcMac[6];
 unsigned char port;

};

struct fdb_igmp_ext_array
{
 struct fdb_igmp_ext_entry igmp_fdb_arr[8];
};



struct bridge_id
{
 unsigned char prio[2];
 unsigned char addr[6];
};

struct mac_addr
{
 unsigned char addr[6];
};

struct net_bridge_fdb_entry
{
 struct hlist_node hlist;
 struct net_bridge_port *dst;

 struct rcu_head rcu;
 atomic_t use_count;
 unsigned long ageing_timer;

 unsigned short group_src;
 unsigned char igmpFlag;
 unsigned char portlist;
 int portUsedNum[8];

 struct fdb_igmp_ext_entry igmp_fdb_arr[8];


 mac_addr addr;
 unsigned char is_local;
 unsigned char is_static;
};

struct net_bridge_port
{
 struct net_bridge *br;
 struct net_device *dev;
 struct list_head list;


 u8 priority;
 u8 state;
 u16 port_no;
 unsigned char topology_change_ack;
 unsigned char config_pending;
 port_id port_id;
 port_id designated_port;
 bridge_id designated_root;
 bridge_id designated_bridge;
 u32 path_cost;
 u32 designated_cost;

 struct timer_list forward_delay_timer;
 struct timer_list hold_timer;
 struct timer_list message_age_timer;
 struct kobject kobj;
 struct rcu_head rcu;
# 175 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/net/bridge/br_private.h"
};

struct net_bridge
{
 spinlock_t lock;
 struct list_head port_list;
 struct net_device *dev;
 spinlock_t hash_lock;
 struct hlist_head hash[(1 << 8)];
 struct list_head age_list;
 unsigned long feature_mask;



 unsigned long flags;



 bridge_id designated_root;
 bridge_id bridge_id;
 u32 root_path_cost;
 unsigned long max_age;
 unsigned long hello_time;
 unsigned long forward_delay;
 unsigned long bridge_max_age;
 unsigned long ageing_time;
 unsigned long bridge_hello_time;
 unsigned long bridge_forward_delay;

 u8 group_addr[6];
 u16 root_port;

 enum {
  BR_NO_STP,
  BR_KERNEL_STP,
  BR_USER_STP,
 } stp_enabled;

 unsigned char topology_change;
 unsigned char topology_change_detected;

 struct timer_list hello_timer;
 struct timer_list tcn_timer;
 struct timer_list topology_change_timer;
 struct timer_list gc_timer;
 struct kobject *ifobj;
# 242 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/net/bridge/br_private.h"
 int igmpProxy_pid;
 struct timer_list mCastQuerytimer;

};

extern struct notifier_block br_device_notifier;
extern const u8 br_group_address[6];


static inline __attribute__((always_inline)) int br_is_root_bridge(const struct net_bridge *br)
{
 return !memcmp(&br->bridge_id, &br->designated_root, 8);
}


extern void br_dev_setup(struct net_device *dev);
extern int br_dev_xmit(struct sk_buff *skb, struct net_device *dev);


extern int br_fdb_init(void);
extern void br_fdb_fini(void);
extern void br_fdb_flush(struct net_bridge *br);
extern void br_fdb_changeaddr(struct net_bridge_port *p,
         const unsigned char *newaddr);
extern void br_fdb_cleanup(unsigned long arg);
extern void br_fdb_delete_by_port(struct net_bridge *br,
      const struct net_bridge_port *p, int do_all);
extern struct net_bridge_fdb_entry *__br_fdb_get(struct net_bridge *br,
       const unsigned char *addr);
extern struct net_bridge_fdb_entry *br_fdb_get(struct net_bridge *br,
            unsigned char *addr);
extern void br_fdb_put(struct net_bridge_fdb_entry *ent);
extern int br_fdb_fillbuf(struct net_bridge *br, void *buf,
     unsigned long count, unsigned long off);
extern int br_fdb_insert(struct net_bridge *br,
    struct net_bridge_port *source,
    const unsigned char *addr);
extern void br_fdb_update(struct net_bridge *br,
     struct net_bridge_port *source,
     const unsigned char *addr);


extern void br_deliver(const struct net_bridge_port *to,
  struct sk_buff *skb);
extern int br_dev_queue_push_xmit(struct sk_buff *skb);
extern void br_forward(const struct net_bridge_port *to,
  struct sk_buff *skb);
extern int br_forward_finish(struct sk_buff *skb);
extern void br_flood_deliver(struct net_bridge *br, struct sk_buff *skb);
extern void br_flood_forward(struct net_bridge *br, struct sk_buff *skb);


void br_multicast_deliver(struct net_bridge *br,
   unsigned int fwdPortMask,
   struct sk_buff *skb,
   int clone);

void br_multicast_forward(struct net_bridge *br,
                        unsigned int fwdPortMask,
                        struct sk_buff *skb,
                        int clone);



extern void br_port_carrier_check(struct net_bridge_port *p);
extern int br_add_bridge(struct net *net, const char *name);
extern int br_del_bridge(struct net *net, const char *name);
extern void br_net_exit(struct net *net);
extern int br_add_if(struct net_bridge *br,
       struct net_device *dev);
extern int br_del_if(struct net_bridge *br,
       struct net_device *dev);
extern int br_min_mtu(const struct net_bridge *br);
extern void br_features_recompute(struct net_bridge *br);






extern int br_handle_frame_finish(struct sk_buff *skb);
extern struct sk_buff *br_handle_frame(struct net_bridge_port *p,
           struct sk_buff *skb);


extern int br_dev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
extern int br_ioctl_deviceless_stub(struct net *net, unsigned int cmd, void *arg);
# 342 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/net/bridge/br_private.h"
extern void br_log_state(const struct net_bridge_port *p);
extern struct net_bridge_port *br_get_port(struct net_bridge *br,
        u16 port_no);
extern void br_init_port(struct net_bridge_port *p);
extern void br_become_designated_port(struct net_bridge_port *p);


extern void br_stp_enable_bridge(struct net_bridge *br);
extern void br_stp_disable_bridge(struct net_bridge *br);
extern void br_stp_set_enabled(struct net_bridge *br, unsigned long val);
extern void br_stp_enable_port(struct net_bridge_port *p);
extern void br_stp_disable_port(struct net_bridge_port *p);
extern void br_stp_recalculate_bridge_id(struct net_bridge *br);
extern void br_stp_change_bridge_id(struct net_bridge *br, const unsigned char *a);
extern void br_stp_set_bridge_priority(struct net_bridge *br,
           u16 newprio);
extern void br_stp_set_port_priority(struct net_bridge_port *p,
         u8 newprio);
extern void br_stp_set_path_cost(struct net_bridge_port *p,
     u32 path_cost);
extern ssize_t br_show_bridge_id(char *buf, const struct bridge_id *id);


struct stp_proto;
extern void br_stp_rcv(const struct stp_proto *proto, struct sk_buff *skb,
         struct net_device *dev);


extern void br_stp_timer_init(struct net_bridge *br);
extern void br_stp_port_timer_init(struct net_bridge_port *p);
extern unsigned long br_timer_value(const struct timer_list *timer);


extern struct net_bridge_fdb_entry *(*br_fdb_get_hook)(struct net_bridge *br,
             unsigned char *addr);
extern void (*br_fdb_put_hook)(struct net_bridge_fdb_entry *ent);



extern int br_netlink_init(void);
extern void br_netlink_fini(void);
extern void br_ifinfo_notify(int event, struct net_bridge_port *port);



extern struct sysfs_ops brport_sysfs_ops;
extern int br_sysfs_addif(struct net_bridge_port *p);


extern int br_sysfs_addbr(struct net_device *dev);
extern void br_sysfs_delbr(struct net_device *dev);
# 10 "net/rtl/fastpath/fastpath_common.c" 2







# 1 "include/linux/netfilter_ipv4/ip_tables.h" 1
# 38 "include/linux/netfilter_ipv4/ip_tables.h"
struct ipt_ip {

 struct in_addr src, dst;

 struct in_addr smsk, dmsk;
 char iniface[16], outiface[16];
 unsigned char iniface_mask[16], outiface_mask[16];


 u_int16_t proto;


 u_int8_t flags;

 u_int8_t invflags;
};
# 84 "include/linux/netfilter_ipv4/ip_tables.h"
struct ipt_entry
{
 struct ipt_ip ip;


 unsigned int nfcache;


 u_int16_t target_offset;

 u_int16_t next_offset;


 unsigned int comefrom;


 struct xt_counters counters;


 unsigned char elems[0];
};
# 128 "include/linux/netfilter_ipv4/ip_tables.h"
# 1 "include/linux/netfilter/xt_tcpudp.h" 1






struct xt_tcp
{
 __u16 spts[2];
 __u16 dpts[2];
 __u8 option;
 __u8 flg_mask;
 __u8 flg_cmp;
 __u8 invflags;
};
# 25 "include/linux/netfilter/xt_tcpudp.h"
struct xt_udp
{
 __u16 spts[2];
 __u16 dpts[2];
 __u8 invflags;
};
# 129 "include/linux/netfilter_ipv4/ip_tables.h" 2
# 143 "include/linux/netfilter_ipv4/ip_tables.h"
struct ipt_icmp
{
 u_int8_t type;
 u_int8_t code[2];
 u_int8_t invflags;
};





struct ipt_getinfo
{

 char name[32];



 unsigned int valid_hooks;


 unsigned int hook_entry[NF_INET_NUMHOOKS];


 unsigned int underflow[NF_INET_NUMHOOKS];


 unsigned int num_entries;


 unsigned int size;
};


struct ipt_replace
{

 char name[32];



 unsigned int valid_hooks;


 unsigned int num_entries;


 unsigned int size;


 unsigned int hook_entry[NF_INET_NUMHOOKS];


 unsigned int underflow[NF_INET_NUMHOOKS];



 unsigned int num_counters;

 struct xt_counters *counters;


 struct ipt_entry entries[0];
};





struct ipt_get_entries
{

 char name[32];


 unsigned int size;


 struct ipt_entry entrytable[0];
};







static __inline__ __attribute__((always_inline)) struct xt_entry_target *
ipt_get_target(struct ipt_entry *e)
{
 return (void *)e + e->target_offset;
}
# 269 "include/linux/netfilter_ipv4/ip_tables.h"
extern void ipt_init(void) __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function));

extern struct xt_table *ipt_register_table(struct net *net,
        struct xt_table *table,
        const struct ipt_replace *repl);
extern void ipt_unregister_table(struct xt_table *table);


struct ipt_standard
{
 struct ipt_entry entry;
 struct xt_standard_target target;
};

struct ipt_error_target
{
 struct xt_entry_target target;
 char errorname[30];
};

struct ipt_error
{
 struct ipt_entry entry;
 struct ipt_error_target target;
};
# 317 "include/linux/netfilter_ipv4/ip_tables.h"
extern unsigned int ipt_do_table(struct sk_buff *skb,
     unsigned int hook,
     const struct net_device *in,
     const struct net_device *out,
     struct xt_table *table);
# 388 "include/linux/netfilter_ipv4/ip_tables.h"
extern unsigned int (*IgmpRxFilter_Hook)(struct sk_buff *skb,
      unsigned int hook,
      const struct net_device *in,
      const struct net_device *out,
      struct xt_table *table);
# 18 "net/rtl/fastpath/fastpath_common.c" 2
extern int gQosEnabled;


# 1 "include/net/rtl/fastpath/fastpath_core.h" 1







# 1 "include/linux/udp.h" 1
# 22 "include/linux/udp.h"
struct udphdr {
 __be16 source;
 __be16 dest;
 __be16 len;
 __sum16 check;
};
# 43 "include/linux/udp.h"
static inline __attribute__((always_inline)) struct udphdr *udp_hdr(const struct sk_buff *skb)
{
 return (struct udphdr *)skb_transport_header(skb);
}



static inline __attribute__((always_inline)) int udp_hashfn(struct net *net, const unsigned num)
{
 return (num + net_hash_mix(net)) & (128 - 1);
}

struct udp_sock {

 struct inet_sock inet;
 int pending;
 unsigned int corkflag;
   __u16 encap_type;




 __u16 len;



 __u16 pcslen;
 __u16 pcrlen;




 __u8 pcflag;
 __u8 unused[3];



 int (*encap_rcv)(struct sock *sk, struct sk_buff *skb);
};

static inline __attribute__((always_inline)) struct udp_sock *udp_sk(const struct sock *sk)
{
 return (struct udp_sock *)sk;
}
# 9 "include/net/rtl/fastpath/fastpath_core.h" 2
# 1 "include/linux/tcp.h" 1
# 24 "include/linux/tcp.h"
struct tcphdr {
 __be16 source;
 __be16 dest;
 __be32 seq;
 __be32 ack_seq;
# 41 "include/linux/tcp.h"
 __u16 doff:4,
  res1:4,
  cwr:1,
  ece:1,
  urg:1,
  ack:1,
  psh:1,
  rst:1,
  syn:1,
  fin:1;



 __be16 window;
 __sum16 check;
 __be16 urg_ptr;
};






union tcp_word_hdr {
 struct tcphdr hdr;
 __be32 words[5];
};



enum {
 TCP_FLAG_CWR = (( __be32)(__u32)(0x00800000)),
 TCP_FLAG_ECE = (( __be32)(__u32)(0x00400000)),
 TCP_FLAG_URG = (( __be32)(__u32)(0x00200000)),
 TCP_FLAG_ACK = (( __be32)(__u32)(0x00100000)),
 TCP_FLAG_PSH = (( __be32)(__u32)(0x00080000)),
 TCP_FLAG_RST = (( __be32)(__u32)(0x00040000)),
 TCP_FLAG_SYN = (( __be32)(__u32)(0x00020000)),
 TCP_FLAG_FIN = (( __be32)(__u32)(0x00010000)),
 TCP_RESERVED_BITS = (( __be32)(__u32)(0x0F000000)),
 TCP_DATA_OFFSET = (( __be32)(__u32)(0xF0000000))
};
# 105 "include/linux/tcp.h"
enum tcp_ca_state
{
 TCP_CA_Open = 0,

 TCP_CA_Disorder = 1,

 TCP_CA_CWR = 2,

 TCP_CA_Recovery = 3,

 TCP_CA_Loss = 4

};

struct tcp_info
{
 __u8 tcpi_state;
 __u8 tcpi_ca_state;
 __u8 tcpi_retransmits;
 __u8 tcpi_probes;
 __u8 tcpi_backoff;
 __u8 tcpi_options;
 __u8 tcpi_snd_wscale : 4, tcpi_rcv_wscale : 4;

 __u32 tcpi_rto;
 __u32 tcpi_ato;
 __u32 tcpi_snd_mss;
 __u32 tcpi_rcv_mss;

 __u32 tcpi_unacked;
 __u32 tcpi_sacked;
 __u32 tcpi_lost;
 __u32 tcpi_retrans;
 __u32 tcpi_fackets;


 __u32 tcpi_last_data_sent;
 __u32 tcpi_last_ack_sent;
 __u32 tcpi_last_data_recv;
 __u32 tcpi_last_ack_recv;


 __u32 tcpi_pmtu;
 __u32 tcpi_rcv_ssthresh;
 __u32 tcpi_rtt;
 __u32 tcpi_rttvar;
 __u32 tcpi_snd_ssthresh;
 __u32 tcpi_snd_cwnd;
 __u32 tcpi_advmss;
 __u32 tcpi_reordering;

 __u32 tcpi_rcv_rtt;
 __u32 tcpi_rcv_space;

 __u32 tcpi_total_retrans;
};




struct tcp_md5sig {
 struct __kernel_sockaddr_storage tcpm_addr;
 __u16 __tcpm_pad1;
 __u16 tcpm_keylen;
 __u32 __tcpm_pad2;
 __u8 tcpm_key[80];
};






# 1 "include/net/inet_connection_sock.h" 1
# 21 "include/net/inet_connection_sock.h"
# 1 "include/linux/poll.h" 1



# 1 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/poll.h" 1






# 1 "include/asm-generic/poll.h" 1
# 31 "include/asm-generic/poll.h"
struct pollfd {
 int fd;
 short events;
 short revents;
};
# 8 "/11n/trunk/rtl819x-sdk-v2.5/rtl819x/linux-2.6.30/arch/rlx/include/asm/poll.h" 2
# 5 "include/linux/poll.h" 2
# 26 "include/linux/poll.h"
struct poll_table_struct;




typedef void (*poll_queue_proc)(struct file *, wait_queue_head_t *, struct poll_table_struct *);

typedef struct poll_table_struct {
 poll_queue_proc qproc;
} poll_table;

static inline __attribute__((always_inline)) void poll_wait(struct file * filp, wait_queue_head_t * wait_address, poll_table *p)
{
 if (p && wait_address)
  p->qproc(filp, wait_address, p);
}

static inline __attribute__((always_inline)) void init_poll_funcptr(poll_table *pt, poll_queue_proc qproc)
{
 pt->qproc = qproc;
}

struct poll_table_entry {
 struct file *filp;
 wait_queue_t wait;
 wait_queue_head_t *wait_address;
};




struct poll_wqueues {
 poll_table pt;
 struct poll_table_page *table;
 struct task_struct *polling_task;
 int triggered;
 int error;
 int inline_index;
 struct poll_table_entry inline_entries[((832 - 256) / sizeof(struct poll_table_entry))];
};

extern void poll_initwait(struct poll_wqueues *pwq);
extern void poll_freewait(struct poll_wqueues *pwq);
extern int poll_schedule_timeout(struct poll_wqueues *pwq, int state,
     ktime_t *expires, unsigned long slack);

static inline __attribute__((always_inline)) int poll_schedule(struct poll_wqueues *pwq, int state)
{
 return poll_schedule_timeout(pwq, state, ((void *)0), 0);
}





typedef struct {
 unsigned long *in, *out, *ex;
 unsigned long *res_in, *res_out, *res_ex;
} fd_set_bits;
# 99 "include/linux/poll.h"
static inline __attribute__((always_inline))
int get_fd_set(unsigned long nr, void *ufdset, unsigned long *fdset)
{
 nr = ((((nr)+(8*sizeof(long))-1)/(8*sizeof(long)))*sizeof(long));
 if (ufdset)
  return ({ void *__cu_to; const void *__cu_from; long __cu_len; __cu_to = (fdset); __cu_from = (ufdset); __cu_len = (nr); if (__builtin_expect(!!(({ unsigned long __addr = (unsigned long) ((__cu_from)); unsigned long __size = (__cu_len); unsigned long __mask = (__current_thread_info->addr_limit).seg; unsigned long __ok; (void)0; __ok = (signed long)(__mask & (__addr | (__addr + __size) | ((__builtin_constant_p(__size) && (signed long) (__size) > 0) ? 0 : (__size)))); __ok == 0; })), 1)) { might_fault(); __cu_len = ({ register void *__cu_to_r __asm__("$4"); register const void *__cu_from_r __asm__("$5"); register long __cu_len_r __asm__("$6"); __cu_to_r = (__cu_to); __cu_from_r = (__cu_from); __cu_len_r = (__cu_len); __asm__ __volatile__( ".set\tnoreorder\n\t" "jal\t" "__copy_user" "\n\t" ".set\tnoat\n\t" "addu" "\t$1, %1, %2\n\t" ".set\tat\n\t" ".set\treorder" : "+r" (__cu_to_r), "+r" (__cu_from_r), "+r" (__cu_len_r) : : "$8", "$9", "$10", "$11", "$12", "$15", "$24", "$31", "$0", "memory"); __cu_len_r; }); } __cu_len; }) ? -14 : 0;

 memset(fdset, 0, nr);
 return 0;
}

static inline __attribute__((always_inline)) unsigned long
set_fd_set(unsigned long nr, void *ufdset, unsigned long *fdset)
{
 if (ufdset)
  return ({ void *__cu_to; const void *__cu_from; long __cu_len; __cu_to = (ufdset); __cu_from = (fdset); __cu_len = (((((nr)+(8*sizeof(long))-1)/(8*sizeof(long)))*sizeof(long))); might_fault(); __cu_len = ({ register void *__cu_to_r __asm__("$4"); register const void *__cu_from_r __asm__("$5"); register long __cu_len_r __asm__("$6"); __cu_to_r = (__cu_to); __cu_from_r = (__cu_from); __cu_len_r = (__cu_len); __asm__ __volatile__( "jal\t" "__copy_user" "\n\t" : "+r" (__cu_to_r), "+r" (__cu_from_r), "+r" (__cu_len_r) : : "$8", "$9", "$10", "$11", "$12", "$15", "$24", "$31", "$0", "memory"); __cu_len_r; }); __cu_len; });
 return 0;
}

static inline __attribute__((always_inline))
void zero_fd_set(unsigned long nr, unsigned long *fdset)
{
 memset(fdset, 0, ((((nr)+(8*sizeof(long))-1)/(8*sizeof(long)))*sizeof(long)));
}



extern int do_select(int n, fd_set_bits *fds, struct timespec *end_time);
extern int do_sys_poll(struct pollfd * ufds, unsigned int nfds,
         struct timespec *end_time);
extern int core_sys_select(int n, fd_set *inp, fd_set *outp,
      fd_set *exp, struct timespec *end_time);

extern int poll_select_set_timeout(struct timespec *to, long sec, long nsec);
# 22 "include/net/inet_connection_sock.h" 2
# 31 "include/net/inet_connection_sock.h"
struct inet_bind_bucket;
struct tcp_congestion_ops;





struct inet_connection_sock_af_ops {
 int (*queue_xmit)(struct sk_buff *skb, int ipfragok);
 void (*send_check)(struct sock *sk, int len,
      struct sk_buff *skb);
 int (*rebuild_header)(struct sock *sk);
 int (*conn_request)(struct sock *sk, struct sk_buff *skb);
 struct sock *(*syn_recv_sock)(struct sock *sk, struct sk_buff *skb,
          struct request_sock *req,
          struct dst_entry *dst);
 int (*remember_stamp)(struct sock *sk);
 u16 net_header_len;
 u16 sockaddr_len;
 int (*setsockopt)(struct sock *sk, int level, int optname,
      char *optval, int optlen);
 int (*getsockopt)(struct sock *sk, int level, int optname,
      char *optval, int *optlen);
# 62 "include/net/inet_connection_sock.h"
 void (*addr2sockaddr)(struct sock *sk, struct sockaddr *);
 int (*bind_conflict)(const struct sock *sk,
         const struct inet_bind_bucket *tb);
};
# 87 "include/net/inet_connection_sock.h"
struct inet_connection_sock {

 struct inet_sock icsk_inet;
 struct request_sock_queue icsk_accept_queue;
 struct inet_bind_bucket *icsk_bind_hash;
 unsigned long icsk_timeout;
  struct timer_list icsk_retransmit_timer;
  struct timer_list icsk_delack_timer;
 __u32 icsk_rto;
 __u32 icsk_pmtu_cookie;
 const struct tcp_congestion_ops *icsk_ca_ops;
 const struct inet_connection_sock_af_ops *icsk_af_ops;
 unsigned int (*icsk_sync_mss)(struct sock *sk, u32 pmtu);
 __u8 icsk_ca_state;
 __u8 icsk_retransmits;
 __u8 icsk_pending;
 __u8 icsk_backoff;
 __u8 icsk_syn_retries;
 __u8 icsk_probes_out;
 __u16 icsk_ext_hdr_len;
 struct {
  __u8 pending;
  __u8 quick;
  __u8 pingpong;
  __u8 blocked;
  __u32 ato;
  unsigned long timeout;
  __u32 lrcvtime;
  __u16 last_seg_size;
  __u16 rcv_mss;
 } icsk_ack;
 struct {
  int enabled;


  int search_high;
  int search_low;


  int probe_size;
 } icsk_mtup;
 u32 icsk_ca_priv[16];

};






static inline __attribute__((always_inline)) struct inet_connection_sock *inet_csk(const struct sock *sk)
{
 return (struct inet_connection_sock *)sk;
}

static inline __attribute__((always_inline)) void *inet_csk_ca(const struct sock *sk)
{
 return (void *)inet_csk(sk)->icsk_ca_priv;
}

extern struct sock *inet_csk_clone(struct sock *sk,
       const struct request_sock *req,
       const gfp_t priority);

enum inet_csk_ack_state_t {
 ICSK_ACK_SCHED = 1,
 ICSK_ACK_TIMER = 2,
 ICSK_ACK_PUSHED = 4,
 ICSK_ACK_PUSHED2 = 8
};

extern void inet_csk_init_xmit_timers(struct sock *sk,
          void (*retransmit_handler)(unsigned long),
          void (*delack_handler)(unsigned long),
          void (*keepalive_handler)(unsigned long));
extern void inet_csk_clear_xmit_timers(struct sock *sk);

static inline __attribute__((always_inline)) void inet_csk_schedule_ack(struct sock *sk)
{
 inet_csk(sk)->icsk_ack.pending |= ICSK_ACK_SCHED;
}

static inline __attribute__((always_inline)) int inet_csk_ack_scheduled(const struct sock *sk)
{
 return inet_csk(sk)->icsk_ack.pending & ICSK_ACK_SCHED;
}

static inline __attribute__((always_inline)) void inet_csk_delack_init(struct sock *sk)
{
 memset(&inet_csk(sk)->icsk_ack, 0, sizeof(inet_csk(sk)->icsk_ack));
}

extern void inet_csk_delete_keepalive_timer(struct sock *sk);
extern void inet_csk_reset_keepalive_timer(struct sock *sk, unsigned long timeout);


extern const char inet_csk_timer_bug_msg[];


static inline __attribute__((always_inline)) void inet_csk_clear_xmit_timer(struct sock *sk, const int what)
{
 struct inet_connection_sock *icsk = inet_csk(sk);

 if (what == 1 || what == 3) {
  icsk->icsk_pending = 0;



 } else if (what == 2) {
  icsk->icsk_ack.blocked = icsk->icsk_ack.pending = 0;



 }

 else {
  ({ if (0) printk("<7>" "%s", inet_csk_timer_bug_msg); 0; });
 }

}




static inline __attribute__((always_inline)) void inet_csk_reset_xmit_timer(struct sock *sk, const int what,
          unsigned long when,
          const unsigned long max_when)
{
 struct inet_connection_sock *icsk = inet_csk(sk);

 if (when > max_when) {

  ({ if (0) printk("<7>" "reset_xmit_timer: sk=%p %d when=0x%lx, caller=%p\n", sk, what, when, ({ __label__ _l; _l: &&_l;})); 0; });


  when = max_when;
 }

 if (what == 1 || what == 3) {
  icsk->icsk_pending = what;
  icsk->icsk_timeout = jiffies + when;
  sk_reset_timer(sk, &icsk->icsk_retransmit_timer, icsk->icsk_timeout);
 } else if (what == 2) {
  icsk->icsk_ack.pending |= ICSK_ACK_TIMER;
  icsk->icsk_ack.timeout = jiffies + when;
  sk_reset_timer(sk, &icsk->icsk_delack_timer, icsk->icsk_ack.timeout);
 }

 else {
  ({ if (0) printk("<7>" "%s", inet_csk_timer_bug_msg); 0; });
 }

}

extern struct sock *inet_csk_accept(struct sock *sk, int flags, int *err);

extern struct request_sock *inet_csk_search_req(const struct sock *sk,
      struct request_sock ***prevp,
      const __be16 rport,
      const __be32 raddr,
      const __be32 laddr);
extern int inet_csk_bind_conflict(const struct sock *sk,
      const struct inet_bind_bucket *tb);
extern int inet_csk_get_port(struct sock *sk, unsigned short snum);

extern struct dst_entry* inet_csk_route_req(struct sock *sk,
         const struct request_sock *req);

static inline __attribute__((always_inline)) void inet_csk_reqsk_queue_add(struct sock *sk,
         struct request_sock *req,
         struct sock *child)
{
 reqsk_queue_add(&inet_csk(sk)->icsk_accept_queue, req, sk, child);
}

extern void inet_csk_reqsk_queue_hash_add(struct sock *sk,
       struct request_sock *req,
       unsigned long timeout);

static inline __attribute__((always_inline)) void inet_csk_reqsk_queue_removed(struct sock *sk,
      struct request_sock *req)
{
 if (reqsk_queue_removed(&inet_csk(sk)->icsk_accept_queue, req) == 0)
  inet_csk_delete_keepalive_timer(sk);
}

static inline __attribute__((always_inline)) void inet_csk_reqsk_queue_added(struct sock *sk,
           const unsigned long timeout)
{
 if (reqsk_queue_added(&inet_csk(sk)->icsk_accept_queue) == 0)
  inet_csk_reset_keepalive_timer(sk, timeout);
}

static inline __attribute__((always_inline)) int inet_csk_reqsk_queue_len(const struct sock *sk)
{
 return reqsk_queue_len(&inet_csk(sk)->icsk_accept_queue);
}

static inline __attribute__((always_inline)) int inet_csk_reqsk_queue_young(const struct sock *sk)
{
 return reqsk_queue_len_young(&inet_csk(sk)->icsk_accept_queue);
}

static inline __attribute__((always_inline)) int inet_csk_reqsk_queue_is_full(const struct sock *sk)
{
 return reqsk_queue_is_full(&inet_csk(sk)->icsk_accept_queue);
}

static inline __attribute__((always_inline)) void inet_csk_reqsk_queue_unlink(struct sock *sk,
            struct request_sock *req,
            struct request_sock **prev)
{
 reqsk_queue_unlink(&inet_csk(sk)->icsk_accept_queue, req, prev);
}

static inline __attribute__((always_inline)) void inet_csk_reqsk_queue_drop(struct sock *sk,
          struct request_sock *req,
          struct request_sock **prev)
{
 inet_csk_reqsk_queue_unlink(sk, req, prev);
 inet_csk_reqsk_queue_removed(sk, req);
 reqsk_free(req);
}

extern void inet_csk_reqsk_queue_prune(struct sock *parent,
           const unsigned long interval,
           const unsigned long timeout,
           const unsigned long max_rto);

extern void inet_csk_destroy_sock(struct sock *sk);




static inline __attribute__((always_inline)) unsigned int inet_csk_listen_poll(const struct sock *sk)
{
 return !reqsk_queue_empty(&inet_csk(sk)->icsk_accept_queue) ?
   (0x0001 | 0x0040) : 0;
}

extern int inet_csk_listen_start(struct sock *sk, const int nr_table_entries);
extern void inet_csk_listen_stop(struct sock *sk);

extern void inet_csk_addr2sockaddr(struct sock *sk, struct sockaddr *uaddr);

extern int inet_csk_compat_getsockopt(struct sock *sk, int level, int optname,
          char *optval, int *optlen);
extern int inet_csk_compat_setsockopt(struct sock *sk, int level, int optname,
          char *optval, int optlen);
# 179 "include/linux/tcp.h" 2
# 1 "include/net/inet_timewait_sock.h" 1
# 27 "include/net/inet_timewait_sock.h"
# 1 "include/net/tcp_states.h" 1
# 16 "include/net/tcp_states.h"
enum {
 TCP_ESTABLISHED = 1,
 TCP_SYN_SENT,
 TCP_SYN_RECV,
 TCP_FIN_WAIT1,
 TCP_FIN_WAIT2,
 TCP_TIME_WAIT,
 TCP_CLOSE,
 TCP_CLOSE_WAIT,
 TCP_LAST_ACK,
 TCP_LISTEN,
 TCP_CLOSING,

 TCP_MAX_STATES
};





enum {
 TCPF_ESTABLISHED = (1 << 1),
 TCPF_SYN_SENT = (1 << 2),
 TCPF_SYN_RECV = (1 << 3),
 TCPF_FIN_WAIT1 = (1 << 4),
 TCPF_FIN_WAIT2 = (1 << 5),
 TCPF_TIME_WAIT = (1 << 6),
 TCPF_CLOSE = (1 << 7),
 TCPF_CLOSE_WAIT = (1 << 8),
 TCPF_LAST_ACK = (1 << 9),
 TCPF_LISTEN = (1 << 10),
 TCPF_CLOSING = (1 << 11)
};
# 28 "include/net/inet_timewait_sock.h" 2
# 1 "include/net/timewait_sock.h" 1
# 17 "include/net/timewait_sock.h"
struct timewait_sock_ops {
 struct kmem_cache *twsk_slab;
 char *twsk_slab_name;
 unsigned int twsk_obj_size;
 int (*twsk_unique)(struct sock *sk,
           struct sock *sktw, void *twp);
 void (*twsk_destructor)(struct sock *sk);
};

static inline __attribute__((always_inline)) int twsk_unique(struct sock *sk, struct sock *sktw, void *twp)
{
 if (sk->__sk_common.skc_prot->twsk_prot->twsk_unique != ((void *)0))
  return sk->__sk_common.skc_prot->twsk_prot->twsk_unique(sk, sktw, twp);
 return 0;
}

static inline __attribute__((always_inline)) void twsk_destructor(struct sock *sk)
{
 do { if (sk == ((void *)0)) ; } while(0);
 do { if (sk->__sk_common.skc_prot == ((void *)0)) ; } while(0);
 do { if (sk->__sk_common.skc_prot->twsk_prot == ((void *)0)) ; } while(0);
 if (sk->__sk_common.skc_prot->twsk_prot->twsk_destructor != ((void *)0))
  sk->__sk_common.skc_prot->twsk_prot->twsk_destructor(sk);
}
# 29 "include/net/inet_timewait_sock.h" 2



struct inet_hashinfo;
# 66 "include/net/inet_timewait_sock.h"
struct inet_timewait_death_row {

 int twcal_hand;
 unsigned long twcal_jiffie;
 struct timer_list twcal_timer;
 struct hlist_head twcal_row[(1 << 5)];

 spinlock_t death_lock;
 int tw_count;
 int period;
 u32 thread_slots;
 struct work_struct twkill_work;
 struct timer_list tw_timer;
 int slot;
 struct hlist_head cells[8];
 struct inet_hashinfo *hashinfo;
 int sysctl_tw_recycle;
 int sysctl_max_tw_buckets;
};

extern void inet_twdr_hangman(unsigned long data);
extern void inet_twdr_twkill_work(struct work_struct *work);
extern void inet_twdr_twcal_tick(unsigned long data);







struct inet_bind_bucket;






struct inet_timewait_sock {




 struct sock_common __tw_common;
# 119 "include/net/inet_timewait_sock.h"
 int tw_timeout;
 volatile unsigned char tw_substate;

 unsigned char tw_rcv_wscale;


 __be16 tw_sport;
 __be32 tw_daddr __attribute__((aligned(4)));
 __be32 tw_rcv_saddr;
 __be16 tw_dport;
 __u16 tw_num;

 __u8 tw_ipv6only:1,
    tw_transparent:1;

 __u16 tw_ipv6_offset;
 unsigned long tw_ttd;
 struct inet_bind_bucket *tw_tb;
 struct hlist_node tw_death_node;
};

static inline __attribute__((always_inline)) void inet_twsk_add_node_rcu(struct inet_timewait_sock *tw,
          struct hlist_nulls_head *list)
{
 hlist_nulls_add_head_rcu(&tw->__tw_common.skc_nulls_node, list);
}

static inline __attribute__((always_inline)) void inet_twsk_add_bind_node(struct inet_timewait_sock *tw,
        struct hlist_head *list)
{
 hlist_add_head(&tw->__tw_common.skc_bind_node, list);
}

static inline __attribute__((always_inline)) int inet_twsk_dead_hashed(const struct inet_timewait_sock *tw)
{
 return !hlist_unhashed(&tw->tw_death_node);
}

static inline __attribute__((always_inline)) void inet_twsk_dead_node_init(struct inet_timewait_sock *tw)
{
 tw->tw_death_node.pprev = ((void *)0);
}

static inline __attribute__((always_inline)) void __inet_twsk_del_dead_node(struct inet_timewait_sock *tw)
{
 __hlist_del(&tw->tw_death_node);
 inet_twsk_dead_node_init(tw);
}

static inline __attribute__((always_inline)) int inet_twsk_del_dead_node(struct inet_timewait_sock *tw)
{
 if (inet_twsk_dead_hashed(tw)) {
  __inet_twsk_del_dead_node(tw);
  return 1;
 }
 return 0;
}
# 186 "include/net/inet_timewait_sock.h"
static inline __attribute__((always_inline)) struct inet_timewait_sock *inet_twsk(const struct sock *sk)
{
 return (struct inet_timewait_sock *)sk;
}

static inline __attribute__((always_inline)) __be32 inet_rcv_saddr(const struct sock *sk)
{
 return __builtin_expect(!!(sk->__sk_common.skc_state != TCP_TIME_WAIT), 1) ?
  inet_sk(sk)->rcv_saddr : inet_twsk(sk)->tw_rcv_saddr;
}

extern void inet_twsk_put(struct inet_timewait_sock *tw);

extern struct inet_timewait_sock *inet_twsk_alloc(const struct sock *sk,
        const int state);

extern void __inet_twsk_hashdance(struct inet_timewait_sock *tw,
      struct sock *sk,
      struct inet_hashinfo *hashinfo);

extern void inet_twsk_schedule(struct inet_timewait_sock *tw,
          struct inet_timewait_death_row *twdr,
          const int timeo, const int timewait_len);
extern void inet_twsk_deschedule(struct inet_timewait_sock *tw,
     struct inet_timewait_death_row *twdr);

extern void inet_twsk_purge(struct net *net, struct inet_hashinfo *hashinfo,
       struct inet_timewait_death_row *twdr, int family);

static inline __attribute__((always_inline))
struct net *twsk_net(const struct inet_timewait_sock *twsk)
{



 return &init_net;

}

static inline __attribute__((always_inline))
void twsk_net_set(struct inet_timewait_sock *twsk, struct net *net)
{



}
# 180 "include/linux/tcp.h" 2

static inline __attribute__((always_inline)) struct tcphdr *tcp_hdr(const struct sk_buff *skb)
{
 return (struct tcphdr *)skb_transport_header(skb);
}

static inline __attribute__((always_inline)) unsigned int tcp_hdrlen(const struct sk_buff *skb)
{
 return tcp_hdr(skb)->doff * 4;
}

static inline __attribute__((always_inline)) unsigned int tcp_optlen(const struct sk_buff *skb)
{
 return (tcp_hdr(skb)->doff - 5) * 4;
}


struct tcp_sack_block_wire {
 __be32 start_seq;
 __be32 end_seq;
};

struct tcp_sack_block {
 u32 start_seq;
 u32 end_seq;
};

struct tcp_options_received {

 long ts_recent_stamp;
 u32 ts_recent;
 u32 rcv_tsval;
 u32 rcv_tsecr;
 u16 saw_tstamp : 1,
  tstamp_ok : 1,
  dsack : 1,
  wscale_ok : 1,
  sack_ok : 4,
  snd_wscale : 4,
  rcv_wscale : 4;

 u8 num_sacks;
 u16 user_mss;
 u16 mss_clamp;
};







struct tcp_request_sock {
 struct inet_request_sock req;




 u32 rcv_isn;
 u32 snt_isn;
};

static inline __attribute__((always_inline)) struct tcp_request_sock *tcp_rsk(const struct request_sock *req)
{
 return (struct tcp_request_sock *)req;
}

struct tcp_sock {

 struct inet_connection_sock inet_conn;
 u16 tcp_header_len;
 u16 xmit_size_goal_segs;





 __be32 pred_flags;






  u32 rcv_nxt;
 u32 copied_seq;
 u32 rcv_wup;
  u32 snd_nxt;

  u32 snd_una;
  u32 snd_sml;
 u32 rcv_tstamp;
 u32 lsndtime;


 struct {
  struct sk_buff_head prequeue;
  struct task_struct *task;
  struct iovec *iov;
  int memory;
  int len;







 } ucopy;

 u32 snd_wl1;
 u32 snd_wnd;
 u32 max_window;
 u32 mss_cache;

 u32 window_clamp;
 u32 rcv_ssthresh;

 u32 frto_highmark;
 u16 advmss;
 u8 frto_counter;
 u8 nonagle;


 u32 srtt;
 u32 mdev;
 u32 mdev_max;
 u32 rttvar;
 u32 rtt_seq;

 u32 packets_out;
 u32 retrans_out;

 u16 urg_data;
 u8 ecn_flags;
 u8 reordering;
 u32 snd_up;

 u8 keepalive_probes;



 struct tcp_options_received rx_opt;




  u32 snd_ssthresh;
  u32 snd_cwnd;
 u32 snd_cwnd_cnt;
 u32 snd_cwnd_clamp;
 u32 snd_cwnd_used;
 u32 snd_cwnd_stamp;

  u32 rcv_wnd;
 u32 write_seq;
 u32 pushed_seq;
 u32 lost_out;
 u32 sacked_out;
 u32 fackets_out;
 u32 tso_deferred;
 u32 bytes_acked;


 struct sk_buff* lost_skb_hint;
 struct sk_buff *scoreboard_skb_hint;
 struct sk_buff *retransmit_skb_hint;

 struct sk_buff_head out_of_order_queue;


 struct tcp_sack_block duplicate_sack[1];
 struct tcp_sack_block selective_acks[4];

 struct tcp_sack_block recv_sack_cache[4];

 struct sk_buff *highest_sack;




 int lost_cnt_hint;
 u32 retransmit_high;

 u32 lost_retrans_low;

 u32 prior_ssthresh;
 u32 high_seq;

 u32 retrans_stamp;


 u32 undo_marker;
 int undo_retrans;
 u32 total_retrans;

 u32 urg_seq;
 unsigned int keepalive_time;
 unsigned int keepalive_intvl;

 unsigned long last_synq_overflow;


 struct {
  u32 rtt;
  u32 seq;
  u32 time;
 } rcv_rtt_est;


 struct {
  int space;
  u32 seq;
  u32 time;
 } rcvq_space;


 struct {
  u32 probe_seq_start;
  u32 probe_seq_end;
 } mtu_probe;
# 410 "include/linux/tcp.h"
 int linger2;
};

static inline __attribute__((always_inline)) struct tcp_sock *tcp_sk(const struct sock *sk)
{
 return (struct tcp_sock *)sk;
}

struct tcp_timewait_sock {
 struct inet_timewait_sock tw_sk;
 u32 tw_rcv_nxt;
 u32 tw_snd_nxt;
 u32 tw_rcv_wnd;
 u32 tw_ts_recent;
 long tw_ts_recent_stamp;




};

static inline __attribute__((always_inline)) struct tcp_timewait_sock *tcp_twsk(const struct sock *sk)
{
 return (struct tcp_timewait_sock *)sk;
}
# 10 "include/net/rtl/fastpath/fastpath_core.h" 2
# 123 "include/net/rtl/fastpath/fastpath_core.h"
struct l2tp_info
{
 struct net_device *wan_dev;
 struct net_device *ppp0_dev;
 unsigned long last_xmit;
 __u32 daddr;
 __u32 saddr;
 __u16 tid;
 __u16 cid;
        unsigned char mac_header[14];
 __u16 valid;


};

struct l2tp_ext_hdr
{
 __u16 source;
 __u16 dest;
 __u16 len;
 __u16 checksum;
 __u16 type;
 __u16 tid;
 __u16 cid;
 __u16 addr_control;
 __u16 protocol;
};

struct avp_info
{
 __u16 length;
        __u16 vendorid;
 __u16 attr;
 __u16 mss_type;
};

struct l2tp_header
{
 __u16 ver;
 __u16 length;
 __u16 tid;
 __u16 cid;
 __u16 Ns;
 __u16 Nr;
};
extern void (*l2tp_tx_id_hook)(struct sk_buff *skb);
# 202 "include/net/rtl/fastpath/fastpath_core.h"
extern int fast_pptp_fw;




enum NPmode {
     NPMODE_PASS,
     NPMODE_DROP,
     NPMODE_ERROR,
     NPMODE_QUEUE
};


struct ppp_file {
 enum {
  INTERFACE=1, CHANNEL
 } kind;
 struct sk_buff_head xq;
 struct sk_buff_head rq;
 wait_queue_head_t rwait;
 atomic_t refcnt;
 int hdrlen;
 int index;
 int dead;
};


struct ppp {
 struct ppp_file file;
 struct file *owner;
 struct list_head channels;
 int n_channels;
 spinlock_t rlock;
 spinlock_t wlock;
 int mru;

 int mru_alloc;

 unsigned int flags;
 unsigned int xstate;
 unsigned int rstate;
 int debug;
 struct slcompress *vj;
 enum NPmode npmode[6];
 struct sk_buff *xmit_pending;
 struct compressor *xcomp;
 void *xc_state;
 struct compressor *rcomp;
 void *rc_state;
 unsigned long last_xmit;
 unsigned long last_recv;
 struct net_device *dev;
 int closing;
# 263 "include/net/rtl/fastpath/fastpath_core.h"
 struct net_device_stats stats;





 struct net *ppp_net;
};

extern void (*sync_tx_pptp_gre_seqno_hook)(struct sk_buff *skb);


void register_customRspHook(int *_cusRsp401_func,int *_cusRspTCPFinAck_func,int *_cusRspTCPEndAck_func);
void unregister_customRspHook(void);
void register_customRspStr(char *_str);
void unregister_customRspStr(void);
 int GenerateHTTP401(struct sk_buff *skb);


 extern int filter_enter(struct sk_buff *skb);
 extern int __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) filter_init(void);
 extern void __attribute__ ((__section__(".exit.text"))) __attribute__((__used__)) filter_exit(void);
 extern void filter_addconnect(ipaddr_t ipaddr);
 extern void filter_delconnect(ipaddr_t ipaddr);



 extern void fast_pptp_filter(struct sk_buff *skb);
 extern void fast_pptp_sync_rx_seq(struct sk_buff *skb);
 extern int __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) fast_pptp_init(void);
 extern void __attribute__ ((__section__(".exit.text"))) __attribute__((__used__)) fast_pptp_exit(void);
 extern int fast_pptp_to_lan(struct sk_buff **pskb);
 extern int Check_GRE_rx_net_device(struct sk_buff *skb);
 extern int pptp_tcp_finished;



 extern int __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) fast_l2tp_init(void);
 extern void __attribute__ ((__section__(".exit.text"))) __attribute__((__used__)) fast_l2tp_exit(void);
 extern int fast_l2tp_to_wan(struct sk_buff *skb);
 extern void fast_l2tp_rx(struct sk_buff *skb);
 extern void l2tp_tx_id(struct sk_buff *skb);
 extern int fast_l2tp_fw;
# 353 "include/net/rtl/fastpath/fastpath_core.h"
enum LR_RESULT
{

 LR_SUCCESS = 0,
 LR_FAILED = -1,
 LR_ERROR_PARAMETER = -2,
 LR_EXIST = -3,
 LR_NONEXIST = -4,

 LR_NOBUFFER = -1000,
 LR_INVAPARAM = -1001,
 LR_NOTFOUND = -1002,
 LR_DUPENTRY = -1003,
};
# 382 "include/net/rtl/fastpath/fastpath_core.h"
enum ARP_FLAGS
{
 ARP_NONE = 0,
};

enum RT_FLAGS
{
 RT_NONE = 0,
};

enum SE_TYPE
{
 SE_PPPOE = 1,
 SE_PPTP = 2,
 SE_L2TP = 3,
};
enum SE_FLAGS
{
 SE_NONE = 0,
};

enum NP_PROTOCOL
{
 NP_UDP = 1,
 NP_TCP = 2,
};
enum NP_FLAGS
{
 NP_NONE = 0,
};

typedef struct _rtl_fp_napt_entry
{
 enum NP_PROTOCOL protocol;
 ipaddr_t intIp;
 uint32 intPort;
 ipaddr_t extIp;
 uint32 extPort;
 ipaddr_t remIp;
 uint32 remPort;
}rtl_fp_napt_entry;
# 432 "include/net/rtl/fastpath/fastpath_core.h"
enum LR_RESULT rtk_addArp( ipaddr_t ip, ether_addr_t* mac, enum ARP_FLAGS flags );
enum LR_RESULT rtk_modifyArp( ipaddr_t ip, ether_addr_t* mac, enum ARP_FLAGS flags );
enum LR_RESULT rtk_delArp( ipaddr_t ip );
enum LR_RESULT rtk_addRoute( ipaddr_t ip, ipaddr_t mask, ipaddr_t gateway, uint8* ifname, enum RT_FLAGS flags );
enum LR_RESULT rtk_modifyRoute( ipaddr_t ip, ipaddr_t mask, ipaddr_t gateway, uint8* ifname, enum RT_FLAGS flags );
enum LR_RESULT rtk_delRoute( ipaddr_t ip, ipaddr_t mask );
enum LR_RESULT rtk_addSession( uint8* ifname, enum SE_TYPE seType, uint32 sessionId, enum SE_FLAGS flags );
enum LR_RESULT rtk_delSession( uint8* ifname );

enum LR_RESULT rtk_addNaptConnection(rtl_fp_napt_entry *fpNaptEntry,

         struct sk_buff *pskb, struct nf_conn *ct,

         enum NP_FLAGS flags);
enum LR_RESULT rtk_delNaptConnection( rtl_fp_napt_entry *fpNaptEntry);

enum LR_RESULT rtk_idleNaptConnection(rtl_fp_napt_entry *fpNaptEntry, uint32 interval);




int32 rtl_br_fdb_time_update(void *br, void *fdb, const unsigned char *addr);

int32 rtl_fp_dev_queue_xmit_check(struct sk_buff *skb, struct net_device *dev);
int32 rtl_fp_dev_hard_start_xmit_check(struct sk_buff *skb, struct net_device *dev, struct netdev_queue *txq);



int arp_req_get_ha(__be32 queryIP, struct net_device *dev, unsigned char * resHwAddr);





int fast_path_before_nat_check(struct sk_buff *skb, struct iphdr *iph, uint32 iphProtocol);


int fastpath_dump_napt_entry_num(char *page, int len);
# 637 "include/net/rtl/fastpath/fastpath_core.h"
int init_table_napt(int napt_tbl_list_max, int napt_tbl_entry_max);

int init_table_path(int path_tbl_list_max, int path_tbl_entry_max);
int udp_fragCache_init(int udp_frag_entry_max);
void fastpath_set_qos_mark(struct sk_buff *skb, unsigned int preRouteMark, unsigned int postRouteMark);
int fast_path_pre_process_check(struct iphdr *iph, struct tcphdr *tcphupuh, struct sk_buff *skb);
int fast_path_post_process_xmit_check(struct iphdr *iph, struct tcphdr *tcphupuh, struct sk_buff *skb);
int fast_path_post_process_return_check(struct iphdr *iph, struct tcphdr *tcphupuh, struct sk_buff *skb);
int ip_finish_output3(struct sk_buff *skb);
 int enter_fast_path(struct sk_buff *skb);
uint8 *FastPath_Route(ipaddr_t dIp);
int FastPath_Enter(struct sk_buff **skb);
extern int Get_fast_pptp_fw(void);
# 682 "include/net/rtl/fastpath/fastpath_core.h"
typedef struct _rlt_filter_table_head
{
 struct list_head filter_table;
 struct list_head filter_items;
 uint32 flag;
}rlt_filter_table_head;



typedef struct _filter_ipRange_fastpath
{
 struct list_head list;
 uint32 addr_start;
 uint32 addr_end;
 uint32 flag;

}rtl_ipRange_fastpath;



typedef struct _url_table_head_entry_fastpath
{
 struct list_head list;
 uint32 flag;
 int (*func)(struct sk_buff *skb);
}url_table_head_entry_fastpath;

typedef struct _url_table_unit_entry_fastpath
{
 struct list_head list;
 char url_content[40];
}url_table_unit_entry_fastpath;

typedef struct _url_entry_fastpath
{
 struct list_head list;
 char url_content[40];
 uint32 flag;
}rtl_url_entry_fastpath;

typedef struct _rtl_mac_entry_fastpath
{
 struct list_head list;
 char mac[6];
 uint8 flag;
}rtl_mac_entry_fastpath;

typedef struct _rtl_sch_entry_fastpath
{
 struct list_head list;
 uint32 weekMask;
 uint32 startTime;
 uint32 endTime;
 uint8 allTimeFlag;
 uint8 flag;
}rtl_sch_entry_fastpath;

typedef struct _filter_table_info
{
 uint32 type;
 int (*func)(struct sk_buff *skb, void *data);
}filter_table_info;

typedef struct _filter_table_list
{
 struct list_head table_list;
 struct list_head item_list;
 uint32 type;
 uint32 flag;
 uint32 num;
 int (*func)(struct sk_buff *skb, void *data);
}filter_table_list;

typedef struct _filter_item_entry
{
 struct list_head item_list;
 struct list_head rule_list;
 uint32 relation_flag;






 uint32 index;
 uint32 flag;
 char data[40];
}filter_item_entry;

typedef struct _rtl_mac_info
{
 char mac[6];
}rtl_mac_info;

extern filter_table_list table_list_head;
# 786 "include/net/rtl/fastpath/fastpath_core.h"
void rtl_fp_mark_invalid(struct nf_conn *ct);
# 22 "net/rtl/fastpath/fastpath_common.c" 2

# 1 "include/net/rtl/features/rtl_features.h" 1



extern int rtl_nf_conntrack_threshold;
# 13 "include/net/rtl/features/rtl_features.h"
struct tcp_state_hash_head
{
 enum tcp_conntrack state;

 struct list_head* state_hash;
};
struct udp_state_hash_head
{
 uint8_t state;
 struct list_head* state_hash;
};




struct DROP_PRORITY{
 u_int8_t state;
 u_int16_t threshold;
};

extern struct tcp_state_hash_head Tcp_State_Hash_Head[];
extern struct udp_state_hash_head Udp_State_Hash_Head[];
extern struct DROP_PRORITY drop_priority[];

enum {
 PROT_ICMP,
 PROT_TCP,
 PROT_UDP,
 PROT_MAX
};




extern unsigned long rtl_gc_overflow_timout;
void gc_overflow_timout_proc_init(void);

void clean_from_lists(struct nf_conn *ct, struct net *net);
void rtl_death_action(struct nf_conn *ct);
int drop_one_conntrack(const struct nf_conntrack_tuple *orig,const struct nf_conntrack_tuple *repl);
int32 rtl_nf_conn_GC_init(void);
int32 rtl_connGC_addList(struct sk_buff *skb, struct nf_conn *ct);



int rtl_fpTimer_update(struct nf_conn *ct);


void rtl_fpAddConnCache(struct nf_conn *ct, struct sk_buff *skb);


extern struct net_device *rtl865x_getWanDev(void );
extern struct net_device *rtl865x_getLanDev(void );
# 74 "include/net/rtl/features/rtl_features.h"
extern int tcp_get_timeouts_by_state(u_int8_t state);
extern unsigned int nf_ct_udp_timeout;
extern unsigned int nf_ct_udp_timeout_stream;
void rtl_check_for_acc(struct nf_conn *ct, unsigned long expires);
void rtl_delConnCache(struct nf_conn *ct);
int32 rtl_connCache_timer_update(struct nf_conn *ct);
# 88 "include/net/rtl/features/rtl_features.h"
void rtl_addConnCache(struct nf_conn *ct, struct sk_buff *skb);



int32 rtl_nat_init(void);



extern int gQosEnabled;
int32 rtl_qos_init(void);
int32 rtl_qos_cleanup(void);
# 131 "include/net/rtl/features/rtl_features.h"
extern struct nf_conntrack_l4proto **nf_ct_protos[36];
extern unsigned int
 rtl_nf_conntrack_in(struct net *net, unsigned int dataoff, unsigned int hooknum, struct sk_buff *skb);
# 159 "include/net/rtl/features/rtl_features.h"
extern int rtl_newGC_session_status_flags;
extern unsigned long rtl_newGC_session_status_time;
# 24 "net/rtl/fastpath/fastpath_common.c" 2

# 1 "include/net/rtl/rtl865x_nat.h" 1
# 40 "include/net/rtl/rtl865x_nat.h"
typedef struct _rtl865x_napt_entry
{
 uint32 protocol;
 ipaddr_t intIp;
 uint32 intPort;
 ipaddr_t extIp;
 uint32 extPort;
 ipaddr_t remIp;
 uint32 remPort;
}rtl865x_napt_entry;

typedef struct _rtl865x_priority
{
 int32 uplinkPrio;
 int32 downlinkPrio;
}rtl865x_priority;

typedef struct _rtl865x_qos_mark
{
 int32 uplinkMark;
 int32 downlinkMark;
}rtl865x_qos_mark;

int32 rtl865x_nat_init(void);
int32 rtl865x_nat_reinit(void);
# 85 "include/net/rtl/rtl865x_nat.h"
int32 rtl865x_addNaptConnection(rtl865x_napt_entry *naptEntry, rtl865x_priority *prio);
# 103 "include/net/rtl/rtl865x_nat.h"
int32 rtl865x_delNaptConnection(rtl865x_napt_entry *naptEntry);

int32 rtl865x_naptSync(rtl865x_napt_entry *naptEntry, uint32 refresh);


int rtl865x_optimizeExtPort(unsigned short origDelta, unsigned int rangeSize, unsigned short *newDelta);

int rtl865x_getAsicNaptHashScore(rtl865x_napt_entry *naptEntry,
                             uint32 *naptHashScore);

int32 rtl865x_preReserveConn(rtl865x_napt_entry *naptEntry);
# 26 "net/rtl/fastpath/fastpath_common.c" 2


static int rtl_fp_gc_rx_threshold;

static int fast_nat_fw = 1;


static struct proc_dir_entry *res1=((void *)0);
static int read_proc(char *page, char **start, off_t off,
       int count, int *eof, void *data)
{
 int len = 0;


 len = sprintf(page, "fastpath %s, GC_RX_Count %d, Status: %d\n", fast_nat_fw!=0?"Enabled":"Disabled", rtl_fp_gc_rx_threshold, rtl_newGC_session_status_flags);



 len = fastpath_dump_napt_entry_num(page, len);

 if (len <= off+count) *eof = 1;
 *start = page + off;
 len -= off;
 if (len>count) len = count;
 if (len<0) len = 0;
 return len;

}
static int write_proc(struct file *file, const char *buffer,
        unsigned long count, void *data)
{
 unsigned char tmpbuf[16];
 struct net *net;

 if (count < 2)
  return -14;

 memset(tmpbuf, 0, sizeof(tmpbuf));
 if (buffer && !({ void *__cu_to; const void *__cu_from; long __cu_len; __cu_to = (tmpbuf); __cu_from = (buffer); __cu_len = (count); if (__builtin_expect(!!(({ unsigned long __addr = (unsigned long) ((__cu_from)); unsigned long __size = (__cu_len); unsigned long __mask = (__current_thread_info->addr_limit).seg; unsigned long __ok; (void)0; __ok = (signed long)(__mask & (__addr | (__addr + __size) | ((__builtin_constant_p(__size) && (signed long) (__size) > 0) ? 0 : (__size)))); __ok == 0; })), 1)) { might_fault(); __cu_len = ({ register void *__cu_to_r __asm__("$4"); register const void *__cu_from_r __asm__("$5"); register long __cu_len_r __asm__("$6"); __cu_to_r = (__cu_to); __cu_from_r = (__cu_from); __cu_len_r = (__cu_len); __asm__ __volatile__( ".set\tnoreorder\n\t" "jal\t" "__copy_user" "\n\t" ".set\tnoat\n\t" "addu" "\t$1, %1, %2\n\t" ".set\tat\n\t" ".set\treorder" : "+r" (__cu_to_r), "+r" (__cu_from_r), "+r" (__cu_len_r) : : "$8", "$9", "$10", "$11", "$12", "$15", "$24", "$31", "$0", "memory"); __cu_len_r; }); } __cu_len; })) {
  if (tmpbuf[0] == '2'&&count==2){

   for (net = ({ const typeof( ((typeof(*net) *)0)->list ) *__mptr = ((&net_namespace_list)->next); (typeof(*net) *)( (char *)__mptr - ((size_t) &((typeof(*net) *)0)->list) );}); __builtin_prefetch(net->list.next), &net->list != (&net_namespace_list); net = ({ const typeof( ((typeof(*net) *)0)->list ) *__mptr = (net->list.next); (typeof(*net) *)( (char *)__mptr - ((size_t) &((typeof(*net) *)0)->list) );})) {
    nf_conntrack_flush(net, 0, 0);
   }






  }else{
   sscanf(tmpbuf, "%d", &fast_nat_fw);

   if (fast_nat_fw>2) {
    rtl_fp_gc_rx_threshold = fast_nat_fw;
   }

  }
  return count;
 }

 return -14;
}
# 326 "net/rtl/fastpath/fastpath_common.c"
void fastpath_set_qos_mark(struct sk_buff *skb, unsigned int preRouteMark, unsigned int postRouteMark)
{
 if(skb->mark == 0)
  skb->mark = (postRouteMark?postRouteMark:preRouteMark);
}


static inline __attribute__((always_inline)) void enter_fast_path_fast_l2tp_pre_process(struct sk_buff *skb)
{
 struct net_device *l2tprx_dev;
 struct in_device *skbIn_dev;
 struct net_device *skbNetDevice;

 if(fast_l2tp_fw){
  l2tprx_dev = skb->dev;
  skbIn_dev = (struct in_device *)skb->dev->ip_ptr;
  if(skbIn_dev == ((void *)0)){
   if ((skbNetDevice = __dev_get_by_name(&init_net,l2tprx_dev->name)) != ((void *)0)){
    if((skbIn_dev= (struct in_device*)skbNetDevice->ip_ptr) != ((void *)0))
     skb->dev->ip_ptr = (void *)skbIn_dev;
   }
  }
 }
}



static inline __attribute__((always_inline)) int rtl_fp_gc_status_check_priority(uint32 sIp, uint32 dIp, uint16 sPort, uint16 dPort)
{
 extern unsigned int _br0_ip;



 if ( (dIp!=_br0_ip && sIp!=_br0_ip) &&
  (sPort>1024 && dPort>1024) &&
  (sPort!=8080 && dPort!=8080) &&
  (!(((((uint32)(dIp)) & 0xf0000000) == 0xe0000000))) &&
  (!(((((uint32)(dIp)) & 0xffffffff) == 0xffffffff))) &&
  (!(((((uint32)(sIp)) & 0xffffffff) == 0))))
 {
  return 1;
 }
 else
  return 0;

}

static inline __attribute__((always_inline)) int rtl_fp_gc_status_check(struct iphdr *iph, struct tcphdr *tcph, struct sk_buff *skb)
{
 uint32 sIp, dIp;
 uint16 sPort, dPort;
 int ret;
 static int rx_count=0;

 ret = 0;
 if ((rtl_newGC_session_status_flags!=0)&&(({ unsigned long __dummy; typeof(rtl_newGC_session_status_time) __dummy2; (void)(&__dummy == &__dummy2); 1; }) && ({ unsigned long __dummy; typeof(jiffies) __dummy2; (void)(&__dummy == &__dummy2); 1; }) && ((long)(rtl_newGC_session_status_time) - (long)(jiffies) >= 0))) {
  sIp = iph->saddr;
  dIp = iph->daddr;
  sPort = tcph->source;
  dPort = tcph->dest;
  if (rtl_fp_gc_status_check_priority(sIp, dIp, sPort, dPort)==1) {
   kfree_skb(skb);
   ret = 1;
  }
 } else {
  if (rtl_newGC_session_status_flags==3) {
   if ((rx_count++)>rtl_fp_gc_rx_threshold) {
    rx_count = 0;
    rtl_newGC_session_status_time = jiffies+(1);
   }
  } else if (rtl_newGC_session_status_flags==1) {
   rx_count += (8);
   if ((rx_count)>rtl_fp_gc_rx_threshold) {
    rx_count = 0;
    rtl_newGC_session_status_time=jiffies+(200);
   }
  }
 }

 return ret;
}


int fast_path_pre_process_check(struct iphdr *iph, struct tcphdr *tcphupuh, struct sk_buff *skb)
{

 enter_fast_path_fast_l2tp_pre_process(skb);



 if ((iph->protocol==IPPROTO_TCP) &&
  (tcphupuh->syn) && (!(tcphupuh->ack))) {
  return rtl_fp_gc_status_check(iph, tcphupuh, skb);
 }


 return 6;
}



static inline __attribute__((always_inline)) int enter_fast_path_fast_l2tp_post_process(struct sk_buff *skb)
{
 if (fast_l2tp_fw && skb->dev && (!memcmp(skb->dev->name, "ppp0", 4)) )
 {
  if (fast_l2tp_to_wan(skb))
  {
   return 1;
  }
 }
 return 0;
}


int fast_path_before_nat_check(struct sk_buff *skb, struct iphdr *iph, uint32 iphProtocol)
{

 int ret;


 unsigned int dataoff;
# 464 "net/rtl/fastpath/fastpath_common.c"
 if (iphProtocol== IPPROTO_TCP){
  dataoff = skb_network_offset(skb) + (iph->ihl<<2);
  ret = rtl_nf_conntrack_in(dev_net(skb->dev), dataoff, NF_INET_PRE_ROUTING, skb);
  switch (ret){
   case 0:
    kfree_skb(skb);
    return 1;
   case 1:
    break;
   default:
    return 1;
   }
 }


 return 6;
}

int fast_path_post_process_xmit_check(struct iphdr *iph, struct tcphdr *tcphupuh, struct sk_buff *skb)
{

 return enter_fast_path_fast_l2tp_post_process(skb);



}

int fast_path_post_process_return_check(struct iphdr *iph, struct tcphdr *tcphupuh, struct sk_buff *skb)
{

 if (iph->protocol==IPPROTO_UDP)
  return rtl_fp_gc_status_check(iph, tcphupuh, skb);


 return 0;

}

int32 rtl_fp_dev_queue_xmit_check(struct sk_buff *skb, struct net_device *dev)
{

 if (l2tp_tx_id_hook != ((void *)0))
  l2tp_tx_id_hook(skb);



 if (sync_tx_pptp_gre_seqno_hook != ((void *)0))
  sync_tx_pptp_gre_seqno_hook(skb);


 return 0;
}

int32 rtl_fp_dev_hard_start_xmit_check(struct sk_buff *skb, struct net_device *dev, struct netdev_queue *txq)
{


 if(!gQosEnabled)

 if (l2tp_tx_id_hook != ((void *)0))
  l2tp_tx_id_hook(skb);
# 539 "net/rtl/fastpath/fastpath_common.c"
 return 0;
}


int ip_finish_output3(struct sk_buff *skb)
{
 struct dst_entry *dst;
 struct hh_cache *hh;

 dst = skb->dst;
 hh = dst->hh;
# 565 "net/rtl/fastpath/fastpath_common.c"
 if (hh) {


  memcpy(skb->data - 16, hh->hh_data, 16);



  skb_push(skb, hh->hh_len);


  if (fast_l2tp_fw)
   l2tp_tx_id(skb);


  if (skb->dev->flags & 0x1) {

   if (gQosEnabled) {

    dev_queue_xmit(skb);
    return 0;
   } else

   {





    if (skb->dev->priv_flags == 0x2)
    {

     struct net_bridge *br = netdev_priv(skb->dev);
     const unsigned char *dest = skb->data;
     struct net_bridge_fdb_entry *dst;

     if ((dst = __br_fdb_get(br, dest)) != ((void *)0))
     {


      skb->dev = dst->dst->dev;
     }
    }

    {
     if(!skb->dev->netdev_ops->ndo_start_xmit(skb,skb->dev))
      return 0;
    }
   }
  }


 } else if (dst->neighbour) {
  return dst->neighbour->output(skb);
 }





 kfree_skb(skb);
 return -22;
}

int FastPath_Enter(struct sk_buff **pskb)
{
 int ret;
 struct sk_buff *skb;

 skb=*pskb;

 skb->transport_header=skb->data;
 skb->network_header = skb->data;





  ret = filter_enter(skb);
  if (ret == 0) {
   kfree_skb(skb);
   ret = 1;
   goto out;
  }
# 666 "net/rtl/fastpath/fastpath_common.c"
  else if(ret != 1)
  {
   ret = 0;
   goto out;
  }


 if(!(skb->pkt_type == 0))
  {
   ret = 0;
   goto out;
  }

 if (!fast_nat_fw)
 {
  ret = 0;
  goto out;
 }
# 693 "net/rtl/fastpath/fastpath_common.c"
 if (fast_pptp_fw) {
  fast_pptp_filter(skb);
  ret = fast_pptp_to_lan(&skb);
  if (ret < 0)
  {
   ret = 1;
   goto out;
  }
  *pskb=skb;
 }



 if (fast_l2tp_fw)
  fast_l2tp_rx(skb);



 ret = enter_fast_path(skb);
# 725 "net/rtl/fastpath/fastpath_common.c"
 if (fast_pptp_fw && ret == 0 && ip_hdr(skb)->protocol == IPPROTO_GRE && skb->len > sizeof(struct iphdr)&& pptp_tcp_finished==1)
  if(Check_GRE_rx_net_device(skb))
  {
   fast_pptp_sync_rx_seq(skb);
  }


out:
 return ret;
}


static int __attribute__ ((__section__(".init.text"))) __attribute__((no_instrument_function)) fastpath_init(void)
{
 int ret;
# 779 "net/rtl/fastpath/fastpath_common.c"
 ret=init_table_napt(1024, 1024);
 if(ret!=0)
 {
  ;
 }



 ret=init_table_path(1024, (1024<<1));
 if(ret!=0) {
  ;
 }


 if(!udp_fragCache_init(64))
  return -1;



 filter_init();



 fast_pptp_init();



 fast_l2tp_init();



 res1=create_proc_entry("fast_nat",0,((void *)0));
 if (res1) {
     res1->read_proc=read_proc;
     res1->write_proc=write_proc;
 }



 rtl_fp_gc_rx_threshold = (16);


 return 0;
}

static void __attribute__ ((__section__(".exit.text"))) __attribute__((__used__)) fastpath_exit(void)
{
# 847 "net/rtl/fastpath/fastpath_common.c"
 filter_exit();



 fast_pptp_exit();



 if (res1) {
  remove_proc_entry("fast_nat", res1);
  res1 = ((void *)0);
 }



}

static initcall_t __initcall_fastpath_init6 __attribute__((__used__)) __attribute__((__section__(".initcall" "6" ".init"))) = fastpath_init;;
static exitcall_t __exitcall_fastpath_exit __attribute__((__used__)) __attribute__ ((__section__(".exitcall.exit"))) = fastpath_exit;;
;
