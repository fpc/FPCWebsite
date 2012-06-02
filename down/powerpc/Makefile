
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
../..//down/powerpc/linux-australia.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-australia.html.zh-CN -oe utf-16 linux.adp
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
	echo 'URI: linux-australia.html.zh-CN' >> linux-australia.var
	echo 'Content-language: zh-CN' >> linux-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-australia.var
	echo >> linux-australia.var
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
../..//down/powerpc/macosx-australia.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-australia.html.zh-CN -oe utf-16 macosx.adp
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
	echo 'URI: macosx-australia.html.zh-CN' >> macosx-australia.var
	echo 'Content-language: zh-CN' >> macosx-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-australia.var
	echo >> macosx-australia.var
../..//down/powerpc/wii-australia.html.bg: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//wii-australia.html.bg -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-australia.html.en: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-australia.html.en -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-australia.html.fi: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//wii-australia.html.fi -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-australia.html.fr: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//wii-australia.html.fr -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-australia.html.id: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//wii-australia.html.id -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-australia.html.it: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//wii-australia.html.it -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-australia.html.nl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//wii-australia.html.nl -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-australia.html.po: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//wii-australia.html.po -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-australia.html.sl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//wii-australia.html.sl -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-australia.html.ru: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//wii-australia.html.ru -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-australia.html.zh-CN: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//wii-australia.html.zh-CN -oe utf-16 wii.adp
../..//down/powerpc/wii-australia.html: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-australia.html -oe ISO-8859-1 wii.adp

../..//down/powerpc/wii-australia.var: gen_makefile.conf
	echo > wii-australia.var
	echo 'URI: wii-australia.html.bg' >> wii-australia.var
	echo 'Content-language: bg' >> wii-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-australia.var
	echo >> wii-australia.var
	echo 'URI: wii-australia.html.en' >> wii-australia.var
	echo 'Content-language: en' >> wii-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-australia.var
	echo >> wii-australia.var
	echo 'URI: wii-australia.html.fi' >> wii-australia.var
	echo 'Content-language: fi' >> wii-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-australia.var
	echo >> wii-australia.var
	echo 'URI: wii-australia.html.fr' >> wii-australia.var
	echo 'Content-language: fr' >> wii-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-australia.var
	echo >> wii-australia.var
	echo 'URI: wii-australia.html.id' >> wii-australia.var
	echo 'Content-language: id' >> wii-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-australia.var
	echo >> wii-australia.var
	echo 'URI: wii-australia.html.it' >> wii-australia.var
	echo 'Content-language: it' >> wii-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-australia.var
	echo >> wii-australia.var
	echo 'URI: wii-australia.html.nl' >> wii-australia.var
	echo 'Content-language: nl' >> wii-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-australia.var
	echo >> wii-australia.var
	echo 'URI: wii-australia.html.po' >> wii-australia.var
	echo 'Content-language: pl' >> wii-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-australia.var
	echo >> wii-australia.var
	echo 'URI: wii-australia.html.sl' >> wii-australia.var
	echo 'Content-language: sl' >> wii-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-australia.var
	echo >> wii-australia.var
	echo 'URI: wii-australia.html.ru' >> wii-australia.var
	echo 'Content-language: ru' >> wii-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-australia.var
	echo >> wii-australia.var
	echo 'URI: wii-australia.html.zh-CN' >> wii-australia.var
	echo 'Content-language: zh-CN' >> wii-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> wii-australia.var
	echo >> wii-australia.var
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
../..//down/powerpc/linux-austria.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.zh-CN -oe utf-16 linux.adp
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
	echo 'URI: linux-austria.html.zh-CN' >> linux-austria.var
	echo 'Content-language: zh-CN' >> linux-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-austria.var
	echo >> linux-austria.var
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
../..//down/powerpc/macosx-austria.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.zh-CN -oe utf-16 macosx.adp
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
	echo 'URI: macosx-austria.html.zh-CN' >> macosx-austria.var
	echo 'Content-language: zh-CN' >> macosx-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-austria.var
	echo >> macosx-austria.var
../..//down/powerpc/wii-austria.html.bg: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.bg -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-austria.html.en: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.en -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-austria.html.fi: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.fi -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-austria.html.fr: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.fr -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-austria.html.id: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.id -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-austria.html.it: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.it -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-austria.html.nl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.nl -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-austria.html.po: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.po -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-austria.html.sl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.sl -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-austria.html.ru: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.ru -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-austria.html.zh-CN: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.zh-CN -oe utf-16 wii.adp
../..//down/powerpc/wii-austria.html: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html -oe ISO-8859-1 wii.adp

../..//down/powerpc/wii-austria.var: gen_makefile.conf
	echo > wii-austria.var
	echo 'URI: wii-austria.html.bg' >> wii-austria.var
	echo 'Content-language: bg' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.en' >> wii-austria.var
	echo 'Content-language: en' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.fi' >> wii-austria.var
	echo 'Content-language: fi' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.fr' >> wii-austria.var
	echo 'Content-language: fr' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.id' >> wii-austria.var
	echo 'Content-language: id' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.it' >> wii-austria.var
	echo 'Content-language: it' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.nl' >> wii-austria.var
	echo 'Content-language: nl' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.po' >> wii-austria.var
	echo 'Content-language: pl' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.sl' >> wii-austria.var
	echo 'Content-language: sl' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.ru' >> wii-austria.var
	echo 'Content-language: ru' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.zh-CN' >> wii-austria.var
	echo 'Content-language: zh-CN' >> wii-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> wii-austria.var
	echo >> wii-austria.var
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
../..//down/powerpc/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.zh-CN -oe utf-16 linux.adp
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
	echo 'URI: linux-hungary.html.zh-CN' >> linux-hungary.var
	echo 'Content-language: zh-CN' >> linux-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-hungary.var
	echo >> linux-hungary.var
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
../..//down/powerpc/macosx-hungary.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.zh-CN -oe utf-16 macosx.adp
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
	echo 'URI: macosx-hungary.html.zh-CN' >> macosx-hungary.var
	echo 'Content-language: zh-CN' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-hungary.var
	echo >> macosx-hungary.var
../..//down/powerpc/wii-hungary.html.bg: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.bg -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-hungary.html.en: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.en -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.fi: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.fi -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.fr: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.fr -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.id: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.id -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.it: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.it -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.nl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.nl -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.po: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.po -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-hungary.html.sl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.sl -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-hungary.html.ru: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.ru -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-hungary.html.zh-CN: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.zh-CN -oe utf-16 wii.adp
../..//down/powerpc/wii-hungary.html: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html -oe ISO-8859-1 wii.adp

../..//down/powerpc/wii-hungary.var: gen_makefile.conf
	echo > wii-hungary.var
	echo 'URI: wii-hungary.html.bg' >> wii-hungary.var
	echo 'Content-language: bg' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.en' >> wii-hungary.var
	echo 'Content-language: en' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.fi' >> wii-hungary.var
	echo 'Content-language: fi' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.fr' >> wii-hungary.var
	echo 'Content-language: fr' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.id' >> wii-hungary.var
	echo 'Content-language: id' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.it' >> wii-hungary.var
	echo 'Content-language: it' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.nl' >> wii-hungary.var
	echo 'Content-language: nl' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.po' >> wii-hungary.var
	echo 'Content-language: pl' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.sl' >> wii-hungary.var
	echo 'Content-language: sl' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.ru' >> wii-hungary.var
	echo 'Content-language: ru' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.zh-CN' >> wii-hungary.var
	echo 'Content-language: zh-CN' >> wii-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> wii-hungary.var
	echo >> wii-hungary.var
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
../..//down/powerpc/linux-israel.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-israel.html.zh-CN -oe utf-16 linux.adp
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
	echo 'URI: linux-israel.html.zh-CN' >> linux-israel.var
	echo 'Content-language: zh-CN' >> linux-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-israel.var
	echo >> linux-israel.var
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
../..//down/powerpc/macosx-israel.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-israel.html.zh-CN -oe utf-16 macosx.adp
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
	echo 'URI: macosx-israel.html.zh-CN' >> macosx-israel.var
	echo 'Content-language: zh-CN' >> macosx-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-israel.var
	echo >> macosx-israel.var
../..//down/powerpc/wii-israel.html.bg: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//wii-israel.html.bg -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-israel.html.en: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-israel.html.en -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-israel.html.fi: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//wii-israel.html.fi -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-israel.html.fr: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//wii-israel.html.fr -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-israel.html.id: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//wii-israel.html.id -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-israel.html.it: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//wii-israel.html.it -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-israel.html.nl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//wii-israel.html.nl -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-israel.html.po: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//wii-israel.html.po -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-israel.html.sl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//wii-israel.html.sl -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-israel.html.ru: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//wii-israel.html.ru -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-israel.html.zh-CN: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//wii-israel.html.zh-CN -oe utf-16 wii.adp
../..//down/powerpc/wii-israel.html: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-israel.html -oe ISO-8859-1 wii.adp

../..//down/powerpc/wii-israel.var: gen_makefile.conf
	echo > wii-israel.var
	echo 'URI: wii-israel.html.bg' >> wii-israel.var
	echo 'Content-language: bg' >> wii-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-israel.var
	echo >> wii-israel.var
	echo 'URI: wii-israel.html.en' >> wii-israel.var
	echo 'Content-language: en' >> wii-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-israel.var
	echo >> wii-israel.var
	echo 'URI: wii-israel.html.fi' >> wii-israel.var
	echo 'Content-language: fi' >> wii-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-israel.var
	echo >> wii-israel.var
	echo 'URI: wii-israel.html.fr' >> wii-israel.var
	echo 'Content-language: fr' >> wii-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-israel.var
	echo >> wii-israel.var
	echo 'URI: wii-israel.html.id' >> wii-israel.var
	echo 'Content-language: id' >> wii-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-israel.var
	echo >> wii-israel.var
	echo 'URI: wii-israel.html.it' >> wii-israel.var
	echo 'Content-language: it' >> wii-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-israel.var
	echo >> wii-israel.var
	echo 'URI: wii-israel.html.nl' >> wii-israel.var
	echo 'Content-language: nl' >> wii-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-israel.var
	echo >> wii-israel.var
	echo 'URI: wii-israel.html.po' >> wii-israel.var
	echo 'Content-language: pl' >> wii-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-israel.var
	echo >> wii-israel.var
	echo 'URI: wii-israel.html.sl' >> wii-israel.var
	echo 'Content-language: sl' >> wii-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-israel.var
	echo >> wii-israel.var
	echo 'URI: wii-israel.html.ru' >> wii-israel.var
	echo 'Content-language: ru' >> wii-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-israel.var
	echo >> wii-israel.var
	echo 'URI: wii-israel.html.zh-CN' >> wii-israel.var
	echo 'Content-language: zh-CN' >> wii-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> wii-israel.var
	echo >> wii-israel.var
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
../..//down/powerpc/linux-netherlands.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.zh-CN -oe utf-16 linux.adp
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
	echo 'URI: linux-netherlands.html.zh-CN' >> linux-netherlands.var
	echo 'Content-language: zh-CN' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-netherlands.var
	echo >> linux-netherlands.var
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
../..//down/powerpc/macosx-netherlands.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.zh-CN -oe utf-16 macosx.adp
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
	echo 'URI: macosx-netherlands.html.zh-CN' >> macosx-netherlands.var
	echo 'Content-language: zh-CN' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
../..//down/powerpc/wii-netherlands.html.bg: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.bg -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-netherlands.html.en: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.en -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-netherlands.html.fi: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.fi -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-netherlands.html.fr: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.fr -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-netherlands.html.id: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.id -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-netherlands.html.it: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.it -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-netherlands.html.nl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.nl -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-netherlands.html.po: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.po -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-netherlands.html.sl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.sl -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-netherlands.html.ru: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.ru -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-netherlands.html.zh-CN: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.zh-CN -oe utf-16 wii.adp
../..//down/powerpc/wii-netherlands.html: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html -oe ISO-8859-1 wii.adp

../..//down/powerpc/wii-netherlands.var: gen_makefile.conf
	echo > wii-netherlands.var
	echo 'URI: wii-netherlands.html.bg' >> wii-netherlands.var
	echo 'Content-language: bg' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.en' >> wii-netherlands.var
	echo 'Content-language: en' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.fi' >> wii-netherlands.var
	echo 'Content-language: fi' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.fr' >> wii-netherlands.var
	echo 'Content-language: fr' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.id' >> wii-netherlands.var
	echo 'Content-language: id' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.it' >> wii-netherlands.var
	echo 'Content-language: it' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.nl' >> wii-netherlands.var
	echo 'Content-language: nl' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.po' >> wii-netherlands.var
	echo 'Content-language: pl' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.sl' >> wii-netherlands.var
	echo 'Content-language: sl' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.ru' >> wii-netherlands.var
	echo 'Content-language: ru' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.zh-CN' >> wii-netherlands.var
	echo 'Content-language: zh-CN' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> wii-netherlands.var
	echo >> wii-netherlands.var
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
../..//down/powerpc/linux-norway.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-norway.html.zh-CN -oe utf-16 linux.adp
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
	echo 'URI: linux-norway.html.zh-CN' >> linux-norway.var
	echo 'Content-language: zh-CN' >> linux-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-norway.var
	echo >> linux-norway.var
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
../..//down/powerpc/macosx-norway.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-norway.html.zh-CN -oe utf-16 macosx.adp
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
	echo 'URI: macosx-norway.html.zh-CN' >> macosx-norway.var
	echo 'Content-language: zh-CN' >> macosx-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-norway.var
	echo >> macosx-norway.var
../..//down/powerpc/wii-norway.html.bg: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//wii-norway.html.bg -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-norway.html.en: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-norway.html.en -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-norway.html.fi: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//wii-norway.html.fi -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-norway.html.fr: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//wii-norway.html.fr -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-norway.html.id: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//wii-norway.html.id -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-norway.html.it: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//wii-norway.html.it -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-norway.html.nl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//wii-norway.html.nl -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-norway.html.po: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//wii-norway.html.po -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-norway.html.sl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//wii-norway.html.sl -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-norway.html.ru: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//wii-norway.html.ru -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-norway.html.zh-CN: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//wii-norway.html.zh-CN -oe utf-16 wii.adp
../..//down/powerpc/wii-norway.html: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-norway.html -oe ISO-8859-1 wii.adp

../..//down/powerpc/wii-norway.var: gen_makefile.conf
	echo > wii-norway.var
	echo 'URI: wii-norway.html.bg' >> wii-norway.var
	echo 'Content-language: bg' >> wii-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-norway.var
	echo >> wii-norway.var
	echo 'URI: wii-norway.html.en' >> wii-norway.var
	echo 'Content-language: en' >> wii-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-norway.var
	echo >> wii-norway.var
	echo 'URI: wii-norway.html.fi' >> wii-norway.var
	echo 'Content-language: fi' >> wii-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-norway.var
	echo >> wii-norway.var
	echo 'URI: wii-norway.html.fr' >> wii-norway.var
	echo 'Content-language: fr' >> wii-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-norway.var
	echo >> wii-norway.var
	echo 'URI: wii-norway.html.id' >> wii-norway.var
	echo 'Content-language: id' >> wii-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-norway.var
	echo >> wii-norway.var
	echo 'URI: wii-norway.html.it' >> wii-norway.var
	echo 'Content-language: it' >> wii-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-norway.var
	echo >> wii-norway.var
	echo 'URI: wii-norway.html.nl' >> wii-norway.var
	echo 'Content-language: nl' >> wii-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-norway.var
	echo >> wii-norway.var
	echo 'URI: wii-norway.html.po' >> wii-norway.var
	echo 'Content-language: pl' >> wii-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-norway.var
	echo >> wii-norway.var
	echo 'URI: wii-norway.html.sl' >> wii-norway.var
	echo 'Content-language: sl' >> wii-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-norway.var
	echo >> wii-norway.var
	echo 'URI: wii-norway.html.ru' >> wii-norway.var
	echo 'Content-language: ru' >> wii-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-norway.var
	echo >> wii-norway.var
	echo 'URI: wii-norway.html.zh-CN' >> wii-norway.var
	echo 'Content-language: zh-CN' >> wii-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> wii-norway.var
	echo >> wii-norway.var
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
../..//down/powerpc/linux-russia.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-russia.html.zh-CN -oe utf-16 linux.adp
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
	echo 'URI: linux-russia.html.zh-CN' >> linux-russia.var
	echo 'Content-language: zh-CN' >> linux-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-russia.var
	echo >> linux-russia.var
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
../..//down/powerpc/macosx-russia.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-russia.html.zh-CN -oe utf-16 macosx.adp
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
	echo 'URI: macosx-russia.html.zh-CN' >> macosx-russia.var
	echo 'Content-language: zh-CN' >> macosx-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-russia.var
	echo >> macosx-russia.var
../..//down/powerpc/wii-russia.html.bg: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//wii-russia.html.bg -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-russia.html.en: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-russia.html.en -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-russia.html.fi: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//wii-russia.html.fi -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-russia.html.fr: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//wii-russia.html.fr -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-russia.html.id: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//wii-russia.html.id -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-russia.html.it: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//wii-russia.html.it -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-russia.html.nl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//wii-russia.html.nl -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-russia.html.po: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//wii-russia.html.po -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-russia.html.sl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//wii-russia.html.sl -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-russia.html.ru: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//wii-russia.html.ru -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-russia.html.zh-CN: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//wii-russia.html.zh-CN -oe utf-16 wii.adp
../..//down/powerpc/wii-russia.html: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-russia.html -oe ISO-8859-1 wii.adp

../..//down/powerpc/wii-russia.var: gen_makefile.conf
	echo > wii-russia.var
	echo 'URI: wii-russia.html.bg' >> wii-russia.var
	echo 'Content-language: bg' >> wii-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-russia.var
	echo >> wii-russia.var
	echo 'URI: wii-russia.html.en' >> wii-russia.var
	echo 'Content-language: en' >> wii-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-russia.var
	echo >> wii-russia.var
	echo 'URI: wii-russia.html.fi' >> wii-russia.var
	echo 'Content-language: fi' >> wii-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-russia.var
	echo >> wii-russia.var
	echo 'URI: wii-russia.html.fr' >> wii-russia.var
	echo 'Content-language: fr' >> wii-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-russia.var
	echo >> wii-russia.var
	echo 'URI: wii-russia.html.id' >> wii-russia.var
	echo 'Content-language: id' >> wii-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-russia.var
	echo >> wii-russia.var
	echo 'URI: wii-russia.html.it' >> wii-russia.var
	echo 'Content-language: it' >> wii-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-russia.var
	echo >> wii-russia.var
	echo 'URI: wii-russia.html.nl' >> wii-russia.var
	echo 'Content-language: nl' >> wii-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-russia.var
	echo >> wii-russia.var
	echo 'URI: wii-russia.html.po' >> wii-russia.var
	echo 'Content-language: pl' >> wii-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-russia.var
	echo >> wii-russia.var
	echo 'URI: wii-russia.html.sl' >> wii-russia.var
	echo 'Content-language: sl' >> wii-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-russia.var
	echo >> wii-russia.var
	echo 'URI: wii-russia.html.ru' >> wii-russia.var
	echo 'Content-language: ru' >> wii-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-russia.var
	echo >> wii-russia.var
	echo 'URI: wii-russia.html.zh-CN' >> wii-russia.var
	echo 'Content-language: zh-CN' >> wii-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> wii-russia.var
	echo >> wii-russia.var

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
../..//down/powerpc/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -oe utf-16 ../../templatemirror.adp
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
	echo 'URI: linux.html.zh-CN' >> linux.var
	echo 'Content-language: zh-CN' >> linux.var
	echo 'Content-type: text/html; charset=utf-16' >> linux.var
	echo >> linux.var

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
../..//down/powerpc/macosx.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o macosx.html.zh-CN -oe utf-16 ../../templatemirror.adp
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
	echo 'URI: macosx.html.zh-CN' >> macosx.var
	echo 'Content-language: zh-CN' >> macosx.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx.var
	echo >> macosx.var

../..//down/powerpc/wii.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o wii.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/wii.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o wii.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o wii.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o wii.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o wii.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o wii.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o wii.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o wii.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/wii.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o wii.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/wii.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o wii.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/wii.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o wii.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/powerpc/wii.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=wii -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o wii.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.var: gen_makefile.conf
	echo > wii.var
	echo 'URI: wii.html.bg' >> wii.var
	echo 'Content-language: bg' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.en' >> wii.var
	echo 'Content-language: en' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.fi' >> wii.var
	echo 'Content-language: fi' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.fr' >> wii.var
	echo 'Content-language: fr' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.id' >> wii.var
	echo 'Content-language: id' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.it' >> wii.var
	echo 'Content-language: it' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.nl' >> wii.var
	echo 'Content-language: nl' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.po' >> wii.var
	echo 'Content-language: pl' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.sl' >> wii.var
	echo 'Content-language: sl' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.ru' >> wii.var
	echo 'Content-language: ru' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.zh-CN' >> wii.var
	echo 'Content-language: zh-CN' >> wii.var
	echo 'Content-type: text/html; charset=utf-16' >> wii.var
	echo >> wii.var

mirrors.dat:
	echo -e 'name\tnamel\turl' > mirrors.dat
	echo -e 'Australia\taustralia\thttp://fpc.planetmirror.com/pub/fpc/' >> mirrors.dat
	echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Israel\tisrael\thttp://mirror.mirimar.net/freepascal/' >> mirrors.dat
	echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat
	echo -e 'Norway\tnorway\tftp://ftp.no.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Russia\trussia\tftp://ftp.chg.ru/pub/lang/pascal/fpc/' >> mirrors.dat

all_pages: mirrors.dat ../..//down/powerpc/linux-australia.html.bg ../..//down/powerpc/linux-australia.html.en ../..//down/powerpc/linux-australia.html.fi ../..//down/powerpc/linux-australia.html.fr ../..//down/powerpc/linux-australia.html.id ../..//down/powerpc/linux-australia.html.it ../..//down/powerpc/linux-australia.html.nl ../..//down/powerpc/linux-australia.html.po ../..//down/powerpc/linux-australia.html.sl ../..//down/powerpc/linux-australia.html.ru ../..//down/powerpc/linux-australia.html.zh-CN ../..//down/powerpc/linux-australia.var ../..//down/powerpc/macosx-australia.html.bg ../..//down/powerpc/macosx-australia.html.en ../..//down/powerpc/macosx-australia.html.fi ../..//down/powerpc/macosx-australia.html.fr ../..//down/powerpc/macosx-australia.html.id ../..//down/powerpc/macosx-australia.html.it ../..//down/powerpc/macosx-australia.html.nl ../..//down/powerpc/macosx-australia.html.po ../..//down/powerpc/macosx-australia.html.sl ../..//down/powerpc/macosx-australia.html.ru ../..//down/powerpc/macosx-australia.html.zh-CN ../..//down/powerpc/macosx-australia.var ../..//down/powerpc/wii-australia.html.bg ../..//down/powerpc/wii-australia.html.en ../..//down/powerpc/wii-australia.html.fi ../..//down/powerpc/wii-australia.html.fr ../..//down/powerpc/wii-australia.html.id ../..//down/powerpc/wii-australia.html.it ../..//down/powerpc/wii-australia.html.nl ../..//down/powerpc/wii-australia.html.po ../..//down/powerpc/wii-australia.html.sl ../..//down/powerpc/wii-australia.html.ru ../..//down/powerpc/wii-australia.html.zh-CN ../..//down/powerpc/wii-australia.var ../..//down/powerpc/linux-austria.html.bg ../..//down/powerpc/linux-austria.html.en ../..//down/powerpc/linux-austria.html.fi ../..//down/powerpc/linux-austria.html.fr ../..//down/powerpc/linux-austria.html.id ../..//down/powerpc/linux-austria.html.it ../..//down/powerpc/linux-austria.html.nl ../..//down/powerpc/linux-austria.html.po ../..//down/powerpc/linux-austria.html.sl ../..//down/powerpc/linux-austria.html.ru ../..//down/powerpc/linux-austria.html.zh-CN ../..//down/powerpc/linux-austria.var ../..//down/powerpc/macosx-austria.html.bg ../..//down/powerpc/macosx-austria.html.en ../..//down/powerpc/macosx-austria.html.fi ../..//down/powerpc/macosx-austria.html.fr ../..//down/powerpc/macosx-austria.html.id ../..//down/powerpc/macosx-austria.html.it ../..//down/powerpc/macosx-austria.html.nl ../..//down/powerpc/macosx-austria.html.po ../..//down/powerpc/macosx-austria.html.sl ../..//down/powerpc/macosx-austria.html.ru ../..//down/powerpc/macosx-austria.html.zh-CN ../..//down/powerpc/macosx-austria.var ../..//down/powerpc/wii-austria.html.bg ../..//down/powerpc/wii-austria.html.en ../..//down/powerpc/wii-austria.html.fi ../..//down/powerpc/wii-austria.html.fr ../..//down/powerpc/wii-austria.html.id ../..//down/powerpc/wii-austria.html.it ../..//down/powerpc/wii-austria.html.nl ../..//down/powerpc/wii-austria.html.po ../..//down/powerpc/wii-austria.html.sl ../..//down/powerpc/wii-austria.html.ru ../..//down/powerpc/wii-austria.html.zh-CN ../..//down/powerpc/wii-austria.var ../..//down/powerpc/linux-hungary.html.bg ../..//down/powerpc/linux-hungary.html.en ../..//down/powerpc/linux-hungary.html.fi ../..//down/powerpc/linux-hungary.html.fr ../..//down/powerpc/linux-hungary.html.id ../..//down/powerpc/linux-hungary.html.it ../..//down/powerpc/linux-hungary.html.nl ../..//down/powerpc/linux-hungary.html.po ../..//down/powerpc/linux-hungary.html.sl ../..//down/powerpc/linux-hungary.html.ru ../..//down/powerpc/linux-hungary.html.zh-CN ../..//down/powerpc/linux-hungary.var ../..//down/powerpc/macosx-hungary.html.bg ../..//down/powerpc/macosx-hungary.html.en ../..//down/powerpc/macosx-hungary.html.fi ../..//down/powerpc/macosx-hungary.html.fr ../..//down/powerpc/macosx-hungary.html.id ../..//down/powerpc/macosx-hungary.html.it ../..//down/powerpc/macosx-hungary.html.nl ../..//down/powerpc/macosx-hungary.html.po ../..//down/powerpc/macosx-hungary.html.sl ../..//down/powerpc/macosx-hungary.html.ru ../..//down/powerpc/macosx-hungary.html.zh-CN ../..//down/powerpc/macosx-hungary.var ../..//down/powerpc/wii-hungary.html.bg ../..//down/powerpc/wii-hungary.html.en ../..//down/powerpc/wii-hungary.html.fi ../..//down/powerpc/wii-hungary.html.fr ../..//down/powerpc/wii-hungary.html.id ../..//down/powerpc/wii-hungary.html.it ../..//down/powerpc/wii-hungary.html.nl ../..//down/powerpc/wii-hungary.html.po ../..//down/powerpc/wii-hungary.html.sl ../..//down/powerpc/wii-hungary.html.ru ../..//down/powerpc/wii-hungary.html.zh-CN ../..//down/powerpc/wii-hungary.var ../..//down/powerpc/linux-israel.html.bg ../..//down/powerpc/linux-israel.html.en ../..//down/powerpc/linux-israel.html.fi ../..//down/powerpc/linux-israel.html.fr ../..//down/powerpc/linux-israel.html.id ../..//down/powerpc/linux-israel.html.it ../..//down/powerpc/linux-israel.html.nl ../..//down/powerpc/linux-israel.html.po ../..//down/powerpc/linux-israel.html.sl ../..//down/powerpc/linux-israel.html.ru ../..//down/powerpc/linux-israel.html.zh-CN ../..//down/powerpc/linux-israel.var ../..//down/powerpc/macosx-israel.html.bg ../..//down/powerpc/macosx-israel.html.en ../..//down/powerpc/macosx-israel.html.fi ../..//down/powerpc/macosx-israel.html.fr ../..//down/powerpc/macosx-israel.html.id ../..//down/powerpc/macosx-israel.html.it ../..//down/powerpc/macosx-israel.html.nl ../..//down/powerpc/macosx-israel.html.po ../..//down/powerpc/macosx-israel.html.sl ../..//down/powerpc/macosx-israel.html.ru ../..//down/powerpc/macosx-israel.html.zh-CN ../..//down/powerpc/macosx-israel.var ../..//down/powerpc/wii-israel.html.bg ../..//down/powerpc/wii-israel.html.en ../..//down/powerpc/wii-israel.html.fi ../..//down/powerpc/wii-israel.html.fr ../..//down/powerpc/wii-israel.html.id ../..//down/powerpc/wii-israel.html.it ../..//down/powerpc/wii-israel.html.nl ../..//down/powerpc/wii-israel.html.po ../..//down/powerpc/wii-israel.html.sl ../..//down/powerpc/wii-israel.html.ru ../..//down/powerpc/wii-israel.html.zh-CN ../..//down/powerpc/wii-israel.var ../..//down/powerpc/linux-netherlands.html.bg ../..//down/powerpc/linux-netherlands.html.en ../..//down/powerpc/linux-netherlands.html.fi ../..//down/powerpc/linux-netherlands.html.fr ../..//down/powerpc/linux-netherlands.html.id ../..//down/powerpc/linux-netherlands.html.it ../..//down/powerpc/linux-netherlands.html.nl ../..//down/powerpc/linux-netherlands.html.po ../..//down/powerpc/linux-netherlands.html.sl ../..//down/powerpc/linux-netherlands.html.ru ../..//down/powerpc/linux-netherlands.html.zh-CN ../..//down/powerpc/linux-netherlands.var ../..//down/powerpc/macosx-netherlands.html.bg ../..//down/powerpc/macosx-netherlands.html.en ../..//down/powerpc/macosx-netherlands.html.fi ../..//down/powerpc/macosx-netherlands.html.fr ../..//down/powerpc/macosx-netherlands.html.id ../..//down/powerpc/macosx-netherlands.html.it ../..//down/powerpc/macosx-netherlands.html.nl ../..//down/powerpc/macosx-netherlands.html.po ../..//down/powerpc/macosx-netherlands.html.sl ../..//down/powerpc/macosx-netherlands.html.ru ../..//down/powerpc/macosx-netherlands.html.zh-CN ../..//down/powerpc/macosx-netherlands.var ../..//down/powerpc/wii-netherlands.html.bg ../..//down/powerpc/wii-netherlands.html.en ../..//down/powerpc/wii-netherlands.html.fi ../..//down/powerpc/wii-netherlands.html.fr ../..//down/powerpc/wii-netherlands.html.id ../..//down/powerpc/wii-netherlands.html.it ../..//down/powerpc/wii-netherlands.html.nl ../..//down/powerpc/wii-netherlands.html.po ../..//down/powerpc/wii-netherlands.html.sl ../..//down/powerpc/wii-netherlands.html.ru ../..//down/powerpc/wii-netherlands.html.zh-CN ../..//down/powerpc/wii-netherlands.var ../..//down/powerpc/linux-norway.html.bg ../..//down/powerpc/linux-norway.html.en ../..//down/powerpc/linux-norway.html.fi ../..//down/powerpc/linux-norway.html.fr ../..//down/powerpc/linux-norway.html.id ../..//down/powerpc/linux-norway.html.it ../..//down/powerpc/linux-norway.html.nl ../..//down/powerpc/linux-norway.html.po ../..//down/powerpc/linux-norway.html.sl ../..//down/powerpc/linux-norway.html.ru ../..//down/powerpc/linux-norway.html.zh-CN ../..//down/powerpc/linux-norway.var ../..//down/powerpc/macosx-norway.html.bg ../..//down/powerpc/macosx-norway.html.en ../..//down/powerpc/macosx-norway.html.fi ../..//down/powerpc/macosx-norway.html.fr ../..//down/powerpc/macosx-norway.html.id ../..//down/powerpc/macosx-norway.html.it ../..//down/powerpc/macosx-norway.html.nl ../..//down/powerpc/macosx-norway.html.po ../..//down/powerpc/macosx-norway.html.sl ../..//down/powerpc/macosx-norway.html.ru ../..//down/powerpc/macosx-norway.html.zh-CN ../..//down/powerpc/macosx-norway.var ../..//down/powerpc/wii-norway.html.bg ../..//down/powerpc/wii-norway.html.en ../..//down/powerpc/wii-norway.html.fi ../..//down/powerpc/wii-norway.html.fr ../..//down/powerpc/wii-norway.html.id ../..//down/powerpc/wii-norway.html.it ../..//down/powerpc/wii-norway.html.nl ../..//down/powerpc/wii-norway.html.po ../..//down/powerpc/wii-norway.html.sl ../..//down/powerpc/wii-norway.html.ru ../..//down/powerpc/wii-norway.html.zh-CN ../..//down/powerpc/wii-norway.var ../..//down/powerpc/linux-russia.html.bg ../..//down/powerpc/linux-russia.html.en ../..//down/powerpc/linux-russia.html.fi ../..//down/powerpc/linux-russia.html.fr ../..//down/powerpc/linux-russia.html.id ../..//down/powerpc/linux-russia.html.it ../..//down/powerpc/linux-russia.html.nl ../..//down/powerpc/linux-russia.html.po ../..//down/powerpc/linux-russia.html.sl ../..//down/powerpc/linux-russia.html.ru ../..//down/powerpc/linux-russia.html.zh-CN ../..//down/powerpc/linux-russia.var ../..//down/powerpc/macosx-russia.html.bg ../..//down/powerpc/macosx-russia.html.en ../..//down/powerpc/macosx-russia.html.fi ../..//down/powerpc/macosx-russia.html.fr ../..//down/powerpc/macosx-russia.html.id ../..//down/powerpc/macosx-russia.html.it ../..//down/powerpc/macosx-russia.html.nl ../..//down/powerpc/macosx-russia.html.po ../..//down/powerpc/macosx-russia.html.sl ../..//down/powerpc/macosx-russia.html.ru ../..//down/powerpc/macosx-russia.html.zh-CN ../..//down/powerpc/macosx-russia.var ../..//down/powerpc/wii-russia.html.bg ../..//down/powerpc/wii-russia.html.en ../..//down/powerpc/wii-russia.html.fi ../..//down/powerpc/wii-russia.html.fr ../..//down/powerpc/wii-russia.html.id ../..//down/powerpc/wii-russia.html.it ../..//down/powerpc/wii-russia.html.nl ../..//down/powerpc/wii-russia.html.po ../..//down/powerpc/wii-russia.html.sl ../..//down/powerpc/wii-russia.html.ru ../..//down/powerpc/wii-russia.html.zh-CN ../..//down/powerpc/wii-russia.var ../..//down/powerpc/linux.html.bg ../..//down/powerpc/linux.html.en ../..//down/powerpc/linux.html.fi ../..//down/powerpc/linux.html.fr ../..//down/powerpc/linux.html.id ../..//down/powerpc/linux.html.it ../..//down/powerpc/linux.html.nl ../..//down/powerpc/linux.html.po ../..//down/powerpc/linux.html.sl ../..//down/powerpc/linux.html.ru ../..//down/powerpc/linux.html.zh-CN ../..//down/powerpc/linux.var ../..//down/powerpc/macosx.html.bg ../..//down/powerpc/macosx.html.en ../..//down/powerpc/macosx.html.fi ../..//down/powerpc/macosx.html.fr ../..//down/powerpc/macosx.html.id ../..//down/powerpc/macosx.html.it ../..//down/powerpc/macosx.html.nl ../..//down/powerpc/macosx.html.po ../..//down/powerpc/macosx.html.sl ../..//down/powerpc/macosx.html.ru ../..//down/powerpc/macosx.html.zh-CN ../..//down/powerpc/macosx.var ../..//down/powerpc/wii.html.bg ../..//down/powerpc/wii.html.en ../..//down/powerpc/wii.html.fi ../..//down/powerpc/wii.html.fr ../..//down/powerpc/wii.html.id ../..//down/powerpc/wii.html.it ../..//down/powerpc/wii.html.nl ../..//down/powerpc/wii.html.po ../..//down/powerpc/wii.html.sl ../..//down/powerpc/wii.html.ru ../..//down/powerpc/wii.html.zh-CN ../..//down/powerpc/wii.var
all_en_pages: mirrors.dat ../..//down/powerpc/linux-australia.html ../..//down/powerpc/macosx-australia.html ../..//down/powerpc/wii-australia.html ../..//down/powerpc/linux-austria.html ../..//down/powerpc/macosx-austria.html ../..//down/powerpc/wii-austria.html ../..//down/powerpc/linux-hungary.html ../..//down/powerpc/macosx-hungary.html ../..//down/powerpc/wii-hungary.html ../..//down/powerpc/linux-israel.html ../..//down/powerpc/macosx-israel.html ../..//down/powerpc/wii-israel.html ../..//down/powerpc/linux-netherlands.html ../..//down/powerpc/macosx-netherlands.html ../..//down/powerpc/wii-netherlands.html ../..//down/powerpc/linux-norway.html ../..//down/powerpc/macosx-norway.html ../..//down/powerpc/wii-norway.html ../..//down/powerpc/linux-russia.html ../..//down/powerpc/macosx-russia.html ../..//down/powerpc/wii-russia.html ../..//down/powerpc/linux.html ../..//down/powerpc/macosx.html ../..//down/powerpc/wii.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/powerpc/

