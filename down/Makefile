#
# Simply pass on.
#
export EXE inlinux PWD MV RM 
DIRS=arm i386 powerpc powerpc64 sparc m68k x86_64 docs old source i8086 android
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
	for f in $(DIRS) ; do cd $$f ; ../../gen_makefile > Makefile ; cd .. ; done
