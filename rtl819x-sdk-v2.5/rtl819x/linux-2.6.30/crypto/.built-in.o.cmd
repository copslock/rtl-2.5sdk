cmd_crypto/built-in.o :=  rsdk-linux-ld  -m elf32btsmip   -r -o crypto/built-in.o crypto/crypto.o crypto/crypto_algapi.o crypto/crypto_hash.o crypto/sha1_generic.o crypto/arc4.o 
