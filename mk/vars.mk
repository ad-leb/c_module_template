
DLINKER::= /lib64/ld-linux-x86-64.so.2

ASFLAGS::= 
CFLAGS::= -c -I src/include/ -Wno-builtin-declaration-mismatch
LDFLAGS::= -lc --dynamic-linker=$(DLINKER)
MDFLAGS::= -r


TGT::= $(BINDIR)/tgt
