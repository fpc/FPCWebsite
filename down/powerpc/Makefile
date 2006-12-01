
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
linux-australia.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o linux-australia.html.bg -oe iso-8859-5 linux.adp
linux-australia.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-australia.html.en -oe iso-8859-1 linux.adp
linux-australia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-australia.html.fr -oe iso-8859-1 linux.adp
linux-australia.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-australia.html.id -oe iso-8859-1 linux.adp
linux-australia.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o linux-australia.html.it -oe iso-8859-1 linux.adp
linux-australia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-australia.html.nl -oe iso-8859-1 linux.adp
linux-australia.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-australia.html.po -oe iso-8859-2 linux.adp
linux-australia.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o linux-australia.html.sl -oe iso-8859-2 linux.adp
linux-australia.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o linux-australia.html.ru -oe iso-8859-5 linux.adp

linux-australia.var: gen_makefile.conf
	echo > linux-australia.var
	echo 'URI: linux-australia.html.bg' >> linux-australia.var
	echo 'Content-language: bg' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.en' >> linux-australia.var
	echo 'Content-language: en' >> linux-australia.var
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
macos-australia.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macos-australia.html.bg -oe iso-8859-5 macos.adp
macos-australia.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-australia.html.en -oe iso-8859-1 macos.adp
macos-australia.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-australia.html.fr -oe iso-8859-1 macos.adp
macos-australia.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-australia.html.id -oe iso-8859-1 macos.adp
macos-australia.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macos-australia.html.it -oe iso-8859-1 macos.adp
macos-australia.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-australia.html.nl -oe iso-8859-1 macos.adp
macos-australia.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-australia.html.po -oe iso-8859-2 macos.adp
macos-australia.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macos-australia.html.sl -oe iso-8859-2 macos.adp
macos-australia.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macos-australia.html.ru -oe iso-8859-5 macos.adp

macos-australia.var: gen_makefile.conf
	echo > macos-australia.var
	echo 'URI: macos-australia.html.bg' >> macos-australia.var
	echo 'Content-language: bg' >> macos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.en' >> macos-australia.var
	echo 'Content-language: en' >> macos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.fr' >> macos-australia.var
	echo 'Content-language: fr' >> macos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.id' >> macos-australia.var
	echo 'Content-language: id' >> macos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.it' >> macos-australia.var
	echo 'Content-language: it' >> macos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.nl' >> macos-australia.var
	echo 'Content-language: nl' >> macos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.po' >> macos-australia.var
	echo 'Content-language: pl' >> macos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.sl' >> macos-australia.var
	echo 'Content-language: sl' >> macos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.ru' >> macos-australia.var
	echo 'Content-language: ru' >> macos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-australia.var
	echo >> macos-australia.var
macosx-australia.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macosx-australia.html.bg -oe iso-8859-5 macosx.adp
macosx-australia.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-australia.html.en -oe iso-8859-1 macosx.adp
macosx-australia.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-australia.html.fr -oe iso-8859-1 macosx.adp
macosx-australia.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-australia.html.id -oe iso-8859-1 macosx.adp
macosx-australia.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macosx-australia.html.it -oe iso-8859-1 macosx.adp
macosx-australia.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-australia.html.nl -oe iso-8859-1 macosx.adp
macosx-australia.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-australia.html.po -oe iso-8859-2 macosx.adp
macosx-australia.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macosx-australia.html.sl -oe iso-8859-2 macosx.adp
macosx-australia.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macosx-australia.html.ru -oe iso-8859-5 macosx.adp

macosx-australia.var: gen_makefile.conf
	echo > macosx-australia.var
	echo 'URI: macosx-australia.html.bg' >> macosx-australia.var
	echo 'Content-language: bg' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.en' >> macosx-australia.var
	echo 'Content-language: en' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.fr' >> macosx-australia.var
	echo 'Content-language: fr' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.id' >> macosx-australia.var
	echo 'Content-language: id' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.it' >> macosx-australia.var
	echo 'Content-language: it' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.nl' >> macosx-australia.var
	echo 'Content-language: nl' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.po' >> macosx-australia.var
	echo 'Content-language: pl' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.sl' >> macosx-australia.var
	echo 'Content-language: sl' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.ru' >> macosx-australia.var
	echo 'Content-language: ru' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-australia.var
	echo >> macosx-australia.var
morphos-australia.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o morphos-australia.html.bg -oe iso-8859-5 morphos.adp
morphos-australia.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-australia.html.en -oe iso-8859-1 morphos.adp
morphos-australia.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-australia.html.fr -oe iso-8859-1 morphos.adp
morphos-australia.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-australia.html.id -oe iso-8859-1 morphos.adp
morphos-australia.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o morphos-australia.html.it -oe iso-8859-1 morphos.adp
morphos-australia.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-australia.html.nl -oe iso-8859-1 morphos.adp
morphos-australia.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-australia.html.po -oe iso-8859-2 morphos.adp
morphos-australia.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o morphos-australia.html.sl -oe iso-8859-2 morphos.adp
morphos-australia.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o morphos-australia.html.ru -oe iso-8859-5 morphos.adp

morphos-australia.var: gen_makefile.conf
	echo > morphos-australia.var
	echo 'URI: morphos-australia.html.bg' >> morphos-australia.var
	echo 'Content-language: bg' >> morphos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.en' >> morphos-australia.var
	echo 'Content-language: en' >> morphos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.fr' >> morphos-australia.var
	echo 'Content-language: fr' >> morphos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.id' >> morphos-australia.var
	echo 'Content-language: id' >> morphos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.it' >> morphos-australia.var
	echo 'Content-language: it' >> morphos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.nl' >> morphos-australia.var
	echo 'Content-language: nl' >> morphos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.po' >> morphos-australia.var
	echo 'Content-language: pl' >> morphos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.sl' >> morphos-australia.var
	echo 'Content-language: sl' >> morphos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.ru' >> morphos-australia.var
	echo 'Content-language: ru' >> morphos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-australia.var
	echo >> morphos-australia.var
linux-austria.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o linux-austria.html.bg -oe iso-8859-5 linux.adp
linux-austria.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-austria.html.en -oe iso-8859-1 linux.adp
linux-austria.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-austria.html.fr -oe iso-8859-1 linux.adp
linux-austria.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-austria.html.id -oe iso-8859-1 linux.adp
linux-austria.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o linux-austria.html.it -oe iso-8859-1 linux.adp
linux-austria.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-austria.html.nl -oe iso-8859-1 linux.adp
linux-austria.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-austria.html.po -oe iso-8859-2 linux.adp
linux-austria.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o linux-austria.html.sl -oe iso-8859-2 linux.adp
linux-austria.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o linux-austria.html.ru -oe iso-8859-5 linux.adp

linux-austria.var: gen_makefile.conf
	echo > linux-austria.var
	echo 'URI: linux-austria.html.bg' >> linux-austria.var
	echo 'Content-language: bg' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.en' >> linux-austria.var
	echo 'Content-language: en' >> linux-austria.var
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
macos-austria.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macos-austria.html.bg -oe iso-8859-5 macos.adp
macos-austria.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-austria.html.en -oe iso-8859-1 macos.adp
macos-austria.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-austria.html.fr -oe iso-8859-1 macos.adp
macos-austria.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-austria.html.id -oe iso-8859-1 macos.adp
macos-austria.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macos-austria.html.it -oe iso-8859-1 macos.adp
macos-austria.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-austria.html.nl -oe iso-8859-1 macos.adp
macos-austria.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-austria.html.po -oe iso-8859-2 macos.adp
macos-austria.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macos-austria.html.sl -oe iso-8859-2 macos.adp
macos-austria.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macos-austria.html.ru -oe iso-8859-5 macos.adp

macos-austria.var: gen_makefile.conf
	echo > macos-austria.var
	echo 'URI: macos-austria.html.bg' >> macos-austria.var
	echo 'Content-language: bg' >> macos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.en' >> macos-austria.var
	echo 'Content-language: en' >> macos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.fr' >> macos-austria.var
	echo 'Content-language: fr' >> macos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.id' >> macos-austria.var
	echo 'Content-language: id' >> macos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.it' >> macos-austria.var
	echo 'Content-language: it' >> macos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.nl' >> macos-austria.var
	echo 'Content-language: nl' >> macos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.po' >> macos-austria.var
	echo 'Content-language: pl' >> macos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.sl' >> macos-austria.var
	echo 'Content-language: sl' >> macos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.ru' >> macos-austria.var
	echo 'Content-language: ru' >> macos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-austria.var
	echo >> macos-austria.var
macosx-austria.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macosx-austria.html.bg -oe iso-8859-5 macosx.adp
macosx-austria.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-austria.html.en -oe iso-8859-1 macosx.adp
macosx-austria.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-austria.html.fr -oe iso-8859-1 macosx.adp
macosx-austria.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-austria.html.id -oe iso-8859-1 macosx.adp
macosx-austria.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macosx-austria.html.it -oe iso-8859-1 macosx.adp
macosx-austria.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-austria.html.nl -oe iso-8859-1 macosx.adp
macosx-austria.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-austria.html.po -oe iso-8859-2 macosx.adp
macosx-austria.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macosx-austria.html.sl -oe iso-8859-2 macosx.adp
macosx-austria.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macosx-austria.html.ru -oe iso-8859-5 macosx.adp

macosx-austria.var: gen_makefile.conf
	echo > macosx-austria.var
	echo 'URI: macosx-austria.html.bg' >> macosx-austria.var
	echo 'Content-language: bg' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.en' >> macosx-austria.var
	echo 'Content-language: en' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.fr' >> macosx-austria.var
	echo 'Content-language: fr' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.id' >> macosx-austria.var
	echo 'Content-language: id' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.it' >> macosx-austria.var
	echo 'Content-language: it' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.nl' >> macosx-austria.var
	echo 'Content-language: nl' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.po' >> macosx-austria.var
	echo 'Content-language: pl' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.sl' >> macosx-austria.var
	echo 'Content-language: sl' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.ru' >> macosx-austria.var
	echo 'Content-language: ru' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-austria.var
	echo >> macosx-austria.var
morphos-austria.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o morphos-austria.html.bg -oe iso-8859-5 morphos.adp
morphos-austria.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-austria.html.en -oe iso-8859-1 morphos.adp
morphos-austria.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-austria.html.fr -oe iso-8859-1 morphos.adp
morphos-austria.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-austria.html.id -oe iso-8859-1 morphos.adp
morphos-austria.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o morphos-austria.html.it -oe iso-8859-1 morphos.adp
morphos-austria.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-austria.html.nl -oe iso-8859-1 morphos.adp
morphos-austria.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-austria.html.po -oe iso-8859-2 morphos.adp
morphos-austria.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o morphos-austria.html.sl -oe iso-8859-2 morphos.adp
morphos-austria.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o morphos-austria.html.ru -oe iso-8859-5 morphos.adp

morphos-austria.var: gen_makefile.conf
	echo > morphos-austria.var
	echo 'URI: morphos-austria.html.bg' >> morphos-austria.var
	echo 'Content-language: bg' >> morphos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.en' >> morphos-austria.var
	echo 'Content-language: en' >> morphos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.fr' >> morphos-austria.var
	echo 'Content-language: fr' >> morphos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.id' >> morphos-austria.var
	echo 'Content-language: id' >> morphos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.it' >> morphos-austria.var
	echo 'Content-language: it' >> morphos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.nl' >> morphos-austria.var
	echo 'Content-language: nl' >> morphos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.po' >> morphos-austria.var
	echo 'Content-language: pl' >> morphos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.sl' >> morphos-austria.var
	echo 'Content-language: sl' >> morphos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.ru' >> morphos-austria.var
	echo 'Content-language: ru' >> morphos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-austria.var
	echo >> morphos-austria.var
linux-germany.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o linux-germany.html.bg -oe iso-8859-5 linux.adp
linux-germany.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-germany.html.en -oe iso-8859-1 linux.adp
linux-germany.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-germany.html.fr -oe iso-8859-1 linux.adp
linux-germany.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-germany.html.id -oe iso-8859-1 linux.adp
linux-germany.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o linux-germany.html.it -oe iso-8859-1 linux.adp
linux-germany.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-germany.html.nl -oe iso-8859-1 linux.adp
linux-germany.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-germany.html.po -oe iso-8859-2 linux.adp
linux-germany.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o linux-germany.html.sl -oe iso-8859-2 linux.adp
linux-germany.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o linux-germany.html.ru -oe iso-8859-5 linux.adp

linux-germany.var: gen_makefile.conf
	echo > linux-germany.var
	echo 'URI: linux-germany.html.bg' >> linux-germany.var
	echo 'Content-language: bg' >> linux-germany.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.en' >> linux-germany.var
	echo 'Content-language: en' >> linux-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.fr' >> linux-germany.var
	echo 'Content-language: fr' >> linux-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.id' >> linux-germany.var
	echo 'Content-language: id' >> linux-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.it' >> linux-germany.var
	echo 'Content-language: it' >> linux-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.nl' >> linux-germany.var
	echo 'Content-language: nl' >> linux-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.po' >> linux-germany.var
	echo 'Content-language: pl' >> linux-germany.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.sl' >> linux-germany.var
	echo 'Content-language: sl' >> linux-germany.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.ru' >> linux-germany.var
	echo 'Content-language: ru' >> linux-germany.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-germany.var
	echo >> linux-germany.var
macos-germany.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macos-germany.html.bg -oe iso-8859-5 macos.adp
macos-germany.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-germany.html.en -oe iso-8859-1 macos.adp
macos-germany.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-germany.html.fr -oe iso-8859-1 macos.adp
macos-germany.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-germany.html.id -oe iso-8859-1 macos.adp
macos-germany.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macos-germany.html.it -oe iso-8859-1 macos.adp
macos-germany.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-germany.html.nl -oe iso-8859-1 macos.adp
macos-germany.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-germany.html.po -oe iso-8859-2 macos.adp
macos-germany.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macos-germany.html.sl -oe iso-8859-2 macos.adp
macos-germany.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macos-germany.html.ru -oe iso-8859-5 macos.adp

macos-germany.var: gen_makefile.conf
	echo > macos-germany.var
	echo 'URI: macos-germany.html.bg' >> macos-germany.var
	echo 'Content-language: bg' >> macos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-germany.var
	echo >> macos-germany.var
	echo 'URI: macos-germany.html.en' >> macos-germany.var
	echo 'Content-language: en' >> macos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-germany.var
	echo >> macos-germany.var
	echo 'URI: macos-germany.html.fr' >> macos-germany.var
	echo 'Content-language: fr' >> macos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-germany.var
	echo >> macos-germany.var
	echo 'URI: macos-germany.html.id' >> macos-germany.var
	echo 'Content-language: id' >> macos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-germany.var
	echo >> macos-germany.var
	echo 'URI: macos-germany.html.it' >> macos-germany.var
	echo 'Content-language: it' >> macos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-germany.var
	echo >> macos-germany.var
	echo 'URI: macos-germany.html.nl' >> macos-germany.var
	echo 'Content-language: nl' >> macos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-germany.var
	echo >> macos-germany.var
	echo 'URI: macos-germany.html.po' >> macos-germany.var
	echo 'Content-language: pl' >> macos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-germany.var
	echo >> macos-germany.var
	echo 'URI: macos-germany.html.sl' >> macos-germany.var
	echo 'Content-language: sl' >> macos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-germany.var
	echo >> macos-germany.var
	echo 'URI: macos-germany.html.ru' >> macos-germany.var
	echo 'Content-language: ru' >> macos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-germany.var
	echo >> macos-germany.var
macosx-germany.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macosx-germany.html.bg -oe iso-8859-5 macosx.adp
macosx-germany.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-germany.html.en -oe iso-8859-1 macosx.adp
macosx-germany.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-germany.html.fr -oe iso-8859-1 macosx.adp
macosx-germany.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-germany.html.id -oe iso-8859-1 macosx.adp
macosx-germany.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macosx-germany.html.it -oe iso-8859-1 macosx.adp
macosx-germany.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-germany.html.nl -oe iso-8859-1 macosx.adp
macosx-germany.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-germany.html.po -oe iso-8859-2 macosx.adp
macosx-germany.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macosx-germany.html.sl -oe iso-8859-2 macosx.adp
macosx-germany.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macosx-germany.html.ru -oe iso-8859-5 macosx.adp

macosx-germany.var: gen_makefile.conf
	echo > macosx-germany.var
	echo 'URI: macosx-germany.html.bg' >> macosx-germany.var
	echo 'Content-language: bg' >> macosx-germany.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-germany.var
	echo >> macosx-germany.var
	echo 'URI: macosx-germany.html.en' >> macosx-germany.var
	echo 'Content-language: en' >> macosx-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-germany.var
	echo >> macosx-germany.var
	echo 'URI: macosx-germany.html.fr' >> macosx-germany.var
	echo 'Content-language: fr' >> macosx-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-germany.var
	echo >> macosx-germany.var
	echo 'URI: macosx-germany.html.id' >> macosx-germany.var
	echo 'Content-language: id' >> macosx-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-germany.var
	echo >> macosx-germany.var
	echo 'URI: macosx-germany.html.it' >> macosx-germany.var
	echo 'Content-language: it' >> macosx-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-germany.var
	echo >> macosx-germany.var
	echo 'URI: macosx-germany.html.nl' >> macosx-germany.var
	echo 'Content-language: nl' >> macosx-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-germany.var
	echo >> macosx-germany.var
	echo 'URI: macosx-germany.html.po' >> macosx-germany.var
	echo 'Content-language: pl' >> macosx-germany.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-germany.var
	echo >> macosx-germany.var
	echo 'URI: macosx-germany.html.sl' >> macosx-germany.var
	echo 'Content-language: sl' >> macosx-germany.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-germany.var
	echo >> macosx-germany.var
	echo 'URI: macosx-germany.html.ru' >> macosx-germany.var
	echo 'Content-language: ru' >> macosx-germany.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-germany.var
	echo >> macosx-germany.var
morphos-germany.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o morphos-germany.html.bg -oe iso-8859-5 morphos.adp
morphos-germany.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-germany.html.en -oe iso-8859-1 morphos.adp
morphos-germany.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-germany.html.fr -oe iso-8859-1 morphos.adp
morphos-germany.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-germany.html.id -oe iso-8859-1 morphos.adp
morphos-germany.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o morphos-germany.html.it -oe iso-8859-1 morphos.adp
morphos-germany.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-germany.html.nl -oe iso-8859-1 morphos.adp
morphos-germany.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-germany.html.po -oe iso-8859-2 morphos.adp
morphos-germany.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o morphos-germany.html.sl -oe iso-8859-2 morphos.adp
morphos-germany.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -p mirrorsuffix=germany -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o morphos-germany.html.ru -oe iso-8859-5 morphos.adp

morphos-germany.var: gen_makefile.conf
	echo > morphos-germany.var
	echo 'URI: morphos-germany.html.bg' >> morphos-germany.var
	echo 'Content-language: bg' >> morphos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-germany.var
	echo >> morphos-germany.var
	echo 'URI: morphos-germany.html.en' >> morphos-germany.var
	echo 'Content-language: en' >> morphos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-germany.var
	echo >> morphos-germany.var
	echo 'URI: morphos-germany.html.fr' >> morphos-germany.var
	echo 'Content-language: fr' >> morphos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-germany.var
	echo >> morphos-germany.var
	echo 'URI: morphos-germany.html.id' >> morphos-germany.var
	echo 'Content-language: id' >> morphos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-germany.var
	echo >> morphos-germany.var
	echo 'URI: morphos-germany.html.it' >> morphos-germany.var
	echo 'Content-language: it' >> morphos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-germany.var
	echo >> morphos-germany.var
	echo 'URI: morphos-germany.html.nl' >> morphos-germany.var
	echo 'Content-language: nl' >> morphos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-germany.var
	echo >> morphos-germany.var
	echo 'URI: morphos-germany.html.po' >> morphos-germany.var
	echo 'Content-language: pl' >> morphos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-germany.var
	echo >> morphos-germany.var
	echo 'URI: morphos-germany.html.sl' >> morphos-germany.var
	echo 'Content-language: sl' >> morphos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-germany.var
	echo >> morphos-germany.var
	echo 'URI: morphos-germany.html.ru' >> morphos-germany.var
	echo 'Content-language: ru' >> morphos-germany.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-germany.var
	echo >> morphos-germany.var
linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o linux-hungary.html.bg -oe iso-8859-5 linux.adp
linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-hungary.html.en -oe iso-8859-1 linux.adp
linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-hungary.html.fr -oe iso-8859-1 linux.adp
linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-hungary.html.id -oe iso-8859-1 linux.adp
linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o linux-hungary.html.it -oe iso-8859-1 linux.adp
linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-hungary.html.nl -oe iso-8859-1 linux.adp
linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-hungary.html.po -oe iso-8859-2 linux.adp
linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o linux-hungary.html.sl -oe iso-8859-2 linux.adp
linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o linux-hungary.html.ru -oe iso-8859-5 linux.adp

linux-hungary.var: gen_makefile.conf
	echo > linux-hungary.var
	echo 'URI: linux-hungary.html.bg' >> linux-hungary.var
	echo 'Content-language: bg' >> linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.en' >> linux-hungary.var
	echo 'Content-language: en' >> linux-hungary.var
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
macos-hungary.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macos-hungary.html.bg -oe iso-8859-5 macos.adp
macos-hungary.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-hungary.html.en -oe iso-8859-1 macos.adp
macos-hungary.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-hungary.html.fr -oe iso-8859-1 macos.adp
macos-hungary.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-hungary.html.id -oe iso-8859-1 macos.adp
macos-hungary.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macos-hungary.html.it -oe iso-8859-1 macos.adp
macos-hungary.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-hungary.html.nl -oe iso-8859-1 macos.adp
macos-hungary.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-hungary.html.po -oe iso-8859-2 macos.adp
macos-hungary.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macos-hungary.html.sl -oe iso-8859-2 macos.adp
macos-hungary.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macos-hungary.html.ru -oe iso-8859-5 macos.adp

macos-hungary.var: gen_makefile.conf
	echo > macos-hungary.var
	echo 'URI: macos-hungary.html.bg' >> macos-hungary.var
	echo 'Content-language: bg' >> macos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.en' >> macos-hungary.var
	echo 'Content-language: en' >> macos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.fr' >> macos-hungary.var
	echo 'Content-language: fr' >> macos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.id' >> macos-hungary.var
	echo 'Content-language: id' >> macos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.it' >> macos-hungary.var
	echo 'Content-language: it' >> macos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.nl' >> macos-hungary.var
	echo 'Content-language: nl' >> macos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.po' >> macos-hungary.var
	echo 'Content-language: pl' >> macos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.sl' >> macos-hungary.var
	echo 'Content-language: sl' >> macos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.ru' >> macos-hungary.var
	echo 'Content-language: ru' >> macos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-hungary.var
	echo >> macos-hungary.var
macosx-hungary.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macosx-hungary.html.bg -oe iso-8859-5 macosx.adp
macosx-hungary.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-hungary.html.en -oe iso-8859-1 macosx.adp
macosx-hungary.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-hungary.html.fr -oe iso-8859-1 macosx.adp
macosx-hungary.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-hungary.html.id -oe iso-8859-1 macosx.adp
macosx-hungary.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macosx-hungary.html.it -oe iso-8859-1 macosx.adp
macosx-hungary.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-hungary.html.nl -oe iso-8859-1 macosx.adp
macosx-hungary.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-hungary.html.po -oe iso-8859-2 macosx.adp
macosx-hungary.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macosx-hungary.html.sl -oe iso-8859-2 macosx.adp
macosx-hungary.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macosx-hungary.html.ru -oe iso-8859-5 macosx.adp

macosx-hungary.var: gen_makefile.conf
	echo > macosx-hungary.var
	echo 'URI: macosx-hungary.html.bg' >> macosx-hungary.var
	echo 'Content-language: bg' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.en' >> macosx-hungary.var
	echo 'Content-language: en' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.fr' >> macosx-hungary.var
	echo 'Content-language: fr' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.id' >> macosx-hungary.var
	echo 'Content-language: id' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.it' >> macosx-hungary.var
	echo 'Content-language: it' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.nl' >> macosx-hungary.var
	echo 'Content-language: nl' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.po' >> macosx-hungary.var
	echo 'Content-language: pl' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.sl' >> macosx-hungary.var
	echo 'Content-language: sl' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.ru' >> macosx-hungary.var
	echo 'Content-language: ru' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-hungary.var
	echo >> macosx-hungary.var
morphos-hungary.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o morphos-hungary.html.bg -oe iso-8859-5 morphos.adp
morphos-hungary.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-hungary.html.en -oe iso-8859-1 morphos.adp
morphos-hungary.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-hungary.html.fr -oe iso-8859-1 morphos.adp
morphos-hungary.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-hungary.html.id -oe iso-8859-1 morphos.adp
morphos-hungary.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o morphos-hungary.html.it -oe iso-8859-1 morphos.adp
morphos-hungary.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-hungary.html.nl -oe iso-8859-1 morphos.adp
morphos-hungary.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-hungary.html.po -oe iso-8859-2 morphos.adp
morphos-hungary.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o morphos-hungary.html.sl -oe iso-8859-2 morphos.adp
morphos-hungary.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o morphos-hungary.html.ru -oe iso-8859-5 morphos.adp

morphos-hungary.var: gen_makefile.conf
	echo > morphos-hungary.var
	echo 'URI: morphos-hungary.html.bg' >> morphos-hungary.var
	echo 'Content-language: bg' >> morphos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.en' >> morphos-hungary.var
	echo 'Content-language: en' >> morphos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.fr' >> morphos-hungary.var
	echo 'Content-language: fr' >> morphos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.id' >> morphos-hungary.var
	echo 'Content-language: id' >> morphos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.it' >> morphos-hungary.var
	echo 'Content-language: it' >> morphos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.nl' >> morphos-hungary.var
	echo 'Content-language: nl' >> morphos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.po' >> morphos-hungary.var
	echo 'Content-language: pl' >> morphos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.sl' >> morphos-hungary.var
	echo 'Content-language: sl' >> morphos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.ru' >> morphos-hungary.var
	echo 'Content-language: ru' >> morphos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-hungary.var
	echo >> morphos-hungary.var
linux-israel.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o linux-israel.html.bg -oe iso-8859-5 linux.adp
linux-israel.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-israel.html.en -oe iso-8859-1 linux.adp
linux-israel.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-israel.html.fr -oe iso-8859-1 linux.adp
linux-israel.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-israel.html.id -oe iso-8859-1 linux.adp
linux-israel.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o linux-israel.html.it -oe iso-8859-1 linux.adp
linux-israel.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-israel.html.nl -oe iso-8859-1 linux.adp
linux-israel.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-israel.html.po -oe iso-8859-2 linux.adp
linux-israel.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o linux-israel.html.sl -oe iso-8859-2 linux.adp
linux-israel.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o linux-israel.html.ru -oe iso-8859-5 linux.adp

linux-israel.var: gen_makefile.conf
	echo > linux-israel.var
	echo 'URI: linux-israel.html.bg' >> linux-israel.var
	echo 'Content-language: bg' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.en' >> linux-israel.var
	echo 'Content-language: en' >> linux-israel.var
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
macos-israel.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macos-israel.html.bg -oe iso-8859-5 macos.adp
macos-israel.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-israel.html.en -oe iso-8859-1 macos.adp
macos-israel.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-israel.html.fr -oe iso-8859-1 macos.adp
macos-israel.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-israel.html.id -oe iso-8859-1 macos.adp
macos-israel.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macos-israel.html.it -oe iso-8859-1 macos.adp
macos-israel.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-israel.html.nl -oe iso-8859-1 macos.adp
macos-israel.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-israel.html.po -oe iso-8859-2 macos.adp
macos-israel.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macos-israel.html.sl -oe iso-8859-2 macos.adp
macos-israel.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macos-israel.html.ru -oe iso-8859-5 macos.adp

macos-israel.var: gen_makefile.conf
	echo > macos-israel.var
	echo 'URI: macos-israel.html.bg' >> macos-israel.var
	echo 'Content-language: bg' >> macos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.en' >> macos-israel.var
	echo 'Content-language: en' >> macos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.fr' >> macos-israel.var
	echo 'Content-language: fr' >> macos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.id' >> macos-israel.var
	echo 'Content-language: id' >> macos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.it' >> macos-israel.var
	echo 'Content-language: it' >> macos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.nl' >> macos-israel.var
	echo 'Content-language: nl' >> macos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.po' >> macos-israel.var
	echo 'Content-language: pl' >> macos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.sl' >> macos-israel.var
	echo 'Content-language: sl' >> macos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.ru' >> macos-israel.var
	echo 'Content-language: ru' >> macos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-israel.var
	echo >> macos-israel.var
macosx-israel.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macosx-israel.html.bg -oe iso-8859-5 macosx.adp
macosx-israel.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-israel.html.en -oe iso-8859-1 macosx.adp
macosx-israel.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-israel.html.fr -oe iso-8859-1 macosx.adp
macosx-israel.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-israel.html.id -oe iso-8859-1 macosx.adp
macosx-israel.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macosx-israel.html.it -oe iso-8859-1 macosx.adp
macosx-israel.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-israel.html.nl -oe iso-8859-1 macosx.adp
macosx-israel.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-israel.html.po -oe iso-8859-2 macosx.adp
macosx-israel.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macosx-israel.html.sl -oe iso-8859-2 macosx.adp
macosx-israel.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macosx-israel.html.ru -oe iso-8859-5 macosx.adp

macosx-israel.var: gen_makefile.conf
	echo > macosx-israel.var
	echo 'URI: macosx-israel.html.bg' >> macosx-israel.var
	echo 'Content-language: bg' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.en' >> macosx-israel.var
	echo 'Content-language: en' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.fr' >> macosx-israel.var
	echo 'Content-language: fr' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.id' >> macosx-israel.var
	echo 'Content-language: id' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.it' >> macosx-israel.var
	echo 'Content-language: it' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.nl' >> macosx-israel.var
	echo 'Content-language: nl' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.po' >> macosx-israel.var
	echo 'Content-language: pl' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.sl' >> macosx-israel.var
	echo 'Content-language: sl' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.ru' >> macosx-israel.var
	echo 'Content-language: ru' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-israel.var
	echo >> macosx-israel.var
morphos-israel.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o morphos-israel.html.bg -oe iso-8859-5 morphos.adp
morphos-israel.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-israel.html.en -oe iso-8859-1 morphos.adp
morphos-israel.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-israel.html.fr -oe iso-8859-1 morphos.adp
morphos-israel.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-israel.html.id -oe iso-8859-1 morphos.adp
morphos-israel.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o morphos-israel.html.it -oe iso-8859-1 morphos.adp
morphos-israel.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-israel.html.nl -oe iso-8859-1 morphos.adp
morphos-israel.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-israel.html.po -oe iso-8859-2 morphos.adp
morphos-israel.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o morphos-israel.html.sl -oe iso-8859-2 morphos.adp
morphos-israel.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o morphos-israel.html.ru -oe iso-8859-5 morphos.adp

morphos-israel.var: gen_makefile.conf
	echo > morphos-israel.var
	echo 'URI: morphos-israel.html.bg' >> morphos-israel.var
	echo 'Content-language: bg' >> morphos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.en' >> morphos-israel.var
	echo 'Content-language: en' >> morphos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.fr' >> morphos-israel.var
	echo 'Content-language: fr' >> morphos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.id' >> morphos-israel.var
	echo 'Content-language: id' >> morphos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.it' >> morphos-israel.var
	echo 'Content-language: it' >> morphos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.nl' >> morphos-israel.var
	echo 'Content-language: nl' >> morphos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.po' >> morphos-israel.var
	echo 'Content-language: pl' >> morphos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.sl' >> morphos-israel.var
	echo 'Content-language: sl' >> morphos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.ru' >> morphos-israel.var
	echo 'Content-language: ru' >> morphos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-israel.var
	echo >> morphos-israel.var
linux-netherlands.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o linux-netherlands.html.bg -oe iso-8859-5 linux.adp
linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-netherlands.html.en -oe iso-8859-1 linux.adp
linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-netherlands.html.fr -oe iso-8859-1 linux.adp
linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-netherlands.html.id -oe iso-8859-1 linux.adp
linux-netherlands.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o linux-netherlands.html.it -oe iso-8859-1 linux.adp
linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-netherlands.html.nl -oe iso-8859-1 linux.adp
linux-netherlands.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-netherlands.html.po -oe iso-8859-2 linux.adp
linux-netherlands.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o linux-netherlands.html.sl -oe iso-8859-2 linux.adp
linux-netherlands.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o linux-netherlands.html.ru -oe iso-8859-5 linux.adp

linux-netherlands.var: gen_makefile.conf
	echo > linux-netherlands.var
	echo 'URI: linux-netherlands.html.bg' >> linux-netherlands.var
	echo 'Content-language: bg' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.en' >> linux-netherlands.var
	echo 'Content-language: en' >> linux-netherlands.var
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
macos-netherlands.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macos-netherlands.html.bg -oe iso-8859-5 macos.adp
macos-netherlands.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-netherlands.html.en -oe iso-8859-1 macos.adp
macos-netherlands.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-netherlands.html.fr -oe iso-8859-1 macos.adp
macos-netherlands.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-netherlands.html.id -oe iso-8859-1 macos.adp
macos-netherlands.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macos-netherlands.html.it -oe iso-8859-1 macos.adp
macos-netherlands.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-netherlands.html.nl -oe iso-8859-1 macos.adp
macos-netherlands.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-netherlands.html.po -oe iso-8859-2 macos.adp
macos-netherlands.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macos-netherlands.html.sl -oe iso-8859-2 macos.adp
macos-netherlands.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macos-netherlands.html.ru -oe iso-8859-5 macos.adp

macos-netherlands.var: gen_makefile.conf
	echo > macos-netherlands.var
	echo 'URI: macos-netherlands.html.bg' >> macos-netherlands.var
	echo 'Content-language: bg' >> macos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.en' >> macos-netherlands.var
	echo 'Content-language: en' >> macos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.fr' >> macos-netherlands.var
	echo 'Content-language: fr' >> macos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.id' >> macos-netherlands.var
	echo 'Content-language: id' >> macos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.it' >> macos-netherlands.var
	echo 'Content-language: it' >> macos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.nl' >> macos-netherlands.var
	echo 'Content-language: nl' >> macos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.po' >> macos-netherlands.var
	echo 'Content-language: pl' >> macos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.sl' >> macos-netherlands.var
	echo 'Content-language: sl' >> macos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.ru' >> macos-netherlands.var
	echo 'Content-language: ru' >> macos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-netherlands.var
	echo >> macos-netherlands.var
macosx-netherlands.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macosx-netherlands.html.bg -oe iso-8859-5 macosx.adp
macosx-netherlands.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-netherlands.html.en -oe iso-8859-1 macosx.adp
macosx-netherlands.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-netherlands.html.fr -oe iso-8859-1 macosx.adp
macosx-netherlands.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-netherlands.html.id -oe iso-8859-1 macosx.adp
macosx-netherlands.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macosx-netherlands.html.it -oe iso-8859-1 macosx.adp
macosx-netherlands.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-netherlands.html.nl -oe iso-8859-1 macosx.adp
macosx-netherlands.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-netherlands.html.po -oe iso-8859-2 macosx.adp
macosx-netherlands.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macosx-netherlands.html.sl -oe iso-8859-2 macosx.adp
macosx-netherlands.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macosx-netherlands.html.ru -oe iso-8859-5 macosx.adp

macosx-netherlands.var: gen_makefile.conf
	echo > macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.bg' >> macosx-netherlands.var
	echo 'Content-language: bg' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.en' >> macosx-netherlands.var
	echo 'Content-language: en' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.fr' >> macosx-netherlands.var
	echo 'Content-language: fr' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.id' >> macosx-netherlands.var
	echo 'Content-language: id' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.it' >> macosx-netherlands.var
	echo 'Content-language: it' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.nl' >> macosx-netherlands.var
	echo 'Content-language: nl' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.po' >> macosx-netherlands.var
	echo 'Content-language: pl' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.sl' >> macosx-netherlands.var
	echo 'Content-language: sl' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.ru' >> macosx-netherlands.var
	echo 'Content-language: ru' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
morphos-netherlands.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o morphos-netherlands.html.bg -oe iso-8859-5 morphos.adp
morphos-netherlands.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-netherlands.html.en -oe iso-8859-1 morphos.adp
morphos-netherlands.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-netherlands.html.fr -oe iso-8859-1 morphos.adp
morphos-netherlands.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-netherlands.html.id -oe iso-8859-1 morphos.adp
morphos-netherlands.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o morphos-netherlands.html.it -oe iso-8859-1 morphos.adp
morphos-netherlands.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-netherlands.html.nl -oe iso-8859-1 morphos.adp
morphos-netherlands.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-netherlands.html.po -oe iso-8859-2 morphos.adp
morphos-netherlands.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o morphos-netherlands.html.sl -oe iso-8859-2 morphos.adp
morphos-netherlands.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o morphos-netherlands.html.ru -oe iso-8859-5 morphos.adp

morphos-netherlands.var: gen_makefile.conf
	echo > morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.bg' >> morphos-netherlands.var
	echo 'Content-language: bg' >> morphos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.en' >> morphos-netherlands.var
	echo 'Content-language: en' >> morphos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.fr' >> morphos-netherlands.var
	echo 'Content-language: fr' >> morphos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.id' >> morphos-netherlands.var
	echo 'Content-language: id' >> morphos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.it' >> morphos-netherlands.var
	echo 'Content-language: it' >> morphos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.nl' >> morphos-netherlands.var
	echo 'Content-language: nl' >> morphos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.po' >> morphos-netherlands.var
	echo 'Content-language: pl' >> morphos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.sl' >> morphos-netherlands.var
	echo 'Content-language: sl' >> morphos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.ru' >> morphos-netherlands.var
	echo 'Content-language: ru' >> morphos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
linux-norway.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o linux-norway.html.bg -oe iso-8859-5 linux.adp
linux-norway.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-norway.html.en -oe iso-8859-1 linux.adp
linux-norway.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-norway.html.fr -oe iso-8859-1 linux.adp
linux-norway.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-norway.html.id -oe iso-8859-1 linux.adp
linux-norway.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o linux-norway.html.it -oe iso-8859-1 linux.adp
linux-norway.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-norway.html.nl -oe iso-8859-1 linux.adp
linux-norway.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-norway.html.po -oe iso-8859-2 linux.adp
linux-norway.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o linux-norway.html.sl -oe iso-8859-2 linux.adp
linux-norway.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o linux-norway.html.ru -oe iso-8859-5 linux.adp

linux-norway.var: gen_makefile.conf
	echo > linux-norway.var
	echo 'URI: linux-norway.html.bg' >> linux-norway.var
	echo 'Content-language: bg' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.en' >> linux-norway.var
	echo 'Content-language: en' >> linux-norway.var
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
macos-norway.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macos-norway.html.bg -oe iso-8859-5 macos.adp
macos-norway.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-norway.html.en -oe iso-8859-1 macos.adp
macos-norway.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-norway.html.fr -oe iso-8859-1 macos.adp
macos-norway.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-norway.html.id -oe iso-8859-1 macos.adp
macos-norway.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macos-norway.html.it -oe iso-8859-1 macos.adp
macos-norway.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-norway.html.nl -oe iso-8859-1 macos.adp
macos-norway.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-norway.html.po -oe iso-8859-2 macos.adp
macos-norway.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macos-norway.html.sl -oe iso-8859-2 macos.adp
macos-norway.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macos-norway.html.ru -oe iso-8859-5 macos.adp

macos-norway.var: gen_makefile.conf
	echo > macos-norway.var
	echo 'URI: macos-norway.html.bg' >> macos-norway.var
	echo 'Content-language: bg' >> macos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.en' >> macos-norway.var
	echo 'Content-language: en' >> macos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.fr' >> macos-norway.var
	echo 'Content-language: fr' >> macos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.id' >> macos-norway.var
	echo 'Content-language: id' >> macos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.it' >> macos-norway.var
	echo 'Content-language: it' >> macos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.nl' >> macos-norway.var
	echo 'Content-language: nl' >> macos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.po' >> macos-norway.var
	echo 'Content-language: pl' >> macos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.sl' >> macos-norway.var
	echo 'Content-language: sl' >> macos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.ru' >> macos-norway.var
	echo 'Content-language: ru' >> macos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-norway.var
	echo >> macos-norway.var
macosx-norway.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macosx-norway.html.bg -oe iso-8859-5 macosx.adp
macosx-norway.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-norway.html.en -oe iso-8859-1 macosx.adp
macosx-norway.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-norway.html.fr -oe iso-8859-1 macosx.adp
macosx-norway.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-norway.html.id -oe iso-8859-1 macosx.adp
macosx-norway.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macosx-norway.html.it -oe iso-8859-1 macosx.adp
macosx-norway.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-norway.html.nl -oe iso-8859-1 macosx.adp
macosx-norway.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-norway.html.po -oe iso-8859-2 macosx.adp
macosx-norway.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macosx-norway.html.sl -oe iso-8859-2 macosx.adp
macosx-norway.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macosx-norway.html.ru -oe iso-8859-5 macosx.adp

macosx-norway.var: gen_makefile.conf
	echo > macosx-norway.var
	echo 'URI: macosx-norway.html.bg' >> macosx-norway.var
	echo 'Content-language: bg' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.en' >> macosx-norway.var
	echo 'Content-language: en' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.fr' >> macosx-norway.var
	echo 'Content-language: fr' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.id' >> macosx-norway.var
	echo 'Content-language: id' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.it' >> macosx-norway.var
	echo 'Content-language: it' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.nl' >> macosx-norway.var
	echo 'Content-language: nl' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.po' >> macosx-norway.var
	echo 'Content-language: pl' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.sl' >> macosx-norway.var
	echo 'Content-language: sl' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.ru' >> macosx-norway.var
	echo 'Content-language: ru' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-norway.var
	echo >> macosx-norway.var
morphos-norway.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o morphos-norway.html.bg -oe iso-8859-5 morphos.adp
morphos-norway.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-norway.html.en -oe iso-8859-1 morphos.adp
morphos-norway.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-norway.html.fr -oe iso-8859-1 morphos.adp
morphos-norway.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-norway.html.id -oe iso-8859-1 morphos.adp
morphos-norway.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o morphos-norway.html.it -oe iso-8859-1 morphos.adp
morphos-norway.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-norway.html.nl -oe iso-8859-1 morphos.adp
morphos-norway.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-norway.html.po -oe iso-8859-2 morphos.adp
morphos-norway.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o morphos-norway.html.sl -oe iso-8859-2 morphos.adp
morphos-norway.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o morphos-norway.html.ru -oe iso-8859-5 morphos.adp

morphos-norway.var: gen_makefile.conf
	echo > morphos-norway.var
	echo 'URI: morphos-norway.html.bg' >> morphos-norway.var
	echo 'Content-language: bg' >> morphos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.en' >> morphos-norway.var
	echo 'Content-language: en' >> morphos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.fr' >> morphos-norway.var
	echo 'Content-language: fr' >> morphos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.id' >> morphos-norway.var
	echo 'Content-language: id' >> morphos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.it' >> morphos-norway.var
	echo 'Content-language: it' >> morphos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.nl' >> morphos-norway.var
	echo 'Content-language: nl' >> morphos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.po' >> morphos-norway.var
	echo 'Content-language: pl' >> morphos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.sl' >> morphos-norway.var
	echo 'Content-language: sl' >> morphos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.ru' >> morphos-norway.var
	echo 'Content-language: ru' >> morphos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-norway.var
	echo >> morphos-norway.var
linux-russia.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o linux-russia.html.bg -oe iso-8859-5 linux.adp
linux-russia.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-russia.html.en -oe iso-8859-1 linux.adp
linux-russia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-russia.html.fr -oe iso-8859-1 linux.adp
linux-russia.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-russia.html.id -oe iso-8859-1 linux.adp
linux-russia.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o linux-russia.html.it -oe iso-8859-1 linux.adp
linux-russia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-russia.html.nl -oe iso-8859-1 linux.adp
linux-russia.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-russia.html.po -oe iso-8859-2 linux.adp
linux-russia.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o linux-russia.html.sl -oe iso-8859-2 linux.adp
linux-russia.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o linux-russia.html.ru -oe iso-8859-5 linux.adp

linux-russia.var: gen_makefile.conf
	echo > linux-russia.var
	echo 'URI: linux-russia.html.bg' >> linux-russia.var
	echo 'Content-language: bg' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.en' >> linux-russia.var
	echo 'Content-language: en' >> linux-russia.var
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
macos-russia.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macos-russia.html.bg -oe iso-8859-5 macos.adp
macos-russia.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-russia.html.en -oe iso-8859-1 macos.adp
macos-russia.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-russia.html.fr -oe iso-8859-1 macos.adp
macos-russia.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-russia.html.id -oe iso-8859-1 macos.adp
macos-russia.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macos-russia.html.it -oe iso-8859-1 macos.adp
macos-russia.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-russia.html.nl -oe iso-8859-1 macos.adp
macos-russia.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-russia.html.po -oe iso-8859-2 macos.adp
macos-russia.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macos-russia.html.sl -oe iso-8859-2 macos.adp
macos-russia.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macos-russia.html.ru -oe iso-8859-5 macos.adp

macos-russia.var: gen_makefile.conf
	echo > macos-russia.var
	echo 'URI: macos-russia.html.bg' >> macos-russia.var
	echo 'Content-language: bg' >> macos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.en' >> macos-russia.var
	echo 'Content-language: en' >> macos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.fr' >> macos-russia.var
	echo 'Content-language: fr' >> macos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.id' >> macos-russia.var
	echo 'Content-language: id' >> macos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.it' >> macos-russia.var
	echo 'Content-language: it' >> macos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.nl' >> macos-russia.var
	echo 'Content-language: nl' >> macos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.po' >> macos-russia.var
	echo 'Content-language: pl' >> macos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.sl' >> macos-russia.var
	echo 'Content-language: sl' >> macos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.ru' >> macos-russia.var
	echo 'Content-language: ru' >> macos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-russia.var
	echo >> macos-russia.var
macosx-russia.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macosx-russia.html.bg -oe iso-8859-5 macosx.adp
macosx-russia.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-russia.html.en -oe iso-8859-1 macosx.adp
macosx-russia.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-russia.html.fr -oe iso-8859-1 macosx.adp
macosx-russia.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-russia.html.id -oe iso-8859-1 macosx.adp
macosx-russia.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macosx-russia.html.it -oe iso-8859-1 macosx.adp
macosx-russia.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-russia.html.nl -oe iso-8859-1 macosx.adp
macosx-russia.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-russia.html.po -oe iso-8859-2 macosx.adp
macosx-russia.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macosx-russia.html.sl -oe iso-8859-2 macosx.adp
macosx-russia.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macosx-russia.html.ru -oe iso-8859-5 macosx.adp

macosx-russia.var: gen_makefile.conf
	echo > macosx-russia.var
	echo 'URI: macosx-russia.html.bg' >> macosx-russia.var
	echo 'Content-language: bg' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.en' >> macosx-russia.var
	echo 'Content-language: en' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.fr' >> macosx-russia.var
	echo 'Content-language: fr' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.id' >> macosx-russia.var
	echo 'Content-language: id' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.it' >> macosx-russia.var
	echo 'Content-language: it' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.nl' >> macosx-russia.var
	echo 'Content-language: nl' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.po' >> macosx-russia.var
	echo 'Content-language: pl' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.sl' >> macosx-russia.var
	echo 'Content-language: sl' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.ru' >> macosx-russia.var
	echo 'Content-language: ru' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-russia.var
	echo >> macosx-russia.var
morphos-russia.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o morphos-russia.html.bg -oe iso-8859-5 morphos.adp
morphos-russia.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-russia.html.en -oe iso-8859-1 morphos.adp
morphos-russia.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-russia.html.fr -oe iso-8859-1 morphos.adp
morphos-russia.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-russia.html.id -oe iso-8859-1 morphos.adp
morphos-russia.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o morphos-russia.html.it -oe iso-8859-1 morphos.adp
morphos-russia.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-russia.html.nl -oe iso-8859-1 morphos.adp
morphos-russia.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-russia.html.po -oe iso-8859-2 morphos.adp
morphos-russia.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o morphos-russia.html.sl -oe iso-8859-2 morphos.adp
morphos-russia.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o morphos-russia.html.ru -oe iso-8859-5 morphos.adp

morphos-russia.var: gen_makefile.conf
	echo > morphos-russia.var
	echo 'URI: morphos-russia.html.bg' >> morphos-russia.var
	echo 'Content-language: bg' >> morphos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.en' >> morphos-russia.var
	echo 'Content-language: en' >> morphos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.fr' >> morphos-russia.var
	echo 'Content-language: fr' >> morphos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.id' >> morphos-russia.var
	echo 'Content-language: id' >> morphos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.it' >> morphos-russia.var
	echo 'Content-language: it' >> morphos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.nl' >> morphos-russia.var
	echo 'Content-language: nl' >> morphos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.po' >> morphos-russia.var
	echo 'Content-language: pl' >> morphos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.sl' >> morphos-russia.var
	echo 'Content-language: sl' >> morphos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.ru' >> morphos-russia.var
	echo 'Content-language: ru' >> morphos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-russia.var
	echo >> morphos-russia.var
linux-ftp.freepascal.org.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o linux-ftp.freepascal.org.html.bg -oe iso-8859-5 linux.adp
linux-ftp.freepascal.org.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-ftp.freepascal.org.html.en -oe iso-8859-1 linux.adp
linux-ftp.freepascal.org.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-ftp.freepascal.org.html.fr -oe iso-8859-1 linux.adp
linux-ftp.freepascal.org.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-ftp.freepascal.org.html.id -oe iso-8859-1 linux.adp
linux-ftp.freepascal.org.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o linux-ftp.freepascal.org.html.it -oe iso-8859-1 linux.adp
linux-ftp.freepascal.org.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-ftp.freepascal.org.html.nl -oe iso-8859-1 linux.adp
linux-ftp.freepascal.org.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-ftp.freepascal.org.html.po -oe iso-8859-2 linux.adp
linux-ftp.freepascal.org.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o linux-ftp.freepascal.org.html.sl -oe iso-8859-2 linux.adp
linux-ftp.freepascal.org.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o linux-ftp.freepascal.org.html.ru -oe iso-8859-5 linux.adp

linux-ftp.freepascal.org.var: gen_makefile.conf
	echo > linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.bg' >> linux-ftp.freepascal.org.var
	echo 'Content-language: bg' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.en' >> linux-ftp.freepascal.org.var
	echo 'Content-language: en' >> linux-ftp.freepascal.org.var
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
macos-ftp.freepascal.org.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macos-ftp.freepascal.org.html.bg -oe iso-8859-5 macos.adp
macos-ftp.freepascal.org.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-ftp.freepascal.org.html.en -oe iso-8859-1 macos.adp
macos-ftp.freepascal.org.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-ftp.freepascal.org.html.fr -oe iso-8859-1 macos.adp
macos-ftp.freepascal.org.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-ftp.freepascal.org.html.id -oe iso-8859-1 macos.adp
macos-ftp.freepascal.org.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macos-ftp.freepascal.org.html.it -oe iso-8859-1 macos.adp
macos-ftp.freepascal.org.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-ftp.freepascal.org.html.nl -oe iso-8859-1 macos.adp
macos-ftp.freepascal.org.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-ftp.freepascal.org.html.po -oe iso-8859-2 macos.adp
macos-ftp.freepascal.org.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macos-ftp.freepascal.org.html.sl -oe iso-8859-2 macos.adp
macos-ftp.freepascal.org.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macos-ftp.freepascal.org.html.ru -oe iso-8859-5 macos.adp

macos-ftp.freepascal.org.var: gen_makefile.conf
	echo > macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.bg' >> macos-ftp.freepascal.org.var
	echo 'Content-language: bg' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.en' >> macos-ftp.freepascal.org.var
	echo 'Content-language: en' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.fr' >> macos-ftp.freepascal.org.var
	echo 'Content-language: fr' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.id' >> macos-ftp.freepascal.org.var
	echo 'Content-language: id' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.it' >> macos-ftp.freepascal.org.var
	echo 'Content-language: it' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.nl' >> macos-ftp.freepascal.org.var
	echo 'Content-language: nl' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.po' >> macos-ftp.freepascal.org.var
	echo 'Content-language: pl' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.sl' >> macos-ftp.freepascal.org.var
	echo 'Content-language: sl' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.ru' >> macos-ftp.freepascal.org.var
	echo 'Content-language: ru' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
macosx-ftp.freepascal.org.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.bg -oe iso-8859-5 macosx.adp
macosx-ftp.freepascal.org.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.en -oe iso-8859-1 macosx.adp
macosx-ftp.freepascal.org.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.fr -oe iso-8859-1 macosx.adp
macosx-ftp.freepascal.org.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.id -oe iso-8859-1 macosx.adp
macosx-ftp.freepascal.org.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.it -oe iso-8859-1 macosx.adp
macosx-ftp.freepascal.org.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.nl -oe iso-8859-1 macosx.adp
macosx-ftp.freepascal.org.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.po -oe iso-8859-2 macosx.adp
macosx-ftp.freepascal.org.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.sl -oe iso-8859-2 macosx.adp
macosx-ftp.freepascal.org.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.ru -oe iso-8859-5 macosx.adp

macosx-ftp.freepascal.org.var: gen_makefile.conf
	echo > macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.bg' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: bg' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.en' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: en' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.fr' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: fr' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.id' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: id' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.it' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: it' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.nl' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: nl' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.po' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: pl' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.sl' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: sl' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.ru' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: ru' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
morphos-ftp.freepascal.org.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.bg -oe iso-8859-5 morphos.adp
morphos-ftp.freepascal.org.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.en -oe iso-8859-1 morphos.adp
morphos-ftp.freepascal.org.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.fr -oe iso-8859-1 morphos.adp
morphos-ftp.freepascal.org.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.id -oe iso-8859-1 morphos.adp
morphos-ftp.freepascal.org.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.it -oe iso-8859-1 morphos.adp
morphos-ftp.freepascal.org.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.nl -oe iso-8859-1 morphos.adp
morphos-ftp.freepascal.org.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.po -oe iso-8859-2 morphos.adp
morphos-ftp.freepascal.org.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.sl -oe iso-8859-2 morphos.adp
morphos-ftp.freepascal.org.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.ru -oe iso-8859-5 morphos.adp

morphos-ftp.freepascal.org.var: gen_makefile.conf
	echo > morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.bg' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: bg' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.en' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: en' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.fr' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: fr' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.id' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: id' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.it' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: it' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.nl' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: nl' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.po' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: pl' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.sl' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: sl' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.ru' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: ru' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var

linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
linux.var: gen_makefile.conf
	echo > linux.var
	echo 'URI: linux.html.bg' >> linux.var
	echo 'Content-language: bg' >> linux.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.en' >> linux.var
	echo 'Content-language: en' >> linux.var
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

macos.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macos.html.bg -oe iso-8859-5 ../../templatemirror.adp
macos.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos.html.en -oe iso-8859-1 ../../templatemirror.adp
macos.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos.html.fr -oe iso-8859-1 ../../templatemirror.adp
macos.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos.html.id -oe iso-8859-1 ../../templatemirror.adp
macos.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macos.html.it -oe iso-8859-1 ../../templatemirror.adp
macos.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos.html.nl -oe iso-8859-1 ../../templatemirror.adp
macos.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos.html.po -oe iso-8859-2 ../../templatemirror.adp
macos.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macos.html.sl -oe iso-8859-2 ../../templatemirror.adp
macos.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macos.html.ru -oe iso-8859-5 ../../templatemirror.adp
macos.var: gen_makefile.conf
	echo > macos.var
	echo 'URI: macos.html.bg' >> macos.var
	echo 'Content-language: bg' >> macos.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos.var
	echo >> macos.var
	echo 'URI: macos.html.en' >> macos.var
	echo 'Content-language: en' >> macos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos.var
	echo >> macos.var
	echo 'URI: macos.html.fr' >> macos.var
	echo 'Content-language: fr' >> macos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos.var
	echo >> macos.var
	echo 'URI: macos.html.id' >> macos.var
	echo 'Content-language: id' >> macos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos.var
	echo >> macos.var
	echo 'URI: macos.html.it' >> macos.var
	echo 'Content-language: it' >> macos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos.var
	echo >> macos.var
	echo 'URI: macos.html.nl' >> macos.var
	echo 'Content-language: nl' >> macos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos.var
	echo >> macos.var
	echo 'URI: macos.html.po' >> macos.var
	echo 'Content-language: pl' >> macos.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos.var
	echo >> macos.var
	echo 'URI: macos.html.sl' >> macos.var
	echo 'Content-language: sl' >> macos.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macos.var
	echo >> macos.var
	echo 'URI: macos.html.ru' >> macos.var
	echo 'Content-language: ru' >> macos.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos.var
	echo >> macos.var

macosx.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o macosx.html.bg -oe iso-8859-5 ../../templatemirror.adp
macosx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx.html.en -oe iso-8859-1 ../../templatemirror.adp
macosx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx.html.fr -oe iso-8859-1 ../../templatemirror.adp
macosx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx.html.id -oe iso-8859-1 ../../templatemirror.adp
macosx.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o macosx.html.it -oe iso-8859-1 ../../templatemirror.adp
macosx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx.html.nl -oe iso-8859-1 ../../templatemirror.adp
macosx.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx.html.po -oe iso-8859-2 ../../templatemirror.adp
macosx.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o macosx.html.sl -oe iso-8859-2 ../../templatemirror.adp
macosx.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o macosx.html.ru -oe iso-8859-5 ../../templatemirror.adp
macosx.var: gen_makefile.conf
	echo > macosx.var
	echo 'URI: macosx.html.bg' >> macosx.var
	echo 'Content-language: bg' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.en' >> macosx.var
	echo 'Content-language: en' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.fr' >> macosx.var
	echo 'Content-language: fr' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.id' >> macosx.var
	echo 'Content-language: id' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.it' >> macosx.var
	echo 'Content-language: it' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.nl' >> macosx.var
	echo 'Content-language: nl' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.po' >> macosx.var
	echo 'Content-language: pl' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.sl' >> macosx.var
	echo 'Content-language: sl' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.ru' >> macosx.var
	echo 'Content-language: ru' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx.var
	echo >> macosx.var

morphos.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l bg_BG -m ../../default-master.adp -o morphos.html.bg -oe iso-8859-5 ../../templatemirror.adp
morphos.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos.html.en -oe iso-8859-1 ../../templatemirror.adp
morphos.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos.html.fr -oe iso-8859-1 ../../templatemirror.adp
morphos.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos.html.id -oe iso-8859-1 ../../templatemirror.adp
morphos.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l it_IT -m ../../default-master.adp -o morphos.html.it -oe iso-8859-1 ../../templatemirror.adp
morphos.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos.html.nl -oe iso-8859-1 ../../templatemirror.adp
morphos.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos.html.po -oe iso-8859-2 ../../templatemirror.adp
morphos.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l sl_SI -m ../../default-master.adp -o morphos.html.sl -oe iso-8859-2 ../../templatemirror.adp
morphos.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l ru_RU -m ../../default-master.adp -o morphos.html.ru -oe iso-8859-5 ../../templatemirror.adp
morphos.var: gen_makefile.conf
	echo > morphos.var
	echo 'URI: morphos.html.bg' >> morphos.var
	echo 'Content-language: bg' >> morphos.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos.var
	echo >> morphos.var
	echo 'URI: morphos.html.en' >> morphos.var
	echo 'Content-language: en' >> morphos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos.var
	echo >> morphos.var
	echo 'URI: morphos.html.fr' >> morphos.var
	echo 'Content-language: fr' >> morphos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos.var
	echo >> morphos.var
	echo 'URI: morphos.html.id' >> morphos.var
	echo 'Content-language: id' >> morphos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos.var
	echo >> morphos.var
	echo 'URI: morphos.html.it' >> morphos.var
	echo 'Content-language: it' >> morphos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos.var
	echo >> morphos.var
	echo 'URI: morphos.html.nl' >> morphos.var
	echo 'Content-language: nl' >> morphos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos.var
	echo >> morphos.var
	echo 'URI: morphos.html.po' >> morphos.var
	echo 'Content-language: pl' >> morphos.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos.var
	echo >> morphos.var
	echo 'URI: morphos.html.sl' >> morphos.var
	echo 'Content-language: sl' >> morphos.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> morphos.var
	echo >> morphos.var
	echo 'URI: morphos.html.ru' >> morphos.var
	echo 'Content-language: ru' >> morphos.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos.var
	echo >> morphos.var

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

all_pages: linux-australia.html.bg linux-australia.html.en linux-australia.html.fr linux-australia.html.id linux-australia.html.it linux-australia.html.nl linux-australia.html.po linux-australia.html.sl linux-australia.html.ru linux-australia.var macos-australia.html.bg macos-australia.html.en macos-australia.html.fr macos-australia.html.id macos-australia.html.it macos-australia.html.nl macos-australia.html.po macos-australia.html.sl macos-australia.html.ru macos-australia.var macosx-australia.html.bg macosx-australia.html.en macosx-australia.html.fr macosx-australia.html.id macosx-australia.html.it macosx-australia.html.nl macosx-australia.html.po macosx-australia.html.sl macosx-australia.html.ru macosx-australia.var morphos-australia.html.bg morphos-australia.html.en morphos-australia.html.fr morphos-australia.html.id morphos-australia.html.it morphos-australia.html.nl morphos-australia.html.po morphos-australia.html.sl morphos-australia.html.ru morphos-australia.var linux-austria.html.bg linux-austria.html.en linux-austria.html.fr linux-austria.html.id linux-austria.html.it linux-austria.html.nl linux-austria.html.po linux-austria.html.sl linux-austria.html.ru linux-austria.var macos-austria.html.bg macos-austria.html.en macos-austria.html.fr macos-austria.html.id macos-austria.html.it macos-austria.html.nl macos-austria.html.po macos-austria.html.sl macos-austria.html.ru macos-austria.var macosx-austria.html.bg macosx-austria.html.en macosx-austria.html.fr macosx-austria.html.id macosx-austria.html.it macosx-austria.html.nl macosx-austria.html.po macosx-austria.html.sl macosx-austria.html.ru macosx-austria.var morphos-austria.html.bg morphos-austria.html.en morphos-austria.html.fr morphos-austria.html.id morphos-austria.html.it morphos-austria.html.nl morphos-austria.html.po morphos-austria.html.sl morphos-austria.html.ru morphos-austria.var linux-germany.html.bg linux-germany.html.en linux-germany.html.fr linux-germany.html.id linux-germany.html.it linux-germany.html.nl linux-germany.html.po linux-germany.html.sl linux-germany.html.ru linux-germany.var macos-germany.html.bg macos-germany.html.en macos-germany.html.fr macos-germany.html.id macos-germany.html.it macos-germany.html.nl macos-germany.html.po macos-germany.html.sl macos-germany.html.ru macos-germany.var macosx-germany.html.bg macosx-germany.html.en macosx-germany.html.fr macosx-germany.html.id macosx-germany.html.it macosx-germany.html.nl macosx-germany.html.po macosx-germany.html.sl macosx-germany.html.ru macosx-germany.var morphos-germany.html.bg morphos-germany.html.en morphos-germany.html.fr morphos-germany.html.id morphos-germany.html.it morphos-germany.html.nl morphos-germany.html.po morphos-germany.html.sl morphos-germany.html.ru morphos-germany.var linux-hungary.html.bg linux-hungary.html.en linux-hungary.html.fr linux-hungary.html.id linux-hungary.html.it linux-hungary.html.nl linux-hungary.html.po linux-hungary.html.sl linux-hungary.html.ru linux-hungary.var macos-hungary.html.bg macos-hungary.html.en macos-hungary.html.fr macos-hungary.html.id macos-hungary.html.it macos-hungary.html.nl macos-hungary.html.po macos-hungary.html.sl macos-hungary.html.ru macos-hungary.var macosx-hungary.html.bg macosx-hungary.html.en macosx-hungary.html.fr macosx-hungary.html.id macosx-hungary.html.it macosx-hungary.html.nl macosx-hungary.html.po macosx-hungary.html.sl macosx-hungary.html.ru macosx-hungary.var morphos-hungary.html.bg morphos-hungary.html.en morphos-hungary.html.fr morphos-hungary.html.id morphos-hungary.html.it morphos-hungary.html.nl morphos-hungary.html.po morphos-hungary.html.sl morphos-hungary.html.ru morphos-hungary.var linux-israel.html.bg linux-israel.html.en linux-israel.html.fr linux-israel.html.id linux-israel.html.it linux-israel.html.nl linux-israel.html.po linux-israel.html.sl linux-israel.html.ru linux-israel.var macos-israel.html.bg macos-israel.html.en macos-israel.html.fr macos-israel.html.id macos-israel.html.it macos-israel.html.nl macos-israel.html.po macos-israel.html.sl macos-israel.html.ru macos-israel.var macosx-israel.html.bg macosx-israel.html.en macosx-israel.html.fr macosx-israel.html.id macosx-israel.html.it macosx-israel.html.nl macosx-israel.html.po macosx-israel.html.sl macosx-israel.html.ru macosx-israel.var morphos-israel.html.bg morphos-israel.html.en morphos-israel.html.fr morphos-israel.html.id morphos-israel.html.it morphos-israel.html.nl morphos-israel.html.po morphos-israel.html.sl morphos-israel.html.ru morphos-israel.var linux-netherlands.html.bg linux-netherlands.html.en linux-netherlands.html.fr linux-netherlands.html.id linux-netherlands.html.it linux-netherlands.html.nl linux-netherlands.html.po linux-netherlands.html.sl linux-netherlands.html.ru linux-netherlands.var macos-netherlands.html.bg macos-netherlands.html.en macos-netherlands.html.fr macos-netherlands.html.id macos-netherlands.html.it macos-netherlands.html.nl macos-netherlands.html.po macos-netherlands.html.sl macos-netherlands.html.ru macos-netherlands.var macosx-netherlands.html.bg macosx-netherlands.html.en macosx-netherlands.html.fr macosx-netherlands.html.id macosx-netherlands.html.it macosx-netherlands.html.nl macosx-netherlands.html.po macosx-netherlands.html.sl macosx-netherlands.html.ru macosx-netherlands.var morphos-netherlands.html.bg morphos-netherlands.html.en morphos-netherlands.html.fr morphos-netherlands.html.id morphos-netherlands.html.it morphos-netherlands.html.nl morphos-netherlands.html.po morphos-netherlands.html.sl morphos-netherlands.html.ru morphos-netherlands.var linux-norway.html.bg linux-norway.html.en linux-norway.html.fr linux-norway.html.id linux-norway.html.it linux-norway.html.nl linux-norway.html.po linux-norway.html.sl linux-norway.html.ru linux-norway.var macos-norway.html.bg macos-norway.html.en macos-norway.html.fr macos-norway.html.id macos-norway.html.it macos-norway.html.nl macos-norway.html.po macos-norway.html.sl macos-norway.html.ru macos-norway.var macosx-norway.html.bg macosx-norway.html.en macosx-norway.html.fr macosx-norway.html.id macosx-norway.html.it macosx-norway.html.nl macosx-norway.html.po macosx-norway.html.sl macosx-norway.html.ru macosx-norway.var morphos-norway.html.bg morphos-norway.html.en morphos-norway.html.fr morphos-norway.html.id morphos-norway.html.it morphos-norway.html.nl morphos-norway.html.po morphos-norway.html.sl morphos-norway.html.ru morphos-norway.var linux-russia.html.bg linux-russia.html.en linux-russia.html.fr linux-russia.html.id linux-russia.html.it linux-russia.html.nl linux-russia.html.po linux-russia.html.sl linux-russia.html.ru linux-russia.var macos-russia.html.bg macos-russia.html.en macos-russia.html.fr macos-russia.html.id macos-russia.html.it macos-russia.html.nl macos-russia.html.po macos-russia.html.sl macos-russia.html.ru macos-russia.var macosx-russia.html.bg macosx-russia.html.en macosx-russia.html.fr macosx-russia.html.id macosx-russia.html.it macosx-russia.html.nl macosx-russia.html.po macosx-russia.html.sl macosx-russia.html.ru macosx-russia.var morphos-russia.html.bg morphos-russia.html.en morphos-russia.html.fr morphos-russia.html.id morphos-russia.html.it morphos-russia.html.nl morphos-russia.html.po morphos-russia.html.sl morphos-russia.html.ru morphos-russia.var linux-ftp.freepascal.org.html.bg linux-ftp.freepascal.org.html.en linux-ftp.freepascal.org.html.fr linux-ftp.freepascal.org.html.id linux-ftp.freepascal.org.html.it linux-ftp.freepascal.org.html.nl linux-ftp.freepascal.org.html.po linux-ftp.freepascal.org.html.sl linux-ftp.freepascal.org.html.ru linux-ftp.freepascal.org.var macos-ftp.freepascal.org.html.bg macos-ftp.freepascal.org.html.en macos-ftp.freepascal.org.html.fr macos-ftp.freepascal.org.html.id macos-ftp.freepascal.org.html.it macos-ftp.freepascal.org.html.nl macos-ftp.freepascal.org.html.po macos-ftp.freepascal.org.html.sl macos-ftp.freepascal.org.html.ru macos-ftp.freepascal.org.var macosx-ftp.freepascal.org.html.bg macosx-ftp.freepascal.org.html.en macosx-ftp.freepascal.org.html.fr macosx-ftp.freepascal.org.html.id macosx-ftp.freepascal.org.html.it macosx-ftp.freepascal.org.html.nl macosx-ftp.freepascal.org.html.po macosx-ftp.freepascal.org.html.sl macosx-ftp.freepascal.org.html.ru macosx-ftp.freepascal.org.var morphos-ftp.freepascal.org.html.bg morphos-ftp.freepascal.org.html.en morphos-ftp.freepascal.org.html.fr morphos-ftp.freepascal.org.html.id morphos-ftp.freepascal.org.html.it morphos-ftp.freepascal.org.html.nl morphos-ftp.freepascal.org.html.po morphos-ftp.freepascal.org.html.sl morphos-ftp.freepascal.org.html.ru morphos-ftp.freepascal.org.var linux.html.bg linux.html.en linux.html.fr linux.html.id linux.html.it linux.html.nl linux.html.po linux.html.sl linux.html.ru linux.var macos.html.bg macos.html.en macos.html.fr macos.html.id macos.html.it macos.html.nl macos.html.po macos.html.sl macos.html.ru macos.var macosx.html.bg macosx.html.en macosx.html.fr macosx.html.id macosx.html.it macosx.html.nl macosx.html.po macosx.html.sl macosx.html.ru macosx.var morphos.html.bg morphos.html.en morphos.html.fr morphos.html.id morphos.html.it morphos.html.nl morphos.html.po morphos.html.sl morphos.html.ru morphos.var mirrors.dat


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

