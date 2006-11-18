
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
ADP2HTML=../../adp2html$(EXE)

ifndef PP
 PP=fpc
endif

.PHONY: all all_pages clean
default: all
all: all_pages
sources-australia.html.de: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o sources-australia.html.de sources.adp
sources-australia.html.en: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o sources-australia.html.en sources.adp
sources-australia.html.fr: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o sources-australia.html.fr sources.adp
sources-australia.html.id: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o sources-australia.html.id sources.adp
sources-australia.html.nl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o sources-australia.html.nl sources.adp
sources-australia.html.pl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o sources-australia.html.pl sources.adp

sources-australia.var: gen_makefile.conf
	echo > sources-australia.var
	echo 'URI: sources-australia.html.de' >> sources-australia.var
	echo 'Content-language: de' >> sources-australia.var
	echo 'Content-type: text/html' >> sources-australia.var
	echo >> sources-australia.var
	echo 'URI: sources-australia.html.en' >> sources-australia.var
	echo 'Content-language: en' >> sources-australia.var
	echo 'Content-type: text/html' >> sources-australia.var
	echo >> sources-australia.var
	echo 'URI: sources-australia.html.fr' >> sources-australia.var
	echo 'Content-language: fr' >> sources-australia.var
	echo 'Content-type: text/html' >> sources-australia.var
	echo >> sources-australia.var
	echo 'URI: sources-australia.html.id' >> sources-australia.var
	echo 'Content-language: id' >> sources-australia.var
	echo 'Content-type: text/html' >> sources-australia.var
	echo >> sources-australia.var
	echo 'URI: sources-australia.html.nl' >> sources-australia.var
	echo 'Content-language: nl' >> sources-australia.var
	echo 'Content-type: text/html' >> sources-australia.var
	echo >> sources-australia.var
	echo 'URI: sources-australia.html.pl' >> sources-australia.var
	echo 'Content-language: pl' >> sources-australia.var
	echo 'Content-type: text/html' >> sources-australia.var
	echo >> sources-australia.var
sources-austria.html.de: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o sources-austria.html.de sources.adp
sources-austria.html.en: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o sources-austria.html.en sources.adp
sources-austria.html.fr: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o sources-austria.html.fr sources.adp
sources-austria.html.id: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o sources-austria.html.id sources.adp
sources-austria.html.nl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o sources-austria.html.nl sources.adp
sources-austria.html.pl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o sources-austria.html.pl sources.adp

sources-austria.var: gen_makefile.conf
	echo > sources-austria.var
	echo 'URI: sources-austria.html.de' >> sources-austria.var
	echo 'Content-language: de' >> sources-austria.var
	echo 'Content-type: text/html' >> sources-austria.var
	echo >> sources-austria.var
	echo 'URI: sources-austria.html.en' >> sources-austria.var
	echo 'Content-language: en' >> sources-austria.var
	echo 'Content-type: text/html' >> sources-austria.var
	echo >> sources-austria.var
	echo 'URI: sources-austria.html.fr' >> sources-austria.var
	echo 'Content-language: fr' >> sources-austria.var
	echo 'Content-type: text/html' >> sources-austria.var
	echo >> sources-austria.var
	echo 'URI: sources-austria.html.id' >> sources-austria.var
	echo 'Content-language: id' >> sources-austria.var
	echo 'Content-type: text/html' >> sources-austria.var
	echo >> sources-austria.var
	echo 'URI: sources-austria.html.nl' >> sources-austria.var
	echo 'Content-language: nl' >> sources-austria.var
	echo 'Content-type: text/html' >> sources-austria.var
	echo >> sources-austria.var
	echo 'URI: sources-austria.html.pl' >> sources-austria.var
	echo 'Content-language: pl' >> sources-austria.var
	echo 'Content-type: text/html' >> sources-austria.var
	echo >> sources-austria.var
sources-germany.html.de: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o sources-germany.html.de sources.adp
sources-germany.html.en: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o sources-germany.html.en sources.adp
sources-germany.html.fr: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o sources-germany.html.fr sources.adp
sources-germany.html.id: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o sources-germany.html.id sources.adp
sources-germany.html.nl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o sources-germany.html.nl sources.adp
sources-germany.html.pl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o sources-germany.html.pl sources.adp

sources-germany.var: gen_makefile.conf
	echo > sources-germany.var
	echo 'URI: sources-germany.html.de' >> sources-germany.var
	echo 'Content-language: de' >> sources-germany.var
	echo 'Content-type: text/html' >> sources-germany.var
	echo >> sources-germany.var
	echo 'URI: sources-germany.html.en' >> sources-germany.var
	echo 'Content-language: en' >> sources-germany.var
	echo 'Content-type: text/html' >> sources-germany.var
	echo >> sources-germany.var
	echo 'URI: sources-germany.html.fr' >> sources-germany.var
	echo 'Content-language: fr' >> sources-germany.var
	echo 'Content-type: text/html' >> sources-germany.var
	echo >> sources-germany.var
	echo 'URI: sources-germany.html.id' >> sources-germany.var
	echo 'Content-language: id' >> sources-germany.var
	echo 'Content-type: text/html' >> sources-germany.var
	echo >> sources-germany.var
	echo 'URI: sources-germany.html.nl' >> sources-germany.var
	echo 'Content-language: nl' >> sources-germany.var
	echo 'Content-type: text/html' >> sources-germany.var
	echo >> sources-germany.var
	echo 'URI: sources-germany.html.pl' >> sources-germany.var
	echo 'Content-language: pl' >> sources-germany.var
	echo 'Content-type: text/html' >> sources-germany.var
	echo >> sources-germany.var
sources-hungary.html.de: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o sources-hungary.html.de sources.adp
sources-hungary.html.en: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o sources-hungary.html.en sources.adp
sources-hungary.html.fr: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o sources-hungary.html.fr sources.adp
sources-hungary.html.id: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o sources-hungary.html.id sources.adp
sources-hungary.html.nl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o sources-hungary.html.nl sources.adp
sources-hungary.html.pl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o sources-hungary.html.pl sources.adp

sources-hungary.var: gen_makefile.conf
	echo > sources-hungary.var
	echo 'URI: sources-hungary.html.de' >> sources-hungary.var
	echo 'Content-language: de' >> sources-hungary.var
	echo 'Content-type: text/html' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.en' >> sources-hungary.var
	echo 'Content-language: en' >> sources-hungary.var
	echo 'Content-type: text/html' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.fr' >> sources-hungary.var
	echo 'Content-language: fr' >> sources-hungary.var
	echo 'Content-type: text/html' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.id' >> sources-hungary.var
	echo 'Content-language: id' >> sources-hungary.var
	echo 'Content-type: text/html' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.nl' >> sources-hungary.var
	echo 'Content-language: nl' >> sources-hungary.var
	echo 'Content-type: text/html' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.pl' >> sources-hungary.var
	echo 'Content-language: pl' >> sources-hungary.var
	echo 'Content-type: text/html' >> sources-hungary.var
	echo >> sources-hungary.var
sources-israel.html.de: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o sources-israel.html.de sources.adp
sources-israel.html.en: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o sources-israel.html.en sources.adp
sources-israel.html.fr: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o sources-israel.html.fr sources.adp
sources-israel.html.id: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o sources-israel.html.id sources.adp
sources-israel.html.nl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o sources-israel.html.nl sources.adp
sources-israel.html.pl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o sources-israel.html.pl sources.adp

sources-israel.var: gen_makefile.conf
	echo > sources-israel.var
	echo 'URI: sources-israel.html.de' >> sources-israel.var
	echo 'Content-language: de' >> sources-israel.var
	echo 'Content-type: text/html' >> sources-israel.var
	echo >> sources-israel.var
	echo 'URI: sources-israel.html.en' >> sources-israel.var
	echo 'Content-language: en' >> sources-israel.var
	echo 'Content-type: text/html' >> sources-israel.var
	echo >> sources-israel.var
	echo 'URI: sources-israel.html.fr' >> sources-israel.var
	echo 'Content-language: fr' >> sources-israel.var
	echo 'Content-type: text/html' >> sources-israel.var
	echo >> sources-israel.var
	echo 'URI: sources-israel.html.id' >> sources-israel.var
	echo 'Content-language: id' >> sources-israel.var
	echo 'Content-type: text/html' >> sources-israel.var
	echo >> sources-israel.var
	echo 'URI: sources-israel.html.nl' >> sources-israel.var
	echo 'Content-language: nl' >> sources-israel.var
	echo 'Content-type: text/html' >> sources-israel.var
	echo >> sources-israel.var
	echo 'URI: sources-israel.html.pl' >> sources-israel.var
	echo 'Content-language: pl' >> sources-israel.var
	echo 'Content-type: text/html' >> sources-israel.var
	echo >> sources-israel.var
sources-netherlands.html.de: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o sources-netherlands.html.de sources.adp
sources-netherlands.html.en: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o sources-netherlands.html.en sources.adp
sources-netherlands.html.fr: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o sources-netherlands.html.fr sources.adp
sources-netherlands.html.id: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o sources-netherlands.html.id sources.adp
sources-netherlands.html.nl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o sources-netherlands.html.nl sources.adp
sources-netherlands.html.pl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o sources-netherlands.html.pl sources.adp

sources-netherlands.var: gen_makefile.conf
	echo > sources-netherlands.var
	echo 'URI: sources-netherlands.html.de' >> sources-netherlands.var
	echo 'Content-language: de' >> sources-netherlands.var
	echo 'Content-type: text/html' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.en' >> sources-netherlands.var
	echo 'Content-language: en' >> sources-netherlands.var
	echo 'Content-type: text/html' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.fr' >> sources-netherlands.var
	echo 'Content-language: fr' >> sources-netherlands.var
	echo 'Content-type: text/html' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.id' >> sources-netherlands.var
	echo 'Content-language: id' >> sources-netherlands.var
	echo 'Content-type: text/html' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.nl' >> sources-netherlands.var
	echo 'Content-language: nl' >> sources-netherlands.var
	echo 'Content-type: text/html' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.pl' >> sources-netherlands.var
	echo 'Content-language: pl' >> sources-netherlands.var
	echo 'Content-type: text/html' >> sources-netherlands.var
	echo >> sources-netherlands.var
sources-norway.html.de: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o sources-norway.html.de sources.adp
sources-norway.html.en: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o sources-norway.html.en sources.adp
sources-norway.html.fr: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o sources-norway.html.fr sources.adp
sources-norway.html.id: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o sources-norway.html.id sources.adp
sources-norway.html.nl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o sources-norway.html.nl sources.adp
sources-norway.html.pl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o sources-norway.html.pl sources.adp

sources-norway.var: gen_makefile.conf
	echo > sources-norway.var
	echo 'URI: sources-norway.html.de' >> sources-norway.var
	echo 'Content-language: de' >> sources-norway.var
	echo 'Content-type: text/html' >> sources-norway.var
	echo >> sources-norway.var
	echo 'URI: sources-norway.html.en' >> sources-norway.var
	echo 'Content-language: en' >> sources-norway.var
	echo 'Content-type: text/html' >> sources-norway.var
	echo >> sources-norway.var
	echo 'URI: sources-norway.html.fr' >> sources-norway.var
	echo 'Content-language: fr' >> sources-norway.var
	echo 'Content-type: text/html' >> sources-norway.var
	echo >> sources-norway.var
	echo 'URI: sources-norway.html.id' >> sources-norway.var
	echo 'Content-language: id' >> sources-norway.var
	echo 'Content-type: text/html' >> sources-norway.var
	echo >> sources-norway.var
	echo 'URI: sources-norway.html.nl' >> sources-norway.var
	echo 'Content-language: nl' >> sources-norway.var
	echo 'Content-type: text/html' >> sources-norway.var
	echo >> sources-norway.var
	echo 'URI: sources-norway.html.pl' >> sources-norway.var
	echo 'Content-language: pl' >> sources-norway.var
	echo 'Content-type: text/html' >> sources-norway.var
	echo >> sources-norway.var
sources-russia.html.de: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o sources-russia.html.de sources.adp
sources-russia.html.en: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o sources-russia.html.en sources.adp
sources-russia.html.fr: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o sources-russia.html.fr sources.adp
sources-russia.html.id: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o sources-russia.html.id sources.adp
sources-russia.html.nl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o sources-russia.html.nl sources.adp
sources-russia.html.pl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o sources-russia.html.pl sources.adp

sources-russia.var: gen_makefile.conf
	echo > sources-russia.var
	echo 'URI: sources-russia.html.de' >> sources-russia.var
	echo 'Content-language: de' >> sources-russia.var
	echo 'Content-type: text/html' >> sources-russia.var
	echo >> sources-russia.var
	echo 'URI: sources-russia.html.en' >> sources-russia.var
	echo 'Content-language: en' >> sources-russia.var
	echo 'Content-type: text/html' >> sources-russia.var
	echo >> sources-russia.var
	echo 'URI: sources-russia.html.fr' >> sources-russia.var
	echo 'Content-language: fr' >> sources-russia.var
	echo 'Content-type: text/html' >> sources-russia.var
	echo >> sources-russia.var
	echo 'URI: sources-russia.html.id' >> sources-russia.var
	echo 'Content-language: id' >> sources-russia.var
	echo 'Content-type: text/html' >> sources-russia.var
	echo >> sources-russia.var
	echo 'URI: sources-russia.html.nl' >> sources-russia.var
	echo 'Content-language: nl' >> sources-russia.var
	echo 'Content-type: text/html' >> sources-russia.var
	echo >> sources-russia.var
	echo 'URI: sources-russia.html.pl' >> sources-russia.var
	echo 'Content-language: pl' >> sources-russia.var
	echo 'Content-type: text/html' >> sources-russia.var
	echo >> sources-russia.var
sources-ftp.freepascal.org.html.de: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o sources-ftp.freepascal.org.html.de sources.adp
sources-ftp.freepascal.org.html.en: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o sources-ftp.freepascal.org.html.en sources.adp
sources-ftp.freepascal.org.html.fr: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o sources-ftp.freepascal.org.html.fr sources.adp
sources-ftp.freepascal.org.html.id: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o sources-ftp.freepascal.org.html.id sources.adp
sources-ftp.freepascal.org.html.nl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o sources-ftp.freepascal.org.html.nl sources.adp
sources-ftp.freepascal.org.html.pl: sources.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o sources-ftp.freepascal.org.html.pl sources.adp

sources-ftp.freepascal.org.var: gen_makefile.conf
	echo > sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.de' >> sources-ftp.freepascal.org.var
	echo 'Content-language: de' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.en' >> sources-ftp.freepascal.org.var
	echo 'Content-language: en' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.fr' >> sources-ftp.freepascal.org.var
	echo 'Content-language: fr' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.id' >> sources-ftp.freepascal.org.var
	echo 'Content-language: id' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.nl' >> sources-ftp.freepascal.org.var
	echo 'Content-language: nl' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.pl' >> sources-ftp.freepascal.org.var
	echo 'Content-language: pl' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var

sources.html.de: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o sources.html.de ../../templatemirror.adp
sources.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.adp -l en_US -m ../../default-master.adp -o sources.html.en ../../templatemirror.adp
sources.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o sources.html.fr ../../templatemirror.adp
sources.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o sources.html.id ../../templatemirror.adp
sources.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o sources.html.nl ../../templatemirror.adp
sources.html.pl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o sources.html.pl ../../templatemirror.adp
sources.var: gen_makefile.conf
	echo > sources.var
	echo 'URI: sources.html.de' >> sources.var
	echo 'Content-language: de' >> sources.var
	echo 'Content-type: text/html' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.en' >> sources.var
	echo 'Content-language: en' >> sources.var
	echo 'Content-type: text/html' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.fr' >> sources.var
	echo 'Content-language: fr' >> sources.var
	echo 'Content-type: text/html' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.id' >> sources.var
	echo 'Content-language: id' >> sources.var
	echo 'Content-type: text/html' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.nl' >> sources.var
	echo 'Content-language: nl' >> sources.var
	echo 'Content-type: text/html' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.pl' >> sources.var
	echo 'Content-language: pl' >> sources.var
	echo 'Content-type: text/html' >> sources.var
	echo >> sources.var

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

all_pages: sources-australia.html.de sources-australia.html.en sources-australia.html.fr sources-australia.html.id sources-australia.html.nl sources-australia.html.pl sources-australia.var sources-austria.html.de sources-austria.html.en sources-austria.html.fr sources-austria.html.id sources-austria.html.nl sources-austria.html.pl sources-austria.var sources-germany.html.de sources-germany.html.en sources-germany.html.fr sources-germany.html.id sources-germany.html.nl sources-germany.html.pl sources-germany.var sources-hungary.html.de sources-hungary.html.en sources-hungary.html.fr sources-hungary.html.id sources-hungary.html.nl sources-hungary.html.pl sources-hungary.var sources-israel.html.de sources-israel.html.en sources-israel.html.fr sources-israel.html.id sources-israel.html.nl sources-israel.html.pl sources-israel.var sources-netherlands.html.de sources-netherlands.html.en sources-netherlands.html.fr sources-netherlands.html.id sources-netherlands.html.nl sources-netherlands.html.pl sources-netherlands.var sources-norway.html.de sources-norway.html.en sources-norway.html.fr sources-norway.html.id sources-norway.html.nl sources-norway.html.pl sources-norway.var sources-russia.html.de sources-russia.html.en sources-russia.html.fr sources-russia.html.id sources-russia.html.nl sources-russia.html.pl sources-russia.var sources-ftp.freepascal.org.html.de sources-ftp.freepascal.org.html.en sources-ftp.freepascal.org.html.fr sources-ftp.freepascal.org.html.id sources-ftp.freepascal.org.html.nl sources-ftp.freepascal.org.html.pl sources-ftp.freepascal.org.var sources.html.de sources.html.en sources.html.fr sources.html.id sources.html.nl sources.html.pl sources.var mirrors.dat


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

