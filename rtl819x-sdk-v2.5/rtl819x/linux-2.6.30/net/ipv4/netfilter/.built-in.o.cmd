cmd_net/ipv4/netfilter/built-in.o :=  rsdk-linux-ld  -m elf32btsmip   -r -o net/ipv4/netfilter/built-in.o net/ipv4/netfilter/nf_conntrack_ipv4.o net/ipv4/netfilter/nf_nat.o net/ipv4/netfilter/nf_defrag_ipv4.o net/ipv4/netfilter/nf_nat_ftp.o net/ipv4/netfilter/nf_nat_pptp.o net/ipv4/netfilter/nf_nat_sip.o net/ipv4/netfilter/nf_nat_proto_gre.o net/ipv4/netfilter/ip_tables.o net/ipv4/netfilter/iptable_filter.o net/ipv4/netfilter/iptable_mangle.o net/ipv4/netfilter/iptable_nat.o net/ipv4/netfilter/ipt_MASQUERADE.o 
