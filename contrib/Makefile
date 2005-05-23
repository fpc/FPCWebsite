#######################################################################
#   Makefile for Free Pascal
#   (C) 1998 Michael van Canneyt
#######################################################################
#
#  Configurable section
#

# First, MySQL configuration 
# Where are the templates located : 
TEMPLATEDIR=/usr/local/fpk/cgi/contrib
# What is the e-mail address of the maintainer ?
EMAIL=michael@tfdec1.fys.kuleuven.ac.be

# What host is the database on ?
DBHOST=
# What Database should we select ? 
DB=
# What user should we connect as ?
DBUSER=
# What password should the user use ? 
DBPASSWD=

# Compiler configuration

# What Compiler should we use ?
PP=ppc386

# Where are the Free Pascal units ? (Optional)
UNITDIR = /usr/lib/fpc/0.99.5/linuxunits\;../../units/mysql\;../../units/cgi

# Any options you wish to pass to the compiler
OPT=-k-L/usr/lib/gcc-lib/i486-linux/2.7.2.1/

# Where to install the units ?
UNITINSTALLDIR=/usr/lib/fpc/0.99.5/linuxunits

# Where to install the programs ?
BININSTALLDIR=/usr/local/apache/share/cgi-bin


#######################################################################
# End of configurable section. Do not edit below this line.
#######################################################################

.SUFFIXES: .pp .ppu .pas
.PHONY: all install clean units progs config

# If nothing special needs doing, then just fill in the names here.
# The rest should be automatic.
UNITNAMES=types html db 
PROGNAMES=contrib import
UNITOBJECTS=$(addsuffix .o, $(UNITNAMES))
UNITFILES=$(addsuffix .ppu, $(UNITNAMES))
PROGSOURCES=$(addsiffix .pp, $(PROGNAMES))
PROGOBJECTS=$(addsuffix .o, $(PROGNAMES))

# Adapt options. Add unit path if needed.
ifdef UNITDIR
override OPT:=$(OPT) -Up$(UNITDIR)
endif

# correct Path
ifneq ($(TEMPLATEDIR),)
ifneq ($(notdir $(TEMPLATEDIR)),)
override TEMPLATEDIR:=$(addsuffix /,$(TEMPLATEDIR))
endif
endif

# Default rule for units
.pp.ppu:
	$(PP) $(OPT) $<

# Default target.
all: $(UNITFILES) $(PROGNAMES)

units: $(UNITFILES)

progs: $(PROGNAMES)

contrib: types.ppu db.ppu html.ppu contrib.pp config.ppu

db.ppu: db.pp types.ppu config.ppu

html.ppu: html.pp config.ppu

# Default rule for programs
$(PROGNAMES): %:%.pp
	$(PP) $(OPT) $<

#
# Generic install and clean targets
#

install: all
	install -m 755 contrib $(BININSTALLDIR)
	cp ../tmpl/*.tmpl $(TEMPLATEDIR)

clean:
	rm -f $(UNITOBJECTS) $(UNITFILES) $(PROGNAMES) $(PROGOBJECTS)

distclean: clean
	rm config.o config.ppu

config:
	@echo -e 'unit config;\n\ninterface\n\nConst\n' >config.pp
	@echo -e "  MyEmail = '$(EMAIL)';" >>config.pp
	@echo -e "  Templatedir = '$(TEMPLATEDIR)';" >>config.pp
	@echo -e "  DbHost     : pchar = '$(DBHOST)';" >>config.pp
	@echo -e "  DbDatabase : pchar = '$(DB)';" >>config.pp
	@echo -e "  DbUser     : pchar = '$(DBUSER)';" >>config.pp
	@echo -e "  DbPasswd   : pchar = '$(DBPASSWD)';" >>config.pp
	@echo -e "\nimplementation\n\nend." >>config.pp
# End of makefile.
