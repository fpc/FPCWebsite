
URL_EXTENSION=.var
URL_EXTENSION_EN=.html

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

#adp2html tools
ADP2HTML=../adp2html

ifndef PP
 PP=fpc
endif

#adp2html tools
ADP2HTML=../adp2html
GENVARFILE=../genvarfile

PAGES:=docsearch
HTMLPAGES=$(addsuffix .html,$(PAGES))

.PHONY: all

%.html: %.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	$(ADP2HTML) -m ../default-master.adp -o $@ $<
	
all: $(HTMLPAGES)	
