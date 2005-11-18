#
# Simply pass on.
#
export EXE inlinux PWD MV RM 
DIRS=arm i386 powerpc sparc m68k x86_64 docs old source
.PHONY: $(DIRS) all clean makefiles
default: all

all:
	for f in $(DIRS) ; do $(MAKE) -C $$f all ; done
	
clean:
	for f in $(DIRS) ; do $(MAKE) -C $$f clean ; done
info:
	for f in $(DIRS) ; do $(MAKE) -C $$f info ; done

makefiles:
	for f in $(DIRS) ; do cp Makefile.dir $$f/Makefile ; done
