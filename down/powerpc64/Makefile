
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
../..//down/powerpc64/aix-hungary.html.bg: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.bg -e iso-8859-5 aix.adp
../..//down/powerpc64/aix-hungary.html.en: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.en -e iso-8859-1 aix.adp
../..//down/powerpc64/aix-hungary.html.fi: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.fi -e iso-8859-1 aix.adp
../..//down/powerpc64/aix-hungary.html.fr: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.fr -e iso-8859-1 aix.adp
../..//down/powerpc64/aix-hungary.html.id: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.id -e iso-8859-1 aix.adp
../..//down/powerpc64/aix-hungary.html.it: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.it -e iso-8859-1 aix.adp
../..//down/powerpc64/aix-hungary.html.nl: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.nl -e iso-8859-1 aix.adp
../..//down/powerpc64/aix-hungary.html.po: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.po -e iso-8859-2 aix.adp
../..//down/powerpc64/aix-hungary.html.sl: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.sl -e iso-8859-2 aix.adp
../..//down/powerpc64/aix-hungary.html.ru: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.ru -e iso-8859-5 aix.adp
../..//down/powerpc64/aix-hungary.html.zh-CN: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.zh-CN -e UTF-8 aix.adp
../..//down/powerpc64/aix-hungary.html: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html -e ISO-8859-1 aix.adp

../..//down/powerpc64/aix-hungary.var: gen_makefile.conf
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
../..//down/powerpc64/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.bg -e iso-8859-5 linux.adp
../..//down/powerpc64/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.en -e iso-8859-1 linux.adp
../..//down/powerpc64/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.fi -e iso-8859-1 linux.adp
../..//down/powerpc64/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.fr -e iso-8859-1 linux.adp
../..//down/powerpc64/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.id -e iso-8859-1 linux.adp
../..//down/powerpc64/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.it -e iso-8859-1 linux.adp
../..//down/powerpc64/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.nl -e iso-8859-1 linux.adp
../..//down/powerpc64/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.po -e iso-8859-2 linux.adp
../..//down/powerpc64/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.sl -e iso-8859-2 linux.adp
../..//down/powerpc64/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.ru -e iso-8859-5 linux.adp
../..//down/powerpc64/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.zh-CN -e UTF-8 linux.adp
../..//down/powerpc64/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html -e ISO-8859-1 linux.adp

../..//down/powerpc64/linux-hungary.var: gen_makefile.conf
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
../..//down/powerpc64/aix-canada.html.bg: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc64//aix-canada.html.bg -e iso-8859-5 aix.adp
../..//down/powerpc64/aix-canada.html.en: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//aix-canada.html.en -e iso-8859-1 aix.adp
../..//down/powerpc64/aix-canada.html.fi: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc64//aix-canada.html.fi -e iso-8859-1 aix.adp
../..//down/powerpc64/aix-canada.html.fr: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc64//aix-canada.html.fr -e iso-8859-1 aix.adp
../..//down/powerpc64/aix-canada.html.id: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc64//aix-canada.html.id -e iso-8859-1 aix.adp
../..//down/powerpc64/aix-canada.html.it: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc64//aix-canada.html.it -e iso-8859-1 aix.adp
../..//down/powerpc64/aix-canada.html.nl: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc64//aix-canada.html.nl -e iso-8859-1 aix.adp
../..//down/powerpc64/aix-canada.html.po: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc64//aix-canada.html.po -e iso-8859-2 aix.adp
../..//down/powerpc64/aix-canada.html.sl: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc64//aix-canada.html.sl -e iso-8859-2 aix.adp
../..//down/powerpc64/aix-canada.html.ru: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc64//aix-canada.html.ru -e iso-8859-5 aix.adp
../..//down/powerpc64/aix-canada.html.zh-CN: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc64//aix-canada.html.zh-CN -e UTF-8 aix.adp
../..//down/powerpc64/aix-canada.html: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//aix-canada.html -e ISO-8859-1 aix.adp

../..//down/powerpc64/aix-canada.var: gen_makefile.conf
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
../..//down/powerpc64/linux-canada.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc64//linux-canada.html.bg -e iso-8859-5 linux.adp
../..//down/powerpc64/linux-canada.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//linux-canada.html.en -e iso-8859-1 linux.adp
../..//down/powerpc64/linux-canada.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc64//linux-canada.html.fi -e iso-8859-1 linux.adp
../..//down/powerpc64/linux-canada.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc64//linux-canada.html.fr -e iso-8859-1 linux.adp
../..//down/powerpc64/linux-canada.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc64//linux-canada.html.id -e iso-8859-1 linux.adp
../..//down/powerpc64/linux-canada.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc64//linux-canada.html.it -e iso-8859-1 linux.adp
../..//down/powerpc64/linux-canada.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc64//linux-canada.html.nl -e iso-8859-1 linux.adp
../..//down/powerpc64/linux-canada.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc64//linux-canada.html.po -e iso-8859-2 linux.adp
../..//down/powerpc64/linux-canada.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc64//linux-canada.html.sl -e iso-8859-2 linux.adp
../..//down/powerpc64/linux-canada.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc64//linux-canada.html.ru -e iso-8859-5 linux.adp
../..//down/powerpc64/linux-canada.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc64//linux-canada.html.zh-CN -e UTF-8 linux.adp
../..//down/powerpc64/linux-canada.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//linux-canada.html -e ISO-8859-1 linux.adp

../..//down/powerpc64/linux-canada.var: gen_makefile.conf
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

../..//down/powerpc64/aix.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o aix.html.bg -e iso-8859-5 ../../templatemirror.adp
../..//down/powerpc64/aix.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o aix.html.en -e iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/aix.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o aix.html.fi -e iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/aix.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o aix.html.fr -e iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/aix.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o aix.html.id -e iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/aix.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o aix.html.it -e iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/aix.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o aix.html.nl -e iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/aix.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o aix.html.po -e iso-8859-2 ../../templatemirror.adp
../..//down/powerpc64/aix.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o aix.html.sl -e iso-8859-2 ../../templatemirror.adp
../..//down/powerpc64/aix.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o aix.html.ru -e iso-8859-5 ../../templatemirror.adp
../..//down/powerpc64/aix.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o aix.html.zh-CN -e UTF-8 ../../templatemirror.adp
../..//down/powerpc64/aix.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o aix.html -e ISO-8859-1 ../../templatemirror.adp
../..//down/powerpc64/aix.var: gen_makefile.conf
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

../..//down/powerpc64/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -e iso-8859-5 ../../templatemirror.adp
../..//down/powerpc64/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -e iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -e iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -e iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -e iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -e iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -e iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -e iso-8859-2 ../../templatemirror.adp
../..//down/powerpc64/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -e iso-8859-2 ../../templatemirror.adp
../..//down/powerpc64/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -e iso-8859-5 ../../templatemirror.adp
../..//down/powerpc64/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -e UTF-8 ../../templatemirror.adp
../..//down/powerpc64/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -e ISO-8859-1 ../../templatemirror.adp
../..//down/powerpc64/linux.var: gen_makefile.conf
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

mirrors.dat:
	$(shell echo -e 'name\tnamel\turl' > mirrors.dat)
	$(shell echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo -e 'Canada\tcanada\tftp://mirror.freemirror.org/pub/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../..//down/powerpc64/aix-hungary.html.bg ../..//down/powerpc64/aix-hungary.html.en ../..//down/powerpc64/aix-hungary.html.fi ../..//down/powerpc64/aix-hungary.html.fr ../..//down/powerpc64/aix-hungary.html.id ../..//down/powerpc64/aix-hungary.html.it ../..//down/powerpc64/aix-hungary.html.nl ../..//down/powerpc64/aix-hungary.html.po ../..//down/powerpc64/aix-hungary.html.sl ../..//down/powerpc64/aix-hungary.html.ru ../..//down/powerpc64/aix-hungary.html.zh-CN ../..//down/powerpc64/aix-hungary.var ../..//down/powerpc64/linux-hungary.html.bg ../..//down/powerpc64/linux-hungary.html.en ../..//down/powerpc64/linux-hungary.html.fi ../..//down/powerpc64/linux-hungary.html.fr ../..//down/powerpc64/linux-hungary.html.id ../..//down/powerpc64/linux-hungary.html.it ../..//down/powerpc64/linux-hungary.html.nl ../..//down/powerpc64/linux-hungary.html.po ../..//down/powerpc64/linux-hungary.html.sl ../..//down/powerpc64/linux-hungary.html.ru ../..//down/powerpc64/linux-hungary.html.zh-CN ../..//down/powerpc64/linux-hungary.var ../..//down/powerpc64/aix-canada.html.bg ../..//down/powerpc64/aix-canada.html.en ../..//down/powerpc64/aix-canada.html.fi ../..//down/powerpc64/aix-canada.html.fr ../..//down/powerpc64/aix-canada.html.id ../..//down/powerpc64/aix-canada.html.it ../..//down/powerpc64/aix-canada.html.nl ../..//down/powerpc64/aix-canada.html.po ../..//down/powerpc64/aix-canada.html.sl ../..//down/powerpc64/aix-canada.html.ru ../..//down/powerpc64/aix-canada.html.zh-CN ../..//down/powerpc64/aix-canada.var ../..//down/powerpc64/linux-canada.html.bg ../..//down/powerpc64/linux-canada.html.en ../..//down/powerpc64/linux-canada.html.fi ../..//down/powerpc64/linux-canada.html.fr ../..//down/powerpc64/linux-canada.html.id ../..//down/powerpc64/linux-canada.html.it ../..//down/powerpc64/linux-canada.html.nl ../..//down/powerpc64/linux-canada.html.po ../..//down/powerpc64/linux-canada.html.sl ../..//down/powerpc64/linux-canada.html.ru ../..//down/powerpc64/linux-canada.html.zh-CN ../..//down/powerpc64/linux-canada.var ../..//down/powerpc64/aix.html.bg ../..//down/powerpc64/aix.html.en ../..//down/powerpc64/aix.html.fi ../..//down/powerpc64/aix.html.fr ../..//down/powerpc64/aix.html.id ../..//down/powerpc64/aix.html.it ../..//down/powerpc64/aix.html.nl ../..//down/powerpc64/aix.html.po ../..//down/powerpc64/aix.html.sl ../..//down/powerpc64/aix.html.ru ../..//down/powerpc64/aix.html.zh-CN ../..//down/powerpc64/aix.var ../..//down/powerpc64/linux.html.bg ../..//down/powerpc64/linux.html.en ../..//down/powerpc64/linux.html.fi ../..//down/powerpc64/linux.html.fr ../..//down/powerpc64/linux.html.id ../..//down/powerpc64/linux.html.it ../..//down/powerpc64/linux.html.nl ../..//down/powerpc64/linux.html.po ../..//down/powerpc64/linux.html.sl ../..//down/powerpc64/linux.html.ru ../..//down/powerpc64/linux.html.zh-CN ../..//down/powerpc64/linux.var
all_en_pages: mirrors.dat ../..//down/powerpc64/aix-hungary.html ../..//down/powerpc64/linux-hungary.html ../..//down/powerpc64/aix-canada.html ../..//down/powerpc64/linux-canada.html ../..//down/powerpc64/aix.html ../..//down/powerpc64/linux.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/powerpc64/

