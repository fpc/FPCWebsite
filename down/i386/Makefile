
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
../..//down/i386/freebsd-hungary.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.bg -oe iso-8859-5 freebsd.adp
../..//down/i386/freebsd-hungary.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.en -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-hungary.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.fi -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-hungary.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.fr -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-hungary.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.id -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-hungary.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.it -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-hungary.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.nl -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-hungary.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.po -oe iso-8859-2 freebsd.adp
../..//down/i386/freebsd-hungary.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.sl -oe iso-8859-2 freebsd.adp
../..//down/i386/freebsd-hungary.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.ru -oe iso-8859-5 freebsd.adp
../..//down/i386/freebsd-hungary.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.zh-CN -oe UTF-8 freebsd.adp
../..//down/i386/freebsd-hungary.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html -oe ISO-8859-1 freebsd.adp

../..//down/i386/freebsd-hungary.var: gen_makefile.conf
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
../..//down/i386/netbsd-hungary.html.bg: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//netbsd-hungary.html.bg -oe iso-8859-5 netbsd.adp
../..//down/i386/netbsd-hungary.html.en: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//netbsd-hungary.html.en -oe iso-8859-1 netbsd.adp
../..//down/i386/netbsd-hungary.html.fi: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//netbsd-hungary.html.fi -oe iso-8859-1 netbsd.adp
../..//down/i386/netbsd-hungary.html.fr: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//netbsd-hungary.html.fr -oe iso-8859-1 netbsd.adp
../..//down/i386/netbsd-hungary.html.id: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//netbsd-hungary.html.id -oe iso-8859-1 netbsd.adp
../..//down/i386/netbsd-hungary.html.it: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//netbsd-hungary.html.it -oe iso-8859-1 netbsd.adp
../..//down/i386/netbsd-hungary.html.nl: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//netbsd-hungary.html.nl -oe iso-8859-1 netbsd.adp
../..//down/i386/netbsd-hungary.html.po: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//netbsd-hungary.html.po -oe iso-8859-2 netbsd.adp
../..//down/i386/netbsd-hungary.html.sl: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//netbsd-hungary.html.sl -oe iso-8859-2 netbsd.adp
../..//down/i386/netbsd-hungary.html.ru: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//netbsd-hungary.html.ru -oe iso-8859-5 netbsd.adp
../..//down/i386/netbsd-hungary.html.zh-CN: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//netbsd-hungary.html.zh-CN -oe UTF-8 netbsd.adp
../..//down/i386/netbsd-hungary.html: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//netbsd-hungary.html -oe ISO-8859-1 netbsd.adp

../..//down/i386/netbsd-hungary.var: gen_makefile.conf
	echo > netbsd-hungary.var
	echo 'URI: netbsd-hungary.html.bg' >> netbsd-hungary.var
	echo 'Content-language: bg' >> netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netbsd-hungary.var
	echo >> netbsd-hungary.var
	echo 'URI: netbsd-hungary.html.en' >> netbsd-hungary.var
	echo 'Content-language: en' >> netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd-hungary.var
	echo >> netbsd-hungary.var
	echo 'URI: netbsd-hungary.html.fi' >> netbsd-hungary.var
	echo 'Content-language: fi' >> netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd-hungary.var
	echo >> netbsd-hungary.var
	echo 'URI: netbsd-hungary.html.fr' >> netbsd-hungary.var
	echo 'Content-language: fr' >> netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd-hungary.var
	echo >> netbsd-hungary.var
	echo 'URI: netbsd-hungary.html.id' >> netbsd-hungary.var
	echo 'Content-language: id' >> netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd-hungary.var
	echo >> netbsd-hungary.var
	echo 'URI: netbsd-hungary.html.it' >> netbsd-hungary.var
	echo 'Content-language: it' >> netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd-hungary.var
	echo >> netbsd-hungary.var
	echo 'URI: netbsd-hungary.html.nl' >> netbsd-hungary.var
	echo 'Content-language: nl' >> netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd-hungary.var
	echo >> netbsd-hungary.var
	echo 'URI: netbsd-hungary.html.po' >> netbsd-hungary.var
	echo 'Content-language: pl' >> netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netbsd-hungary.var
	echo >> netbsd-hungary.var
	echo 'URI: netbsd-hungary.html.sl' >> netbsd-hungary.var
	echo 'Content-language: sl' >> netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netbsd-hungary.var
	echo >> netbsd-hungary.var
	echo 'URI: netbsd-hungary.html.ru' >> netbsd-hungary.var
	echo 'Content-language: ru' >> netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netbsd-hungary.var
	echo >> netbsd-hungary.var
	echo 'URI: netbsd-hungary.html.zh-CN' >> netbsd-hungary.var
	echo 'Content-language: zh-CN' >> netbsd-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> netbsd-hungary.var
	echo >> netbsd-hungary.var
../..//down/i386/go32v2-hungary.html.bg: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.bg -oe iso-8859-5 go32v2.adp
../..//down/i386/go32v2-hungary.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.en -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-hungary.html.fi: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.fi -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-hungary.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.fr -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-hungary.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.id -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-hungary.html.it: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.it -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-hungary.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.nl -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-hungary.html.po: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.po -oe iso-8859-2 go32v2.adp
../..//down/i386/go32v2-hungary.html.sl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.sl -oe iso-8859-2 go32v2.adp
../..//down/i386/go32v2-hungary.html.ru: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.ru -oe iso-8859-5 go32v2.adp
../..//down/i386/go32v2-hungary.html.zh-CN: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.zh-CN -oe UTF-8 go32v2.adp
../..//down/i386/go32v2-hungary.html: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html -oe ISO-8859-1 go32v2.adp

../..//down/i386/go32v2-hungary.var: gen_makefile.conf
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
../..//down/i386/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.bg -oe iso-8859-5 linux.adp
../..//down/i386/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.en -oe iso-8859-1 linux.adp
../..//down/i386/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.fi -oe iso-8859-1 linux.adp
../..//down/i386/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.fr -oe iso-8859-1 linux.adp
../..//down/i386/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.id -oe iso-8859-1 linux.adp
../..//down/i386/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.it -oe iso-8859-1 linux.adp
../..//down/i386/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.nl -oe iso-8859-1 linux.adp
../..//down/i386/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.po -oe iso-8859-2 linux.adp
../..//down/i386/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.sl -oe iso-8859-2 linux.adp
../..//down/i386/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.ru -oe iso-8859-5 linux.adp
../..//down/i386/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.zh-CN -oe UTF-8 linux.adp
../..//down/i386/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html -oe ISO-8859-1 linux.adp

../..//down/i386/linux-hungary.var: gen_makefile.conf
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
../..//down/i386/netware-hungary.html.bg: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.bg -oe iso-8859-5 netware.adp
../..//down/i386/netware-hungary.html.en: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.en -oe iso-8859-1 netware.adp
../..//down/i386/netware-hungary.html.fi: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.fi -oe iso-8859-1 netware.adp
../..//down/i386/netware-hungary.html.fr: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.fr -oe iso-8859-1 netware.adp
../..//down/i386/netware-hungary.html.id: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.id -oe iso-8859-1 netware.adp
../..//down/i386/netware-hungary.html.it: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.it -oe iso-8859-1 netware.adp
../..//down/i386/netware-hungary.html.nl: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.nl -oe iso-8859-1 netware.adp
../..//down/i386/netware-hungary.html.po: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.po -oe iso-8859-2 netware.adp
../..//down/i386/netware-hungary.html.sl: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.sl -oe iso-8859-2 netware.adp
../..//down/i386/netware-hungary.html.ru: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.ru -oe iso-8859-5 netware.adp
../..//down/i386/netware-hungary.html.zh-CN: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.zh-CN -oe UTF-8 netware.adp
../..//down/i386/netware-hungary.html: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html -oe ISO-8859-1 netware.adp

../..//down/i386/netware-hungary.var: gen_makefile.conf
	echo > netware-hungary.var
	echo 'URI: netware-hungary.html.bg' >> netware-hungary.var
	echo 'Content-language: bg' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.en' >> netware-hungary.var
	echo 'Content-language: en' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.fi' >> netware-hungary.var
	echo 'Content-language: fi' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.fr' >> netware-hungary.var
	echo 'Content-language: fr' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.id' >> netware-hungary.var
	echo 'Content-language: id' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.it' >> netware-hungary.var
	echo 'Content-language: it' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.nl' >> netware-hungary.var
	echo 'Content-language: nl' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.po' >> netware-hungary.var
	echo 'Content-language: pl' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.sl' >> netware-hungary.var
	echo 'Content-language: sl' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.ru' >> netware-hungary.var
	echo 'Content-language: ru' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.zh-CN' >> netware-hungary.var
	echo 'Content-language: zh-CN' >> netware-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> netware-hungary.var
	echo >> netware-hungary.var
../..//down/i386/os2-hungary.html.bg: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.bg -oe iso-8859-5 os2.adp
../..//down/i386/os2-hungary.html.en: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.en -oe iso-8859-1 os2.adp
../..//down/i386/os2-hungary.html.fi: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.fi -oe iso-8859-1 os2.adp
../..//down/i386/os2-hungary.html.fr: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.fr -oe iso-8859-1 os2.adp
../..//down/i386/os2-hungary.html.id: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.id -oe iso-8859-1 os2.adp
../..//down/i386/os2-hungary.html.it: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.it -oe iso-8859-1 os2.adp
../..//down/i386/os2-hungary.html.nl: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.nl -oe iso-8859-1 os2.adp
../..//down/i386/os2-hungary.html.po: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.po -oe iso-8859-2 os2.adp
../..//down/i386/os2-hungary.html.sl: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.sl -oe iso-8859-2 os2.adp
../..//down/i386/os2-hungary.html.ru: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.ru -oe iso-8859-5 os2.adp
../..//down/i386/os2-hungary.html.zh-CN: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.zh-CN -oe UTF-8 os2.adp
../..//down/i386/os2-hungary.html: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html -oe ISO-8859-1 os2.adp

../..//down/i386/os2-hungary.var: gen_makefile.conf
	echo > os2-hungary.var
	echo 'URI: os2-hungary.html.bg' >> os2-hungary.var
	echo 'Content-language: bg' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.en' >> os2-hungary.var
	echo 'Content-language: en' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.fi' >> os2-hungary.var
	echo 'Content-language: fi' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.fr' >> os2-hungary.var
	echo 'Content-language: fr' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.id' >> os2-hungary.var
	echo 'Content-language: id' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.it' >> os2-hungary.var
	echo 'Content-language: it' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.nl' >> os2-hungary.var
	echo 'Content-language: nl' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.po' >> os2-hungary.var
	echo 'Content-language: pl' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.sl' >> os2-hungary.var
	echo 'Content-language: sl' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.ru' >> os2-hungary.var
	echo 'Content-language: ru' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.zh-CN' >> os2-hungary.var
	echo 'Content-language: zh-CN' >> os2-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> os2-hungary.var
	echo >> os2-hungary.var
../..//down/i386/win32-hungary.html.bg: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.bg -oe iso-8859-5 win32.adp
../..//down/i386/win32-hungary.html.en: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.en -oe iso-8859-1 win32.adp
../..//down/i386/win32-hungary.html.fi: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.fi -oe iso-8859-1 win32.adp
../..//down/i386/win32-hungary.html.fr: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.fr -oe iso-8859-1 win32.adp
../..//down/i386/win32-hungary.html.id: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.id -oe iso-8859-1 win32.adp
../..//down/i386/win32-hungary.html.it: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.it -oe iso-8859-1 win32.adp
../..//down/i386/win32-hungary.html.nl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.nl -oe iso-8859-1 win32.adp
../..//down/i386/win32-hungary.html.po: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.po -oe iso-8859-2 win32.adp
../..//down/i386/win32-hungary.html.sl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.sl -oe iso-8859-2 win32.adp
../..//down/i386/win32-hungary.html.ru: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.ru -oe iso-8859-5 win32.adp
../..//down/i386/win32-hungary.html.zh-CN: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.zh-CN -oe UTF-8 win32.adp
../..//down/i386/win32-hungary.html: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html -oe ISO-8859-1 win32.adp

../..//down/i386/win32-hungary.var: gen_makefile.conf
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
../..//down/i386/macosx-hungary.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.bg -oe iso-8859-5 macosx.adp
../..//down/i386/macosx-hungary.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.en -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-hungary.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.fi -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-hungary.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.fr -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-hungary.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.id -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-hungary.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.it -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-hungary.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.nl -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-hungary.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.po -oe iso-8859-2 macosx.adp
../..//down/i386/macosx-hungary.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.sl -oe iso-8859-2 macosx.adp
../..//down/i386/macosx-hungary.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.ru -oe iso-8859-5 macosx.adp
../..//down/i386/macosx-hungary.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.zh-CN -oe UTF-8 macosx.adp
../..//down/i386/macosx-hungary.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html -oe ISO-8859-1 macosx.adp

../..//down/i386/macosx-hungary.var: gen_makefile.conf
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
../..//down/i386/haiku-hungary.html.bg: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.bg -oe iso-8859-5 haiku.adp
../..//down/i386/haiku-hungary.html.en: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.en -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-hungary.html.fi: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.fi -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-hungary.html.fr: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.fr -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-hungary.html.id: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.id -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-hungary.html.it: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.it -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-hungary.html.nl: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.nl -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-hungary.html.po: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.po -oe iso-8859-2 haiku.adp
../..//down/i386/haiku-hungary.html.sl: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.sl -oe iso-8859-2 haiku.adp
../..//down/i386/haiku-hungary.html.ru: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.ru -oe iso-8859-5 haiku.adp
../..//down/i386/haiku-hungary.html.zh-CN: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.zh-CN -oe UTF-8 haiku.adp
../..//down/i386/haiku-hungary.html: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html -oe ISO-8859-1 haiku.adp

../..//down/i386/haiku-hungary.var: gen_makefile.conf
	echo > haiku-hungary.var
	echo 'URI: haiku-hungary.html.bg' >> haiku-hungary.var
	echo 'Content-language: bg' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.en' >> haiku-hungary.var
	echo 'Content-language: en' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.fi' >> haiku-hungary.var
	echo 'Content-language: fi' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.fr' >> haiku-hungary.var
	echo 'Content-language: fr' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.id' >> haiku-hungary.var
	echo 'Content-language: id' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.it' >> haiku-hungary.var
	echo 'Content-language: it' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.nl' >> haiku-hungary.var
	echo 'Content-language: nl' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.po' >> haiku-hungary.var
	echo 'Content-language: pl' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.sl' >> haiku-hungary.var
	echo 'Content-language: sl' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.ru' >> haiku-hungary.var
	echo 'Content-language: ru' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.zh-CN' >> haiku-hungary.var
	echo 'Content-language: zh-CN' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> haiku-hungary.var
	echo >> haiku-hungary.var
../..//down/i386/solaris-hungary.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.bg -oe iso-8859-5 solaris.adp
../..//down/i386/solaris-hungary.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.en -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-hungary.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.fi -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-hungary.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.fr -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-hungary.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.id -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-hungary.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.it -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-hungary.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.nl -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-hungary.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.po -oe iso-8859-2 solaris.adp
../..//down/i386/solaris-hungary.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.sl -oe iso-8859-2 solaris.adp
../..//down/i386/solaris-hungary.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.ru -oe iso-8859-5 solaris.adp
../..//down/i386/solaris-hungary.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.zh-CN -oe UTF-8 solaris.adp
../..//down/i386/solaris-hungary.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html -oe ISO-8859-1 solaris.adp

../..//down/i386/solaris-hungary.var: gen_makefile.conf
	echo > solaris-hungary.var
	echo 'URI: solaris-hungary.html.bg' >> solaris-hungary.var
	echo 'Content-language: bg' >> solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-hungary.var
	echo >> solaris-hungary.var
	echo 'URI: solaris-hungary.html.en' >> solaris-hungary.var
	echo 'Content-language: en' >> solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-hungary.var
	echo >> solaris-hungary.var
	echo 'URI: solaris-hungary.html.fi' >> solaris-hungary.var
	echo 'Content-language: fi' >> solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-hungary.var
	echo >> solaris-hungary.var
	echo 'URI: solaris-hungary.html.fr' >> solaris-hungary.var
	echo 'Content-language: fr' >> solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-hungary.var
	echo >> solaris-hungary.var
	echo 'URI: solaris-hungary.html.id' >> solaris-hungary.var
	echo 'Content-language: id' >> solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-hungary.var
	echo >> solaris-hungary.var
	echo 'URI: solaris-hungary.html.it' >> solaris-hungary.var
	echo 'Content-language: it' >> solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-hungary.var
	echo >> solaris-hungary.var
	echo 'URI: solaris-hungary.html.nl' >> solaris-hungary.var
	echo 'Content-language: nl' >> solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-hungary.var
	echo >> solaris-hungary.var
	echo 'URI: solaris-hungary.html.po' >> solaris-hungary.var
	echo 'Content-language: pl' >> solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-hungary.var
	echo >> solaris-hungary.var
	echo 'URI: solaris-hungary.html.sl' >> solaris-hungary.var
	echo 'Content-language: sl' >> solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-hungary.var
	echo >> solaris-hungary.var
	echo 'URI: solaris-hungary.html.ru' >> solaris-hungary.var
	echo 'Content-language: ru' >> solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-hungary.var
	echo >> solaris-hungary.var
	echo 'URI: solaris-hungary.html.zh-CN' >> solaris-hungary.var
	echo 'Content-language: zh-CN' >> solaris-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> solaris-hungary.var
	echo >> solaris-hungary.var
../..//down/i386/freebsd-canada.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//freebsd-canada.html.bg -oe iso-8859-5 freebsd.adp
../..//down/i386/freebsd-canada.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//freebsd-canada.html.en -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-canada.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//freebsd-canada.html.fi -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-canada.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//freebsd-canada.html.fr -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-canada.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//freebsd-canada.html.id -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-canada.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//freebsd-canada.html.it -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-canada.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//freebsd-canada.html.nl -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-canada.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//freebsd-canada.html.po -oe iso-8859-2 freebsd.adp
../..//down/i386/freebsd-canada.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//freebsd-canada.html.sl -oe iso-8859-2 freebsd.adp
../..//down/i386/freebsd-canada.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//freebsd-canada.html.ru -oe iso-8859-5 freebsd.adp
../..//down/i386/freebsd-canada.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//freebsd-canada.html.zh-CN -oe UTF-8 freebsd.adp
../..//down/i386/freebsd-canada.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//freebsd-canada.html -oe ISO-8859-1 freebsd.adp

../..//down/i386/freebsd-canada.var: gen_makefile.conf
	echo > freebsd-canada.var
	echo 'URI: freebsd-canada.html.bg' >> freebsd-canada.var
	echo 'Content-language: bg' >> freebsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-canada.var
	echo >> freebsd-canada.var
	echo 'URI: freebsd-canada.html.en' >> freebsd-canada.var
	echo 'Content-language: en' >> freebsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-canada.var
	echo >> freebsd-canada.var
	echo 'URI: freebsd-canada.html.fi' >> freebsd-canada.var
	echo 'Content-language: fi' >> freebsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-canada.var
	echo >> freebsd-canada.var
	echo 'URI: freebsd-canada.html.fr' >> freebsd-canada.var
	echo 'Content-language: fr' >> freebsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-canada.var
	echo >> freebsd-canada.var
	echo 'URI: freebsd-canada.html.id' >> freebsd-canada.var
	echo 'Content-language: id' >> freebsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-canada.var
	echo >> freebsd-canada.var
	echo 'URI: freebsd-canada.html.it' >> freebsd-canada.var
	echo 'Content-language: it' >> freebsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-canada.var
	echo >> freebsd-canada.var
	echo 'URI: freebsd-canada.html.nl' >> freebsd-canada.var
	echo 'Content-language: nl' >> freebsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-canada.var
	echo >> freebsd-canada.var
	echo 'URI: freebsd-canada.html.po' >> freebsd-canada.var
	echo 'Content-language: pl' >> freebsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-canada.var
	echo >> freebsd-canada.var
	echo 'URI: freebsd-canada.html.sl' >> freebsd-canada.var
	echo 'Content-language: sl' >> freebsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-canada.var
	echo >> freebsd-canada.var
	echo 'URI: freebsd-canada.html.ru' >> freebsd-canada.var
	echo 'Content-language: ru' >> freebsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-canada.var
	echo >> freebsd-canada.var
	echo 'URI: freebsd-canada.html.zh-CN' >> freebsd-canada.var
	echo 'Content-language: zh-CN' >> freebsd-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> freebsd-canada.var
	echo >> freebsd-canada.var
../..//down/i386/netbsd-canada.html.bg: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//netbsd-canada.html.bg -oe iso-8859-5 netbsd.adp
../..//down/i386/netbsd-canada.html.en: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//netbsd-canada.html.en -oe iso-8859-1 netbsd.adp
../..//down/i386/netbsd-canada.html.fi: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//netbsd-canada.html.fi -oe iso-8859-1 netbsd.adp
../..//down/i386/netbsd-canada.html.fr: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//netbsd-canada.html.fr -oe iso-8859-1 netbsd.adp
../..//down/i386/netbsd-canada.html.id: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//netbsd-canada.html.id -oe iso-8859-1 netbsd.adp
../..//down/i386/netbsd-canada.html.it: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//netbsd-canada.html.it -oe iso-8859-1 netbsd.adp
../..//down/i386/netbsd-canada.html.nl: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//netbsd-canada.html.nl -oe iso-8859-1 netbsd.adp
../..//down/i386/netbsd-canada.html.po: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//netbsd-canada.html.po -oe iso-8859-2 netbsd.adp
../..//down/i386/netbsd-canada.html.sl: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//netbsd-canada.html.sl -oe iso-8859-2 netbsd.adp
../..//down/i386/netbsd-canada.html.ru: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//netbsd-canada.html.ru -oe iso-8859-5 netbsd.adp
../..//down/i386/netbsd-canada.html.zh-CN: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//netbsd-canada.html.zh-CN -oe UTF-8 netbsd.adp
../..//down/i386/netbsd-canada.html: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//netbsd-canada.html -oe ISO-8859-1 netbsd.adp

../..//down/i386/netbsd-canada.var: gen_makefile.conf
	echo > netbsd-canada.var
	echo 'URI: netbsd-canada.html.bg' >> netbsd-canada.var
	echo 'Content-language: bg' >> netbsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netbsd-canada.var
	echo >> netbsd-canada.var
	echo 'URI: netbsd-canada.html.en' >> netbsd-canada.var
	echo 'Content-language: en' >> netbsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd-canada.var
	echo >> netbsd-canada.var
	echo 'URI: netbsd-canada.html.fi' >> netbsd-canada.var
	echo 'Content-language: fi' >> netbsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd-canada.var
	echo >> netbsd-canada.var
	echo 'URI: netbsd-canada.html.fr' >> netbsd-canada.var
	echo 'Content-language: fr' >> netbsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd-canada.var
	echo >> netbsd-canada.var
	echo 'URI: netbsd-canada.html.id' >> netbsd-canada.var
	echo 'Content-language: id' >> netbsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd-canada.var
	echo >> netbsd-canada.var
	echo 'URI: netbsd-canada.html.it' >> netbsd-canada.var
	echo 'Content-language: it' >> netbsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd-canada.var
	echo >> netbsd-canada.var
	echo 'URI: netbsd-canada.html.nl' >> netbsd-canada.var
	echo 'Content-language: nl' >> netbsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd-canada.var
	echo >> netbsd-canada.var
	echo 'URI: netbsd-canada.html.po' >> netbsd-canada.var
	echo 'Content-language: pl' >> netbsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netbsd-canada.var
	echo >> netbsd-canada.var
	echo 'URI: netbsd-canada.html.sl' >> netbsd-canada.var
	echo 'Content-language: sl' >> netbsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netbsd-canada.var
	echo >> netbsd-canada.var
	echo 'URI: netbsd-canada.html.ru' >> netbsd-canada.var
	echo 'Content-language: ru' >> netbsd-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netbsd-canada.var
	echo >> netbsd-canada.var
	echo 'URI: netbsd-canada.html.zh-CN' >> netbsd-canada.var
	echo 'Content-language: zh-CN' >> netbsd-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> netbsd-canada.var
	echo >> netbsd-canada.var
../..//down/i386/go32v2-canada.html.bg: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//go32v2-canada.html.bg -oe iso-8859-5 go32v2.adp
../..//down/i386/go32v2-canada.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//go32v2-canada.html.en -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-canada.html.fi: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//go32v2-canada.html.fi -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-canada.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//go32v2-canada.html.fr -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-canada.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//go32v2-canada.html.id -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-canada.html.it: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//go32v2-canada.html.it -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-canada.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//go32v2-canada.html.nl -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-canada.html.po: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//go32v2-canada.html.po -oe iso-8859-2 go32v2.adp
../..//down/i386/go32v2-canada.html.sl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//go32v2-canada.html.sl -oe iso-8859-2 go32v2.adp
../..//down/i386/go32v2-canada.html.ru: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//go32v2-canada.html.ru -oe iso-8859-5 go32v2.adp
../..//down/i386/go32v2-canada.html.zh-CN: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//go32v2-canada.html.zh-CN -oe UTF-8 go32v2.adp
../..//down/i386/go32v2-canada.html: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//go32v2-canada.html -oe ISO-8859-1 go32v2.adp

../..//down/i386/go32v2-canada.var: gen_makefile.conf
	echo > go32v2-canada.var
	echo 'URI: go32v2-canada.html.bg' >> go32v2-canada.var
	echo 'Content-language: bg' >> go32v2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-canada.var
	echo >> go32v2-canada.var
	echo 'URI: go32v2-canada.html.en' >> go32v2-canada.var
	echo 'Content-language: en' >> go32v2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-canada.var
	echo >> go32v2-canada.var
	echo 'URI: go32v2-canada.html.fi' >> go32v2-canada.var
	echo 'Content-language: fi' >> go32v2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-canada.var
	echo >> go32v2-canada.var
	echo 'URI: go32v2-canada.html.fr' >> go32v2-canada.var
	echo 'Content-language: fr' >> go32v2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-canada.var
	echo >> go32v2-canada.var
	echo 'URI: go32v2-canada.html.id' >> go32v2-canada.var
	echo 'Content-language: id' >> go32v2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-canada.var
	echo >> go32v2-canada.var
	echo 'URI: go32v2-canada.html.it' >> go32v2-canada.var
	echo 'Content-language: it' >> go32v2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-canada.var
	echo >> go32v2-canada.var
	echo 'URI: go32v2-canada.html.nl' >> go32v2-canada.var
	echo 'Content-language: nl' >> go32v2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-canada.var
	echo >> go32v2-canada.var
	echo 'URI: go32v2-canada.html.po' >> go32v2-canada.var
	echo 'Content-language: pl' >> go32v2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-canada.var
	echo >> go32v2-canada.var
	echo 'URI: go32v2-canada.html.sl' >> go32v2-canada.var
	echo 'Content-language: sl' >> go32v2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-canada.var
	echo >> go32v2-canada.var
	echo 'URI: go32v2-canada.html.ru' >> go32v2-canada.var
	echo 'Content-language: ru' >> go32v2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-canada.var
	echo >> go32v2-canada.var
	echo 'URI: go32v2-canada.html.zh-CN' >> go32v2-canada.var
	echo 'Content-language: zh-CN' >> go32v2-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> go32v2-canada.var
	echo >> go32v2-canada.var
../..//down/i386/linux-canada.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//linux-canada.html.bg -oe iso-8859-5 linux.adp
../..//down/i386/linux-canada.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//linux-canada.html.en -oe iso-8859-1 linux.adp
../..//down/i386/linux-canada.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//linux-canada.html.fi -oe iso-8859-1 linux.adp
../..//down/i386/linux-canada.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//linux-canada.html.fr -oe iso-8859-1 linux.adp
../..//down/i386/linux-canada.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//linux-canada.html.id -oe iso-8859-1 linux.adp
../..//down/i386/linux-canada.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//linux-canada.html.it -oe iso-8859-1 linux.adp
../..//down/i386/linux-canada.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//linux-canada.html.nl -oe iso-8859-1 linux.adp
../..//down/i386/linux-canada.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//linux-canada.html.po -oe iso-8859-2 linux.adp
../..//down/i386/linux-canada.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//linux-canada.html.sl -oe iso-8859-2 linux.adp
../..//down/i386/linux-canada.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//linux-canada.html.ru -oe iso-8859-5 linux.adp
../..//down/i386/linux-canada.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//linux-canada.html.zh-CN -oe UTF-8 linux.adp
../..//down/i386/linux-canada.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//linux-canada.html -oe ISO-8859-1 linux.adp

../..//down/i386/linux-canada.var: gen_makefile.conf
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
../..//down/i386/netware-canada.html.bg: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="2.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//netware-canada.html.bg -oe iso-8859-5 netware.adp
../..//down/i386/netware-canada.html.en: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="2.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//netware-canada.html.en -oe iso-8859-1 netware.adp
../..//down/i386/netware-canada.html.fi: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="2.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//netware-canada.html.fi -oe iso-8859-1 netware.adp
../..//down/i386/netware-canada.html.fr: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="2.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//netware-canada.html.fr -oe iso-8859-1 netware.adp
../..//down/i386/netware-canada.html.id: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="2.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//netware-canada.html.id -oe iso-8859-1 netware.adp
../..//down/i386/netware-canada.html.it: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="2.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//netware-canada.html.it -oe iso-8859-1 netware.adp
../..//down/i386/netware-canada.html.nl: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="2.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//netware-canada.html.nl -oe iso-8859-1 netware.adp
../..//down/i386/netware-canada.html.po: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="2.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//netware-canada.html.po -oe iso-8859-2 netware.adp
../..//down/i386/netware-canada.html.sl: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="2.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//netware-canada.html.sl -oe iso-8859-2 netware.adp
../..//down/i386/netware-canada.html.ru: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="2.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//netware-canada.html.ru -oe iso-8859-5 netware.adp
../..//down/i386/netware-canada.html.zh-CN: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="2.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//netware-canada.html.zh-CN -oe UTF-8 netware.adp
../..//down/i386/netware-canada.html: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="2.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//netware-canada.html -oe ISO-8859-1 netware.adp

../..//down/i386/netware-canada.var: gen_makefile.conf
	echo > netware-canada.var
	echo 'URI: netware-canada.html.bg' >> netware-canada.var
	echo 'Content-language: bg' >> netware-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netware-canada.var
	echo >> netware-canada.var
	echo 'URI: netware-canada.html.en' >> netware-canada.var
	echo 'Content-language: en' >> netware-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-canada.var
	echo >> netware-canada.var
	echo 'URI: netware-canada.html.fi' >> netware-canada.var
	echo 'Content-language: fi' >> netware-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-canada.var
	echo >> netware-canada.var
	echo 'URI: netware-canada.html.fr' >> netware-canada.var
	echo 'Content-language: fr' >> netware-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-canada.var
	echo >> netware-canada.var
	echo 'URI: netware-canada.html.id' >> netware-canada.var
	echo 'Content-language: id' >> netware-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-canada.var
	echo >> netware-canada.var
	echo 'URI: netware-canada.html.it' >> netware-canada.var
	echo 'Content-language: it' >> netware-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-canada.var
	echo >> netware-canada.var
	echo 'URI: netware-canada.html.nl' >> netware-canada.var
	echo 'Content-language: nl' >> netware-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-canada.var
	echo >> netware-canada.var
	echo 'URI: netware-canada.html.po' >> netware-canada.var
	echo 'Content-language: pl' >> netware-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netware-canada.var
	echo >> netware-canada.var
	echo 'URI: netware-canada.html.sl' >> netware-canada.var
	echo 'Content-language: sl' >> netware-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netware-canada.var
	echo >> netware-canada.var
	echo 'URI: netware-canada.html.ru' >> netware-canada.var
	echo 'Content-language: ru' >> netware-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netware-canada.var
	echo >> netware-canada.var
	echo 'URI: netware-canada.html.zh-CN' >> netware-canada.var
	echo 'Content-language: zh-CN' >> netware-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> netware-canada.var
	echo >> netware-canada.var
../..//down/i386/os2-canada.html.bg: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//os2-canada.html.bg -oe iso-8859-5 os2.adp
../..//down/i386/os2-canada.html.en: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//os2-canada.html.en -oe iso-8859-1 os2.adp
../..//down/i386/os2-canada.html.fi: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//os2-canada.html.fi -oe iso-8859-1 os2.adp
../..//down/i386/os2-canada.html.fr: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//os2-canada.html.fr -oe iso-8859-1 os2.adp
../..//down/i386/os2-canada.html.id: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//os2-canada.html.id -oe iso-8859-1 os2.adp
../..//down/i386/os2-canada.html.it: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//os2-canada.html.it -oe iso-8859-1 os2.adp
../..//down/i386/os2-canada.html.nl: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//os2-canada.html.nl -oe iso-8859-1 os2.adp
../..//down/i386/os2-canada.html.po: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//os2-canada.html.po -oe iso-8859-2 os2.adp
../..//down/i386/os2-canada.html.sl: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//os2-canada.html.sl -oe iso-8859-2 os2.adp
../..//down/i386/os2-canada.html.ru: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//os2-canada.html.ru -oe iso-8859-5 os2.adp
../..//down/i386/os2-canada.html.zh-CN: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//os2-canada.html.zh-CN -oe UTF-8 os2.adp
../..//down/i386/os2-canada.html: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//os2-canada.html -oe ISO-8859-1 os2.adp

../..//down/i386/os2-canada.var: gen_makefile.conf
	echo > os2-canada.var
	echo 'URI: os2-canada.html.bg' >> os2-canada.var
	echo 'Content-language: bg' >> os2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> os2-canada.var
	echo >> os2-canada.var
	echo 'URI: os2-canada.html.en' >> os2-canada.var
	echo 'Content-language: en' >> os2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-canada.var
	echo >> os2-canada.var
	echo 'URI: os2-canada.html.fi' >> os2-canada.var
	echo 'Content-language: fi' >> os2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-canada.var
	echo >> os2-canada.var
	echo 'URI: os2-canada.html.fr' >> os2-canada.var
	echo 'Content-language: fr' >> os2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-canada.var
	echo >> os2-canada.var
	echo 'URI: os2-canada.html.id' >> os2-canada.var
	echo 'Content-language: id' >> os2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-canada.var
	echo >> os2-canada.var
	echo 'URI: os2-canada.html.it' >> os2-canada.var
	echo 'Content-language: it' >> os2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-canada.var
	echo >> os2-canada.var
	echo 'URI: os2-canada.html.nl' >> os2-canada.var
	echo 'Content-language: nl' >> os2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-canada.var
	echo >> os2-canada.var
	echo 'URI: os2-canada.html.po' >> os2-canada.var
	echo 'Content-language: pl' >> os2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> os2-canada.var
	echo >> os2-canada.var
	echo 'URI: os2-canada.html.sl' >> os2-canada.var
	echo 'Content-language: sl' >> os2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> os2-canada.var
	echo >> os2-canada.var
	echo 'URI: os2-canada.html.ru' >> os2-canada.var
	echo 'Content-language: ru' >> os2-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> os2-canada.var
	echo >> os2-canada.var
	echo 'URI: os2-canada.html.zh-CN' >> os2-canada.var
	echo 'Content-language: zh-CN' >> os2-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> os2-canada.var
	echo >> os2-canada.var
../..//down/i386/win32-canada.html.bg: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//win32-canada.html.bg -oe iso-8859-5 win32.adp
../..//down/i386/win32-canada.html.en: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//win32-canada.html.en -oe iso-8859-1 win32.adp
../..//down/i386/win32-canada.html.fi: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//win32-canada.html.fi -oe iso-8859-1 win32.adp
../..//down/i386/win32-canada.html.fr: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//win32-canada.html.fr -oe iso-8859-1 win32.adp
../..//down/i386/win32-canada.html.id: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//win32-canada.html.id -oe iso-8859-1 win32.adp
../..//down/i386/win32-canada.html.it: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//win32-canada.html.it -oe iso-8859-1 win32.adp
../..//down/i386/win32-canada.html.nl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//win32-canada.html.nl -oe iso-8859-1 win32.adp
../..//down/i386/win32-canada.html.po: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//win32-canada.html.po -oe iso-8859-2 win32.adp
../..//down/i386/win32-canada.html.sl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//win32-canada.html.sl -oe iso-8859-2 win32.adp
../..//down/i386/win32-canada.html.ru: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//win32-canada.html.ru -oe iso-8859-5 win32.adp
../..//down/i386/win32-canada.html.zh-CN: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//win32-canada.html.zh-CN -oe UTF-8 win32.adp
../..//down/i386/win32-canada.html: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//win32-canada.html -oe ISO-8859-1 win32.adp

../..//down/i386/win32-canada.var: gen_makefile.conf
	echo > win32-canada.var
	echo 'URI: win32-canada.html.bg' >> win32-canada.var
	echo 'Content-language: bg' >> win32-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-canada.var
	echo >> win32-canada.var
	echo 'URI: win32-canada.html.en' >> win32-canada.var
	echo 'Content-language: en' >> win32-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-canada.var
	echo >> win32-canada.var
	echo 'URI: win32-canada.html.fi' >> win32-canada.var
	echo 'Content-language: fi' >> win32-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-canada.var
	echo >> win32-canada.var
	echo 'URI: win32-canada.html.fr' >> win32-canada.var
	echo 'Content-language: fr' >> win32-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-canada.var
	echo >> win32-canada.var
	echo 'URI: win32-canada.html.id' >> win32-canada.var
	echo 'Content-language: id' >> win32-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-canada.var
	echo >> win32-canada.var
	echo 'URI: win32-canada.html.it' >> win32-canada.var
	echo 'Content-language: it' >> win32-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-canada.var
	echo >> win32-canada.var
	echo 'URI: win32-canada.html.nl' >> win32-canada.var
	echo 'Content-language: nl' >> win32-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-canada.var
	echo >> win32-canada.var
	echo 'URI: win32-canada.html.po' >> win32-canada.var
	echo 'Content-language: pl' >> win32-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-canada.var
	echo >> win32-canada.var
	echo 'URI: win32-canada.html.sl' >> win32-canada.var
	echo 'Content-language: sl' >> win32-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-canada.var
	echo >> win32-canada.var
	echo 'URI: win32-canada.html.ru' >> win32-canada.var
	echo 'Content-language: ru' >> win32-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-canada.var
	echo >> win32-canada.var
	echo 'URI: win32-canada.html.zh-CN' >> win32-canada.var
	echo 'Content-language: zh-CN' >> win32-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> win32-canada.var
	echo >> win32-canada.var
../..//down/i386/macosx-canada.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//macosx-canada.html.bg -oe iso-8859-5 macosx.adp
../..//down/i386/macosx-canada.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//macosx-canada.html.en -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-canada.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//macosx-canada.html.fi -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-canada.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//macosx-canada.html.fr -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-canada.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//macosx-canada.html.id -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-canada.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//macosx-canada.html.it -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-canada.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//macosx-canada.html.nl -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-canada.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//macosx-canada.html.po -oe iso-8859-2 macosx.adp
../..//down/i386/macosx-canada.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//macosx-canada.html.sl -oe iso-8859-2 macosx.adp
../..//down/i386/macosx-canada.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//macosx-canada.html.ru -oe iso-8859-5 macosx.adp
../..//down/i386/macosx-canada.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//macosx-canada.html.zh-CN -oe UTF-8 macosx.adp
../..//down/i386/macosx-canada.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//macosx-canada.html -oe ISO-8859-1 macosx.adp

../..//down/i386/macosx-canada.var: gen_makefile.conf
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
../..//down/i386/haiku-canada.html.bg: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//haiku-canada.html.bg -oe iso-8859-5 haiku.adp
../..//down/i386/haiku-canada.html.en: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//haiku-canada.html.en -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-canada.html.fi: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//haiku-canada.html.fi -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-canada.html.fr: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//haiku-canada.html.fr -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-canada.html.id: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//haiku-canada.html.id -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-canada.html.it: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//haiku-canada.html.it -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-canada.html.nl: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//haiku-canada.html.nl -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-canada.html.po: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//haiku-canada.html.po -oe iso-8859-2 haiku.adp
../..//down/i386/haiku-canada.html.sl: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//haiku-canada.html.sl -oe iso-8859-2 haiku.adp
../..//down/i386/haiku-canada.html.ru: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//haiku-canada.html.ru -oe iso-8859-5 haiku.adp
../..//down/i386/haiku-canada.html.zh-CN: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//haiku-canada.html.zh-CN -oe UTF-8 haiku.adp
../..//down/i386/haiku-canada.html: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//haiku-canada.html -oe ISO-8859-1 haiku.adp

../..//down/i386/haiku-canada.var: gen_makefile.conf
	echo > haiku-canada.var
	echo 'URI: haiku-canada.html.bg' >> haiku-canada.var
	echo 'Content-language: bg' >> haiku-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> haiku-canada.var
	echo >> haiku-canada.var
	echo 'URI: haiku-canada.html.en' >> haiku-canada.var
	echo 'Content-language: en' >> haiku-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-canada.var
	echo >> haiku-canada.var
	echo 'URI: haiku-canada.html.fi' >> haiku-canada.var
	echo 'Content-language: fi' >> haiku-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-canada.var
	echo >> haiku-canada.var
	echo 'URI: haiku-canada.html.fr' >> haiku-canada.var
	echo 'Content-language: fr' >> haiku-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-canada.var
	echo >> haiku-canada.var
	echo 'URI: haiku-canada.html.id' >> haiku-canada.var
	echo 'Content-language: id' >> haiku-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-canada.var
	echo >> haiku-canada.var
	echo 'URI: haiku-canada.html.it' >> haiku-canada.var
	echo 'Content-language: it' >> haiku-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-canada.var
	echo >> haiku-canada.var
	echo 'URI: haiku-canada.html.nl' >> haiku-canada.var
	echo 'Content-language: nl' >> haiku-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-canada.var
	echo >> haiku-canada.var
	echo 'URI: haiku-canada.html.po' >> haiku-canada.var
	echo 'Content-language: pl' >> haiku-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> haiku-canada.var
	echo >> haiku-canada.var
	echo 'URI: haiku-canada.html.sl' >> haiku-canada.var
	echo 'Content-language: sl' >> haiku-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> haiku-canada.var
	echo >> haiku-canada.var
	echo 'URI: haiku-canada.html.ru' >> haiku-canada.var
	echo 'Content-language: ru' >> haiku-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> haiku-canada.var
	echo >> haiku-canada.var
	echo 'URI: haiku-canada.html.zh-CN' >> haiku-canada.var
	echo 'Content-language: zh-CN' >> haiku-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> haiku-canada.var
	echo >> haiku-canada.var
../..//down/i386/solaris-canada.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//solaris-canada.html.bg -oe iso-8859-5 solaris.adp
../..//down/i386/solaris-canada.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//solaris-canada.html.en -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-canada.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//solaris-canada.html.fi -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-canada.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//solaris-canada.html.fr -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-canada.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//solaris-canada.html.id -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-canada.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//solaris-canada.html.it -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-canada.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//solaris-canada.html.nl -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-canada.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//solaris-canada.html.po -oe iso-8859-2 solaris.adp
../..//down/i386/solaris-canada.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//solaris-canada.html.sl -oe iso-8859-2 solaris.adp
../..//down/i386/solaris-canada.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//solaris-canada.html.ru -oe iso-8859-5 solaris.adp
../..//down/i386/solaris-canada.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//solaris-canada.html.zh-CN -oe UTF-8 solaris.adp
../..//down/i386/solaris-canada.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//solaris-canada.html -oe ISO-8859-1 solaris.adp

../..//down/i386/solaris-canada.var: gen_makefile.conf
	echo > solaris-canada.var
	echo 'URI: solaris-canada.html.bg' >> solaris-canada.var
	echo 'Content-language: bg' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.en' >> solaris-canada.var
	echo 'Content-language: en' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.fi' >> solaris-canada.var
	echo 'Content-language: fi' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.fr' >> solaris-canada.var
	echo 'Content-language: fr' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.id' >> solaris-canada.var
	echo 'Content-language: id' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.it' >> solaris-canada.var
	echo 'Content-language: it' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.nl' >> solaris-canada.var
	echo 'Content-language: nl' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.po' >> solaris-canada.var
	echo 'Content-language: pl' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.sl' >> solaris-canada.var
	echo 'Content-language: sl' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.ru' >> solaris-canada.var
	echo 'Content-language: ru' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.zh-CN' >> solaris-canada.var
	echo 'Content-language: zh-CN' >> solaris-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> solaris-canada.var
	echo >> solaris-canada.var

../..//down/i386/freebsd.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o freebsd.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/freebsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o freebsd.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/freebsd.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o freebsd.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/freebsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o freebsd.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/freebsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o freebsd.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/freebsd.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o freebsd.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/freebsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o freebsd.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/freebsd.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o freebsd.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/freebsd.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o freebsd.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/freebsd.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o freebsd.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/freebsd.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o freebsd.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/i386/freebsd.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o freebsd.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/freebsd.var: gen_makefile.conf
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

../..//down/i386/netbsd.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o netbsd.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/netbsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o netbsd.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netbsd.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o netbsd.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netbsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o netbsd.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netbsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o netbsd.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netbsd.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o netbsd.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netbsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o netbsd.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netbsd.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o netbsd.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/netbsd.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o netbsd.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/netbsd.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o netbsd.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/netbsd.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o netbsd.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/i386/netbsd.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o netbsd.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/netbsd.var: gen_makefile.conf
	echo > netbsd.var
	echo 'URI: netbsd.html.bg' >> netbsd.var
	echo 'Content-language: bg' >> netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netbsd.var
	echo >> netbsd.var
	echo 'URI: netbsd.html.en' >> netbsd.var
	echo 'Content-language: en' >> netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd.var
	echo >> netbsd.var
	echo 'URI: netbsd.html.fi' >> netbsd.var
	echo 'Content-language: fi' >> netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd.var
	echo >> netbsd.var
	echo 'URI: netbsd.html.fr' >> netbsd.var
	echo 'Content-language: fr' >> netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd.var
	echo >> netbsd.var
	echo 'URI: netbsd.html.id' >> netbsd.var
	echo 'Content-language: id' >> netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd.var
	echo >> netbsd.var
	echo 'URI: netbsd.html.it' >> netbsd.var
	echo 'Content-language: it' >> netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd.var
	echo >> netbsd.var
	echo 'URI: netbsd.html.nl' >> netbsd.var
	echo 'Content-language: nl' >> netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netbsd.var
	echo >> netbsd.var
	echo 'URI: netbsd.html.po' >> netbsd.var
	echo 'Content-language: pl' >> netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netbsd.var
	echo >> netbsd.var
	echo 'URI: netbsd.html.sl' >> netbsd.var
	echo 'Content-language: sl' >> netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netbsd.var
	echo >> netbsd.var
	echo 'URI: netbsd.html.ru' >> netbsd.var
	echo 'Content-language: ru' >> netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netbsd.var
	echo >> netbsd.var
	echo 'URI: netbsd.html.zh-CN' >> netbsd.var
	echo 'Content-language: zh-CN' >> netbsd.var
	echo 'Content-type: text/html; charset=UTF-8' >> netbsd.var
	echo >> netbsd.var

../..//down/i386/go32v2.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o go32v2.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/go32v2.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o go32v2.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/go32v2.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o go32v2.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/go32v2.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o go32v2.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/go32v2.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o go32v2.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/go32v2.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o go32v2.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/go32v2.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o go32v2.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/go32v2.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o go32v2.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/go32v2.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o go32v2.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/go32v2.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o go32v2.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/go32v2.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o go32v2.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/i386/go32v2.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o go32v2.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/go32v2.var: gen_makefile.conf
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

../..//down/i386/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/i386/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/linux.var: gen_makefile.conf
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

../..//down/i386/netware.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o netware.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/netware.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o netware.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netware.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o netware.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netware.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o netware.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netware.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o netware.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netware.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o netware.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netware.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o netware.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netware.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o netware.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/netware.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o netware.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/netware.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o netware.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/netware.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o netware.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/i386/netware.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o netware.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/netware.var: gen_makefile.conf
	echo > netware.var
	echo 'URI: netware.html.bg' >> netware.var
	echo 'Content-language: bg' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.en' >> netware.var
	echo 'Content-language: en' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.fi' >> netware.var
	echo 'Content-language: fi' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.fr' >> netware.var
	echo 'Content-language: fr' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.id' >> netware.var
	echo 'Content-language: id' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.it' >> netware.var
	echo 'Content-language: it' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.nl' >> netware.var
	echo 'Content-language: nl' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.po' >> netware.var
	echo 'Content-language: pl' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.sl' >> netware.var
	echo 'Content-language: sl' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.ru' >> netware.var
	echo 'Content-language: ru' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.zh-CN' >> netware.var
	echo 'Content-language: zh-CN' >> netware.var
	echo 'Content-type: text/html; charset=UTF-8' >> netware.var
	echo >> netware.var

../..//down/i386/os2.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o os2.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/os2.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o os2.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/os2.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o os2.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/os2.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o os2.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/os2.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o os2.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/os2.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o os2.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/os2.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o os2.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/os2.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o os2.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/os2.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o os2.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/os2.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o os2.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/os2.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o os2.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/i386/os2.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o os2.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/os2.var: gen_makefile.conf
	echo > os2.var
	echo 'URI: os2.html.bg' >> os2.var
	echo 'Content-language: bg' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.en' >> os2.var
	echo 'Content-language: en' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.fi' >> os2.var
	echo 'Content-language: fi' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.fr' >> os2.var
	echo 'Content-language: fr' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.id' >> os2.var
	echo 'Content-language: id' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.it' >> os2.var
	echo 'Content-language: it' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.nl' >> os2.var
	echo 'Content-language: nl' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.po' >> os2.var
	echo 'Content-language: pl' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.sl' >> os2.var
	echo 'Content-language: sl' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.ru' >> os2.var
	echo 'Content-language: ru' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.zh-CN' >> os2.var
	echo 'Content-language: zh-CN' >> os2.var
	echo 'Content-type: text/html; charset=UTF-8' >> os2.var
	echo >> os2.var

../..//down/i386/win32.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o win32.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/win32.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win32.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/win32.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o win32.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/win32.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o win32.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/win32.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o win32.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/win32.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o win32.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/win32.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o win32.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/win32.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o win32.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/win32.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o win32.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/win32.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o win32.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/win32.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o win32.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/i386/win32.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win32.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/win32.var: gen_makefile.conf
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

../..//down/i386/macosx.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o macosx.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/macosx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macosx.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/macosx.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o macosx.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/macosx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o macosx.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/macosx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o macosx.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/macosx.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o macosx.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/macosx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o macosx.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/macosx.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o macosx.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/macosx.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o macosx.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/macosx.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o macosx.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/macosx.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o macosx.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/i386/macosx.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macosx.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/macosx.var: gen_makefile.conf
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

../..//down/i386/haiku.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o haiku.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/haiku.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o haiku.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/haiku.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o haiku.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/haiku.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o haiku.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/haiku.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o haiku.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/haiku.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o haiku.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/haiku.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o haiku.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/haiku.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o haiku.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/haiku.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o haiku.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/haiku.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o haiku.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/haiku.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o haiku.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/i386/haiku.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o haiku.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/haiku.var: gen_makefile.conf
	echo > haiku.var
	echo 'URI: haiku.html.bg' >> haiku.var
	echo 'Content-language: bg' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.en' >> haiku.var
	echo 'Content-language: en' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.fi' >> haiku.var
	echo 'Content-language: fi' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.fr' >> haiku.var
	echo 'Content-language: fr' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.id' >> haiku.var
	echo 'Content-language: id' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.it' >> haiku.var
	echo 'Content-language: it' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.nl' >> haiku.var
	echo 'Content-language: nl' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.po' >> haiku.var
	echo 'Content-language: pl' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.sl' >> haiku.var
	echo 'Content-language: sl' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.ru' >> haiku.var
	echo 'Content-language: ru' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.zh-CN' >> haiku.var
	echo 'Content-language: zh-CN' >> haiku.var
	echo 'Content-type: text/html; charset=UTF-8' >> haiku.var
	echo >> haiku.var

../..//down/i386/solaris.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o solaris.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/solaris.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o solaris.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/solaris.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o solaris.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/solaris.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o solaris.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/solaris.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o solaris.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/solaris.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o solaris.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/solaris.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o solaris.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/solaris.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o solaris.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/solaris.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o solaris.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/solaris.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o solaris.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/solaris.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o solaris.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/i386/solaris.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o solaris.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/solaris.var: gen_makefile.conf
	echo > solaris.var
	echo 'URI: solaris.html.bg' >> solaris.var
	echo 'Content-language: bg' >> solaris.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris.var
	echo >> solaris.var
	echo 'URI: solaris.html.en' >> solaris.var
	echo 'Content-language: en' >> solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris.var
	echo >> solaris.var
	echo 'URI: solaris.html.fi' >> solaris.var
	echo 'Content-language: fi' >> solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris.var
	echo >> solaris.var
	echo 'URI: solaris.html.fr' >> solaris.var
	echo 'Content-language: fr' >> solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris.var
	echo >> solaris.var
	echo 'URI: solaris.html.id' >> solaris.var
	echo 'Content-language: id' >> solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris.var
	echo >> solaris.var
	echo 'URI: solaris.html.it' >> solaris.var
	echo 'Content-language: it' >> solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris.var
	echo >> solaris.var
	echo 'URI: solaris.html.nl' >> solaris.var
	echo 'Content-language: nl' >> solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris.var
	echo >> solaris.var
	echo 'URI: solaris.html.po' >> solaris.var
	echo 'Content-language: pl' >> solaris.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris.var
	echo >> solaris.var
	echo 'URI: solaris.html.sl' >> solaris.var
	echo 'Content-language: sl' >> solaris.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris.var
	echo >> solaris.var
	echo 'URI: solaris.html.ru' >> solaris.var
	echo 'Content-language: ru' >> solaris.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris.var
	echo >> solaris.var
	echo 'URI: solaris.html.zh-CN' >> solaris.var
	echo 'Content-language: zh-CN' >> solaris.var
	echo 'Content-type: text/html; charset=UTF-8' >> solaris.var
	echo >> solaris.var

mirrors.dat:
	$(shell echo 'name\tnamel\turl' > mirrors.dat)
	$(shell echo 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo 'Canada\tcanada\tftp://mirror.freemirror.org/pub/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../..//down/i386/freebsd-hungary.html.bg ../..//down/i386/freebsd-hungary.html.en ../..//down/i386/freebsd-hungary.html.fi ../..//down/i386/freebsd-hungary.html.fr ../..//down/i386/freebsd-hungary.html.id ../..//down/i386/freebsd-hungary.html.it ../..//down/i386/freebsd-hungary.html.nl ../..//down/i386/freebsd-hungary.html.po ../..//down/i386/freebsd-hungary.html.sl ../..//down/i386/freebsd-hungary.html.ru ../..//down/i386/freebsd-hungary.html.zh-CN ../..//down/i386/freebsd-hungary.var ../..//down/i386/netbsd-hungary.html.bg ../..//down/i386/netbsd-hungary.html.en ../..//down/i386/netbsd-hungary.html.fi ../..//down/i386/netbsd-hungary.html.fr ../..//down/i386/netbsd-hungary.html.id ../..//down/i386/netbsd-hungary.html.it ../..//down/i386/netbsd-hungary.html.nl ../..//down/i386/netbsd-hungary.html.po ../..//down/i386/netbsd-hungary.html.sl ../..//down/i386/netbsd-hungary.html.ru ../..//down/i386/netbsd-hungary.html.zh-CN ../..//down/i386/netbsd-hungary.var ../..//down/i386/go32v2-hungary.html.bg ../..//down/i386/go32v2-hungary.html.en ../..//down/i386/go32v2-hungary.html.fi ../..//down/i386/go32v2-hungary.html.fr ../..//down/i386/go32v2-hungary.html.id ../..//down/i386/go32v2-hungary.html.it ../..//down/i386/go32v2-hungary.html.nl ../..//down/i386/go32v2-hungary.html.po ../..//down/i386/go32v2-hungary.html.sl ../..//down/i386/go32v2-hungary.html.ru ../..//down/i386/go32v2-hungary.html.zh-CN ../..//down/i386/go32v2-hungary.var ../..//down/i386/linux-hungary.html.bg ../..//down/i386/linux-hungary.html.en ../..//down/i386/linux-hungary.html.fi ../..//down/i386/linux-hungary.html.fr ../..//down/i386/linux-hungary.html.id ../..//down/i386/linux-hungary.html.it ../..//down/i386/linux-hungary.html.nl ../..//down/i386/linux-hungary.html.po ../..//down/i386/linux-hungary.html.sl ../..//down/i386/linux-hungary.html.ru ../..//down/i386/linux-hungary.html.zh-CN ../..//down/i386/linux-hungary.var ../..//down/i386/netware-hungary.html.bg ../..//down/i386/netware-hungary.html.en ../..//down/i386/netware-hungary.html.fi ../..//down/i386/netware-hungary.html.fr ../..//down/i386/netware-hungary.html.id ../..//down/i386/netware-hungary.html.it ../..//down/i386/netware-hungary.html.nl ../..//down/i386/netware-hungary.html.po ../..//down/i386/netware-hungary.html.sl ../..//down/i386/netware-hungary.html.ru ../..//down/i386/netware-hungary.html.zh-CN ../..//down/i386/netware-hungary.var ../..//down/i386/os2-hungary.html.bg ../..//down/i386/os2-hungary.html.en ../..//down/i386/os2-hungary.html.fi ../..//down/i386/os2-hungary.html.fr ../..//down/i386/os2-hungary.html.id ../..//down/i386/os2-hungary.html.it ../..//down/i386/os2-hungary.html.nl ../..//down/i386/os2-hungary.html.po ../..//down/i386/os2-hungary.html.sl ../..//down/i386/os2-hungary.html.ru ../..//down/i386/os2-hungary.html.zh-CN ../..//down/i386/os2-hungary.var ../..//down/i386/win32-hungary.html.bg ../..//down/i386/win32-hungary.html.en ../..//down/i386/win32-hungary.html.fi ../..//down/i386/win32-hungary.html.fr ../..//down/i386/win32-hungary.html.id ../..//down/i386/win32-hungary.html.it ../..//down/i386/win32-hungary.html.nl ../..//down/i386/win32-hungary.html.po ../..//down/i386/win32-hungary.html.sl ../..//down/i386/win32-hungary.html.ru ../..//down/i386/win32-hungary.html.zh-CN ../..//down/i386/win32-hungary.var ../..//down/i386/macosx-hungary.html.bg ../..//down/i386/macosx-hungary.html.en ../..//down/i386/macosx-hungary.html.fi ../..//down/i386/macosx-hungary.html.fr ../..//down/i386/macosx-hungary.html.id ../..//down/i386/macosx-hungary.html.it ../..//down/i386/macosx-hungary.html.nl ../..//down/i386/macosx-hungary.html.po ../..//down/i386/macosx-hungary.html.sl ../..//down/i386/macosx-hungary.html.ru ../..//down/i386/macosx-hungary.html.zh-CN ../..//down/i386/macosx-hungary.var ../..//down/i386/haiku-hungary.html.bg ../..//down/i386/haiku-hungary.html.en ../..//down/i386/haiku-hungary.html.fi ../..//down/i386/haiku-hungary.html.fr ../..//down/i386/haiku-hungary.html.id ../..//down/i386/haiku-hungary.html.it ../..//down/i386/haiku-hungary.html.nl ../..//down/i386/haiku-hungary.html.po ../..//down/i386/haiku-hungary.html.sl ../..//down/i386/haiku-hungary.html.ru ../..//down/i386/haiku-hungary.html.zh-CN ../..//down/i386/haiku-hungary.var ../..//down/i386/solaris-hungary.html.bg ../..//down/i386/solaris-hungary.html.en ../..//down/i386/solaris-hungary.html.fi ../..//down/i386/solaris-hungary.html.fr ../..//down/i386/solaris-hungary.html.id ../..//down/i386/solaris-hungary.html.it ../..//down/i386/solaris-hungary.html.nl ../..//down/i386/solaris-hungary.html.po ../..//down/i386/solaris-hungary.html.sl ../..//down/i386/solaris-hungary.html.ru ../..//down/i386/solaris-hungary.html.zh-CN ../..//down/i386/solaris-hungary.var ../..//down/i386/freebsd-canada.html.bg ../..//down/i386/freebsd-canada.html.en ../..//down/i386/freebsd-canada.html.fi ../..//down/i386/freebsd-canada.html.fr ../..//down/i386/freebsd-canada.html.id ../..//down/i386/freebsd-canada.html.it ../..//down/i386/freebsd-canada.html.nl ../..//down/i386/freebsd-canada.html.po ../..//down/i386/freebsd-canada.html.sl ../..//down/i386/freebsd-canada.html.ru ../..//down/i386/freebsd-canada.html.zh-CN ../..//down/i386/freebsd-canada.var ../..//down/i386/netbsd-canada.html.bg ../..//down/i386/netbsd-canada.html.en ../..//down/i386/netbsd-canada.html.fi ../..//down/i386/netbsd-canada.html.fr ../..//down/i386/netbsd-canada.html.id ../..//down/i386/netbsd-canada.html.it ../..//down/i386/netbsd-canada.html.nl ../..//down/i386/netbsd-canada.html.po ../..//down/i386/netbsd-canada.html.sl ../..//down/i386/netbsd-canada.html.ru ../..//down/i386/netbsd-canada.html.zh-CN ../..//down/i386/netbsd-canada.var ../..//down/i386/go32v2-canada.html.bg ../..//down/i386/go32v2-canada.html.en ../..//down/i386/go32v2-canada.html.fi ../..//down/i386/go32v2-canada.html.fr ../..//down/i386/go32v2-canada.html.id ../..//down/i386/go32v2-canada.html.it ../..//down/i386/go32v2-canada.html.nl ../..//down/i386/go32v2-canada.html.po ../..//down/i386/go32v2-canada.html.sl ../..//down/i386/go32v2-canada.html.ru ../..//down/i386/go32v2-canada.html.zh-CN ../..//down/i386/go32v2-canada.var ../..//down/i386/linux-canada.html.bg ../..//down/i386/linux-canada.html.en ../..//down/i386/linux-canada.html.fi ../..//down/i386/linux-canada.html.fr ../..//down/i386/linux-canada.html.id ../..//down/i386/linux-canada.html.it ../..//down/i386/linux-canada.html.nl ../..//down/i386/linux-canada.html.po ../..//down/i386/linux-canada.html.sl ../..//down/i386/linux-canada.html.ru ../..//down/i386/linux-canada.html.zh-CN ../..//down/i386/linux-canada.var ../..//down/i386/netware-canada.html.bg ../..//down/i386/netware-canada.html.en ../..//down/i386/netware-canada.html.fi ../..//down/i386/netware-canada.html.fr ../..//down/i386/netware-canada.html.id ../..//down/i386/netware-canada.html.it ../..//down/i386/netware-canada.html.nl ../..//down/i386/netware-canada.html.po ../..//down/i386/netware-canada.html.sl ../..//down/i386/netware-canada.html.ru ../..//down/i386/netware-canada.html.zh-CN ../..//down/i386/netware-canada.var ../..//down/i386/os2-canada.html.bg ../..//down/i386/os2-canada.html.en ../..//down/i386/os2-canada.html.fi ../..//down/i386/os2-canada.html.fr ../..//down/i386/os2-canada.html.id ../..//down/i386/os2-canada.html.it ../..//down/i386/os2-canada.html.nl ../..//down/i386/os2-canada.html.po ../..//down/i386/os2-canada.html.sl ../..//down/i386/os2-canada.html.ru ../..//down/i386/os2-canada.html.zh-CN ../..//down/i386/os2-canada.var ../..//down/i386/win32-canada.html.bg ../..//down/i386/win32-canada.html.en ../..//down/i386/win32-canada.html.fi ../..//down/i386/win32-canada.html.fr ../..//down/i386/win32-canada.html.id ../..//down/i386/win32-canada.html.it ../..//down/i386/win32-canada.html.nl ../..//down/i386/win32-canada.html.po ../..//down/i386/win32-canada.html.sl ../..//down/i386/win32-canada.html.ru ../..//down/i386/win32-canada.html.zh-CN ../..//down/i386/win32-canada.var ../..//down/i386/macosx-canada.html.bg ../..//down/i386/macosx-canada.html.en ../..//down/i386/macosx-canada.html.fi ../..//down/i386/macosx-canada.html.fr ../..//down/i386/macosx-canada.html.id ../..//down/i386/macosx-canada.html.it ../..//down/i386/macosx-canada.html.nl ../..//down/i386/macosx-canada.html.po ../..//down/i386/macosx-canada.html.sl ../..//down/i386/macosx-canada.html.ru ../..//down/i386/macosx-canada.html.zh-CN ../..//down/i386/macosx-canada.var ../..//down/i386/haiku-canada.html.bg ../..//down/i386/haiku-canada.html.en ../..//down/i386/haiku-canada.html.fi ../..//down/i386/haiku-canada.html.fr ../..//down/i386/haiku-canada.html.id ../..//down/i386/haiku-canada.html.it ../..//down/i386/haiku-canada.html.nl ../..//down/i386/haiku-canada.html.po ../..//down/i386/haiku-canada.html.sl ../..//down/i386/haiku-canada.html.ru ../..//down/i386/haiku-canada.html.zh-CN ../..//down/i386/haiku-canada.var ../..//down/i386/solaris-canada.html.bg ../..//down/i386/solaris-canada.html.en ../..//down/i386/solaris-canada.html.fi ../..//down/i386/solaris-canada.html.fr ../..//down/i386/solaris-canada.html.id ../..//down/i386/solaris-canada.html.it ../..//down/i386/solaris-canada.html.nl ../..//down/i386/solaris-canada.html.po ../..//down/i386/solaris-canada.html.sl ../..//down/i386/solaris-canada.html.ru ../..//down/i386/solaris-canada.html.zh-CN ../..//down/i386/solaris-canada.var ../..//down/i386/freebsd.html.bg ../..//down/i386/freebsd.html.en ../..//down/i386/freebsd.html.fi ../..//down/i386/freebsd.html.fr ../..//down/i386/freebsd.html.id ../..//down/i386/freebsd.html.it ../..//down/i386/freebsd.html.nl ../..//down/i386/freebsd.html.po ../..//down/i386/freebsd.html.sl ../..//down/i386/freebsd.html.ru ../..//down/i386/freebsd.html.zh-CN ../..//down/i386/freebsd.var ../..//down/i386/netbsd.html.bg ../..//down/i386/netbsd.html.en ../..//down/i386/netbsd.html.fi ../..//down/i386/netbsd.html.fr ../..//down/i386/netbsd.html.id ../..//down/i386/netbsd.html.it ../..//down/i386/netbsd.html.nl ../..//down/i386/netbsd.html.po ../..//down/i386/netbsd.html.sl ../..//down/i386/netbsd.html.ru ../..//down/i386/netbsd.html.zh-CN ../..//down/i386/netbsd.var ../..//down/i386/go32v2.html.bg ../..//down/i386/go32v2.html.en ../..//down/i386/go32v2.html.fi ../..//down/i386/go32v2.html.fr ../..//down/i386/go32v2.html.id ../..//down/i386/go32v2.html.it ../..//down/i386/go32v2.html.nl ../..//down/i386/go32v2.html.po ../..//down/i386/go32v2.html.sl ../..//down/i386/go32v2.html.ru ../..//down/i386/go32v2.html.zh-CN ../..//down/i386/go32v2.var ../..//down/i386/linux.html.bg ../..//down/i386/linux.html.en ../..//down/i386/linux.html.fi ../..//down/i386/linux.html.fr ../..//down/i386/linux.html.id ../..//down/i386/linux.html.it ../..//down/i386/linux.html.nl ../..//down/i386/linux.html.po ../..//down/i386/linux.html.sl ../..//down/i386/linux.html.ru ../..//down/i386/linux.html.zh-CN ../..//down/i386/linux.var ../..//down/i386/netware.html.bg ../..//down/i386/netware.html.en ../..//down/i386/netware.html.fi ../..//down/i386/netware.html.fr ../..//down/i386/netware.html.id ../..//down/i386/netware.html.it ../..//down/i386/netware.html.nl ../..//down/i386/netware.html.po ../..//down/i386/netware.html.sl ../..//down/i386/netware.html.ru ../..//down/i386/netware.html.zh-CN ../..//down/i386/netware.var ../..//down/i386/os2.html.bg ../..//down/i386/os2.html.en ../..//down/i386/os2.html.fi ../..//down/i386/os2.html.fr ../..//down/i386/os2.html.id ../..//down/i386/os2.html.it ../..//down/i386/os2.html.nl ../..//down/i386/os2.html.po ../..//down/i386/os2.html.sl ../..//down/i386/os2.html.ru ../..//down/i386/os2.html.zh-CN ../..//down/i386/os2.var ../..//down/i386/win32.html.bg ../..//down/i386/win32.html.en ../..//down/i386/win32.html.fi ../..//down/i386/win32.html.fr ../..//down/i386/win32.html.id ../..//down/i386/win32.html.it ../..//down/i386/win32.html.nl ../..//down/i386/win32.html.po ../..//down/i386/win32.html.sl ../..//down/i386/win32.html.ru ../..//down/i386/win32.html.zh-CN ../..//down/i386/win32.var ../..//down/i386/macosx.html.bg ../..//down/i386/macosx.html.en ../..//down/i386/macosx.html.fi ../..//down/i386/macosx.html.fr ../..//down/i386/macosx.html.id ../..//down/i386/macosx.html.it ../..//down/i386/macosx.html.nl ../..//down/i386/macosx.html.po ../..//down/i386/macosx.html.sl ../..//down/i386/macosx.html.ru ../..//down/i386/macosx.html.zh-CN ../..//down/i386/macosx.var ../..//down/i386/haiku.html.bg ../..//down/i386/haiku.html.en ../..//down/i386/haiku.html.fi ../..//down/i386/haiku.html.fr ../..//down/i386/haiku.html.id ../..//down/i386/haiku.html.it ../..//down/i386/haiku.html.nl ../..//down/i386/haiku.html.po ../..//down/i386/haiku.html.sl ../..//down/i386/haiku.html.ru ../..//down/i386/haiku.html.zh-CN ../..//down/i386/haiku.var ../..//down/i386/solaris.html.bg ../..//down/i386/solaris.html.en ../..//down/i386/solaris.html.fi ../..//down/i386/solaris.html.fr ../..//down/i386/solaris.html.id ../..//down/i386/solaris.html.it ../..//down/i386/solaris.html.nl ../..//down/i386/solaris.html.po ../..//down/i386/solaris.html.sl ../..//down/i386/solaris.html.ru ../..//down/i386/solaris.html.zh-CN ../..//down/i386/solaris.var
all_en_pages: mirrors.dat ../..//down/i386/freebsd-hungary.html ../..//down/i386/netbsd-hungary.html ../..//down/i386/go32v2-hungary.html ../..//down/i386/linux-hungary.html ../..//down/i386/netware-hungary.html ../..//down/i386/os2-hungary.html ../..//down/i386/win32-hungary.html ../..//down/i386/macosx-hungary.html ../..//down/i386/haiku-hungary.html ../..//down/i386/solaris-hungary.html ../..//down/i386/freebsd-canada.html ../..//down/i386/netbsd-canada.html ../..//down/i386/go32v2-canada.html ../..//down/i386/linux-canada.html ../..//down/i386/netware-canada.html ../..//down/i386/os2-canada.html ../..//down/i386/win32-canada.html ../..//down/i386/macosx-canada.html ../..//down/i386/haiku-canada.html ../..//down/i386/solaris-canada.html ../..//down/i386/freebsd.html ../..//down/i386/netbsd.html ../..//down/i386/go32v2.html ../..//down/i386/linux.html ../..//down/i386/netware.html ../..//down/i386/os2.html ../..//down/i386/win32.html ../..//down/i386/macosx.html ../..//down/i386/haiku.html ../..//down/i386/solaris.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/i386/

