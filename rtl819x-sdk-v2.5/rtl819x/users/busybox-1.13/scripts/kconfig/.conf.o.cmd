cmd_scripts/kconfig/conf.o := gcc -Wp,-MD,scripts/kconfig/.conf.o.d  -Wall -Wstrict-prototypes -Os -fomit-frame-pointer       -c -o scripts/kconfig/conf.o scripts/kconfig/conf.c

deps_scripts/kconfig/conf.o := \
  scripts/kconfig/conf.c \
    $(wildcard include/config/allconfig.h) \
  /usr/include/ctype.h \
    $(wildcard include/config/ern/inlines.h) \
    $(wildcard include/config/c99.h) \
    $(wildcard include/config/.h) \
    $(wildcard include/config/d.h) \
    $(wildcard include/config/c.h) \
    $(wildcard include/config/en.h) \
    $(wildcard include/config/en2k8.h) \
  /usr/include/features.h \
    $(wildcard include/config/c11.h) \
    $(wildcard include/config/c95.h) \
    $(wildcard include/config/ix.h) \
    $(wildcard include/config/ix2.h) \
    $(wildcard include/config/ix199309.h) \
    $(wildcard include/config/ix199506.h) \
    $(wildcard include/config/en/extended.h) \
    $(wildcard include/config/x98.h) \
    $(wildcard include/config/en2k.h) \
    $(wildcard include/config/en2kxsi.h) \
    $(wildcard include/config/en2k8xsi.h) \
    $(wildcard include/config/gefile.h) \
    $(wildcard include/config/gefile64.h) \
    $(wildcard include/config/e/offset64.h) \
    $(wildcard include/config/ile.h) \
    $(wildcard include/config/ntrant.h) \
    $(wildcard include/config/tify/level.h) \
    $(wildcard include/config/cxx11.h) \
    $(wildcard include/config/i.h) \
    $(wildcard include/config/ix/implicitly.h) \
  /usr/include/stdc-predef.h \
  /usr/include/sys/cdefs.h \
    $(wildcard include/config/espaces.h) \
  /usr/include/bits/wordsize.h \
  /usr/include/gnu/stubs.h \
  /usr/include/gnu/stubs-32.h \
  /usr/include/bits/types.h \
  /usr/include/bits/typesizes.h \
  /usr/include/endian.h \
  /usr/include/bits/endian.h \
  /usr/include/bits/byteswap.h \
  /usr/include/bits/byteswap-16.h \
  /usr/include/xlocale.h \
  /usr/include/stdlib.h \
  /usr/lib/gcc/i686-redhat-linux/4.7.2/include/stddef.h \
  /usr/include/bits/waitflags.h \
  /usr/include/bits/waitstatus.h \
  /usr/include/sys/types.h \
  /usr/include/time.h \
  /usr/include/sys/select.h \
  /usr/include/bits/select.h \
  /usr/include/bits/sigset.h \
  /usr/include/bits/time.h \
  /usr/include/sys/sysmacros.h \
  /usr/include/bits/pthreadtypes.h \
  /usr/include/alloca.h \
  /usr/include/stdio.h \
  /usr/include/libio.h \
    $(wildcard include/config/a.h) \
    $(wildcard include/config/ar/t.h) \
    $(wildcard include/config//io/file.h) \
  /usr/include/_G_config.h \
  /usr/include/wchar.h \
  /usr/lib/gcc/i686-redhat-linux/4.7.2/include/stdarg.h \
  /usr/include/bits/stdio_lim.h \
  /usr/include/bits/sys_errlist.h \
  /usr/include/string.h \
    $(wildcard include/config/ing/inlines.h) \
  /usr/include/unistd.h \
  /usr/include/bits/posix_opt.h \
  /usr/include/bits/environments.h \
  /usr/include/bits/confname.h \
  /usr/include/getopt.h \
  /usr/include/sys/stat.h \
  /usr/include/bits/stat.h \
  scripts/kconfig/lkc.h \
  scripts/kconfig/expr.h \
  /usr/lib/gcc/i686-redhat-linux/4.7.2/include/stdbool.h \
  /usr/include/libintl.h \
    $(wildcard include/config//gettext.h) \
  /usr/include/locale.h \
  /usr/include/bits/locale.h \
  scripts/kconfig/lkc_proto.h \

scripts/kconfig/conf.o: $(deps_scripts/kconfig/conf.o)

$(deps_scripts/kconfig/conf.o):
