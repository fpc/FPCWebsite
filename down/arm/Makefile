#
# Expects EXE and inlinux to be passed from top-level makefile.
#
#
# Top-level html directory with tools.
#
#ifdef inlinux
TOPDIR=../../
#else
#TOPDIR=..\\..\\
#endif

#
# Tools
#
FP2HTML=$(TOPDIR)fp2html$(EXE)
CONTFP=$(TOPDIR)contfp$(EXE)
MAKEIDX=$(TOPDIR)makeidx$(EXE)
MAKEMIRROR=$(TOPDIR)makemirror$(EXE)
FIXDOC=$(TOPDIR)fixdoc$(EXE)
# 
# Other files
#
TEMPLATEFILE=$(TOPDIR)template.fpht
FPTEMPLATEMIRRORFILE=$(TOPDIR)templatemirror.fp
HTMLTEMPLATEMIRRORFILE=$(TOPDIR)templatemirror.html
MIRRORLIST=$(TOPDIR)mirrors.lst
#
# Local files ?
# 
DOWNLOADPAGES=$(patsubst %.fp,%,$(wildcard *.fp))
DOWNLOADOLD=$(patsubst %.fp,%,$(wildcard *.fp.old))
DOWNLOADCHK=$(addsuffix .chk,$(DOWNLOADPAGES))
DOWNLOADOLDCHK=$(addsuffix .chk,$(DOWNLOADOLD))

.SUFFIXES: .fp .html .chk

%.chk: %.fp $(TEMPLATEFILE) $(FPTEMPLATEMIRRORFILE) $(MIRRORLIST)
	$(FP2HTML) -T$(TEMPLATEFILE) $(FP2HTMLOPT) $<
	$(MAKEMIRROR) -multi $(MIRRORLIST) $(patsubst %.fp,%.html,$<) $(patsubst %.fp,%.html,$<)
	$(FP2HTML) -T$(TEMPLATEFILE) $(FP2HTMLOPT) $(FPTEMPLATEMIRRORFILE)
	$(MV) $(HTMLTEMPLATEMIRRORFILE) $(patsubst %.fp,%.html,$<)
	$(MAKEMIRROR) -single $(MIRRORLIST) $(patsubst %.fp,%.html,$<) $(patsubst %.fp,%.tmp,$<)
	$(MV) $(patsubst %.fp,%.tmp,$<) $(patsubst %.fp,%.html,$<)
	echo "Build" > $@

all: $(DOWNLOADCHK) 
# $(DOWNLOADOLDCHK)

info:
	@echo "Download pages: " $(DOWNLOADPAGES)
	@echo "Download old pages: " $(DOWNLOADOLD)
	@echo "Download check: " $(DOWNLOADCHK)
	@echo "Download old check: " $(DOWNLOADOLDCHK)

clean:
	rm -f *.chk *.html
