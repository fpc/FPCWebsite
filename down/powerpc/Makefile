
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
all: output_directory all_pages
english: output_directory all_en_pages
../..//down/powerpc/linux-australia.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//linux-australia.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-australia.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-australia.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-australia.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//linux-australia.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-australia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//linux-australia.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-australia.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//linux-australia.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-australia.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//linux-australia.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-australia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//linux-australia.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-australia.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//linux-australia.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-australia.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//linux-australia.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-australia.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//linux-australia.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-australia.html.zh: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-australia.html.zh -oe utf-16 linux.adp
../..//down/powerpc/linux-australia.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-australia.html -oe ISO-8859-1 linux.adp

../..//down/powerpc/linux-australia.var: gen_makefile.conf
	echo > linux-australia.var
	echo 'URI: linux-australia.html.bg' >> linux-australia.var
	echo 'Content-language: bg' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.en' >> linux-australia.var
	echo 'Content-language: en' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.fi' >> linux-australia.var
	echo 'Content-language: fi' >> linux-australia.var
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
	echo 'URI: linux-australia.html.zh' >> linux-australia.var
	echo 'Content-language: zh' >> linux-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-australia.var
	echo >> linux-australia.var
../..//down/powerpc/macos-australia.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macos-australia.html.bg -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-australia.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-australia.html.en -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-australia.html.fi: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macos-australia.html.fi -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-australia.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macos-australia.html.fr -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-australia.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macos-australia.html.id -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-australia.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macos-australia.html.it -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-australia.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macos-australia.html.nl -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-australia.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macos-australia.html.po -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-australia.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macos-australia.html.sl -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-australia.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macos-australia.html.ru -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-australia.html.zh: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macos-australia.html.zh -oe utf-16 macos.adp
../..//down/powerpc/macos-australia.html: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-australia.html -oe ISO-8859-1 macos.adp

../..//down/powerpc/macos-australia.var: gen_makefile.conf
	echo > macos-australia.var
	echo 'URI: macos-australia.html.bg' >> macos-australia.var
	echo 'Content-language: bg' >> macos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.en' >> macos-australia.var
	echo 'Content-language: en' >> macos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.fi' >> macos-australia.var
	echo 'Content-language: fi' >> macos-australia.var
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
	echo 'URI: macos-australia.html.zh' >> macos-australia.var
	echo 'Content-language: zh' >> macos-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> macos-australia.var
	echo >> macos-australia.var
../..//down/powerpc/macosx-australia.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macosx-australia.html.bg -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-australia.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-australia.html.en -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-australia.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macosx-australia.html.fi -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-australia.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macosx-australia.html.fr -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-australia.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macosx-australia.html.id -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-australia.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macosx-australia.html.it -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-australia.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macosx-australia.html.nl -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-australia.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macosx-australia.html.po -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-australia.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macosx-australia.html.sl -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-australia.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macosx-australia.html.ru -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-australia.html.zh: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-australia.html.zh -oe utf-16 macosx.adp
../..//down/powerpc/macosx-australia.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-australia.html -oe ISO-8859-1 macosx.adp

../..//down/powerpc/macosx-australia.var: gen_makefile.conf
	echo > macosx-australia.var
	echo 'URI: macosx-australia.html.bg' >> macosx-australia.var
	echo 'Content-language: bg' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.en' >> macosx-australia.var
	echo 'Content-language: en' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.fi' >> macosx-australia.var
	echo 'Content-language: fi' >> macosx-australia.var
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
	echo 'URI: macosx-australia.html.zh' >> macosx-australia.var
	echo 'Content-language: zh' >> macosx-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-australia.var
	echo >> macosx-australia.var
../..//down/powerpc/morphos-australia.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//morphos-australia.html.bg -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-australia.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-australia.html.en -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-australia.html.fi: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//morphos-australia.html.fi -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-australia.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//morphos-australia.html.fr -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-australia.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//morphos-australia.html.id -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-australia.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//morphos-australia.html.it -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-australia.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//morphos-australia.html.nl -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-australia.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//morphos-australia.html.po -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-australia.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//morphos-australia.html.sl -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-australia.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//morphos-australia.html.ru -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-australia.html.zh: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//morphos-australia.html.zh -oe utf-16 morphos.adp
../..//down/powerpc/morphos-australia.html: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-australia.html -oe ISO-8859-1 morphos.adp

../..//down/powerpc/morphos-australia.var: gen_makefile.conf
	echo > morphos-australia.var
	echo 'URI: morphos-australia.html.bg' >> morphos-australia.var
	echo 'Content-language: bg' >> morphos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.en' >> morphos-australia.var
	echo 'Content-language: en' >> morphos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.fi' >> morphos-australia.var
	echo 'Content-language: fi' >> morphos-australia.var
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
	echo 'URI: morphos-australia.html.zh' >> morphos-australia.var
	echo 'Content-language: zh' >> morphos-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> morphos-australia.var
	echo >> morphos-australia.var
../..//down/powerpc/linux-austria.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-austria.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-austria.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-austria.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-austria.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-austria.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-austria.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-austria.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-austria.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-austria.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-austria.html.zh: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.zh -oe utf-16 linux.adp
../..//down/powerpc/linux-austria.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html -oe ISO-8859-1 linux.adp

../..//down/powerpc/linux-austria.var: gen_makefile.conf
	echo > linux-austria.var
	echo 'URI: linux-austria.html.bg' >> linux-austria.var
	echo 'Content-language: bg' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.en' >> linux-austria.var
	echo 'Content-language: en' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.fi' >> linux-austria.var
	echo 'Content-language: fi' >> linux-austria.var
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
	echo 'URI: linux-austria.html.zh' >> linux-austria.var
	echo 'Content-language: zh' >> linux-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-austria.var
	echo >> linux-austria.var
../..//down/powerpc/macos-austria.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macos-austria.html.bg -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-austria.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-austria.html.en -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-austria.html.fi: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macos-austria.html.fi -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-austria.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macos-austria.html.fr -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-austria.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macos-austria.html.id -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-austria.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macos-austria.html.it -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-austria.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macos-austria.html.nl -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-austria.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macos-austria.html.po -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-austria.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macos-austria.html.sl -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-austria.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macos-austria.html.ru -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-austria.html.zh: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macos-austria.html.zh -oe utf-16 macos.adp
../..//down/powerpc/macos-austria.html: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-austria.html -oe ISO-8859-1 macos.adp

../..//down/powerpc/macos-austria.var: gen_makefile.conf
	echo > macos-austria.var
	echo 'URI: macos-austria.html.bg' >> macos-austria.var
	echo 'Content-language: bg' >> macos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.en' >> macos-austria.var
	echo 'Content-language: en' >> macos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.fi' >> macos-austria.var
	echo 'Content-language: fi' >> macos-austria.var
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
	echo 'URI: macos-austria.html.zh' >> macos-austria.var
	echo 'Content-language: zh' >> macos-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> macos-austria.var
	echo >> macos-austria.var
../..//down/powerpc/macosx-austria.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.bg -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-austria.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.en -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-austria.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.fi -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-austria.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.fr -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-austria.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.id -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-austria.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.it -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-austria.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.nl -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-austria.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.po -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-austria.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.sl -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-austria.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.ru -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-austria.html.zh: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.zh -oe utf-16 macosx.adp
../..//down/powerpc/macosx-austria.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html -oe ISO-8859-1 macosx.adp

../..//down/powerpc/macosx-austria.var: gen_makefile.conf
	echo > macosx-austria.var
	echo 'URI: macosx-austria.html.bg' >> macosx-austria.var
	echo 'Content-language: bg' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.en' >> macosx-austria.var
	echo 'Content-language: en' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.fi' >> macosx-austria.var
	echo 'Content-language: fi' >> macosx-austria.var
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
	echo 'URI: macosx-austria.html.zh' >> macosx-austria.var
	echo 'Content-language: zh' >> macosx-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-austria.var
	echo >> macosx-austria.var
../..//down/powerpc/morphos-austria.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//morphos-austria.html.bg -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-austria.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-austria.html.en -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-austria.html.fi: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//morphos-austria.html.fi -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-austria.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//morphos-austria.html.fr -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-austria.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//morphos-austria.html.id -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-austria.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//morphos-austria.html.it -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-austria.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//morphos-austria.html.nl -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-austria.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//morphos-austria.html.po -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-austria.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//morphos-austria.html.sl -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-austria.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//morphos-austria.html.ru -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-austria.html.zh: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//morphos-austria.html.zh -oe utf-16 morphos.adp
../..//down/powerpc/morphos-austria.html: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-austria.html -oe ISO-8859-1 morphos.adp

../..//down/powerpc/morphos-austria.var: gen_makefile.conf
	echo > morphos-austria.var
	echo 'URI: morphos-austria.html.bg' >> morphos-austria.var
	echo 'Content-language: bg' >> morphos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.en' >> morphos-austria.var
	echo 'Content-language: en' >> morphos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.fi' >> morphos-austria.var
	echo 'Content-language: fi' >> morphos-austria.var
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
	echo 'URI: morphos-austria.html.zh' >> morphos-austria.var
	echo 'Content-language: zh' >> morphos-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> morphos-austria.var
	echo >> morphos-austria.var
../..//down/powerpc/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-hungary.html.zh: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.zh -oe utf-16 linux.adp
../..//down/powerpc/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html -oe ISO-8859-1 linux.adp

../..//down/powerpc/linux-hungary.var: gen_makefile.conf
	echo > linux-hungary.var
	echo 'URI: linux-hungary.html.bg' >> linux-hungary.var
	echo 'Content-language: bg' >> linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.en' >> linux-hungary.var
	echo 'Content-language: en' >> linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.fi' >> linux-hungary.var
	echo 'Content-language: fi' >> linux-hungary.var
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
	echo 'URI: linux-hungary.html.zh' >> linux-hungary.var
	echo 'Content-language: zh' >> linux-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-hungary.var
	echo >> linux-hungary.var
../..//down/powerpc/macos-hungary.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macos-hungary.html.bg -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-hungary.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-hungary.html.en -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-hungary.html.fi: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macos-hungary.html.fi -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-hungary.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macos-hungary.html.fr -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-hungary.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macos-hungary.html.id -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-hungary.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macos-hungary.html.it -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-hungary.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macos-hungary.html.nl -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-hungary.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macos-hungary.html.po -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-hungary.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macos-hungary.html.sl -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-hungary.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macos-hungary.html.ru -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-hungary.html.zh: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macos-hungary.html.zh -oe utf-16 macos.adp
../..//down/powerpc/macos-hungary.html: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-hungary.html -oe ISO-8859-1 macos.adp

../..//down/powerpc/macos-hungary.var: gen_makefile.conf
	echo > macos-hungary.var
	echo 'URI: macos-hungary.html.bg' >> macos-hungary.var
	echo 'Content-language: bg' >> macos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.en' >> macos-hungary.var
	echo 'Content-language: en' >> macos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.fi' >> macos-hungary.var
	echo 'Content-language: fi' >> macos-hungary.var
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
	echo 'URI: macos-hungary.html.zh' >> macos-hungary.var
	echo 'Content-language: zh' >> macos-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> macos-hungary.var
	echo >> macos-hungary.var
../..//down/powerpc/macosx-hungary.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.bg -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-hungary.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.en -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.fi -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.fr -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.id -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.it -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.nl -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.po -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-hungary.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.sl -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-hungary.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.ru -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-hungary.html.zh: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.zh -oe utf-16 macosx.adp
../..//down/powerpc/macosx-hungary.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html -oe ISO-8859-1 macosx.adp

../..//down/powerpc/macosx-hungary.var: gen_makefile.conf
	echo > macosx-hungary.var
	echo 'URI: macosx-hungary.html.bg' >> macosx-hungary.var
	echo 'Content-language: bg' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.en' >> macosx-hungary.var
	echo 'Content-language: en' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.fi' >> macosx-hungary.var
	echo 'Content-language: fi' >> macosx-hungary.var
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
	echo 'URI: macosx-hungary.html.zh' >> macosx-hungary.var
	echo 'Content-language: zh' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-hungary.var
	echo >> macosx-hungary.var
../..//down/powerpc/morphos-hungary.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//morphos-hungary.html.bg -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-hungary.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-hungary.html.en -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-hungary.html.fi: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//morphos-hungary.html.fi -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-hungary.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//morphos-hungary.html.fr -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-hungary.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//morphos-hungary.html.id -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-hungary.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//morphos-hungary.html.it -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-hungary.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//morphos-hungary.html.nl -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-hungary.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//morphos-hungary.html.po -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-hungary.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//morphos-hungary.html.sl -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-hungary.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//morphos-hungary.html.ru -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-hungary.html.zh: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//morphos-hungary.html.zh -oe utf-16 morphos.adp
../..//down/powerpc/morphos-hungary.html: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-hungary.html -oe ISO-8859-1 morphos.adp

../..//down/powerpc/morphos-hungary.var: gen_makefile.conf
	echo > morphos-hungary.var
	echo 'URI: morphos-hungary.html.bg' >> morphos-hungary.var
	echo 'Content-language: bg' >> morphos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.en' >> morphos-hungary.var
	echo 'Content-language: en' >> morphos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.fi' >> morphos-hungary.var
	echo 'Content-language: fi' >> morphos-hungary.var
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
	echo 'URI: morphos-hungary.html.zh' >> morphos-hungary.var
	echo 'Content-language: zh' >> morphos-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> morphos-hungary.var
	echo >> morphos-hungary.var
../..//down/powerpc/linux-israel.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//linux-israel.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-israel.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-israel.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-israel.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//linux-israel.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-israel.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//linux-israel.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-israel.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//linux-israel.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-israel.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//linux-israel.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-israel.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//linux-israel.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-israel.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//linux-israel.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-israel.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//linux-israel.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-israel.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//linux-israel.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-israel.html.zh: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-israel.html.zh -oe utf-16 linux.adp
../..//down/powerpc/linux-israel.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-israel.html -oe ISO-8859-1 linux.adp

../..//down/powerpc/linux-israel.var: gen_makefile.conf
	echo > linux-israel.var
	echo 'URI: linux-israel.html.bg' >> linux-israel.var
	echo 'Content-language: bg' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.en' >> linux-israel.var
	echo 'Content-language: en' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.fi' >> linux-israel.var
	echo 'Content-language: fi' >> linux-israel.var
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
	echo 'URI: linux-israel.html.zh' >> linux-israel.var
	echo 'Content-language: zh' >> linux-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-israel.var
	echo >> linux-israel.var
../..//down/powerpc/macos-israel.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macos-israel.html.bg -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-israel.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-israel.html.en -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-israel.html.fi: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macos-israel.html.fi -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-israel.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macos-israel.html.fr -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-israel.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macos-israel.html.id -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-israel.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macos-israel.html.it -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-israel.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macos-israel.html.nl -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-israel.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macos-israel.html.po -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-israel.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macos-israel.html.sl -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-israel.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macos-israel.html.ru -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-israel.html.zh: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macos-israel.html.zh -oe utf-16 macos.adp
../..//down/powerpc/macos-israel.html: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-israel.html -oe ISO-8859-1 macos.adp

../..//down/powerpc/macos-israel.var: gen_makefile.conf
	echo > macos-israel.var
	echo 'URI: macos-israel.html.bg' >> macos-israel.var
	echo 'Content-language: bg' >> macos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.en' >> macos-israel.var
	echo 'Content-language: en' >> macos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.fi' >> macos-israel.var
	echo 'Content-language: fi' >> macos-israel.var
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
	echo 'URI: macos-israel.html.zh' >> macos-israel.var
	echo 'Content-language: zh' >> macos-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> macos-israel.var
	echo >> macos-israel.var
../..//down/powerpc/macosx-israel.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macosx-israel.html.bg -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-israel.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-israel.html.en -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-israel.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macosx-israel.html.fi -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-israel.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macosx-israel.html.fr -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-israel.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macosx-israel.html.id -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-israel.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macosx-israel.html.it -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-israel.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macosx-israel.html.nl -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-israel.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macosx-israel.html.po -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-israel.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macosx-israel.html.sl -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-israel.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macosx-israel.html.ru -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-israel.html.zh: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-israel.html.zh -oe utf-16 macosx.adp
../..//down/powerpc/macosx-israel.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-israel.html -oe ISO-8859-1 macosx.adp

../..//down/powerpc/macosx-israel.var: gen_makefile.conf
	echo > macosx-israel.var
	echo 'URI: macosx-israel.html.bg' >> macosx-israel.var
	echo 'Content-language: bg' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.en' >> macosx-israel.var
	echo 'Content-language: en' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.fi' >> macosx-israel.var
	echo 'Content-language: fi' >> macosx-israel.var
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
	echo 'URI: macosx-israel.html.zh' >> macosx-israel.var
	echo 'Content-language: zh' >> macosx-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-israel.var
	echo >> macosx-israel.var
../..//down/powerpc/morphos-israel.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//morphos-israel.html.bg -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-israel.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-israel.html.en -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-israel.html.fi: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//morphos-israel.html.fi -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-israel.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//morphos-israel.html.fr -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-israel.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//morphos-israel.html.id -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-israel.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//morphos-israel.html.it -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-israel.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//morphos-israel.html.nl -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-israel.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//morphos-israel.html.po -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-israel.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//morphos-israel.html.sl -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-israel.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//morphos-israel.html.ru -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-israel.html.zh: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//morphos-israel.html.zh -oe utf-16 morphos.adp
../..//down/powerpc/morphos-israel.html: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-israel.html -oe ISO-8859-1 morphos.adp

../..//down/powerpc/morphos-israel.var: gen_makefile.conf
	echo > morphos-israel.var
	echo 'URI: morphos-israel.html.bg' >> morphos-israel.var
	echo 'Content-language: bg' >> morphos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.en' >> morphos-israel.var
	echo 'Content-language: en' >> morphos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.fi' >> morphos-israel.var
	echo 'Content-language: fi' >> morphos-israel.var
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
	echo 'URI: morphos-israel.html.zh' >> morphos-israel.var
	echo 'Content-language: zh' >> morphos-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> morphos-israel.var
	echo >> morphos-israel.var
../..//down/powerpc/linux-netherlands.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-netherlands.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-netherlands.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-netherlands.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-netherlands.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-netherlands.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-netherlands.html.zh: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.zh -oe utf-16 linux.adp
../..//down/powerpc/linux-netherlands.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html -oe ISO-8859-1 linux.adp

../..//down/powerpc/linux-netherlands.var: gen_makefile.conf
	echo > linux-netherlands.var
	echo 'URI: linux-netherlands.html.bg' >> linux-netherlands.var
	echo 'Content-language: bg' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.en' >> linux-netherlands.var
	echo 'Content-language: en' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.fi' >> linux-netherlands.var
	echo 'Content-language: fi' >> linux-netherlands.var
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
	echo 'URI: linux-netherlands.html.zh' >> linux-netherlands.var
	echo 'Content-language: zh' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-netherlands.var
	echo >> linux-netherlands.var
../..//down/powerpc/macos-netherlands.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macos-netherlands.html.bg -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-netherlands.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-netherlands.html.en -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-netherlands.html.fi: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macos-netherlands.html.fi -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-netherlands.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macos-netherlands.html.fr -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-netherlands.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macos-netherlands.html.id -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-netherlands.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macos-netherlands.html.it -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-netherlands.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macos-netherlands.html.nl -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-netherlands.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macos-netherlands.html.po -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-netherlands.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macos-netherlands.html.sl -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-netherlands.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macos-netherlands.html.ru -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-netherlands.html.zh: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macos-netherlands.html.zh -oe utf-16 macos.adp
../..//down/powerpc/macos-netherlands.html: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-netherlands.html -oe ISO-8859-1 macos.adp

../..//down/powerpc/macos-netherlands.var: gen_makefile.conf
	echo > macos-netherlands.var
	echo 'URI: macos-netherlands.html.bg' >> macos-netherlands.var
	echo 'Content-language: bg' >> macos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.en' >> macos-netherlands.var
	echo 'Content-language: en' >> macos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.fi' >> macos-netherlands.var
	echo 'Content-language: fi' >> macos-netherlands.var
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
	echo 'URI: macos-netherlands.html.zh' >> macos-netherlands.var
	echo 'Content-language: zh' >> macos-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> macos-netherlands.var
	echo >> macos-netherlands.var
../..//down/powerpc/macosx-netherlands.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.bg -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-netherlands.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.en -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-netherlands.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.fi -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-netherlands.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.fr -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-netherlands.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.id -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-netherlands.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.it -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-netherlands.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.nl -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-netherlands.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.po -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-netherlands.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.sl -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-netherlands.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.ru -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-netherlands.html.zh: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.zh -oe utf-16 macosx.adp
../..//down/powerpc/macosx-netherlands.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html -oe ISO-8859-1 macosx.adp

../..//down/powerpc/macosx-netherlands.var: gen_makefile.conf
	echo > macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.bg' >> macosx-netherlands.var
	echo 'Content-language: bg' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.en' >> macosx-netherlands.var
	echo 'Content-language: en' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.fi' >> macosx-netherlands.var
	echo 'Content-language: fi' >> macosx-netherlands.var
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
	echo 'URI: macosx-netherlands.html.zh' >> macosx-netherlands.var
	echo 'Content-language: zh' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
../..//down/powerpc/morphos-netherlands.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//morphos-netherlands.html.bg -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-netherlands.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-netherlands.html.en -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-netherlands.html.fi: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//morphos-netherlands.html.fi -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-netherlands.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//morphos-netherlands.html.fr -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-netherlands.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//morphos-netherlands.html.id -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-netherlands.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//morphos-netherlands.html.it -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-netherlands.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//morphos-netherlands.html.nl -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-netherlands.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//morphos-netherlands.html.po -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-netherlands.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//morphos-netherlands.html.sl -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-netherlands.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//morphos-netherlands.html.ru -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-netherlands.html.zh: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//morphos-netherlands.html.zh -oe utf-16 morphos.adp
../..//down/powerpc/morphos-netherlands.html: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-netherlands.html -oe ISO-8859-1 morphos.adp

../..//down/powerpc/morphos-netherlands.var: gen_makefile.conf
	echo > morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.bg' >> morphos-netherlands.var
	echo 'Content-language: bg' >> morphos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.en' >> morphos-netherlands.var
	echo 'Content-language: en' >> morphos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.fi' >> morphos-netherlands.var
	echo 'Content-language: fi' >> morphos-netherlands.var
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
	echo 'URI: morphos-netherlands.html.zh' >> morphos-netherlands.var
	echo 'Content-language: zh' >> morphos-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
../..//down/powerpc/linux-norway.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//linux-norway.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-norway.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-norway.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-norway.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//linux-norway.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-norway.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//linux-norway.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-norway.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//linux-norway.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-norway.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//linux-norway.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-norway.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//linux-norway.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-norway.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//linux-norway.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-norway.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//linux-norway.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-norway.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//linux-norway.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-norway.html.zh: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-norway.html.zh -oe utf-16 linux.adp
../..//down/powerpc/linux-norway.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-norway.html -oe ISO-8859-1 linux.adp

../..//down/powerpc/linux-norway.var: gen_makefile.conf
	echo > linux-norway.var
	echo 'URI: linux-norway.html.bg' >> linux-norway.var
	echo 'Content-language: bg' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.en' >> linux-norway.var
	echo 'Content-language: en' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.fi' >> linux-norway.var
	echo 'Content-language: fi' >> linux-norway.var
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
	echo 'URI: linux-norway.html.zh' >> linux-norway.var
	echo 'Content-language: zh' >> linux-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-norway.var
	echo >> linux-norway.var
../..//down/powerpc/macos-norway.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macos-norway.html.bg -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-norway.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-norway.html.en -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-norway.html.fi: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macos-norway.html.fi -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-norway.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macos-norway.html.fr -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-norway.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macos-norway.html.id -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-norway.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macos-norway.html.it -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-norway.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macos-norway.html.nl -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-norway.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macos-norway.html.po -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-norway.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macos-norway.html.sl -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-norway.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macos-norway.html.ru -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-norway.html.zh: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macos-norway.html.zh -oe utf-16 macos.adp
../..//down/powerpc/macos-norway.html: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-norway.html -oe ISO-8859-1 macos.adp

../..//down/powerpc/macos-norway.var: gen_makefile.conf
	echo > macos-norway.var
	echo 'URI: macos-norway.html.bg' >> macos-norway.var
	echo 'Content-language: bg' >> macos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.en' >> macos-norway.var
	echo 'Content-language: en' >> macos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.fi' >> macos-norway.var
	echo 'Content-language: fi' >> macos-norway.var
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
	echo 'URI: macos-norway.html.zh' >> macos-norway.var
	echo 'Content-language: zh' >> macos-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> macos-norway.var
	echo >> macos-norway.var
../..//down/powerpc/macosx-norway.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macosx-norway.html.bg -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-norway.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-norway.html.en -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-norway.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macosx-norway.html.fi -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-norway.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macosx-norway.html.fr -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-norway.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macosx-norway.html.id -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-norway.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macosx-norway.html.it -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-norway.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macosx-norway.html.nl -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-norway.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macosx-norway.html.po -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-norway.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macosx-norway.html.sl -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-norway.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macosx-norway.html.ru -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-norway.html.zh: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-norway.html.zh -oe utf-16 macosx.adp
../..//down/powerpc/macosx-norway.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-norway.html -oe ISO-8859-1 macosx.adp

../..//down/powerpc/macosx-norway.var: gen_makefile.conf
	echo > macosx-norway.var
	echo 'URI: macosx-norway.html.bg' >> macosx-norway.var
	echo 'Content-language: bg' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.en' >> macosx-norway.var
	echo 'Content-language: en' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.fi' >> macosx-norway.var
	echo 'Content-language: fi' >> macosx-norway.var
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
	echo 'URI: macosx-norway.html.zh' >> macosx-norway.var
	echo 'Content-language: zh' >> macosx-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-norway.var
	echo >> macosx-norway.var
../..//down/powerpc/morphos-norway.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//morphos-norway.html.bg -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-norway.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-norway.html.en -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-norway.html.fi: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//morphos-norway.html.fi -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-norway.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//morphos-norway.html.fr -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-norway.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//morphos-norway.html.id -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-norway.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//morphos-norway.html.it -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-norway.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//morphos-norway.html.nl -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-norway.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//morphos-norway.html.po -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-norway.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//morphos-norway.html.sl -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-norway.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//morphos-norway.html.ru -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-norway.html.zh: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//morphos-norway.html.zh -oe utf-16 morphos.adp
../..//down/powerpc/morphos-norway.html: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-norway.html -oe ISO-8859-1 morphos.adp

../..//down/powerpc/morphos-norway.var: gen_makefile.conf
	echo > morphos-norway.var
	echo 'URI: morphos-norway.html.bg' >> morphos-norway.var
	echo 'Content-language: bg' >> morphos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.en' >> morphos-norway.var
	echo 'Content-language: en' >> morphos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.fi' >> morphos-norway.var
	echo 'Content-language: fi' >> morphos-norway.var
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
	echo 'URI: morphos-norway.html.zh' >> morphos-norway.var
	echo 'Content-language: zh' >> morphos-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> morphos-norway.var
	echo >> morphos-norway.var
../..//down/powerpc/linux-russia.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//linux-russia.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-russia.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-russia.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-russia.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//linux-russia.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-russia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//linux-russia.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-russia.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//linux-russia.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-russia.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//linux-russia.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-russia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//linux-russia.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-russia.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//linux-russia.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-russia.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//linux-russia.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-russia.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//linux-russia.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-russia.html.zh: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-russia.html.zh -oe utf-16 linux.adp
../..//down/powerpc/linux-russia.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-russia.html -oe ISO-8859-1 linux.adp

../..//down/powerpc/linux-russia.var: gen_makefile.conf
	echo > linux-russia.var
	echo 'URI: linux-russia.html.bg' >> linux-russia.var
	echo 'Content-language: bg' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.en' >> linux-russia.var
	echo 'Content-language: en' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.fi' >> linux-russia.var
	echo 'Content-language: fi' >> linux-russia.var
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
	echo 'URI: linux-russia.html.zh' >> linux-russia.var
	echo 'Content-language: zh' >> linux-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-russia.var
	echo >> linux-russia.var
../..//down/powerpc/macos-russia.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macos-russia.html.bg -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-russia.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-russia.html.en -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-russia.html.fi: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macos-russia.html.fi -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-russia.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macos-russia.html.fr -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-russia.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macos-russia.html.id -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-russia.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macos-russia.html.it -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-russia.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macos-russia.html.nl -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-russia.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macos-russia.html.po -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-russia.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macos-russia.html.sl -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-russia.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macos-russia.html.ru -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-russia.html.zh: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macos-russia.html.zh -oe utf-16 macos.adp
../..//down/powerpc/macos-russia.html: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-russia.html -oe ISO-8859-1 macos.adp

../..//down/powerpc/macos-russia.var: gen_makefile.conf
	echo > macos-russia.var
	echo 'URI: macos-russia.html.bg' >> macos-russia.var
	echo 'Content-language: bg' >> macos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.en' >> macos-russia.var
	echo 'Content-language: en' >> macos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.fi' >> macos-russia.var
	echo 'Content-language: fi' >> macos-russia.var
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
	echo 'URI: macos-russia.html.zh' >> macos-russia.var
	echo 'Content-language: zh' >> macos-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> macos-russia.var
	echo >> macos-russia.var
../..//down/powerpc/macosx-russia.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macosx-russia.html.bg -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-russia.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-russia.html.en -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-russia.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macosx-russia.html.fi -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-russia.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macosx-russia.html.fr -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-russia.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macosx-russia.html.id -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-russia.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macosx-russia.html.it -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-russia.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macosx-russia.html.nl -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-russia.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macosx-russia.html.po -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-russia.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macosx-russia.html.sl -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-russia.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macosx-russia.html.ru -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-russia.html.zh: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-russia.html.zh -oe utf-16 macosx.adp
../..//down/powerpc/macosx-russia.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-russia.html -oe ISO-8859-1 macosx.adp

../..//down/powerpc/macosx-russia.var: gen_makefile.conf
	echo > macosx-russia.var
	echo 'URI: macosx-russia.html.bg' >> macosx-russia.var
	echo 'Content-language: bg' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.en' >> macosx-russia.var
	echo 'Content-language: en' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.fi' >> macosx-russia.var
	echo 'Content-language: fi' >> macosx-russia.var
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
	echo 'URI: macosx-russia.html.zh' >> macosx-russia.var
	echo 'Content-language: zh' >> macosx-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-russia.var
	echo >> macosx-russia.var
../..//down/powerpc/morphos-russia.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//morphos-russia.html.bg -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-russia.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-russia.html.en -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-russia.html.fi: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//morphos-russia.html.fi -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-russia.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//morphos-russia.html.fr -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-russia.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//morphos-russia.html.id -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-russia.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//morphos-russia.html.it -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-russia.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//morphos-russia.html.nl -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-russia.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//morphos-russia.html.po -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-russia.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//morphos-russia.html.sl -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-russia.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//morphos-russia.html.ru -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-russia.html.zh: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//morphos-russia.html.zh -oe utf-16 morphos.adp
../..//down/powerpc/morphos-russia.html: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-russia.html -oe ISO-8859-1 morphos.adp

../..//down/powerpc/morphos-russia.var: gen_makefile.conf
	echo > morphos-russia.var
	echo 'URI: morphos-russia.html.bg' >> morphos-russia.var
	echo 'Content-language: bg' >> morphos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.en' >> morphos-russia.var
	echo 'Content-language: en' >> morphos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.fi' >> morphos-russia.var
	echo 'Content-language: fi' >> morphos-russia.var
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
	echo 'URI: morphos-russia.html.zh' >> morphos-russia.var
	echo 'Content-language: zh' >> morphos-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> morphos-russia.var
	echo >> morphos-russia.var
../..//down/powerpc/linux-ftp.freepascal.org.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//linux-ftp.freepascal.org.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-ftp.freepascal.org.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-ftp.freepascal.org.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-ftp.freepascal.org.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//linux-ftp.freepascal.org.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-ftp.freepascal.org.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//linux-ftp.freepascal.org.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-ftp.freepascal.org.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//linux-ftp.freepascal.org.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-ftp.freepascal.org.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//linux-ftp.freepascal.org.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-ftp.freepascal.org.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//linux-ftp.freepascal.org.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-ftp.freepascal.org.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//linux-ftp.freepascal.org.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-ftp.freepascal.org.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//linux-ftp.freepascal.org.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-ftp.freepascal.org.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//linux-ftp.freepascal.org.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-ftp.freepascal.org.html.zh: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-ftp.freepascal.org.html.zh -oe utf-16 linux.adp
../..//down/powerpc/linux-ftp.freepascal.org.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-ftp.freepascal.org.html -oe ISO-8859-1 linux.adp

../..//down/powerpc/linux-ftp.freepascal.org.var: gen_makefile.conf
	echo > linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.bg' >> linux-ftp.freepascal.org.var
	echo 'Content-language: bg' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.en' >> linux-ftp.freepascal.org.var
	echo 'Content-language: en' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.fi' >> linux-ftp.freepascal.org.var
	echo 'Content-language: fi' >> linux-ftp.freepascal.org.var
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
	echo 'URI: linux-ftp.freepascal.org.html.zh' >> linux-ftp.freepascal.org.var
	echo 'Content-language: zh' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
../..//down/powerpc/macos-ftp.freepascal.org.html.bg: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macos-ftp.freepascal.org.html.bg -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-ftp.freepascal.org.html.en: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-ftp.freepascal.org.html.en -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-ftp.freepascal.org.html.fi: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macos-ftp.freepascal.org.html.fi -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-ftp.freepascal.org.html.fr: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macos-ftp.freepascal.org.html.fr -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-ftp.freepascal.org.html.id: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macos-ftp.freepascal.org.html.id -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-ftp.freepascal.org.html.it: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macos-ftp.freepascal.org.html.it -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-ftp.freepascal.org.html.nl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macos-ftp.freepascal.org.html.nl -oe iso-8859-1 macos.adp
../..//down/powerpc/macos-ftp.freepascal.org.html.po: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macos-ftp.freepascal.org.html.po -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-ftp.freepascal.org.html.sl: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macos-ftp.freepascal.org.html.sl -oe iso-8859-2 macos.adp
../..//down/powerpc/macos-ftp.freepascal.org.html.ru: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macos-ftp.freepascal.org.html.ru -oe iso-8859-5 macos.adp
../..//down/powerpc/macos-ftp.freepascal.org.html.zh: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macos-ftp.freepascal.org.html.zh -oe utf-16 macos.adp
../..//down/powerpc/macos-ftp.freepascal.org.html: macos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macos-ftp.freepascal.org.html -oe ISO-8859-1 macos.adp

../..//down/powerpc/macos-ftp.freepascal.org.var: gen_makefile.conf
	echo > macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.bg' >> macos-ftp.freepascal.org.var
	echo 'Content-language: bg' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.en' >> macos-ftp.freepascal.org.var
	echo 'Content-language: en' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.fi' >> macos-ftp.freepascal.org.var
	echo 'Content-language: fi' >> macos-ftp.freepascal.org.var
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
	echo 'URI: macos-ftp.freepascal.org.html.zh' >> macos-ftp.freepascal.org.var
	echo 'Content-language: zh' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=utf-16' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
../..//down/powerpc/macosx-ftp.freepascal.org.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macosx-ftp.freepascal.org.html.bg -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-ftp.freepascal.org.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-ftp.freepascal.org.html.en -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-ftp.freepascal.org.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macosx-ftp.freepascal.org.html.fi -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-ftp.freepascal.org.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macosx-ftp.freepascal.org.html.fr -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-ftp.freepascal.org.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macosx-ftp.freepascal.org.html.id -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-ftp.freepascal.org.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macosx-ftp.freepascal.org.html.it -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-ftp.freepascal.org.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macosx-ftp.freepascal.org.html.nl -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-ftp.freepascal.org.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macosx-ftp.freepascal.org.html.po -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-ftp.freepascal.org.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macosx-ftp.freepascal.org.html.sl -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-ftp.freepascal.org.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macosx-ftp.freepascal.org.html.ru -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-ftp.freepascal.org.html.zh: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-ftp.freepascal.org.html.zh -oe utf-16 macosx.adp
../..//down/powerpc/macosx-ftp.freepascal.org.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-ftp.freepascal.org.html -oe ISO-8859-1 macosx.adp

../..//down/powerpc/macosx-ftp.freepascal.org.var: gen_makefile.conf
	echo > macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.bg' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: bg' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.en' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: en' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.fi' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: fi' >> macosx-ftp.freepascal.org.var
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
	echo 'URI: macosx-ftp.freepascal.org.html.zh' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: zh' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
../..//down/powerpc/morphos-ftp.freepascal.org.html.bg: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//morphos-ftp.freepascal.org.html.bg -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-ftp.freepascal.org.html.en: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-ftp.freepascal.org.html.en -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-ftp.freepascal.org.html.fi: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//morphos-ftp.freepascal.org.html.fi -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-ftp.freepascal.org.html.fr: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//morphos-ftp.freepascal.org.html.fr -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-ftp.freepascal.org.html.id: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//morphos-ftp.freepascal.org.html.id -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-ftp.freepascal.org.html.it: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//morphos-ftp.freepascal.org.html.it -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-ftp.freepascal.org.html.nl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//morphos-ftp.freepascal.org.html.nl -oe iso-8859-1 morphos.adp
../..//down/powerpc/morphos-ftp.freepascal.org.html.po: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//morphos-ftp.freepascal.org.html.po -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-ftp.freepascal.org.html.sl: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//morphos-ftp.freepascal.org.html.sl -oe iso-8859-2 morphos.adp
../..//down/powerpc/morphos-ftp.freepascal.org.html.ru: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//morphos-ftp.freepascal.org.html.ru -oe iso-8859-5 morphos.adp
../..//down/powerpc/morphos-ftp.freepascal.org.html.zh: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//morphos-ftp.freepascal.org.html.zh -oe utf-16 morphos.adp
../..//down/powerpc/morphos-ftp.freepascal.org.html: morphos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//morphos-ftp.freepascal.org.html -oe ISO-8859-1 morphos.adp

../..//down/powerpc/morphos-ftp.freepascal.org.var: gen_makefile.conf
	echo > morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.bg' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: bg' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.en' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: en' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.fi' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: fi' >> morphos-ftp.freepascal.org.var
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
	echo 'URI: morphos-ftp.freepascal.org.html.zh' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: zh' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=utf-16' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var

../..//down/powerpc/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/linux.html.zh: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh -oe utf-16 ../../templatemirror.adp
../..//down/powerpc/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.var: gen_makefile.conf
	echo > linux.var
	echo 'URI: linux.html.bg' >> linux.var
	echo 'Content-language: bg' >> linux.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.en' >> linux.var
	echo 'Content-language: en' >> linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.fi' >> linux.var
	echo 'Content-language: fi' >> linux.var
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
	echo 'URI: linux.html.zh' >> linux.var
	echo 'Content-language: zh' >> linux.var
	echo 'Content-type: text/html; charset=utf-16' >> linux.var
	echo >> linux.var

../..//down/powerpc/macos.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o macos.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/macos.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macos.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macos.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o macos.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macos.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o macos.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macos.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o macos.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macos.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o macos.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macos.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o macos.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macos.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o macos.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/macos.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o macos.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/macos.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o macos.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/macos.html.zh: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o macos.html.zh -oe utf-16 ../../templatemirror.adp
../..//down/powerpc/macos.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=macos -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macos.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/powerpc/macos.var: gen_makefile.conf
	echo > macos.var
	echo 'URI: macos.html.bg' >> macos.var
	echo 'Content-language: bg' >> macos.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macos.var
	echo >> macos.var
	echo 'URI: macos.html.en' >> macos.var
	echo 'Content-language: en' >> macos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macos.var
	echo >> macos.var
	echo 'URI: macos.html.fi' >> macos.var
	echo 'Content-language: fi' >> macos.var
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
	echo 'URI: macos.html.zh' >> macos.var
	echo 'Content-language: zh' >> macos.var
	echo 'Content-type: text/html; charset=utf-16' >> macos.var
	echo >> macos.var

../..//down/powerpc/macosx.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o macosx.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/macosx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macosx.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o macosx.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o macosx.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o macosx.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o macosx.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o macosx.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o macosx.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/macosx.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o macosx.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/macosx.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o macosx.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/macosx.html.zh: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o macosx.html.zh -oe utf-16 ../../templatemirror.adp
../..//down/powerpc/macosx.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=macosx -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macosx.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.var: gen_makefile.conf
	echo > macosx.var
	echo 'URI: macosx.html.bg' >> macosx.var
	echo 'Content-language: bg' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.en' >> macosx.var
	echo 'Content-language: en' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.fi' >> macosx.var
	echo 'Content-language: fi' >> macosx.var
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
	echo 'URI: macosx.html.zh' >> macosx.var
	echo 'Content-language: zh' >> macosx.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx.var
	echo >> macosx.var

../..//down/powerpc/morphos.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o morphos.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/morphos.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o morphos.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/morphos.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o morphos.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/morphos.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o morphos.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/morphos.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o morphos.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/morphos.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o morphos.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/morphos.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o morphos.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/morphos.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o morphos.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/morphos.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o morphos.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/morphos.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o morphos.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/morphos.html.zh: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.zh.adp -l zh_CN -m ../../default-master.adp -o morphos.html.zh -oe utf-16 ../../templatemirror.adp
../..//down/powerpc/morphos.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=morphos -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o morphos.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/powerpc/morphos.var: gen_makefile.conf
	echo > morphos.var
	echo 'URI: morphos.html.bg' >> morphos.var
	echo 'Content-language: bg' >> morphos.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> morphos.var
	echo >> morphos.var
	echo 'URI: morphos.html.en' >> morphos.var
	echo 'Content-language: en' >> morphos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> morphos.var
	echo >> morphos.var
	echo 'URI: morphos.html.fi' >> morphos.var
	echo 'Content-language: fi' >> morphos.var
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
	echo 'URI: morphos.html.zh' >> morphos.var
	echo 'Content-language: zh' >> morphos.var
	echo 'Content-type: text/html; charset=utf-16' >> morphos.var
	echo >> morphos.var

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

all_pages: mirrors.dat ../..//down/powerpc/linux-australia.html.bg ../..//down/powerpc/linux-australia.html.en ../..//down/powerpc/linux-australia.html.fi ../..//down/powerpc/linux-australia.html.fr ../..//down/powerpc/linux-australia.html.id ../..//down/powerpc/linux-australia.html.it ../..//down/powerpc/linux-australia.html.nl ../..//down/powerpc/linux-australia.html.po ../..//down/powerpc/linux-australia.html.sl ../..//down/powerpc/linux-australia.html.ru ../..//down/powerpc/linux-australia.html.zh ../..//down/powerpc/linux-australia.var ../..//down/powerpc/macos-australia.html.bg ../..//down/powerpc/macos-australia.html.en ../..//down/powerpc/macos-australia.html.fi ../..//down/powerpc/macos-australia.html.fr ../..//down/powerpc/macos-australia.html.id ../..//down/powerpc/macos-australia.html.it ../..//down/powerpc/macos-australia.html.nl ../..//down/powerpc/macos-australia.html.po ../..//down/powerpc/macos-australia.html.sl ../..//down/powerpc/macos-australia.html.ru ../..//down/powerpc/macos-australia.html.zh ../..//down/powerpc/macos-australia.var ../..//down/powerpc/macosx-australia.html.bg ../..//down/powerpc/macosx-australia.html.en ../..//down/powerpc/macosx-australia.html.fi ../..//down/powerpc/macosx-australia.html.fr ../..//down/powerpc/macosx-australia.html.id ../..//down/powerpc/macosx-australia.html.it ../..//down/powerpc/macosx-australia.html.nl ../..//down/powerpc/macosx-australia.html.po ../..//down/powerpc/macosx-australia.html.sl ../..//down/powerpc/macosx-australia.html.ru ../..//down/powerpc/macosx-australia.html.zh ../..//down/powerpc/macosx-australia.var ../..//down/powerpc/morphos-australia.html.bg ../..//down/powerpc/morphos-australia.html.en ../..//down/powerpc/morphos-australia.html.fi ../..//down/powerpc/morphos-australia.html.fr ../..//down/powerpc/morphos-australia.html.id ../..//down/powerpc/morphos-australia.html.it ../..//down/powerpc/morphos-australia.html.nl ../..//down/powerpc/morphos-australia.html.po ../..//down/powerpc/morphos-australia.html.sl ../..//down/powerpc/morphos-australia.html.ru ../..//down/powerpc/morphos-australia.html.zh ../..//down/powerpc/morphos-australia.var ../..//down/powerpc/linux-austria.html.bg ../..//down/powerpc/linux-austria.html.en ../..//down/powerpc/linux-austria.html.fi ../..//down/powerpc/linux-austria.html.fr ../..//down/powerpc/linux-austria.html.id ../..//down/powerpc/linux-austria.html.it ../..//down/powerpc/linux-austria.html.nl ../..//down/powerpc/linux-austria.html.po ../..//down/powerpc/linux-austria.html.sl ../..//down/powerpc/linux-austria.html.ru ../..//down/powerpc/linux-austria.html.zh ../..//down/powerpc/linux-austria.var ../..//down/powerpc/macos-austria.html.bg ../..//down/powerpc/macos-austria.html.en ../..//down/powerpc/macos-austria.html.fi ../..//down/powerpc/macos-austria.html.fr ../..//down/powerpc/macos-austria.html.id ../..//down/powerpc/macos-austria.html.it ../..//down/powerpc/macos-austria.html.nl ../..//down/powerpc/macos-austria.html.po ../..//down/powerpc/macos-austria.html.sl ../..//down/powerpc/macos-austria.html.ru ../..//down/powerpc/macos-austria.html.zh ../..//down/powerpc/macos-austria.var ../..//down/powerpc/macosx-austria.html.bg ../..//down/powerpc/macosx-austria.html.en ../..//down/powerpc/macosx-austria.html.fi ../..//down/powerpc/macosx-austria.html.fr ../..//down/powerpc/macosx-austria.html.id ../..//down/powerpc/macosx-austria.html.it ../..//down/powerpc/macosx-austria.html.nl ../..//down/powerpc/macosx-austria.html.po ../..//down/powerpc/macosx-austria.html.sl ../..//down/powerpc/macosx-austria.html.ru ../..//down/powerpc/macosx-austria.html.zh ../..//down/powerpc/macosx-austria.var ../..//down/powerpc/morphos-austria.html.bg ../..//down/powerpc/morphos-austria.html.en ../..//down/powerpc/morphos-austria.html.fi ../..//down/powerpc/morphos-austria.html.fr ../..//down/powerpc/morphos-austria.html.id ../..//down/powerpc/morphos-austria.html.it ../..//down/powerpc/morphos-austria.html.nl ../..//down/powerpc/morphos-austria.html.po ../..//down/powerpc/morphos-austria.html.sl ../..//down/powerpc/morphos-austria.html.ru ../..//down/powerpc/morphos-austria.html.zh ../..//down/powerpc/morphos-austria.var ../..//down/powerpc/linux-hungary.html.bg ../..//down/powerpc/linux-hungary.html.en ../..//down/powerpc/linux-hungary.html.fi ../..//down/powerpc/linux-hungary.html.fr ../..//down/powerpc/linux-hungary.html.id ../..//down/powerpc/linux-hungary.html.it ../..//down/powerpc/linux-hungary.html.nl ../..//down/powerpc/linux-hungary.html.po ../..//down/powerpc/linux-hungary.html.sl ../..//down/powerpc/linux-hungary.html.ru ../..//down/powerpc/linux-hungary.html.zh ../..//down/powerpc/linux-hungary.var ../..//down/powerpc/macos-hungary.html.bg ../..//down/powerpc/macos-hungary.html.en ../..//down/powerpc/macos-hungary.html.fi ../..//down/powerpc/macos-hungary.html.fr ../..//down/powerpc/macos-hungary.html.id ../..//down/powerpc/macos-hungary.html.it ../..//down/powerpc/macos-hungary.html.nl ../..//down/powerpc/macos-hungary.html.po ../..//down/powerpc/macos-hungary.html.sl ../..//down/powerpc/macos-hungary.html.ru ../..//down/powerpc/macos-hungary.html.zh ../..//down/powerpc/macos-hungary.var ../..//down/powerpc/macosx-hungary.html.bg ../..//down/powerpc/macosx-hungary.html.en ../..//down/powerpc/macosx-hungary.html.fi ../..//down/powerpc/macosx-hungary.html.fr ../..//down/powerpc/macosx-hungary.html.id ../..//down/powerpc/macosx-hungary.html.it ../..//down/powerpc/macosx-hungary.html.nl ../..//down/powerpc/macosx-hungary.html.po ../..//down/powerpc/macosx-hungary.html.sl ../..//down/powerpc/macosx-hungary.html.ru ../..//down/powerpc/macosx-hungary.html.zh ../..//down/powerpc/macosx-hungary.var ../..//down/powerpc/morphos-hungary.html.bg ../..//down/powerpc/morphos-hungary.html.en ../..//down/powerpc/morphos-hungary.html.fi ../..//down/powerpc/morphos-hungary.html.fr ../..//down/powerpc/morphos-hungary.html.id ../..//down/powerpc/morphos-hungary.html.it ../..//down/powerpc/morphos-hungary.html.nl ../..//down/powerpc/morphos-hungary.html.po ../..//down/powerpc/morphos-hungary.html.sl ../..//down/powerpc/morphos-hungary.html.ru ../..//down/powerpc/morphos-hungary.html.zh ../..//down/powerpc/morphos-hungary.var ../..//down/powerpc/linux-israel.html.bg ../..//down/powerpc/linux-israel.html.en ../..//down/powerpc/linux-israel.html.fi ../..//down/powerpc/linux-israel.html.fr ../..//down/powerpc/linux-israel.html.id ../..//down/powerpc/linux-israel.html.it ../..//down/powerpc/linux-israel.html.nl ../..//down/powerpc/linux-israel.html.po ../..//down/powerpc/linux-israel.html.sl ../..//down/powerpc/linux-israel.html.ru ../..//down/powerpc/linux-israel.html.zh ../..//down/powerpc/linux-israel.var ../..//down/powerpc/macos-israel.html.bg ../..//down/powerpc/macos-israel.html.en ../..//down/powerpc/macos-israel.html.fi ../..//down/powerpc/macos-israel.html.fr ../..//down/powerpc/macos-israel.html.id ../..//down/powerpc/macos-israel.html.it ../..//down/powerpc/macos-israel.html.nl ../..//down/powerpc/macos-israel.html.po ../..//down/powerpc/macos-israel.html.sl ../..//down/powerpc/macos-israel.html.ru ../..//down/powerpc/macos-israel.html.zh ../..//down/powerpc/macos-israel.var ../..//down/powerpc/macosx-israel.html.bg ../..//down/powerpc/macosx-israel.html.en ../..//down/powerpc/macosx-israel.html.fi ../..//down/powerpc/macosx-israel.html.fr ../..//down/powerpc/macosx-israel.html.id ../..//down/powerpc/macosx-israel.html.it ../..//down/powerpc/macosx-israel.html.nl ../..//down/powerpc/macosx-israel.html.po ../..//down/powerpc/macosx-israel.html.sl ../..//down/powerpc/macosx-israel.html.ru ../..//down/powerpc/macosx-israel.html.zh ../..//down/powerpc/macosx-israel.var ../..//down/powerpc/morphos-israel.html.bg ../..//down/powerpc/morphos-israel.html.en ../..//down/powerpc/morphos-israel.html.fi ../..//down/powerpc/morphos-israel.html.fr ../..//down/powerpc/morphos-israel.html.id ../..//down/powerpc/morphos-israel.html.it ../..//down/powerpc/morphos-israel.html.nl ../..//down/powerpc/morphos-israel.html.po ../..//down/powerpc/morphos-israel.html.sl ../..//down/powerpc/morphos-israel.html.ru ../..//down/powerpc/morphos-israel.html.zh ../..//down/powerpc/morphos-israel.var ../..//down/powerpc/linux-netherlands.html.bg ../..//down/powerpc/linux-netherlands.html.en ../..//down/powerpc/linux-netherlands.html.fi ../..//down/powerpc/linux-netherlands.html.fr ../..//down/powerpc/linux-netherlands.html.id ../..//down/powerpc/linux-netherlands.html.it ../..//down/powerpc/linux-netherlands.html.nl ../..//down/powerpc/linux-netherlands.html.po ../..//down/powerpc/linux-netherlands.html.sl ../..//down/powerpc/linux-netherlands.html.ru ../..//down/powerpc/linux-netherlands.html.zh ../..//down/powerpc/linux-netherlands.var ../..//down/powerpc/macos-netherlands.html.bg ../..//down/powerpc/macos-netherlands.html.en ../..//down/powerpc/macos-netherlands.html.fi ../..//down/powerpc/macos-netherlands.html.fr ../..//down/powerpc/macos-netherlands.html.id ../..//down/powerpc/macos-netherlands.html.it ../..//down/powerpc/macos-netherlands.html.nl ../..//down/powerpc/macos-netherlands.html.po ../..//down/powerpc/macos-netherlands.html.sl ../..//down/powerpc/macos-netherlands.html.ru ../..//down/powerpc/macos-netherlands.html.zh ../..//down/powerpc/macos-netherlands.var ../..//down/powerpc/macosx-netherlands.html.bg ../..//down/powerpc/macosx-netherlands.html.en ../..//down/powerpc/macosx-netherlands.html.fi ../..//down/powerpc/macosx-netherlands.html.fr ../..//down/powerpc/macosx-netherlands.html.id ../..//down/powerpc/macosx-netherlands.html.it ../..//down/powerpc/macosx-netherlands.html.nl ../..//down/powerpc/macosx-netherlands.html.po ../..//down/powerpc/macosx-netherlands.html.sl ../..//down/powerpc/macosx-netherlands.html.ru ../..//down/powerpc/macosx-netherlands.html.zh ../..//down/powerpc/macosx-netherlands.var ../..//down/powerpc/morphos-netherlands.html.bg ../..//down/powerpc/morphos-netherlands.html.en ../..//down/powerpc/morphos-netherlands.html.fi ../..//down/powerpc/morphos-netherlands.html.fr ../..//down/powerpc/morphos-netherlands.html.id ../..//down/powerpc/morphos-netherlands.html.it ../..//down/powerpc/morphos-netherlands.html.nl ../..//down/powerpc/morphos-netherlands.html.po ../..//down/powerpc/morphos-netherlands.html.sl ../..//down/powerpc/morphos-netherlands.html.ru ../..//down/powerpc/morphos-netherlands.html.zh ../..//down/powerpc/morphos-netherlands.var ../..//down/powerpc/linux-norway.html.bg ../..//down/powerpc/linux-norway.html.en ../..//down/powerpc/linux-norway.html.fi ../..//down/powerpc/linux-norway.html.fr ../..//down/powerpc/linux-norway.html.id ../..//down/powerpc/linux-norway.html.it ../..//down/powerpc/linux-norway.html.nl ../..//down/powerpc/linux-norway.html.po ../..//down/powerpc/linux-norway.html.sl ../..//down/powerpc/linux-norway.html.ru ../..//down/powerpc/linux-norway.html.zh ../..//down/powerpc/linux-norway.var ../..//down/powerpc/macos-norway.html.bg ../..//down/powerpc/macos-norway.html.en ../..//down/powerpc/macos-norway.html.fi ../..//down/powerpc/macos-norway.html.fr ../..//down/powerpc/macos-norway.html.id ../..//down/powerpc/macos-norway.html.it ../..//down/powerpc/macos-norway.html.nl ../..//down/powerpc/macos-norway.html.po ../..//down/powerpc/macos-norway.html.sl ../..//down/powerpc/macos-norway.html.ru ../..//down/powerpc/macos-norway.html.zh ../..//down/powerpc/macos-norway.var ../..//down/powerpc/macosx-norway.html.bg ../..//down/powerpc/macosx-norway.html.en ../..//down/powerpc/macosx-norway.html.fi ../..//down/powerpc/macosx-norway.html.fr ../..//down/powerpc/macosx-norway.html.id ../..//down/powerpc/macosx-norway.html.it ../..//down/powerpc/macosx-norway.html.nl ../..//down/powerpc/macosx-norway.html.po ../..//down/powerpc/macosx-norway.html.sl ../..//down/powerpc/macosx-norway.html.ru ../..//down/powerpc/macosx-norway.html.zh ../..//down/powerpc/macosx-norway.var ../..//down/powerpc/morphos-norway.html.bg ../..//down/powerpc/morphos-norway.html.en ../..//down/powerpc/morphos-norway.html.fi ../..//down/powerpc/morphos-norway.html.fr ../..//down/powerpc/morphos-norway.html.id ../..//down/powerpc/morphos-norway.html.it ../..//down/powerpc/morphos-norway.html.nl ../..//down/powerpc/morphos-norway.html.po ../..//down/powerpc/morphos-norway.html.sl ../..//down/powerpc/morphos-norway.html.ru ../..//down/powerpc/morphos-norway.html.zh ../..//down/powerpc/morphos-norway.var ../..//down/powerpc/linux-russia.html.bg ../..//down/powerpc/linux-russia.html.en ../..//down/powerpc/linux-russia.html.fi ../..//down/powerpc/linux-russia.html.fr ../..//down/powerpc/linux-russia.html.id ../..//down/powerpc/linux-russia.html.it ../..//down/powerpc/linux-russia.html.nl ../..//down/powerpc/linux-russia.html.po ../..//down/powerpc/linux-russia.html.sl ../..//down/powerpc/linux-russia.html.ru ../..//down/powerpc/linux-russia.html.zh ../..//down/powerpc/linux-russia.var ../..//down/powerpc/macos-russia.html.bg ../..//down/powerpc/macos-russia.html.en ../..//down/powerpc/macos-russia.html.fi ../..//down/powerpc/macos-russia.html.fr ../..//down/powerpc/macos-russia.html.id ../..//down/powerpc/macos-russia.html.it ../..//down/powerpc/macos-russia.html.nl ../..//down/powerpc/macos-russia.html.po ../..//down/powerpc/macos-russia.html.sl ../..//down/powerpc/macos-russia.html.ru ../..//down/powerpc/macos-russia.html.zh ../..//down/powerpc/macos-russia.var ../..//down/powerpc/macosx-russia.html.bg ../..//down/powerpc/macosx-russia.html.en ../..//down/powerpc/macosx-russia.html.fi ../..//down/powerpc/macosx-russia.html.fr ../..//down/powerpc/macosx-russia.html.id ../..//down/powerpc/macosx-russia.html.it ../..//down/powerpc/macosx-russia.html.nl ../..//down/powerpc/macosx-russia.html.po ../..//down/powerpc/macosx-russia.html.sl ../..//down/powerpc/macosx-russia.html.ru ../..//down/powerpc/macosx-russia.html.zh ../..//down/powerpc/macosx-russia.var ../..//down/powerpc/morphos-russia.html.bg ../..//down/powerpc/morphos-russia.html.en ../..//down/powerpc/morphos-russia.html.fi ../..//down/powerpc/morphos-russia.html.fr ../..//down/powerpc/morphos-russia.html.id ../..//down/powerpc/morphos-russia.html.it ../..//down/powerpc/morphos-russia.html.nl ../..//down/powerpc/morphos-russia.html.po ../..//down/powerpc/morphos-russia.html.sl ../..//down/powerpc/morphos-russia.html.ru ../..//down/powerpc/morphos-russia.html.zh ../..//down/powerpc/morphos-russia.var ../..//down/powerpc/linux-ftp.freepascal.org.html.bg ../..//down/powerpc/linux-ftp.freepascal.org.html.en ../..//down/powerpc/linux-ftp.freepascal.org.html.fi ../..//down/powerpc/linux-ftp.freepascal.org.html.fr ../..//down/powerpc/linux-ftp.freepascal.org.html.id ../..//down/powerpc/linux-ftp.freepascal.org.html.it ../..//down/powerpc/linux-ftp.freepascal.org.html.nl ../..//down/powerpc/linux-ftp.freepascal.org.html.po ../..//down/powerpc/linux-ftp.freepascal.org.html.sl ../..//down/powerpc/linux-ftp.freepascal.org.html.ru ../..//down/powerpc/linux-ftp.freepascal.org.html.zh ../..//down/powerpc/linux-ftp.freepascal.org.var ../..//down/powerpc/macos-ftp.freepascal.org.html.bg ../..//down/powerpc/macos-ftp.freepascal.org.html.en ../..//down/powerpc/macos-ftp.freepascal.org.html.fi ../..//down/powerpc/macos-ftp.freepascal.org.html.fr ../..//down/powerpc/macos-ftp.freepascal.org.html.id ../..//down/powerpc/macos-ftp.freepascal.org.html.it ../..//down/powerpc/macos-ftp.freepascal.org.html.nl ../..//down/powerpc/macos-ftp.freepascal.org.html.po ../..//down/powerpc/macos-ftp.freepascal.org.html.sl ../..//down/powerpc/macos-ftp.freepascal.org.html.ru ../..//down/powerpc/macos-ftp.freepascal.org.html.zh ../..//down/powerpc/macos-ftp.freepascal.org.var ../..//down/powerpc/macosx-ftp.freepascal.org.html.bg ../..//down/powerpc/macosx-ftp.freepascal.org.html.en ../..//down/powerpc/macosx-ftp.freepascal.org.html.fi ../..//down/powerpc/macosx-ftp.freepascal.org.html.fr ../..//down/powerpc/macosx-ftp.freepascal.org.html.id ../..//down/powerpc/macosx-ftp.freepascal.org.html.it ../..//down/powerpc/macosx-ftp.freepascal.org.html.nl ../..//down/powerpc/macosx-ftp.freepascal.org.html.po ../..//down/powerpc/macosx-ftp.freepascal.org.html.sl ../..//down/powerpc/macosx-ftp.freepascal.org.html.ru ../..//down/powerpc/macosx-ftp.freepascal.org.html.zh ../..//down/powerpc/macosx-ftp.freepascal.org.var ../..//down/powerpc/morphos-ftp.freepascal.org.html.bg ../..//down/powerpc/morphos-ftp.freepascal.org.html.en ../..//down/powerpc/morphos-ftp.freepascal.org.html.fi ../..//down/powerpc/morphos-ftp.freepascal.org.html.fr ../..//down/powerpc/morphos-ftp.freepascal.org.html.id ../..//down/powerpc/morphos-ftp.freepascal.org.html.it ../..//down/powerpc/morphos-ftp.freepascal.org.html.nl ../..//down/powerpc/morphos-ftp.freepascal.org.html.po ../..//down/powerpc/morphos-ftp.freepascal.org.html.sl ../..//down/powerpc/morphos-ftp.freepascal.org.html.ru ../..//down/powerpc/morphos-ftp.freepascal.org.html.zh ../..//down/powerpc/morphos-ftp.freepascal.org.var ../..//down/powerpc/linux.html.bg ../..//down/powerpc/linux.html.en ../..//down/powerpc/linux.html.fi ../..//down/powerpc/linux.html.fr ../..//down/powerpc/linux.html.id ../..//down/powerpc/linux.html.it ../..//down/powerpc/linux.html.nl ../..//down/powerpc/linux.html.po ../..//down/powerpc/linux.html.sl ../..//down/powerpc/linux.html.ru ../..//down/powerpc/linux.html.zh ../..//down/powerpc/linux.var ../..//down/powerpc/macos.html.bg ../..//down/powerpc/macos.html.en ../..//down/powerpc/macos.html.fi ../..//down/powerpc/macos.html.fr ../..//down/powerpc/macos.html.id ../..//down/powerpc/macos.html.it ../..//down/powerpc/macos.html.nl ../..//down/powerpc/macos.html.po ../..//down/powerpc/macos.html.sl ../..//down/powerpc/macos.html.ru ../..//down/powerpc/macos.html.zh ../..//down/powerpc/macos.var ../..//down/powerpc/macosx.html.bg ../..//down/powerpc/macosx.html.en ../..//down/powerpc/macosx.html.fi ../..//down/powerpc/macosx.html.fr ../..//down/powerpc/macosx.html.id ../..//down/powerpc/macosx.html.it ../..//down/powerpc/macosx.html.nl ../..//down/powerpc/macosx.html.po ../..//down/powerpc/macosx.html.sl ../..//down/powerpc/macosx.html.ru ../..//down/powerpc/macosx.html.zh ../..//down/powerpc/macosx.var ../..//down/powerpc/morphos.html.bg ../..//down/powerpc/morphos.html.en ../..//down/powerpc/morphos.html.fi ../..//down/powerpc/morphos.html.fr ../..//down/powerpc/morphos.html.id ../..//down/powerpc/morphos.html.it ../..//down/powerpc/morphos.html.nl ../..//down/powerpc/morphos.html.po ../..//down/powerpc/morphos.html.sl ../..//down/powerpc/morphos.html.ru ../..//down/powerpc/morphos.html.zh ../..//down/powerpc/morphos.var
all_en_pages: mirrors.dat ../..//down/powerpc/linux-australia.html ../..//down/powerpc/macos-australia.html ../..//down/powerpc/macosx-australia.html ../..//down/powerpc/morphos-australia.html ../..//down/powerpc/linux-austria.html ../..//down/powerpc/macos-austria.html ../..//down/powerpc/macosx-austria.html ../..//down/powerpc/morphos-austria.html ../..//down/powerpc/linux-hungary.html ../..//down/powerpc/macos-hungary.html ../..//down/powerpc/macosx-hungary.html ../..//down/powerpc/morphos-hungary.html ../..//down/powerpc/linux-israel.html ../..//down/powerpc/macos-israel.html ../..//down/powerpc/macosx-israel.html ../..//down/powerpc/morphos-israel.html ../..//down/powerpc/linux-netherlands.html ../..//down/powerpc/macos-netherlands.html ../..//down/powerpc/macosx-netherlands.html ../..//down/powerpc/morphos-netherlands.html ../..//down/powerpc/linux-norway.html ../..//down/powerpc/macos-norway.html ../..//down/powerpc/macosx-norway.html ../..//down/powerpc/morphos-norway.html ../..//down/powerpc/linux-russia.html ../..//down/powerpc/macos-russia.html ../..//down/powerpc/macosx-russia.html ../..//down/powerpc/morphos-russia.html ../..//down/powerpc/linux-ftp.freepascal.org.html ../..//down/powerpc/macos-ftp.freepascal.org.html ../..//down/powerpc/macosx-ftp.freepascal.org.html ../..//down/powerpc/morphos-ftp.freepascal.org.html ../..//down/powerpc/linux.html ../..//down/powerpc/macos.html ../..//down/powerpc/macosx.html ../..//down/powerpc/morphos.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/powerpc/

