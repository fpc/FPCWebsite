
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
../..//down/old/docs-hungary.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.bg -oe iso-8859-5 docs.adp
../..//down/old/docs-hungary.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.en -oe iso-8859-1 docs.adp
../..//down/old/docs-hungary.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.fi -oe iso-8859-1 docs.adp
../..//down/old/docs-hungary.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.fr -oe iso-8859-1 docs.adp
../..//down/old/docs-hungary.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.id -oe iso-8859-1 docs.adp
../..//down/old/docs-hungary.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.it -oe iso-8859-1 docs.adp
../..//down/old/docs-hungary.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.nl -oe iso-8859-1 docs.adp
../..//down/old/docs-hungary.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.po -oe iso-8859-2 docs.adp
../..//down/old/docs-hungary.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.sl -oe iso-8859-2 docs.adp
../..//down/old/docs-hungary.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.ru -oe iso-8859-5 docs.adp
../..//down/old/docs-hungary.html.zh-CN: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.zh-CN -oe UTF-8 docs.adp
../..//down/old/docs-hungary.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//docs-hungary.html -oe ISO-8859-1 docs.adp

../..//down/old/docs-hungary.var: gen_makefile.conf
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
../..//down/old/i386-beos-hungary.html.bg: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.bg -oe iso-8859-5 i386-beos.adp
../..//down/old/i386-beos-hungary.html.en: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.en -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-hungary.html.fi: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.fi -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-hungary.html.fr: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.fr -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-hungary.html.id: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.id -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-hungary.html.it: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.it -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-hungary.html.nl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.nl -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-hungary.html.po: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.po -oe iso-8859-2 i386-beos.adp
../..//down/old/i386-beos-hungary.html.sl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.sl -oe iso-8859-2 i386-beos.adp
../..//down/old/i386-beos-hungary.html.ru: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.ru -oe iso-8859-5 i386-beos.adp
../..//down/old/i386-beos-hungary.html.zh-CN: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.zh-CN -oe UTF-8 i386-beos.adp
../..//down/old/i386-beos-hungary.html: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html -oe ISO-8859-1 i386-beos.adp

../..//down/old/i386-beos-hungary.var: gen_makefile.conf
	echo > i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.bg' >> i386-beos-hungary.var
	echo 'Content-language: bg' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.en' >> i386-beos-hungary.var
	echo 'Content-language: en' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.fi' >> i386-beos-hungary.var
	echo 'Content-language: fi' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.fr' >> i386-beos-hungary.var
	echo 'Content-language: fr' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.id' >> i386-beos-hungary.var
	echo 'Content-language: id' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.it' >> i386-beos-hungary.var
	echo 'Content-language: it' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.nl' >> i386-beos-hungary.var
	echo 'Content-language: nl' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.po' >> i386-beos-hungary.var
	echo 'Content-language: pl' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.sl' >> i386-beos-hungary.var
	echo 'Content-language: sl' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.ru' >> i386-beos-hungary.var
	echo 'Content-language: ru' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.zh-CN' >> i386-beos-hungary.var
	echo 'Content-language: zh-CN' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
../..//down/old/i386-emx-hungary.html.bg: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.bg -oe iso-8859-5 i386-emx.adp
../..//down/old/i386-emx-hungary.html.en: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.en -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-hungary.html.fi: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.fi -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-hungary.html.fr: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.fr -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-hungary.html.id: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.id -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-hungary.html.it: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.it -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-hungary.html.nl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.nl -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-hungary.html.po: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.po -oe iso-8859-2 i386-emx.adp
../..//down/old/i386-emx-hungary.html.sl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.sl -oe iso-8859-2 i386-emx.adp
../..//down/old/i386-emx-hungary.html.ru: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.ru -oe iso-8859-5 i386-emx.adp
../..//down/old/i386-emx-hungary.html.zh-CN: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.zh-CN -oe UTF-8 i386-emx.adp
../..//down/old/i386-emx-hungary.html: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html -oe ISO-8859-1 i386-emx.adp

../..//down/old/i386-emx-hungary.var: gen_makefile.conf
	echo > i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.bg' >> i386-emx-hungary.var
	echo 'Content-language: bg' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.en' >> i386-emx-hungary.var
	echo 'Content-language: en' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.fi' >> i386-emx-hungary.var
	echo 'Content-language: fi' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.fr' >> i386-emx-hungary.var
	echo 'Content-language: fr' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.id' >> i386-emx-hungary.var
	echo 'Content-language: id' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.it' >> i386-emx-hungary.var
	echo 'Content-language: it' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.nl' >> i386-emx-hungary.var
	echo 'Content-language: nl' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.po' >> i386-emx-hungary.var
	echo 'Content-language: pl' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.sl' >> i386-emx-hungary.var
	echo 'Content-language: sl' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.ru' >> i386-emx-hungary.var
	echo 'Content-language: ru' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.zh-CN' >> i386-emx-hungary.var
	echo 'Content-language: zh-CN' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
../..//down/old/i386-netbsd-hungary.html.bg: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.bg -oe iso-8859-5 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.en: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.en -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.fi: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.fi -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.fr: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.fr -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.id: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.id -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.it: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.it -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.nl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.nl -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.po: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.po -oe iso-8859-2 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.sl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.sl -oe iso-8859-2 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.ru: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.ru -oe iso-8859-5 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.zh-CN: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.zh-CN -oe UTF-8 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html -oe ISO-8859-1 i386-netbsd.adp

../..//down/old/i386-netbsd-hungary.var: gen_makefile.conf
	echo > i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.bg' >> i386-netbsd-hungary.var
	echo 'Content-language: bg' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.en' >> i386-netbsd-hungary.var
	echo 'Content-language: en' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.fi' >> i386-netbsd-hungary.var
	echo 'Content-language: fi' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.fr' >> i386-netbsd-hungary.var
	echo 'Content-language: fr' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.id' >> i386-netbsd-hungary.var
	echo 'Content-language: id' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.it' >> i386-netbsd-hungary.var
	echo 'Content-language: it' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.nl' >> i386-netbsd-hungary.var
	echo 'Content-language: nl' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.po' >> i386-netbsd-hungary.var
	echo 'Content-language: pl' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.sl' >> i386-netbsd-hungary.var
	echo 'Content-language: sl' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.ru' >> i386-netbsd-hungary.var
	echo 'Content-language: ru' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.zh-CN' >> i386-netbsd-hungary.var
	echo 'Content-language: zh-CN' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
../..//down/old/i386-solaris-hungary.html.bg: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.bg -oe iso-8859-5 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.en: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.en -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.fi: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.fi -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.fr: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.fr -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.id: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.id -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.it: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.it -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.nl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.nl -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.po: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.po -oe iso-8859-2 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.sl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.sl -oe iso-8859-2 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.ru: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.ru -oe iso-8859-5 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.zh-CN: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.zh-CN -oe UTF-8 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html -oe ISO-8859-1 i386-solaris.adp

../..//down/old/i386-solaris-hungary.var: gen_makefile.conf
	echo > i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.bg' >> i386-solaris-hungary.var
	echo 'Content-language: bg' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.en' >> i386-solaris-hungary.var
	echo 'Content-language: en' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.fi' >> i386-solaris-hungary.var
	echo 'Content-language: fi' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.fr' >> i386-solaris-hungary.var
	echo 'Content-language: fr' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.id' >> i386-solaris-hungary.var
	echo 'Content-language: id' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.it' >> i386-solaris-hungary.var
	echo 'Content-language: it' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.nl' >> i386-solaris-hungary.var
	echo 'Content-language: nl' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.po' >> i386-solaris-hungary.var
	echo 'Content-language: pl' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.sl' >> i386-solaris-hungary.var
	echo 'Content-language: sl' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.ru' >> i386-solaris-hungary.var
	echo 'Content-language: ru' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.zh-CN' >> i386-solaris-hungary.var
	echo 'Content-language: zh-CN' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
../..//down/old/m68k-linux-hungary.html.bg: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.bg -oe iso-8859-5 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.en: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.en -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.fi: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.fi -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.fr: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.fr -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.id: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.id -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.it: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.it -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.nl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.nl -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.po: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.po -oe iso-8859-2 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.sl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.sl -oe iso-8859-2 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.ru: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.ru -oe iso-8859-5 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.zh-CN: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.zh-CN -oe UTF-8 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html -oe ISO-8859-1 m68k-linux.adp

../..//down/old/m68k-linux-hungary.var: gen_makefile.conf
	echo > m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.bg' >> m68k-linux-hungary.var
	echo 'Content-language: bg' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.en' >> m68k-linux-hungary.var
	echo 'Content-language: en' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.fi' >> m68k-linux-hungary.var
	echo 'Content-language: fi' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.fr' >> m68k-linux-hungary.var
	echo 'Content-language: fr' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.id' >> m68k-linux-hungary.var
	echo 'Content-language: id' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.it' >> m68k-linux-hungary.var
	echo 'Content-language: it' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.nl' >> m68k-linux-hungary.var
	echo 'Content-language: nl' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.po' >> m68k-linux-hungary.var
	echo 'Content-language: pl' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.sl' >> m68k-linux-hungary.var
	echo 'Content-language: sl' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.ru' >> m68k-linux-hungary.var
	echo 'Content-language: ru' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.zh-CN' >> m68k-linux-hungary.var
	echo 'Content-language: zh-CN' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
../..//down/old/down-hungary.html.bg: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//down-hungary.html.bg -oe iso-8859-5 down.adp
../..//down/old/down-hungary.html.en: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//down-hungary.html.en -oe iso-8859-1 down.adp
../..//down/old/down-hungary.html.fi: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//down-hungary.html.fi -oe iso-8859-1 down.adp
../..//down/old/down-hungary.html.fr: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//down-hungary.html.fr -oe iso-8859-1 down.adp
../..//down/old/down-hungary.html.id: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//down-hungary.html.id -oe iso-8859-1 down.adp
../..//down/old/down-hungary.html.it: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//down-hungary.html.it -oe iso-8859-1 down.adp
../..//down/old/down-hungary.html.nl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//down-hungary.html.nl -oe iso-8859-1 down.adp
../..//down/old/down-hungary.html.po: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//down-hungary.html.po -oe iso-8859-2 down.adp
../..//down/old/down-hungary.html.sl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//down-hungary.html.sl -oe iso-8859-2 down.adp
../..//down/old/down-hungary.html.ru: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//down-hungary.html.ru -oe iso-8859-5 down.adp
../..//down/old/down-hungary.html.zh-CN: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//down-hungary.html.zh-CN -oe UTF-8 down.adp
../..//down/old/down-hungary.html: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//down-hungary.html -oe ISO-8859-1 down.adp

../..//down/old/down-hungary.var: gen_makefile.conf
	echo > down-hungary.var
	echo 'URI: down-hungary.html.bg' >> down-hungary.var
	echo 'Content-language: bg' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.en' >> down-hungary.var
	echo 'Content-language: en' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.fi' >> down-hungary.var
	echo 'Content-language: fi' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.fr' >> down-hungary.var
	echo 'Content-language: fr' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.id' >> down-hungary.var
	echo 'Content-language: id' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.it' >> down-hungary.var
	echo 'Content-language: it' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.nl' >> down-hungary.var
	echo 'Content-language: nl' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.po' >> down-hungary.var
	echo 'Content-language: pl' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.sl' >> down-hungary.var
	echo 'Content-language: sl' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.ru' >> down-hungary.var
	echo 'Content-language: ru' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.zh-CN' >> down-hungary.var
	echo 'Content-language: zh-CN' >> down-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> down-hungary.var
	echo >> down-hungary.var
../..//down/old/i386-go32v2-hungary.html.bg: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.bg -oe iso-8859-5 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.en: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.en -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.fi: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.fi -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.fr: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.fr -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.id: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.id -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.it: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.it -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.nl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.nl -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.po: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.po -oe iso-8859-2 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.sl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.sl -oe iso-8859-2 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.ru: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.ru -oe iso-8859-5 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.zh-CN: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.zh-CN -oe UTF-8 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html -oe ISO-8859-1 i386-go32v2.adp

../..//down/old/i386-go32v2-hungary.var: gen_makefile.conf
	echo > i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.bg' >> i386-go32v2-hungary.var
	echo 'Content-language: bg' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.en' >> i386-go32v2-hungary.var
	echo 'Content-language: en' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.fi' >> i386-go32v2-hungary.var
	echo 'Content-language: fi' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.fr' >> i386-go32v2-hungary.var
	echo 'Content-language: fr' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.id' >> i386-go32v2-hungary.var
	echo 'Content-language: id' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.it' >> i386-go32v2-hungary.var
	echo 'Content-language: it' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.nl' >> i386-go32v2-hungary.var
	echo 'Content-language: nl' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.po' >> i386-go32v2-hungary.var
	echo 'Content-language: pl' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.sl' >> i386-go32v2-hungary.var
	echo 'Content-language: sl' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.ru' >> i386-go32v2-hungary.var
	echo 'Content-language: ru' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.zh-CN' >> i386-go32v2-hungary.var
	echo 'Content-language: zh-CN' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
../..//down/old/i386-qnx-hungary.html.bg: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.bg -oe iso-8859-5 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.en: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.en -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.fi: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.fi -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.fr: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.fr -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.id: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.id -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.it: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.it -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.nl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.nl -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.po: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.po -oe iso-8859-2 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.sl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.sl -oe iso-8859-2 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.ru: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.ru -oe iso-8859-5 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.zh-CN: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.zh-CN -oe UTF-8 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html -oe ISO-8859-1 i386-qnx.adp

../..//down/old/i386-qnx-hungary.var: gen_makefile.conf
	echo > i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.bg' >> i386-qnx-hungary.var
	echo 'Content-language: bg' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.en' >> i386-qnx-hungary.var
	echo 'Content-language: en' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.fi' >> i386-qnx-hungary.var
	echo 'Content-language: fi' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.fr' >> i386-qnx-hungary.var
	echo 'Content-language: fr' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.id' >> i386-qnx-hungary.var
	echo 'Content-language: id' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.it' >> i386-qnx-hungary.var
	echo 'Content-language: it' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.nl' >> i386-qnx-hungary.var
	echo 'Content-language: nl' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.po' >> i386-qnx-hungary.var
	echo 'Content-language: pl' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.sl' >> i386-qnx-hungary.var
	echo 'Content-language: sl' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.ru' >> i386-qnx-hungary.var
	echo 'Content-language: ru' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.zh-CN' >> i386-qnx-hungary.var
	echo 'Content-language: zh-CN' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
../..//down/old/m68k-amiga-hungary.html.bg: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.bg -oe iso-8859-5 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.en: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.en -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.fi: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.fi -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.fr: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.fr -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.id: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.id -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.it: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.it -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.nl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.nl -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.po: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.po -oe iso-8859-2 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.sl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.sl -oe iso-8859-2 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.ru: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.ru -oe iso-8859-5 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.zh-CN: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.zh-CN -oe UTF-8 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html -oe ISO-8859-1 m68k-amiga.adp

../..//down/old/m68k-amiga-hungary.var: gen_makefile.conf
	echo > m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.bg' >> m68k-amiga-hungary.var
	echo 'Content-language: bg' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.en' >> m68k-amiga-hungary.var
	echo 'Content-language: en' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.fi' >> m68k-amiga-hungary.var
	echo 'Content-language: fi' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.fr' >> m68k-amiga-hungary.var
	echo 'Content-language: fr' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.id' >> m68k-amiga-hungary.var
	echo 'Content-language: id' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.it' >> m68k-amiga-hungary.var
	echo 'Content-language: it' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.nl' >> m68k-amiga-hungary.var
	echo 'Content-language: nl' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.po' >> m68k-amiga-hungary.var
	echo 'Content-language: pl' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.sl' >> m68k-amiga-hungary.var
	echo 'Content-language: sl' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.ru' >> m68k-amiga-hungary.var
	echo 'Content-language: ru' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.zh-CN' >> m68k-amiga-hungary.var
	echo 'Content-language: zh-CN' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
../..//down/old/m68k-netbsd-hungary.html.bg: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.bg -oe iso-8859-5 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.en: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.en -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.fi: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.fi -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.fr: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.fr -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.id: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.id -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.it: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.it -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.nl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.nl -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.po: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.po -oe iso-8859-2 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.sl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.sl -oe iso-8859-2 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.ru: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.ru -oe iso-8859-5 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.zh-CN: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.zh-CN -oe UTF-8 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html -oe ISO-8859-1 m68k-netbsd.adp

../..//down/old/m68k-netbsd-hungary.var: gen_makefile.conf
	echo > m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.bg' >> m68k-netbsd-hungary.var
	echo 'Content-language: bg' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.en' >> m68k-netbsd-hungary.var
	echo 'Content-language: en' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.fi' >> m68k-netbsd-hungary.var
	echo 'Content-language: fi' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.fr' >> m68k-netbsd-hungary.var
	echo 'Content-language: fr' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.id' >> m68k-netbsd-hungary.var
	echo 'Content-language: id' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.it' >> m68k-netbsd-hungary.var
	echo 'Content-language: it' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.nl' >> m68k-netbsd-hungary.var
	echo 'Content-language: nl' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.po' >> m68k-netbsd-hungary.var
	echo 'Content-language: pl' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.sl' >> m68k-netbsd-hungary.var
	echo 'Content-language: sl' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.ru' >> m68k-netbsd-hungary.var
	echo 'Content-language: ru' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.zh-CN' >> m68k-netbsd-hungary.var
	echo 'Content-language: zh-CN' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var

../..//down/old/docs.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o docs.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/docs.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/docs.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o docs.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/docs.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o docs.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/docs.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o docs.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/docs.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o docs.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/docs.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o docs.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/docs.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o docs.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/docs.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o docs.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/docs.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o docs.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/docs.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o docs.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/old/docs.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=docs -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/old/docs.var: gen_makefile.conf
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

../..//down/old/i386-beos.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-beos.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-beos.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-beos.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o i386-beos.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-beos.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-beos.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-beos.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-beos.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-beos.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-beos.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-beos.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-beos.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-beos.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-beos.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-beos.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-beos.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-beos.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-beos.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-beos.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o i386-beos.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/old/i386-beos.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=i386-beos -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/old/i386-beos.var: gen_makefile.conf
	echo > i386-beos.var
	echo 'URI: i386-beos.html.bg' >> i386-beos.var
	echo 'Content-language: bg' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.en' >> i386-beos.var
	echo 'Content-language: en' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.fi' >> i386-beos.var
	echo 'Content-language: fi' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.fr' >> i386-beos.var
	echo 'Content-language: fr' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.id' >> i386-beos.var
	echo 'Content-language: id' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.it' >> i386-beos.var
	echo 'Content-language: it' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.nl' >> i386-beos.var
	echo 'Content-language: nl' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.po' >> i386-beos.var
	echo 'Content-language: pl' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.sl' >> i386-beos.var
	echo 'Content-language: sl' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.ru' >> i386-beos.var
	echo 'Content-language: ru' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.zh-CN' >> i386-beos.var
	echo 'Content-language: zh-CN' >> i386-beos.var
	echo 'Content-type: text/html; charset=UTF-8' >> i386-beos.var
	echo >> i386-beos.var

../..//down/old/i386-emx.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-emx.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-emx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-emx.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o i386-emx.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-emx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-emx.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-emx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-emx.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-emx.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-emx.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-emx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-emx.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-emx.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-emx.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-emx.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-emx.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-emx.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-emx.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-emx.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o i386-emx.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/old/i386-emx.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=i386-emx -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/old/i386-emx.var: gen_makefile.conf
	echo > i386-emx.var
	echo 'URI: i386-emx.html.bg' >> i386-emx.var
	echo 'Content-language: bg' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.en' >> i386-emx.var
	echo 'Content-language: en' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.fi' >> i386-emx.var
	echo 'Content-language: fi' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.fr' >> i386-emx.var
	echo 'Content-language: fr' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.id' >> i386-emx.var
	echo 'Content-language: id' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.it' >> i386-emx.var
	echo 'Content-language: it' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.nl' >> i386-emx.var
	echo 'Content-language: nl' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.po' >> i386-emx.var
	echo 'Content-language: pl' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.sl' >> i386-emx.var
	echo 'Content-language: sl' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.ru' >> i386-emx.var
	echo 'Content-language: ru' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.zh-CN' >> i386-emx.var
	echo 'Content-language: zh-CN' >> i386-emx.var
	echo 'Content-type: text/html; charset=UTF-8' >> i386-emx.var
	echo >> i386-emx.var

../..//down/old/i386-netbsd.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-netbsd.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o i386-netbsd.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-netbsd.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-netbsd.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-netbsd.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-netbsd.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-netbsd.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-netbsd.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-netbsd.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o i386-netbsd.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/old/i386-netbsd.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=i386-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/old/i386-netbsd.var: gen_makefile.conf
	echo > i386-netbsd.var
	echo 'URI: i386-netbsd.html.bg' >> i386-netbsd.var
	echo 'Content-language: bg' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.en' >> i386-netbsd.var
	echo 'Content-language: en' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.fi' >> i386-netbsd.var
	echo 'Content-language: fi' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.fr' >> i386-netbsd.var
	echo 'Content-language: fr' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.id' >> i386-netbsd.var
	echo 'Content-language: id' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.it' >> i386-netbsd.var
	echo 'Content-language: it' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.nl' >> i386-netbsd.var
	echo 'Content-language: nl' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.po' >> i386-netbsd.var
	echo 'Content-language: pl' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.sl' >> i386-netbsd.var
	echo 'Content-language: sl' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.ru' >> i386-netbsd.var
	echo 'Content-language: ru' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.zh-CN' >> i386-netbsd.var
	echo 'Content-language: zh-CN' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=UTF-8' >> i386-netbsd.var
	echo >> i386-netbsd.var

../..//down/old/i386-solaris.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-solaris.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-solaris.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-solaris.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o i386-solaris.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-solaris.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-solaris.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-solaris.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-solaris.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-solaris.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-solaris.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-solaris.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-solaris.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-solaris.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-solaris.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-solaris.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-solaris.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-solaris.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-solaris.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-solaris.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o i386-solaris.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/old/i386-solaris.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=i386-solaris -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/old/i386-solaris.var: gen_makefile.conf
	echo > i386-solaris.var
	echo 'URI: i386-solaris.html.bg' >> i386-solaris.var
	echo 'Content-language: bg' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.en' >> i386-solaris.var
	echo 'Content-language: en' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.fi' >> i386-solaris.var
	echo 'Content-language: fi' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.fr' >> i386-solaris.var
	echo 'Content-language: fr' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.id' >> i386-solaris.var
	echo 'Content-language: id' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.it' >> i386-solaris.var
	echo 'Content-language: it' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.nl' >> i386-solaris.var
	echo 'Content-language: nl' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.po' >> i386-solaris.var
	echo 'Content-language: pl' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.sl' >> i386-solaris.var
	echo 'Content-language: sl' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.ru' >> i386-solaris.var
	echo 'Content-language: ru' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.zh-CN' >> i386-solaris.var
	echo 'Content-language: zh-CN' >> i386-solaris.var
	echo 'Content-type: text/html; charset=UTF-8' >> i386-solaris.var
	echo >> i386-solaris.var

../..//down/old/m68k-linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/m68k-linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o m68k-linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/m68k-linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/m68k-linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/m68k-linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o m68k-linux.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/old/m68k-linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=m68k-linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/old/m68k-linux.var: gen_makefile.conf
	echo > m68k-linux.var
	echo 'URI: m68k-linux.html.bg' >> m68k-linux.var
	echo 'Content-language: bg' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.en' >> m68k-linux.var
	echo 'Content-language: en' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.fi' >> m68k-linux.var
	echo 'Content-language: fi' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.fr' >> m68k-linux.var
	echo 'Content-language: fr' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.id' >> m68k-linux.var
	echo 'Content-language: id' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.it' >> m68k-linux.var
	echo 'Content-language: it' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.nl' >> m68k-linux.var
	echo 'Content-language: nl' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.po' >> m68k-linux.var
	echo 'Content-language: pl' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.sl' >> m68k-linux.var
	echo 'Content-language: sl' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.ru' >> m68k-linux.var
	echo 'Content-language: ru' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.zh-CN' >> m68k-linux.var
	echo 'Content-language: zh-CN' >> m68k-linux.var
	echo 'Content-type: text/html; charset=UTF-8' >> m68k-linux.var
	echo >> m68k-linux.var

../..//down/old/down.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o down.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/down.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/down.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o down.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/down.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o down.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/down.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o down.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/down.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o down.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/down.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o down.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/down.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o down.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/down.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o down.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/down.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o down.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/down.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o down.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/old/down.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=down -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/old/down.var: gen_makefile.conf
	echo > down.var
	echo 'URI: down.html.bg' >> down.var
	echo 'Content-language: bg' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down.var
	echo >> down.var
	echo 'URI: down.html.en' >> down.var
	echo 'Content-language: en' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down.var
	echo >> down.var
	echo 'URI: down.html.fi' >> down.var
	echo 'Content-language: fi' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down.var
	echo >> down.var
	echo 'URI: down.html.fr' >> down.var
	echo 'Content-language: fr' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down.var
	echo >> down.var
	echo 'URI: down.html.id' >> down.var
	echo 'Content-language: id' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down.var
	echo >> down.var
	echo 'URI: down.html.it' >> down.var
	echo 'Content-language: it' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down.var
	echo >> down.var
	echo 'URI: down.html.nl' >> down.var
	echo 'Content-language: nl' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down.var
	echo >> down.var
	echo 'URI: down.html.po' >> down.var
	echo 'Content-language: pl' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down.var
	echo >> down.var
	echo 'URI: down.html.sl' >> down.var
	echo 'Content-language: sl' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down.var
	echo >> down.var
	echo 'URI: down.html.ru' >> down.var
	echo 'Content-language: ru' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down.var
	echo >> down.var
	echo 'URI: down.html.zh-CN' >> down.var
	echo 'Content-language: zh-CN' >> down.var
	echo 'Content-type: text/html; charset=UTF-8' >> down.var
	echo >> down.var

../..//down/old/i386-go32v2.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-go32v2.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o i386-go32v2.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-go32v2.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-go32v2.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-go32v2.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-go32v2.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-go32v2.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-go32v2.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-go32v2.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o i386-go32v2.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/old/i386-go32v2.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=i386-go32v2 -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/old/i386-go32v2.var: gen_makefile.conf
	echo > i386-go32v2.var
	echo 'URI: i386-go32v2.html.bg' >> i386-go32v2.var
	echo 'Content-language: bg' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.en' >> i386-go32v2.var
	echo 'Content-language: en' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.fi' >> i386-go32v2.var
	echo 'Content-language: fi' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.fr' >> i386-go32v2.var
	echo 'Content-language: fr' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.id' >> i386-go32v2.var
	echo 'Content-language: id' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.it' >> i386-go32v2.var
	echo 'Content-language: it' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.nl' >> i386-go32v2.var
	echo 'Content-language: nl' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.po' >> i386-go32v2.var
	echo 'Content-language: pl' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.sl' >> i386-go32v2.var
	echo 'Content-language: sl' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.ru' >> i386-go32v2.var
	echo 'Content-language: ru' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.zh-CN' >> i386-go32v2.var
	echo 'Content-language: zh-CN' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=UTF-8' >> i386-go32v2.var
	echo >> i386-go32v2.var

../..//down/old/i386-qnx.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-qnx.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-qnx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-qnx.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o i386-qnx.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-qnx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-qnx.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-qnx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-qnx.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-qnx.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-qnx.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-qnx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-qnx.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-qnx.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-qnx.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-qnx.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-qnx.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-qnx.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-qnx.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-qnx.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o i386-qnx.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/old/i386-qnx.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=i386-qnx -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/old/i386-qnx.var: gen_makefile.conf
	echo > i386-qnx.var
	echo 'URI: i386-qnx.html.bg' >> i386-qnx.var
	echo 'Content-language: bg' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.en' >> i386-qnx.var
	echo 'Content-language: en' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.fi' >> i386-qnx.var
	echo 'Content-language: fi' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.fr' >> i386-qnx.var
	echo 'Content-language: fr' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.id' >> i386-qnx.var
	echo 'Content-language: id' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.it' >> i386-qnx.var
	echo 'Content-language: it' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.nl' >> i386-qnx.var
	echo 'Content-language: nl' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.po' >> i386-qnx.var
	echo 'Content-language: pl' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.sl' >> i386-qnx.var
	echo 'Content-language: sl' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.ru' >> i386-qnx.var
	echo 'Content-language: ru' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.zh-CN' >> i386-qnx.var
	echo 'Content-language: zh-CN' >> i386-qnx.var
	echo 'Content-type: text/html; charset=UTF-8' >> i386-qnx.var
	echo >> i386-qnx.var

../..//down/old/m68k-amiga.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-amiga.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o m68k-amiga.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-amiga.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-amiga.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-amiga.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-amiga.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-amiga.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-amiga.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-amiga.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o m68k-amiga.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/old/m68k-amiga.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=m68k-amiga -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/old/m68k-amiga.var: gen_makefile.conf
	echo > m68k-amiga.var
	echo 'URI: m68k-amiga.html.bg' >> m68k-amiga.var
	echo 'Content-language: bg' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.en' >> m68k-amiga.var
	echo 'Content-language: en' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.fi' >> m68k-amiga.var
	echo 'Content-language: fi' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.fr' >> m68k-amiga.var
	echo 'Content-language: fr' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.id' >> m68k-amiga.var
	echo 'Content-language: id' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.it' >> m68k-amiga.var
	echo 'Content-language: it' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.nl' >> m68k-amiga.var
	echo 'Content-language: nl' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.po' >> m68k-amiga.var
	echo 'Content-language: pl' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.sl' >> m68k-amiga.var
	echo 'Content-language: sl' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.ru' >> m68k-amiga.var
	echo 'Content-language: ru' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.zh-CN' >> m68k-amiga.var
	echo 'Content-language: zh-CN' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=UTF-8' >> m68k-amiga.var
	echo >> m68k-amiga.var

../..//down/old/m68k-netbsd.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-netbsd.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o m68k-netbsd.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-netbsd.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-netbsd.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-netbsd.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-netbsd.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-netbsd.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-netbsd.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-netbsd.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o m68k-netbsd.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=m68k-netbsd -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/old/m68k-netbsd.var: gen_makefile.conf
	echo > m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.bg' >> m68k-netbsd.var
	echo 'Content-language: bg' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.en' >> m68k-netbsd.var
	echo 'Content-language: en' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.fi' >> m68k-netbsd.var
	echo 'Content-language: fi' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.fr' >> m68k-netbsd.var
	echo 'Content-language: fr' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.id' >> m68k-netbsd.var
	echo 'Content-language: id' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.it' >> m68k-netbsd.var
	echo 'Content-language: it' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.nl' >> m68k-netbsd.var
	echo 'Content-language: nl' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.po' >> m68k-netbsd.var
	echo 'Content-language: pl' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.sl' >> m68k-netbsd.var
	echo 'Content-language: sl' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.ru' >> m68k-netbsd.var
	echo 'Content-language: ru' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.zh-CN' >> m68k-netbsd.var
	echo 'Content-language: zh-CN' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=UTF-8' >> m68k-netbsd.var
	echo >> m68k-netbsd.var

mirrors.dat:
	$(shell echo 'name\tnamel\turl' > mirrors.dat)
	$(shell echo 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../..//down/old/docs-hungary.html.bg ../..//down/old/docs-hungary.html.en ../..//down/old/docs-hungary.html.fi ../..//down/old/docs-hungary.html.fr ../..//down/old/docs-hungary.html.id ../..//down/old/docs-hungary.html.it ../..//down/old/docs-hungary.html.nl ../..//down/old/docs-hungary.html.po ../..//down/old/docs-hungary.html.sl ../..//down/old/docs-hungary.html.ru ../..//down/old/docs-hungary.html.zh-CN ../..//down/old/docs-hungary.var ../..//down/old/i386-beos-hungary.html.bg ../..//down/old/i386-beos-hungary.html.en ../..//down/old/i386-beos-hungary.html.fi ../..//down/old/i386-beos-hungary.html.fr ../..//down/old/i386-beos-hungary.html.id ../..//down/old/i386-beos-hungary.html.it ../..//down/old/i386-beos-hungary.html.nl ../..//down/old/i386-beos-hungary.html.po ../..//down/old/i386-beos-hungary.html.sl ../..//down/old/i386-beos-hungary.html.ru ../..//down/old/i386-beos-hungary.html.zh-CN ../..//down/old/i386-beos-hungary.var ../..//down/old/i386-emx-hungary.html.bg ../..//down/old/i386-emx-hungary.html.en ../..//down/old/i386-emx-hungary.html.fi ../..//down/old/i386-emx-hungary.html.fr ../..//down/old/i386-emx-hungary.html.id ../..//down/old/i386-emx-hungary.html.it ../..//down/old/i386-emx-hungary.html.nl ../..//down/old/i386-emx-hungary.html.po ../..//down/old/i386-emx-hungary.html.sl ../..//down/old/i386-emx-hungary.html.ru ../..//down/old/i386-emx-hungary.html.zh-CN ../..//down/old/i386-emx-hungary.var ../..//down/old/i386-netbsd-hungary.html.bg ../..//down/old/i386-netbsd-hungary.html.en ../..//down/old/i386-netbsd-hungary.html.fi ../..//down/old/i386-netbsd-hungary.html.fr ../..//down/old/i386-netbsd-hungary.html.id ../..//down/old/i386-netbsd-hungary.html.it ../..//down/old/i386-netbsd-hungary.html.nl ../..//down/old/i386-netbsd-hungary.html.po ../..//down/old/i386-netbsd-hungary.html.sl ../..//down/old/i386-netbsd-hungary.html.ru ../..//down/old/i386-netbsd-hungary.html.zh-CN ../..//down/old/i386-netbsd-hungary.var ../..//down/old/i386-solaris-hungary.html.bg ../..//down/old/i386-solaris-hungary.html.en ../..//down/old/i386-solaris-hungary.html.fi ../..//down/old/i386-solaris-hungary.html.fr ../..//down/old/i386-solaris-hungary.html.id ../..//down/old/i386-solaris-hungary.html.it ../..//down/old/i386-solaris-hungary.html.nl ../..//down/old/i386-solaris-hungary.html.po ../..//down/old/i386-solaris-hungary.html.sl ../..//down/old/i386-solaris-hungary.html.ru ../..//down/old/i386-solaris-hungary.html.zh-CN ../..//down/old/i386-solaris-hungary.var ../..//down/old/m68k-linux-hungary.html.bg ../..//down/old/m68k-linux-hungary.html.en ../..//down/old/m68k-linux-hungary.html.fi ../..//down/old/m68k-linux-hungary.html.fr ../..//down/old/m68k-linux-hungary.html.id ../..//down/old/m68k-linux-hungary.html.it ../..//down/old/m68k-linux-hungary.html.nl ../..//down/old/m68k-linux-hungary.html.po ../..//down/old/m68k-linux-hungary.html.sl ../..//down/old/m68k-linux-hungary.html.ru ../..//down/old/m68k-linux-hungary.html.zh-CN ../..//down/old/m68k-linux-hungary.var ../..//down/old/down-hungary.html.bg ../..//down/old/down-hungary.html.en ../..//down/old/down-hungary.html.fi ../..//down/old/down-hungary.html.fr ../..//down/old/down-hungary.html.id ../..//down/old/down-hungary.html.it ../..//down/old/down-hungary.html.nl ../..//down/old/down-hungary.html.po ../..//down/old/down-hungary.html.sl ../..//down/old/down-hungary.html.ru ../..//down/old/down-hungary.html.zh-CN ../..//down/old/down-hungary.var ../..//down/old/i386-go32v2-hungary.html.bg ../..//down/old/i386-go32v2-hungary.html.en ../..//down/old/i386-go32v2-hungary.html.fi ../..//down/old/i386-go32v2-hungary.html.fr ../..//down/old/i386-go32v2-hungary.html.id ../..//down/old/i386-go32v2-hungary.html.it ../..//down/old/i386-go32v2-hungary.html.nl ../..//down/old/i386-go32v2-hungary.html.po ../..//down/old/i386-go32v2-hungary.html.sl ../..//down/old/i386-go32v2-hungary.html.ru ../..//down/old/i386-go32v2-hungary.html.zh-CN ../..//down/old/i386-go32v2-hungary.var ../..//down/old/i386-qnx-hungary.html.bg ../..//down/old/i386-qnx-hungary.html.en ../..//down/old/i386-qnx-hungary.html.fi ../..//down/old/i386-qnx-hungary.html.fr ../..//down/old/i386-qnx-hungary.html.id ../..//down/old/i386-qnx-hungary.html.it ../..//down/old/i386-qnx-hungary.html.nl ../..//down/old/i386-qnx-hungary.html.po ../..//down/old/i386-qnx-hungary.html.sl ../..//down/old/i386-qnx-hungary.html.ru ../..//down/old/i386-qnx-hungary.html.zh-CN ../..//down/old/i386-qnx-hungary.var ../..//down/old/m68k-amiga-hungary.html.bg ../..//down/old/m68k-amiga-hungary.html.en ../..//down/old/m68k-amiga-hungary.html.fi ../..//down/old/m68k-amiga-hungary.html.fr ../..//down/old/m68k-amiga-hungary.html.id ../..//down/old/m68k-amiga-hungary.html.it ../..//down/old/m68k-amiga-hungary.html.nl ../..//down/old/m68k-amiga-hungary.html.po ../..//down/old/m68k-amiga-hungary.html.sl ../..//down/old/m68k-amiga-hungary.html.ru ../..//down/old/m68k-amiga-hungary.html.zh-CN ../..//down/old/m68k-amiga-hungary.var ../..//down/old/m68k-netbsd-hungary.html.bg ../..//down/old/m68k-netbsd-hungary.html.en ../..//down/old/m68k-netbsd-hungary.html.fi ../..//down/old/m68k-netbsd-hungary.html.fr ../..//down/old/m68k-netbsd-hungary.html.id ../..//down/old/m68k-netbsd-hungary.html.it ../..//down/old/m68k-netbsd-hungary.html.nl ../..//down/old/m68k-netbsd-hungary.html.po ../..//down/old/m68k-netbsd-hungary.html.sl ../..//down/old/m68k-netbsd-hungary.html.ru ../..//down/old/m68k-netbsd-hungary.html.zh-CN ../..//down/old/m68k-netbsd-hungary.var ../..//down/old/docs.html.bg ../..//down/old/docs.html.en ../..//down/old/docs.html.fi ../..//down/old/docs.html.fr ../..//down/old/docs.html.id ../..//down/old/docs.html.it ../..//down/old/docs.html.nl ../..//down/old/docs.html.po ../..//down/old/docs.html.sl ../..//down/old/docs.html.ru ../..//down/old/docs.html.zh-CN ../..//down/old/docs.var ../..//down/old/i386-beos.html.bg ../..//down/old/i386-beos.html.en ../..//down/old/i386-beos.html.fi ../..//down/old/i386-beos.html.fr ../..//down/old/i386-beos.html.id ../..//down/old/i386-beos.html.it ../..//down/old/i386-beos.html.nl ../..//down/old/i386-beos.html.po ../..//down/old/i386-beos.html.sl ../..//down/old/i386-beos.html.ru ../..//down/old/i386-beos.html.zh-CN ../..//down/old/i386-beos.var ../..//down/old/i386-emx.html.bg ../..//down/old/i386-emx.html.en ../..//down/old/i386-emx.html.fi ../..//down/old/i386-emx.html.fr ../..//down/old/i386-emx.html.id ../..//down/old/i386-emx.html.it ../..//down/old/i386-emx.html.nl ../..//down/old/i386-emx.html.po ../..//down/old/i386-emx.html.sl ../..//down/old/i386-emx.html.ru ../..//down/old/i386-emx.html.zh-CN ../..//down/old/i386-emx.var ../..//down/old/i386-netbsd.html.bg ../..//down/old/i386-netbsd.html.en ../..//down/old/i386-netbsd.html.fi ../..//down/old/i386-netbsd.html.fr ../..//down/old/i386-netbsd.html.id ../..//down/old/i386-netbsd.html.it ../..//down/old/i386-netbsd.html.nl ../..//down/old/i386-netbsd.html.po ../..//down/old/i386-netbsd.html.sl ../..//down/old/i386-netbsd.html.ru ../..//down/old/i386-netbsd.html.zh-CN ../..//down/old/i386-netbsd.var ../..//down/old/i386-solaris.html.bg ../..//down/old/i386-solaris.html.en ../..//down/old/i386-solaris.html.fi ../..//down/old/i386-solaris.html.fr ../..//down/old/i386-solaris.html.id ../..//down/old/i386-solaris.html.it ../..//down/old/i386-solaris.html.nl ../..//down/old/i386-solaris.html.po ../..//down/old/i386-solaris.html.sl ../..//down/old/i386-solaris.html.ru ../..//down/old/i386-solaris.html.zh-CN ../..//down/old/i386-solaris.var ../..//down/old/m68k-linux.html.bg ../..//down/old/m68k-linux.html.en ../..//down/old/m68k-linux.html.fi ../..//down/old/m68k-linux.html.fr ../..//down/old/m68k-linux.html.id ../..//down/old/m68k-linux.html.it ../..//down/old/m68k-linux.html.nl ../..//down/old/m68k-linux.html.po ../..//down/old/m68k-linux.html.sl ../..//down/old/m68k-linux.html.ru ../..//down/old/m68k-linux.html.zh-CN ../..//down/old/m68k-linux.var ../..//down/old/down.html.bg ../..//down/old/down.html.en ../..//down/old/down.html.fi ../..//down/old/down.html.fr ../..//down/old/down.html.id ../..//down/old/down.html.it ../..//down/old/down.html.nl ../..//down/old/down.html.po ../..//down/old/down.html.sl ../..//down/old/down.html.ru ../..//down/old/down.html.zh-CN ../..//down/old/down.var ../..//down/old/i386-go32v2.html.bg ../..//down/old/i386-go32v2.html.en ../..//down/old/i386-go32v2.html.fi ../..//down/old/i386-go32v2.html.fr ../..//down/old/i386-go32v2.html.id ../..//down/old/i386-go32v2.html.it ../..//down/old/i386-go32v2.html.nl ../..//down/old/i386-go32v2.html.po ../..//down/old/i386-go32v2.html.sl ../..//down/old/i386-go32v2.html.ru ../..//down/old/i386-go32v2.html.zh-CN ../..//down/old/i386-go32v2.var ../..//down/old/i386-qnx.html.bg ../..//down/old/i386-qnx.html.en ../..//down/old/i386-qnx.html.fi ../..//down/old/i386-qnx.html.fr ../..//down/old/i386-qnx.html.id ../..//down/old/i386-qnx.html.it ../..//down/old/i386-qnx.html.nl ../..//down/old/i386-qnx.html.po ../..//down/old/i386-qnx.html.sl ../..//down/old/i386-qnx.html.ru ../..//down/old/i386-qnx.html.zh-CN ../..//down/old/i386-qnx.var ../..//down/old/m68k-amiga.html.bg ../..//down/old/m68k-amiga.html.en ../..//down/old/m68k-amiga.html.fi ../..//down/old/m68k-amiga.html.fr ../..//down/old/m68k-amiga.html.id ../..//down/old/m68k-amiga.html.it ../..//down/old/m68k-amiga.html.nl ../..//down/old/m68k-amiga.html.po ../..//down/old/m68k-amiga.html.sl ../..//down/old/m68k-amiga.html.ru ../..//down/old/m68k-amiga.html.zh-CN ../..//down/old/m68k-amiga.var ../..//down/old/m68k-netbsd.html.bg ../..//down/old/m68k-netbsd.html.en ../..//down/old/m68k-netbsd.html.fi ../..//down/old/m68k-netbsd.html.fr ../..//down/old/m68k-netbsd.html.id ../..//down/old/m68k-netbsd.html.it ../..//down/old/m68k-netbsd.html.nl ../..//down/old/m68k-netbsd.html.po ../..//down/old/m68k-netbsd.html.sl ../..//down/old/m68k-netbsd.html.ru ../..//down/old/m68k-netbsd.html.zh-CN ../..//down/old/m68k-netbsd.var
all_en_pages: mirrors.dat ../..//down/old/docs-hungary.html ../..//down/old/i386-beos-hungary.html ../..//down/old/i386-emx-hungary.html ../..//down/old/i386-netbsd-hungary.html ../..//down/old/i386-solaris-hungary.html ../..//down/old/m68k-linux-hungary.html ../..//down/old/down-hungary.html ../..//down/old/i386-go32v2-hungary.html ../..//down/old/i386-qnx-hungary.html ../..//down/old/m68k-amiga-hungary.html ../..//down/old/m68k-netbsd-hungary.html ../..//down/old/docs.html ../..//down/old/i386-beos.html ../..//down/old/i386-emx.html ../..//down/old/i386-netbsd.html ../..//down/old/i386-solaris.html ../..//down/old/m68k-linux.html ../..//down/old/down.html ../..//down/old/i386-go32v2.html ../..//down/old/i386-qnx.html ../..//down/old/m68k-amiga.html ../..//down/old/m68k-netbsd.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/old/

