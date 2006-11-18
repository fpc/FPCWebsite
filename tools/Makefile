
URL_EXTENSION=.var

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

.PHONY: all all_pages clean
default: all
all: all_pages
delp.html.de: delp.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l de_DE -m ../default-master.adp -o delp.html.de delp.adp
delp.html.en: delp.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l en_US -m ../default-master.adp -o delp.html.en delp.adp
delp.html.fr: delp.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l fr_FR -m ../default-master.adp -o delp.html.fr delp.adp
delp.html.id: delp.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l id_ID -m ../default-master.adp -o delp.html.id delp.adp
delp.html.nl: delp.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l nl_NL -m ../default-master.adp -o delp.html.nl delp.adp
delp.html.pl: delp.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l pl_PL -m ../default-master.adp -o delp.html.pl delp.adp

delp.var: gen_makefile.conf
	echo > delp.var
	echo 'URI: delp.html.de' >> delp.var
	echo 'Content-language: de' >> delp.var
	echo 'Content-type: text/html' >> delp.var
	echo >> delp.var
	echo 'URI: delp.html.en' >> delp.var
	echo 'Content-language: en' >> delp.var
	echo 'Content-type: text/html' >> delp.var
	echo >> delp.var
	echo 'URI: delp.html.fr' >> delp.var
	echo 'Content-language: fr' >> delp.var
	echo 'Content-type: text/html' >> delp.var
	echo >> delp.var
	echo 'URI: delp.html.id' >> delp.var
	echo 'Content-language: id' >> delp.var
	echo 'Content-type: text/html' >> delp.var
	echo >> delp.var
	echo 'URI: delp.html.nl' >> delp.var
	echo 'Content-language: nl' >> delp.var
	echo 'Content-type: text/html' >> delp.var
	echo >> delp.var
	echo 'URI: delp.html.pl' >> delp.var
	echo 'Content-language: pl' >> delp.var
	echo 'Content-type: text/html' >> delp.var
	echo >> delp.var
fpcmake.html.de: fpcmake.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l de_DE -m ../default-master.adp -o fpcmake.html.de fpcmake.adp
fpcmake.html.en: fpcmake.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l en_US -m ../default-master.adp -o fpcmake.html.en fpcmake.adp
fpcmake.html.fr: fpcmake.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l fr_FR -m ../default-master.adp -o fpcmake.html.fr fpcmake.adp
fpcmake.html.id: fpcmake.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l id_ID -m ../default-master.adp -o fpcmake.html.id fpcmake.adp
fpcmake.html.nl: fpcmake.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l nl_NL -m ../default-master.adp -o fpcmake.html.nl fpcmake.adp
fpcmake.html.pl: fpcmake.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l pl_PL -m ../default-master.adp -o fpcmake.html.pl fpcmake.adp

fpcmake.var: gen_makefile.conf
	echo > fpcmake.var
	echo 'URI: fpcmake.html.de' >> fpcmake.var
	echo 'Content-language: de' >> fpcmake.var
	echo 'Content-type: text/html' >> fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.en' >> fpcmake.var
	echo 'Content-language: en' >> fpcmake.var
	echo 'Content-type: text/html' >> fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.fr' >> fpcmake.var
	echo 'Content-language: fr' >> fpcmake.var
	echo 'Content-type: text/html' >> fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.id' >> fpcmake.var
	echo 'Content-language: id' >> fpcmake.var
	echo 'Content-type: text/html' >> fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.nl' >> fpcmake.var
	echo 'Content-language: nl' >> fpcmake.var
	echo 'Content-type: text/html' >> fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.pl' >> fpcmake.var
	echo 'Content-language: pl' >> fpcmake.var
	echo 'Content-type: text/html' >> fpcmake.var
	echo >> fpcmake.var
h2pas.html.de: h2pas.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l de_DE -m ../default-master.adp -o h2pas.html.de h2pas.adp
h2pas.html.en: h2pas.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l en_US -m ../default-master.adp -o h2pas.html.en h2pas.adp
h2pas.html.fr: h2pas.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l fr_FR -m ../default-master.adp -o h2pas.html.fr h2pas.adp
h2pas.html.id: h2pas.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l id_ID -m ../default-master.adp -o h2pas.html.id h2pas.adp
h2pas.html.nl: h2pas.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l nl_NL -m ../default-master.adp -o h2pas.html.nl h2pas.adp
h2pas.html.pl: h2pas.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l pl_PL -m ../default-master.adp -o h2pas.html.pl h2pas.adp

h2pas.var: gen_makefile.conf
	echo > h2pas.var
	echo 'URI: h2pas.html.de' >> h2pas.var
	echo 'Content-language: de' >> h2pas.var
	echo 'Content-type: text/html' >> h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.en' >> h2pas.var
	echo 'Content-language: en' >> h2pas.var
	echo 'Content-type: text/html' >> h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.fr' >> h2pas.var
	echo 'Content-language: fr' >> h2pas.var
	echo 'Content-type: text/html' >> h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.id' >> h2pas.var
	echo 'Content-language: id' >> h2pas.var
	echo 'Content-type: text/html' >> h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.nl' >> h2pas.var
	echo 'Content-language: nl' >> h2pas.var
	echo 'Content-type: text/html' >> h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.pl' >> h2pas.var
	echo 'Content-language: pl' >> h2pas.var
	echo 'Content-type: text/html' >> h2pas.var
	echo >> h2pas.var
ppdep.html.de: ppdep.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l de_DE -m ../default-master.adp -o ppdep.html.de ppdep.adp
ppdep.html.en: ppdep.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l en_US -m ../default-master.adp -o ppdep.html.en ppdep.adp
ppdep.html.fr: ppdep.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l fr_FR -m ../default-master.adp -o ppdep.html.fr ppdep.adp
ppdep.html.id: ppdep.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l id_ID -m ../default-master.adp -o ppdep.html.id ppdep.adp
ppdep.html.nl: ppdep.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l nl_NL -m ../default-master.adp -o ppdep.html.nl ppdep.adp
ppdep.html.pl: ppdep.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l pl_PL -m ../default-master.adp -o ppdep.html.pl ppdep.adp

ppdep.var: gen_makefile.conf
	echo > ppdep.var
	echo 'URI: ppdep.html.de' >> ppdep.var
	echo 'Content-language: de' >> ppdep.var
	echo 'Content-type: text/html' >> ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.en' >> ppdep.var
	echo 'Content-language: en' >> ppdep.var
	echo 'Content-type: text/html' >> ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.fr' >> ppdep.var
	echo 'Content-language: fr' >> ppdep.var
	echo 'Content-type: text/html' >> ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.id' >> ppdep.var
	echo 'Content-language: id' >> ppdep.var
	echo 'Content-type: text/html' >> ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.nl' >> ppdep.var
	echo 'Content-language: nl' >> ppdep.var
	echo 'Content-type: text/html' >> ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.pl' >> ppdep.var
	echo 'Content-language: pl' >> ppdep.var
	echo 'Content-type: text/html' >> ppdep.var
	echo >> ppdep.var
ppudump.html.de: ppudump.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l de_DE -m ../default-master.adp -o ppudump.html.de ppudump.adp
ppudump.html.en: ppudump.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l en_US -m ../default-master.adp -o ppudump.html.en ppudump.adp
ppudump.html.fr: ppudump.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l fr_FR -m ../default-master.adp -o ppudump.html.fr ppudump.adp
ppudump.html.id: ppudump.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l id_ID -m ../default-master.adp -o ppudump.html.id ppudump.adp
ppudump.html.nl: ppudump.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l nl_NL -m ../default-master.adp -o ppudump.html.nl ppudump.adp
ppudump.html.pl: ppudump.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l pl_PL -m ../default-master.adp -o ppudump.html.pl ppudump.adp

ppudump.var: gen_makefile.conf
	echo > ppudump.var
	echo 'URI: ppudump.html.de' >> ppudump.var
	echo 'Content-language: de' >> ppudump.var
	echo 'Content-type: text/html' >> ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.en' >> ppudump.var
	echo 'Content-language: en' >> ppudump.var
	echo 'Content-type: text/html' >> ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.fr' >> ppudump.var
	echo 'Content-language: fr' >> ppudump.var
	echo 'Content-type: text/html' >> ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.id' >> ppudump.var
	echo 'Content-language: id' >> ppudump.var
	echo 'Content-type: text/html' >> ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.nl' >> ppudump.var
	echo 'Content-language: nl' >> ppudump.var
	echo 'Content-type: text/html' >> ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.pl' >> ppudump.var
	echo 'Content-language: pl' >> ppudump.var
	echo 'Content-type: text/html' >> ppudump.var
	echo >> ppudump.var
ppufiles.html.de: ppufiles.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l de_DE -m ../default-master.adp -o ppufiles.html.de ppufiles.adp
ppufiles.html.en: ppufiles.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l en_US -m ../default-master.adp -o ppufiles.html.en ppufiles.adp
ppufiles.html.fr: ppufiles.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l fr_FR -m ../default-master.adp -o ppufiles.html.fr ppufiles.adp
ppufiles.html.id: ppufiles.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l id_ID -m ../default-master.adp -o ppufiles.html.id ppufiles.adp
ppufiles.html.nl: ppufiles.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l nl_NL -m ../default-master.adp -o ppufiles.html.nl ppufiles.adp
ppufiles.html.pl: ppufiles.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l pl_PL -m ../default-master.adp -o ppufiles.html.pl ppufiles.adp

ppufiles.var: gen_makefile.conf
	echo > ppufiles.var
	echo 'URI: ppufiles.html.de' >> ppufiles.var
	echo 'Content-language: de' >> ppufiles.var
	echo 'Content-type: text/html' >> ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.en' >> ppufiles.var
	echo 'Content-language: en' >> ppufiles.var
	echo 'Content-type: text/html' >> ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.fr' >> ppufiles.var
	echo 'Content-language: fr' >> ppufiles.var
	echo 'Content-type: text/html' >> ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.id' >> ppufiles.var
	echo 'Content-language: id' >> ppufiles.var
	echo 'Content-type: text/html' >> ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.nl' >> ppufiles.var
	echo 'Content-language: nl' >> ppufiles.var
	echo 'Content-type: text/html' >> ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.pl' >> ppufiles.var
	echo 'Content-language: pl' >> ppufiles.var
	echo 'Content-type: text/html' >> ppufiles.var
	echo >> ppufiles.var
ppumove.html.de: ppumove.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l de_DE -m ../default-master.adp -o ppumove.html.de ppumove.adp
ppumove.html.en: ppumove.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l en_US -m ../default-master.adp -o ppumove.html.en ppumove.adp
ppumove.html.fr: ppumove.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l fr_FR -m ../default-master.adp -o ppumove.html.fr ppumove.adp
ppumove.html.id: ppumove.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l id_ID -m ../default-master.adp -o ppumove.html.id ppumove.adp
ppumove.html.nl: ppumove.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l nl_NL -m ../default-master.adp -o ppumove.html.nl ppumove.adp
ppumove.html.pl: ppumove.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l pl_PL -m ../default-master.adp -o ppumove.html.pl ppumove.adp

ppumove.var: gen_makefile.conf
	echo > ppumove.var
	echo 'URI: ppumove.html.de' >> ppumove.var
	echo 'Content-language: de' >> ppumove.var
	echo 'Content-type: text/html' >> ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.en' >> ppumove.var
	echo 'Content-language: en' >> ppumove.var
	echo 'Content-type: text/html' >> ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.fr' >> ppumove.var
	echo 'Content-language: fr' >> ppumove.var
	echo 'Content-type: text/html' >> ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.id' >> ppumove.var
	echo 'Content-language: id' >> ppumove.var
	echo 'Content-type: text/html' >> ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.nl' >> ppumove.var
	echo 'Content-language: nl' >> ppumove.var
	echo 'Content-type: text/html' >> ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.pl' >> ppumove.var
	echo 'Content-language: pl' >> ppumove.var
	echo 'Content-type: text/html' >> ppumove.var
	echo >> ppumove.var
ptop.html.de: ptop.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l de_DE -m ../default-master.adp -o ptop.html.de ptop.adp
ptop.html.en: ptop.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l en_US -m ../default-master.adp -o ptop.html.en ptop.adp
ptop.html.fr: ptop.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l fr_FR -m ../default-master.adp -o ptop.html.fr ptop.adp
ptop.html.id: ptop.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l id_ID -m ../default-master.adp -o ptop.html.id ptop.adp
ptop.html.nl: ptop.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l nl_NL -m ../default-master.adp -o ptop.html.nl ptop.adp
ptop.html.pl: ptop.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l pl_PL -m ../default-master.adp -o ptop.html.pl ptop.adp

ptop.var: gen_makefile.conf
	echo > ptop.var
	echo 'URI: ptop.html.de' >> ptop.var
	echo 'Content-language: de' >> ptop.var
	echo 'Content-type: text/html' >> ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.en' >> ptop.var
	echo 'Content-language: en' >> ptop.var
	echo 'Content-type: text/html' >> ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.fr' >> ptop.var
	echo 'Content-language: fr' >> ptop.var
	echo 'Content-type: text/html' >> ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.id' >> ptop.var
	echo 'Content-language: id' >> ptop.var
	echo 'Content-type: text/html' >> ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.nl' >> ptop.var
	echo 'Content-language: nl' >> ptop.var
	echo 'Content-type: text/html' >> ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.pl' >> ptop.var
	echo 'Content-language: pl' >> ptop.var
	echo 'Content-type: text/html' >> ptop.var
	echo >> ptop.var
rstconv.html.de: rstconv.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l de_DE -m ../default-master.adp -o rstconv.html.de rstconv.adp
rstconv.html.en: rstconv.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l en_US -m ../default-master.adp -o rstconv.html.en rstconv.adp
rstconv.html.fr: rstconv.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l fr_FR -m ../default-master.adp -o rstconv.html.fr rstconv.adp
rstconv.html.id: rstconv.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l id_ID -m ../default-master.adp -o rstconv.html.id rstconv.adp
rstconv.html.nl: rstconv.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l nl_NL -m ../default-master.adp -o rstconv.html.nl rstconv.adp
rstconv.html.pl: rstconv.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l pl_PL -m ../default-master.adp -o rstconv.html.pl rstconv.adp

rstconv.var: gen_makefile.conf
	echo > rstconv.var
	echo 'URI: rstconv.html.de' >> rstconv.var
	echo 'Content-language: de' >> rstconv.var
	echo 'Content-type: text/html' >> rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.en' >> rstconv.var
	echo 'Content-language: en' >> rstconv.var
	echo 'Content-type: text/html' >> rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.fr' >> rstconv.var
	echo 'Content-language: fr' >> rstconv.var
	echo 'Content-type: text/html' >> rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.id' >> rstconv.var
	echo 'Content-language: id' >> rstconv.var
	echo 'Content-type: text/html' >> rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.nl' >> rstconv.var
	echo 'Content-language: nl' >> rstconv.var
	echo 'Content-type: text/html' >> rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.pl' >> rstconv.var
	echo 'Content-language: pl' >> rstconv.var
	echo 'Content-type: text/html' >> rstconv.var
	echo >> rstconv.var
tools.html.de: tools.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l de_DE -m ../default-master.adp -o tools.html.de tools.adp
tools.html.en: tools.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l en_US -m ../default-master.adp -o tools.html.en tools.adp
tools.html.fr: tools.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l fr_FR -m ../default-master.adp -o tools.html.fr tools.adp
tools.html.id: tools.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l id_ID -m ../default-master.adp -o tools.html.id tools.adp
tools.html.nl: tools.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l nl_NL -m ../default-master.adp -o tools.html.nl tools.adp
tools.html.pl: tools.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l pl_PL -m ../default-master.adp -o tools.html.pl tools.adp

tools.var: gen_makefile.conf
	echo > tools.var
	echo 'URI: tools.html.de' >> tools.var
	echo 'Content-language: de' >> tools.var
	echo 'Content-type: text/html' >> tools.var
	echo >> tools.var
	echo 'URI: tools.html.en' >> tools.var
	echo 'Content-language: en' >> tools.var
	echo 'Content-type: text/html' >> tools.var
	echo >> tools.var
	echo 'URI: tools.html.fr' >> tools.var
	echo 'Content-language: fr' >> tools.var
	echo 'Content-type: text/html' >> tools.var
	echo >> tools.var
	echo 'URI: tools.html.id' >> tools.var
	echo 'Content-language: id' >> tools.var
	echo 'Content-type: text/html' >> tools.var
	echo >> tools.var
	echo 'URI: tools.html.nl' >> tools.var
	echo 'Content-language: nl' >> tools.var
	echo 'Content-type: text/html' >> tools.var
	echo >> tools.var
	echo 'URI: tools.html.pl' >> tools.var
	echo 'Content-language: pl' >> tools.var
	echo 'Content-type: text/html' >> tools.var
	echo >> tools.var
tply.html.de: tply.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l de_DE -m ../default-master.adp -o tply.html.de tply.adp
tply.html.en: tply.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l en_US -m ../default-master.adp -o tply.html.en tply.adp
tply.html.fr: tply.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l fr_FR -m ../default-master.adp -o tply.html.fr tply.adp
tply.html.id: tply.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l id_ID -m ../default-master.adp -o tply.html.id tply.adp
tply.html.nl: tply.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l nl_NL -m ../default-master.adp -o tply.html.nl tply.adp
tply.html.pl: tply.adp ../default-master.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.adp -l pl_PL -m ../default-master.adp -o tply.html.pl tply.adp

tply.var: gen_makefile.conf
	echo > tply.var
	echo 'URI: tply.html.de' >> tply.var
	echo 'Content-language: de' >> tply.var
	echo 'Content-type: text/html' >> tply.var
	echo >> tply.var
	echo 'URI: tply.html.en' >> tply.var
	echo 'Content-language: en' >> tply.var
	echo 'Content-type: text/html' >> tply.var
	echo >> tply.var
	echo 'URI: tply.html.fr' >> tply.var
	echo 'Content-language: fr' >> tply.var
	echo 'Content-type: text/html' >> tply.var
	echo >> tply.var
	echo 'URI: tply.html.id' >> tply.var
	echo 'Content-language: id' >> tply.var
	echo 'Content-type: text/html' >> tply.var
	echo >> tply.var
	echo 'URI: tply.html.nl' >> tply.var
	echo 'Content-language: nl' >> tply.var
	echo 'Content-type: text/html' >> tply.var
	echo >> tply.var
	echo 'URI: tply.html.pl' >> tply.var
	echo 'Content-language: pl' >> tply.var
	echo 'Content-type: text/html' >> tply.var
	echo >> tply.var

mirrors.dat:
	echo -e 'name\tnamel\turl' > mirrors.dat
	echo -e 'Australia\taustralia\thttp://fpc.planetmirror.com/pub/fpc/' >> mirrors.dat
	echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	echo -e 'Germany\tgermany\tftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/' >> mirrors.dat
	echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Israel\tisrael\thttp://mirror.mirimar.net/freepascal/' >> mirrors.dat
	echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat
	echo -e 'Norway\tnorway\tftp://ftp.no.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Russia\trussia\tftp://ftp.chg.ru/pub/lang/pascal/fpc/' >> mirrors.dat
	echo -e 'ftp.freepascal.org\tftp.freepascal.org\tftp://ftp.freepascal.org/pub/fpc/' >> mirrors.dat

all_pages: delp.html.de delp.html.en delp.html.fr delp.html.id delp.html.nl delp.html.pl delp.var fpcmake.html.de fpcmake.html.en fpcmake.html.fr fpcmake.html.id fpcmake.html.nl fpcmake.html.pl fpcmake.var h2pas.html.de h2pas.html.en h2pas.html.fr h2pas.html.id h2pas.html.nl h2pas.html.pl h2pas.var ppdep.html.de ppdep.html.en ppdep.html.fr ppdep.html.id ppdep.html.nl ppdep.html.pl ppdep.var ppudump.html.de ppudump.html.en ppudump.html.fr ppudump.html.id ppudump.html.nl ppudump.html.pl ppudump.var ppufiles.html.de ppufiles.html.en ppufiles.html.fr ppufiles.html.id ppufiles.html.nl ppufiles.html.pl ppufiles.var ppumove.html.de ppumove.html.en ppumove.html.fr ppumove.html.id ppumove.html.nl ppumove.html.pl ppumove.var ptop.html.de ptop.html.en ptop.html.fr ptop.html.id ptop.html.nl ptop.html.pl ptop.var rstconv.html.de rstconv.html.en rstconv.html.fr rstconv.html.id rstconv.html.nl rstconv.html.pl rstconv.var tools.html.de tools.html.en tools.html.fr tools.html.id tools.html.nl tools.html.pl tools.var tply.html.de tply.html.en tply.html.fr tply.html.id tply.html.nl tply.html.pl tply.var mirrors.dat


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

