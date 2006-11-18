
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
docs-australia.html.de: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o docs-australia.html.de docs.adp
docs-australia.html.en: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-australia.html.en docs.adp
docs-australia.html.fr: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-australia.html.fr docs.adp
docs-australia.html.id: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-australia.html.id docs.adp
docs-australia.html.nl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-australia.html.nl docs.adp
docs-australia.html.pl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-australia.html.pl docs.adp

docs-australia.var: gen_makefile.conf
	echo > docs-australia.var
	echo 'URI: docs-australia.html.de' >> docs-australia.var
	echo 'Content-language: de' >> docs-australia.var
	echo 'Content-type: text/html' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.en' >> docs-australia.var
	echo 'Content-language: en' >> docs-australia.var
	echo 'Content-type: text/html' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.fr' >> docs-australia.var
	echo 'Content-language: fr' >> docs-australia.var
	echo 'Content-type: text/html' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.id' >> docs-australia.var
	echo 'Content-language: id' >> docs-australia.var
	echo 'Content-type: text/html' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.nl' >> docs-australia.var
	echo 'Content-language: nl' >> docs-australia.var
	echo 'Content-type: text/html' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.pl' >> docs-australia.var
	echo 'Content-language: pl' >> docs-australia.var
	echo 'Content-type: text/html' >> docs-australia.var
	echo >> docs-australia.var
docs-austria.html.de: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o docs-austria.html.de docs.adp
docs-austria.html.en: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-austria.html.en docs.adp
docs-austria.html.fr: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-austria.html.fr docs.adp
docs-austria.html.id: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-austria.html.id docs.adp
docs-austria.html.nl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-austria.html.nl docs.adp
docs-austria.html.pl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-austria.html.pl docs.adp

docs-austria.var: gen_makefile.conf
	echo > docs-austria.var
	echo 'URI: docs-austria.html.de' >> docs-austria.var
	echo 'Content-language: de' >> docs-austria.var
	echo 'Content-type: text/html' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.en' >> docs-austria.var
	echo 'Content-language: en' >> docs-austria.var
	echo 'Content-type: text/html' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.fr' >> docs-austria.var
	echo 'Content-language: fr' >> docs-austria.var
	echo 'Content-type: text/html' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.id' >> docs-austria.var
	echo 'Content-language: id' >> docs-austria.var
	echo 'Content-type: text/html' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.nl' >> docs-austria.var
	echo 'Content-language: nl' >> docs-austria.var
	echo 'Content-type: text/html' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.pl' >> docs-austria.var
	echo 'Content-language: pl' >> docs-austria.var
	echo 'Content-type: text/html' >> docs-austria.var
	echo >> docs-austria.var
docs-germany.html.de: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o docs-germany.html.de docs.adp
docs-germany.html.en: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-germany.html.en docs.adp
docs-germany.html.fr: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-germany.html.fr docs.adp
docs-germany.html.id: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-germany.html.id docs.adp
docs-germany.html.nl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-germany.html.nl docs.adp
docs-germany.html.pl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-germany.html.pl docs.adp

docs-germany.var: gen_makefile.conf
	echo > docs-germany.var
	echo 'URI: docs-germany.html.de' >> docs-germany.var
	echo 'Content-language: de' >> docs-germany.var
	echo 'Content-type: text/html' >> docs-germany.var
	echo >> docs-germany.var
	echo 'URI: docs-germany.html.en' >> docs-germany.var
	echo 'Content-language: en' >> docs-germany.var
	echo 'Content-type: text/html' >> docs-germany.var
	echo >> docs-germany.var
	echo 'URI: docs-germany.html.fr' >> docs-germany.var
	echo 'Content-language: fr' >> docs-germany.var
	echo 'Content-type: text/html' >> docs-germany.var
	echo >> docs-germany.var
	echo 'URI: docs-germany.html.id' >> docs-germany.var
	echo 'Content-language: id' >> docs-germany.var
	echo 'Content-type: text/html' >> docs-germany.var
	echo >> docs-germany.var
	echo 'URI: docs-germany.html.nl' >> docs-germany.var
	echo 'Content-language: nl' >> docs-germany.var
	echo 'Content-type: text/html' >> docs-germany.var
	echo >> docs-germany.var
	echo 'URI: docs-germany.html.pl' >> docs-germany.var
	echo 'Content-language: pl' >> docs-germany.var
	echo 'Content-type: text/html' >> docs-germany.var
	echo >> docs-germany.var
docs-hungary.html.de: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o docs-hungary.html.de docs.adp
docs-hungary.html.en: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-hungary.html.en docs.adp
docs-hungary.html.fr: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-hungary.html.fr docs.adp
docs-hungary.html.id: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-hungary.html.id docs.adp
docs-hungary.html.nl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-hungary.html.nl docs.adp
docs-hungary.html.pl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-hungary.html.pl docs.adp

docs-hungary.var: gen_makefile.conf
	echo > docs-hungary.var
	echo 'URI: docs-hungary.html.de' >> docs-hungary.var
	echo 'Content-language: de' >> docs-hungary.var
	echo 'Content-type: text/html' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.en' >> docs-hungary.var
	echo 'Content-language: en' >> docs-hungary.var
	echo 'Content-type: text/html' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.fr' >> docs-hungary.var
	echo 'Content-language: fr' >> docs-hungary.var
	echo 'Content-type: text/html' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.id' >> docs-hungary.var
	echo 'Content-language: id' >> docs-hungary.var
	echo 'Content-type: text/html' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.nl' >> docs-hungary.var
	echo 'Content-language: nl' >> docs-hungary.var
	echo 'Content-type: text/html' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.pl' >> docs-hungary.var
	echo 'Content-language: pl' >> docs-hungary.var
	echo 'Content-type: text/html' >> docs-hungary.var
	echo >> docs-hungary.var
docs-israel.html.de: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o docs-israel.html.de docs.adp
docs-israel.html.en: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-israel.html.en docs.adp
docs-israel.html.fr: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-israel.html.fr docs.adp
docs-israel.html.id: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-israel.html.id docs.adp
docs-israel.html.nl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-israel.html.nl docs.adp
docs-israel.html.pl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-israel.html.pl docs.adp

docs-israel.var: gen_makefile.conf
	echo > docs-israel.var
	echo 'URI: docs-israel.html.de' >> docs-israel.var
	echo 'Content-language: de' >> docs-israel.var
	echo 'Content-type: text/html' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.en' >> docs-israel.var
	echo 'Content-language: en' >> docs-israel.var
	echo 'Content-type: text/html' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.fr' >> docs-israel.var
	echo 'Content-language: fr' >> docs-israel.var
	echo 'Content-type: text/html' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.id' >> docs-israel.var
	echo 'Content-language: id' >> docs-israel.var
	echo 'Content-type: text/html' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.nl' >> docs-israel.var
	echo 'Content-language: nl' >> docs-israel.var
	echo 'Content-type: text/html' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.pl' >> docs-israel.var
	echo 'Content-language: pl' >> docs-israel.var
	echo 'Content-type: text/html' >> docs-israel.var
	echo >> docs-israel.var
docs-netherlands.html.de: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o docs-netherlands.html.de docs.adp
docs-netherlands.html.en: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-netherlands.html.en docs.adp
docs-netherlands.html.fr: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-netherlands.html.fr docs.adp
docs-netherlands.html.id: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-netherlands.html.id docs.adp
docs-netherlands.html.nl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-netherlands.html.nl docs.adp
docs-netherlands.html.pl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-netherlands.html.pl docs.adp

docs-netherlands.var: gen_makefile.conf
	echo > docs-netherlands.var
	echo 'URI: docs-netherlands.html.de' >> docs-netherlands.var
	echo 'Content-language: de' >> docs-netherlands.var
	echo 'Content-type: text/html' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.en' >> docs-netherlands.var
	echo 'Content-language: en' >> docs-netherlands.var
	echo 'Content-type: text/html' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.fr' >> docs-netherlands.var
	echo 'Content-language: fr' >> docs-netherlands.var
	echo 'Content-type: text/html' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.id' >> docs-netherlands.var
	echo 'Content-language: id' >> docs-netherlands.var
	echo 'Content-type: text/html' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.nl' >> docs-netherlands.var
	echo 'Content-language: nl' >> docs-netherlands.var
	echo 'Content-type: text/html' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.pl' >> docs-netherlands.var
	echo 'Content-language: pl' >> docs-netherlands.var
	echo 'Content-type: text/html' >> docs-netherlands.var
	echo >> docs-netherlands.var
docs-norway.html.de: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o docs-norway.html.de docs.adp
docs-norway.html.en: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-norway.html.en docs.adp
docs-norway.html.fr: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-norway.html.fr docs.adp
docs-norway.html.id: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-norway.html.id docs.adp
docs-norway.html.nl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-norway.html.nl docs.adp
docs-norway.html.pl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-norway.html.pl docs.adp

docs-norway.var: gen_makefile.conf
	echo > docs-norway.var
	echo 'URI: docs-norway.html.de' >> docs-norway.var
	echo 'Content-language: de' >> docs-norway.var
	echo 'Content-type: text/html' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.en' >> docs-norway.var
	echo 'Content-language: en' >> docs-norway.var
	echo 'Content-type: text/html' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.fr' >> docs-norway.var
	echo 'Content-language: fr' >> docs-norway.var
	echo 'Content-type: text/html' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.id' >> docs-norway.var
	echo 'Content-language: id' >> docs-norway.var
	echo 'Content-type: text/html' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.nl' >> docs-norway.var
	echo 'Content-language: nl' >> docs-norway.var
	echo 'Content-type: text/html' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.pl' >> docs-norway.var
	echo 'Content-language: pl' >> docs-norway.var
	echo 'Content-type: text/html' >> docs-norway.var
	echo >> docs-norway.var
docs-russia.html.de: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o docs-russia.html.de docs.adp
docs-russia.html.en: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-russia.html.en docs.adp
docs-russia.html.fr: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-russia.html.fr docs.adp
docs-russia.html.id: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-russia.html.id docs.adp
docs-russia.html.nl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-russia.html.nl docs.adp
docs-russia.html.pl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-russia.html.pl docs.adp

docs-russia.var: gen_makefile.conf
	echo > docs-russia.var
	echo 'URI: docs-russia.html.de' >> docs-russia.var
	echo 'Content-language: de' >> docs-russia.var
	echo 'Content-type: text/html' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.en' >> docs-russia.var
	echo 'Content-language: en' >> docs-russia.var
	echo 'Content-type: text/html' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.fr' >> docs-russia.var
	echo 'Content-language: fr' >> docs-russia.var
	echo 'Content-type: text/html' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.id' >> docs-russia.var
	echo 'Content-language: id' >> docs-russia.var
	echo 'Content-type: text/html' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.nl' >> docs-russia.var
	echo 'Content-language: nl' >> docs-russia.var
	echo 'Content-type: text/html' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.pl' >> docs-russia.var
	echo 'Content-language: pl' >> docs-russia.var
	echo 'Content-type: text/html' >> docs-russia.var
	echo >> docs-russia.var
docs-ftp.freepascal.org.html.de: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o docs-ftp.freepascal.org.html.de docs.adp
docs-ftp.freepascal.org.html.en: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-ftp.freepascal.org.html.en docs.adp
docs-ftp.freepascal.org.html.fr: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-ftp.freepascal.org.html.fr docs.adp
docs-ftp.freepascal.org.html.id: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-ftp.freepascal.org.html.id docs.adp
docs-ftp.freepascal.org.html.nl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-ftp.freepascal.org.html.nl docs.adp
docs-ftp.freepascal.org.html.pl: docs.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-ftp.freepascal.org.html.pl docs.adp

docs-ftp.freepascal.org.var: gen_makefile.conf
	echo > docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.de' >> docs-ftp.freepascal.org.var
	echo 'Content-language: de' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.en' >> docs-ftp.freepascal.org.var
	echo 'Content-language: en' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.fr' >> docs-ftp.freepascal.org.var
	echo 'Content-language: fr' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.id' >> docs-ftp.freepascal.org.var
	echo 'Content-language: id' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.nl' >> docs-ftp.freepascal.org.var
	echo 'Content-language: nl' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.pl' >> docs-ftp.freepascal.org.var
	echo 'Content-language: pl' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var

docs.html.de: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o docs.html.de ../../templatemirror.adp
docs.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs.html.en ../../templatemirror.adp
docs.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs.html.fr ../../templatemirror.adp
docs.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs.html.id ../../templatemirror.adp
docs.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs.html.nl ../../templatemirror.adp
docs.html.pl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs.html.pl ../../templatemirror.adp
docs.var: gen_makefile.conf
	echo > docs.var
	echo 'URI: docs.html.de' >> docs.var
	echo 'Content-language: de' >> docs.var
	echo 'Content-type: text/html' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.en' >> docs.var
	echo 'Content-language: en' >> docs.var
	echo 'Content-type: text/html' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.fr' >> docs.var
	echo 'Content-language: fr' >> docs.var
	echo 'Content-type: text/html' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.id' >> docs.var
	echo 'Content-language: id' >> docs.var
	echo 'Content-type: text/html' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.nl' >> docs.var
	echo 'Content-language: nl' >> docs.var
	echo 'Content-type: text/html' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.pl' >> docs.var
	echo 'Content-language: pl' >> docs.var
	echo 'Content-type: text/html' >> docs.var
	echo >> docs.var

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

all_pages: docs-australia.html.de docs-australia.html.en docs-australia.html.fr docs-australia.html.id docs-australia.html.nl docs-australia.html.pl docs-australia.var docs-austria.html.de docs-austria.html.en docs-austria.html.fr docs-austria.html.id docs-austria.html.nl docs-austria.html.pl docs-austria.var docs-germany.html.de docs-germany.html.en docs-germany.html.fr docs-germany.html.id docs-germany.html.nl docs-germany.html.pl docs-germany.var docs-hungary.html.de docs-hungary.html.en docs-hungary.html.fr docs-hungary.html.id docs-hungary.html.nl docs-hungary.html.pl docs-hungary.var docs-israel.html.de docs-israel.html.en docs-israel.html.fr docs-israel.html.id docs-israel.html.nl docs-israel.html.pl docs-israel.var docs-netherlands.html.de docs-netherlands.html.en docs-netherlands.html.fr docs-netherlands.html.id docs-netherlands.html.nl docs-netherlands.html.pl docs-netherlands.var docs-norway.html.de docs-norway.html.en docs-norway.html.fr docs-norway.html.id docs-norway.html.nl docs-norway.html.pl docs-norway.var docs-russia.html.de docs-russia.html.en docs-russia.html.fr docs-russia.html.id docs-russia.html.nl docs-russia.html.pl docs-russia.var docs-ftp.freepascal.org.html.de docs-ftp.freepascal.org.html.en docs-ftp.freepascal.org.html.fr docs-ftp.freepascal.org.html.id docs-ftp.freepascal.org.html.nl docs-ftp.freepascal.org.html.pl docs-ftp.freepascal.org.var docs.html.de docs.html.en docs.html.fr docs.html.id docs.html.nl docs.html.pl docs.var mirrors.dat


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

