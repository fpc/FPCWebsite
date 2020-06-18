#
# Simply pass on.
#
export EXE inlinux PWD MV RM 
# Put m68k directory as last because it generates an error
DIRS=aarch64 arm i386 powerpc powerpc64 sparc x86_64 docs old source i8086 mips mipsel m68k
.PHONY: $(DIRS) all clean makefiles
default: all

all:
	for f in $(DIRS) ; do $(MAKE) -C $$f all ; done
english:
	for f in $(DIRS) ; do $(MAKE) -C $$f english ; done
	
clean:
	for f in $(DIRS) ; do $(MAKE) -C $$f clean ; done
info:
	for f in $(DIRS) ; do $(MAKE) -C $$f info ; done

makefiles:
	@for f in $(DIRS) ; do cd $$f ; ../../gen_makefile > Makefile ; cd .. ; done
