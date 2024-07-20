.PHONY:	default init		zen down clear		run dbg




default: init $(TGT)
init: 
	@mkdir -p $(BINDIR)
	@mkdir -p $(OBJDIR)
	@mkdir -p $(RAWDIR)



zen: down clear
	@rm -rf $(OBJDIR)
	@rm -rf $(BINDIR)
down:
	@rm -fd $(RAWDIR)/* 
	@rm -fd $(OBJDIR)/* 
	@rm -fd $(BINDIR)/*
clear:
	@for f in *; do if [ ! -d $$f ] && [ ! $$f = 'Makefile' ] && [ ! $$f = 'README.md' ]; then rm -fr $$f; fi; done



run:
	@./$(TGT)
dbg:
	@gdb $(TGT)
