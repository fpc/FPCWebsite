
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
docs-australia.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-australia.html.en -oe iso-8859-1 docs.adp
docs-australia.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-australia.html.fr -oe iso-8859-1 docs.adp
docs-australia.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-australia.html.id -oe iso-8859-1 docs.adp
docs-australia.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o docs-australia.html.it -oe iso-8859-1 docs.adp
docs-australia.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-australia.html.nl -oe iso-8859-1 docs.adp
docs-australia.html.pl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-australia.html.pl -oe iso-8859-2 docs.adp
docs-australia.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o docs-australia.html.sl -oe iso-8859-2 docs.adp
docs-australia.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o docs-australia.html.ru -oe iso-8859-5 docs.adp

docs-australia.var: gen_makefile.conf
	echo > docs-australia.var
	echo 'URI: docs-australia.html.en' >> docs-australia.var
	echo 'Content-language: en' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.fr' >> docs-australia.var
	echo 'Content-language: fr' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.id' >> docs-australia.var
	echo 'Content-language: id' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.it' >> docs-australia.var
	echo 'Content-language: it' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.nl' >> docs-australia.var
	echo 'Content-language: nl' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.pl' >> docs-australia.var
	echo 'Content-language: pl' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.sl' >> docs-australia.var
	echo 'Content-language: sl' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.ru' >> docs-australia.var
	echo 'Content-language: ru' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-australia.var
	echo >> docs-australia.var
docs-austria.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-austria.html.en -oe iso-8859-1 docs.adp
docs-austria.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-austria.html.fr -oe iso-8859-1 docs.adp
docs-austria.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-austria.html.id -oe iso-8859-1 docs.adp
docs-austria.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o docs-austria.html.it -oe iso-8859-1 docs.adp
docs-austria.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-austria.html.nl -oe iso-8859-1 docs.adp
docs-austria.html.pl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-austria.html.pl -oe iso-8859-2 docs.adp
docs-austria.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o docs-austria.html.sl -oe iso-8859-2 docs.adp
docs-austria.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o docs-austria.html.ru -oe iso-8859-5 docs.adp

docs-austria.var: gen_makefile.conf
	echo > docs-austria.var
	echo 'URI: docs-austria.html.en' >> docs-austria.var
	echo 'Content-language: en' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.fr' >> docs-austria.var
	echo 'Content-language: fr' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.id' >> docs-austria.var
	echo 'Content-language: id' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.it' >> docs-austria.var
	echo 'Content-language: it' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.nl' >> docs-austria.var
	echo 'Content-language: nl' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.pl' >> docs-austria.var
	echo 'Content-language: pl' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.sl' >> docs-austria.var
	echo 'Content-language: sl' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.ru' >> docs-austria.var
	echo 'Content-language: ru' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-austria.var
	echo >> docs-austria.var
docs-germany.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-germany.html.en -oe iso-8859-1 docs.adp
docs-germany.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-germany.html.fr -oe iso-8859-1 docs.adp
docs-germany.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-germany.html.id -oe iso-8859-1 docs.adp
docs-germany.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o docs-germany.html.it -oe iso-8859-1 docs.adp
docs-germany.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-germany.html.nl -oe iso-8859-1 docs.adp
docs-germany.html.pl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-germany.html.pl -oe iso-8859-2 docs.adp
docs-germany.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o docs-germany.html.sl -oe iso-8859-2 docs.adp
docs-germany.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o docs-germany.html.ru -oe iso-8859-5 docs.adp

docs-germany.var: gen_makefile.conf
	echo > docs-germany.var
	echo 'URI: docs-germany.html.en' >> docs-germany.var
	echo 'Content-language: en' >> docs-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-germany.var
	echo >> docs-germany.var
	echo 'URI: docs-germany.html.fr' >> docs-germany.var
	echo 'Content-language: fr' >> docs-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-germany.var
	echo >> docs-germany.var
	echo 'URI: docs-germany.html.id' >> docs-germany.var
	echo 'Content-language: id' >> docs-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-germany.var
	echo >> docs-germany.var
	echo 'URI: docs-germany.html.it' >> docs-germany.var
	echo 'Content-language: it' >> docs-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-germany.var
	echo >> docs-germany.var
	echo 'URI: docs-germany.html.nl' >> docs-germany.var
	echo 'Content-language: nl' >> docs-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-germany.var
	echo >> docs-germany.var
	echo 'URI: docs-germany.html.pl' >> docs-germany.var
	echo 'Content-language: pl' >> docs-germany.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-germany.var
	echo >> docs-germany.var
	echo 'URI: docs-germany.html.sl' >> docs-germany.var
	echo 'Content-language: sl' >> docs-germany.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-germany.var
	echo >> docs-germany.var
	echo 'URI: docs-germany.html.ru' >> docs-germany.var
	echo 'Content-language: ru' >> docs-germany.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-germany.var
	echo >> docs-germany.var
docs-hungary.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-hungary.html.en -oe iso-8859-1 docs.adp
docs-hungary.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-hungary.html.fr -oe iso-8859-1 docs.adp
docs-hungary.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-hungary.html.id -oe iso-8859-1 docs.adp
docs-hungary.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o docs-hungary.html.it -oe iso-8859-1 docs.adp
docs-hungary.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-hungary.html.nl -oe iso-8859-1 docs.adp
docs-hungary.html.pl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-hungary.html.pl -oe iso-8859-2 docs.adp
docs-hungary.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o docs-hungary.html.sl -oe iso-8859-2 docs.adp
docs-hungary.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o docs-hungary.html.ru -oe iso-8859-5 docs.adp

docs-hungary.var: gen_makefile.conf
	echo > docs-hungary.var
	echo 'URI: docs-hungary.html.en' >> docs-hungary.var
	echo 'Content-language: en' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.fr' >> docs-hungary.var
	echo 'Content-language: fr' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.id' >> docs-hungary.var
	echo 'Content-language: id' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.it' >> docs-hungary.var
	echo 'Content-language: it' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.nl' >> docs-hungary.var
	echo 'Content-language: nl' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.pl' >> docs-hungary.var
	echo 'Content-language: pl' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.sl' >> docs-hungary.var
	echo 'Content-language: sl' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.ru' >> docs-hungary.var
	echo 'Content-language: ru' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-hungary.var
	echo >> docs-hungary.var
docs-israel.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-israel.html.en -oe iso-8859-1 docs.adp
docs-israel.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-israel.html.fr -oe iso-8859-1 docs.adp
docs-israel.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-israel.html.id -oe iso-8859-1 docs.adp
docs-israel.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o docs-israel.html.it -oe iso-8859-1 docs.adp
docs-israel.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-israel.html.nl -oe iso-8859-1 docs.adp
docs-israel.html.pl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-israel.html.pl -oe iso-8859-2 docs.adp
docs-israel.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o docs-israel.html.sl -oe iso-8859-2 docs.adp
docs-israel.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o docs-israel.html.ru -oe iso-8859-5 docs.adp

docs-israel.var: gen_makefile.conf
	echo > docs-israel.var
	echo 'URI: docs-israel.html.en' >> docs-israel.var
	echo 'Content-language: en' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.fr' >> docs-israel.var
	echo 'Content-language: fr' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.id' >> docs-israel.var
	echo 'Content-language: id' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.it' >> docs-israel.var
	echo 'Content-language: it' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.nl' >> docs-israel.var
	echo 'Content-language: nl' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.pl' >> docs-israel.var
	echo 'Content-language: pl' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.sl' >> docs-israel.var
	echo 'Content-language: sl' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.ru' >> docs-israel.var
	echo 'Content-language: ru' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-israel.var
	echo >> docs-israel.var
docs-netherlands.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-netherlands.html.en -oe iso-8859-1 docs.adp
docs-netherlands.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-netherlands.html.fr -oe iso-8859-1 docs.adp
docs-netherlands.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-netherlands.html.id -oe iso-8859-1 docs.adp
docs-netherlands.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o docs-netherlands.html.it -oe iso-8859-1 docs.adp
docs-netherlands.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-netherlands.html.nl -oe iso-8859-1 docs.adp
docs-netherlands.html.pl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-netherlands.html.pl -oe iso-8859-2 docs.adp
docs-netherlands.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o docs-netherlands.html.sl -oe iso-8859-2 docs.adp
docs-netherlands.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o docs-netherlands.html.ru -oe iso-8859-5 docs.adp

docs-netherlands.var: gen_makefile.conf
	echo > docs-netherlands.var
	echo 'URI: docs-netherlands.html.en' >> docs-netherlands.var
	echo 'Content-language: en' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.fr' >> docs-netherlands.var
	echo 'Content-language: fr' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.id' >> docs-netherlands.var
	echo 'Content-language: id' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.it' >> docs-netherlands.var
	echo 'Content-language: it' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.nl' >> docs-netherlands.var
	echo 'Content-language: nl' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.pl' >> docs-netherlands.var
	echo 'Content-language: pl' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.sl' >> docs-netherlands.var
	echo 'Content-language: sl' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.ru' >> docs-netherlands.var
	echo 'Content-language: ru' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-netherlands.var
	echo >> docs-netherlands.var
docs-norway.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-norway.html.en -oe iso-8859-1 docs.adp
docs-norway.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-norway.html.fr -oe iso-8859-1 docs.adp
docs-norway.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-norway.html.id -oe iso-8859-1 docs.adp
docs-norway.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o docs-norway.html.it -oe iso-8859-1 docs.adp
docs-norway.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-norway.html.nl -oe iso-8859-1 docs.adp
docs-norway.html.pl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-norway.html.pl -oe iso-8859-2 docs.adp
docs-norway.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o docs-norway.html.sl -oe iso-8859-2 docs.adp
docs-norway.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o docs-norway.html.ru -oe iso-8859-5 docs.adp

docs-norway.var: gen_makefile.conf
	echo > docs-norway.var
	echo 'URI: docs-norway.html.en' >> docs-norway.var
	echo 'Content-language: en' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.fr' >> docs-norway.var
	echo 'Content-language: fr' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.id' >> docs-norway.var
	echo 'Content-language: id' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.it' >> docs-norway.var
	echo 'Content-language: it' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.nl' >> docs-norway.var
	echo 'Content-language: nl' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.pl' >> docs-norway.var
	echo 'Content-language: pl' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.sl' >> docs-norway.var
	echo 'Content-language: sl' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.ru' >> docs-norway.var
	echo 'Content-language: ru' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-norway.var
	echo >> docs-norway.var
docs-russia.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-russia.html.en -oe iso-8859-1 docs.adp
docs-russia.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-russia.html.fr -oe iso-8859-1 docs.adp
docs-russia.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-russia.html.id -oe iso-8859-1 docs.adp
docs-russia.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o docs-russia.html.it -oe iso-8859-1 docs.adp
docs-russia.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-russia.html.nl -oe iso-8859-1 docs.adp
docs-russia.html.pl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-russia.html.pl -oe iso-8859-2 docs.adp
docs-russia.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o docs-russia.html.sl -oe iso-8859-2 docs.adp
docs-russia.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o docs-russia.html.ru -oe iso-8859-5 docs.adp

docs-russia.var: gen_makefile.conf
	echo > docs-russia.var
	echo 'URI: docs-russia.html.en' >> docs-russia.var
	echo 'Content-language: en' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.fr' >> docs-russia.var
	echo 'Content-language: fr' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.id' >> docs-russia.var
	echo 'Content-language: id' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.it' >> docs-russia.var
	echo 'Content-language: it' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.nl' >> docs-russia.var
	echo 'Content-language: nl' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.pl' >> docs-russia.var
	echo 'Content-language: pl' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.sl' >> docs-russia.var
	echo 'Content-language: sl' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.ru' >> docs-russia.var
	echo 'Content-language: ru' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-russia.var
	echo >> docs-russia.var
docs-ftp.freepascal.org.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs-ftp.freepascal.org.html.en -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs-ftp.freepascal.org.html.fr -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs-ftp.freepascal.org.html.id -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o docs-ftp.freepascal.org.html.it -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs-ftp.freepascal.org.html.nl -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.pl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs-ftp.freepascal.org.html.pl -oe iso-8859-2 docs.adp
docs-ftp.freepascal.org.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o docs-ftp.freepascal.org.html.sl -oe iso-8859-2 docs.adp
docs-ftp.freepascal.org.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o docs-ftp.freepascal.org.html.ru -oe iso-8859-5 docs.adp

docs-ftp.freepascal.org.var: gen_makefile.conf
	echo > docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.en' >> docs-ftp.freepascal.org.var
	echo 'Content-language: en' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.fr' >> docs-ftp.freepascal.org.var
	echo 'Content-language: fr' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.id' >> docs-ftp.freepascal.org.var
	echo 'Content-language: id' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.it' >> docs-ftp.freepascal.org.var
	echo 'Content-language: it' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.nl' >> docs-ftp.freepascal.org.var
	echo 'Content-language: nl' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.pl' >> docs-ftp.freepascal.org.var
	echo 'Content-language: pl' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.sl' >> docs-ftp.freepascal.org.var
	echo 'Content-language: sl' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.ru' >> docs-ftp.freepascal.org.var
	echo 'Content-language: ru' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var

docs.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.adp -l en_US -m ../../default-master.adp -o docs.html.en -oe iso-8859-1 ../../templatemirror.adp
docs.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o docs.html.fr -oe iso-8859-1 ../../templatemirror.adp
docs.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o docs.html.id -oe iso-8859-1 ../../templatemirror.adp
docs.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o docs.html.it -oe iso-8859-1 ../../templatemirror.adp
docs.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o docs.html.nl -oe iso-8859-1 ../../templatemirror.adp
docs.html.pl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o docs.html.pl -oe iso-8859-2 ../../templatemirror.adp
docs.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o docs.html.sl -oe iso-8859-2 ../../templatemirror.adp
docs.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o docs.html.ru -oe iso-8859-5 ../../templatemirror.adp
docs.var: gen_makefile.conf
	echo > docs.var
	echo 'URI: docs.html.en' >> docs.var
	echo 'Content-language: en' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.fr' >> docs.var
	echo 'Content-language: fr' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.id' >> docs.var
	echo 'Content-language: id' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.it' >> docs.var
	echo 'Content-language: it' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.nl' >> docs.var
	echo 'Content-language: nl' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.pl' >> docs.var
	echo 'Content-language: pl' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.sl' >> docs.var
	echo 'Content-language: sl' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.ru' >> docs.var
	echo 'Content-language: ru' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs.var
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

all_pages: docs-australia.html.en docs-australia.html.fr docs-australia.html.id docs-australia.html.it docs-australia.html.nl docs-australia.html.pl docs-australia.html.sl docs-australia.html.ru docs-australia.var docs-austria.html.en docs-austria.html.fr docs-austria.html.id docs-austria.html.it docs-austria.html.nl docs-austria.html.pl docs-austria.html.sl docs-austria.html.ru docs-austria.var docs-germany.html.en docs-germany.html.fr docs-germany.html.id docs-germany.html.it docs-germany.html.nl docs-germany.html.pl docs-germany.html.sl docs-germany.html.ru docs-germany.var docs-hungary.html.en docs-hungary.html.fr docs-hungary.html.id docs-hungary.html.it docs-hungary.html.nl docs-hungary.html.pl docs-hungary.html.sl docs-hungary.html.ru docs-hungary.var docs-israel.html.en docs-israel.html.fr docs-israel.html.id docs-israel.html.it docs-israel.html.nl docs-israel.html.pl docs-israel.html.sl docs-israel.html.ru docs-israel.var docs-netherlands.html.en docs-netherlands.html.fr docs-netherlands.html.id docs-netherlands.html.it docs-netherlands.html.nl docs-netherlands.html.pl docs-netherlands.html.sl docs-netherlands.html.ru docs-netherlands.var docs-norway.html.en docs-norway.html.fr docs-norway.html.id docs-norway.html.it docs-norway.html.nl docs-norway.html.pl docs-norway.html.sl docs-norway.html.ru docs-norway.var docs-russia.html.en docs-russia.html.fr docs-russia.html.id docs-russia.html.it docs-russia.html.nl docs-russia.html.pl docs-russia.html.sl docs-russia.html.ru docs-russia.var docs-ftp.freepascal.org.html.en docs-ftp.freepascal.org.html.fr docs-ftp.freepascal.org.html.id docs-ftp.freepascal.org.html.it docs-ftp.freepascal.org.html.nl docs-ftp.freepascal.org.html.pl docs-ftp.freepascal.org.html.sl docs-ftp.freepascal.org.html.ru docs-ftp.freepascal.org.var docs.html.en docs.html.fr docs.html.id docs.html.it docs.html.nl docs.html.pl docs.html.sl docs.html.ru docs.var mirrors.dat


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

