
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
../..//down/x86_64/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.bg -oe iso-8859-5 linux.adp
../..//down/x86_64/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.en -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.fi -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.fr -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.id -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.it -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.nl -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.po -oe iso-8859-2 linux.adp
../..//down/x86_64/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.sl -oe iso-8859-2 linux.adp
../..//down/x86_64/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.ru -oe iso-8859-5 linux.adp
../..//down/x86_64/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.zh-CN -oe UTF-8 linux.adp
../..//down/x86_64/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html -oe ISO-8859-1 linux.adp

../..//down/x86_64/linux-hungary.var: gen_makefile.conf
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
../..//down/x86_64/win64-hungary.html.bg: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.bg -oe iso-8859-5 win64.adp
../..//down/x86_64/win64-hungary.html.en: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.en -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-hungary.html.fi: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.fi -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-hungary.html.fr: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.fr -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-hungary.html.id: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.id -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-hungary.html.it: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.it -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-hungary.html.nl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.nl -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-hungary.html.po: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.po -oe iso-8859-2 win64.adp
../..//down/x86_64/win64-hungary.html.sl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.sl -oe iso-8859-2 win64.adp
../..//down/x86_64/win64-hungary.html.ru: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.ru -oe iso-8859-5 win64.adp
../..//down/x86_64/win64-hungary.html.zh-CN: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.zh-CN -oe UTF-8 win64.adp
../..//down/x86_64/win64-hungary.html: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html -oe ISO-8859-1 win64.adp

../..//down/x86_64/win64-hungary.var: gen_makefile.conf
	echo > win64-hungary.var
	echo 'URI: win64-hungary.html.bg' >> win64-hungary.var
	echo 'Content-language: bg' >> win64-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-hungary.var
	echo >> win64-hungary.var
	echo 'URI: win64-hungary.html.en' >> win64-hungary.var
	echo 'Content-language: en' >> win64-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-hungary.var
	echo >> win64-hungary.var
	echo 'URI: win64-hungary.html.fi' >> win64-hungary.var
	echo 'Content-language: fi' >> win64-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-hungary.var
	echo >> win64-hungary.var
	echo 'URI: win64-hungary.html.fr' >> win64-hungary.var
	echo 'Content-language: fr' >> win64-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-hungary.var
	echo >> win64-hungary.var
	echo 'URI: win64-hungary.html.id' >> win64-hungary.var
	echo 'Content-language: id' >> win64-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-hungary.var
	echo >> win64-hungary.var
	echo 'URI: win64-hungary.html.it' >> win64-hungary.var
	echo 'Content-language: it' >> win64-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-hungary.var
	echo >> win64-hungary.var
	echo 'URI: win64-hungary.html.nl' >> win64-hungary.var
	echo 'Content-language: nl' >> win64-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-hungary.var
	echo >> win64-hungary.var
	echo 'URI: win64-hungary.html.po' >> win64-hungary.var
	echo 'Content-language: pl' >> win64-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-hungary.var
	echo >> win64-hungary.var
	echo 'URI: win64-hungary.html.sl' >> win64-hungary.var
	echo 'Content-language: sl' >> win64-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-hungary.var
	echo >> win64-hungary.var
	echo 'URI: win64-hungary.html.ru' >> win64-hungary.var
	echo 'Content-language: ru' >> win64-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-hungary.var
	echo >> win64-hungary.var
	echo 'URI: win64-hungary.html.zh-CN' >> win64-hungary.var
	echo 'Content-language: zh-CN' >> win64-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> win64-hungary.var
	echo >> win64-hungary.var
../..//down/x86_64/freebsd-hungary.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.bg -oe iso-8859-5 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.en -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.fi -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.fr -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.id -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.it -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.nl -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.po -oe iso-8859-2 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.sl -oe iso-8859-2 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.ru -oe iso-8859-5 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.zh-CN -oe UTF-8 freebsd.adp
../..//down/x86_64/freebsd-hungary.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html -oe ISO-8859-1 freebsd.adp

../..//down/x86_64/freebsd-hungary.var: gen_makefile.conf
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
../..//down/x86_64/netbsd-hungary.html.bg: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//netbsd-hungary.html.bg -oe iso-8859-5 netbsd.adp
../..//down/x86_64/netbsd-hungary.html.en: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//netbsd-hungary.html.en -oe iso-8859-1 netbsd.adp
../..//down/x86_64/netbsd-hungary.html.fi: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//netbsd-hungary.html.fi -oe iso-8859-1 netbsd.adp
../..//down/x86_64/netbsd-hungary.html.fr: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//netbsd-hungary.html.fr -oe iso-8859-1 netbsd.adp
../..//down/x86_64/netbsd-hungary.html.id: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//netbsd-hungary.html.id -oe iso-8859-1 netbsd.adp
../..//down/x86_64/netbsd-hungary.html.it: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//netbsd-hungary.html.it -oe iso-8859-1 netbsd.adp
../..//down/x86_64/netbsd-hungary.html.nl: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//netbsd-hungary.html.nl -oe iso-8859-1 netbsd.adp
../..//down/x86_64/netbsd-hungary.html.po: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//netbsd-hungary.html.po -oe iso-8859-2 netbsd.adp
../..//down/x86_64/netbsd-hungary.html.sl: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//netbsd-hungary.html.sl -oe iso-8859-2 netbsd.adp
../..//down/x86_64/netbsd-hungary.html.ru: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//netbsd-hungary.html.ru -oe iso-8859-5 netbsd.adp
../..//down/x86_64/netbsd-hungary.html.zh-CN: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//netbsd-hungary.html.zh-CN -oe UTF-8 netbsd.adp
../..//down/x86_64/netbsd-hungary.html: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//netbsd-hungary.html -oe ISO-8859-1 netbsd.adp

../..//down/x86_64/netbsd-hungary.var: gen_makefile.conf
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
../..//down/x86_64/solaris-hungary.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.bg -oe iso-8859-5 solaris.adp
../..//down/x86_64/solaris-hungary.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.en -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-hungary.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.fi -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-hungary.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.fr -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-hungary.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.id -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-hungary.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.it -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-hungary.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.nl -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-hungary.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.po -oe iso-8859-2 solaris.adp
../..//down/x86_64/solaris-hungary.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.sl -oe iso-8859-2 solaris.adp
../..//down/x86_64/solaris-hungary.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.ru -oe iso-8859-5 solaris.adp
../..//down/x86_64/solaris-hungary.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.zh-CN -oe UTF-8 solaris.adp
../..//down/x86_64/solaris-hungary.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html -oe ISO-8859-1 solaris.adp

../..//down/x86_64/solaris-hungary.var: gen_makefile.conf
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
../..//down/x86_64/linux-canada.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//linux-canada.html.bg -oe iso-8859-5 linux.adp
../..//down/x86_64/linux-canada.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//linux-canada.html.en -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-canada.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//linux-canada.html.fi -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-canada.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//linux-canada.html.fr -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-canada.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//linux-canada.html.id -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-canada.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//linux-canada.html.it -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-canada.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//linux-canada.html.nl -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-canada.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//linux-canada.html.po -oe iso-8859-2 linux.adp
../..//down/x86_64/linux-canada.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//linux-canada.html.sl -oe iso-8859-2 linux.adp
../..//down/x86_64/linux-canada.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//linux-canada.html.ru -oe iso-8859-5 linux.adp
../..//down/x86_64/linux-canada.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//linux-canada.html.zh-CN -oe UTF-8 linux.adp
../..//down/x86_64/linux-canada.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//linux-canada.html -oe ISO-8859-1 linux.adp

../..//down/x86_64/linux-canada.var: gen_makefile.conf
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
../..//down/x86_64/win64-canada.html.bg: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//win64-canada.html.bg -oe iso-8859-5 win64.adp
../..//down/x86_64/win64-canada.html.en: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//win64-canada.html.en -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-canada.html.fi: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//win64-canada.html.fi -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-canada.html.fr: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//win64-canada.html.fr -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-canada.html.id: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//win64-canada.html.id -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-canada.html.it: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//win64-canada.html.it -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-canada.html.nl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//win64-canada.html.nl -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-canada.html.po: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//win64-canada.html.po -oe iso-8859-2 win64.adp
../..//down/x86_64/win64-canada.html.sl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//win64-canada.html.sl -oe iso-8859-2 win64.adp
../..//down/x86_64/win64-canada.html.ru: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//win64-canada.html.ru -oe iso-8859-5 win64.adp
../..//down/x86_64/win64-canada.html.zh-CN: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//win64-canada.html.zh-CN -oe UTF-8 win64.adp
../..//down/x86_64/win64-canada.html: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//win64-canada.html -oe ISO-8859-1 win64.adp

../..//down/x86_64/win64-canada.var: gen_makefile.conf
	echo > win64-canada.var
	echo 'URI: win64-canada.html.bg' >> win64-canada.var
	echo 'Content-language: bg' >> win64-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-canada.var
	echo >> win64-canada.var
	echo 'URI: win64-canada.html.en' >> win64-canada.var
	echo 'Content-language: en' >> win64-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-canada.var
	echo >> win64-canada.var
	echo 'URI: win64-canada.html.fi' >> win64-canada.var
	echo 'Content-language: fi' >> win64-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-canada.var
	echo >> win64-canada.var
	echo 'URI: win64-canada.html.fr' >> win64-canada.var
	echo 'Content-language: fr' >> win64-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-canada.var
	echo >> win64-canada.var
	echo 'URI: win64-canada.html.id' >> win64-canada.var
	echo 'Content-language: id' >> win64-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-canada.var
	echo >> win64-canada.var
	echo 'URI: win64-canada.html.it' >> win64-canada.var
	echo 'Content-language: it' >> win64-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-canada.var
	echo >> win64-canada.var
	echo 'URI: win64-canada.html.nl' >> win64-canada.var
	echo 'Content-language: nl' >> win64-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-canada.var
	echo >> win64-canada.var
	echo 'URI: win64-canada.html.po' >> win64-canada.var
	echo 'Content-language: pl' >> win64-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-canada.var
	echo >> win64-canada.var
	echo 'URI: win64-canada.html.sl' >> win64-canada.var
	echo 'Content-language: sl' >> win64-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-canada.var
	echo >> win64-canada.var
	echo 'URI: win64-canada.html.ru' >> win64-canada.var
	echo 'Content-language: ru' >> win64-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-canada.var
	echo >> win64-canada.var
	echo 'URI: win64-canada.html.zh-CN' >> win64-canada.var
	echo 'Content-language: zh-CN' >> win64-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> win64-canada.var
	echo >> win64-canada.var
../..//down/x86_64/freebsd-canada.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//freebsd-canada.html.bg -oe iso-8859-5 freebsd.adp
../..//down/x86_64/freebsd-canada.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//freebsd-canada.html.en -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-canada.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//freebsd-canada.html.fi -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-canada.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//freebsd-canada.html.fr -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-canada.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//freebsd-canada.html.id -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-canada.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//freebsd-canada.html.it -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-canada.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//freebsd-canada.html.nl -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-canada.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//freebsd-canada.html.po -oe iso-8859-2 freebsd.adp
../..//down/x86_64/freebsd-canada.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//freebsd-canada.html.sl -oe iso-8859-2 freebsd.adp
../..//down/x86_64/freebsd-canada.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//freebsd-canada.html.ru -oe iso-8859-5 freebsd.adp
../..//down/x86_64/freebsd-canada.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//freebsd-canada.html.zh-CN -oe UTF-8 freebsd.adp
../..//down/x86_64/freebsd-canada.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//freebsd-canada.html -oe ISO-8859-1 freebsd.adp

../..//down/x86_64/freebsd-canada.var: gen_makefile.conf
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
../..//down/x86_64/netbsd-canada.html.bg: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//netbsd-canada.html.bg -oe iso-8859-5 netbsd.adp
../..//down/x86_64/netbsd-canada.html.en: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//netbsd-canada.html.en -oe iso-8859-1 netbsd.adp
../..//down/x86_64/netbsd-canada.html.fi: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//netbsd-canada.html.fi -oe iso-8859-1 netbsd.adp
../..//down/x86_64/netbsd-canada.html.fr: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//netbsd-canada.html.fr -oe iso-8859-1 netbsd.adp
../..//down/x86_64/netbsd-canada.html.id: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//netbsd-canada.html.id -oe iso-8859-1 netbsd.adp
../..//down/x86_64/netbsd-canada.html.it: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//netbsd-canada.html.it -oe iso-8859-1 netbsd.adp
../..//down/x86_64/netbsd-canada.html.nl: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//netbsd-canada.html.nl -oe iso-8859-1 netbsd.adp
../..//down/x86_64/netbsd-canada.html.po: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//netbsd-canada.html.po -oe iso-8859-2 netbsd.adp
../..//down/x86_64/netbsd-canada.html.sl: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//netbsd-canada.html.sl -oe iso-8859-2 netbsd.adp
../..//down/x86_64/netbsd-canada.html.ru: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//netbsd-canada.html.ru -oe iso-8859-5 netbsd.adp
../..//down/x86_64/netbsd-canada.html.zh-CN: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//netbsd-canada.html.zh-CN -oe UTF-8 netbsd.adp
../..//down/x86_64/netbsd-canada.html: netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//netbsd-canada.html -oe ISO-8859-1 netbsd.adp

../..//down/x86_64/netbsd-canada.var: gen_makefile.conf
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
../..//down/x86_64/solaris-canada.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//solaris-canada.html.bg -oe iso-8859-5 solaris.adp
../..//down/x86_64/solaris-canada.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//solaris-canada.html.en -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-canada.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//solaris-canada.html.fi -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-canada.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//solaris-canada.html.fr -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-canada.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//solaris-canada.html.id -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-canada.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//solaris-canada.html.it -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-canada.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//solaris-canada.html.nl -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-canada.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//solaris-canada.html.po -oe iso-8859-2 solaris.adp
../..//down/x86_64/solaris-canada.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//solaris-canada.html.sl -oe iso-8859-2 solaris.adp
../..//down/x86_64/solaris-canada.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//solaris-canada.html.ru -oe iso-8859-5 solaris.adp
../..//down/x86_64/solaris-canada.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//solaris-canada.html.zh-CN -oe UTF-8 solaris.adp
../..//down/x86_64/solaris-canada.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//solaris-canada.html -oe ISO-8859-1 solaris.adp

../..//down/x86_64/solaris-canada.var: gen_makefile.conf
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

../..//down/x86_64/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/x86_64/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/x86_64/linux.var: gen_makefile.conf
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

../..//down/x86_64/win64.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o win64.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/win64.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win64.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/win64.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o win64.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/win64.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o win64.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/win64.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o win64.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/win64.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o win64.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/win64.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o win64.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/win64.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o win64.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/win64.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o win64.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/win64.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o win64.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/win64.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o win64.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/x86_64/win64.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=win64 -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win64.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/x86_64/win64.var: gen_makefile.conf
	echo > win64.var
	echo 'URI: win64.html.bg' >> win64.var
	echo 'Content-language: bg' >> win64.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64.var
	echo >> win64.var
	echo 'URI: win64.html.en' >> win64.var
	echo 'Content-language: en' >> win64.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64.var
	echo >> win64.var
	echo 'URI: win64.html.fi' >> win64.var
	echo 'Content-language: fi' >> win64.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64.var
	echo >> win64.var
	echo 'URI: win64.html.fr' >> win64.var
	echo 'Content-language: fr' >> win64.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64.var
	echo >> win64.var
	echo 'URI: win64.html.id' >> win64.var
	echo 'Content-language: id' >> win64.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64.var
	echo >> win64.var
	echo 'URI: win64.html.it' >> win64.var
	echo 'Content-language: it' >> win64.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64.var
	echo >> win64.var
	echo 'URI: win64.html.nl' >> win64.var
	echo 'Content-language: nl' >> win64.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64.var
	echo >> win64.var
	echo 'URI: win64.html.po' >> win64.var
	echo 'Content-language: pl' >> win64.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64.var
	echo >> win64.var
	echo 'URI: win64.html.sl' >> win64.var
	echo 'Content-language: sl' >> win64.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64.var
	echo >> win64.var
	echo 'URI: win64.html.ru' >> win64.var
	echo 'Content-language: ru' >> win64.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64.var
	echo >> win64.var
	echo 'URI: win64.html.zh-CN' >> win64.var
	echo 'Content-language: zh-CN' >> win64.var
	echo 'Content-type: text/html; charset=UTF-8' >> win64.var
	echo >> win64.var

../..//down/x86_64/freebsd.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o freebsd.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o freebsd.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o freebsd.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o freebsd.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o freebsd.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o freebsd.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o freebsd.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o freebsd.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o freebsd.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o freebsd.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o freebsd.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/x86_64/freebsd.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o freebsd.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/x86_64/freebsd.var: gen_makefile.conf
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

../..//down/x86_64/netbsd.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o netbsd.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/netbsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o netbsd.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/netbsd.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o netbsd.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/netbsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o netbsd.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/netbsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o netbsd.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/netbsd.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o netbsd.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/netbsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o netbsd.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/netbsd.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o netbsd.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/netbsd.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o netbsd.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/netbsd.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o netbsd.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/netbsd.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o netbsd.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/x86_64/netbsd.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=netbsd -p sourceforgepath="NetBSD" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o netbsd.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/x86_64/netbsd.var: gen_makefile.conf
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

../..//down/x86_64/solaris.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o solaris.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/solaris.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o solaris.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/solaris.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o solaris.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/solaris.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o solaris.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/solaris.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o solaris.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/solaris.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o solaris.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/solaris.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o solaris.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/solaris.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o solaris.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/solaris.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o solaris.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/solaris.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o solaris.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/solaris.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o solaris.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/x86_64/solaris.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o solaris.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/x86_64/solaris.var: gen_makefile.conf
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

all_pages: mirrors.dat ../..//down/x86_64/linux-hungary.html.bg ../..//down/x86_64/linux-hungary.html.en ../..//down/x86_64/linux-hungary.html.fi ../..//down/x86_64/linux-hungary.html.fr ../..//down/x86_64/linux-hungary.html.id ../..//down/x86_64/linux-hungary.html.it ../..//down/x86_64/linux-hungary.html.nl ../..//down/x86_64/linux-hungary.html.po ../..//down/x86_64/linux-hungary.html.sl ../..//down/x86_64/linux-hungary.html.ru ../..//down/x86_64/linux-hungary.html.zh-CN ../..//down/x86_64/linux-hungary.var ../..//down/x86_64/win64-hungary.html.bg ../..//down/x86_64/win64-hungary.html.en ../..//down/x86_64/win64-hungary.html.fi ../..//down/x86_64/win64-hungary.html.fr ../..//down/x86_64/win64-hungary.html.id ../..//down/x86_64/win64-hungary.html.it ../..//down/x86_64/win64-hungary.html.nl ../..//down/x86_64/win64-hungary.html.po ../..//down/x86_64/win64-hungary.html.sl ../..//down/x86_64/win64-hungary.html.ru ../..//down/x86_64/win64-hungary.html.zh-CN ../..//down/x86_64/win64-hungary.var ../..//down/x86_64/freebsd-hungary.html.bg ../..//down/x86_64/freebsd-hungary.html.en ../..//down/x86_64/freebsd-hungary.html.fi ../..//down/x86_64/freebsd-hungary.html.fr ../..//down/x86_64/freebsd-hungary.html.id ../..//down/x86_64/freebsd-hungary.html.it ../..//down/x86_64/freebsd-hungary.html.nl ../..//down/x86_64/freebsd-hungary.html.po ../..//down/x86_64/freebsd-hungary.html.sl ../..//down/x86_64/freebsd-hungary.html.ru ../..//down/x86_64/freebsd-hungary.html.zh-CN ../..//down/x86_64/freebsd-hungary.var ../..//down/x86_64/netbsd-hungary.html.bg ../..//down/x86_64/netbsd-hungary.html.en ../..//down/x86_64/netbsd-hungary.html.fi ../..//down/x86_64/netbsd-hungary.html.fr ../..//down/x86_64/netbsd-hungary.html.id ../..//down/x86_64/netbsd-hungary.html.it ../..//down/x86_64/netbsd-hungary.html.nl ../..//down/x86_64/netbsd-hungary.html.po ../..//down/x86_64/netbsd-hungary.html.sl ../..//down/x86_64/netbsd-hungary.html.ru ../..//down/x86_64/netbsd-hungary.html.zh-CN ../..//down/x86_64/netbsd-hungary.var ../..//down/x86_64/solaris-hungary.html.bg ../..//down/x86_64/solaris-hungary.html.en ../..//down/x86_64/solaris-hungary.html.fi ../..//down/x86_64/solaris-hungary.html.fr ../..//down/x86_64/solaris-hungary.html.id ../..//down/x86_64/solaris-hungary.html.it ../..//down/x86_64/solaris-hungary.html.nl ../..//down/x86_64/solaris-hungary.html.po ../..//down/x86_64/solaris-hungary.html.sl ../..//down/x86_64/solaris-hungary.html.ru ../..//down/x86_64/solaris-hungary.html.zh-CN ../..//down/x86_64/solaris-hungary.var ../..//down/x86_64/linux-canada.html.bg ../..//down/x86_64/linux-canada.html.en ../..//down/x86_64/linux-canada.html.fi ../..//down/x86_64/linux-canada.html.fr ../..//down/x86_64/linux-canada.html.id ../..//down/x86_64/linux-canada.html.it ../..//down/x86_64/linux-canada.html.nl ../..//down/x86_64/linux-canada.html.po ../..//down/x86_64/linux-canada.html.sl ../..//down/x86_64/linux-canada.html.ru ../..//down/x86_64/linux-canada.html.zh-CN ../..//down/x86_64/linux-canada.var ../..//down/x86_64/win64-canada.html.bg ../..//down/x86_64/win64-canada.html.en ../..//down/x86_64/win64-canada.html.fi ../..//down/x86_64/win64-canada.html.fr ../..//down/x86_64/win64-canada.html.id ../..//down/x86_64/win64-canada.html.it ../..//down/x86_64/win64-canada.html.nl ../..//down/x86_64/win64-canada.html.po ../..//down/x86_64/win64-canada.html.sl ../..//down/x86_64/win64-canada.html.ru ../..//down/x86_64/win64-canada.html.zh-CN ../..//down/x86_64/win64-canada.var ../..//down/x86_64/freebsd-canada.html.bg ../..//down/x86_64/freebsd-canada.html.en ../..//down/x86_64/freebsd-canada.html.fi ../..//down/x86_64/freebsd-canada.html.fr ../..//down/x86_64/freebsd-canada.html.id ../..//down/x86_64/freebsd-canada.html.it ../..//down/x86_64/freebsd-canada.html.nl ../..//down/x86_64/freebsd-canada.html.po ../..//down/x86_64/freebsd-canada.html.sl ../..//down/x86_64/freebsd-canada.html.ru ../..//down/x86_64/freebsd-canada.html.zh-CN ../..//down/x86_64/freebsd-canada.var ../..//down/x86_64/netbsd-canada.html.bg ../..//down/x86_64/netbsd-canada.html.en ../..//down/x86_64/netbsd-canada.html.fi ../..//down/x86_64/netbsd-canada.html.fr ../..//down/x86_64/netbsd-canada.html.id ../..//down/x86_64/netbsd-canada.html.it ../..//down/x86_64/netbsd-canada.html.nl ../..//down/x86_64/netbsd-canada.html.po ../..//down/x86_64/netbsd-canada.html.sl ../..//down/x86_64/netbsd-canada.html.ru ../..//down/x86_64/netbsd-canada.html.zh-CN ../..//down/x86_64/netbsd-canada.var ../..//down/x86_64/solaris-canada.html.bg ../..//down/x86_64/solaris-canada.html.en ../..//down/x86_64/solaris-canada.html.fi ../..//down/x86_64/solaris-canada.html.fr ../..//down/x86_64/solaris-canada.html.id ../..//down/x86_64/solaris-canada.html.it ../..//down/x86_64/solaris-canada.html.nl ../..//down/x86_64/solaris-canada.html.po ../..//down/x86_64/solaris-canada.html.sl ../..//down/x86_64/solaris-canada.html.ru ../..//down/x86_64/solaris-canada.html.zh-CN ../..//down/x86_64/solaris-canada.var ../..//down/x86_64/linux.html.bg ../..//down/x86_64/linux.html.en ../..//down/x86_64/linux.html.fi ../..//down/x86_64/linux.html.fr ../..//down/x86_64/linux.html.id ../..//down/x86_64/linux.html.it ../..//down/x86_64/linux.html.nl ../..//down/x86_64/linux.html.po ../..//down/x86_64/linux.html.sl ../..//down/x86_64/linux.html.ru ../..//down/x86_64/linux.html.zh-CN ../..//down/x86_64/linux.var ../..//down/x86_64/win64.html.bg ../..//down/x86_64/win64.html.en ../..//down/x86_64/win64.html.fi ../..//down/x86_64/win64.html.fr ../..//down/x86_64/win64.html.id ../..//down/x86_64/win64.html.it ../..//down/x86_64/win64.html.nl ../..//down/x86_64/win64.html.po ../..//down/x86_64/win64.html.sl ../..//down/x86_64/win64.html.ru ../..//down/x86_64/win64.html.zh-CN ../..//down/x86_64/win64.var ../..//down/x86_64/freebsd.html.bg ../..//down/x86_64/freebsd.html.en ../..//down/x86_64/freebsd.html.fi ../..//down/x86_64/freebsd.html.fr ../..//down/x86_64/freebsd.html.id ../..//down/x86_64/freebsd.html.it ../..//down/x86_64/freebsd.html.nl ../..//down/x86_64/freebsd.html.po ../..//down/x86_64/freebsd.html.sl ../..//down/x86_64/freebsd.html.ru ../..//down/x86_64/freebsd.html.zh-CN ../..//down/x86_64/freebsd.var ../..//down/x86_64/netbsd.html.bg ../..//down/x86_64/netbsd.html.en ../..//down/x86_64/netbsd.html.fi ../..//down/x86_64/netbsd.html.fr ../..//down/x86_64/netbsd.html.id ../..//down/x86_64/netbsd.html.it ../..//down/x86_64/netbsd.html.nl ../..//down/x86_64/netbsd.html.po ../..//down/x86_64/netbsd.html.sl ../..//down/x86_64/netbsd.html.ru ../..//down/x86_64/netbsd.html.zh-CN ../..//down/x86_64/netbsd.var ../..//down/x86_64/solaris.html.bg ../..//down/x86_64/solaris.html.en ../..//down/x86_64/solaris.html.fi ../..//down/x86_64/solaris.html.fr ../..//down/x86_64/solaris.html.id ../..//down/x86_64/solaris.html.it ../..//down/x86_64/solaris.html.nl ../..//down/x86_64/solaris.html.po ../..//down/x86_64/solaris.html.sl ../..//down/x86_64/solaris.html.ru ../..//down/x86_64/solaris.html.zh-CN ../..//down/x86_64/solaris.var
all_en_pages: mirrors.dat ../..//down/x86_64/linux-hungary.html ../..//down/x86_64/win64-hungary.html ../..//down/x86_64/freebsd-hungary.html ../..//down/x86_64/netbsd-hungary.html ../..//down/x86_64/solaris-hungary.html ../..//down/x86_64/linux-canada.html ../..//down/x86_64/win64-canada.html ../..//down/x86_64/freebsd-canada.html ../..//down/x86_64/netbsd-canada.html ../..//down/x86_64/solaris-canada.html ../..//down/x86_64/linux.html ../..//down/x86_64/win64.html ../..//down/x86_64/freebsd.html ../..//down/x86_64/netbsd.html ../..//down/x86_64/solaris.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/x86_64/

