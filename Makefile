#
# Makefile for the Free Pascal Home Page
# $Id: Makefile,v 1.51 2005/05/16 13:41:54 peter Exp $
#

# Notes for Win32 users:
# - some parts of this file may only run on a linux system
#   (i.e. sed is possibly not present on a windows platform)
# - you may spot trouble with makeidx if your *.fp files are
#   set read only
# - subdirs may cause make errors due to missing default rule

ifndef PP
 PP=fpc
endif

ifdef UNITDIR
override OPT:=$(OPT) -Fu$(UNITDIR)
endif


# Search for PWD and determine also if we are under linux
PWD:=$(strip $(wildcard $(addsuffix /pwd.exe,$(subst ;, ,$(PATH)))))
ifeq ($(PWD),)
PWD:=$(strip $(wildcard $(addsuffix /pwd,$(subst :, ,$(PATH)))))
ifeq ($(PWD),)
nopwd:
	@echo You need the GNU utils package to use this Makefile!
	@echo Get ftp://ftp.freepascal.org/pub/fpc/dist/go32v2/utilgo32.zip
	@exit
else
inlinux=1
endif
else
PWD:=$(firstword $(PWD))
endif

# Detect NT - NT sets OS to Windows_NT
ifndef inlinux
ifeq ($(OS),Windows_NT)
inWinNT=1
endif
endif

# Detect OS/2 - OS/2 has OS2_SHELL defined
ifndef inlinux
ifndef inWinNT
ifdef OS2_SHELL
inOS2=1
endif
endif
endif

ifdef inlinux
OS=linux
else
ifdef inOS2
OS=os2
else
ifdef inWinNT
OS=win32
else
# could be somewhat wrong in case of Windos 95
OS=go32v2
endif
endif
endif

#
# OS depended stuff
#

ifeq ($(OS),linux)
EXE=
else
EXE=.exe
endif

OBJ=.o

# require GNU Fileutils
RM=rm -f
MV=mv -f

# Directory separator
SL=/


FP2HTML=fp2html$(EXE)
CONTFP=contfp$(EXE)
MAKEIDX=makeidx$(EXE)
MAKEMIRROR=makemirror$(EXE)
FIXDOC=fixdoc$(EXE)
# To make them if needed
DOFP2HTML=$(FP2HTML)
DOFIXDOC=$(FIXDOC)
DOCONTFP=$(CONTFP)
DOMAKEIDX=$(MAKEIDX)
DOMAKEMIRROR=$(MAKEMIRROR)

export inlinux EXE PWD MV RM

#
# Main targets
#
.SUFFIXES: .fp .html

PAGES=$(patsubst template%,,$(patsubst down%,,$(patsubst %.fp,%,$(wildcard *.fp))))
OLDDOWN=$(patsubst template%,,$(patsubst old%,,$(patsubst %.fp,%,$(wildcard *.fp))))
TOOLSPAGES=$(patsubst tools/%.fp,%,$(wildcard tools/*.fp))
RTLPAGES=rtl
FCLPAGES=fcl
PACKAGEPAGES=$(patsubst packages/%.fp,%,$(wildcard packages/*.fp))

PACKAGEHTML=$(addprefix packages$(SL), $(addsuffix .html, $(PACKAGEPAGES)))
TOOLSHTML=$(addprefix tools$(SL), $(addsuffix .html, $(TOOLSPAGES)))
RTLHTML=$(addprefix rtl$(SL), $(addsuffix .html, $(RTLPAGES)))
FCLHTML=$(addprefix fcl$(SL), $(addsuffix .html, $(FCLPAGES)))
PAGES:=$(addsuffix .html, $(PAGES))
OLDDOWN:=$(addsuffix .html, $(OLDDOWN))
HTML:=$(PAGES) $(OLDDOWN) $(TOOLSHTML) $(RTLHTML) $(FCLHTML) $(PACKAGEHTML)

DOWNLOADPAGES=$(patsubst %.fp,%,$(wildcard down/*/*.fp))
DOWNLOADOLD=$(patsubst %.fp,%,$(wildcard down/*/old*.fp))
DOWNLOADCHK=$(addsuffix .chk,$(DOWNLOADPAGES))
DOWNLOADOLDCHK=$(addsuffix .chk,$(DOWNLOADOLD))


.PHONY: tolily all clean distclean tar zip download

all: $(HTML) download
# $(DOWNLOADCHK) $(DOWNLOADOLDCHK)

download: templatemirror.html $(DOMAKEMIRROR) $(DOFP2HTML)
	$(MAKE) -C down all
# headfoot

clean:
	-$(RM) $(HTML)
	-$(RM) *.tmpl
	-$(RM) down*.html down*.chk
	-$(RM) htmls.tar.gz
	-$(RM) htmls.zip
	$(MAKE) -C down clean

distclean: clean
	$(RM) $(FP2HTML) $(MAKEIDX) $(MAKEMIRROR) $(CONTFP) $(FIXDOC)

# archives (unix only)
tar: all
	tar -czf htmls.tar.gz `find -name '*.html' -or -name '*.gif' -or -name '*.png' -or -name '*.css' -or -name '*.jpg'` $(OTHERFILES)

zip: all
	zip htmls.zip `find -name '*.html' -or -name '*.gif' -or -name '*.png' -or -name '*.css' -or -name '*.jpg'` $(OTHERFILES)

#
# The converters
#

$(FP2HTML): fp2html.pp
	$(PP) $(OPT) -Xs fp2html.pp
	$(RM) fp2html$(OBJ)

$(MAKEIDX): makeidx.pp
	$(PP) $(OPT) -Xs makeidx.pp
	$(RM) makeidx$(OBJ)

$(MAKEMIRROR): makemirror.pp
	$(PP) $(OPT) -Xs makemirror.pp
	$(RM) makemirror$(OBJ)

$(CONTFP): contfp.pp
	$(PP) $(OPT) -Xs contfp.pp
	$(RM) contfp$(OBJ)

$(FIXDOC): fixdoc.pp
	$(PP) $(OPT) -Xs fixdoc.pp
	$(RM) fixdoc$(OBJ)

#
# Special
#

fixdocs: $(DOFIXDOC)
	-$(FIXDOC) docs$(SL)ref$(SL)ref.html
	-$(FIXDOC) docs$(SL)units$(SL)units.html

#
# The html files
#
# general default rule

ifdef MODIFY
FP2HTMLOPT=-m$(MODIFY)
endif

%.html: %.fp template.fpht  $(DOFP2HTML)
	$(FP2HTML) $(FP2HTMLOPT) $<

%.chk: %.fp template.fpht templatemirror.fp mirrors.lst $(DOFP2HTML) $(DOMAKEMIRROR)
	$(FP2HTML) $(FP2HTMLOPT) $<
	$(MAKEMIRROR) -multi mirrors.lst $(patsubst %.fp,%.html,$<) $(patsubst %.fp,%.html,$<)
	$(FP2HTML) $(FP2HTMLOPT) templatemirror.fp
	$(MV) templatemirror.html $(patsubst %.fp,%.html,$<)
	$(MAKEMIRROR) -single mirrors.lst $(patsubst %.fp,%.html,$<) $(patsubst %.fp,%.tmp,$<)
	$(MV) $(patsubst %.fp,%.tmp,$<) $(patsubst %.fp,%.html,$<)
	echo "Build" > $@

#
# detailed rules
#

develop.html: develop.fp template.fpht $(DOMAKEIDX) $(DOFP2HTML)
	$(MAKEIDX) develop.fp
	$(FP2HTML) $(FP2HTMLOPT) develop.fp

#
# substitution pass for header/footer templates
#

thehost=HREF=\"http://www.freepascal.org/
theimg=SRC=\"http://www.freepascal.org/
href1=HREF=\"[hH][Tt][Tt][Pp]://
href1a=HREF=\"http://
href2=HREF=\"
pattern=AABBAABB
img=SRC=\"

headfoot: tmpl/head.tmpl tmpl/foot.tmpl tmpl/bhead.tmpl tmpl/bfoot.tmpl

tmpl/head.tmpl: split.html
	sed -n 1,/SPLITHERE/p <split.html |sed s+$(href1)+$(pattern)+g | \
   sed s+$(href2)+$(thehost)+g | sed s+$(pattern)+$(href1a)+g | \
   sed s+$(img)+$(theimg)+g >tmpl/head.tmpl

tmpl/foot.tmpl: split.html
	sed 1,/SPLITHERE/d <split.html >tmpl/foot.tmpl

tmpl/bhead.tmpl: esplit.html
	sed -n 1,/SPLITHERE/p <esplit.html |sed s+$(href1)+$(pattern)+g | \
   sed s+$(href2)+$(thehost)+g | sed s+$(pattern)+$(href1a)+g | \
   sed s+$(img)+$(theimg)+g >tmpl/bhead.tmpl

tmpl/bfoot.tmpl: esplit.html
	sed 1,/SPLITHERE/d <esplit.html >tmpl/bfoot.tmpl
