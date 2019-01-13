
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
../..//down/i8086/msdos-hungary.html.bg: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i8086//msdos-hungary.html.bg -oe iso-8859-5 msdos.adp
../..//down/i8086/msdos-hungary.html.en: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i8086//msdos-hungary.html.en -oe iso-8859-1 msdos.adp
../..//down/i8086/msdos-hungary.html.fi: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i8086//msdos-hungary.html.fi -oe iso-8859-1 msdos.adp
../..//down/i8086/msdos-hungary.html.fr: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i8086//msdos-hungary.html.fr -oe iso-8859-1 msdos.adp
../..//down/i8086/msdos-hungary.html.id: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i8086//msdos-hungary.html.id -oe iso-8859-1 msdos.adp
../..//down/i8086/msdos-hungary.html.it: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i8086//msdos-hungary.html.it -oe iso-8859-1 msdos.adp
../..//down/i8086/msdos-hungary.html.nl: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i8086//msdos-hungary.html.nl -oe iso-8859-1 msdos.adp
../..//down/i8086/msdos-hungary.html.po: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i8086//msdos-hungary.html.po -oe iso-8859-2 msdos.adp
../..//down/i8086/msdos-hungary.html.sl: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i8086//msdos-hungary.html.sl -oe iso-8859-2 msdos.adp
../..//down/i8086/msdos-hungary.html.ru: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i8086//msdos-hungary.html.ru -oe iso-8859-5 msdos.adp
../..//down/i8086/msdos-hungary.html.zh-CN: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i8086//msdos-hungary.html.zh-CN -oe UTF-8 msdos.adp
../..//down/i8086/msdos-hungary.html: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i8086/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i8086//msdos-hungary.html -oe ISO-8859-1 msdos.adp

../..//down/i8086/msdos-hungary.var: gen_makefile.conf
	echo > msdos-hungary.var
	echo 'URI: msdos-hungary.html.bg' >> msdos-hungary.var
	echo 'Content-language: bg' >> msdos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> msdos-hungary.var
	echo >> msdos-hungary.var
	echo 'URI: msdos-hungary.html.en' >> msdos-hungary.var
	echo 'Content-language: en' >> msdos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos-hungary.var
	echo >> msdos-hungary.var
	echo 'URI: msdos-hungary.html.fi' >> msdos-hungary.var
	echo 'Content-language: fi' >> msdos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos-hungary.var
	echo >> msdos-hungary.var
	echo 'URI: msdos-hungary.html.fr' >> msdos-hungary.var
	echo 'Content-language: fr' >> msdos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos-hungary.var
	echo >> msdos-hungary.var
	echo 'URI: msdos-hungary.html.id' >> msdos-hungary.var
	echo 'Content-language: id' >> msdos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos-hungary.var
	echo >> msdos-hungary.var
	echo 'URI: msdos-hungary.html.it' >> msdos-hungary.var
	echo 'Content-language: it' >> msdos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos-hungary.var
	echo >> msdos-hungary.var
	echo 'URI: msdos-hungary.html.nl' >> msdos-hungary.var
	echo 'Content-language: nl' >> msdos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos-hungary.var
	echo >> msdos-hungary.var
	echo 'URI: msdos-hungary.html.po' >> msdos-hungary.var
	echo 'Content-language: pl' >> msdos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> msdos-hungary.var
	echo >> msdos-hungary.var
	echo 'URI: msdos-hungary.html.sl' >> msdos-hungary.var
	echo 'Content-language: sl' >> msdos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> msdos-hungary.var
	echo >> msdos-hungary.var
	echo 'URI: msdos-hungary.html.ru' >> msdos-hungary.var
	echo 'Content-language: ru' >> msdos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> msdos-hungary.var
	echo >> msdos-hungary.var
	echo 'URI: msdos-hungary.html.zh-CN' >> msdos-hungary.var
	echo 'Content-language: zh-CN' >> msdos-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> msdos-hungary.var
	echo >> msdos-hungary.var
../..//down/i8086/msdos-canada.html.bg: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i8086//msdos-canada.html.bg -oe iso-8859-5 msdos.adp
../..//down/i8086/msdos-canada.html.en: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i8086//msdos-canada.html.en -oe iso-8859-1 msdos.adp
../..//down/i8086/msdos-canada.html.fi: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i8086//msdos-canada.html.fi -oe iso-8859-1 msdos.adp
../..//down/i8086/msdos-canada.html.fr: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i8086//msdos-canada.html.fr -oe iso-8859-1 msdos.adp
../..//down/i8086/msdos-canada.html.id: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i8086//msdos-canada.html.id -oe iso-8859-1 msdos.adp
../..//down/i8086/msdos-canada.html.it: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i8086//msdos-canada.html.it -oe iso-8859-1 msdos.adp
../..//down/i8086/msdos-canada.html.nl: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i8086//msdos-canada.html.nl -oe iso-8859-1 msdos.adp
../..//down/i8086/msdos-canada.html.po: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i8086//msdos-canada.html.po -oe iso-8859-2 msdos.adp
../..//down/i8086/msdos-canada.html.sl: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i8086//msdos-canada.html.sl -oe iso-8859-2 msdos.adp
../..//down/i8086/msdos-canada.html.ru: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i8086//msdos-canada.html.ru -oe iso-8859-5 msdos.adp
../..//down/i8086/msdos-canada.html.zh-CN: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i8086//msdos-canada.html.zh-CN -oe UTF-8 msdos.adp
../..//down/i8086/msdos-canada.html: msdos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i8086/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i8086//msdos-canada.html -oe ISO-8859-1 msdos.adp

../..//down/i8086/msdos-canada.var: gen_makefile.conf
	echo > msdos-canada.var
	echo 'URI: msdos-canada.html.bg' >> msdos-canada.var
	echo 'Content-language: bg' >> msdos-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> msdos-canada.var
	echo >> msdos-canada.var
	echo 'URI: msdos-canada.html.en' >> msdos-canada.var
	echo 'Content-language: en' >> msdos-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos-canada.var
	echo >> msdos-canada.var
	echo 'URI: msdos-canada.html.fi' >> msdos-canada.var
	echo 'Content-language: fi' >> msdos-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos-canada.var
	echo >> msdos-canada.var
	echo 'URI: msdos-canada.html.fr' >> msdos-canada.var
	echo 'Content-language: fr' >> msdos-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos-canada.var
	echo >> msdos-canada.var
	echo 'URI: msdos-canada.html.id' >> msdos-canada.var
	echo 'Content-language: id' >> msdos-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos-canada.var
	echo >> msdos-canada.var
	echo 'URI: msdos-canada.html.it' >> msdos-canada.var
	echo 'Content-language: it' >> msdos-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos-canada.var
	echo >> msdos-canada.var
	echo 'URI: msdos-canada.html.nl' >> msdos-canada.var
	echo 'Content-language: nl' >> msdos-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos-canada.var
	echo >> msdos-canada.var
	echo 'URI: msdos-canada.html.po' >> msdos-canada.var
	echo 'Content-language: pl' >> msdos-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> msdos-canada.var
	echo >> msdos-canada.var
	echo 'URI: msdos-canada.html.sl' >> msdos-canada.var
	echo 'Content-language: sl' >> msdos-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> msdos-canada.var
	echo >> msdos-canada.var
	echo 'URI: msdos-canada.html.ru' >> msdos-canada.var
	echo 'Content-language: ru' >> msdos-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> msdos-canada.var
	echo >> msdos-canada.var
	echo 'URI: msdos-canada.html.zh-CN' >> msdos-canada.var
	echo 'Content-language: zh-CN' >> msdos-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> msdos-canada.var
	echo >> msdos-canada.var

../..//down/i8086/msdos.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=msdos -p sourceforgepath="DOS" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o msdos.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i8086/msdos.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=msdos -p sourceforgepath="DOS" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o msdos.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i8086/msdos.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=msdos -p sourceforgepath="DOS" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o msdos.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i8086/msdos.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=msdos -p sourceforgepath="DOS" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o msdos.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i8086/msdos.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=msdos -p sourceforgepath="DOS" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o msdos.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i8086/msdos.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=msdos -p sourceforgepath="DOS" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o msdos.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i8086/msdos.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=msdos -p sourceforgepath="DOS" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o msdos.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i8086/msdos.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=msdos -p sourceforgepath="DOS" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o msdos.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i8086/msdos.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=msdos -p sourceforgepath="DOS" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o msdos.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i8086/msdos.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=msdos -p sourceforgepath="DOS" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o msdos.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i8086/msdos.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=msdos -p sourceforgepath="DOS" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o msdos.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/i8086/msdos.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=msdos -p sourceforgepath="DOS" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o msdos.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i8086/msdos.var: gen_makefile.conf
	echo > msdos.var
	echo 'URI: msdos.html.bg' >> msdos.var
	echo 'Content-language: bg' >> msdos.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> msdos.var
	echo >> msdos.var
	echo 'URI: msdos.html.en' >> msdos.var
	echo 'Content-language: en' >> msdos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos.var
	echo >> msdos.var
	echo 'URI: msdos.html.fi' >> msdos.var
	echo 'Content-language: fi' >> msdos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos.var
	echo >> msdos.var
	echo 'URI: msdos.html.fr' >> msdos.var
	echo 'Content-language: fr' >> msdos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos.var
	echo >> msdos.var
	echo 'URI: msdos.html.id' >> msdos.var
	echo 'Content-language: id' >> msdos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos.var
	echo >> msdos.var
	echo 'URI: msdos.html.it' >> msdos.var
	echo 'Content-language: it' >> msdos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos.var
	echo >> msdos.var
	echo 'URI: msdos.html.nl' >> msdos.var
	echo 'Content-language: nl' >> msdos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> msdos.var
	echo >> msdos.var
	echo 'URI: msdos.html.po' >> msdos.var
	echo 'Content-language: pl' >> msdos.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> msdos.var
	echo >> msdos.var
	echo 'URI: msdos.html.sl' >> msdos.var
	echo 'Content-language: sl' >> msdos.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> msdos.var
	echo >> msdos.var
	echo 'URI: msdos.html.ru' >> msdos.var
	echo 'Content-language: ru' >> msdos.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> msdos.var
	echo >> msdos.var
	echo 'URI: msdos.html.zh-CN' >> msdos.var
	echo 'Content-language: zh-CN' >> msdos.var
	echo 'Content-type: text/html; charset=UTF-8' >> msdos.var
	echo >> msdos.var

mirrors.dat:
	$(shell echo 'name\tnamel\turl' > mirrors.dat)
	$(shell echo 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo 'Canada\tcanada\tftp://mirror.freemirror.org/pub/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../..//down/i8086/msdos-hungary.html.bg ../..//down/i8086/msdos-hungary.html.en ../..//down/i8086/msdos-hungary.html.fi ../..//down/i8086/msdos-hungary.html.fr ../..//down/i8086/msdos-hungary.html.id ../..//down/i8086/msdos-hungary.html.it ../..//down/i8086/msdos-hungary.html.nl ../..//down/i8086/msdos-hungary.html.po ../..//down/i8086/msdos-hungary.html.sl ../..//down/i8086/msdos-hungary.html.ru ../..//down/i8086/msdos-hungary.html.zh-CN ../..//down/i8086/msdos-hungary.var ../..//down/i8086/msdos-canada.html.bg ../..//down/i8086/msdos-canada.html.en ../..//down/i8086/msdos-canada.html.fi ../..//down/i8086/msdos-canada.html.fr ../..//down/i8086/msdos-canada.html.id ../..//down/i8086/msdos-canada.html.it ../..//down/i8086/msdos-canada.html.nl ../..//down/i8086/msdos-canada.html.po ../..//down/i8086/msdos-canada.html.sl ../..//down/i8086/msdos-canada.html.ru ../..//down/i8086/msdos-canada.html.zh-CN ../..//down/i8086/msdos-canada.var ../..//down/i8086/msdos.html.bg ../..//down/i8086/msdos.html.en ../..//down/i8086/msdos.html.fi ../..//down/i8086/msdos.html.fr ../..//down/i8086/msdos.html.id ../..//down/i8086/msdos.html.it ../..//down/i8086/msdos.html.nl ../..//down/i8086/msdos.html.po ../..//down/i8086/msdos.html.sl ../..//down/i8086/msdos.html.ru ../..//down/i8086/msdos.html.zh-CN ../..//down/i8086/msdos.var
all_en_pages: mirrors.dat ../..//down/i8086/msdos-hungary.html ../..//down/i8086/msdos-canada.html ../..//down/i8086/msdos.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/i8086/

