
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
../..//down/source/sources-hungary.html.bg: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/source//sources-hungary.html.bg -e iso-8859-5 sources.adp
../..//down/source/sources-hungary.html.en: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/source//sources-hungary.html.en -e iso-8859-1 sources.adp
../..//down/source/sources-hungary.html.fi: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/source//sources-hungary.html.fi -e iso-8859-1 sources.adp
../..//down/source/sources-hungary.html.fr: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/source//sources-hungary.html.fr -e iso-8859-1 sources.adp
../..//down/source/sources-hungary.html.id: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/source//sources-hungary.html.id -e iso-8859-1 sources.adp
../..//down/source/sources-hungary.html.it: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/source//sources-hungary.html.it -e iso-8859-1 sources.adp
../..//down/source/sources-hungary.html.nl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/source//sources-hungary.html.nl -e iso-8859-1 sources.adp
../..//down/source/sources-hungary.html.po: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/source//sources-hungary.html.po -e iso-8859-2 sources.adp
../..//down/source/sources-hungary.html.sl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/source//sources-hungary.html.sl -e iso-8859-2 sources.adp
../..//down/source/sources-hungary.html.ru: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/source//sources-hungary.html.ru -e iso-8859-5 sources.adp
../..//down/source/sources-hungary.html.zh-CN: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/source//sources-hungary.html.zh-CN -e UTF-8 sources.adp
../..//down/source/sources-hungary.html: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/source/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/source//sources-hungary.html -e ISO-8859-1 sources.adp

../..//down/source/sources-hungary.var: gen_makefile.conf
	echo > sources-hungary.var
	echo 'URI: sources-hungary.html.bg' >> sources-hungary.var
	echo 'Content-language: bg' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.en' >> sources-hungary.var
	echo 'Content-language: en' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.fi' >> sources-hungary.var
	echo 'Content-language: fi' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.fr' >> sources-hungary.var
	echo 'Content-language: fr' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.id' >> sources-hungary.var
	echo 'Content-language: id' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.it' >> sources-hungary.var
	echo 'Content-language: it' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.nl' >> sources-hungary.var
	echo 'Content-language: nl' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.po' >> sources-hungary.var
	echo 'Content-language: pl' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.sl' >> sources-hungary.var
	echo 'Content-language: sl' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.ru' >> sources-hungary.var
	echo 'Content-language: ru' >> sources-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-hungary.var
	echo >> sources-hungary.var
	echo 'URI: sources-hungary.html.zh-CN' >> sources-hungary.var
	echo 'Content-language: zh-CN' >> sources-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> sources-hungary.var
	echo >> sources-hungary.var
../..//down/source/sources-canada.html.bg: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/source//sources-canada.html.bg -e iso-8859-5 sources.adp
../..//down/source/sources-canada.html.en: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/source//sources-canada.html.en -e iso-8859-1 sources.adp
../..//down/source/sources-canada.html.fi: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/source//sources-canada.html.fi -e iso-8859-1 sources.adp
../..//down/source/sources-canada.html.fr: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/source//sources-canada.html.fr -e iso-8859-1 sources.adp
../..//down/source/sources-canada.html.id: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/source//sources-canada.html.id -e iso-8859-1 sources.adp
../..//down/source/sources-canada.html.it: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/source//sources-canada.html.it -e iso-8859-1 sources.adp
../..//down/source/sources-canada.html.nl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/source//sources-canada.html.nl -e iso-8859-1 sources.adp
../..//down/source/sources-canada.html.po: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/source//sources-canada.html.po -e iso-8859-2 sources.adp
../..//down/source/sources-canada.html.sl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/source//sources-canada.html.sl -e iso-8859-2 sources.adp
../..//down/source/sources-canada.html.ru: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/source//sources-canada.html.ru -e iso-8859-5 sources.adp
../..//down/source/sources-canada.html.zh-CN: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/source//sources-canada.html.zh-CN -e UTF-8 sources.adp
../..//down/source/sources-canada.html: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/source/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/source//sources-canada.html -e ISO-8859-1 sources.adp

../..//down/source/sources-canada.var: gen_makefile.conf
	echo > sources-canada.var
	echo 'URI: sources-canada.html.bg' >> sources-canada.var
	echo 'Content-language: bg' >> sources-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-canada.var
	echo >> sources-canada.var
	echo 'URI: sources-canada.html.en' >> sources-canada.var
	echo 'Content-language: en' >> sources-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-canada.var
	echo >> sources-canada.var
	echo 'URI: sources-canada.html.fi' >> sources-canada.var
	echo 'Content-language: fi' >> sources-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-canada.var
	echo >> sources-canada.var
	echo 'URI: sources-canada.html.fr' >> sources-canada.var
	echo 'Content-language: fr' >> sources-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-canada.var
	echo >> sources-canada.var
	echo 'URI: sources-canada.html.id' >> sources-canada.var
	echo 'Content-language: id' >> sources-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-canada.var
	echo >> sources-canada.var
	echo 'URI: sources-canada.html.it' >> sources-canada.var
	echo 'Content-language: it' >> sources-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-canada.var
	echo >> sources-canada.var
	echo 'URI: sources-canada.html.nl' >> sources-canada.var
	echo 'Content-language: nl' >> sources-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-canada.var
	echo >> sources-canada.var
	echo 'URI: sources-canada.html.po' >> sources-canada.var
	echo 'Content-language: pl' >> sources-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-canada.var
	echo >> sources-canada.var
	echo 'URI: sources-canada.html.sl' >> sources-canada.var
	echo 'Content-language: sl' >> sources-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-canada.var
	echo >> sources-canada.var
	echo 'URI: sources-canada.html.ru' >> sources-canada.var
	echo 'Content-language: ru' >> sources-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-canada.var
	echo >> sources-canada.var
	echo 'URI: sources-canada.html.zh-CN' >> sources-canada.var
	echo 'Content-language: zh-CN' >> sources-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> sources-canada.var
	echo >> sources-canada.var

../..//down/source/sources.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="Source" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o sources.html.bg -e iso-8859-5 ../../templatemirror.adp
../..//down/source/sources.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="Source" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o sources.html.en -e iso-8859-1 ../../templatemirror.adp
../..//down/source/sources.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="Source" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o sources.html.fi -e iso-8859-1 ../../templatemirror.adp
../..//down/source/sources.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="Source" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o sources.html.fr -e iso-8859-1 ../../templatemirror.adp
../..//down/source/sources.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="Source" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o sources.html.id -e iso-8859-1 ../../templatemirror.adp
../..//down/source/sources.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="Source" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o sources.html.it -e iso-8859-1 ../../templatemirror.adp
../..//down/source/sources.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="Source" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o sources.html.nl -e iso-8859-1 ../../templatemirror.adp
../..//down/source/sources.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="Source" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o sources.html.po -e iso-8859-2 ../../templatemirror.adp
../..//down/source/sources.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="Source" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o sources.html.sl -e iso-8859-2 ../../templatemirror.adp
../..//down/source/sources.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="Source" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o sources.html.ru -e iso-8859-5 ../../templatemirror.adp
../..//down/source/sources.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="Source" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o sources.html.zh-CN -e UTF-8 ../../templatemirror.adp
../..//down/source/sources.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=sources -p sourceforgepath="Source" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o sources.html -e ISO-8859-1 ../../templatemirror.adp
../..//down/source/sources.var: gen_makefile.conf
	echo > sources.var
	echo 'URI: sources.html.bg' >> sources.var
	echo 'Content-language: bg' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.en' >> sources.var
	echo 'Content-language: en' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.fi' >> sources.var
	echo 'Content-language: fi' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.fr' >> sources.var
	echo 'Content-language: fr' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.id' >> sources.var
	echo 'Content-language: id' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.it' >> sources.var
	echo 'Content-language: it' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.nl' >> sources.var
	echo 'Content-language: nl' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.po' >> sources.var
	echo 'Content-language: pl' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.sl' >> sources.var
	echo 'Content-language: sl' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.ru' >> sources.var
	echo 'Content-language: ru' >> sources.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources.var
	echo >> sources.var
	echo 'URI: sources.html.zh-CN' >> sources.var
	echo 'Content-language: zh-CN' >> sources.var
	echo 'Content-type: text/html; charset=UTF-8' >> sources.var
	echo >> sources.var

mirrors.dat:
	$(shell echo -e 'name\tnamel\turl' > mirrors.dat)
	$(shell echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo -e 'Canada\tcanada\tftp://mirror.freemirror.org/pub/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../..//down/source/sources-hungary.html.bg ../..//down/source/sources-hungary.html.en ../..//down/source/sources-hungary.html.fi ../..//down/source/sources-hungary.html.fr ../..//down/source/sources-hungary.html.id ../..//down/source/sources-hungary.html.it ../..//down/source/sources-hungary.html.nl ../..//down/source/sources-hungary.html.po ../..//down/source/sources-hungary.html.sl ../..//down/source/sources-hungary.html.ru ../..//down/source/sources-hungary.html.zh-CN ../..//down/source/sources-hungary.var ../..//down/source/sources-canada.html.bg ../..//down/source/sources-canada.html.en ../..//down/source/sources-canada.html.fi ../..//down/source/sources-canada.html.fr ../..//down/source/sources-canada.html.id ../..//down/source/sources-canada.html.it ../..//down/source/sources-canada.html.nl ../..//down/source/sources-canada.html.po ../..//down/source/sources-canada.html.sl ../..//down/source/sources-canada.html.ru ../..//down/source/sources-canada.html.zh-CN ../..//down/source/sources-canada.var ../..//down/source/sources.html.bg ../..//down/source/sources.html.en ../..//down/source/sources.html.fi ../..//down/source/sources.html.fr ../..//down/source/sources.html.id ../..//down/source/sources.html.it ../..//down/source/sources.html.nl ../..//down/source/sources.html.po ../..//down/source/sources.html.sl ../..//down/source/sources.html.ru ../..//down/source/sources.html.zh-CN ../..//down/source/sources.var
all_en_pages: mirrors.dat ../..//down/source/sources-hungary.html ../..//down/source/sources-canada.html ../..//down/source/sources.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/source/

