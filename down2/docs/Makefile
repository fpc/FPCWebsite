
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
docs-australia.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/docs/docs-australia.html.bg -oe iso-8859-5 docs.adp
docs-australia.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-australia.html.en -oe iso-8859-1 docs.adp
docs-australia.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/docs/docs-australia.html.fi -oe iso-8859-1 docs.adp
docs-australia.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/docs/docs-australia.html.fr -oe iso-8859-1 docs.adp
docs-australia.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/docs/docs-australia.html.id -oe iso-8859-1 docs.adp
docs-australia.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/docs/docs-australia.html.it -oe iso-8859-1 docs.adp
docs-australia.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/docs/docs-australia.html.nl -oe iso-8859-1 docs.adp
docs-australia.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/docs/docs-australia.html.po -oe iso-8859-2 docs.adp
docs-australia.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/docs/docs-australia.html.sl -oe iso-8859-2 docs.adp
docs-australia.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/docs/docs-australia.html.ru -oe iso-8859-5 docs.adp
docs-australia.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-australia.html -oe ISO-8859-1 docs.adp

docs-australia.var: gen_makefile.conf ../..//down/docs
	echo > docs-australia.var
	echo 'URI: docs-australia.html.bg' >> docs-australia.var
	echo 'Content-language: bg' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.en' >> docs-australia.var
	echo 'Content-language: en' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.fi' >> docs-australia.var
	echo 'Content-language: fi' >> docs-australia.var
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
	echo 'URI: docs-australia.html.po' >> docs-australia.var
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
docs-austria.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/docs/docs-austria.html.bg -oe iso-8859-5 docs.adp
docs-austria.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-austria.html.en -oe iso-8859-1 docs.adp
docs-austria.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/docs/docs-austria.html.fi -oe iso-8859-1 docs.adp
docs-austria.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/docs/docs-austria.html.fr -oe iso-8859-1 docs.adp
docs-austria.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/docs/docs-austria.html.id -oe iso-8859-1 docs.adp
docs-austria.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/docs/docs-austria.html.it -oe iso-8859-1 docs.adp
docs-austria.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/docs/docs-austria.html.nl -oe iso-8859-1 docs.adp
docs-austria.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/docs/docs-austria.html.po -oe iso-8859-2 docs.adp
docs-austria.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/docs/docs-austria.html.sl -oe iso-8859-2 docs.adp
docs-austria.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/docs/docs-austria.html.ru -oe iso-8859-5 docs.adp
docs-austria.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-austria.html -oe ISO-8859-1 docs.adp

docs-austria.var: gen_makefile.conf ../..//down/docs
	echo > docs-austria.var
	echo 'URI: docs-austria.html.bg' >> docs-austria.var
	echo 'Content-language: bg' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.en' >> docs-austria.var
	echo 'Content-language: en' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.fi' >> docs-austria.var
	echo 'Content-language: fi' >> docs-austria.var
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
	echo 'URI: docs-austria.html.po' >> docs-austria.var
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
docs-hungary.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/docs/docs-hungary.html.bg -oe iso-8859-5 docs.adp
docs-hungary.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-hungary.html.en -oe iso-8859-1 docs.adp
docs-hungary.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/docs/docs-hungary.html.fi -oe iso-8859-1 docs.adp
docs-hungary.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/docs/docs-hungary.html.fr -oe iso-8859-1 docs.adp
docs-hungary.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/docs/docs-hungary.html.id -oe iso-8859-1 docs.adp
docs-hungary.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/docs/docs-hungary.html.it -oe iso-8859-1 docs.adp
docs-hungary.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/docs/docs-hungary.html.nl -oe iso-8859-1 docs.adp
docs-hungary.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/docs/docs-hungary.html.po -oe iso-8859-2 docs.adp
docs-hungary.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/docs/docs-hungary.html.sl -oe iso-8859-2 docs.adp
docs-hungary.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/docs/docs-hungary.html.ru -oe iso-8859-5 docs.adp
docs-hungary.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-hungary.html -oe ISO-8859-1 docs.adp

docs-hungary.var: gen_makefile.conf ../..//down/docs
	echo > docs-hungary.var
	echo 'URI: docs-hungary.html.bg' >> docs-hungary.var
	echo 'Content-language: bg' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.en' >> docs-hungary.var
	echo 'Content-language: en' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.fi' >> docs-hungary.var
	echo 'Content-language: fi' >> docs-hungary.var
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
	echo 'URI: docs-hungary.html.po' >> docs-hungary.var
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
docs-israel.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/docs/docs-israel.html.bg -oe iso-8859-5 docs.adp
docs-israel.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-israel.html.en -oe iso-8859-1 docs.adp
docs-israel.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/docs/docs-israel.html.fi -oe iso-8859-1 docs.adp
docs-israel.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/docs/docs-israel.html.fr -oe iso-8859-1 docs.adp
docs-israel.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/docs/docs-israel.html.id -oe iso-8859-1 docs.adp
docs-israel.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/docs/docs-israel.html.it -oe iso-8859-1 docs.adp
docs-israel.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/docs/docs-israel.html.nl -oe iso-8859-1 docs.adp
docs-israel.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/docs/docs-israel.html.po -oe iso-8859-2 docs.adp
docs-israel.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/docs/docs-israel.html.sl -oe iso-8859-2 docs.adp
docs-israel.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/docs/docs-israel.html.ru -oe iso-8859-5 docs.adp
docs-israel.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-israel.html -oe ISO-8859-1 docs.adp

docs-israel.var: gen_makefile.conf ../..//down/docs
	echo > docs-israel.var
	echo 'URI: docs-israel.html.bg' >> docs-israel.var
	echo 'Content-language: bg' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.en' >> docs-israel.var
	echo 'Content-language: en' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.fi' >> docs-israel.var
	echo 'Content-language: fi' >> docs-israel.var
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
	echo 'URI: docs-israel.html.po' >> docs-israel.var
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
docs-netherlands.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/docs/docs-netherlands.html.bg -oe iso-8859-5 docs.adp
docs-netherlands.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-netherlands.html.en -oe iso-8859-1 docs.adp
docs-netherlands.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/docs/docs-netherlands.html.fi -oe iso-8859-1 docs.adp
docs-netherlands.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/docs/docs-netherlands.html.fr -oe iso-8859-1 docs.adp
docs-netherlands.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/docs/docs-netherlands.html.id -oe iso-8859-1 docs.adp
docs-netherlands.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/docs/docs-netherlands.html.it -oe iso-8859-1 docs.adp
docs-netherlands.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/docs/docs-netherlands.html.nl -oe iso-8859-1 docs.adp
docs-netherlands.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/docs/docs-netherlands.html.po -oe iso-8859-2 docs.adp
docs-netherlands.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/docs/docs-netherlands.html.sl -oe iso-8859-2 docs.adp
docs-netherlands.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/docs/docs-netherlands.html.ru -oe iso-8859-5 docs.adp
docs-netherlands.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-netherlands.html -oe ISO-8859-1 docs.adp

docs-netherlands.var: gen_makefile.conf ../..//down/docs
	echo > docs-netherlands.var
	echo 'URI: docs-netherlands.html.bg' >> docs-netherlands.var
	echo 'Content-language: bg' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.en' >> docs-netherlands.var
	echo 'Content-language: en' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.fi' >> docs-netherlands.var
	echo 'Content-language: fi' >> docs-netherlands.var
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
	echo 'URI: docs-netherlands.html.po' >> docs-netherlands.var
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
docs-norway.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/docs/docs-norway.html.bg -oe iso-8859-5 docs.adp
docs-norway.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-norway.html.en -oe iso-8859-1 docs.adp
docs-norway.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/docs/docs-norway.html.fi -oe iso-8859-1 docs.adp
docs-norway.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/docs/docs-norway.html.fr -oe iso-8859-1 docs.adp
docs-norway.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/docs/docs-norway.html.id -oe iso-8859-1 docs.adp
docs-norway.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/docs/docs-norway.html.it -oe iso-8859-1 docs.adp
docs-norway.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/docs/docs-norway.html.nl -oe iso-8859-1 docs.adp
docs-norway.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/docs/docs-norway.html.po -oe iso-8859-2 docs.adp
docs-norway.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/docs/docs-norway.html.sl -oe iso-8859-2 docs.adp
docs-norway.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/docs/docs-norway.html.ru -oe iso-8859-5 docs.adp
docs-norway.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-norway.html -oe ISO-8859-1 docs.adp

docs-norway.var: gen_makefile.conf ../..//down/docs
	echo > docs-norway.var
	echo 'URI: docs-norway.html.bg' >> docs-norway.var
	echo 'Content-language: bg' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.en' >> docs-norway.var
	echo 'Content-language: en' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.fi' >> docs-norway.var
	echo 'Content-language: fi' >> docs-norway.var
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
	echo 'URI: docs-norway.html.po' >> docs-norway.var
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
docs-russia.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/docs/docs-russia.html.bg -oe iso-8859-5 docs.adp
docs-russia.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-russia.html.en -oe iso-8859-1 docs.adp
docs-russia.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/docs/docs-russia.html.fi -oe iso-8859-1 docs.adp
docs-russia.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/docs/docs-russia.html.fr -oe iso-8859-1 docs.adp
docs-russia.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/docs/docs-russia.html.id -oe iso-8859-1 docs.adp
docs-russia.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/docs/docs-russia.html.it -oe iso-8859-1 docs.adp
docs-russia.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/docs/docs-russia.html.nl -oe iso-8859-1 docs.adp
docs-russia.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/docs/docs-russia.html.po -oe iso-8859-2 docs.adp
docs-russia.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/docs/docs-russia.html.sl -oe iso-8859-2 docs.adp
docs-russia.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/docs/docs-russia.html.ru -oe iso-8859-5 docs.adp
docs-russia.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-russia.html -oe ISO-8859-1 docs.adp

docs-russia.var: gen_makefile.conf ../..//down/docs
	echo > docs-russia.var
	echo 'URI: docs-russia.html.bg' >> docs-russia.var
	echo 'Content-language: bg' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.en' >> docs-russia.var
	echo 'Content-language: en' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.fi' >> docs-russia.var
	echo 'Content-language: fi' >> docs-russia.var
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
	echo 'URI: docs-russia.html.po' >> docs-russia.var
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
docs-ftp.freepascal.org.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/docs/docs-ftp.freepascal.org.html.bg -oe iso-8859-5 docs.adp
docs-ftp.freepascal.org.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-ftp.freepascal.org.html.en -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/docs/docs-ftp.freepascal.org.html.fi -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/docs/docs-ftp.freepascal.org.html.fr -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/docs/docs-ftp.freepascal.org.html.id -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/docs/docs-ftp.freepascal.org.html.it -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/docs/docs-ftp.freepascal.org.html.nl -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/docs/docs-ftp.freepascal.org.html.po -oe iso-8859-2 docs.adp
docs-ftp.freepascal.org.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/docs/docs-ftp.freepascal.org.html.sl -oe iso-8859-2 docs.adp
docs-ftp.freepascal.org.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/docs/docs-ftp.freepascal.org.html.ru -oe iso-8859-5 docs.adp
docs-ftp.freepascal.org.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs/docs-ftp.freepascal.org.html -oe ISO-8859-1 docs.adp

docs-ftp.freepascal.org.var: gen_makefile.conf ../..//down/docs
	echo > docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.bg' >> docs-ftp.freepascal.org.var
	echo 'Content-language: bg' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.en' >> docs-ftp.freepascal.org.var
	echo 'Content-language: en' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.fi' >> docs-ftp.freepascal.org.var
	echo 'Content-language: fi' >> docs-ftp.freepascal.org.var
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
	echo 'URI: docs-ftp.freepascal.org.html.po' >> docs-ftp.freepascal.org.var
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

docs.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o docs.html.bg -oe iso-8859-5 ../../templatemirror.adp
docs.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs.html.en -oe iso-8859-1 ../../templatemirror.adp
docs.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o docs.html.fi -oe iso-8859-1 ../../templatemirror.adp
docs.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o docs.html.fr -oe iso-8859-1 ../../templatemirror.adp
docs.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o docs.html.id -oe iso-8859-1 ../../templatemirror.adp
docs.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o docs.html.it -oe iso-8859-1 ../../templatemirror.adp
docs.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o docs.html.nl -oe iso-8859-1 ../../templatemirror.adp
docs.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o docs.html.po -oe iso-8859-2 ../../templatemirror.adp
docs.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o docs.html.sl -oe iso-8859-2 ../../templatemirror.adp
docs.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o docs.html.ru -oe iso-8859-5 ../../templatemirror.adp
docs.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=docs -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs.html -oe ISO-8859-1 ../../templatemirror.adp
docs.var: gen_makefile.conf ../..//down/docs
	echo > docs.var
	echo 'URI: docs.html.bg' >> docs.var
	echo 'Content-language: bg' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.en' >> docs.var
	echo 'Content-language: en' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.fi' >> docs.var
	echo 'Content-language: fi' >> docs.var
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
	echo 'URI: docs.html.po' >> docs.var
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
	echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Israel\tisrael\thttp://mirror.mirimar.net/freepascal/' >> mirrors.dat
	echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat
	echo -e 'Norway\tnorway\tftp://ftp.no.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Russia\trussia\tftp://ftp.chg.ru/pub/lang/pascal/fpc/' >> mirrors.dat
	echo -e 'ftp.freepascal.org\tftp.freepascal.org\tftp://ftp.freepascal.org/pub/fpc/' >> mirrors.dat

all_pages: mirrors.dat docs-australia.html.bg docs-australia.html.en docs-australia.html.fi docs-australia.html.fr docs-australia.html.id docs-australia.html.it docs-australia.html.nl docs-australia.html.po docs-australia.html.sl docs-australia.html.ru docs-australia.var docs-austria.html.bg docs-austria.html.en docs-austria.html.fi docs-austria.html.fr docs-austria.html.id docs-austria.html.it docs-austria.html.nl docs-austria.html.po docs-austria.html.sl docs-austria.html.ru docs-austria.var docs-hungary.html.bg docs-hungary.html.en docs-hungary.html.fi docs-hungary.html.fr docs-hungary.html.id docs-hungary.html.it docs-hungary.html.nl docs-hungary.html.po docs-hungary.html.sl docs-hungary.html.ru docs-hungary.var docs-israel.html.bg docs-israel.html.en docs-israel.html.fi docs-israel.html.fr docs-israel.html.id docs-israel.html.it docs-israel.html.nl docs-israel.html.po docs-israel.html.sl docs-israel.html.ru docs-israel.var docs-netherlands.html.bg docs-netherlands.html.en docs-netherlands.html.fi docs-netherlands.html.fr docs-netherlands.html.id docs-netherlands.html.it docs-netherlands.html.nl docs-netherlands.html.po docs-netherlands.html.sl docs-netherlands.html.ru docs-netherlands.var docs-norway.html.bg docs-norway.html.en docs-norway.html.fi docs-norway.html.fr docs-norway.html.id docs-norway.html.it docs-norway.html.nl docs-norway.html.po docs-norway.html.sl docs-norway.html.ru docs-norway.var docs-russia.html.bg docs-russia.html.en docs-russia.html.fi docs-russia.html.fr docs-russia.html.id docs-russia.html.it docs-russia.html.nl docs-russia.html.po docs-russia.html.sl docs-russia.html.ru docs-russia.var docs-ftp.freepascal.org.html.bg docs-ftp.freepascal.org.html.en docs-ftp.freepascal.org.html.fi docs-ftp.freepascal.org.html.fr docs-ftp.freepascal.org.html.id docs-ftp.freepascal.org.html.it docs-ftp.freepascal.org.html.nl docs-ftp.freepascal.org.html.po docs-ftp.freepascal.org.html.sl docs-ftp.freepascal.org.html.ru docs-ftp.freepascal.org.var docs.html.bg docs.html.en docs.html.fi docs.html.fr docs.html.id docs.html.it docs.html.nl docs.html.po docs.html.sl docs.html.ru docs.var
all_en_pages: mirrors.dat docs-australia.html docs-austria.html docs-hungary.html docs-israel.html docs-netherlands.html docs-norway.html docs-russia.html docs-ftp.freepascal.org.html docs.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
../..//down/docs:
	mkdir -p ../..//down/docs

