
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
ADP2HTML=../adp2html$(EXE)

ifndef PP
 PP=fpc
endif

.PHONY: all all_pages clean output_directory
default: all
all: all_pages output_directory
english: all_en_pages output_directory
delp.html.bg: delp.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools/delp.html.bg -oe iso-8859-5 delp.adp
delp.html.en: delp.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/delp.html.en -oe iso-8859-1 delp.adp
delp.html.fi: delp.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools/delp.html.fi -oe iso-8859-1 delp.adp
delp.html.fr: delp.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools/delp.html.fr -oe iso-8859-1 delp.adp
delp.html.id: delp.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools/delp.html.id -oe iso-8859-1 delp.adp
delp.html.it: delp.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools/delp.html.it -oe iso-8859-1 delp.adp
delp.html.nl: delp.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools/delp.html.nl -oe iso-8859-1 delp.adp
delp.html.po: delp.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools/delp.html.po -oe iso-8859-2 delp.adp
delp.html.sl: delp.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools/delp.html.sl -oe iso-8859-2 delp.adp
delp.html.ru: delp.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools/delp.html.ru -oe iso-8859-5 delp.adp
delp.html: delp.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/delp.html -oe ISO-8859-1 delp.adp

delp.var: gen_makefile.conf
	echo > delp.var
	echo 'URI: delp.html.bg' >> delp.var
	echo 'Content-language: bg' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/delp.var
	echo >> delp.var
	echo 'URI: delp.html.en' >> delp.var
	echo 'Content-language: en' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/delp.var
	echo >> delp.var
	echo 'URI: delp.html.fi' >> delp.var
	echo 'Content-language: fi' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/delp.var
	echo >> delp.var
	echo 'URI: delp.html.fr' >> delp.var
	echo 'Content-language: fr' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/delp.var
	echo >> delp.var
	echo 'URI: delp.html.id' >> delp.var
	echo 'Content-language: id' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/delp.var
	echo >> delp.var
	echo 'URI: delp.html.it' >> delp.var
	echo 'Content-language: it' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/delp.var
	echo >> delp.var
	echo 'URI: delp.html.nl' >> delp.var
	echo 'Content-language: nl' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/delp.var
	echo >> delp.var
	echo 'URI: delp.html.po' >> delp.var
	echo 'Content-language: pl' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/delp.var
	echo >> delp.var
	echo 'URI: delp.html.sl' >> delp.var
	echo 'Content-language: sl' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/delp.var
	echo >> delp.var
	echo 'URI: delp.html.ru' >> delp.var
	echo 'Content-language: ru' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/delp.var
	echo >> delp.var
fpcmake.html.bg: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools/fpcmake.html.bg -oe iso-8859-5 fpcmake.adp
fpcmake.html.en: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/fpcmake.html.en -oe iso-8859-1 fpcmake.adp
fpcmake.html.fi: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools/fpcmake.html.fi -oe iso-8859-1 fpcmake.adp
fpcmake.html.fr: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools/fpcmake.html.fr -oe iso-8859-1 fpcmake.adp
fpcmake.html.id: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools/fpcmake.html.id -oe iso-8859-1 fpcmake.adp
fpcmake.html.it: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools/fpcmake.html.it -oe iso-8859-1 fpcmake.adp
fpcmake.html.nl: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools/fpcmake.html.nl -oe iso-8859-1 fpcmake.adp
fpcmake.html.po: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools/fpcmake.html.po -oe iso-8859-2 fpcmake.adp
fpcmake.html.sl: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools/fpcmake.html.sl -oe iso-8859-2 fpcmake.adp
fpcmake.html.ru: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools/fpcmake.html.ru -oe iso-8859-5 fpcmake.adp
fpcmake.html: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/fpcmake.html -oe ISO-8859-1 fpcmake.adp

fpcmake.var: gen_makefile.conf
	echo > fpcmake.var
	echo 'URI: fpcmake.html.bg' >> fpcmake.var
	echo 'Content-language: bg' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.en' >> fpcmake.var
	echo 'Content-language: en' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.fi' >> fpcmake.var
	echo 'Content-language: fi' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.fr' >> fpcmake.var
	echo 'Content-language: fr' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.id' >> fpcmake.var
	echo 'Content-language: id' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.it' >> fpcmake.var
	echo 'Content-language: it' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.nl' >> fpcmake.var
	echo 'Content-language: nl' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.po' >> fpcmake.var
	echo 'Content-language: pl' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.sl' >> fpcmake.var
	echo 'Content-language: sl' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.ru' >> fpcmake.var
	echo 'Content-language: ru' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/fpcmake.var
	echo >> fpcmake.var
h2pas.html.bg: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools/h2pas.html.bg -oe iso-8859-5 h2pas.adp
h2pas.html.en: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/h2pas.html.en -oe iso-8859-1 h2pas.adp
h2pas.html.fi: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools/h2pas.html.fi -oe iso-8859-1 h2pas.adp
h2pas.html.fr: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools/h2pas.html.fr -oe iso-8859-1 h2pas.adp
h2pas.html.id: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools/h2pas.html.id -oe iso-8859-1 h2pas.adp
h2pas.html.it: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools/h2pas.html.it -oe iso-8859-1 h2pas.adp
h2pas.html.nl: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools/h2pas.html.nl -oe iso-8859-1 h2pas.adp
h2pas.html.po: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools/h2pas.html.po -oe iso-8859-2 h2pas.adp
h2pas.html.sl: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools/h2pas.html.sl -oe iso-8859-2 h2pas.adp
h2pas.html.ru: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools/h2pas.html.ru -oe iso-8859-5 h2pas.adp
h2pas.html: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/h2pas.html -oe ISO-8859-1 h2pas.adp

h2pas.var: gen_makefile.conf
	echo > h2pas.var
	echo 'URI: h2pas.html.bg' >> h2pas.var
	echo 'Content-language: bg' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.en' >> h2pas.var
	echo 'Content-language: en' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.fi' >> h2pas.var
	echo 'Content-language: fi' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.fr' >> h2pas.var
	echo 'Content-language: fr' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.id' >> h2pas.var
	echo 'Content-language: id' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.it' >> h2pas.var
	echo 'Content-language: it' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.nl' >> h2pas.var
	echo 'Content-language: nl' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.po' >> h2pas.var
	echo 'Content-language: pl' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.sl' >> h2pas.var
	echo 'Content-language: sl' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.ru' >> h2pas.var
	echo 'Content-language: ru' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/h2pas.var
	echo >> h2pas.var
ppdep.html.bg: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools/ppdep.html.bg -oe iso-8859-5 ppdep.adp
ppdep.html.en: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/ppdep.html.en -oe iso-8859-1 ppdep.adp
ppdep.html.fi: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools/ppdep.html.fi -oe iso-8859-1 ppdep.adp
ppdep.html.fr: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools/ppdep.html.fr -oe iso-8859-1 ppdep.adp
ppdep.html.id: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools/ppdep.html.id -oe iso-8859-1 ppdep.adp
ppdep.html.it: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools/ppdep.html.it -oe iso-8859-1 ppdep.adp
ppdep.html.nl: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools/ppdep.html.nl -oe iso-8859-1 ppdep.adp
ppdep.html.po: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools/ppdep.html.po -oe iso-8859-2 ppdep.adp
ppdep.html.sl: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools/ppdep.html.sl -oe iso-8859-2 ppdep.adp
ppdep.html.ru: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools/ppdep.html.ru -oe iso-8859-5 ppdep.adp
ppdep.html: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/ppdep.html -oe ISO-8859-1 ppdep.adp

ppdep.var: gen_makefile.conf
	echo > ppdep.var
	echo 'URI: ppdep.html.bg' >> ppdep.var
	echo 'Content-language: bg' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.en' >> ppdep.var
	echo 'Content-language: en' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.fi' >> ppdep.var
	echo 'Content-language: fi' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.fr' >> ppdep.var
	echo 'Content-language: fr' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.id' >> ppdep.var
	echo 'Content-language: id' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.it' >> ppdep.var
	echo 'Content-language: it' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.nl' >> ppdep.var
	echo 'Content-language: nl' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.po' >> ppdep.var
	echo 'Content-language: pl' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.sl' >> ppdep.var
	echo 'Content-language: sl' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.ru' >> ppdep.var
	echo 'Content-language: ru' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/ppdep.var
	echo >> ppdep.var
ppudump.html.bg: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools/ppudump.html.bg -oe iso-8859-5 ppudump.adp
ppudump.html.en: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/ppudump.html.en -oe iso-8859-1 ppudump.adp
ppudump.html.fi: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools/ppudump.html.fi -oe iso-8859-1 ppudump.adp
ppudump.html.fr: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools/ppudump.html.fr -oe iso-8859-1 ppudump.adp
ppudump.html.id: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools/ppudump.html.id -oe iso-8859-1 ppudump.adp
ppudump.html.it: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools/ppudump.html.it -oe iso-8859-1 ppudump.adp
ppudump.html.nl: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools/ppudump.html.nl -oe iso-8859-1 ppudump.adp
ppudump.html.po: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools/ppudump.html.po -oe iso-8859-2 ppudump.adp
ppudump.html.sl: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools/ppudump.html.sl -oe iso-8859-2 ppudump.adp
ppudump.html.ru: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools/ppudump.html.ru -oe iso-8859-5 ppudump.adp
ppudump.html: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/ppudump.html -oe ISO-8859-1 ppudump.adp

ppudump.var: gen_makefile.conf
	echo > ppudump.var
	echo 'URI: ppudump.html.bg' >> ppudump.var
	echo 'Content-language: bg' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.en' >> ppudump.var
	echo 'Content-language: en' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.fi' >> ppudump.var
	echo 'Content-language: fi' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.fr' >> ppudump.var
	echo 'Content-language: fr' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.id' >> ppudump.var
	echo 'Content-language: id' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.it' >> ppudump.var
	echo 'Content-language: it' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.nl' >> ppudump.var
	echo 'Content-language: nl' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.po' >> ppudump.var
	echo 'Content-language: pl' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.sl' >> ppudump.var
	echo 'Content-language: sl' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.ru' >> ppudump.var
	echo 'Content-language: ru' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/ppudump.var
	echo >> ppudump.var
ppufiles.html.bg: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools/ppufiles.html.bg -oe iso-8859-5 ppufiles.adp
ppufiles.html.en: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/ppufiles.html.en -oe iso-8859-1 ppufiles.adp
ppufiles.html.fi: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools/ppufiles.html.fi -oe iso-8859-1 ppufiles.adp
ppufiles.html.fr: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools/ppufiles.html.fr -oe iso-8859-1 ppufiles.adp
ppufiles.html.id: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools/ppufiles.html.id -oe iso-8859-1 ppufiles.adp
ppufiles.html.it: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools/ppufiles.html.it -oe iso-8859-1 ppufiles.adp
ppufiles.html.nl: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools/ppufiles.html.nl -oe iso-8859-1 ppufiles.adp
ppufiles.html.po: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools/ppufiles.html.po -oe iso-8859-2 ppufiles.adp
ppufiles.html.sl: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools/ppufiles.html.sl -oe iso-8859-2 ppufiles.adp
ppufiles.html.ru: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools/ppufiles.html.ru -oe iso-8859-5 ppufiles.adp
ppufiles.html: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/ppufiles.html -oe ISO-8859-1 ppufiles.adp

ppufiles.var: gen_makefile.conf
	echo > ppufiles.var
	echo 'URI: ppufiles.html.bg' >> ppufiles.var
	echo 'Content-language: bg' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.en' >> ppufiles.var
	echo 'Content-language: en' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.fi' >> ppufiles.var
	echo 'Content-language: fi' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.fr' >> ppufiles.var
	echo 'Content-language: fr' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.id' >> ppufiles.var
	echo 'Content-language: id' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.it' >> ppufiles.var
	echo 'Content-language: it' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.nl' >> ppufiles.var
	echo 'Content-language: nl' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.po' >> ppufiles.var
	echo 'Content-language: pl' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.sl' >> ppufiles.var
	echo 'Content-language: sl' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.ru' >> ppufiles.var
	echo 'Content-language: ru' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/ppufiles.var
	echo >> ppufiles.var
ppumove.html.bg: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools/ppumove.html.bg -oe iso-8859-5 ppumove.adp
ppumove.html.en: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/ppumove.html.en -oe iso-8859-1 ppumove.adp
ppumove.html.fi: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools/ppumove.html.fi -oe iso-8859-1 ppumove.adp
ppumove.html.fr: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools/ppumove.html.fr -oe iso-8859-1 ppumove.adp
ppumove.html.id: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools/ppumove.html.id -oe iso-8859-1 ppumove.adp
ppumove.html.it: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools/ppumove.html.it -oe iso-8859-1 ppumove.adp
ppumove.html.nl: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools/ppumove.html.nl -oe iso-8859-1 ppumove.adp
ppumove.html.po: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools/ppumove.html.po -oe iso-8859-2 ppumove.adp
ppumove.html.sl: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools/ppumove.html.sl -oe iso-8859-2 ppumove.adp
ppumove.html.ru: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools/ppumove.html.ru -oe iso-8859-5 ppumove.adp
ppumove.html: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/ppumove.html -oe ISO-8859-1 ppumove.adp

ppumove.var: gen_makefile.conf
	echo > ppumove.var
	echo 'URI: ppumove.html.bg' >> ppumove.var
	echo 'Content-language: bg' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.en' >> ppumove.var
	echo 'Content-language: en' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.fi' >> ppumove.var
	echo 'Content-language: fi' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.fr' >> ppumove.var
	echo 'Content-language: fr' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.id' >> ppumove.var
	echo 'Content-language: id' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.it' >> ppumove.var
	echo 'Content-language: it' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.nl' >> ppumove.var
	echo 'Content-language: nl' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.po' >> ppumove.var
	echo 'Content-language: pl' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.sl' >> ppumove.var
	echo 'Content-language: sl' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.ru' >> ppumove.var
	echo 'Content-language: ru' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/ppumove.var
	echo >> ppumove.var
ptop.html.bg: ptop.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools/ptop.html.bg -oe iso-8859-5 ptop.adp
ptop.html.en: ptop.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/ptop.html.en -oe iso-8859-1 ptop.adp
ptop.html.fi: ptop.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools/ptop.html.fi -oe iso-8859-1 ptop.adp
ptop.html.fr: ptop.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools/ptop.html.fr -oe iso-8859-1 ptop.adp
ptop.html.id: ptop.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools/ptop.html.id -oe iso-8859-1 ptop.adp
ptop.html.it: ptop.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools/ptop.html.it -oe iso-8859-1 ptop.adp
ptop.html.nl: ptop.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools/ptop.html.nl -oe iso-8859-1 ptop.adp
ptop.html.po: ptop.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools/ptop.html.po -oe iso-8859-2 ptop.adp
ptop.html.sl: ptop.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools/ptop.html.sl -oe iso-8859-2 ptop.adp
ptop.html.ru: ptop.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools/ptop.html.ru -oe iso-8859-5 ptop.adp
ptop.html: ptop.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/ptop.html -oe ISO-8859-1 ptop.adp

ptop.var: gen_makefile.conf
	echo > ptop.var
	echo 'URI: ptop.html.bg' >> ptop.var
	echo 'Content-language: bg' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.en' >> ptop.var
	echo 'Content-language: en' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.fi' >> ptop.var
	echo 'Content-language: fi' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.fr' >> ptop.var
	echo 'Content-language: fr' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.id' >> ptop.var
	echo 'Content-language: id' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.it' >> ptop.var
	echo 'Content-language: it' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.nl' >> ptop.var
	echo 'Content-language: nl' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.po' >> ptop.var
	echo 'Content-language: pl' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.sl' >> ptop.var
	echo 'Content-language: sl' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.ru' >> ptop.var
	echo 'Content-language: ru' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/ptop.var
	echo >> ptop.var
rstconv.html.bg: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools/rstconv.html.bg -oe iso-8859-5 rstconv.adp
rstconv.html.en: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/rstconv.html.en -oe iso-8859-1 rstconv.adp
rstconv.html.fi: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools/rstconv.html.fi -oe iso-8859-1 rstconv.adp
rstconv.html.fr: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools/rstconv.html.fr -oe iso-8859-1 rstconv.adp
rstconv.html.id: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools/rstconv.html.id -oe iso-8859-1 rstconv.adp
rstconv.html.it: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools/rstconv.html.it -oe iso-8859-1 rstconv.adp
rstconv.html.nl: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools/rstconv.html.nl -oe iso-8859-1 rstconv.adp
rstconv.html.po: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools/rstconv.html.po -oe iso-8859-2 rstconv.adp
rstconv.html.sl: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools/rstconv.html.sl -oe iso-8859-2 rstconv.adp
rstconv.html.ru: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools/rstconv.html.ru -oe iso-8859-5 rstconv.adp
rstconv.html: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/rstconv.html -oe ISO-8859-1 rstconv.adp

rstconv.var: gen_makefile.conf
	echo > rstconv.var
	echo 'URI: rstconv.html.bg' >> rstconv.var
	echo 'Content-language: bg' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.en' >> rstconv.var
	echo 'Content-language: en' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.fi' >> rstconv.var
	echo 'Content-language: fi' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.fr' >> rstconv.var
	echo 'Content-language: fr' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.id' >> rstconv.var
	echo 'Content-language: id' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.it' >> rstconv.var
	echo 'Content-language: it' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.nl' >> rstconv.var
	echo 'Content-language: nl' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.po' >> rstconv.var
	echo 'Content-language: pl' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.sl' >> rstconv.var
	echo 'Content-language: sl' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.ru' >> rstconv.var
	echo 'Content-language: ru' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/rstconv.var
	echo >> rstconv.var
tools.html.bg: tools.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools/tools.html.bg -oe iso-8859-5 tools.adp
tools.html.en: tools.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/tools.html.en -oe iso-8859-1 tools.adp
tools.html.fi: tools.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools/tools.html.fi -oe iso-8859-1 tools.adp
tools.html.fr: tools.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools/tools.html.fr -oe iso-8859-1 tools.adp
tools.html.id: tools.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools/tools.html.id -oe iso-8859-1 tools.adp
tools.html.it: tools.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools/tools.html.it -oe iso-8859-1 tools.adp
tools.html.nl: tools.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools/tools.html.nl -oe iso-8859-1 tools.adp
tools.html.po: tools.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools/tools.html.po -oe iso-8859-2 tools.adp
tools.html.sl: tools.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools/tools.html.sl -oe iso-8859-2 tools.adp
tools.html.ru: tools.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools/tools.html.ru -oe iso-8859-5 tools.adp
tools.html: tools.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/tools.html -oe ISO-8859-1 tools.adp

tools.var: gen_makefile.conf
	echo > tools.var
	echo 'URI: tools.html.bg' >> tools.var
	echo 'Content-language: bg' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/tools.var
	echo >> tools.var
	echo 'URI: tools.html.en' >> tools.var
	echo 'Content-language: en' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/tools.var
	echo >> tools.var
	echo 'URI: tools.html.fi' >> tools.var
	echo 'Content-language: fi' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/tools.var
	echo >> tools.var
	echo 'URI: tools.html.fr' >> tools.var
	echo 'Content-language: fr' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/tools.var
	echo >> tools.var
	echo 'URI: tools.html.id' >> tools.var
	echo 'Content-language: id' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/tools.var
	echo >> tools.var
	echo 'URI: tools.html.it' >> tools.var
	echo 'Content-language: it' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/tools.var
	echo >> tools.var
	echo 'URI: tools.html.nl' >> tools.var
	echo 'Content-language: nl' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/tools.var
	echo >> tools.var
	echo 'URI: tools.html.po' >> tools.var
	echo 'Content-language: pl' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/tools.var
	echo >> tools.var
	echo 'URI: tools.html.sl' >> tools.var
	echo 'Content-language: sl' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/tools.var
	echo >> tools.var
	echo 'URI: tools.html.ru' >> tools.var
	echo 'Content-language: ru' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/tools.var
	echo >> tools.var
tply.html.bg: tply.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools/tply.html.bg -oe iso-8859-5 tply.adp
tply.html.en: tply.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/tply.html.en -oe iso-8859-1 tply.adp
tply.html.fi: tply.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools/tply.html.fi -oe iso-8859-1 tply.adp
tply.html.fr: tply.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools/tply.html.fr -oe iso-8859-1 tply.adp
tply.html.id: tply.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools/tply.html.id -oe iso-8859-1 tply.adp
tply.html.it: tply.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools/tply.html.it -oe iso-8859-1 tply.adp
tply.html.nl: tply.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools/tply.html.nl -oe iso-8859-1 tply.adp
tply.html.po: tply.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools/tply.html.po -oe iso-8859-2 tply.adp
tply.html.sl: tply.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools/tply.html.sl -oe iso-8859-2 tply.adp
tply.html.ru: tply.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools/tply.html.ru -oe iso-8859-5 tply.adp
tply.html: tply.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools/tply.html -oe ISO-8859-1 tply.adp

tply.var: gen_makefile.conf
	echo > tply.var
	echo 'URI: tply.html.bg' >> tply.var
	echo 'Content-language: bg' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/tply.var
	echo >> tply.var
	echo 'URI: tply.html.en' >> tply.var
	echo 'Content-language: en' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/tply.var
	echo >> tply.var
	echo 'URI: tply.html.fi' >> tply.var
	echo 'Content-language: fi' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/tply.var
	echo >> tply.var
	echo 'URI: tply.html.fr' >> tply.var
	echo 'Content-language: fr' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/tply.var
	echo >> tply.var
	echo 'URI: tply.html.id' >> tply.var
	echo 'Content-language: id' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/tply.var
	echo >> tply.var
	echo 'URI: tply.html.it' >> tply.var
	echo 'Content-language: it' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/tply.var
	echo >> tply.var
	echo 'URI: tply.html.nl' >> tply.var
	echo 'Content-language: nl' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools/tply.var
	echo >> tply.var
	echo 'URI: tply.html.po' >> tply.var
	echo 'Content-language: pl' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/tply.var
	echo >> tply.var
	echo 'URI: tply.html.sl' >> tply.var
	echo 'Content-language: sl' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools/tply.var
	echo >> tply.var
	echo 'URI: tply.html.ru' >> tply.var
	echo 'Content-language: ru' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools/tply.var
	echo >> tply.var

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

all_pages: mirrors.dat delp.html.bg delp.html.en delp.html.fi delp.html.fr delp.html.id delp.html.it delp.html.nl delp.html.po delp.html.sl delp.html.ru delp.var fpcmake.html.bg fpcmake.html.en fpcmake.html.fi fpcmake.html.fr fpcmake.html.id fpcmake.html.it fpcmake.html.nl fpcmake.html.po fpcmake.html.sl fpcmake.html.ru fpcmake.var h2pas.html.bg h2pas.html.en h2pas.html.fi h2pas.html.fr h2pas.html.id h2pas.html.it h2pas.html.nl h2pas.html.po h2pas.html.sl h2pas.html.ru h2pas.var ppdep.html.bg ppdep.html.en ppdep.html.fi ppdep.html.fr ppdep.html.id ppdep.html.it ppdep.html.nl ppdep.html.po ppdep.html.sl ppdep.html.ru ppdep.var ppudump.html.bg ppudump.html.en ppudump.html.fi ppudump.html.fr ppudump.html.id ppudump.html.it ppudump.html.nl ppudump.html.po ppudump.html.sl ppudump.html.ru ppudump.var ppufiles.html.bg ppufiles.html.en ppufiles.html.fi ppufiles.html.fr ppufiles.html.id ppufiles.html.it ppufiles.html.nl ppufiles.html.po ppufiles.html.sl ppufiles.html.ru ppufiles.var ppumove.html.bg ppumove.html.en ppumove.html.fi ppumove.html.fr ppumove.html.id ppumove.html.it ppumove.html.nl ppumove.html.po ppumove.html.sl ppumove.html.ru ppumove.var ptop.html.bg ptop.html.en ptop.html.fi ptop.html.fr ptop.html.id ptop.html.it ptop.html.nl ptop.html.po ptop.html.sl ptop.html.ru ptop.var rstconv.html.bg rstconv.html.en rstconv.html.fi rstconv.html.fr rstconv.html.id rstconv.html.it rstconv.html.nl rstconv.html.po rstconv.html.sl rstconv.html.ru rstconv.var tools.html.bg tools.html.en tools.html.fi tools.html.fr tools.html.id tools.html.it tools.html.nl tools.html.po tools.html.sl tools.html.ru tools.var tply.html.bg tply.html.en tply.html.fi tply.html.fr tply.html.id tply.html.it tply.html.nl tply.html.po tply.html.sl tply.html.ru tply.var
all_en_pages: mirrors.dat delp.html fpcmake.html h2pas.html ppdep.html ppudump.html ppufiles.html ppumove.html ptop.html rstconv.html tools.html tply.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
..//tools:
	mkdir -p ..//tools

