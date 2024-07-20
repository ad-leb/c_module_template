
$(TGT): $(_MAIN)
	$(LD) $(LDFLAGS) $^ -o $@
