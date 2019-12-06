
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
../..//down/powerpc/aix-hungary.html.bg: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//aix-hungary.html.bg -oe iso-8859-5 aix.adp
../..//down/powerpc/aix-hungary.html.en: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//aix-hungary.html.en -oe iso-8859-1 aix.adp
../..//down/powerpc/aix-hungary.html.fi: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//aix-hungary.html.fi -oe iso-8859-1 aix.adp
../..//down/powerpc/aix-hungary.html.fr: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//aix-hungary.html.fr -oe iso-8859-1 aix.adp
../..//down/powerpc/aix-hungary.html.id: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//aix-hungary.html.id -oe iso-8859-1 aix.adp
../..//down/powerpc/aix-hungary.html.it: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//aix-hungary.html.it -oe iso-8859-1 aix.adp
../..//down/powerpc/aix-hungary.html.nl: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//aix-hungary.html.nl -oe iso-8859-1 aix.adp
../..//down/powerpc/aix-hungary.html.po: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//aix-hungary.html.po -oe iso-8859-2 aix.adp
../..//down/powerpc/aix-hungary.html.sl: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//aix-hungary.html.sl -oe iso-8859-2 aix.adp
../..//down/powerpc/aix-hungary.html.ru: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//aix-hungary.html.ru -oe iso-8859-5 aix.adp
../..//down/powerpc/aix-hungary.html.zh-CN: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//aix-hungary.html.zh-CN -oe UTF-8 aix.adp
../..//down/powerpc/aix-hungary.html: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//aix-hungary.html -oe ISO-8859-1 aix.adp

../..//down/powerpc/aix-hungary.var: gen_makefile.conf
	echo > aix-hungary.var
	echo 'URI: aix-hungary.html.bg' >> aix-hungary.var
	echo 'Content-language: bg' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.en' >> aix-hungary.var
	echo 'Content-language: en' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.fi' >> aix-hungary.var
	echo 'Content-language: fi' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.fr' >> aix-hungary.var
	echo 'Content-language: fr' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.id' >> aix-hungary.var
	echo 'Content-language: id' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.it' >> aix-hungary.var
	echo 'Content-language: it' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.nl' >> aix-hungary.var
	echo 'Content-language: nl' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.po' >> aix-hungary.var
	echo 'Content-language: pl' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.sl' >> aix-hungary.var
	echo 'Content-language: sl' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.ru' >> aix-hungary.var
	echo 'Content-language: ru' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.zh-CN' >> aix-hungary.var
	echo 'Content-language: zh-CN' >> aix-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> aix-hungary.var
	echo >> aix-hungary.var
../..//down/powerpc/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.zh-CN -oe UTF-8 linux.adp
../..//down/powerpc/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html -oe ISO-8859-1 linux.adp

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
	echo 'Content-type: text/html; charset=UTF-8' >> linux-hungary.var
	echo >> linux-hungary.var
../..//down/powerpc/macosx-hungary.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.bg -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-hungary.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.en -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.fi -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.fr -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.id -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.it -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.nl -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.po -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-hungary.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.sl -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-hungary.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.ru -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-hungary.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.zh-CN -oe UTF-8 macosx.adp
../..//down/powerpc/macosx-hungary.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html -oe ISO-8859-1 macosx.adp

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
	echo 'Content-type: text/html; charset=UTF-8' >> macosx-hungary.var
	echo >> macosx-hungary.var
../..//down/powerpc/wii-hungary.html.bg: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.bg -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-hungary.html.en: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.en -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.fi: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.fi -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.fr: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.fr -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.id: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.id -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.it: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.it -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.nl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.nl -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.po: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.po -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-hungary.html.sl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.sl -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-hungary.html.ru: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.ru -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-hungary.html.zh-CN: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.zh-CN -oe UTF-8 wii.adp
../..//down/powerpc/wii-hungary.html: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html -oe ISO-8859-1 wii.adp

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
	echo 'Content-type: text/html; charset=UTF-8' >> wii-hungary.var
	echo >> wii-hungary.var
../..//down/powerpc/aix-canada.html.bg: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//aix-canada.html.bg -oe iso-8859-5 aix.adp
../..//down/powerpc/aix-canada.html.en: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//aix-canada.html.en -oe iso-8859-1 aix.adp
../..//down/powerpc/aix-canada.html.fi: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//aix-canada.html.fi -oe iso-8859-1 aix.adp
../..//down/powerpc/aix-canada.html.fr: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//aix-canada.html.fr -oe iso-8859-1 aix.adp
../..//down/powerpc/aix-canada.html.id: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//aix-canada.html.id -oe iso-8859-1 aix.adp
../..//down/powerpc/aix-canada.html.it: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//aix-canada.html.it -oe iso-8859-1 aix.adp
../..//down/powerpc/aix-canada.html.nl: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//aix-canada.html.nl -oe iso-8859-1 aix.adp
../..//down/powerpc/aix-canada.html.po: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//aix-canada.html.po -oe iso-8859-2 aix.adp
../..//down/powerpc/aix-canada.html.sl: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//aix-canada.html.sl -oe iso-8859-2 aix.adp
../..//down/powerpc/aix-canada.html.ru: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//aix-canada.html.ru -oe iso-8859-5 aix.adp
../..//down/powerpc/aix-canada.html.zh-CN: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//aix-canada.html.zh-CN -oe UTF-8 aix.adp
../..//down/powerpc/aix-canada.html: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//aix-canada.html -oe ISO-8859-1 aix.adp

../..//down/powerpc/aix-canada.var: gen_makefile.conf
	echo > aix-canada.var
	echo 'URI: aix-canada.html.bg' >> aix-canada.var
	echo 'Content-language: bg' >> aix-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aix-canada.var
	echo >> aix-canada.var
	echo 'URI: aix-canada.html.en' >> aix-canada.var
	echo 'Content-language: en' >> aix-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-canada.var
	echo >> aix-canada.var
	echo 'URI: aix-canada.html.fi' >> aix-canada.var
	echo 'Content-language: fi' >> aix-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-canada.var
	echo >> aix-canada.var
	echo 'URI: aix-canada.html.fr' >> aix-canada.var
	echo 'Content-language: fr' >> aix-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-canada.var
	echo >> aix-canada.var
	echo 'URI: aix-canada.html.id' >> aix-canada.var
	echo 'Content-language: id' >> aix-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-canada.var
	echo >> aix-canada.var
	echo 'URI: aix-canada.html.it' >> aix-canada.var
	echo 'Content-language: it' >> aix-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-canada.var
	echo >> aix-canada.var
	echo 'URI: aix-canada.html.nl' >> aix-canada.var
	echo 'Content-language: nl' >> aix-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-canada.var
	echo >> aix-canada.var
	echo 'URI: aix-canada.html.po' >> aix-canada.var
	echo 'Content-language: pl' >> aix-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aix-canada.var
	echo >> aix-canada.var
	echo 'URI: aix-canada.html.sl' >> aix-canada.var
	echo 'Content-language: sl' >> aix-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aix-canada.var
	echo >> aix-canada.var
	echo 'URI: aix-canada.html.ru' >> aix-canada.var
	echo 'Content-language: ru' >> aix-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aix-canada.var
	echo >> aix-canada.var
	echo 'URI: aix-canada.html.zh-CN' >> aix-canada.var
	echo 'Content-language: zh-CN' >> aix-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> aix-canada.var
	echo >> aix-canada.var
../..//down/powerpc/linux-canada.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//linux-canada.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-canada.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-canada.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-canada.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//linux-canada.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-canada.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//linux-canada.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-canada.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//linux-canada.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-canada.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//linux-canada.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-canada.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//linux-canada.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-canada.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//linux-canada.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-canada.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//linux-canada.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-canada.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//linux-canada.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-canada.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-canada.html.zh-CN -oe UTF-8 linux.adp
../..//down/powerpc/linux-canada.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-canada.html -oe ISO-8859-1 linux.adp

../..//down/powerpc/linux-canada.var: gen_makefile.conf
	echo > linux-canada.var
	echo 'URI: linux-canada.html.bg' >> linux-canada.var
	echo 'Content-language: bg' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.en' >> linux-canada.var
	echo 'Content-language: en' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.fi' >> linux-canada.var
	echo 'Content-language: fi' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.fr' >> linux-canada.var
	echo 'Content-language: fr' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.id' >> linux-canada.var
	echo 'Content-language: id' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.it' >> linux-canada.var
	echo 'Content-language: it' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.nl' >> linux-canada.var
	echo 'Content-language: nl' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.po' >> linux-canada.var
	echo 'Content-language: pl' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.sl' >> linux-canada.var
	echo 'Content-language: sl' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.ru' >> linux-canada.var
	echo 'Content-language: ru' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.zh-CN' >> linux-canada.var
	echo 'Content-language: zh-CN' >> linux-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> linux-canada.var
	echo >> linux-canada.var
../..//down/powerpc/macosx-canada.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macosx-canada.html.bg -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-canada.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-canada.html.en -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-canada.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macosx-canada.html.fi -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-canada.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macosx-canada.html.fr -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-canada.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macosx-canada.html.id -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-canada.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macosx-canada.html.it -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-canada.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macosx-canada.html.nl -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-canada.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macosx-canada.html.po -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-canada.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macosx-canada.html.sl -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-canada.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macosx-canada.html.ru -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-canada.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-canada.html.zh-CN -oe UTF-8 macosx.adp
../..//down/powerpc/macosx-canada.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-canada.html -oe ISO-8859-1 macosx.adp

../..//down/powerpc/macosx-canada.var: gen_makefile.conf
	echo > macosx-canada.var
	echo 'URI: macosx-canada.html.bg' >> macosx-canada.var
	echo 'Content-language: bg' >> macosx-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-canada.var
	echo >> macosx-canada.var
	echo 'URI: macosx-canada.html.en' >> macosx-canada.var
	echo 'Content-language: en' >> macosx-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-canada.var
	echo >> macosx-canada.var
	echo 'URI: macosx-canada.html.fi' >> macosx-canada.var
	echo 'Content-language: fi' >> macosx-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-canada.var
	echo >> macosx-canada.var
	echo 'URI: macosx-canada.html.fr' >> macosx-canada.var
	echo 'Content-language: fr' >> macosx-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-canada.var
	echo >> macosx-canada.var
	echo 'URI: macosx-canada.html.id' >> macosx-canada.var
	echo 'Content-language: id' >> macosx-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-canada.var
	echo >> macosx-canada.var
	echo 'URI: macosx-canada.html.it' >> macosx-canada.var
	echo 'Content-language: it' >> macosx-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-canada.var
	echo >> macosx-canada.var
	echo 'URI: macosx-canada.html.nl' >> macosx-canada.var
	echo 'Content-language: nl' >> macosx-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-canada.var
	echo >> macosx-canada.var
	echo 'URI: macosx-canada.html.po' >> macosx-canada.var
	echo 'Content-language: pl' >> macosx-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-canada.var
	echo >> macosx-canada.var
	echo 'URI: macosx-canada.html.sl' >> macosx-canada.var
	echo 'Content-language: sl' >> macosx-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-canada.var
	echo >> macosx-canada.var
	echo 'URI: macosx-canada.html.ru' >> macosx-canada.var
	echo 'Content-language: ru' >> macosx-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-canada.var
	echo >> macosx-canada.var
	echo 'URI: macosx-canada.html.zh-CN' >> macosx-canada.var
	echo 'Content-language: zh-CN' >> macosx-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> macosx-canada.var
	echo >> macosx-canada.var
../..//down/powerpc/wii-canada.html.bg: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//wii-canada.html.bg -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-canada.html.en: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-canada.html.en -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-canada.html.fi: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//wii-canada.html.fi -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-canada.html.fr: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//wii-canada.html.fr -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-canada.html.id: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//wii-canada.html.id -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-canada.html.it: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//wii-canada.html.it -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-canada.html.nl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//wii-canada.html.nl -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-canada.html.po: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//wii-canada.html.po -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-canada.html.sl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//wii-canada.html.sl -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-canada.html.ru: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//wii-canada.html.ru -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-canada.html.zh-CN: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//wii-canada.html.zh-CN -oe UTF-8 wii.adp
../..//down/powerpc/wii-canada.html: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-canada.html -oe ISO-8859-1 wii.adp

../..//down/powerpc/wii-canada.var: gen_makefile.conf
	echo > wii-canada.var
	echo 'URI: wii-canada.html.bg' >> wii-canada.var
	echo 'Content-language: bg' >> wii-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-canada.var
	echo >> wii-canada.var
	echo 'URI: wii-canada.html.en' >> wii-canada.var
	echo 'Content-language: en' >> wii-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-canada.var
	echo >> wii-canada.var
	echo 'URI: wii-canada.html.fi' >> wii-canada.var
	echo 'Content-language: fi' >> wii-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-canada.var
	echo >> wii-canada.var
	echo 'URI: wii-canada.html.fr' >> wii-canada.var
	echo 'Content-language: fr' >> wii-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-canada.var
	echo >> wii-canada.var
	echo 'URI: wii-canada.html.id' >> wii-canada.var
	echo 'Content-language: id' >> wii-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-canada.var
	echo >> wii-canada.var
	echo 'URI: wii-canada.html.it' >> wii-canada.var
	echo 'Content-language: it' >> wii-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-canada.var
	echo >> wii-canada.var
	echo 'URI: wii-canada.html.nl' >> wii-canada.var
	echo 'Content-language: nl' >> wii-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-canada.var
	echo >> wii-canada.var
	echo 'URI: wii-canada.html.po' >> wii-canada.var
	echo 'Content-language: pl' >> wii-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-canada.var
	echo >> wii-canada.var
	echo 'URI: wii-canada.html.sl' >> wii-canada.var
	echo 'Content-language: sl' >> wii-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-canada.var
	echo >> wii-canada.var
	echo 'URI: wii-canada.html.ru' >> wii-canada.var
	echo 'Content-language: ru' >> wii-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-canada.var
	echo >> wii-canada.var
	echo 'URI: wii-canada.html.zh-CN' >> wii-canada.var
	echo 'Content-language: zh-CN' >> wii-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> wii-canada.var
	echo >> wii-canada.var

../..//down/powerpc/aix.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o aix.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/aix.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o aix.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/aix.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o aix.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/aix.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o aix.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/aix.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o aix.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/aix.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o aix.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/aix.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o aix.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/aix.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o aix.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/aix.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o aix.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/aix.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o aix.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/aix.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o aix.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/powerpc/aix.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o aix.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/powerpc/aix.var: gen_makefile.conf
	echo > aix.var
	echo 'URI: aix.html.bg' >> aix.var
	echo 'Content-language: bg' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.en' >> aix.var
	echo 'Content-language: en' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.fi' >> aix.var
	echo 'Content-language: fi' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.fr' >> aix.var
	echo 'Content-language: fr' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.id' >> aix.var
	echo 'Content-language: id' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.it' >> aix.var
	echo 'Content-language: it' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.nl' >> aix.var
	echo 'Content-language: nl' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.po' >> aix.var
	echo 'Content-language: pl' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.sl' >> aix.var
	echo 'Content-language: sl' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.ru' >> aix.var
	echo 'Content-language: ru' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.zh-CN' >> aix.var
	echo 'Content-language: zh-CN' >> aix.var
	echo 'Content-type: text/html; charset=UTF-8' >> aix.var
	echo >> aix.var

../..//down/powerpc/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/powerpc/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=UTF-8' >> linux.var
	echo >> linux.var

../..//down/powerpc/macosx.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o macosx.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/macosx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macosx.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o macosx.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o macosx.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o macosx.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o macosx.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o macosx.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o macosx.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/macosx.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o macosx.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/macosx.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o macosx.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/macosx.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o macosx.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/powerpc/macosx.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macosx.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=UTF-8' >> macosx.var
	echo >> macosx.var

../..//down/powerpc/wii.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o wii.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/wii.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o wii.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o wii.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o wii.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o wii.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o wii.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o wii.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o wii.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/wii.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o wii.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/wii.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o wii.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/wii.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o wii.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/powerpc/wii.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o wii.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=UTF-8' >> wii.var
	echo >> wii.var

mirrors.dat:
	$(shell echo -e 'name\tnamel\turl' > mirrors.dat)
	$(shell echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo -e 'Canada\tcanada\tftp://mirror.freemirror.org/pub/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../..//down/powerpc/aix-hungary.html.bg ../..//down/powerpc/aix-hungary.html.en ../..//down/powerpc/aix-hungary.html.fi ../..//down/powerpc/aix-hungary.html.fr ../..//down/powerpc/aix-hungary.html.id ../..//down/powerpc/aix-hungary.html.it ../..//down/powerpc/aix-hungary.html.nl ../..//down/powerpc/aix-hungary.html.po ../..//down/powerpc/aix-hungary.html.sl ../..//down/powerpc/aix-hungary.html.ru ../..//down/powerpc/aix-hungary.html.zh-CN ../..//down/powerpc/aix-hungary.var ../..//down/powerpc/linux-hungary.html.bg ../..//down/powerpc/linux-hungary.html.en ../..//down/powerpc/linux-hungary.html.fi ../..//down/powerpc/linux-hungary.html.fr ../..//down/powerpc/linux-hungary.html.id ../..//down/powerpc/linux-hungary.html.it ../..//down/powerpc/linux-hungary.html.nl ../..//down/powerpc/linux-hungary.html.po ../..//down/powerpc/linux-hungary.html.sl ../..//down/powerpc/linux-hungary.html.ru ../..//down/powerpc/linux-hungary.html.zh-CN ../..//down/powerpc/linux-hungary.var ../..//down/powerpc/macosx-hungary.html.bg ../..//down/powerpc/macosx-hungary.html.en ../..//down/powerpc/macosx-hungary.html.fi ../..//down/powerpc/macosx-hungary.html.fr ../..//down/powerpc/macosx-hungary.html.id ../..//down/powerpc/macosx-hungary.html.it ../..//down/powerpc/macosx-hungary.html.nl ../..//down/powerpc/macosx-hungary.html.po ../..//down/powerpc/macosx-hungary.html.sl ../..//down/powerpc/macosx-hungary.html.ru ../..//down/powerpc/macosx-hungary.html.zh-CN ../..//down/powerpc/macosx-hungary.var ../..//down/powerpc/wii-hungary.html.bg ../..//down/powerpc/wii-hungary.html.en ../..//down/powerpc/wii-hungary.html.fi ../..//down/powerpc/wii-hungary.html.fr ../..//down/powerpc/wii-hungary.html.id ../..//down/powerpc/wii-hungary.html.it ../..//down/powerpc/wii-hungary.html.nl ../..//down/powerpc/wii-hungary.html.po ../..//down/powerpc/wii-hungary.html.sl ../..//down/powerpc/wii-hungary.html.ru ../..//down/powerpc/wii-hungary.html.zh-CN ../..//down/powerpc/wii-hungary.var ../..//down/powerpc/aix-canada.html.bg ../..//down/powerpc/aix-canada.html.en ../..//down/powerpc/aix-canada.html.fi ../..//down/powerpc/aix-canada.html.fr ../..//down/powerpc/aix-canada.html.id ../..//down/powerpc/aix-canada.html.it ../..//down/powerpc/aix-canada.html.nl ../..//down/powerpc/aix-canada.html.po ../..//down/powerpc/aix-canada.html.sl ../..//down/powerpc/aix-canada.html.ru ../..//down/powerpc/aix-canada.html.zh-CN ../..//down/powerpc/aix-canada.var ../..//down/powerpc/linux-canada.html.bg ../..//down/powerpc/linux-canada.html.en ../..//down/powerpc/linux-canada.html.fi ../..//down/powerpc/linux-canada.html.fr ../..//down/powerpc/linux-canada.html.id ../..//down/powerpc/linux-canada.html.it ../..//down/powerpc/linux-canada.html.nl ../..//down/powerpc/linux-canada.html.po ../..//down/powerpc/linux-canada.html.sl ../..//down/powerpc/linux-canada.html.ru ../..//down/powerpc/linux-canada.html.zh-CN ../..//down/powerpc/linux-canada.var ../..//down/powerpc/macosx-canada.html.bg ../..//down/powerpc/macosx-canada.html.en ../..//down/powerpc/macosx-canada.html.fi ../..//down/powerpc/macosx-canada.html.fr ../..//down/powerpc/macosx-canada.html.id ../..//down/powerpc/macosx-canada.html.it ../..//down/powerpc/macosx-canada.html.nl ../..//down/powerpc/macosx-canada.html.po ../..//down/powerpc/macosx-canada.html.sl ../..//down/powerpc/macosx-canada.html.ru ../..//down/powerpc/macosx-canada.html.zh-CN ../..//down/powerpc/macosx-canada.var ../..//down/powerpc/wii-canada.html.bg ../..//down/powerpc/wii-canada.html.en ../..//down/powerpc/wii-canada.html.fi ../..//down/powerpc/wii-canada.html.fr ../..//down/powerpc/wii-canada.html.id ../..//down/powerpc/wii-canada.html.it ../..//down/powerpc/wii-canada.html.nl ../..//down/powerpc/wii-canada.html.po ../..//down/powerpc/wii-canada.html.sl ../..//down/powerpc/wii-canada.html.ru ../..//down/powerpc/wii-canada.html.zh-CN ../..//down/powerpc/wii-canada.var ../..//down/powerpc/aix.html.bg ../..//down/powerpc/aix.html.en ../..//down/powerpc/aix.html.fi ../..//down/powerpc/aix.html.fr ../..//down/powerpc/aix.html.id ../..//down/powerpc/aix.html.it ../..//down/powerpc/aix.html.nl ../..//down/powerpc/aix.html.po ../..//down/powerpc/aix.html.sl ../..//down/powerpc/aix.html.ru ../..//down/powerpc/aix.html.zh-CN ../..//down/powerpc/aix.var ../..//down/powerpc/linux.html.bg ../..//down/powerpc/linux.html.en ../..//down/powerpc/linux.html.fi ../..//down/powerpc/linux.html.fr ../..//down/powerpc/linux.html.id ../..//down/powerpc/linux.html.it ../..//down/powerpc/linux.html.nl ../..//down/powerpc/linux.html.po ../..//down/powerpc/linux.html.sl ../..//down/powerpc/linux.html.ru ../..//down/powerpc/linux.html.zh-CN ../..//down/powerpc/linux.var ../..//down/powerpc/macosx.html.bg ../..//down/powerpc/macosx.html.en ../..//down/powerpc/macosx.html.fi ../..//down/powerpc/macosx.html.fr ../..//down/powerpc/macosx.html.id ../..//down/powerpc/macosx.html.it ../..//down/powerpc/macosx.html.nl ../..//down/powerpc/macosx.html.po ../..//down/powerpc/macosx.html.sl ../..//down/powerpc/macosx.html.ru ../..//down/powerpc/macosx.html.zh-CN ../..//down/powerpc/macosx.var ../..//down/powerpc/wii.html.bg ../..//down/powerpc/wii.html.en ../..//down/powerpc/wii.html.fi ../..//down/powerpc/wii.html.fr ../..//down/powerpc/wii.html.id ../..//down/powerpc/wii.html.it ../..//down/powerpc/wii.html.nl ../..//down/powerpc/wii.html.po ../..//down/powerpc/wii.html.sl ../..//down/powerpc/wii.html.ru ../..//down/powerpc/wii.html.zh-CN ../..//down/powerpc/wii.var
all_en_pages: mirrors.dat ../..//down/powerpc/aix-hungary.html ../..//down/powerpc/linux-hungary.html ../..//down/powerpc/macosx-hungary.html ../..//down/powerpc/wii-hungary.html ../..//down/powerpc/aix-canada.html ../..//down/powerpc/linux-canada.html ../..//down/powerpc/macosx-canada.html ../..//down/powerpc/wii-canada.html ../..//down/powerpc/aix.html ../..//down/powerpc/linux.html ../..//down/powerpc/macosx.html ../..//down/powerpc/wii.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/powerpc/

