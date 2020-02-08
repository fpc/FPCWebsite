
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
../..//down2/i386/freebsd-hungary.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.bg -e iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-hungary.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.en -e iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-hungary.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.fi -e iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-hungary.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.fr -e iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-hungary.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.id -e iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-hungary.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.it -e iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-hungary.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.nl -e iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-hungary.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.po -e iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-hungary.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.sl -e iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-hungary.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.ru -e iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-hungary.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.zh-CN -e UTF-8 freebsd.adp
../..//down2/i386/freebsd-hungary.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html -e ISO-8859-1 freebsd.adp

../..//down2/i386/freebsd-hungary.var: gen_makefile.conf
	echo > freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.bg' >> freebsd-hungary.var
	echo 'Content-language: bg' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.en' >> freebsd-hungary.var
	echo 'Content-language: en' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.fi' >> freebsd-hungary.var
	echo 'Content-language: fi' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.fr' >> freebsd-hungary.var
	echo 'Content-language: fr' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.id' >> freebsd-hungary.var
	echo 'Content-language: id' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.it' >> freebsd-hungary.var
	echo 'Content-language: it' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.nl' >> freebsd-hungary.var
	echo 'Content-language: nl' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.po' >> freebsd-hungary.var
	echo 'Content-language: pl' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.sl' >> freebsd-hungary.var
	echo 'Content-language: sl' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.ru' >> freebsd-hungary.var
	echo 'Content-language: ru' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.zh-CN' >> freebsd-hungary.var
	echo 'Content-language: zh-CN' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
../..//down2/i386/go32v2-hungary.html.bg: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.bg -e iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-hungary.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.en -e iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-hungary.html.fi: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.fi -e iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-hungary.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.fr -e iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-hungary.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.id -e iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-hungary.html.it: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.it -e iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-hungary.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.nl -e iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-hungary.html.po: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.po -e iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-hungary.html.sl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.sl -e iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-hungary.html.ru: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.ru -e iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-hungary.html.zh-CN: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.zh-CN -e UTF-8 go32v2.adp
../..//down2/i386/go32v2-hungary.html: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html -e ISO-8859-1 go32v2.adp

../..//down2/i386/go32v2-hungary.var: gen_makefile.conf
	echo > go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.bg' >> go32v2-hungary.var
	echo 'Content-language: bg' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.en' >> go32v2-hungary.var
	echo 'Content-language: en' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.fi' >> go32v2-hungary.var
	echo 'Content-language: fi' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.fr' >> go32v2-hungary.var
	echo 'Content-language: fr' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.id' >> go32v2-hungary.var
	echo 'Content-language: id' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.it' >> go32v2-hungary.var
	echo 'Content-language: it' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.nl' >> go32v2-hungary.var
	echo 'Content-language: nl' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.po' >> go32v2-hungary.var
	echo 'Content-language: pl' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.sl' >> go32v2-hungary.var
	echo 'Content-language: sl' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.ru' >> go32v2-hungary.var
	echo 'Content-language: ru' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.zh-CN' >> go32v2-hungary.var
	echo 'Content-language: zh-CN' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
../..//down2/i386/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.bg -e iso-8859-5 linux.adp
../..//down2/i386/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.en -e iso-8859-1 linux.adp
../..//down2/i386/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.fi -e iso-8859-1 linux.adp
../..//down2/i386/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.fr -e iso-8859-1 linux.adp
../..//down2/i386/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.id -e iso-8859-1 linux.adp
../..//down2/i386/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.it -e iso-8859-1 linux.adp
../..//down2/i386/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.nl -e iso-8859-1 linux.adp
../..//down2/i386/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.po -e iso-8859-2 linux.adp
../..//down2/i386/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.sl -e iso-8859-2 linux.adp
../..//down2/i386/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.ru -e iso-8859-5 linux.adp
../..//down2/i386/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.zh-CN -e UTF-8 linux.adp
../..//down2/i386/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html -e ISO-8859-1 linux.adp

../..//down2/i386/linux-hungary.var: gen_makefile.conf
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
../..//down2/i386/macosx-hungary.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.bg -e iso-8859-5 macosx.adp
../..//down2/i386/macosx-hungary.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.en -e iso-8859-1 macosx.adp
../..//down2/i386/macosx-hungary.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.fi -e iso-8859-1 macosx.adp
../..//down2/i386/macosx-hungary.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.fr -e iso-8859-1 macosx.adp
../..//down2/i386/macosx-hungary.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.id -e iso-8859-1 macosx.adp
../..//down2/i386/macosx-hungary.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.it -e iso-8859-1 macosx.adp
../..//down2/i386/macosx-hungary.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.nl -e iso-8859-1 macosx.adp
../..//down2/i386/macosx-hungary.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.po -e iso-8859-2 macosx.adp
../..//down2/i386/macosx-hungary.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.sl -e iso-8859-2 macosx.adp
../..//down2/i386/macosx-hungary.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.ru -e iso-8859-5 macosx.adp
../..//down2/i386/macosx-hungary.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.zh-CN -e UTF-8 macosx.adp
../..//down2/i386/macosx-hungary.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html -e ISO-8859-1 macosx.adp

../..//down2/i386/macosx-hungary.var: gen_makefile.conf
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
../..//down2/i386/win32-hungary.html.bg: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.bg -e iso-8859-5 win32.adp
../..//down2/i386/win32-hungary.html.en: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.en -e iso-8859-1 win32.adp
../..//down2/i386/win32-hungary.html.fi: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.fi -e iso-8859-1 win32.adp
../..//down2/i386/win32-hungary.html.fr: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.fr -e iso-8859-1 win32.adp
../..//down2/i386/win32-hungary.html.id: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.id -e iso-8859-1 win32.adp
../..//down2/i386/win32-hungary.html.it: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.it -e iso-8859-1 win32.adp
../..//down2/i386/win32-hungary.html.nl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.nl -e iso-8859-1 win32.adp
../..//down2/i386/win32-hungary.html.po: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.po -e iso-8859-2 win32.adp
../..//down2/i386/win32-hungary.html.sl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.sl -e iso-8859-2 win32.adp
../..//down2/i386/win32-hungary.html.ru: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.ru -e iso-8859-5 win32.adp
../..//down2/i386/win32-hungary.html.zh-CN: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.zh-CN -e UTF-8 win32.adp
../..//down2/i386/win32-hungary.html: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html -e ISO-8859-1 win32.adp

../..//down2/i386/win32-hungary.var: gen_makefile.conf
	echo > win32-hungary.var
	echo 'URI: win32-hungary.html.bg' >> win32-hungary.var
	echo 'Content-language: bg' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.en' >> win32-hungary.var
	echo 'Content-language: en' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.fi' >> win32-hungary.var
	echo 'Content-language: fi' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.fr' >> win32-hungary.var
	echo 'Content-language: fr' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.id' >> win32-hungary.var
	echo 'Content-language: id' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.it' >> win32-hungary.var
	echo 'Content-language: it' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.nl' >> win32-hungary.var
	echo 'Content-language: nl' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.po' >> win32-hungary.var
	echo 'Content-language: pl' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.sl' >> win32-hungary.var
	echo 'Content-language: sl' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.ru' >> win32-hungary.var
	echo 'Content-language: ru' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.zh-CN' >> win32-hungary.var
	echo 'Content-language: zh-CN' >> win32-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> win32-hungary.var
	echo >> win32-hungary.var

../..//down2/i386/freebsd.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o freebsd.html.bg -e iso-8859-5 ../../templatemirror.adp
../..//down2/i386/freebsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o freebsd.html.en -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/freebsd.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o freebsd.html.fi -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/freebsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o freebsd.html.fr -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/freebsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o freebsd.html.id -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/freebsd.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o freebsd.html.it -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/freebsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o freebsd.html.nl -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/freebsd.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o freebsd.html.po -e iso-8859-2 ../../templatemirror.adp
../..//down2/i386/freebsd.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o freebsd.html.sl -e iso-8859-2 ../../templatemirror.adp
../..//down2/i386/freebsd.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o freebsd.html.ru -e iso-8859-5 ../../templatemirror.adp
../..//down2/i386/freebsd.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o freebsd.html.zh-CN -e UTF-8 ../../templatemirror.adp
../..//down2/i386/freebsd.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=freebsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o freebsd.html -e ISO-8859-1 ../../templatemirror.adp
../..//down2/i386/freebsd.var: gen_makefile.conf
	echo > freebsd.var
	echo 'URI: freebsd.html.bg' >> freebsd.var
	echo 'Content-language: bg' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.en' >> freebsd.var
	echo 'Content-language: en' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.fi' >> freebsd.var
	echo 'Content-language: fi' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.fr' >> freebsd.var
	echo 'Content-language: fr' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.id' >> freebsd.var
	echo 'Content-language: id' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.it' >> freebsd.var
	echo 'Content-language: it' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.nl' >> freebsd.var
	echo 'Content-language: nl' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.po' >> freebsd.var
	echo 'Content-language: pl' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.sl' >> freebsd.var
	echo 'Content-language: sl' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.ru' >> freebsd.var
	echo 'Content-language: ru' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.zh-CN' >> freebsd.var
	echo 'Content-language: zh-CN' >> freebsd.var
	echo 'Content-type: text/html; charset=UTF-8' >> freebsd.var
	echo >> freebsd.var

../..//down2/i386/go32v2.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o go32v2.html.bg -e iso-8859-5 ../../templatemirror.adp
../..//down2/i386/go32v2.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o go32v2.html.en -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/go32v2.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o go32v2.html.fi -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/go32v2.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o go32v2.html.fr -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/go32v2.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o go32v2.html.id -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/go32v2.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o go32v2.html.it -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/go32v2.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o go32v2.html.nl -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/go32v2.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o go32v2.html.po -e iso-8859-2 ../../templatemirror.adp
../..//down2/i386/go32v2.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o go32v2.html.sl -e iso-8859-2 ../../templatemirror.adp
../..//down2/i386/go32v2.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o go32v2.html.ru -e iso-8859-5 ../../templatemirror.adp
../..//down2/i386/go32v2.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o go32v2.html.zh-CN -e UTF-8 ../../templatemirror.adp
../..//down2/i386/go32v2.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o go32v2.html -e ISO-8859-1 ../../templatemirror.adp
../..//down2/i386/go32v2.var: gen_makefile.conf
	echo > go32v2.var
	echo 'URI: go32v2.html.bg' >> go32v2.var
	echo 'Content-language: bg' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.en' >> go32v2.var
	echo 'Content-language: en' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.fi' >> go32v2.var
	echo 'Content-language: fi' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.fr' >> go32v2.var
	echo 'Content-language: fr' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.id' >> go32v2.var
	echo 'Content-language: id' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.it' >> go32v2.var
	echo 'Content-language: it' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.nl' >> go32v2.var
	echo 'Content-language: nl' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.po' >> go32v2.var
	echo 'Content-language: pl' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.sl' >> go32v2.var
	echo 'Content-language: sl' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.ru' >> go32v2.var
	echo 'Content-language: ru' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.zh-CN' >> go32v2.var
	echo 'Content-language: zh-CN' >> go32v2.var
	echo 'Content-type: text/html; charset=UTF-8' >> go32v2.var
	echo >> go32v2.var

../..//down2/i386/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -e iso-8859-5 ../../templatemirror.adp
../..//down2/i386/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -e iso-8859-2 ../../templatemirror.adp
../..//down2/i386/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -e iso-8859-2 ../../templatemirror.adp
../..//down2/i386/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -e iso-8859-5 ../../templatemirror.adp
../..//down2/i386/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -e UTF-8 ../../templatemirror.adp
../..//down2/i386/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -e ISO-8859-1 ../../templatemirror.adp
../..//down2/i386/linux.var: gen_makefile.conf
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

../..//down2/i386/macosx.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o macosx.html.bg -e iso-8859-5 ../../templatemirror.adp
../..//down2/i386/macosx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macosx.html.en -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/macosx.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o macosx.html.fi -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/macosx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o macosx.html.fr -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/macosx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o macosx.html.id -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/macosx.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o macosx.html.it -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/macosx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o macosx.html.nl -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/macosx.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o macosx.html.po -e iso-8859-2 ../../templatemirror.adp
../..//down2/i386/macosx.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o macosx.html.sl -e iso-8859-2 ../../templatemirror.adp
../..//down2/i386/macosx.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o macosx.html.ru -e iso-8859-5 ../../templatemirror.adp
../..//down2/i386/macosx.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o macosx.html.zh-CN -e UTF-8 ../../templatemirror.adp
../..//down2/i386/macosx.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=macosx -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macosx.html -e ISO-8859-1 ../../templatemirror.adp
../..//down2/i386/macosx.var: gen_makefile.conf
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

../..//down2/i386/win32.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o win32.html.bg -e iso-8859-5 ../../templatemirror.adp
../..//down2/i386/win32.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win32.html.en -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/win32.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o win32.html.fi -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/win32.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o win32.html.fr -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/win32.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o win32.html.id -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/win32.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o win32.html.it -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/win32.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o win32.html.nl -e iso-8859-1 ../../templatemirror.adp
../..//down2/i386/win32.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o win32.html.po -e iso-8859-2 ../../templatemirror.adp
../..//down2/i386/win32.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o win32.html.sl -e iso-8859-2 ../../templatemirror.adp
../..//down2/i386/win32.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o win32.html.ru -e iso-8859-5 ../../templatemirror.adp
../..//down2/i386/win32.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o win32.html.zh-CN -e UTF-8 ../../templatemirror.adp
../..//down2/i386/win32.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=win32 -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win32.html -e ISO-8859-1 ../../templatemirror.adp
../..//down2/i386/win32.var: gen_makefile.conf
	echo > win32.var
	echo 'URI: win32.html.bg' >> win32.var
	echo 'Content-language: bg' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.en' >> win32.var
	echo 'Content-language: en' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.fi' >> win32.var
	echo 'Content-language: fi' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.fr' >> win32.var
	echo 'Content-language: fr' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.id' >> win32.var
	echo 'Content-language: id' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.it' >> win32.var
	echo 'Content-language: it' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.nl' >> win32.var
	echo 'Content-language: nl' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.po' >> win32.var
	echo 'Content-language: pl' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.sl' >> win32.var
	echo 'Content-language: sl' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.ru' >> win32.var
	echo 'Content-language: ru' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.zh-CN' >> win32.var
	echo 'Content-language: zh-CN' >> win32.var
	echo 'Content-type: text/html; charset=UTF-8' >> win32.var
	echo >> win32.var

mirrors.dat:
	$(shell echo -e 'name\tnamel\turl' > mirrors.dat)
	$(shell echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo -e 'Canada\tcanada\tftp://mirror.freemirror.org/pub/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../..//down2/i386/freebsd-hungary.html.bg ../..//down2/i386/freebsd-hungary.html.en ../..//down2/i386/freebsd-hungary.html.fi ../..//down2/i386/freebsd-hungary.html.fr ../..//down2/i386/freebsd-hungary.html.id ../..//down2/i386/freebsd-hungary.html.it ../..//down2/i386/freebsd-hungary.html.nl ../..//down2/i386/freebsd-hungary.html.po ../..//down2/i386/freebsd-hungary.html.sl ../..//down2/i386/freebsd-hungary.html.ru ../..//down2/i386/freebsd-hungary.html.zh-CN ../..//down2/i386/freebsd-hungary.var ../..//down2/i386/go32v2-hungary.html.bg ../..//down2/i386/go32v2-hungary.html.en ../..//down2/i386/go32v2-hungary.html.fi ../..//down2/i386/go32v2-hungary.html.fr ../..//down2/i386/go32v2-hungary.html.id ../..//down2/i386/go32v2-hungary.html.it ../..//down2/i386/go32v2-hungary.html.nl ../..//down2/i386/go32v2-hungary.html.po ../..//down2/i386/go32v2-hungary.html.sl ../..//down2/i386/go32v2-hungary.html.ru ../..//down2/i386/go32v2-hungary.html.zh-CN ../..//down2/i386/go32v2-hungary.var ../..//down2/i386/linux-hungary.html.bg ../..//down2/i386/linux-hungary.html.en ../..//down2/i386/linux-hungary.html.fi ../..//down2/i386/linux-hungary.html.fr ../..//down2/i386/linux-hungary.html.id ../..//down2/i386/linux-hungary.html.it ../..//down2/i386/linux-hungary.html.nl ../..//down2/i386/linux-hungary.html.po ../..//down2/i386/linux-hungary.html.sl ../..//down2/i386/linux-hungary.html.ru ../..//down2/i386/linux-hungary.html.zh-CN ../..//down2/i386/linux-hungary.var ../..//down2/i386/macosx-hungary.html.bg ../..//down2/i386/macosx-hungary.html.en ../..//down2/i386/macosx-hungary.html.fi ../..//down2/i386/macosx-hungary.html.fr ../..//down2/i386/macosx-hungary.html.id ../..//down2/i386/macosx-hungary.html.it ../..//down2/i386/macosx-hungary.html.nl ../..//down2/i386/macosx-hungary.html.po ../..//down2/i386/macosx-hungary.html.sl ../..//down2/i386/macosx-hungary.html.ru ../..//down2/i386/macosx-hungary.html.zh-CN ../..//down2/i386/macosx-hungary.var ../..//down2/i386/win32-hungary.html.bg ../..//down2/i386/win32-hungary.html.en ../..//down2/i386/win32-hungary.html.fi ../..//down2/i386/win32-hungary.html.fr ../..//down2/i386/win32-hungary.html.id ../..//down2/i386/win32-hungary.html.it ../..//down2/i386/win32-hungary.html.nl ../..//down2/i386/win32-hungary.html.po ../..//down2/i386/win32-hungary.html.sl ../..//down2/i386/win32-hungary.html.ru ../..//down2/i386/win32-hungary.html.zh-CN ../..//down2/i386/win32-hungary.var ../..//down2/i386/freebsd.html.bg ../..//down2/i386/freebsd.html.en ../..//down2/i386/freebsd.html.fi ../..//down2/i386/freebsd.html.fr ../..//down2/i386/freebsd.html.id ../..//down2/i386/freebsd.html.it ../..//down2/i386/freebsd.html.nl ../..//down2/i386/freebsd.html.po ../..//down2/i386/freebsd.html.sl ../..//down2/i386/freebsd.html.ru ../..//down2/i386/freebsd.html.zh-CN ../..//down2/i386/freebsd.var ../..//down2/i386/go32v2.html.bg ../..//down2/i386/go32v2.html.en ../..//down2/i386/go32v2.html.fi ../..//down2/i386/go32v2.html.fr ../..//down2/i386/go32v2.html.id ../..//down2/i386/go32v2.html.it ../..//down2/i386/go32v2.html.nl ../..//down2/i386/go32v2.html.po ../..//down2/i386/go32v2.html.sl ../..//down2/i386/go32v2.html.ru ../..//down2/i386/go32v2.html.zh-CN ../..//down2/i386/go32v2.var ../..//down2/i386/linux.html.bg ../..//down2/i386/linux.html.en ../..//down2/i386/linux.html.fi ../..//down2/i386/linux.html.fr ../..//down2/i386/linux.html.id ../..//down2/i386/linux.html.it ../..//down2/i386/linux.html.nl ../..//down2/i386/linux.html.po ../..//down2/i386/linux.html.sl ../..//down2/i386/linux.html.ru ../..//down2/i386/linux.html.zh-CN ../..//down2/i386/linux.var ../..//down2/i386/macosx.html.bg ../..//down2/i386/macosx.html.en ../..//down2/i386/macosx.html.fi ../..//down2/i386/macosx.html.fr ../..//down2/i386/macosx.html.id ../..//down2/i386/macosx.html.it ../..//down2/i386/macosx.html.nl ../..//down2/i386/macosx.html.po ../..//down2/i386/macosx.html.sl ../..//down2/i386/macosx.html.ru ../..//down2/i386/macosx.html.zh-CN ../..//down2/i386/macosx.var ../..//down2/i386/win32.html.bg ../..//down2/i386/win32.html.en ../..//down2/i386/win32.html.fi ../..//down2/i386/win32.html.fr ../..//down2/i386/win32.html.id ../..//down2/i386/win32.html.it ../..//down2/i386/win32.html.nl ../..//down2/i386/win32.html.po ../..//down2/i386/win32.html.sl ../..//down2/i386/win32.html.ru ../..//down2/i386/win32.html.zh-CN ../..//down2/i386/win32.var
all_en_pages: mirrors.dat ../..//down2/i386/freebsd-hungary.html ../..//down2/i386/go32v2-hungary.html ../..//down2/i386/linux-hungary.html ../..//down2/i386/macosx-hungary.html ../..//down2/i386/win32-hungary.html ../..//down2/i386/freebsd.html ../..//down2/i386/go32v2.html ../..//down2/i386/linux.html ../..//down2/i386/macosx.html ../..//down2/i386/win32.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down2/i386/

