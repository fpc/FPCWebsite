
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

.PHONY: all all_pages clean output_directory
default: all
all: all_pages output_directory
english: all_en_pages output_directory
sources-australia.html.bg: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/source/sources-australia.html.bg -oe iso-8859-5 sources.adp
sources-australia.html.en: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-australia.html.en -oe iso-8859-1 sources.adp
sources-australia.html.fi: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/source/sources-australia.html.fi -oe iso-8859-1 sources.adp
sources-australia.html.fr: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/source/sources-australia.html.fr -oe iso-8859-1 sources.adp
sources-australia.html.id: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/source/sources-australia.html.id -oe iso-8859-1 sources.adp
sources-australia.html.it: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/source/sources-australia.html.it -oe iso-8859-1 sources.adp
sources-australia.html.nl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/source/sources-australia.html.nl -oe iso-8859-1 sources.adp
sources-australia.html.po: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/source/sources-australia.html.po -oe iso-8859-2 sources.adp
sources-australia.html.sl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/source/sources-australia.html.sl -oe iso-8859-2 sources.adp
sources-australia.html.ru: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/source/sources-australia.html.ru -oe iso-8859-5 sources.adp
sources-australia.html: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/source
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-australia.html -oe ISO-8859-1 sources.adp

sources-australia.var: gen_makefile.conf
	echo > sources-australia.var
	echo 'URI: sources-australia.html.bg' >> sources-australia.var
	echo 'Content-language: bg' >> sources-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-australia.var
	echo >> sources-australia.var
	echo 'URI: sources-australia.html.en' >> sources-australia.var
	echo 'Content-language: en' >> sources-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-australia.var
	echo >> sources-australia.var
	echo 'URI: sources-australia.html.fi' >> sources-australia.var
	echo 'Content-language: fi' >> sources-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-australia.var
	echo >> sources-australia.var
	echo 'URI: sources-australia.html.fr' >> sources-australia.var
	echo 'Content-language: fr' >> sources-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-australia.var
	echo >> sources-australia.var
	echo 'URI: sources-australia.html.id' >> sources-australia.var
	echo 'Content-language: id' >> sources-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-australia.var
	echo >> sources-australia.var
	echo 'URI: sources-australia.html.it' >> sources-australia.var
	echo 'Content-language: it' >> sources-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-australia.var
	echo >> sources-australia.var
	echo 'URI: sources-australia.html.nl' >> sources-australia.var
	echo 'Content-language: nl' >> sources-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-australia.var
	echo >> sources-australia.var
	echo 'URI: sources-australia.html.po' >> sources-australia.var
	echo 'Content-language: pl' >> sources-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-australia.var
	echo >> sources-australia.var
	echo 'URI: sources-australia.html.sl' >> sources-australia.var
	echo 'Content-language: sl' >> sources-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-australia.var
	echo >> sources-australia.var
	echo 'URI: sources-australia.html.ru' >> sources-australia.var
	echo 'Content-language: ru' >> sources-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-australia.var
	echo >> sources-australia.var
sources-austria.html.bg: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/source/sources-austria.html.bg -oe iso-8859-5 sources.adp
sources-austria.html.en: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-austria.html.en -oe iso-8859-1 sources.adp
sources-austria.html.fi: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/source/sources-austria.html.fi -oe iso-8859-1 sources.adp
sources-austria.html.fr: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/source/sources-austria.html.fr -oe iso-8859-1 sources.adp
sources-austria.html.id: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/source/sources-austria.html.id -oe iso-8859-1 sources.adp
sources-austria.html.it: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/source/sources-austria.html.it -oe iso-8859-1 sources.adp
sources-austria.html.nl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/source/sources-austria.html.nl -oe iso-8859-1 sources.adp
sources-austria.html.po: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/source/sources-austria.html.po -oe iso-8859-2 sources.adp
sources-austria.html.sl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/source/sources-austria.html.sl -oe iso-8859-2 sources.adp
sources-austria.html.ru: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/source/sources-austria.html.ru -oe iso-8859-5 sources.adp
sources-austria.html: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/source
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-austria.html -oe ISO-8859-1 sources.adp

sources-austria.var: gen_makefile.conf
	echo > sources-austria.var
	echo 'URI: sources-austria.html.bg' >> sources-austria.var
	echo 'Content-language: bg' >> sources-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-austria.var
	echo >> sources-austria.var
	echo 'URI: sources-austria.html.en' >> sources-austria.var
	echo 'Content-language: en' >> sources-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-austria.var
	echo >> sources-austria.var
	echo 'URI: sources-austria.html.fi' >> sources-austria.var
	echo 'Content-language: fi' >> sources-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-austria.var
	echo >> sources-austria.var
	echo 'URI: sources-austria.html.fr' >> sources-austria.var
	echo 'Content-language: fr' >> sources-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-austria.var
	echo >> sources-austria.var
	echo 'URI: sources-austria.html.id' >> sources-austria.var
	echo 'Content-language: id' >> sources-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-austria.var
	echo >> sources-austria.var
	echo 'URI: sources-austria.html.it' >> sources-austria.var
	echo 'Content-language: it' >> sources-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-austria.var
	echo >> sources-austria.var
	echo 'URI: sources-austria.html.nl' >> sources-austria.var
	echo 'Content-language: nl' >> sources-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-austria.var
	echo >> sources-austria.var
	echo 'URI: sources-austria.html.po' >> sources-austria.var
	echo 'Content-language: pl' >> sources-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-austria.var
	echo >> sources-austria.var
	echo 'URI: sources-austria.html.sl' >> sources-austria.var
	echo 'Content-language: sl' >> sources-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-austria.var
	echo >> sources-austria.var
	echo 'URI: sources-austria.html.ru' >> sources-austria.var
	echo 'Content-language: ru' >> sources-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-austria.var
	echo >> sources-austria.var
sources-hungary.html.bg: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/source/sources-hungary.html.bg -oe iso-8859-5 sources.adp
sources-hungary.html.en: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-hungary.html.en -oe iso-8859-1 sources.adp
sources-hungary.html.fi: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/source/sources-hungary.html.fi -oe iso-8859-1 sources.adp
sources-hungary.html.fr: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/source/sources-hungary.html.fr -oe iso-8859-1 sources.adp
sources-hungary.html.id: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/source/sources-hungary.html.id -oe iso-8859-1 sources.adp
sources-hungary.html.it: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/source/sources-hungary.html.it -oe iso-8859-1 sources.adp
sources-hungary.html.nl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/source/sources-hungary.html.nl -oe iso-8859-1 sources.adp
sources-hungary.html.po: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/source/sources-hungary.html.po -oe iso-8859-2 sources.adp
sources-hungary.html.sl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/source/sources-hungary.html.sl -oe iso-8859-2 sources.adp
sources-hungary.html.ru: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/source/sources-hungary.html.ru -oe iso-8859-5 sources.adp
sources-hungary.html: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/source
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-hungary.html -oe ISO-8859-1 sources.adp

sources-hungary.var: gen_makefile.conf
	echo > sources-hungary.var
	echo 'URI: sources-hungary.html.bg' >> sources-hungary.var
	echo 'Content-language: bg' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.en' >> sources-hungary.var
	echo 'Content-language: en' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.fi' >> sources-hungary.var
	echo 'Content-language: fi' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.fr' >> sources-hungary.var
	echo 'Content-language: fr' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.id' >> sources-hungary.var
	echo 'Content-language: id' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.it' >> sources-hungary.var
	echo 'Content-language: it' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.nl' >> sources-hungary.var
	echo 'Content-language: nl' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.po' >> sources-hungary.var
	echo 'Content-language: pl' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.sl' >> sources-hungary.var
	echo 'Content-language: sl' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.ru' >> sources-hungary.var
	echo 'Content-language: ru' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-hungary.var
	echo >> sources-hungary.var
sources-israel.html.bg: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/source/sources-israel.html.bg -oe iso-8859-5 sources.adp
sources-israel.html.en: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-israel.html.en -oe iso-8859-1 sources.adp
sources-israel.html.fi: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/source/sources-israel.html.fi -oe iso-8859-1 sources.adp
sources-israel.html.fr: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/source/sources-israel.html.fr -oe iso-8859-1 sources.adp
sources-israel.html.id: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/source/sources-israel.html.id -oe iso-8859-1 sources.adp
sources-israel.html.it: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/source/sources-israel.html.it -oe iso-8859-1 sources.adp
sources-israel.html.nl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/source/sources-israel.html.nl -oe iso-8859-1 sources.adp
sources-israel.html.po: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/source/sources-israel.html.po -oe iso-8859-2 sources.adp
sources-israel.html.sl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/source/sources-israel.html.sl -oe iso-8859-2 sources.adp
sources-israel.html.ru: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/source/sources-israel.html.ru -oe iso-8859-5 sources.adp
sources-israel.html: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/source
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-israel.html -oe ISO-8859-1 sources.adp

sources-israel.var: gen_makefile.conf
	echo > sources-israel.var
	echo 'URI: sources-israel.html.bg' >> sources-israel.var
	echo 'Content-language: bg' >> sources-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-israel.var
	echo >> sources-israel.var
	echo 'URI: sources-israel.html.en' >> sources-israel.var
	echo 'Content-language: en' >> sources-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-israel.var
	echo >> sources-israel.var
	echo 'URI: sources-israel.html.fi' >> sources-israel.var
	echo 'Content-language: fi' >> sources-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-israel.var
	echo >> sources-israel.var
	echo 'URI: sources-israel.html.fr' >> sources-israel.var
	echo 'Content-language: fr' >> sources-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-israel.var
	echo >> sources-israel.var
	echo 'URI: sources-israel.html.id' >> sources-israel.var
	echo 'Content-language: id' >> sources-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-israel.var
	echo >> sources-israel.var
	echo 'URI: sources-israel.html.it' >> sources-israel.var
	echo 'Content-language: it' >> sources-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-israel.var
	echo >> sources-israel.var
	echo 'URI: sources-israel.html.nl' >> sources-israel.var
	echo 'Content-language: nl' >> sources-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-israel.var
	echo >> sources-israel.var
	echo 'URI: sources-israel.html.po' >> sources-israel.var
	echo 'Content-language: pl' >> sources-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-israel.var
	echo >> sources-israel.var
	echo 'URI: sources-israel.html.sl' >> sources-israel.var
	echo 'Content-language: sl' >> sources-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-israel.var
	echo >> sources-israel.var
	echo 'URI: sources-israel.html.ru' >> sources-israel.var
	echo 'Content-language: ru' >> sources-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-israel.var
	echo >> sources-israel.var
sources-netherlands.html.bg: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/source/sources-netherlands.html.bg -oe iso-8859-5 sources.adp
sources-netherlands.html.en: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-netherlands.html.en -oe iso-8859-1 sources.adp
sources-netherlands.html.fi: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/source/sources-netherlands.html.fi -oe iso-8859-1 sources.adp
sources-netherlands.html.fr: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/source/sources-netherlands.html.fr -oe iso-8859-1 sources.adp
sources-netherlands.html.id: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/source/sources-netherlands.html.id -oe iso-8859-1 sources.adp
sources-netherlands.html.it: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/source/sources-netherlands.html.it -oe iso-8859-1 sources.adp
sources-netherlands.html.nl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/source/sources-netherlands.html.nl -oe iso-8859-1 sources.adp
sources-netherlands.html.po: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/source/sources-netherlands.html.po -oe iso-8859-2 sources.adp
sources-netherlands.html.sl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/source/sources-netherlands.html.sl -oe iso-8859-2 sources.adp
sources-netherlands.html.ru: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/source/sources-netherlands.html.ru -oe iso-8859-5 sources.adp
sources-netherlands.html: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/source
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-netherlands.html -oe ISO-8859-1 sources.adp

sources-netherlands.var: gen_makefile.conf
	echo > sources-netherlands.var
	echo 'URI: sources-netherlands.html.bg' >> sources-netherlands.var
	echo 'Content-language: bg' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.en' >> sources-netherlands.var
	echo 'Content-language: en' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.fi' >> sources-netherlands.var
	echo 'Content-language: fi' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.fr' >> sources-netherlands.var
	echo 'Content-language: fr' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.id' >> sources-netherlands.var
	echo 'Content-language: id' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.it' >> sources-netherlands.var
	echo 'Content-language: it' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.nl' >> sources-netherlands.var
	echo 'Content-language: nl' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.po' >> sources-netherlands.var
	echo 'Content-language: pl' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.sl' >> sources-netherlands.var
	echo 'Content-language: sl' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.ru' >> sources-netherlands.var
	echo 'Content-language: ru' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-netherlands.var
	echo >> sources-netherlands.var
sources-norway.html.bg: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/source/sources-norway.html.bg -oe iso-8859-5 sources.adp
sources-norway.html.en: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-norway.html.en -oe iso-8859-1 sources.adp
sources-norway.html.fi: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/source/sources-norway.html.fi -oe iso-8859-1 sources.adp
sources-norway.html.fr: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/source/sources-norway.html.fr -oe iso-8859-1 sources.adp
sources-norway.html.id: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/source/sources-norway.html.id -oe iso-8859-1 sources.adp
sources-norway.html.it: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/source/sources-norway.html.it -oe iso-8859-1 sources.adp
sources-norway.html.nl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/source/sources-norway.html.nl -oe iso-8859-1 sources.adp
sources-norway.html.po: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/source/sources-norway.html.po -oe iso-8859-2 sources.adp
sources-norway.html.sl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/source/sources-norway.html.sl -oe iso-8859-2 sources.adp
sources-norway.html.ru: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/source/sources-norway.html.ru -oe iso-8859-5 sources.adp
sources-norway.html: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/source
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-norway.html -oe ISO-8859-1 sources.adp

sources-norway.var: gen_makefile.conf
	echo > sources-norway.var
	echo 'URI: sources-norway.html.bg' >> sources-norway.var
	echo 'Content-language: bg' >> sources-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-norway.var
	echo >> sources-norway.var
	echo 'URI: sources-norway.html.en' >> sources-norway.var
	echo 'Content-language: en' >> sources-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-norway.var
	echo >> sources-norway.var
	echo 'URI: sources-norway.html.fi' >> sources-norway.var
	echo 'Content-language: fi' >> sources-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-norway.var
	echo >> sources-norway.var
	echo 'URI: sources-norway.html.fr' >> sources-norway.var
	echo 'Content-language: fr' >> sources-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-norway.var
	echo >> sources-norway.var
	echo 'URI: sources-norway.html.id' >> sources-norway.var
	echo 'Content-language: id' >> sources-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-norway.var
	echo >> sources-norway.var
	echo 'URI: sources-norway.html.it' >> sources-norway.var
	echo 'Content-language: it' >> sources-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-norway.var
	echo >> sources-norway.var
	echo 'URI: sources-norway.html.nl' >> sources-norway.var
	echo 'Content-language: nl' >> sources-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-norway.var
	echo >> sources-norway.var
	echo 'URI: sources-norway.html.po' >> sources-norway.var
	echo 'Content-language: pl' >> sources-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-norway.var
	echo >> sources-norway.var
	echo 'URI: sources-norway.html.sl' >> sources-norway.var
	echo 'Content-language: sl' >> sources-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-norway.var
	echo >> sources-norway.var
	echo 'URI: sources-norway.html.ru' >> sources-norway.var
	echo 'Content-language: ru' >> sources-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-norway.var
	echo >> sources-norway.var
sources-russia.html.bg: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/source/sources-russia.html.bg -oe iso-8859-5 sources.adp
sources-russia.html.en: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-russia.html.en -oe iso-8859-1 sources.adp
sources-russia.html.fi: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/source/sources-russia.html.fi -oe iso-8859-1 sources.adp
sources-russia.html.fr: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/source/sources-russia.html.fr -oe iso-8859-1 sources.adp
sources-russia.html.id: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/source/sources-russia.html.id -oe iso-8859-1 sources.adp
sources-russia.html.it: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/source/sources-russia.html.it -oe iso-8859-1 sources.adp
sources-russia.html.nl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/source/sources-russia.html.nl -oe iso-8859-1 sources.adp
sources-russia.html.po: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/source/sources-russia.html.po -oe iso-8859-2 sources.adp
sources-russia.html.sl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/source/sources-russia.html.sl -oe iso-8859-2 sources.adp
sources-russia.html.ru: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/source/sources-russia.html.ru -oe iso-8859-5 sources.adp
sources-russia.html: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/source
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-russia.html -oe ISO-8859-1 sources.adp

sources-russia.var: gen_makefile.conf
	echo > sources-russia.var
	echo 'URI: sources-russia.html.bg' >> sources-russia.var
	echo 'Content-language: bg' >> sources-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-russia.var
	echo >> sources-russia.var
	echo 'URI: sources-russia.html.en' >> sources-russia.var
	echo 'Content-language: en' >> sources-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-russia.var
	echo >> sources-russia.var
	echo 'URI: sources-russia.html.fi' >> sources-russia.var
	echo 'Content-language: fi' >> sources-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-russia.var
	echo >> sources-russia.var
	echo 'URI: sources-russia.html.fr' >> sources-russia.var
	echo 'Content-language: fr' >> sources-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-russia.var
	echo >> sources-russia.var
	echo 'URI: sources-russia.html.id' >> sources-russia.var
	echo 'Content-language: id' >> sources-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-russia.var
	echo >> sources-russia.var
	echo 'URI: sources-russia.html.it' >> sources-russia.var
	echo 'Content-language: it' >> sources-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-russia.var
	echo >> sources-russia.var
	echo 'URI: sources-russia.html.nl' >> sources-russia.var
	echo 'Content-language: nl' >> sources-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-russia.var
	echo >> sources-russia.var
	echo 'URI: sources-russia.html.po' >> sources-russia.var
	echo 'Content-language: pl' >> sources-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-russia.var
	echo >> sources-russia.var
	echo 'URI: sources-russia.html.sl' >> sources-russia.var
	echo 'Content-language: sl' >> sources-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-russia.var
	echo >> sources-russia.var
	echo 'URI: sources-russia.html.ru' >> sources-russia.var
	echo 'Content-language: ru' >> sources-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-russia.var
	echo >> sources-russia.var
sources-ftp.freepascal.org.html.bg: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/source/sources-ftp.freepascal.org.html.bg -oe iso-8859-5 sources.adp
sources-ftp.freepascal.org.html.en: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-ftp.freepascal.org.html.en -oe iso-8859-1 sources.adp
sources-ftp.freepascal.org.html.fi: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/source/sources-ftp.freepascal.org.html.fi -oe iso-8859-1 sources.adp
sources-ftp.freepascal.org.html.fr: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/source/sources-ftp.freepascal.org.html.fr -oe iso-8859-1 sources.adp
sources-ftp.freepascal.org.html.id: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/source/sources-ftp.freepascal.org.html.id -oe iso-8859-1 sources.adp
sources-ftp.freepascal.org.html.it: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/source/sources-ftp.freepascal.org.html.it -oe iso-8859-1 sources.adp
sources-ftp.freepascal.org.html.nl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/source/sources-ftp.freepascal.org.html.nl -oe iso-8859-1 sources.adp
sources-ftp.freepascal.org.html.po: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/source/sources-ftp.freepascal.org.html.po -oe iso-8859-2 sources.adp
sources-ftp.freepascal.org.html.sl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/source/sources-ftp.freepascal.org.html.sl -oe iso-8859-2 sources.adp
sources-ftp.freepascal.org.html.ru: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/source/sources-ftp.freepascal.org.html.ru -oe iso-8859-5 sources.adp
sources-ftp.freepascal.org.html: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/source
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source/sources-ftp.freepascal.org.html -oe ISO-8859-1 sources.adp

sources-ftp.freepascal.org.var: gen_makefile.conf
	echo > sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.bg' >> sources-ftp.freepascal.org.var
	echo 'Content-language: bg' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.en' >> sources-ftp.freepascal.org.var
	echo 'Content-language: en' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.fi' >> sources-ftp.freepascal.org.var
	echo 'Content-language: fi' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.fr' >> sources-ftp.freepascal.org.var
	echo 'Content-language: fr' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.id' >> sources-ftp.freepascal.org.var
	echo 'Content-language: id' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.it' >> sources-ftp.freepascal.org.var
	echo 'Content-language: it' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.nl' >> sources-ftp.freepascal.org.var
	echo 'Content-language: nl' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.po' >> sources-ftp.freepascal.org.var
	echo 'Content-language: pl' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.sl' >> sources-ftp.freepascal.org.var
	echo 'Content-language: sl' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var
	echo 'URI: sources-ftp.freepascal.org.html.ru' >> sources-ftp.freepascal.org.var
	echo 'Content-language: ru' >> sources-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-ftp.freepascal.org.var
	echo >> sources-ftp.freepascal.org.var

sources.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o sources.html.bg -oe iso-8859-5 ../../templatemirror.adp
sources.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o sources.html.en -oe iso-8859-1 ../../templatemirror.adp
sources.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o sources.html.fi -oe iso-8859-1 ../../templatemirror.adp
sources.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o sources.html.fr -oe iso-8859-1 ../../templatemirror.adp
sources.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o sources.html.id -oe iso-8859-1 ../../templatemirror.adp
sources.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o sources.html.it -oe iso-8859-1 ../../templatemirror.adp
sources.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o sources.html.nl -oe iso-8859-1 ../../templatemirror.adp
sources.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o sources.html.po -oe iso-8859-2 ../../templatemirror.adp
sources.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o sources.html.sl -oe iso-8859-2 ../../templatemirror.adp
sources.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o sources.html.ru -oe iso-8859-5 ../../templatemirror.adp
sources.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=sources -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o sources.html -oe ISO-8859-1 ../../templatemirror.adp
sources.var: gen_makefile.conf
	echo > sources.var
	echo 'URI: sources.html.bg' >> sources.var
	echo 'Content-language: bg' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.en' >> sources.var
	echo 'Content-language: en' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.fi' >> sources.var
	echo 'Content-language: fi' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.fr' >> sources.var
	echo 'Content-language: fr' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.id' >> sources.var
	echo 'Content-language: id' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.it' >> sources.var
	echo 'Content-language: it' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.nl' >> sources.var
	echo 'Content-language: nl' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.po' >> sources.var
	echo 'Content-language: pl' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.sl' >> sources.var
	echo 'Content-language: sl' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.ru' >> sources.var
	echo 'Content-language: ru' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources.var
	echo >> sources.var

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

all_pages: mirrors.dat sources-australia.html.bg sources-australia.html.en sources-australia.html.fi sources-australia.html.fr sources-australia.html.id sources-australia.html.it sources-australia.html.nl sources-australia.html.po sources-australia.html.sl sources-australia.html.ru sources-australia.var sources-austria.html.bg sources-austria.html.en sources-austria.html.fi sources-austria.html.fr sources-austria.html.id sources-austria.html.it sources-austria.html.nl sources-austria.html.po sources-austria.html.sl sources-austria.html.ru sources-austria.var sources-hungary.html.bg sources-hungary.html.en sources-hungary.html.fi sources-hungary.html.fr sources-hungary.html.id sources-hungary.html.it sources-hungary.html.nl sources-hungary.html.po sources-hungary.html.sl sources-hungary.html.ru sources-hungary.var sources-israel.html.bg sources-israel.html.en sources-israel.html.fi sources-israel.html.fr sources-israel.html.id sources-israel.html.it sources-israel.html.nl sources-israel.html.po sources-israel.html.sl sources-israel.html.ru sources-israel.var sources-netherlands.html.bg sources-netherlands.html.en sources-netherlands.html.fi sources-netherlands.html.fr sources-netherlands.html.id sources-netherlands.html.it sources-netherlands.html.nl sources-netherlands.html.po sources-netherlands.html.sl sources-netherlands.html.ru sources-netherlands.var sources-norway.html.bg sources-norway.html.en sources-norway.html.fi sources-norway.html.fr sources-norway.html.id sources-norway.html.it sources-norway.html.nl sources-norway.html.po sources-norway.html.sl sources-norway.html.ru sources-norway.var sources-russia.html.bg sources-russia.html.en sources-russia.html.fi sources-russia.html.fr sources-russia.html.id sources-russia.html.it sources-russia.html.nl sources-russia.html.po sources-russia.html.sl sources-russia.html.ru sources-russia.var sources-ftp.freepascal.org.html.bg sources-ftp.freepascal.org.html.en sources-ftp.freepascal.org.html.fi sources-ftp.freepascal.org.html.fr sources-ftp.freepascal.org.html.id sources-ftp.freepascal.org.html.it sources-ftp.freepascal.org.html.nl sources-ftp.freepascal.org.html.po sources-ftp.freepascal.org.html.sl sources-ftp.freepascal.org.html.ru sources-ftp.freepascal.org.var sources.html.bg sources.html.en sources.html.fi sources.html.fr sources.html.id sources.html.it sources.html.nl sources.html.po sources.html.sl sources.html.ru sources.var
all_en_pages: mirrors.dat sources-australia.html sources-austria.html sources-hungary.html sources-israel.html sources-netherlands.html sources-norway.html sources-russia.html sources-ftp.freepascal.org.html sources.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
../..//down2/source:
	mkdir -p ../..//down2/source

