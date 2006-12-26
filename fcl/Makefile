
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
fcl.html.bg: fcl.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o fcl.html.bg -oe iso-8859-5 fcl.adp
fcl.html.en: fcl.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o fcl.html.en -oe iso-8859-1 fcl.adp
fcl.html.fr: fcl.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o fcl.html.fr -oe iso-8859-1 fcl.adp
fcl.html.id: fcl.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o fcl.html.id -oe iso-8859-1 fcl.adp
fcl.html.it: fcl.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o fcl.html.it -oe iso-8859-1 fcl.adp
fcl.html.nl: fcl.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o fcl.html.nl -oe iso-8859-1 fcl.adp
fcl.html.po: fcl.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o fcl.html.po -oe iso-8859-2 fcl.adp
fcl.html.sl: fcl.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o fcl.html.sl -oe iso-8859-2 fcl.adp
fcl.html.ru: fcl.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o fcl.html.ru -oe iso-8859-5 fcl.adp

fcl.var: gen_makefile.conf
	echo > fcl.var
	echo 'URI: fcl.html.bg' >> fcl.var
	echo 'Content-language: bg' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.en' >> fcl.var
	echo 'Content-language: en' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.fr' >> fcl.var
	echo 'Content-language: fr' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.id' >> fcl.var
	echo 'Content-language: id' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.it' >> fcl.var
	echo 'Content-language: it' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.nl' >> fcl.var
	echo 'Content-language: nl' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.po' >> fcl.var
	echo 'Content-language: pl' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.sl' >> fcl.var
	echo 'Content-language: sl' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.ru' >> fcl.var
	echo 'Content-language: ru' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> fcl.var
	echo >> fcl.var

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

all_pages: fcl.html.bg fcl.html.en fcl.html.fr fcl.html.id fcl.html.it fcl.html.nl fcl.html.po fcl.html.sl fcl.html.ru fcl.var mirrors.dat


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

