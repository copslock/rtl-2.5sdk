cmd_net/core/built-in.o :=  rsdk-linux-ld  -m elf32btsmip   -r -o net/core/built-in.o net/core/sock.o net/core/request_sock.o net/core/skbuff.o net/core/iovec.o net/core/datagram.o net/core/stream.o net/core/scm.o net/core/gen_stats.o net/core/gen_estimator.o net/core/net_namespace.o net/core/sysctl_net_core.o net/core/skb_dma_map.o net/core/dev.o net/core/ethtool.o net/core/dev_mcast.o net/core/dst.o net/core/netevent.o net/core/neighbour.o net/core/rtnetlink.o net/core/utils.o net/core/link_watch.o net/core/filter.o net/core/net-sysfs.o 
