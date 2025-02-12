
SRCDIR::= src
OBJDIR::= obj
BINDIR::= bin

RAWDIR::= $(OBJDIR)/raw
COMMDIR::= $(SRCDIR)/common
DATADIR::= $(SRCDIR)/data
INCLDIR::= $(SRCDIR)/include

vpath	%.s		$(SRCDIR)
vpath	%.c		$(SRCDIR) $(COMMDIR) $(DATADIR)
vpath	%.o		$(OBJDIR) $(RAWDIR)
vpath	%		$(BINDIR)
