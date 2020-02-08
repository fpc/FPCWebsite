
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
../..//down2/arm/gba-hungary.html.bg: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm//gba-hungary.html.bg -e iso-8859-5 gba.adp
../..//down2/arm/gba-hungary.html.en: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm//gba-hungary.html.en -e iso-8859-1 gba.adp
../..//down2/arm/gba-hungary.html.fi: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm//gba-hungary.html.fi -e iso-8859-1 gba.adp
../..//down2/arm/gba-hungary.html.fr: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm//gba-hungary.html.fr -e iso-8859-1 gba.adp
../..//down2/arm/gba-hungary.html.id: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm//gba-hungary.html.id -e iso-8859-1 gba.adp
../..//down2/arm/gba-hungary.html.it: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm//gba-hungary.html.it -e iso-8859-1 gba.adp
../..//down2/arm/gba-hungary.html.nl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm//gba-hungary.html.nl -e iso-8859-1 gba.adp
../..//down2/arm/gba-hungary.html.po: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm//gba-hungary.html.po -e iso-8859-2 gba.adp
../..//down2/arm/gba-hungary.html.sl: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm//gba-hungary.html.sl -e iso-8859-2 gba.adp
../..//down2/arm/gba-hungary.html.ru: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm//gba-hungary.html.ru -e iso-8859-5 gba.adp
../..//down2/arm/gba-hungary.html.zh-CN: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/arm//gba-hungary.html.zh-CN -e UTF-8 gba.adp
../..//down2/arm/gba-hungary.html: gba.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm//gba-hungary.html -e ISO-8859-1 gba.adp

../..//down2/arm/gba-hungary.var: gen_makefile.conf
	echo > gba-hungary.var
	echo 'URI: gba-hungary.html.bg' >> gba-hungary.var
	echo 'Content-language: bg' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.en' >> gba-hungary.var
	echo 'Content-language: en' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.fi' >> gba-hungary.var
	echo 'Content-language: fi' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.fr' >> gba-hungary.var
	echo 'Content-language: fr' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.id' >> gba-hungary.var
	echo 'Content-language: id' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.it' >> gba-hungary.var
	echo 'Content-language: it' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.nl' >> gba-hungary.var
	echo 'Content-language: nl' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.po' >> gba-hungary.var
	echo 'Content-language: pl' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.sl' >> gba-hungary.var
	echo 'Content-language: sl' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.ru' >> gba-hungary.var
	echo 'Content-language: ru' >> gba-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba-hungary.var
	echo >> gba-hungary.var
	echo 'URI: gba-hungary.html.zh-CN' >> gba-hungary.var
	echo 'Content-language: zh-CN' >> gba-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> gba-hungary.var
	echo >> gba-hungary.var
../..//down2/arm/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm//linux-hungary.html.bg -e iso-8859-5 linux.adp
../..//down2/arm/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm//linux-hungary.html.en -e iso-8859-1 linux.adp
../..//down2/arm/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm//linux-hungary.html.fi -e iso-8859-1 linux.adp
../..//down2/arm/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm//linux-hungary.html.fr -e iso-8859-1 linux.adp
../..//down2/arm/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm//linux-hungary.html.id -e iso-8859-1 linux.adp
../..//down2/arm/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm//linux-hungary.html.it -e iso-8859-1 linux.adp
../..//down2/arm/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm//linux-hungary.html.nl -e iso-8859-1 linux.adp
../..//down2/arm/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm//linux-hungary.html.po -e iso-8859-2 linux.adp
../..//down2/arm/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm//linux-hungary.html.sl -e iso-8859-2 linux.adp
../..//down2/arm/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm//linux-hungary.html.ru -e iso-8859-5 linux.adp
../..//down2/arm/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/arm//linux-hungary.html.zh-CN -e UTF-8 linux.adp
../..//down2/arm/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm//linux-hungary.html -e ISO-8859-1 linux.adp

../..//down2/arm/linux-hungary.var: gen_makefile.conf
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
../..//down2/arm/nds-hungary.html.bg: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm//nds-hungary.html.bg -e iso-8859-5 nds.adp
../..//down2/arm/nds-hungary.html.en: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm//nds-hungary.html.en -e iso-8859-1 nds.adp
../..//down2/arm/nds-hungary.html.fi: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm//nds-hungary.html.fi -e iso-8859-1 nds.adp
../..//down2/arm/nds-hungary.html.fr: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm//nds-hungary.html.fr -e iso-8859-1 nds.adp
../..//down2/arm/nds-hungary.html.id: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm//nds-hungary.html.id -e iso-8859-1 nds.adp
../..//down2/arm/nds-hungary.html.it: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm//nds-hungary.html.it -e iso-8859-1 nds.adp
../..//down2/arm/nds-hungary.html.nl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm//nds-hungary.html.nl -e iso-8859-1 nds.adp
../..//down2/arm/nds-hungary.html.po: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm//nds-hungary.html.po -e iso-8859-2 nds.adp
../..//down2/arm/nds-hungary.html.sl: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm//nds-hungary.html.sl -e iso-8859-2 nds.adp
../..//down2/arm/nds-hungary.html.ru: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm//nds-hungary.html.ru -e iso-8859-5 nds.adp
../..//down2/arm/nds-hungary.html.zh-CN: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/arm//nds-hungary.html.zh-CN -e UTF-8 nds.adp
../..//down2/arm/nds-hungary.html: nds.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm//nds-hungary.html -e ISO-8859-1 nds.adp

../..//down2/arm/nds-hungary.var: gen_makefile.conf
	echo > nds-hungary.var
	echo 'URI: nds-hungary.html.bg' >> nds-hungary.var
	echo 'Content-language: bg' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.en' >> nds-hungary.var
	echo 'Content-language: en' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.fi' >> nds-hungary.var
	echo 'Content-language: fi' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.fr' >> nds-hungary.var
	echo 'Content-language: fr' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.id' >> nds-hungary.var
	echo 'Content-language: id' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.it' >> nds-hungary.var
	echo 'Content-language: it' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.nl' >> nds-hungary.var
	echo 'Content-language: nl' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.po' >> nds-hungary.var
	echo 'Content-language: pl' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.sl' >> nds-hungary.var
	echo 'Content-language: sl' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.ru' >> nds-hungary.var
	echo 'Content-language: ru' >> nds-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds-hungary.var
	echo >> nds-hungary.var
	echo 'URI: nds-hungary.html.zh-CN' >> nds-hungary.var
	echo 'Content-language: zh-CN' >> nds-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> nds-hungary.var
	echo >> nds-hungary.var
../..//down2/arm/wince-hungary.html.bg: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/arm//wince-hungary.html.bg -e iso-8859-5 wince.adp
../..//down2/arm/wince-hungary.html.en: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm//wince-hungary.html.en -e iso-8859-1 wince.adp
../..//down2/arm/wince-hungary.html.fi: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/arm//wince-hungary.html.fi -e iso-8859-1 wince.adp
../..//down2/arm/wince-hungary.html.fr: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/arm//wince-hungary.html.fr -e iso-8859-1 wince.adp
../..//down2/arm/wince-hungary.html.id: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/arm//wince-hungary.html.id -e iso-8859-1 wince.adp
../..//down2/arm/wince-hungary.html.it: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/arm//wince-hungary.html.it -e iso-8859-1 wince.adp
../..//down2/arm/wince-hungary.html.nl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/arm//wince-hungary.html.nl -e iso-8859-1 wince.adp
../..//down2/arm/wince-hungary.html.po: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/arm//wince-hungary.html.po -e iso-8859-2 wince.adp
../..//down2/arm/wince-hungary.html.sl: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/arm//wince-hungary.html.sl -e iso-8859-2 wince.adp
../..//down2/arm/wince-hungary.html.ru: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/arm//wince-hungary.html.ru -e iso-8859-5 wince.adp
../..//down2/arm/wince-hungary.html.zh-CN: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/arm//wince-hungary.html.zh-CN -e UTF-8 wince.adp
../..//down2/arm/wince-hungary.html: wince.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/arm/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/arm//wince-hungary.html -e ISO-8859-1 wince.adp

../..//down2/arm/wince-hungary.var: gen_makefile.conf
	echo > wince-hungary.var
	echo 'URI: wince-hungary.html.bg' >> wince-hungary.var
	echo 'Content-language: bg' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.en' >> wince-hungary.var
	echo 'Content-language: en' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.fi' >> wince-hungary.var
	echo 'Content-language: fi' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.fr' >> wince-hungary.var
	echo 'Content-language: fr' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.id' >> wince-hungary.var
	echo 'Content-language: id' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.it' >> wince-hungary.var
	echo 'Content-language: it' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.nl' >> wince-hungary.var
	echo 'Content-language: nl' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.po' >> wince-hungary.var
	echo 'Content-language: pl' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.sl' >> wince-hungary.var
	echo 'Content-language: sl' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.ru' >> wince-hungary.var
	echo 'Content-language: ru' >> wince-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince-hungary.var
	echo >> wince-hungary.var
	echo 'URI: wince-hungary.html.zh-CN' >> wince-hungary.var
	echo 'Content-language: zh-CN' >> wince-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> wince-hungary.var
	echo >> wince-hungary.var

../..//down2/arm/gba.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o gba.html.bg -e iso-8859-5 ../../templatemirror.adp
../..//down2/arm/gba.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o gba.html.en -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/gba.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o gba.html.fi -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/gba.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o gba.html.fr -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/gba.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o gba.html.id -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/gba.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o gba.html.it -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/gba.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o gba.html.nl -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/gba.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o gba.html.po -e iso-8859-2 ../../templatemirror.adp
../..//down2/arm/gba.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o gba.html.sl -e iso-8859-2 ../../templatemirror.adp
../..//down2/arm/gba.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o gba.html.ru -e iso-8859-5 ../../templatemirror.adp
../..//down2/arm/gba.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=gba -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o gba.html.zh-CN -e UTF-8 ../../templatemirror.adp
../..//down2/arm/gba.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=gba -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o gba.html -e ISO-8859-1 ../../templatemirror.adp
../..//down2/arm/gba.var: gen_makefile.conf
	echo > gba.var
	echo 'URI: gba.html.bg' >> gba.var
	echo 'Content-language: bg' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.en' >> gba.var
	echo 'Content-language: en' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.fi' >> gba.var
	echo 'Content-language: fi' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.fr' >> gba.var
	echo 'Content-language: fr' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.id' >> gba.var
	echo 'Content-language: id' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.it' >> gba.var
	echo 'Content-language: it' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.nl' >> gba.var
	echo 'Content-language: nl' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.po' >> gba.var
	echo 'Content-language: pl' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.sl' >> gba.var
	echo 'Content-language: sl' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.ru' >> gba.var
	echo 'Content-language: ru' >> gba.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> gba.var
	echo >> gba.var
	echo 'URI: gba.html.zh-CN' >> gba.var
	echo 'Content-language: zh-CN' >> gba.var
	echo 'Content-type: text/html; charset=UTF-8' >> gba.var
	echo >> gba.var

../..//down2/arm/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -e iso-8859-5 ../../templatemirror.adp
../..//down2/arm/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -e iso-8859-2 ../../templatemirror.adp
../..//down2/arm/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -e iso-8859-2 ../../templatemirror.adp
../..//down2/arm/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -e iso-8859-5 ../../templatemirror.adp
../..//down2/arm/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -e UTF-8 ../../templatemirror.adp
../..//down2/arm/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -e ISO-8859-1 ../../templatemirror.adp
../..//down2/arm/linux.var: gen_makefile.conf
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

../..//down2/arm/nds.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o nds.html.bg -e iso-8859-5 ../../templatemirror.adp
../..//down2/arm/nds.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o nds.html.en -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/nds.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o nds.html.fi -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/nds.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o nds.html.fr -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/nds.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o nds.html.id -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/nds.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o nds.html.it -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/nds.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o nds.html.nl -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/nds.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o nds.html.po -e iso-8859-2 ../../templatemirror.adp
../..//down2/arm/nds.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o nds.html.sl -e iso-8859-2 ../../templatemirror.adp
../..//down2/arm/nds.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o nds.html.ru -e iso-8859-5 ../../templatemirror.adp
../..//down2/arm/nds.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=nds -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o nds.html.zh-CN -e UTF-8 ../../templatemirror.adp
../..//down2/arm/nds.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=nds -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o nds.html -e ISO-8859-1 ../../templatemirror.adp
../..//down2/arm/nds.var: gen_makefile.conf
	echo > nds.var
	echo 'URI: nds.html.bg' >> nds.var
	echo 'Content-language: bg' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.en' >> nds.var
	echo 'Content-language: en' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.fi' >> nds.var
	echo 'Content-language: fi' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.fr' >> nds.var
	echo 'Content-language: fr' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.id' >> nds.var
	echo 'Content-language: id' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.it' >> nds.var
	echo 'Content-language: it' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.nl' >> nds.var
	echo 'Content-language: nl' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.po' >> nds.var
	echo 'Content-language: pl' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.sl' >> nds.var
	echo 'Content-language: sl' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.ru' >> nds.var
	echo 'Content-language: ru' >> nds.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> nds.var
	echo >> nds.var
	echo 'URI: nds.html.zh-CN' >> nds.var
	echo 'Content-language: zh-CN' >> nds.var
	echo 'Content-type: text/html; charset=UTF-8' >> nds.var
	echo >> nds.var

../..//down2/arm/wince.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o wince.html.bg -e iso-8859-5 ../../templatemirror.adp
../..//down2/arm/wince.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o wince.html.en -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/wince.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o wince.html.fi -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/wince.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o wince.html.fr -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/wince.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o wince.html.id -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/wince.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o wince.html.it -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/wince.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o wince.html.nl -e iso-8859-1 ../../templatemirror.adp
../..//down2/arm/wince.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o wince.html.po -e iso-8859-2 ../../templatemirror.adp
../..//down2/arm/wince.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o wince.html.sl -e iso-8859-2 ../../templatemirror.adp
../..//down2/arm/wince.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o wince.html.ru -e iso-8859-5 ../../templatemirror.adp
../..//down2/arm/wince.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wince -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o wince.html.zh-CN -e UTF-8 ../../templatemirror.adp
../..//down2/arm/wince.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=wince -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o wince.html -e ISO-8859-1 ../../templatemirror.adp
../..//down2/arm/wince.var: gen_makefile.conf
	echo > wince.var
	echo 'URI: wince.html.bg' >> wince.var
	echo 'Content-language: bg' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.en' >> wince.var
	echo 'Content-language: en' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.fi' >> wince.var
	echo 'Content-language: fi' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.fr' >> wince.var
	echo 'Content-language: fr' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.id' >> wince.var
	echo 'Content-language: id' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.it' >> wince.var
	echo 'Content-language: it' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.nl' >> wince.var
	echo 'Content-language: nl' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.po' >> wince.var
	echo 'Content-language: pl' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.sl' >> wince.var
	echo 'Content-language: sl' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.ru' >> wince.var
	echo 'Content-language: ru' >> wince.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wince.var
	echo >> wince.var
	echo 'URI: wince.html.zh-CN' >> wince.var
	echo 'Content-language: zh-CN' >> wince.var
	echo 'Content-type: text/html; charset=UTF-8' >> wince.var
	echo >> wince.var

mirrors.dat:
	$(shell echo -e 'name\tnamel\turl' > mirrors.dat)
	$(shell echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo -e 'Canada\tcanada\tftp://mirror.freemirror.org/pub/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../..//down2/arm/gba-hungary.html.bg ../..//down2/arm/gba-hungary.html.en ../..//down2/arm/gba-hungary.html.fi ../..//down2/arm/gba-hungary.html.fr ../..//down2/arm/gba-hungary.html.id ../..//down2/arm/gba-hungary.html.it ../..//down2/arm/gba-hungary.html.nl ../..//down2/arm/gba-hungary.html.po ../..//down2/arm/gba-hungary.html.sl ../..//down2/arm/gba-hungary.html.ru ../..//down2/arm/gba-hungary.html.zh-CN ../..//down2/arm/gba-hungary.var ../..//down2/arm/linux-hungary.html.bg ../..//down2/arm/linux-hungary.html.en ../..//down2/arm/linux-hungary.html.fi ../..//down2/arm/linux-hungary.html.fr ../..//down2/arm/linux-hungary.html.id ../..//down2/arm/linux-hungary.html.it ../..//down2/arm/linux-hungary.html.nl ../..//down2/arm/linux-hungary.html.po ../..//down2/arm/linux-hungary.html.sl ../..//down2/arm/linux-hungary.html.ru ../..//down2/arm/linux-hungary.html.zh-CN ../..//down2/arm/linux-hungary.var ../..//down2/arm/nds-hungary.html.bg ../..//down2/arm/nds-hungary.html.en ../..//down2/arm/nds-hungary.html.fi ../..//down2/arm/nds-hungary.html.fr ../..//down2/arm/nds-hungary.html.id ../..//down2/arm/nds-hungary.html.it ../..//down2/arm/nds-hungary.html.nl ../..//down2/arm/nds-hungary.html.po ../..//down2/arm/nds-hungary.html.sl ../..//down2/arm/nds-hungary.html.ru ../..//down2/arm/nds-hungary.html.zh-CN ../..//down2/arm/nds-hungary.var ../..//down2/arm/wince-hungary.html.bg ../..//down2/arm/wince-hungary.html.en ../..//down2/arm/wince-hungary.html.fi ../..//down2/arm/wince-hungary.html.fr ../..//down2/arm/wince-hungary.html.id ../..//down2/arm/wince-hungary.html.it ../..//down2/arm/wince-hungary.html.nl ../..//down2/arm/wince-hungary.html.po ../..//down2/arm/wince-hungary.html.sl ../..//down2/arm/wince-hungary.html.ru ../..//down2/arm/wince-hungary.html.zh-CN ../..//down2/arm/wince-hungary.var ../..//down2/arm/gba.html.bg ../..//down2/arm/gba.html.en ../..//down2/arm/gba.html.fi ../..//down2/arm/gba.html.fr ../..//down2/arm/gba.html.id ../..//down2/arm/gba.html.it ../..//down2/arm/gba.html.nl ../..//down2/arm/gba.html.po ../..//down2/arm/gba.html.sl ../..//down2/arm/gba.html.ru ../..//down2/arm/gba.html.zh-CN ../..//down2/arm/gba.var ../..//down2/arm/linux.html.bg ../..//down2/arm/linux.html.en ../..//down2/arm/linux.html.fi ../..//down2/arm/linux.html.fr ../..//down2/arm/linux.html.id ../..//down2/arm/linux.html.it ../..//down2/arm/linux.html.nl ../..//down2/arm/linux.html.po ../..//down2/arm/linux.html.sl ../..//down2/arm/linux.html.ru ../..//down2/arm/linux.html.zh-CN ../..//down2/arm/linux.var ../..//down2/arm/nds.html.bg ../..//down2/arm/nds.html.en ../..//down2/arm/nds.html.fi ../..//down2/arm/nds.html.fr ../..//down2/arm/nds.html.id ../..//down2/arm/nds.html.it ../..//down2/arm/nds.html.nl ../..//down2/arm/nds.html.po ../..//down2/arm/nds.html.sl ../..//down2/arm/nds.html.ru ../..//down2/arm/nds.html.zh-CN ../..//down2/arm/nds.var ../..//down2/arm/wince.html.bg ../..//down2/arm/wince.html.en ../..//down2/arm/wince.html.fi ../..//down2/arm/wince.html.fr ../..//down2/arm/wince.html.id ../..//down2/arm/wince.html.it ../..//down2/arm/wince.html.nl ../..//down2/arm/wince.html.po ../..//down2/arm/wince.html.sl ../..//down2/arm/wince.html.ru ../..//down2/arm/wince.html.zh-CN ../..//down2/arm/wince.var
all_en_pages: mirrors.dat ../..//down2/arm/gba-hungary.html ../..//down2/arm/linux-hungary.html ../..//down2/arm/nds-hungary.html ../..//down2/arm/wince-hungary.html ../..//down2/arm/gba.html ../..//down2/arm/linux.html ../..//down2/arm/nds.html ../..//down2/arm/wince.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down2/arm/

