
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
ADP2HTML=../../adp2html$(EXE)

ifndef PP
 PP=fpc
endif

.PHONY: all all_pages clean
default: all
all: all_pages
english: all_en_pages
gba-australia.html.bg: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/gba-australia.html.bg -oe iso-8859-5 gba.adp
gba-australia.html.en: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-australia.html.en -oe iso-8859-1 gba.adp
gba-australia.html.fi: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/gba-australia.html.fi -oe iso-8859-1 gba.adp
gba-australia.html.fr: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/gba-australia.html.fr -oe iso-8859-1 gba.adp
gba-australia.html.id: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/gba-australia.html.id -oe iso-8859-1 gba.adp
gba-australia.html.it: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/gba-australia.html.it -oe iso-8859-1 gba.adp
gba-australia.html.nl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/gba-australia.html.nl -oe iso-8859-1 gba.adp
gba-australia.html.po: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/gba-australia.html.po -oe iso-8859-2 gba.adp
gba-australia.html.sl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/gba-australia.html.sl -oe iso-8859-2 gba.adp
gba-australia.html.ru: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/gba-australia.html.ru -oe iso-8859-5 gba.adp
gba-australia.html: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-australia.html -oe ISO-8859-1 gba.adp

gba-australia.var: gen_makefile.conf ../..//down2/arm
	echo > gba-australia.var
	echo 'URI: gba-australia.html.bg' >> gba-australia.var
	echo 'Content-language: bg' >> gba-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-australia.var
	echo >> gba-australia.var
	echo 'URI: gba-australia.html.en' >> gba-australia.var
	echo 'Content-language: en' >> gba-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-australia.var
	echo >> gba-australia.var
	echo 'URI: gba-australia.html.fi' >> gba-australia.var
	echo 'Content-language: fi' >> gba-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-australia.var
	echo >> gba-australia.var
	echo 'URI: gba-australia.html.fr' >> gba-australia.var
	echo 'Content-language: fr' >> gba-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-australia.var
	echo >> gba-australia.var
	echo 'URI: gba-australia.html.id' >> gba-australia.var
	echo 'Content-language: id' >> gba-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-australia.var
	echo >> gba-australia.var
	echo 'URI: gba-australia.html.it' >> gba-australia.var
	echo 'Content-language: it' >> gba-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-australia.var
	echo >> gba-australia.var
	echo 'URI: gba-australia.html.nl' >> gba-australia.var
	echo 'Content-language: nl' >> gba-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-australia.var
	echo >> gba-australia.var
	echo 'URI: gba-australia.html.po' >> gba-australia.var
	echo 'Content-language: pl' >> gba-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-australia.var
	echo >> gba-australia.var
	echo 'URI: gba-australia.html.sl' >> gba-australia.var
	echo 'Content-language: sl' >> gba-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-australia.var
	echo >> gba-australia.var
	echo 'URI: gba-australia.html.ru' >> gba-australia.var
	echo 'Content-language: ru' >> gba-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-australia.var
	echo >> gba-australia.var
linux-australia.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/linux-australia.html.bg -oe iso-8859-5 linux.adp
linux-australia.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-australia.html.en -oe iso-8859-1 linux.adp
linux-australia.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/linux-australia.html.fi -oe iso-8859-1 linux.adp
linux-australia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/linux-australia.html.fr -oe iso-8859-1 linux.adp
linux-australia.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/linux-australia.html.id -oe iso-8859-1 linux.adp
linux-australia.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/linux-australia.html.it -oe iso-8859-1 linux.adp
linux-australia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/linux-australia.html.nl -oe iso-8859-1 linux.adp
linux-australia.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/linux-australia.html.po -oe iso-8859-2 linux.adp
linux-australia.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/linux-australia.html.sl -oe iso-8859-2 linux.adp
linux-australia.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/linux-australia.html.ru -oe iso-8859-5 linux.adp
linux-australia.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-australia.html -oe ISO-8859-1 linux.adp

linux-australia.var: gen_makefile.conf ../..//down2/arm
	echo > linux-australia.var
	echo 'URI: linux-australia.html.bg' >> linux-australia.var
	echo 'Content-language: bg' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.en' >> linux-australia.var
	echo 'Content-language: en' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.fi' >> linux-australia.var
	echo 'Content-language: fi' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.fr' >> linux-australia.var
	echo 'Content-language: fr' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.id' >> linux-australia.var
	echo 'Content-language: id' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.it' >> linux-australia.var
	echo 'Content-language: it' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.nl' >> linux-australia.var
	echo 'Content-language: nl' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.po' >> linux-australia.var
	echo 'Content-language: pl' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.sl' >> linux-australia.var
	echo 'Content-language: sl' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.ru' >> linux-australia.var
	echo 'Content-language: ru' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-australia.var
	echo >> linux-australia.var
nds-australia.html.bg: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/nds-australia.html.bg -oe iso-8859-5 nds.adp
nds-australia.html.en: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-australia.html.en -oe iso-8859-1 nds.adp
nds-australia.html.fi: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/nds-australia.html.fi -oe iso-8859-1 nds.adp
nds-australia.html.fr: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/nds-australia.html.fr -oe iso-8859-1 nds.adp
nds-australia.html.id: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/nds-australia.html.id -oe iso-8859-1 nds.adp
nds-australia.html.it: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/nds-australia.html.it -oe iso-8859-1 nds.adp
nds-australia.html.nl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/nds-australia.html.nl -oe iso-8859-1 nds.adp
nds-australia.html.po: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/nds-australia.html.po -oe iso-8859-2 nds.adp
nds-australia.html.sl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/nds-australia.html.sl -oe iso-8859-2 nds.adp
nds-australia.html.ru: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/nds-australia.html.ru -oe iso-8859-5 nds.adp
nds-australia.html: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-australia.html -oe ISO-8859-1 nds.adp

nds-australia.var: gen_makefile.conf ../..//down2/arm
	echo > nds-australia.var
	echo 'URI: nds-australia.html.bg' >> nds-australia.var
	echo 'Content-language: bg' >> nds-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-australia.var
	echo >> nds-australia.var
	echo 'URI: nds-australia.html.en' >> nds-australia.var
	echo 'Content-language: en' >> nds-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-australia.var
	echo >> nds-australia.var
	echo 'URI: nds-australia.html.fi' >> nds-australia.var
	echo 'Content-language: fi' >> nds-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-australia.var
	echo >> nds-australia.var
	echo 'URI: nds-australia.html.fr' >> nds-australia.var
	echo 'Content-language: fr' >> nds-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-australia.var
	echo >> nds-australia.var
	echo 'URI: nds-australia.html.id' >> nds-australia.var
	echo 'Content-language: id' >> nds-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-australia.var
	echo >> nds-australia.var
	echo 'URI: nds-australia.html.it' >> nds-australia.var
	echo 'Content-language: it' >> nds-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-australia.var
	echo >> nds-australia.var
	echo 'URI: nds-australia.html.nl' >> nds-australia.var
	echo 'Content-language: nl' >> nds-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-australia.var
	echo >> nds-australia.var
	echo 'URI: nds-australia.html.po' >> nds-australia.var
	echo 'Content-language: pl' >> nds-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-australia.var
	echo >> nds-australia.var
	echo 'URI: nds-australia.html.sl' >> nds-australia.var
	echo 'Content-language: sl' >> nds-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-australia.var
	echo >> nds-australia.var
	echo 'URI: nds-australia.html.ru' >> nds-australia.var
	echo 'Content-language: ru' >> nds-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-australia.var
	echo >> nds-australia.var
wince-australia.html.bg: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/wince-australia.html.bg -oe iso-8859-5 wince.adp
wince-australia.html.en: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-australia.html.en -oe iso-8859-1 wince.adp
wince-australia.html.fi: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/wince-australia.html.fi -oe iso-8859-1 wince.adp
wince-australia.html.fr: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/wince-australia.html.fr -oe iso-8859-1 wince.adp
wince-australia.html.id: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/wince-australia.html.id -oe iso-8859-1 wince.adp
wince-australia.html.it: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/wince-australia.html.it -oe iso-8859-1 wince.adp
wince-australia.html.nl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/wince-australia.html.nl -oe iso-8859-1 wince.adp
wince-australia.html.po: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/wince-australia.html.po -oe iso-8859-2 wince.adp
wince-australia.html.sl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/wince-australia.html.sl -oe iso-8859-2 wince.adp
wince-australia.html.ru: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/wince-australia.html.ru -oe iso-8859-5 wince.adp
wince-australia.html: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-australia.html -oe ISO-8859-1 wince.adp

wince-australia.var: gen_makefile.conf ../..//down2/arm
	echo > wince-australia.var
	echo 'URI: wince-australia.html.bg' >> wince-australia.var
	echo 'Content-language: bg' >> wince-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-australia.var
	echo >> wince-australia.var
	echo 'URI: wince-australia.html.en' >> wince-australia.var
	echo 'Content-language: en' >> wince-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-australia.var
	echo >> wince-australia.var
	echo 'URI: wince-australia.html.fi' >> wince-australia.var
	echo 'Content-language: fi' >> wince-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-australia.var
	echo >> wince-australia.var
	echo 'URI: wince-australia.html.fr' >> wince-australia.var
	echo 'Content-language: fr' >> wince-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-australia.var
	echo >> wince-australia.var
	echo 'URI: wince-australia.html.id' >> wince-australia.var
	echo 'Content-language: id' >> wince-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-australia.var
	echo >> wince-australia.var
	echo 'URI: wince-australia.html.it' >> wince-australia.var
	echo 'Content-language: it' >> wince-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-australia.var
	echo >> wince-australia.var
	echo 'URI: wince-australia.html.nl' >> wince-australia.var
	echo 'Content-language: nl' >> wince-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-australia.var
	echo >> wince-australia.var
	echo 'URI: wince-australia.html.po' >> wince-australia.var
	echo 'Content-language: pl' >> wince-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-australia.var
	echo >> wince-australia.var
	echo 'URI: wince-australia.html.sl' >> wince-australia.var
	echo 'Content-language: sl' >> wince-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-australia.var
	echo >> wince-australia.var
	echo 'URI: wince-australia.html.ru' >> wince-australia.var
	echo 'Content-language: ru' >> wince-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-australia.var
	echo >> wince-australia.var
gba-austria.html.bg: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/gba-austria.html.bg -oe iso-8859-5 gba.adp
gba-austria.html.en: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-austria.html.en -oe iso-8859-1 gba.adp
gba-austria.html.fi: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/gba-austria.html.fi -oe iso-8859-1 gba.adp
gba-austria.html.fr: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/gba-austria.html.fr -oe iso-8859-1 gba.adp
gba-austria.html.id: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/gba-austria.html.id -oe iso-8859-1 gba.adp
gba-austria.html.it: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/gba-austria.html.it -oe iso-8859-1 gba.adp
gba-austria.html.nl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/gba-austria.html.nl -oe iso-8859-1 gba.adp
gba-austria.html.po: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/gba-austria.html.po -oe iso-8859-2 gba.adp
gba-austria.html.sl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/gba-austria.html.sl -oe iso-8859-2 gba.adp
gba-austria.html.ru: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/gba-austria.html.ru -oe iso-8859-5 gba.adp
gba-austria.html: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-austria.html -oe ISO-8859-1 gba.adp

gba-austria.var: gen_makefile.conf ../..//down2/arm
	echo > gba-austria.var
	echo 'URI: gba-austria.html.bg' >> gba-austria.var
	echo 'Content-language: bg' >> gba-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-austria.var
	echo >> gba-austria.var
	echo 'URI: gba-austria.html.en' >> gba-austria.var
	echo 'Content-language: en' >> gba-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-austria.var
	echo >> gba-austria.var
	echo 'URI: gba-austria.html.fi' >> gba-austria.var
	echo 'Content-language: fi' >> gba-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-austria.var
	echo >> gba-austria.var
	echo 'URI: gba-austria.html.fr' >> gba-austria.var
	echo 'Content-language: fr' >> gba-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-austria.var
	echo >> gba-austria.var
	echo 'URI: gba-austria.html.id' >> gba-austria.var
	echo 'Content-language: id' >> gba-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-austria.var
	echo >> gba-austria.var
	echo 'URI: gba-austria.html.it' >> gba-austria.var
	echo 'Content-language: it' >> gba-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-austria.var
	echo >> gba-austria.var
	echo 'URI: gba-austria.html.nl' >> gba-austria.var
	echo 'Content-language: nl' >> gba-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-austria.var
	echo >> gba-austria.var
	echo 'URI: gba-austria.html.po' >> gba-austria.var
	echo 'Content-language: pl' >> gba-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-austria.var
	echo >> gba-austria.var
	echo 'URI: gba-austria.html.sl' >> gba-austria.var
	echo 'Content-language: sl' >> gba-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-austria.var
	echo >> gba-austria.var
	echo 'URI: gba-austria.html.ru' >> gba-austria.var
	echo 'Content-language: ru' >> gba-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-austria.var
	echo >> gba-austria.var
linux-austria.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/linux-austria.html.bg -oe iso-8859-5 linux.adp
linux-austria.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-austria.html.en -oe iso-8859-1 linux.adp
linux-austria.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/linux-austria.html.fi -oe iso-8859-1 linux.adp
linux-austria.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/linux-austria.html.fr -oe iso-8859-1 linux.adp
linux-austria.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/linux-austria.html.id -oe iso-8859-1 linux.adp
linux-austria.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/linux-austria.html.it -oe iso-8859-1 linux.adp
linux-austria.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/linux-austria.html.nl -oe iso-8859-1 linux.adp
linux-austria.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/linux-austria.html.po -oe iso-8859-2 linux.adp
linux-austria.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/linux-austria.html.sl -oe iso-8859-2 linux.adp
linux-austria.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/linux-austria.html.ru -oe iso-8859-5 linux.adp
linux-austria.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-austria.html -oe ISO-8859-1 linux.adp

linux-austria.var: gen_makefile.conf ../..//down2/arm
	echo > linux-austria.var
	echo 'URI: linux-austria.html.bg' >> linux-austria.var
	echo 'Content-language: bg' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.en' >> linux-austria.var
	echo 'Content-language: en' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.fi' >> linux-austria.var
	echo 'Content-language: fi' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.fr' >> linux-austria.var
	echo 'Content-language: fr' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.id' >> linux-austria.var
	echo 'Content-language: id' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.it' >> linux-austria.var
	echo 'Content-language: it' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.nl' >> linux-austria.var
	echo 'Content-language: nl' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.po' >> linux-austria.var
	echo 'Content-language: pl' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.sl' >> linux-austria.var
	echo 'Content-language: sl' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.ru' >> linux-austria.var
	echo 'Content-language: ru' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-austria.var
	echo >> linux-austria.var
nds-austria.html.bg: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/nds-austria.html.bg -oe iso-8859-5 nds.adp
nds-austria.html.en: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-austria.html.en -oe iso-8859-1 nds.adp
nds-austria.html.fi: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/nds-austria.html.fi -oe iso-8859-1 nds.adp
nds-austria.html.fr: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/nds-austria.html.fr -oe iso-8859-1 nds.adp
nds-austria.html.id: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/nds-austria.html.id -oe iso-8859-1 nds.adp
nds-austria.html.it: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/nds-austria.html.it -oe iso-8859-1 nds.adp
nds-austria.html.nl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/nds-austria.html.nl -oe iso-8859-1 nds.adp
nds-austria.html.po: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/nds-austria.html.po -oe iso-8859-2 nds.adp
nds-austria.html.sl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/nds-austria.html.sl -oe iso-8859-2 nds.adp
nds-austria.html.ru: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/nds-austria.html.ru -oe iso-8859-5 nds.adp
nds-austria.html: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-austria.html -oe ISO-8859-1 nds.adp

nds-austria.var: gen_makefile.conf ../..//down2/arm
	echo > nds-austria.var
	echo 'URI: nds-austria.html.bg' >> nds-austria.var
	echo 'Content-language: bg' >> nds-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-austria.var
	echo >> nds-austria.var
	echo 'URI: nds-austria.html.en' >> nds-austria.var
	echo 'Content-language: en' >> nds-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-austria.var
	echo >> nds-austria.var
	echo 'URI: nds-austria.html.fi' >> nds-austria.var
	echo 'Content-language: fi' >> nds-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-austria.var
	echo >> nds-austria.var
	echo 'URI: nds-austria.html.fr' >> nds-austria.var
	echo 'Content-language: fr' >> nds-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-austria.var
	echo >> nds-austria.var
	echo 'URI: nds-austria.html.id' >> nds-austria.var
	echo 'Content-language: id' >> nds-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-austria.var
	echo >> nds-austria.var
	echo 'URI: nds-austria.html.it' >> nds-austria.var
	echo 'Content-language: it' >> nds-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-austria.var
	echo >> nds-austria.var
	echo 'URI: nds-austria.html.nl' >> nds-austria.var
	echo 'Content-language: nl' >> nds-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-austria.var
	echo >> nds-austria.var
	echo 'URI: nds-austria.html.po' >> nds-austria.var
	echo 'Content-language: pl' >> nds-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-austria.var
	echo >> nds-austria.var
	echo 'URI: nds-austria.html.sl' >> nds-austria.var
	echo 'Content-language: sl' >> nds-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-austria.var
	echo >> nds-austria.var
	echo 'URI: nds-austria.html.ru' >> nds-austria.var
	echo 'Content-language: ru' >> nds-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-austria.var
	echo >> nds-austria.var
wince-austria.html.bg: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/wince-austria.html.bg -oe iso-8859-5 wince.adp
wince-austria.html.en: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-austria.html.en -oe iso-8859-1 wince.adp
wince-austria.html.fi: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/wince-austria.html.fi -oe iso-8859-1 wince.adp
wince-austria.html.fr: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/wince-austria.html.fr -oe iso-8859-1 wince.adp
wince-austria.html.id: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/wince-austria.html.id -oe iso-8859-1 wince.adp
wince-austria.html.it: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/wince-austria.html.it -oe iso-8859-1 wince.adp
wince-austria.html.nl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/wince-austria.html.nl -oe iso-8859-1 wince.adp
wince-austria.html.po: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/wince-austria.html.po -oe iso-8859-2 wince.adp
wince-austria.html.sl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/wince-austria.html.sl -oe iso-8859-2 wince.adp
wince-austria.html.ru: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/wince-austria.html.ru -oe iso-8859-5 wince.adp
wince-austria.html: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-austria.html -oe ISO-8859-1 wince.adp

wince-austria.var: gen_makefile.conf ../..//down2/arm
	echo > wince-austria.var
	echo 'URI: wince-austria.html.bg' >> wince-austria.var
	echo 'Content-language: bg' >> wince-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-austria.var
	echo >> wince-austria.var
	echo 'URI: wince-austria.html.en' >> wince-austria.var
	echo 'Content-language: en' >> wince-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-austria.var
	echo >> wince-austria.var
	echo 'URI: wince-austria.html.fi' >> wince-austria.var
	echo 'Content-language: fi' >> wince-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-austria.var
	echo >> wince-austria.var
	echo 'URI: wince-austria.html.fr' >> wince-austria.var
	echo 'Content-language: fr' >> wince-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-austria.var
	echo >> wince-austria.var
	echo 'URI: wince-austria.html.id' >> wince-austria.var
	echo 'Content-language: id' >> wince-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-austria.var
	echo >> wince-austria.var
	echo 'URI: wince-austria.html.it' >> wince-austria.var
	echo 'Content-language: it' >> wince-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-austria.var
	echo >> wince-austria.var
	echo 'URI: wince-austria.html.nl' >> wince-austria.var
	echo 'Content-language: nl' >> wince-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-austria.var
	echo >> wince-austria.var
	echo 'URI: wince-austria.html.po' >> wince-austria.var
	echo 'Content-language: pl' >> wince-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-austria.var
	echo >> wince-austria.var
	echo 'URI: wince-austria.html.sl' >> wince-austria.var
	echo 'Content-language: sl' >> wince-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-austria.var
	echo >> wince-austria.var
	echo 'URI: wince-austria.html.ru' >> wince-austria.var
	echo 'Content-language: ru' >> wince-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-austria.var
	echo >> wince-austria.var
gba-hungary.html.bg: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/gba-hungary.html.bg -oe iso-8859-5 gba.adp
gba-hungary.html.en: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-hungary.html.en -oe iso-8859-1 gba.adp
gba-hungary.html.fi: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/gba-hungary.html.fi -oe iso-8859-1 gba.adp
gba-hungary.html.fr: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/gba-hungary.html.fr -oe iso-8859-1 gba.adp
gba-hungary.html.id: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/gba-hungary.html.id -oe iso-8859-1 gba.adp
gba-hungary.html.it: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/gba-hungary.html.it -oe iso-8859-1 gba.adp
gba-hungary.html.nl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/gba-hungary.html.nl -oe iso-8859-1 gba.adp
gba-hungary.html.po: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/gba-hungary.html.po -oe iso-8859-2 gba.adp
gba-hungary.html.sl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/gba-hungary.html.sl -oe iso-8859-2 gba.adp
gba-hungary.html.ru: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/gba-hungary.html.ru -oe iso-8859-5 gba.adp
gba-hungary.html: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-hungary.html -oe ISO-8859-1 gba.adp

gba-hungary.var: gen_makefile.conf ../..//down2/arm
	echo > gba-hungary.var
	echo 'URI: gba-hungary.html.bg' >> gba-hungary.var
	echo 'Content-language: bg' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.en' >> gba-hungary.var
	echo 'Content-language: en' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.fi' >> gba-hungary.var
	echo 'Content-language: fi' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.fr' >> gba-hungary.var
	echo 'Content-language: fr' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.id' >> gba-hungary.var
	echo 'Content-language: id' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.it' >> gba-hungary.var
	echo 'Content-language: it' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.nl' >> gba-hungary.var
	echo 'Content-language: nl' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.po' >> gba-hungary.var
	echo 'Content-language: pl' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.sl' >> gba-hungary.var
	echo 'Content-language: sl' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.ru' >> gba-hungary.var
	echo 'Content-language: ru' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-hungary.var
	echo >> gba-hungary.var
linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/linux-hungary.html.bg -oe iso-8859-5 linux.adp
linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-hungary.html.en -oe iso-8859-1 linux.adp
linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/linux-hungary.html.fi -oe iso-8859-1 linux.adp
linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/linux-hungary.html.fr -oe iso-8859-1 linux.adp
linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/linux-hungary.html.id -oe iso-8859-1 linux.adp
linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/linux-hungary.html.it -oe iso-8859-1 linux.adp
linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/linux-hungary.html.nl -oe iso-8859-1 linux.adp
linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/linux-hungary.html.po -oe iso-8859-2 linux.adp
linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/linux-hungary.html.sl -oe iso-8859-2 linux.adp
linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/linux-hungary.html.ru -oe iso-8859-5 linux.adp
linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-hungary.html -oe ISO-8859-1 linux.adp

linux-hungary.var: gen_makefile.conf ../..//down2/arm
	echo > linux-hungary.var
	echo 'URI: linux-hungary.html.bg' >> linux-hungary.var
	echo 'Content-language: bg' >> linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.en' >> linux-hungary.var
	echo 'Content-language: en' >> linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.fi' >> linux-hungary.var
	echo 'Content-language: fi' >> linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.fr' >> linux-hungary.var
	echo 'Content-language: fr' >> linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.id' >> linux-hungary.var
	echo 'Content-language: id' >> linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.it' >> linux-hungary.var
	echo 'Content-language: it' >> linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.nl' >> linux-hungary.var
	echo 'Content-language: nl' >> linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.po' >> linux-hungary.var
	echo 'Content-language: pl' >> linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.sl' >> linux-hungary.var
	echo 'Content-language: sl' >> linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.ru' >> linux-hungary.var
	echo 'Content-language: ru' >> linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-hungary.var
	echo >> linux-hungary.var
nds-hungary.html.bg: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/nds-hungary.html.bg -oe iso-8859-5 nds.adp
nds-hungary.html.en: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-hungary.html.en -oe iso-8859-1 nds.adp
nds-hungary.html.fi: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/nds-hungary.html.fi -oe iso-8859-1 nds.adp
nds-hungary.html.fr: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/nds-hungary.html.fr -oe iso-8859-1 nds.adp
nds-hungary.html.id: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/nds-hungary.html.id -oe iso-8859-1 nds.adp
nds-hungary.html.it: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/nds-hungary.html.it -oe iso-8859-1 nds.adp
nds-hungary.html.nl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/nds-hungary.html.nl -oe iso-8859-1 nds.adp
nds-hungary.html.po: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/nds-hungary.html.po -oe iso-8859-2 nds.adp
nds-hungary.html.sl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/nds-hungary.html.sl -oe iso-8859-2 nds.adp
nds-hungary.html.ru: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/nds-hungary.html.ru -oe iso-8859-5 nds.adp
nds-hungary.html: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-hungary.html -oe ISO-8859-1 nds.adp

nds-hungary.var: gen_makefile.conf ../..//down2/arm
	echo > nds-hungary.var
	echo 'URI: nds-hungary.html.bg' >> nds-hungary.var
	echo 'Content-language: bg' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.en' >> nds-hungary.var
	echo 'Content-language: en' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.fi' >> nds-hungary.var
	echo 'Content-language: fi' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.fr' >> nds-hungary.var
	echo 'Content-language: fr' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.id' >> nds-hungary.var
	echo 'Content-language: id' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.it' >> nds-hungary.var
	echo 'Content-language: it' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.nl' >> nds-hungary.var
	echo 'Content-language: nl' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.po' >> nds-hungary.var
	echo 'Content-language: pl' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.sl' >> nds-hungary.var
	echo 'Content-language: sl' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.ru' >> nds-hungary.var
	echo 'Content-language: ru' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-hungary.var
	echo >> nds-hungary.var
wince-hungary.html.bg: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/wince-hungary.html.bg -oe iso-8859-5 wince.adp
wince-hungary.html.en: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-hungary.html.en -oe iso-8859-1 wince.adp
wince-hungary.html.fi: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/wince-hungary.html.fi -oe iso-8859-1 wince.adp
wince-hungary.html.fr: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/wince-hungary.html.fr -oe iso-8859-1 wince.adp
wince-hungary.html.id: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/wince-hungary.html.id -oe iso-8859-1 wince.adp
wince-hungary.html.it: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/wince-hungary.html.it -oe iso-8859-1 wince.adp
wince-hungary.html.nl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/wince-hungary.html.nl -oe iso-8859-1 wince.adp
wince-hungary.html.po: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/wince-hungary.html.po -oe iso-8859-2 wince.adp
wince-hungary.html.sl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/wince-hungary.html.sl -oe iso-8859-2 wince.adp
wince-hungary.html.ru: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/wince-hungary.html.ru -oe iso-8859-5 wince.adp
wince-hungary.html: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-hungary.html -oe ISO-8859-1 wince.adp

wince-hungary.var: gen_makefile.conf ../..//down2/arm
	echo > wince-hungary.var
	echo 'URI: wince-hungary.html.bg' >> wince-hungary.var
	echo 'Content-language: bg' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.en' >> wince-hungary.var
	echo 'Content-language: en' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.fi' >> wince-hungary.var
	echo 'Content-language: fi' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.fr' >> wince-hungary.var
	echo 'Content-language: fr' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.id' >> wince-hungary.var
	echo 'Content-language: id' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.it' >> wince-hungary.var
	echo 'Content-language: it' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.nl' >> wince-hungary.var
	echo 'Content-language: nl' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.po' >> wince-hungary.var
	echo 'Content-language: pl' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.sl' >> wince-hungary.var
	echo 'Content-language: sl' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.ru' >> wince-hungary.var
	echo 'Content-language: ru' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-hungary.var
	echo >> wince-hungary.var
gba-israel.html.bg: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/gba-israel.html.bg -oe iso-8859-5 gba.adp
gba-israel.html.en: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-israel.html.en -oe iso-8859-1 gba.adp
gba-israel.html.fi: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/gba-israel.html.fi -oe iso-8859-1 gba.adp
gba-israel.html.fr: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/gba-israel.html.fr -oe iso-8859-1 gba.adp
gba-israel.html.id: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/gba-israel.html.id -oe iso-8859-1 gba.adp
gba-israel.html.it: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/gba-israel.html.it -oe iso-8859-1 gba.adp
gba-israel.html.nl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/gba-israel.html.nl -oe iso-8859-1 gba.adp
gba-israel.html.po: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/gba-israel.html.po -oe iso-8859-2 gba.adp
gba-israel.html.sl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/gba-israel.html.sl -oe iso-8859-2 gba.adp
gba-israel.html.ru: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/gba-israel.html.ru -oe iso-8859-5 gba.adp
gba-israel.html: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-israel.html -oe ISO-8859-1 gba.adp

gba-israel.var: gen_makefile.conf ../..//down2/arm
	echo > gba-israel.var
	echo 'URI: gba-israel.html.bg' >> gba-israel.var
	echo 'Content-language: bg' >> gba-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-israel.var
	echo >> gba-israel.var
	echo 'URI: gba-israel.html.en' >> gba-israel.var
	echo 'Content-language: en' >> gba-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-israel.var
	echo >> gba-israel.var
	echo 'URI: gba-israel.html.fi' >> gba-israel.var
	echo 'Content-language: fi' >> gba-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-israel.var
	echo >> gba-israel.var
	echo 'URI: gba-israel.html.fr' >> gba-israel.var
	echo 'Content-language: fr' >> gba-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-israel.var
	echo >> gba-israel.var
	echo 'URI: gba-israel.html.id' >> gba-israel.var
	echo 'Content-language: id' >> gba-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-israel.var
	echo >> gba-israel.var
	echo 'URI: gba-israel.html.it' >> gba-israel.var
	echo 'Content-language: it' >> gba-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-israel.var
	echo >> gba-israel.var
	echo 'URI: gba-israel.html.nl' >> gba-israel.var
	echo 'Content-language: nl' >> gba-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-israel.var
	echo >> gba-israel.var
	echo 'URI: gba-israel.html.po' >> gba-israel.var
	echo 'Content-language: pl' >> gba-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-israel.var
	echo >> gba-israel.var
	echo 'URI: gba-israel.html.sl' >> gba-israel.var
	echo 'Content-language: sl' >> gba-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-israel.var
	echo >> gba-israel.var
	echo 'URI: gba-israel.html.ru' >> gba-israel.var
	echo 'Content-language: ru' >> gba-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-israel.var
	echo >> gba-israel.var
linux-israel.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/linux-israel.html.bg -oe iso-8859-5 linux.adp
linux-israel.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-israel.html.en -oe iso-8859-1 linux.adp
linux-israel.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/linux-israel.html.fi -oe iso-8859-1 linux.adp
linux-israel.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/linux-israel.html.fr -oe iso-8859-1 linux.adp
linux-israel.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/linux-israel.html.id -oe iso-8859-1 linux.adp
linux-israel.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/linux-israel.html.it -oe iso-8859-1 linux.adp
linux-israel.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/linux-israel.html.nl -oe iso-8859-1 linux.adp
linux-israel.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/linux-israel.html.po -oe iso-8859-2 linux.adp
linux-israel.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/linux-israel.html.sl -oe iso-8859-2 linux.adp
linux-israel.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/linux-israel.html.ru -oe iso-8859-5 linux.adp
linux-israel.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-israel.html -oe ISO-8859-1 linux.adp

linux-israel.var: gen_makefile.conf ../..//down2/arm
	echo > linux-israel.var
	echo 'URI: linux-israel.html.bg' >> linux-israel.var
	echo 'Content-language: bg' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.en' >> linux-israel.var
	echo 'Content-language: en' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.fi' >> linux-israel.var
	echo 'Content-language: fi' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.fr' >> linux-israel.var
	echo 'Content-language: fr' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.id' >> linux-israel.var
	echo 'Content-language: id' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.it' >> linux-israel.var
	echo 'Content-language: it' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.nl' >> linux-israel.var
	echo 'Content-language: nl' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.po' >> linux-israel.var
	echo 'Content-language: pl' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.sl' >> linux-israel.var
	echo 'Content-language: sl' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.ru' >> linux-israel.var
	echo 'Content-language: ru' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-israel.var
	echo >> linux-israel.var
nds-israel.html.bg: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/nds-israel.html.bg -oe iso-8859-5 nds.adp
nds-israel.html.en: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-israel.html.en -oe iso-8859-1 nds.adp
nds-israel.html.fi: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/nds-israel.html.fi -oe iso-8859-1 nds.adp
nds-israel.html.fr: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/nds-israel.html.fr -oe iso-8859-1 nds.adp
nds-israel.html.id: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/nds-israel.html.id -oe iso-8859-1 nds.adp
nds-israel.html.it: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/nds-israel.html.it -oe iso-8859-1 nds.adp
nds-israel.html.nl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/nds-israel.html.nl -oe iso-8859-1 nds.adp
nds-israel.html.po: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/nds-israel.html.po -oe iso-8859-2 nds.adp
nds-israel.html.sl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/nds-israel.html.sl -oe iso-8859-2 nds.adp
nds-israel.html.ru: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/nds-israel.html.ru -oe iso-8859-5 nds.adp
nds-israel.html: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-israel.html -oe ISO-8859-1 nds.adp

nds-israel.var: gen_makefile.conf ../..//down2/arm
	echo > nds-israel.var
	echo 'URI: nds-israel.html.bg' >> nds-israel.var
	echo 'Content-language: bg' >> nds-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-israel.var
	echo >> nds-israel.var
	echo 'URI: nds-israel.html.en' >> nds-israel.var
	echo 'Content-language: en' >> nds-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-israel.var
	echo >> nds-israel.var
	echo 'URI: nds-israel.html.fi' >> nds-israel.var
	echo 'Content-language: fi' >> nds-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-israel.var
	echo >> nds-israel.var
	echo 'URI: nds-israel.html.fr' >> nds-israel.var
	echo 'Content-language: fr' >> nds-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-israel.var
	echo >> nds-israel.var
	echo 'URI: nds-israel.html.id' >> nds-israel.var
	echo 'Content-language: id' >> nds-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-israel.var
	echo >> nds-israel.var
	echo 'URI: nds-israel.html.it' >> nds-israel.var
	echo 'Content-language: it' >> nds-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-israel.var
	echo >> nds-israel.var
	echo 'URI: nds-israel.html.nl' >> nds-israel.var
	echo 'Content-language: nl' >> nds-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-israel.var
	echo >> nds-israel.var
	echo 'URI: nds-israel.html.po' >> nds-israel.var
	echo 'Content-language: pl' >> nds-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-israel.var
	echo >> nds-israel.var
	echo 'URI: nds-israel.html.sl' >> nds-israel.var
	echo 'Content-language: sl' >> nds-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-israel.var
	echo >> nds-israel.var
	echo 'URI: nds-israel.html.ru' >> nds-israel.var
	echo 'Content-language: ru' >> nds-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-israel.var
	echo >> nds-israel.var
wince-israel.html.bg: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/wince-israel.html.bg -oe iso-8859-5 wince.adp
wince-israel.html.en: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-israel.html.en -oe iso-8859-1 wince.adp
wince-israel.html.fi: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/wince-israel.html.fi -oe iso-8859-1 wince.adp
wince-israel.html.fr: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/wince-israel.html.fr -oe iso-8859-1 wince.adp
wince-israel.html.id: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/wince-israel.html.id -oe iso-8859-1 wince.adp
wince-israel.html.it: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/wince-israel.html.it -oe iso-8859-1 wince.adp
wince-israel.html.nl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/wince-israel.html.nl -oe iso-8859-1 wince.adp
wince-israel.html.po: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/wince-israel.html.po -oe iso-8859-2 wince.adp
wince-israel.html.sl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/wince-israel.html.sl -oe iso-8859-2 wince.adp
wince-israel.html.ru: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/wince-israel.html.ru -oe iso-8859-5 wince.adp
wince-israel.html: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-israel.html -oe ISO-8859-1 wince.adp

wince-israel.var: gen_makefile.conf ../..//down2/arm
	echo > wince-israel.var
	echo 'URI: wince-israel.html.bg' >> wince-israel.var
	echo 'Content-language: bg' >> wince-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-israel.var
	echo >> wince-israel.var
	echo 'URI: wince-israel.html.en' >> wince-israel.var
	echo 'Content-language: en' >> wince-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-israel.var
	echo >> wince-israel.var
	echo 'URI: wince-israel.html.fi' >> wince-israel.var
	echo 'Content-language: fi' >> wince-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-israel.var
	echo >> wince-israel.var
	echo 'URI: wince-israel.html.fr' >> wince-israel.var
	echo 'Content-language: fr' >> wince-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-israel.var
	echo >> wince-israel.var
	echo 'URI: wince-israel.html.id' >> wince-israel.var
	echo 'Content-language: id' >> wince-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-israel.var
	echo >> wince-israel.var
	echo 'URI: wince-israel.html.it' >> wince-israel.var
	echo 'Content-language: it' >> wince-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-israel.var
	echo >> wince-israel.var
	echo 'URI: wince-israel.html.nl' >> wince-israel.var
	echo 'Content-language: nl' >> wince-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-israel.var
	echo >> wince-israel.var
	echo 'URI: wince-israel.html.po' >> wince-israel.var
	echo 'Content-language: pl' >> wince-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-israel.var
	echo >> wince-israel.var
	echo 'URI: wince-israel.html.sl' >> wince-israel.var
	echo 'Content-language: sl' >> wince-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-israel.var
	echo >> wince-israel.var
	echo 'URI: wince-israel.html.ru' >> wince-israel.var
	echo 'Content-language: ru' >> wince-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-israel.var
	echo >> wince-israel.var
gba-netherlands.html.bg: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/gba-netherlands.html.bg -oe iso-8859-5 gba.adp
gba-netherlands.html.en: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-netherlands.html.en -oe iso-8859-1 gba.adp
gba-netherlands.html.fi: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/gba-netherlands.html.fi -oe iso-8859-1 gba.adp
gba-netherlands.html.fr: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/gba-netherlands.html.fr -oe iso-8859-1 gba.adp
gba-netherlands.html.id: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/gba-netherlands.html.id -oe iso-8859-1 gba.adp
gba-netherlands.html.it: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/gba-netherlands.html.it -oe iso-8859-1 gba.adp
gba-netherlands.html.nl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/gba-netherlands.html.nl -oe iso-8859-1 gba.adp
gba-netherlands.html.po: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/gba-netherlands.html.po -oe iso-8859-2 gba.adp
gba-netherlands.html.sl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/gba-netherlands.html.sl -oe iso-8859-2 gba.adp
gba-netherlands.html.ru: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/gba-netherlands.html.ru -oe iso-8859-5 gba.adp
gba-netherlands.html: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-netherlands.html -oe ISO-8859-1 gba.adp

gba-netherlands.var: gen_makefile.conf ../..//down2/arm
	echo > gba-netherlands.var
	echo 'URI: gba-netherlands.html.bg' >> gba-netherlands.var
	echo 'Content-language: bg' >> gba-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-netherlands.var
	echo >> gba-netherlands.var
	echo 'URI: gba-netherlands.html.en' >> gba-netherlands.var
	echo 'Content-language: en' >> gba-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-netherlands.var
	echo >> gba-netherlands.var
	echo 'URI: gba-netherlands.html.fi' >> gba-netherlands.var
	echo 'Content-language: fi' >> gba-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-netherlands.var
	echo >> gba-netherlands.var
	echo 'URI: gba-netherlands.html.fr' >> gba-netherlands.var
	echo 'Content-language: fr' >> gba-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-netherlands.var
	echo >> gba-netherlands.var
	echo 'URI: gba-netherlands.html.id' >> gba-netherlands.var
	echo 'Content-language: id' >> gba-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-netherlands.var
	echo >> gba-netherlands.var
	echo 'URI: gba-netherlands.html.it' >> gba-netherlands.var
	echo 'Content-language: it' >> gba-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-netherlands.var
	echo >> gba-netherlands.var
	echo 'URI: gba-netherlands.html.nl' >> gba-netherlands.var
	echo 'Content-language: nl' >> gba-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-netherlands.var
	echo >> gba-netherlands.var
	echo 'URI: gba-netherlands.html.po' >> gba-netherlands.var
	echo 'Content-language: pl' >> gba-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-netherlands.var
	echo >> gba-netherlands.var
	echo 'URI: gba-netherlands.html.sl' >> gba-netherlands.var
	echo 'Content-language: sl' >> gba-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-netherlands.var
	echo >> gba-netherlands.var
	echo 'URI: gba-netherlands.html.ru' >> gba-netherlands.var
	echo 'Content-language: ru' >> gba-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-netherlands.var
	echo >> gba-netherlands.var
linux-netherlands.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/linux-netherlands.html.bg -oe iso-8859-5 linux.adp
linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-netherlands.html.en -oe iso-8859-1 linux.adp
linux-netherlands.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/linux-netherlands.html.fi -oe iso-8859-1 linux.adp
linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/linux-netherlands.html.fr -oe iso-8859-1 linux.adp
linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/linux-netherlands.html.id -oe iso-8859-1 linux.adp
linux-netherlands.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/linux-netherlands.html.it -oe iso-8859-1 linux.adp
linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/linux-netherlands.html.nl -oe iso-8859-1 linux.adp
linux-netherlands.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/linux-netherlands.html.po -oe iso-8859-2 linux.adp
linux-netherlands.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/linux-netherlands.html.sl -oe iso-8859-2 linux.adp
linux-netherlands.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/linux-netherlands.html.ru -oe iso-8859-5 linux.adp
linux-netherlands.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-netherlands.html -oe ISO-8859-1 linux.adp

linux-netherlands.var: gen_makefile.conf ../..//down2/arm
	echo > linux-netherlands.var
	echo 'URI: linux-netherlands.html.bg' >> linux-netherlands.var
	echo 'Content-language: bg' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.en' >> linux-netherlands.var
	echo 'Content-language: en' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.fi' >> linux-netherlands.var
	echo 'Content-language: fi' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.fr' >> linux-netherlands.var
	echo 'Content-language: fr' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.id' >> linux-netherlands.var
	echo 'Content-language: id' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.it' >> linux-netherlands.var
	echo 'Content-language: it' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.nl' >> linux-netherlands.var
	echo 'Content-language: nl' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.po' >> linux-netherlands.var
	echo 'Content-language: pl' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.sl' >> linux-netherlands.var
	echo 'Content-language: sl' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.ru' >> linux-netherlands.var
	echo 'Content-language: ru' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-netherlands.var
	echo >> linux-netherlands.var
nds-netherlands.html.bg: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/nds-netherlands.html.bg -oe iso-8859-5 nds.adp
nds-netherlands.html.en: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-netherlands.html.en -oe iso-8859-1 nds.adp
nds-netherlands.html.fi: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/nds-netherlands.html.fi -oe iso-8859-1 nds.adp
nds-netherlands.html.fr: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/nds-netherlands.html.fr -oe iso-8859-1 nds.adp
nds-netherlands.html.id: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/nds-netherlands.html.id -oe iso-8859-1 nds.adp
nds-netherlands.html.it: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/nds-netherlands.html.it -oe iso-8859-1 nds.adp
nds-netherlands.html.nl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/nds-netherlands.html.nl -oe iso-8859-1 nds.adp
nds-netherlands.html.po: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/nds-netherlands.html.po -oe iso-8859-2 nds.adp
nds-netherlands.html.sl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/nds-netherlands.html.sl -oe iso-8859-2 nds.adp
nds-netherlands.html.ru: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/nds-netherlands.html.ru -oe iso-8859-5 nds.adp
nds-netherlands.html: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-netherlands.html -oe ISO-8859-1 nds.adp

nds-netherlands.var: gen_makefile.conf ../..//down2/arm
	echo > nds-netherlands.var
	echo 'URI: nds-netherlands.html.bg' >> nds-netherlands.var
	echo 'Content-language: bg' >> nds-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-netherlands.var
	echo >> nds-netherlands.var
	echo 'URI: nds-netherlands.html.en' >> nds-netherlands.var
	echo 'Content-language: en' >> nds-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-netherlands.var
	echo >> nds-netherlands.var
	echo 'URI: nds-netherlands.html.fi' >> nds-netherlands.var
	echo 'Content-language: fi' >> nds-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-netherlands.var
	echo >> nds-netherlands.var
	echo 'URI: nds-netherlands.html.fr' >> nds-netherlands.var
	echo 'Content-language: fr' >> nds-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-netherlands.var
	echo >> nds-netherlands.var
	echo 'URI: nds-netherlands.html.id' >> nds-netherlands.var
	echo 'Content-language: id' >> nds-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-netherlands.var
	echo >> nds-netherlands.var
	echo 'URI: nds-netherlands.html.it' >> nds-netherlands.var
	echo 'Content-language: it' >> nds-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-netherlands.var
	echo >> nds-netherlands.var
	echo 'URI: nds-netherlands.html.nl' >> nds-netherlands.var
	echo 'Content-language: nl' >> nds-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-netherlands.var
	echo >> nds-netherlands.var
	echo 'URI: nds-netherlands.html.po' >> nds-netherlands.var
	echo 'Content-language: pl' >> nds-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-netherlands.var
	echo >> nds-netherlands.var
	echo 'URI: nds-netherlands.html.sl' >> nds-netherlands.var
	echo 'Content-language: sl' >> nds-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-netherlands.var
	echo >> nds-netherlands.var
	echo 'URI: nds-netherlands.html.ru' >> nds-netherlands.var
	echo 'Content-language: ru' >> nds-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-netherlands.var
	echo >> nds-netherlands.var
wince-netherlands.html.bg: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/wince-netherlands.html.bg -oe iso-8859-5 wince.adp
wince-netherlands.html.en: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-netherlands.html.en -oe iso-8859-1 wince.adp
wince-netherlands.html.fi: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/wince-netherlands.html.fi -oe iso-8859-1 wince.adp
wince-netherlands.html.fr: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/wince-netherlands.html.fr -oe iso-8859-1 wince.adp
wince-netherlands.html.id: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/wince-netherlands.html.id -oe iso-8859-1 wince.adp
wince-netherlands.html.it: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/wince-netherlands.html.it -oe iso-8859-1 wince.adp
wince-netherlands.html.nl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/wince-netherlands.html.nl -oe iso-8859-1 wince.adp
wince-netherlands.html.po: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/wince-netherlands.html.po -oe iso-8859-2 wince.adp
wince-netherlands.html.sl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/wince-netherlands.html.sl -oe iso-8859-2 wince.adp
wince-netherlands.html.ru: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/wince-netherlands.html.ru -oe iso-8859-5 wince.adp
wince-netherlands.html: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-netherlands.html -oe ISO-8859-1 wince.adp

wince-netherlands.var: gen_makefile.conf ../..//down2/arm
	echo > wince-netherlands.var
	echo 'URI: wince-netherlands.html.bg' >> wince-netherlands.var
	echo 'Content-language: bg' >> wince-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-netherlands.var
	echo >> wince-netherlands.var
	echo 'URI: wince-netherlands.html.en' >> wince-netherlands.var
	echo 'Content-language: en' >> wince-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-netherlands.var
	echo >> wince-netherlands.var
	echo 'URI: wince-netherlands.html.fi' >> wince-netherlands.var
	echo 'Content-language: fi' >> wince-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-netherlands.var
	echo >> wince-netherlands.var
	echo 'URI: wince-netherlands.html.fr' >> wince-netherlands.var
	echo 'Content-language: fr' >> wince-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-netherlands.var
	echo >> wince-netherlands.var
	echo 'URI: wince-netherlands.html.id' >> wince-netherlands.var
	echo 'Content-language: id' >> wince-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-netherlands.var
	echo >> wince-netherlands.var
	echo 'URI: wince-netherlands.html.it' >> wince-netherlands.var
	echo 'Content-language: it' >> wince-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-netherlands.var
	echo >> wince-netherlands.var
	echo 'URI: wince-netherlands.html.nl' >> wince-netherlands.var
	echo 'Content-language: nl' >> wince-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-netherlands.var
	echo >> wince-netherlands.var
	echo 'URI: wince-netherlands.html.po' >> wince-netherlands.var
	echo 'Content-language: pl' >> wince-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-netherlands.var
	echo >> wince-netherlands.var
	echo 'URI: wince-netherlands.html.sl' >> wince-netherlands.var
	echo 'Content-language: sl' >> wince-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-netherlands.var
	echo >> wince-netherlands.var
	echo 'URI: wince-netherlands.html.ru' >> wince-netherlands.var
	echo 'Content-language: ru' >> wince-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-netherlands.var
	echo >> wince-netherlands.var
gba-norway.html.bg: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/gba-norway.html.bg -oe iso-8859-5 gba.adp
gba-norway.html.en: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-norway.html.en -oe iso-8859-1 gba.adp
gba-norway.html.fi: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/gba-norway.html.fi -oe iso-8859-1 gba.adp
gba-norway.html.fr: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/gba-norway.html.fr -oe iso-8859-1 gba.adp
gba-norway.html.id: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/gba-norway.html.id -oe iso-8859-1 gba.adp
gba-norway.html.it: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/gba-norway.html.it -oe iso-8859-1 gba.adp
gba-norway.html.nl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/gba-norway.html.nl -oe iso-8859-1 gba.adp
gba-norway.html.po: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/gba-norway.html.po -oe iso-8859-2 gba.adp
gba-norway.html.sl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/gba-norway.html.sl -oe iso-8859-2 gba.adp
gba-norway.html.ru: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/gba-norway.html.ru -oe iso-8859-5 gba.adp
gba-norway.html: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-norway.html -oe ISO-8859-1 gba.adp

gba-norway.var: gen_makefile.conf ../..//down2/arm
	echo > gba-norway.var
	echo 'URI: gba-norway.html.bg' >> gba-norway.var
	echo 'Content-language: bg' >> gba-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-norway.var
	echo >> gba-norway.var
	echo 'URI: gba-norway.html.en' >> gba-norway.var
	echo 'Content-language: en' >> gba-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-norway.var
	echo >> gba-norway.var
	echo 'URI: gba-norway.html.fi' >> gba-norway.var
	echo 'Content-language: fi' >> gba-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-norway.var
	echo >> gba-norway.var
	echo 'URI: gba-norway.html.fr' >> gba-norway.var
	echo 'Content-language: fr' >> gba-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-norway.var
	echo >> gba-norway.var
	echo 'URI: gba-norway.html.id' >> gba-norway.var
	echo 'Content-language: id' >> gba-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-norway.var
	echo >> gba-norway.var
	echo 'URI: gba-norway.html.it' >> gba-norway.var
	echo 'Content-language: it' >> gba-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-norway.var
	echo >> gba-norway.var
	echo 'URI: gba-norway.html.nl' >> gba-norway.var
	echo 'Content-language: nl' >> gba-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-norway.var
	echo >> gba-norway.var
	echo 'URI: gba-norway.html.po' >> gba-norway.var
	echo 'Content-language: pl' >> gba-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-norway.var
	echo >> gba-norway.var
	echo 'URI: gba-norway.html.sl' >> gba-norway.var
	echo 'Content-language: sl' >> gba-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-norway.var
	echo >> gba-norway.var
	echo 'URI: gba-norway.html.ru' >> gba-norway.var
	echo 'Content-language: ru' >> gba-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-norway.var
	echo >> gba-norway.var
linux-norway.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/linux-norway.html.bg -oe iso-8859-5 linux.adp
linux-norway.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-norway.html.en -oe iso-8859-1 linux.adp
linux-norway.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/linux-norway.html.fi -oe iso-8859-1 linux.adp
linux-norway.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/linux-norway.html.fr -oe iso-8859-1 linux.adp
linux-norway.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/linux-norway.html.id -oe iso-8859-1 linux.adp
linux-norway.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/linux-norway.html.it -oe iso-8859-1 linux.adp
linux-norway.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/linux-norway.html.nl -oe iso-8859-1 linux.adp
linux-norway.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/linux-norway.html.po -oe iso-8859-2 linux.adp
linux-norway.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/linux-norway.html.sl -oe iso-8859-2 linux.adp
linux-norway.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/linux-norway.html.ru -oe iso-8859-5 linux.adp
linux-norway.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-norway.html -oe ISO-8859-1 linux.adp

linux-norway.var: gen_makefile.conf ../..//down2/arm
	echo > linux-norway.var
	echo 'URI: linux-norway.html.bg' >> linux-norway.var
	echo 'Content-language: bg' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.en' >> linux-norway.var
	echo 'Content-language: en' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.fi' >> linux-norway.var
	echo 'Content-language: fi' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.fr' >> linux-norway.var
	echo 'Content-language: fr' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.id' >> linux-norway.var
	echo 'Content-language: id' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.it' >> linux-norway.var
	echo 'Content-language: it' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.nl' >> linux-norway.var
	echo 'Content-language: nl' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.po' >> linux-norway.var
	echo 'Content-language: pl' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.sl' >> linux-norway.var
	echo 'Content-language: sl' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.ru' >> linux-norway.var
	echo 'Content-language: ru' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-norway.var
	echo >> linux-norway.var
nds-norway.html.bg: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/nds-norway.html.bg -oe iso-8859-5 nds.adp
nds-norway.html.en: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-norway.html.en -oe iso-8859-1 nds.adp
nds-norway.html.fi: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/nds-norway.html.fi -oe iso-8859-1 nds.adp
nds-norway.html.fr: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/nds-norway.html.fr -oe iso-8859-1 nds.adp
nds-norway.html.id: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/nds-norway.html.id -oe iso-8859-1 nds.adp
nds-norway.html.it: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/nds-norway.html.it -oe iso-8859-1 nds.adp
nds-norway.html.nl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/nds-norway.html.nl -oe iso-8859-1 nds.adp
nds-norway.html.po: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/nds-norway.html.po -oe iso-8859-2 nds.adp
nds-norway.html.sl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/nds-norway.html.sl -oe iso-8859-2 nds.adp
nds-norway.html.ru: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/nds-norway.html.ru -oe iso-8859-5 nds.adp
nds-norway.html: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-norway.html -oe ISO-8859-1 nds.adp

nds-norway.var: gen_makefile.conf ../..//down2/arm
	echo > nds-norway.var
	echo 'URI: nds-norway.html.bg' >> nds-norway.var
	echo 'Content-language: bg' >> nds-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-norway.var
	echo >> nds-norway.var
	echo 'URI: nds-norway.html.en' >> nds-norway.var
	echo 'Content-language: en' >> nds-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-norway.var
	echo >> nds-norway.var
	echo 'URI: nds-norway.html.fi' >> nds-norway.var
	echo 'Content-language: fi' >> nds-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-norway.var
	echo >> nds-norway.var
	echo 'URI: nds-norway.html.fr' >> nds-norway.var
	echo 'Content-language: fr' >> nds-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-norway.var
	echo >> nds-norway.var
	echo 'URI: nds-norway.html.id' >> nds-norway.var
	echo 'Content-language: id' >> nds-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-norway.var
	echo >> nds-norway.var
	echo 'URI: nds-norway.html.it' >> nds-norway.var
	echo 'Content-language: it' >> nds-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-norway.var
	echo >> nds-norway.var
	echo 'URI: nds-norway.html.nl' >> nds-norway.var
	echo 'Content-language: nl' >> nds-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-norway.var
	echo >> nds-norway.var
	echo 'URI: nds-norway.html.po' >> nds-norway.var
	echo 'Content-language: pl' >> nds-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-norway.var
	echo >> nds-norway.var
	echo 'URI: nds-norway.html.sl' >> nds-norway.var
	echo 'Content-language: sl' >> nds-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-norway.var
	echo >> nds-norway.var
	echo 'URI: nds-norway.html.ru' >> nds-norway.var
	echo 'Content-language: ru' >> nds-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-norway.var
	echo >> nds-norway.var
wince-norway.html.bg: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/wince-norway.html.bg -oe iso-8859-5 wince.adp
wince-norway.html.en: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-norway.html.en -oe iso-8859-1 wince.adp
wince-norway.html.fi: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/wince-norway.html.fi -oe iso-8859-1 wince.adp
wince-norway.html.fr: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/wince-norway.html.fr -oe iso-8859-1 wince.adp
wince-norway.html.id: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/wince-norway.html.id -oe iso-8859-1 wince.adp
wince-norway.html.it: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/wince-norway.html.it -oe iso-8859-1 wince.adp
wince-norway.html.nl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/wince-norway.html.nl -oe iso-8859-1 wince.adp
wince-norway.html.po: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/wince-norway.html.po -oe iso-8859-2 wince.adp
wince-norway.html.sl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/wince-norway.html.sl -oe iso-8859-2 wince.adp
wince-norway.html.ru: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/wince-norway.html.ru -oe iso-8859-5 wince.adp
wince-norway.html: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-norway.html -oe ISO-8859-1 wince.adp

wince-norway.var: gen_makefile.conf ../..//down2/arm
	echo > wince-norway.var
	echo 'URI: wince-norway.html.bg' >> wince-norway.var
	echo 'Content-language: bg' >> wince-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-norway.var
	echo >> wince-norway.var
	echo 'URI: wince-norway.html.en' >> wince-norway.var
	echo 'Content-language: en' >> wince-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-norway.var
	echo >> wince-norway.var
	echo 'URI: wince-norway.html.fi' >> wince-norway.var
	echo 'Content-language: fi' >> wince-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-norway.var
	echo >> wince-norway.var
	echo 'URI: wince-norway.html.fr' >> wince-norway.var
	echo 'Content-language: fr' >> wince-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-norway.var
	echo >> wince-norway.var
	echo 'URI: wince-norway.html.id' >> wince-norway.var
	echo 'Content-language: id' >> wince-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-norway.var
	echo >> wince-norway.var
	echo 'URI: wince-norway.html.it' >> wince-norway.var
	echo 'Content-language: it' >> wince-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-norway.var
	echo >> wince-norway.var
	echo 'URI: wince-norway.html.nl' >> wince-norway.var
	echo 'Content-language: nl' >> wince-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-norway.var
	echo >> wince-norway.var
	echo 'URI: wince-norway.html.po' >> wince-norway.var
	echo 'Content-language: pl' >> wince-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-norway.var
	echo >> wince-norway.var
	echo 'URI: wince-norway.html.sl' >> wince-norway.var
	echo 'Content-language: sl' >> wince-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-norway.var
	echo >> wince-norway.var
	echo 'URI: wince-norway.html.ru' >> wince-norway.var
	echo 'Content-language: ru' >> wince-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-norway.var
	echo >> wince-norway.var
gba-russia.html.bg: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/gba-russia.html.bg -oe iso-8859-5 gba.adp
gba-russia.html.en: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-russia.html.en -oe iso-8859-1 gba.adp
gba-russia.html.fi: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/gba-russia.html.fi -oe iso-8859-1 gba.adp
gba-russia.html.fr: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/gba-russia.html.fr -oe iso-8859-1 gba.adp
gba-russia.html.id: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/gba-russia.html.id -oe iso-8859-1 gba.adp
gba-russia.html.it: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/gba-russia.html.it -oe iso-8859-1 gba.adp
gba-russia.html.nl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/gba-russia.html.nl -oe iso-8859-1 gba.adp
gba-russia.html.po: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/gba-russia.html.po -oe iso-8859-2 gba.adp
gba-russia.html.sl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/gba-russia.html.sl -oe iso-8859-2 gba.adp
gba-russia.html.ru: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/gba-russia.html.ru -oe iso-8859-5 gba.adp
gba-russia.html: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-russia.html -oe ISO-8859-1 gba.adp

gba-russia.var: gen_makefile.conf ../..//down2/arm
	echo > gba-russia.var
	echo 'URI: gba-russia.html.bg' >> gba-russia.var
	echo 'Content-language: bg' >> gba-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-russia.var
	echo >> gba-russia.var
	echo 'URI: gba-russia.html.en' >> gba-russia.var
	echo 'Content-language: en' >> gba-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-russia.var
	echo >> gba-russia.var
	echo 'URI: gba-russia.html.fi' >> gba-russia.var
	echo 'Content-language: fi' >> gba-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-russia.var
	echo >> gba-russia.var
	echo 'URI: gba-russia.html.fr' >> gba-russia.var
	echo 'Content-language: fr' >> gba-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-russia.var
	echo >> gba-russia.var
	echo 'URI: gba-russia.html.id' >> gba-russia.var
	echo 'Content-language: id' >> gba-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-russia.var
	echo >> gba-russia.var
	echo 'URI: gba-russia.html.it' >> gba-russia.var
	echo 'Content-language: it' >> gba-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-russia.var
	echo >> gba-russia.var
	echo 'URI: gba-russia.html.nl' >> gba-russia.var
	echo 'Content-language: nl' >> gba-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-russia.var
	echo >> gba-russia.var
	echo 'URI: gba-russia.html.po' >> gba-russia.var
	echo 'Content-language: pl' >> gba-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-russia.var
	echo >> gba-russia.var
	echo 'URI: gba-russia.html.sl' >> gba-russia.var
	echo 'Content-language: sl' >> gba-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-russia.var
	echo >> gba-russia.var
	echo 'URI: gba-russia.html.ru' >> gba-russia.var
	echo 'Content-language: ru' >> gba-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-russia.var
	echo >> gba-russia.var
linux-russia.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/linux-russia.html.bg -oe iso-8859-5 linux.adp
linux-russia.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-russia.html.en -oe iso-8859-1 linux.adp
linux-russia.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/linux-russia.html.fi -oe iso-8859-1 linux.adp
linux-russia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/linux-russia.html.fr -oe iso-8859-1 linux.adp
linux-russia.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/linux-russia.html.id -oe iso-8859-1 linux.adp
linux-russia.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/linux-russia.html.it -oe iso-8859-1 linux.adp
linux-russia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/linux-russia.html.nl -oe iso-8859-1 linux.adp
linux-russia.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/linux-russia.html.po -oe iso-8859-2 linux.adp
linux-russia.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/linux-russia.html.sl -oe iso-8859-2 linux.adp
linux-russia.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/linux-russia.html.ru -oe iso-8859-5 linux.adp
linux-russia.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-russia.html -oe ISO-8859-1 linux.adp

linux-russia.var: gen_makefile.conf ../..//down2/arm
	echo > linux-russia.var
	echo 'URI: linux-russia.html.bg' >> linux-russia.var
	echo 'Content-language: bg' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.en' >> linux-russia.var
	echo 'Content-language: en' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.fi' >> linux-russia.var
	echo 'Content-language: fi' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.fr' >> linux-russia.var
	echo 'Content-language: fr' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.id' >> linux-russia.var
	echo 'Content-language: id' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.it' >> linux-russia.var
	echo 'Content-language: it' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.nl' >> linux-russia.var
	echo 'Content-language: nl' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.po' >> linux-russia.var
	echo 'Content-language: pl' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.sl' >> linux-russia.var
	echo 'Content-language: sl' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.ru' >> linux-russia.var
	echo 'Content-language: ru' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-russia.var
	echo >> linux-russia.var
nds-russia.html.bg: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/nds-russia.html.bg -oe iso-8859-5 nds.adp
nds-russia.html.en: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-russia.html.en -oe iso-8859-1 nds.adp
nds-russia.html.fi: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/nds-russia.html.fi -oe iso-8859-1 nds.adp
nds-russia.html.fr: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/nds-russia.html.fr -oe iso-8859-1 nds.adp
nds-russia.html.id: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/nds-russia.html.id -oe iso-8859-1 nds.adp
nds-russia.html.it: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/nds-russia.html.it -oe iso-8859-1 nds.adp
nds-russia.html.nl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/nds-russia.html.nl -oe iso-8859-1 nds.adp
nds-russia.html.po: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/nds-russia.html.po -oe iso-8859-2 nds.adp
nds-russia.html.sl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/nds-russia.html.sl -oe iso-8859-2 nds.adp
nds-russia.html.ru: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/nds-russia.html.ru -oe iso-8859-5 nds.adp
nds-russia.html: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-russia.html -oe ISO-8859-1 nds.adp

nds-russia.var: gen_makefile.conf ../..//down2/arm
	echo > nds-russia.var
	echo 'URI: nds-russia.html.bg' >> nds-russia.var
	echo 'Content-language: bg' >> nds-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-russia.var
	echo >> nds-russia.var
	echo 'URI: nds-russia.html.en' >> nds-russia.var
	echo 'Content-language: en' >> nds-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-russia.var
	echo >> nds-russia.var
	echo 'URI: nds-russia.html.fi' >> nds-russia.var
	echo 'Content-language: fi' >> nds-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-russia.var
	echo >> nds-russia.var
	echo 'URI: nds-russia.html.fr' >> nds-russia.var
	echo 'Content-language: fr' >> nds-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-russia.var
	echo >> nds-russia.var
	echo 'URI: nds-russia.html.id' >> nds-russia.var
	echo 'Content-language: id' >> nds-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-russia.var
	echo >> nds-russia.var
	echo 'URI: nds-russia.html.it' >> nds-russia.var
	echo 'Content-language: it' >> nds-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-russia.var
	echo >> nds-russia.var
	echo 'URI: nds-russia.html.nl' >> nds-russia.var
	echo 'Content-language: nl' >> nds-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-russia.var
	echo >> nds-russia.var
	echo 'URI: nds-russia.html.po' >> nds-russia.var
	echo 'Content-language: pl' >> nds-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-russia.var
	echo >> nds-russia.var
	echo 'URI: nds-russia.html.sl' >> nds-russia.var
	echo 'Content-language: sl' >> nds-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-russia.var
	echo >> nds-russia.var
	echo 'URI: nds-russia.html.ru' >> nds-russia.var
	echo 'Content-language: ru' >> nds-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-russia.var
	echo >> nds-russia.var
wince-russia.html.bg: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/wince-russia.html.bg -oe iso-8859-5 wince.adp
wince-russia.html.en: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-russia.html.en -oe iso-8859-1 wince.adp
wince-russia.html.fi: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/wince-russia.html.fi -oe iso-8859-1 wince.adp
wince-russia.html.fr: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/wince-russia.html.fr -oe iso-8859-1 wince.adp
wince-russia.html.id: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/wince-russia.html.id -oe iso-8859-1 wince.adp
wince-russia.html.it: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/wince-russia.html.it -oe iso-8859-1 wince.adp
wince-russia.html.nl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/wince-russia.html.nl -oe iso-8859-1 wince.adp
wince-russia.html.po: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/wince-russia.html.po -oe iso-8859-2 wince.adp
wince-russia.html.sl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/wince-russia.html.sl -oe iso-8859-2 wince.adp
wince-russia.html.ru: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/wince-russia.html.ru -oe iso-8859-5 wince.adp
wince-russia.html: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-russia.html -oe ISO-8859-1 wince.adp

wince-russia.var: gen_makefile.conf ../..//down2/arm
	echo > wince-russia.var
	echo 'URI: wince-russia.html.bg' >> wince-russia.var
	echo 'Content-language: bg' >> wince-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-russia.var
	echo >> wince-russia.var
	echo 'URI: wince-russia.html.en' >> wince-russia.var
	echo 'Content-language: en' >> wince-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-russia.var
	echo >> wince-russia.var
	echo 'URI: wince-russia.html.fi' >> wince-russia.var
	echo 'Content-language: fi' >> wince-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-russia.var
	echo >> wince-russia.var
	echo 'URI: wince-russia.html.fr' >> wince-russia.var
	echo 'Content-language: fr' >> wince-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-russia.var
	echo >> wince-russia.var
	echo 'URI: wince-russia.html.id' >> wince-russia.var
	echo 'Content-language: id' >> wince-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-russia.var
	echo >> wince-russia.var
	echo 'URI: wince-russia.html.it' >> wince-russia.var
	echo 'Content-language: it' >> wince-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-russia.var
	echo >> wince-russia.var
	echo 'URI: wince-russia.html.nl' >> wince-russia.var
	echo 'Content-language: nl' >> wince-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-russia.var
	echo >> wince-russia.var
	echo 'URI: wince-russia.html.po' >> wince-russia.var
	echo 'Content-language: pl' >> wince-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-russia.var
	echo >> wince-russia.var
	echo 'URI: wince-russia.html.sl' >> wince-russia.var
	echo 'Content-language: sl' >> wince-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-russia.var
	echo >> wince-russia.var
	echo 'URI: wince-russia.html.ru' >> wince-russia.var
	echo 'Content-language: ru' >> wince-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-russia.var
	echo >> wince-russia.var
gba-ftp.freepascal.org.html.bg: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/gba-ftp.freepascal.org.html.bg -oe iso-8859-5 gba.adp
gba-ftp.freepascal.org.html.en: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-ftp.freepascal.org.html.en -oe iso-8859-1 gba.adp
gba-ftp.freepascal.org.html.fi: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/gba-ftp.freepascal.org.html.fi -oe iso-8859-1 gba.adp
gba-ftp.freepascal.org.html.fr: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/gba-ftp.freepascal.org.html.fr -oe iso-8859-1 gba.adp
gba-ftp.freepascal.org.html.id: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/gba-ftp.freepascal.org.html.id -oe iso-8859-1 gba.adp
gba-ftp.freepascal.org.html.it: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/gba-ftp.freepascal.org.html.it -oe iso-8859-1 gba.adp
gba-ftp.freepascal.org.html.nl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/gba-ftp.freepascal.org.html.nl -oe iso-8859-1 gba.adp
gba-ftp.freepascal.org.html.po: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/gba-ftp.freepascal.org.html.po -oe iso-8859-2 gba.adp
gba-ftp.freepascal.org.html.sl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/gba-ftp.freepascal.org.html.sl -oe iso-8859-2 gba.adp
gba-ftp.freepascal.org.html.ru: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/gba-ftp.freepascal.org.html.ru -oe iso-8859-5 gba.adp
gba-ftp.freepascal.org.html: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/gba-ftp.freepascal.org.html -oe ISO-8859-1 gba.adp

gba-ftp.freepascal.org.var: gen_makefile.conf ../..//down2/arm
	echo > gba-ftp.freepascal.org.var
	echo 'URI: gba-ftp.freepascal.org.html.bg' >> gba-ftp.freepascal.org.var
	echo 'Content-language: bg' >> gba-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-ftp.freepascal.org.var
	echo >> gba-ftp.freepascal.org.var
	echo 'URI: gba-ftp.freepascal.org.html.en' >> gba-ftp.freepascal.org.var
	echo 'Content-language: en' >> gba-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-ftp.freepascal.org.var
	echo >> gba-ftp.freepascal.org.var
	echo 'URI: gba-ftp.freepascal.org.html.fi' >> gba-ftp.freepascal.org.var
	echo 'Content-language: fi' >> gba-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-ftp.freepascal.org.var
	echo >> gba-ftp.freepascal.org.var
	echo 'URI: gba-ftp.freepascal.org.html.fr' >> gba-ftp.freepascal.org.var
	echo 'Content-language: fr' >> gba-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-ftp.freepascal.org.var
	echo >> gba-ftp.freepascal.org.var
	echo 'URI: gba-ftp.freepascal.org.html.id' >> gba-ftp.freepascal.org.var
	echo 'Content-language: id' >> gba-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-ftp.freepascal.org.var
	echo >> gba-ftp.freepascal.org.var
	echo 'URI: gba-ftp.freepascal.org.html.it' >> gba-ftp.freepascal.org.var
	echo 'Content-language: it' >> gba-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-ftp.freepascal.org.var
	echo >> gba-ftp.freepascal.org.var
	echo 'URI: gba-ftp.freepascal.org.html.nl' >> gba-ftp.freepascal.org.var
	echo 'Content-language: nl' >> gba-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-ftp.freepascal.org.var
	echo >> gba-ftp.freepascal.org.var
	echo 'URI: gba-ftp.freepascal.org.html.po' >> gba-ftp.freepascal.org.var
	echo 'Content-language: pl' >> gba-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-ftp.freepascal.org.var
	echo >> gba-ftp.freepascal.org.var
	echo 'URI: gba-ftp.freepascal.org.html.sl' >> gba-ftp.freepascal.org.var
	echo 'Content-language: sl' >> gba-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-ftp.freepascal.org.var
	echo >> gba-ftp.freepascal.org.var
	echo 'URI: gba-ftp.freepascal.org.html.ru' >> gba-ftp.freepascal.org.var
	echo 'Content-language: ru' >> gba-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-ftp.freepascal.org.var
	echo >> gba-ftp.freepascal.org.var
linux-ftp.freepascal.org.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/linux-ftp.freepascal.org.html.bg -oe iso-8859-5 linux.adp
linux-ftp.freepascal.org.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-ftp.freepascal.org.html.en -oe iso-8859-1 linux.adp
linux-ftp.freepascal.org.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/linux-ftp.freepascal.org.html.fi -oe iso-8859-1 linux.adp
linux-ftp.freepascal.org.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/linux-ftp.freepascal.org.html.fr -oe iso-8859-1 linux.adp
linux-ftp.freepascal.org.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/linux-ftp.freepascal.org.html.id -oe iso-8859-1 linux.adp
linux-ftp.freepascal.org.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/linux-ftp.freepascal.org.html.it -oe iso-8859-1 linux.adp
linux-ftp.freepascal.org.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/linux-ftp.freepascal.org.html.nl -oe iso-8859-1 linux.adp
linux-ftp.freepascal.org.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/linux-ftp.freepascal.org.html.po -oe iso-8859-2 linux.adp
linux-ftp.freepascal.org.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/linux-ftp.freepascal.org.html.sl -oe iso-8859-2 linux.adp
linux-ftp.freepascal.org.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/linux-ftp.freepascal.org.html.ru -oe iso-8859-5 linux.adp
linux-ftp.freepascal.org.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/linux-ftp.freepascal.org.html -oe ISO-8859-1 linux.adp

linux-ftp.freepascal.org.var: gen_makefile.conf ../..//down2/arm
	echo > linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.bg' >> linux-ftp.freepascal.org.var
	echo 'Content-language: bg' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.en' >> linux-ftp.freepascal.org.var
	echo 'Content-language: en' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.fi' >> linux-ftp.freepascal.org.var
	echo 'Content-language: fi' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.fr' >> linux-ftp.freepascal.org.var
	echo 'Content-language: fr' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.id' >> linux-ftp.freepascal.org.var
	echo 'Content-language: id' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.it' >> linux-ftp.freepascal.org.var
	echo 'Content-language: it' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.nl' >> linux-ftp.freepascal.org.var
	echo 'Content-language: nl' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.po' >> linux-ftp.freepascal.org.var
	echo 'Content-language: pl' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.sl' >> linux-ftp.freepascal.org.var
	echo 'Content-language: sl' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.ru' >> linux-ftp.freepascal.org.var
	echo 'Content-language: ru' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
nds-ftp.freepascal.org.html.bg: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/nds-ftp.freepascal.org.html.bg -oe iso-8859-5 nds.adp
nds-ftp.freepascal.org.html.en: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-ftp.freepascal.org.html.en -oe iso-8859-1 nds.adp
nds-ftp.freepascal.org.html.fi: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/nds-ftp.freepascal.org.html.fi -oe iso-8859-1 nds.adp
nds-ftp.freepascal.org.html.fr: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/nds-ftp.freepascal.org.html.fr -oe iso-8859-1 nds.adp
nds-ftp.freepascal.org.html.id: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/nds-ftp.freepascal.org.html.id -oe iso-8859-1 nds.adp
nds-ftp.freepascal.org.html.it: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/nds-ftp.freepascal.org.html.it -oe iso-8859-1 nds.adp
nds-ftp.freepascal.org.html.nl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/nds-ftp.freepascal.org.html.nl -oe iso-8859-1 nds.adp
nds-ftp.freepascal.org.html.po: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/nds-ftp.freepascal.org.html.po -oe iso-8859-2 nds.adp
nds-ftp.freepascal.org.html.sl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/nds-ftp.freepascal.org.html.sl -oe iso-8859-2 nds.adp
nds-ftp.freepascal.org.html.ru: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/nds-ftp.freepascal.org.html.ru -oe iso-8859-5 nds.adp
nds-ftp.freepascal.org.html: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/nds-ftp.freepascal.org.html -oe ISO-8859-1 nds.adp

nds-ftp.freepascal.org.var: gen_makefile.conf ../..//down2/arm
	echo > nds-ftp.freepascal.org.var
	echo 'URI: nds-ftp.freepascal.org.html.bg' >> nds-ftp.freepascal.org.var
	echo 'Content-language: bg' >> nds-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-ftp.freepascal.org.var
	echo >> nds-ftp.freepascal.org.var
	echo 'URI: nds-ftp.freepascal.org.html.en' >> nds-ftp.freepascal.org.var
	echo 'Content-language: en' >> nds-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-ftp.freepascal.org.var
	echo >> nds-ftp.freepascal.org.var
	echo 'URI: nds-ftp.freepascal.org.html.fi' >> nds-ftp.freepascal.org.var
	echo 'Content-language: fi' >> nds-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-ftp.freepascal.org.var
	echo >> nds-ftp.freepascal.org.var
	echo 'URI: nds-ftp.freepascal.org.html.fr' >> nds-ftp.freepascal.org.var
	echo 'Content-language: fr' >> nds-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-ftp.freepascal.org.var
	echo >> nds-ftp.freepascal.org.var
	echo 'URI: nds-ftp.freepascal.org.html.id' >> nds-ftp.freepascal.org.var
	echo 'Content-language: id' >> nds-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-ftp.freepascal.org.var
	echo >> nds-ftp.freepascal.org.var
	echo 'URI: nds-ftp.freepascal.org.html.it' >> nds-ftp.freepascal.org.var
	echo 'Content-language: it' >> nds-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-ftp.freepascal.org.var
	echo >> nds-ftp.freepascal.org.var
	echo 'URI: nds-ftp.freepascal.org.html.nl' >> nds-ftp.freepascal.org.var
	echo 'Content-language: nl' >> nds-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-ftp.freepascal.org.var
	echo >> nds-ftp.freepascal.org.var
	echo 'URI: nds-ftp.freepascal.org.html.po' >> nds-ftp.freepascal.org.var
	echo 'Content-language: pl' >> nds-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-ftp.freepascal.org.var
	echo >> nds-ftp.freepascal.org.var
	echo 'URI: nds-ftp.freepascal.org.html.sl' >> nds-ftp.freepascal.org.var
	echo 'Content-language: sl' >> nds-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-ftp.freepascal.org.var
	echo >> nds-ftp.freepascal.org.var
	echo 'URI: nds-ftp.freepascal.org.html.ru' >> nds-ftp.freepascal.org.var
	echo 'Content-language: ru' >> nds-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-ftp.freepascal.org.var
	echo >> nds-ftp.freepascal.org.var
wince-ftp.freepascal.org.html.bg: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm/wince-ftp.freepascal.org.html.bg -oe iso-8859-5 wince.adp
wince-ftp.freepascal.org.html.en: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-ftp.freepascal.org.html.en -oe iso-8859-1 wince.adp
wince-ftp.freepascal.org.html.fi: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm/wince-ftp.freepascal.org.html.fi -oe iso-8859-1 wince.adp
wince-ftp.freepascal.org.html.fr: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm/wince-ftp.freepascal.org.html.fr -oe iso-8859-1 wince.adp
wince-ftp.freepascal.org.html.id: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm/wince-ftp.freepascal.org.html.id -oe iso-8859-1 wince.adp
wince-ftp.freepascal.org.html.it: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm/wince-ftp.freepascal.org.html.it -oe iso-8859-1 wince.adp
wince-ftp.freepascal.org.html.nl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm/wince-ftp.freepascal.org.html.nl -oe iso-8859-1 wince.adp
wince-ftp.freepascal.org.html.po: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm/wince-ftp.freepascal.org.html.po -oe iso-8859-2 wince.adp
wince-ftp.freepascal.org.html.sl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm/wince-ftp.freepascal.org.html.sl -oe iso-8859-2 wince.adp
wince-ftp.freepascal.org.html.ru: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm/wince-ftp.freepascal.org.html.ru -oe iso-8859-5 wince.adp
wince-ftp.freepascal.org.html: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm/wince-ftp.freepascal.org.html -oe ISO-8859-1 wince.adp

wince-ftp.freepascal.org.var: gen_makefile.conf ../..//down2/arm
	echo > wince-ftp.freepascal.org.var
	echo 'URI: wince-ftp.freepascal.org.html.bg' >> wince-ftp.freepascal.org.var
	echo 'Content-language: bg' >> wince-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-ftp.freepascal.org.var
	echo >> wince-ftp.freepascal.org.var
	echo 'URI: wince-ftp.freepascal.org.html.en' >> wince-ftp.freepascal.org.var
	echo 'Content-language: en' >> wince-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-ftp.freepascal.org.var
	echo >> wince-ftp.freepascal.org.var
	echo 'URI: wince-ftp.freepascal.org.html.fi' >> wince-ftp.freepascal.org.var
	echo 'Content-language: fi' >> wince-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-ftp.freepascal.org.var
	echo >> wince-ftp.freepascal.org.var
	echo 'URI: wince-ftp.freepascal.org.html.fr' >> wince-ftp.freepascal.org.var
	echo 'Content-language: fr' >> wince-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-ftp.freepascal.org.var
	echo >> wince-ftp.freepascal.org.var
	echo 'URI: wince-ftp.freepascal.org.html.id' >> wince-ftp.freepascal.org.var
	echo 'Content-language: id' >> wince-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-ftp.freepascal.org.var
	echo >> wince-ftp.freepascal.org.var
	echo 'URI: wince-ftp.freepascal.org.html.it' >> wince-ftp.freepascal.org.var
	echo 'Content-language: it' >> wince-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-ftp.freepascal.org.var
	echo >> wince-ftp.freepascal.org.var
	echo 'URI: wince-ftp.freepascal.org.html.nl' >> wince-ftp.freepascal.org.var
	echo 'Content-language: nl' >> wince-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-ftp.freepascal.org.var
	echo >> wince-ftp.freepascal.org.var
	echo 'URI: wince-ftp.freepascal.org.html.po' >> wince-ftp.freepascal.org.var
	echo 'Content-language: pl' >> wince-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-ftp.freepascal.org.var
	echo >> wince-ftp.freepascal.org.var
	echo 'URI: wince-ftp.freepascal.org.html.sl' >> wince-ftp.freepascal.org.var
	echo 'Content-language: sl' >> wince-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-ftp.freepascal.org.var
	echo >> wince-ftp.freepascal.org.var
	echo 'URI: wince-ftp.freepascal.org.html.ru' >> wince-ftp.freepascal.org.var
	echo 'Content-language: ru' >> wince-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-ftp.freepascal.org.var
	echo >> wince-ftp.freepascal.org.var

gba.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o gba.html.bg -oe iso-8859-5 ../../templatemirror.adp
gba.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o gba.html.en -oe iso-8859-1 ../../templatemirror.adp
gba.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o gba.html.fi -oe iso-8859-1 ../../templatemirror.adp
gba.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o gba.html.fr -oe iso-8859-1 ../../templatemirror.adp
gba.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o gba.html.id -oe iso-8859-1 ../../templatemirror.adp
gba.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o gba.html.it -oe iso-8859-1 ../../templatemirror.adp
gba.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o gba.html.nl -oe iso-8859-1 ../../templatemirror.adp
gba.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o gba.html.po -oe iso-8859-2 ../../templatemirror.adp
gba.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o gba.html.sl -oe iso-8859-2 ../../templatemirror.adp
gba.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o gba.html.ru -oe iso-8859-5 ../../templatemirror.adp
gba.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=gba -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o gba.html -oe ISO-8859-1 ../../templatemirror.adp
gba.var: gen_makefile.conf ../..//down2/arm
	echo > gba.var
	echo 'URI: gba.html.bg' >> gba.var
	echo 'Content-language: bg' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.en' >> gba.var
	echo 'Content-language: en' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.fi' >> gba.var
	echo 'Content-language: fi' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.fr' >> gba.var
	echo 'Content-language: fr' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.id' >> gba.var
	echo 'Content-language: id' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.it' >> gba.var
	echo 'Content-language: it' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.nl' >> gba.var
	echo 'Content-language: nl' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.po' >> gba.var
	echo 'Content-language: pl' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.sl' >> gba.var
	echo 'Content-language: sl' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.ru' >> gba.var
	echo 'Content-language: ru' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba.var
	echo >> gba.var

linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
linux.var: gen_makefile.conf ../..//down2/arm
	echo > linux.var
	echo 'URI: linux.html.bg' >> linux.var
	echo 'Content-language: bg' >> linux.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.en' >> linux.var
	echo 'Content-language: en' >> linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.fi' >> linux.var
	echo 'Content-language: fi' >> linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.fr' >> linux.var
	echo 'Content-language: fr' >> linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.id' >> linux.var
	echo 'Content-language: id' >> linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.it' >> linux.var
	echo 'Content-language: it' >> linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.nl' >> linux.var
	echo 'Content-language: nl' >> linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.po' >> linux.var
	echo 'Content-language: pl' >> linux.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.sl' >> linux.var
	echo 'Content-language: sl' >> linux.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.ru' >> linux.var
	echo 'Content-language: ru' >> linux.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux.var
	echo >> linux.var

nds.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o nds.html.bg -oe iso-8859-5 ../../templatemirror.adp
nds.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o nds.html.en -oe iso-8859-1 ../../templatemirror.adp
nds.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o nds.html.fi -oe iso-8859-1 ../../templatemirror.adp
nds.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o nds.html.fr -oe iso-8859-1 ../../templatemirror.adp
nds.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o nds.html.id -oe iso-8859-1 ../../templatemirror.adp
nds.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o nds.html.it -oe iso-8859-1 ../../templatemirror.adp
nds.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o nds.html.nl -oe iso-8859-1 ../../templatemirror.adp
nds.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o nds.html.po -oe iso-8859-2 ../../templatemirror.adp
nds.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o nds.html.sl -oe iso-8859-2 ../../templatemirror.adp
nds.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o nds.html.ru -oe iso-8859-5 ../../templatemirror.adp
nds.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=nds -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o nds.html -oe ISO-8859-1 ../../templatemirror.adp
nds.var: gen_makefile.conf ../..//down2/arm
	echo > nds.var
	echo 'URI: nds.html.bg' >> nds.var
	echo 'Content-language: bg' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.en' >> nds.var
	echo 'Content-language: en' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.fi' >> nds.var
	echo 'Content-language: fi' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.fr' >> nds.var
	echo 'Content-language: fr' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.id' >> nds.var
	echo 'Content-language: id' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.it' >> nds.var
	echo 'Content-language: it' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.nl' >> nds.var
	echo 'Content-language: nl' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.po' >> nds.var
	echo 'Content-language: pl' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.sl' >> nds.var
	echo 'Content-language: sl' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.ru' >> nds.var
	echo 'Content-language: ru' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds.var
	echo >> nds.var

wince.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o wince.html.bg -oe iso-8859-5 ../../templatemirror.adp
wince.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o wince.html.en -oe iso-8859-1 ../../templatemirror.adp
wince.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o wince.html.fi -oe iso-8859-1 ../../templatemirror.adp
wince.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o wince.html.fr -oe iso-8859-1 ../../templatemirror.adp
wince.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o wince.html.id -oe iso-8859-1 ../../templatemirror.adp
wince.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o wince.html.it -oe iso-8859-1 ../../templatemirror.adp
wince.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o wince.html.nl -oe iso-8859-1 ../../templatemirror.adp
wince.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o wince.html.po -oe iso-8859-2 ../../templatemirror.adp
wince.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o wince.html.sl -oe iso-8859-2 ../../templatemirror.adp
wince.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o wince.html.ru -oe iso-8859-5 ../../templatemirror.adp
wince.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=wince -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o wince.html -oe ISO-8859-1 ../../templatemirror.adp
wince.var: gen_makefile.conf ../..//down2/arm
	echo > wince.var
	echo 'URI: wince.html.bg' >> wince.var
	echo 'Content-language: bg' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.en' >> wince.var
	echo 'Content-language: en' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.fi' >> wince.var
	echo 'Content-language: fi' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.fr' >> wince.var
	echo 'Content-language: fr' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.id' >> wince.var
	echo 'Content-language: id' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.it' >> wince.var
	echo 'Content-language: it' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.nl' >> wince.var
	echo 'Content-language: nl' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.po' >> wince.var
	echo 'Content-language: pl' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.sl' >> wince.var
	echo 'Content-language: sl' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.ru' >> wince.var
	echo 'Content-language: ru' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince.var
	echo >> wince.var

mirrors.dat:
	echo -e 'name\tnamel\turl' > mirrors.dat
	echo -e 'Australia\taustralia\thttp://fpc.planetmirror.com/pub/fpc/' >> mirrors.dat
	echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Israel\tisrael\thttp://mirror.mirimar.net/freepascal/' >> mirrors.dat
	echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat
	echo -e 'Norway\tnorway\tftp://ftp.no.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Russia\trussia\tftp://ftp.chg.ru/pub/lang/pascal/fpc/' >> mirrors.dat
	echo -e 'ftp.freepascal.org\tftp.freepascal.org\tftp://ftp.freepascal.org/pub/fpc/' >> mirrors.dat

all_pages: mirrors.dat gba-australia.html.bg gba-australia.html.en gba-australia.html.fi gba-australia.html.fr gba-australia.html.id gba-australia.html.it gba-australia.html.nl gba-australia.html.po gba-australia.html.sl gba-australia.html.ru gba-australia.var linux-australia.html.bg linux-australia.html.en linux-australia.html.fi linux-australia.html.fr linux-australia.html.id linux-australia.html.it linux-australia.html.nl linux-australia.html.po linux-australia.html.sl linux-australia.html.ru linux-australia.var nds-australia.html.bg nds-australia.html.en nds-australia.html.fi nds-australia.html.fr nds-australia.html.id nds-australia.html.it nds-australia.html.nl nds-australia.html.po nds-australia.html.sl nds-australia.html.ru nds-australia.var wince-australia.html.bg wince-australia.html.en wince-australia.html.fi wince-australia.html.fr wince-australia.html.id wince-australia.html.it wince-australia.html.nl wince-australia.html.po wince-australia.html.sl wince-australia.html.ru wince-australia.var gba-austria.html.bg gba-austria.html.en gba-austria.html.fi gba-austria.html.fr gba-austria.html.id gba-austria.html.it gba-austria.html.nl gba-austria.html.po gba-austria.html.sl gba-austria.html.ru gba-austria.var linux-austria.html.bg linux-austria.html.en linux-austria.html.fi linux-austria.html.fr linux-austria.html.id linux-austria.html.it linux-austria.html.nl linux-austria.html.po linux-austria.html.sl linux-austria.html.ru linux-austria.var nds-austria.html.bg nds-austria.html.en nds-austria.html.fi nds-austria.html.fr nds-austria.html.id nds-austria.html.it nds-austria.html.nl nds-austria.html.po nds-austria.html.sl nds-austria.html.ru nds-austria.var wince-austria.html.bg wince-austria.html.en wince-austria.html.fi wince-austria.html.fr wince-austria.html.id wince-austria.html.it wince-austria.html.nl wince-austria.html.po wince-austria.html.sl wince-austria.html.ru wince-austria.var gba-hungary.html.bg gba-hungary.html.en gba-hungary.html.fi gba-hungary.html.fr gba-hungary.html.id gba-hungary.html.it gba-hungary.html.nl gba-hungary.html.po gba-hungary.html.sl gba-hungary.html.ru gba-hungary.var linux-hungary.html.bg linux-hungary.html.en linux-hungary.html.fi linux-hungary.html.fr linux-hungary.html.id linux-hungary.html.it linux-hungary.html.nl linux-hungary.html.po linux-hungary.html.sl linux-hungary.html.ru linux-hungary.var nds-hungary.html.bg nds-hungary.html.en nds-hungary.html.fi nds-hungary.html.fr nds-hungary.html.id nds-hungary.html.it nds-hungary.html.nl nds-hungary.html.po nds-hungary.html.sl nds-hungary.html.ru nds-hungary.var wince-hungary.html.bg wince-hungary.html.en wince-hungary.html.fi wince-hungary.html.fr wince-hungary.html.id wince-hungary.html.it wince-hungary.html.nl wince-hungary.html.po wince-hungary.html.sl wince-hungary.html.ru wince-hungary.var gba-israel.html.bg gba-israel.html.en gba-israel.html.fi gba-israel.html.fr gba-israel.html.id gba-israel.html.it gba-israel.html.nl gba-israel.html.po gba-israel.html.sl gba-israel.html.ru gba-israel.var linux-israel.html.bg linux-israel.html.en linux-israel.html.fi linux-israel.html.fr linux-israel.html.id linux-israel.html.it linux-israel.html.nl linux-israel.html.po linux-israel.html.sl linux-israel.html.ru linux-israel.var nds-israel.html.bg nds-israel.html.en nds-israel.html.fi nds-israel.html.fr nds-israel.html.id nds-israel.html.it nds-israel.html.nl nds-israel.html.po nds-israel.html.sl nds-israel.html.ru nds-israel.var wince-israel.html.bg wince-israel.html.en wince-israel.html.fi wince-israel.html.fr wince-israel.html.id wince-israel.html.it wince-israel.html.nl wince-israel.html.po wince-israel.html.sl wince-israel.html.ru wince-israel.var gba-netherlands.html.bg gba-netherlands.html.en gba-netherlands.html.fi gba-netherlands.html.fr gba-netherlands.html.id gba-netherlands.html.it gba-netherlands.html.nl gba-netherlands.html.po gba-netherlands.html.sl gba-netherlands.html.ru gba-netherlands.var linux-netherlands.html.bg linux-netherlands.html.en linux-netherlands.html.fi linux-netherlands.html.fr linux-netherlands.html.id linux-netherlands.html.it linux-netherlands.html.nl linux-netherlands.html.po linux-netherlands.html.sl linux-netherlands.html.ru linux-netherlands.var nds-netherlands.html.bg nds-netherlands.html.en nds-netherlands.html.fi nds-netherlands.html.fr nds-netherlands.html.id nds-netherlands.html.it nds-netherlands.html.nl nds-netherlands.html.po nds-netherlands.html.sl nds-netherlands.html.ru nds-netherlands.var wince-netherlands.html.bg wince-netherlands.html.en wince-netherlands.html.fi wince-netherlands.html.fr wince-netherlands.html.id wince-netherlands.html.it wince-netherlands.html.nl wince-netherlands.html.po wince-netherlands.html.sl wince-netherlands.html.ru wince-netherlands.var gba-norway.html.bg gba-norway.html.en gba-norway.html.fi gba-norway.html.fr gba-norway.html.id gba-norway.html.it gba-norway.html.nl gba-norway.html.po gba-norway.html.sl gba-norway.html.ru gba-norway.var linux-norway.html.bg linux-norway.html.en linux-norway.html.fi linux-norway.html.fr linux-norway.html.id linux-norway.html.it linux-norway.html.nl linux-norway.html.po linux-norway.html.sl linux-norway.html.ru linux-norway.var nds-norway.html.bg nds-norway.html.en nds-norway.html.fi nds-norway.html.fr nds-norway.html.id nds-norway.html.it nds-norway.html.nl nds-norway.html.po nds-norway.html.sl nds-norway.html.ru nds-norway.var wince-norway.html.bg wince-norway.html.en wince-norway.html.fi wince-norway.html.fr wince-norway.html.id wince-norway.html.it wince-norway.html.nl wince-norway.html.po wince-norway.html.sl wince-norway.html.ru wince-norway.var gba-russia.html.bg gba-russia.html.en gba-russia.html.fi gba-russia.html.fr gba-russia.html.id gba-russia.html.it gba-russia.html.nl gba-russia.html.po gba-russia.html.sl gba-russia.html.ru gba-russia.var linux-russia.html.bg linux-russia.html.en linux-russia.html.fi linux-russia.html.fr linux-russia.html.id linux-russia.html.it linux-russia.html.nl linux-russia.html.po linux-russia.html.sl linux-russia.html.ru linux-russia.var nds-russia.html.bg nds-russia.html.en nds-russia.html.fi nds-russia.html.fr nds-russia.html.id nds-russia.html.it nds-russia.html.nl nds-russia.html.po nds-russia.html.sl nds-russia.html.ru nds-russia.var wince-russia.html.bg wince-russia.html.en wince-russia.html.fi wince-russia.html.fr wince-russia.html.id wince-russia.html.it wince-russia.html.nl wince-russia.html.po wince-russia.html.sl wince-russia.html.ru wince-russia.var gba-ftp.freepascal.org.html.bg gba-ftp.freepascal.org.html.en gba-ftp.freepascal.org.html.fi gba-ftp.freepascal.org.html.fr gba-ftp.freepascal.org.html.id gba-ftp.freepascal.org.html.it gba-ftp.freepascal.org.html.nl gba-ftp.freepascal.org.html.po gba-ftp.freepascal.org.html.sl gba-ftp.freepascal.org.html.ru gba-ftp.freepascal.org.var linux-ftp.freepascal.org.html.bg linux-ftp.freepascal.org.html.en linux-ftp.freepascal.org.html.fi linux-ftp.freepascal.org.html.fr linux-ftp.freepascal.org.html.id linux-ftp.freepascal.org.html.it linux-ftp.freepascal.org.html.nl linux-ftp.freepascal.org.html.po linux-ftp.freepascal.org.html.sl linux-ftp.freepascal.org.html.ru linux-ftp.freepascal.org.var nds-ftp.freepascal.org.html.bg nds-ftp.freepascal.org.html.en nds-ftp.freepascal.org.html.fi nds-ftp.freepascal.org.html.fr nds-ftp.freepascal.org.html.id nds-ftp.freepascal.org.html.it nds-ftp.freepascal.org.html.nl nds-ftp.freepascal.org.html.po nds-ftp.freepascal.org.html.sl nds-ftp.freepascal.org.html.ru nds-ftp.freepascal.org.var wince-ftp.freepascal.org.html.bg wince-ftp.freepascal.org.html.en wince-ftp.freepascal.org.html.fi wince-ftp.freepascal.org.html.fr wince-ftp.freepascal.org.html.id wince-ftp.freepascal.org.html.it wince-ftp.freepascal.org.html.nl wince-ftp.freepascal.org.html.po wince-ftp.freepascal.org.html.sl wince-ftp.freepascal.org.html.ru wince-ftp.freepascal.org.var gba.html.bg gba.html.en gba.html.fi gba.html.fr gba.html.id gba.html.it gba.html.nl gba.html.po gba.html.sl gba.html.ru gba.var linux.html.bg linux.html.en linux.html.fi linux.html.fr linux.html.id linux.html.it linux.html.nl linux.html.po linux.html.sl linux.html.ru linux.var nds.html.bg nds.html.en nds.html.fi nds.html.fr nds.html.id nds.html.it nds.html.nl nds.html.po nds.html.sl nds.html.ru nds.var wince.html.bg wince.html.en wince.html.fi wince.html.fr wince.html.id wince.html.it wince.html.nl wince.html.po wince.html.sl wince.html.ru wince.var
all_en_pages: mirrors.dat gba-australia.html linux-australia.html nds-australia.html wince-australia.html gba-austria.html linux-austria.html nds-austria.html wince-austria.html gba-hungary.html linux-hungary.html nds-hungary.html wince-hungary.html gba-israel.html linux-israel.html nds-israel.html wince-israel.html gba-netherlands.html linux-netherlands.html nds-netherlands.html wince-netherlands.html gba-norway.html linux-norway.html nds-norway.html wince-norway.html gba-russia.html linux-russia.html nds-russia.html wince-russia.html gba-ftp.freepascal.org.html linux-ftp.freepascal.org.html nds-ftp.freepascal.org.html wince-ftp.freepascal.org.html gba.html linux.html nds.html wince.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
../..//down2/arm:
	mkdir -p ../..//down2/arm

