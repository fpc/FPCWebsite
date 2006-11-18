
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
linux-australia.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-australia.html.de linux.adp
linux-australia.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-australia.html.en linux.adp
linux-australia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-australia.html.fr linux.adp
linux-australia.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-australia.html.id linux.adp
linux-australia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-australia.html.nl linux.adp
linux-australia.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-australia.html.pl linux.adp

linux-australia.var: gen_makefile.conf
	echo > linux-australia.var
	echo 'URI: linux-australia.html.de' >> linux-australia.var
	echo 'Content-language: de' >> linux-australia.var
	echo 'Content-type: text/html' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.en' >> linux-australia.var
	echo 'Content-language: en' >> linux-australia.var
	echo 'Content-type: text/html' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.fr' >> linux-australia.var
	echo 'Content-language: fr' >> linux-australia.var
	echo 'Content-type: text/html' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.id' >> linux-australia.var
	echo 'Content-language: id' >> linux-australia.var
	echo 'Content-type: text/html' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.nl' >> linux-australia.var
	echo 'Content-language: nl' >> linux-australia.var
	echo 'Content-type: text/html' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.pl' >> linux-australia.var
	echo 'Content-language: pl' >> linux-australia.var
	echo 'Content-type: text/html' >> linux-australia.var
	echo >> linux-australia.var
linux-austria.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-austria.html.de linux.adp
linux-austria.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-austria.html.en linux.adp
linux-austria.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-austria.html.fr linux.adp
linux-austria.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-austria.html.id linux.adp
linux-austria.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-austria.html.nl linux.adp
linux-austria.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-austria.html.pl linux.adp

linux-austria.var: gen_makefile.conf
	echo > linux-austria.var
	echo 'URI: linux-austria.html.de' >> linux-austria.var
	echo 'Content-language: de' >> linux-austria.var
	echo 'Content-type: text/html' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.en' >> linux-austria.var
	echo 'Content-language: en' >> linux-austria.var
	echo 'Content-type: text/html' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.fr' >> linux-austria.var
	echo 'Content-language: fr' >> linux-austria.var
	echo 'Content-type: text/html' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.id' >> linux-austria.var
	echo 'Content-language: id' >> linux-austria.var
	echo 'Content-type: text/html' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.nl' >> linux-austria.var
	echo 'Content-language: nl' >> linux-austria.var
	echo 'Content-type: text/html' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.pl' >> linux-austria.var
	echo 'Content-language: pl' >> linux-austria.var
	echo 'Content-type: text/html' >> linux-austria.var
	echo >> linux-austria.var
linux-germany.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-germany.html.de linux.adp
linux-germany.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-germany.html.en linux.adp
linux-germany.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-germany.html.fr linux.adp
linux-germany.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-germany.html.id linux.adp
linux-germany.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-germany.html.nl linux.adp
linux-germany.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-germany.html.pl linux.adp

linux-germany.var: gen_makefile.conf
	echo > linux-germany.var
	echo 'URI: linux-germany.html.de' >> linux-germany.var
	echo 'Content-language: de' >> linux-germany.var
	echo 'Content-type: text/html' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.en' >> linux-germany.var
	echo 'Content-language: en' >> linux-germany.var
	echo 'Content-type: text/html' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.fr' >> linux-germany.var
	echo 'Content-language: fr' >> linux-germany.var
	echo 'Content-type: text/html' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.id' >> linux-germany.var
	echo 'Content-language: id' >> linux-germany.var
	echo 'Content-type: text/html' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.nl' >> linux-germany.var
	echo 'Content-language: nl' >> linux-germany.var
	echo 'Content-type: text/html' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.pl' >> linux-germany.var
	echo 'Content-language: pl' >> linux-germany.var
	echo 'Content-type: text/html' >> linux-germany.var
	echo >> linux-germany.var
linux-hungary.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-hungary.html.de linux.adp
linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-hungary.html.en linux.adp
linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-hungary.html.fr linux.adp
linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-hungary.html.id linux.adp
linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-hungary.html.nl linux.adp
linux-hungary.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-hungary.html.pl linux.adp

linux-hungary.var: gen_makefile.conf
	echo > linux-hungary.var
	echo 'URI: linux-hungary.html.de' >> linux-hungary.var
	echo 'Content-language: de' >> linux-hungary.var
	echo 'Content-type: text/html' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.en' >> linux-hungary.var
	echo 'Content-language: en' >> linux-hungary.var
	echo 'Content-type: text/html' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.fr' >> linux-hungary.var
	echo 'Content-language: fr' >> linux-hungary.var
	echo 'Content-type: text/html' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.id' >> linux-hungary.var
	echo 'Content-language: id' >> linux-hungary.var
	echo 'Content-type: text/html' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.nl' >> linux-hungary.var
	echo 'Content-language: nl' >> linux-hungary.var
	echo 'Content-type: text/html' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.pl' >> linux-hungary.var
	echo 'Content-language: pl' >> linux-hungary.var
	echo 'Content-type: text/html' >> linux-hungary.var
	echo >> linux-hungary.var
linux-israel.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-israel.html.de linux.adp
linux-israel.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-israel.html.en linux.adp
linux-israel.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-israel.html.fr linux.adp
linux-israel.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-israel.html.id linux.adp
linux-israel.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-israel.html.nl linux.adp
linux-israel.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-israel.html.pl linux.adp

linux-israel.var: gen_makefile.conf
	echo > linux-israel.var
	echo 'URI: linux-israel.html.de' >> linux-israel.var
	echo 'Content-language: de' >> linux-israel.var
	echo 'Content-type: text/html' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.en' >> linux-israel.var
	echo 'Content-language: en' >> linux-israel.var
	echo 'Content-type: text/html' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.fr' >> linux-israel.var
	echo 'Content-language: fr' >> linux-israel.var
	echo 'Content-type: text/html' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.id' >> linux-israel.var
	echo 'Content-language: id' >> linux-israel.var
	echo 'Content-type: text/html' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.nl' >> linux-israel.var
	echo 'Content-language: nl' >> linux-israel.var
	echo 'Content-type: text/html' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.pl' >> linux-israel.var
	echo 'Content-language: pl' >> linux-israel.var
	echo 'Content-type: text/html' >> linux-israel.var
	echo >> linux-israel.var
linux-netherlands.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-netherlands.html.de linux.adp
linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-netherlands.html.en linux.adp
linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-netherlands.html.fr linux.adp
linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-netherlands.html.id linux.adp
linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-netherlands.html.nl linux.adp
linux-netherlands.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-netherlands.html.pl linux.adp

linux-netherlands.var: gen_makefile.conf
	echo > linux-netherlands.var
	echo 'URI: linux-netherlands.html.de' >> linux-netherlands.var
	echo 'Content-language: de' >> linux-netherlands.var
	echo 'Content-type: text/html' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.en' >> linux-netherlands.var
	echo 'Content-language: en' >> linux-netherlands.var
	echo 'Content-type: text/html' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.fr' >> linux-netherlands.var
	echo 'Content-language: fr' >> linux-netherlands.var
	echo 'Content-type: text/html' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.id' >> linux-netherlands.var
	echo 'Content-language: id' >> linux-netherlands.var
	echo 'Content-type: text/html' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.nl' >> linux-netherlands.var
	echo 'Content-language: nl' >> linux-netherlands.var
	echo 'Content-type: text/html' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.pl' >> linux-netherlands.var
	echo 'Content-language: pl' >> linux-netherlands.var
	echo 'Content-type: text/html' >> linux-netherlands.var
	echo >> linux-netherlands.var
linux-norway.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-norway.html.de linux.adp
linux-norway.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-norway.html.en linux.adp
linux-norway.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-norway.html.fr linux.adp
linux-norway.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-norway.html.id linux.adp
linux-norway.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-norway.html.nl linux.adp
linux-norway.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-norway.html.pl linux.adp

linux-norway.var: gen_makefile.conf
	echo > linux-norway.var
	echo 'URI: linux-norway.html.de' >> linux-norway.var
	echo 'Content-language: de' >> linux-norway.var
	echo 'Content-type: text/html' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.en' >> linux-norway.var
	echo 'Content-language: en' >> linux-norway.var
	echo 'Content-type: text/html' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.fr' >> linux-norway.var
	echo 'Content-language: fr' >> linux-norway.var
	echo 'Content-type: text/html' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.id' >> linux-norway.var
	echo 'Content-language: id' >> linux-norway.var
	echo 'Content-type: text/html' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.nl' >> linux-norway.var
	echo 'Content-language: nl' >> linux-norway.var
	echo 'Content-type: text/html' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.pl' >> linux-norway.var
	echo 'Content-language: pl' >> linux-norway.var
	echo 'Content-type: text/html' >> linux-norway.var
	echo >> linux-norway.var
linux-russia.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-russia.html.de linux.adp
linux-russia.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-russia.html.en linux.adp
linux-russia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-russia.html.fr linux.adp
linux-russia.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-russia.html.id linux.adp
linux-russia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-russia.html.nl linux.adp
linux-russia.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-russia.html.pl linux.adp

linux-russia.var: gen_makefile.conf
	echo > linux-russia.var
	echo 'URI: linux-russia.html.de' >> linux-russia.var
	echo 'Content-language: de' >> linux-russia.var
	echo 'Content-type: text/html' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.en' >> linux-russia.var
	echo 'Content-language: en' >> linux-russia.var
	echo 'Content-type: text/html' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.fr' >> linux-russia.var
	echo 'Content-language: fr' >> linux-russia.var
	echo 'Content-type: text/html' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.id' >> linux-russia.var
	echo 'Content-language: id' >> linux-russia.var
	echo 'Content-type: text/html' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.nl' >> linux-russia.var
	echo 'Content-language: nl' >> linux-russia.var
	echo 'Content-type: text/html' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.pl' >> linux-russia.var
	echo 'Content-language: pl' >> linux-russia.var
	echo 'Content-type: text/html' >> linux-russia.var
	echo >> linux-russia.var
linux-ftp.freepascal.org.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-ftp.freepascal.org.html.de linux.adp
linux-ftp.freepascal.org.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-ftp.freepascal.org.html.en linux.adp
linux-ftp.freepascal.org.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-ftp.freepascal.org.html.fr linux.adp
linux-ftp.freepascal.org.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-ftp.freepascal.org.html.id linux.adp
linux-ftp.freepascal.org.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-ftp.freepascal.org.html.nl linux.adp
linux-ftp.freepascal.org.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-ftp.freepascal.org.html.pl linux.adp

linux-ftp.freepascal.org.var: gen_makefile.conf
	echo > linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.de' >> linux-ftp.freepascal.org.var
	echo 'Content-language: de' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.en' >> linux-ftp.freepascal.org.var
	echo 'Content-language: en' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.fr' >> linux-ftp.freepascal.org.var
	echo 'Content-language: fr' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.id' >> linux-ftp.freepascal.org.var
	echo 'Content-language: id' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.nl' >> linux-ftp.freepascal.org.var
	echo 'Content-language: nl' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.pl' >> linux-ftp.freepascal.org.var
	echo 'Content-language: pl' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var

linux.html.de: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux.html.de ../../templatemirror.adp
linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux.html.en ../../templatemirror.adp
linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr ../../templatemirror.adp
linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux.html.id ../../templatemirror.adp
linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl ../../templatemirror.adp
linux.html.pl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux.html.pl ../../templatemirror.adp
linux.var: gen_makefile.conf
	echo > linux.var
	echo 'URI: linux.html.de' >> linux.var
	echo 'Content-language: de' >> linux.var
	echo 'Content-type: text/html' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.en' >> linux.var
	echo 'Content-language: en' >> linux.var
	echo 'Content-type: text/html' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.fr' >> linux.var
	echo 'Content-language: fr' >> linux.var
	echo 'Content-type: text/html' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.id' >> linux.var
	echo 'Content-language: id' >> linux.var
	echo 'Content-type: text/html' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.nl' >> linux.var
	echo 'Content-language: nl' >> linux.var
	echo 'Content-type: text/html' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.pl' >> linux.var
	echo 'Content-language: pl' >> linux.var
	echo 'Content-type: text/html' >> linux.var
	echo >> linux.var

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

all_pages: linux-australia.html.de linux-australia.html.en linux-australia.html.fr linux-australia.html.id linux-australia.html.nl linux-australia.html.pl linux-australia.var linux-austria.html.de linux-austria.html.en linux-austria.html.fr linux-austria.html.id linux-austria.html.nl linux-austria.html.pl linux-austria.var linux-germany.html.de linux-germany.html.en linux-germany.html.fr linux-germany.html.id linux-germany.html.nl linux-germany.html.pl linux-germany.var linux-hungary.html.de linux-hungary.html.en linux-hungary.html.fr linux-hungary.html.id linux-hungary.html.nl linux-hungary.html.pl linux-hungary.var linux-israel.html.de linux-israel.html.en linux-israel.html.fr linux-israel.html.id linux-israel.html.nl linux-israel.html.pl linux-israel.var linux-netherlands.html.de linux-netherlands.html.en linux-netherlands.html.fr linux-netherlands.html.id linux-netherlands.html.nl linux-netherlands.html.pl linux-netherlands.var linux-norway.html.de linux-norway.html.en linux-norway.html.fr linux-norway.html.id linux-norway.html.nl linux-norway.html.pl linux-norway.var linux-russia.html.de linux-russia.html.en linux-russia.html.fr linux-russia.html.id linux-russia.html.nl linux-russia.html.pl linux-russia.var linux-ftp.freepascal.org.html.de linux-ftp.freepascal.org.html.en linux-ftp.freepascal.org.html.fr linux-ftp.freepascal.org.html.id linux-ftp.freepascal.org.html.nl linux-ftp.freepascal.org.html.pl linux-ftp.freepascal.org.var linux.html.de linux.html.en linux.html.fr linux.html.id linux.html.nl linux.html.pl linux.var mirrors.dat


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

