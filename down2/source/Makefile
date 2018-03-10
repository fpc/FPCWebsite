
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
../..//down2/source/sources-hungary.html.bg: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/source//sources-hungary.html.bg -oe iso-8859-5 sources.adp
../..//down2/source/sources-hungary.html.en: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source//sources-hungary.html.en -oe iso-8859-1 sources.adp
../..//down2/source/sources-hungary.html.fi: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/source//sources-hungary.html.fi -oe iso-8859-1 sources.adp
../..//down2/source/sources-hungary.html.fr: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/source//sources-hungary.html.fr -oe iso-8859-1 sources.adp
../..//down2/source/sources-hungary.html.id: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/source//sources-hungary.html.id -oe iso-8859-1 sources.adp
../..//down2/source/sources-hungary.html.it: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/source//sources-hungary.html.it -oe iso-8859-1 sources.adp
../..//down2/source/sources-hungary.html.nl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/source//sources-hungary.html.nl -oe iso-8859-1 sources.adp
../..//down2/source/sources-hungary.html.po: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/source//sources-hungary.html.po -oe iso-8859-2 sources.adp
../..//down2/source/sources-hungary.html.sl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/source//sources-hungary.html.sl -oe iso-8859-2 sources.adp
../..//down2/source/sources-hungary.html.ru: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/source//sources-hungary.html.ru -oe iso-8859-5 sources.adp
../..//down2/source/sources-hungary.html.zh-CN: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/source//sources-hungary.html.zh-CN -oe UTF-8 sources.adp
../..//down2/source/sources-hungary.html: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/source/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source//sources-hungary.html -oe ISO-8859-1 sources.adp

../..//down2/source/sources-hungary.var: gen_makefile.conf
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
../..//down2/source/sources-netherlands.html.bg: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/source//sources-netherlands.html.bg -oe iso-8859-5 sources.adp
../..//down2/source/sources-netherlands.html.en: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source//sources-netherlands.html.en -oe iso-8859-1 sources.adp
../..//down2/source/sources-netherlands.html.fi: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/source//sources-netherlands.html.fi -oe iso-8859-1 sources.adp
../..//down2/source/sources-netherlands.html.fr: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/source//sources-netherlands.html.fr -oe iso-8859-1 sources.adp
../..//down2/source/sources-netherlands.html.id: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/source//sources-netherlands.html.id -oe iso-8859-1 sources.adp
../..//down2/source/sources-netherlands.html.it: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/source//sources-netherlands.html.it -oe iso-8859-1 sources.adp
../..//down2/source/sources-netherlands.html.nl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/source//sources-netherlands.html.nl -oe iso-8859-1 sources.adp
../..//down2/source/sources-netherlands.html.po: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/source//sources-netherlands.html.po -oe iso-8859-2 sources.adp
../..//down2/source/sources-netherlands.html.sl: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/source//sources-netherlands.html.sl -oe iso-8859-2 sources.adp
../..//down2/source/sources-netherlands.html.ru: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/source//sources-netherlands.html.ru -oe iso-8859-5 sources.adp
../..//down2/source/sources-netherlands.html.zh-CN: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/source//sources-netherlands.html.zh-CN -oe UTF-8 sources.adp
../..//down2/source/sources-netherlands.html: sources.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/source/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/source//sources-netherlands.html -oe ISO-8859-1 sources.adp

../..//down2/source/sources-netherlands.var: gen_makefile.conf
	echo > sources-netherlands.var
	echo 'URI: sources-netherlands.html.bg' >> sources-netherlands.var
	echo 'Content-language: bg' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.en' >> sources-netherlands.var
	echo 'Content-language: en' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.fi' >> sources-netherlands.var
	echo 'Content-language: fi' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.fr' >> sources-netherlands.var
	echo 'Content-language: fr' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.id' >> sources-netherlands.var
	echo 'Content-language: id' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.it' >> sources-netherlands.var
	echo 'Content-language: it' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.nl' >> sources-netherlands.var
	echo 'Content-language: nl' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.po' >> sources-netherlands.var
	echo 'Content-language: pl' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.sl' >> sources-netherlands.var
	echo 'Content-language: sl' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.ru' >> sources-netherlands.var
	echo 'Content-language: ru' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sources-netherlands.var
	echo >> sources-netherlands.var
	echo 'URI: sources-netherlands.html.zh-CN' >> sources-netherlands.var
	echo 'Content-language: zh-CN' >> sources-netherlands.var
	echo 'Content-type: text/html; charset=UTF-8' >> sources-netherlands.var
	echo >> sources-netherlands.var

../..//down2/source/sources.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o sources.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down2/source/sources.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o sources.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down2/source/sources.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o sources.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down2/source/sources.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o sources.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down2/source/sources.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o sources.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down2/source/sources.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o sources.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down2/source/sources.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o sources.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down2/source/sources.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o sources.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down2/source/sources.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o sources.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down2/source/sources.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o sources.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down2/source/sources.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sources -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o sources.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down2/source/sources.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=sources -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o sources.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down2/source/sources.var: gen_makefile.conf
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
	$(shell echo 'name\tnamel\turl' > mirrors.dat)
	$(shell echo 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/mirrors/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../..//down2/source/sources-hungary.html.bg ../..//down2/source/sources-hungary.html.en ../..//down2/source/sources-hungary.html.fi ../..//down2/source/sources-hungary.html.fr ../..//down2/source/sources-hungary.html.id ../..//down2/source/sources-hungary.html.it ../..//down2/source/sources-hungary.html.nl ../..//down2/source/sources-hungary.html.po ../..//down2/source/sources-hungary.html.sl ../..//down2/source/sources-hungary.html.ru ../..//down2/source/sources-hungary.html.zh-CN ../..//down2/source/sources-hungary.var ../..//down2/source/sources-netherlands.html.bg ../..//down2/source/sources-netherlands.html.en ../..//down2/source/sources-netherlands.html.fi ../..//down2/source/sources-netherlands.html.fr ../..//down2/source/sources-netherlands.html.id ../..//down2/source/sources-netherlands.html.it ../..//down2/source/sources-netherlands.html.nl ../..//down2/source/sources-netherlands.html.po ../..//down2/source/sources-netherlands.html.sl ../..//down2/source/sources-netherlands.html.ru ../..//down2/source/sources-netherlands.html.zh-CN ../..//down2/source/sources-netherlands.var ../..//down2/source/sources.html.bg ../..//down2/source/sources.html.en ../..//down2/source/sources.html.fi ../..//down2/source/sources.html.fr ../..//down2/source/sources.html.id ../..//down2/source/sources.html.it ../..//down2/source/sources.html.nl ../..//down2/source/sources.html.po ../..//down2/source/sources.html.sl ../..//down2/source/sources.html.ru ../..//down2/source/sources.html.zh-CN ../..//down2/source/sources.var
all_en_pages: mirrors.dat ../..//down2/source/sources-hungary.html ../..//down2/source/sources-netherlands.html ../..//down2/source/sources.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down2/source/

