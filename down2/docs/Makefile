
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
../..//down2/docs/docs-hungary.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/docs//docs-hungary.html.bg -oe iso-8859-5 docs.adp
../..//down2/docs/docs-hungary.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/docs//docs-hungary.html.en -oe iso-8859-1 docs.adp
../..//down2/docs/docs-hungary.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/docs//docs-hungary.html.fi -oe iso-8859-1 docs.adp
../..//down2/docs/docs-hungary.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/docs//docs-hungary.html.fr -oe iso-8859-1 docs.adp
../..//down2/docs/docs-hungary.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/docs//docs-hungary.html.id -oe iso-8859-1 docs.adp
../..//down2/docs/docs-hungary.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/docs//docs-hungary.html.it -oe iso-8859-1 docs.adp
../..//down2/docs/docs-hungary.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/docs//docs-hungary.html.nl -oe iso-8859-1 docs.adp
../..//down2/docs/docs-hungary.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/docs//docs-hungary.html.po -oe iso-8859-2 docs.adp
../..//down2/docs/docs-hungary.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/docs//docs-hungary.html.sl -oe iso-8859-2 docs.adp
../..//down2/docs/docs-hungary.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/docs//docs-hungary.html.ru -oe iso-8859-5 docs.adp
../..//down2/docs/docs-hungary.html.zh-CN: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/docs//docs-hungary.html.zh-CN -oe UTF-8 docs.adp
../..//down2/docs/docs-hungary.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/docs/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/docs//docs-hungary.html -oe ISO-8859-1 docs.adp

../..//down2/docs/docs-hungary.var: gen_makefile.conf
	echo > docs-hungary.var
	echo 'URI: docs-hungary.html.bg' >> docs-hungary.var
	echo 'Content-language: bg' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.en' >> docs-hungary.var
	echo 'Content-language: en' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.fi' >> docs-hungary.var
	echo 'Content-language: fi' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.fr' >> docs-hungary.var
	echo 'Content-language: fr' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.id' >> docs-hungary.var
	echo 'Content-language: id' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.it' >> docs-hungary.var
	echo 'Content-language: it' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.nl' >> docs-hungary.var
	echo 'Content-language: nl' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.po' >> docs-hungary.var
	echo 'Content-language: pl' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.sl' >> docs-hungary.var
	echo 'Content-language: sl' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.ru' >> docs-hungary.var
	echo 'Content-language: ru' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.zh-CN' >> docs-hungary.var
	echo 'Content-language: zh-CN' >> docs-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> docs-hungary.var
	echo >> docs-hungary.var

../..//down2/docs/docs.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o docs.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down2/docs/docs.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down2/docs/docs.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o docs.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down2/docs/docs.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o docs.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down2/docs/docs.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o docs.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down2/docs/docs.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o docs.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down2/docs/docs.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o docs.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down2/docs/docs.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o docs.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down2/docs/docs.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o docs.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down2/docs/docs.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o docs.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down2/docs/docs.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o docs.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down2/docs/docs.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down2/docs/docs.var: gen_makefile.conf
	echo > docs.var
	echo 'URI: docs.html.bg' >> docs.var
	echo 'Content-language: bg' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.en' >> docs.var
	echo 'Content-language: en' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.fi' >> docs.var
	echo 'Content-language: fi' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.fr' >> docs.var
	echo 'Content-language: fr' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.id' >> docs.var
	echo 'Content-language: id' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.it' >> docs.var
	echo 'Content-language: it' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.nl' >> docs.var
	echo 'Content-language: nl' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.po' >> docs.var
	echo 'Content-language: pl' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.sl' >> docs.var
	echo 'Content-language: sl' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.ru' >> docs.var
	echo 'Content-language: ru' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.zh-CN' >> docs.var
	echo 'Content-language: zh-CN' >> docs.var
	echo 'Content-type: text/html; charset=UTF-8' >> docs.var
	echo >> docs.var

mirrors.dat:
	$(shell echo 'name\tnamel\turl' > mirrors.dat)
	$(shell echo 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../..//down2/docs/docs-hungary.html.bg ../..//down2/docs/docs-hungary.html.en ../..//down2/docs/docs-hungary.html.fi ../..//down2/docs/docs-hungary.html.fr ../..//down2/docs/docs-hungary.html.id ../..//down2/docs/docs-hungary.html.it ../..//down2/docs/docs-hungary.html.nl ../..//down2/docs/docs-hungary.html.po ../..//down2/docs/docs-hungary.html.sl ../..//down2/docs/docs-hungary.html.ru ../..//down2/docs/docs-hungary.html.zh-CN ../..//down2/docs/docs-hungary.var ../..//down2/docs/docs.html.bg ../..//down2/docs/docs.html.en ../..//down2/docs/docs.html.fi ../..//down2/docs/docs.html.fr ../..//down2/docs/docs.html.id ../..//down2/docs/docs.html.it ../..//down2/docs/docs.html.nl ../..//down2/docs/docs.html.po ../..//down2/docs/docs.html.sl ../..//down2/docs/docs.html.ru ../..//down2/docs/docs.html.zh-CN ../..//down2/docs/docs.var
all_en_pages: mirrors.dat ../..//down2/docs/docs-hungary.html ../..//down2/docs/docs.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down2/docs/

