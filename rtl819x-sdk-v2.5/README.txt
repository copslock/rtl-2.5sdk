		REALTEK 11nRouter SDK(based on linux-2.6.30)-v2.5

		---------------------------------------------------------

Package List
============
  1. rtl819x.tbz2 - containing the source code of linux-2.6 v2.5 sdk
  2. rtl819x-bootcode-2.5.tar.gz
  3. README.txt - this file
  4. INSTALL.txt - how to build code 
  5. Document.tar.gz - containing the documents for this SDK
  6. image/tar.gz	-	containning the images of each kind of combination.
  		        -	The images is specially builded for release.
			-	It's combines the default configuration with firmware in order to avoid the MIB conflicts.
			-	Please upgrade the images via web UI.
     image/fw_96c.bin                   - gateway image for 8196C with default setting config
     image/96c_92c_nfjrom               - MP image for 8196C
     image/fw_96c_92d.bin 		- gateway image for 8196C+8192D with default setting config
     image/96c_92d_nfjrom		- MP image for 8196C+8192D
     image/fw_pocket_92c.bin            - gateway image for pocketAP+8192C with default setting config
     image/fw_pocket_92d.bin 		- gateway image for pocketAP+8192D with default setting config
     image/fw_98_92c.bin 		- gateway image for 8198+8192C with default setting config
     image/98_92c_nfjrom		- MP image for 8198+8192C
     image/fw_98_92d.bin 		- gateway image for 8198+8192D with default setting config 
     image/98_92d_nfjrom		- MP image for 8198+8192D
     image/fw_98_92c_92d.bin 		- gateway image for 8198+8192C+8192D with default setting config
     image/98_92c_92d_nfjrom.bin 	- MP image for 8198+8192C+8192D
     image/boot_96c.bin			- bootloader for 8196C+8192C and pocketAP+8192C
     image/boot_96c_92d.bin		- bootloader for pocket+8192D(32M SDRAM) and 8196C+8192D
     image/boot_98.bin			- bootloader for 8198 demo board
  7. config.tar.gz
     config/linux_96C_config            - linux config for 8196C
     config/linux_96c_92d_config	- linux config for 8196C+8192D
     config/linux_pocket_92c_config     - linux config for pocketAP+8192C
     config/linux_pocket_92d_config	- linux config for pocketAP+8192D
     config/linux_98_92c_config		- linux config for 8198+8192C
     config/linux_98_92d_config		- linux config for 8198+8192D
     config/linux_98_92c_92d_config	- linux config for 8198+8192C+8192D          

Environment
===========
  Fedora 9, Ubuntu 8.10/9.10 are recommended


Install the linux-2.6 sdk package
=============================
  1. Copy 'rtl819x.tbz2' to a file directory on a Linux PC
  2. Type 'tar xjfv rtl819x.tbz2' to extract the package
 
 Install the bootcode package
============================= 
  Type 'tar xvzf rtl819x-bootcode-2.5.tar.gz' to extract the package 

build the linux kernel/rootfs/bootcode
=============================
  follow the INSTALL.txt file
