
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
../..//down/old/docs-austria.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//docs-austria.html.bg -oe iso-8859-5 docs.adp
../..//down/old/docs-austria.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//docs-austria.html.en -oe iso-8859-1 docs.adp
../..//down/old/docs-austria.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//docs-austria.html.fi -oe iso-8859-1 docs.adp
../..//down/old/docs-austria.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//docs-austria.html.fr -oe iso-8859-1 docs.adp
../..//down/old/docs-austria.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//docs-austria.html.id -oe iso-8859-1 docs.adp
../..//down/old/docs-austria.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//docs-austria.html.it -oe iso-8859-1 docs.adp
../..//down/old/docs-austria.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//docs-austria.html.nl -oe iso-8859-1 docs.adp
../..//down/old/docs-austria.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//docs-austria.html.po -oe iso-8859-2 docs.adp
../..//down/old/docs-austria.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//docs-austria.html.sl -oe iso-8859-2 docs.adp
../..//down/old/docs-austria.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//docs-austria.html.ru -oe iso-8859-5 docs.adp
../..//down/old/docs-austria.html.zh-CN: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//docs-austria.html.zh-CN -oe utf-16 docs.adp
../..//down/old/docs-austria.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//docs-austria.html -oe ISO-8859-1 docs.adp

../..//down/old/docs-austria.var: gen_makefile.conf
	echo > docs-austria.var
	echo 'URI: docs-austria.html.bg' >> docs-austria.var
	echo 'Content-language: bg' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.en' >> docs-austria.var
	echo 'Content-language: en' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.fi' >> docs-austria.var
	echo 'Content-language: fi' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.fr' >> docs-austria.var
	echo 'Content-language: fr' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.id' >> docs-austria.var
	echo 'Content-language: id' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.it' >> docs-austria.var
	echo 'Content-language: it' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.nl' >> docs-austria.var
	echo 'Content-language: nl' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.po' >> docs-austria.var
	echo 'Content-language: pl' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.sl' >> docs-austria.var
	echo 'Content-language: sl' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.ru' >> docs-austria.var
	echo 'Content-language: ru' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.zh-CN' >> docs-austria.var
	echo 'Content-language: zh-CN' >> docs-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> docs-austria.var
	echo >> docs-austria.var
../..//down/old/i386-beos-austria.html.bg: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-beos-austria.html.bg -oe iso-8859-5 i386-beos.adp
../..//down/old/i386-beos-austria.html.en: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-beos-austria.html.en -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-austria.html.fi: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-beos-austria.html.fi -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-austria.html.fr: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-beos-austria.html.fr -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-austria.html.id: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-beos-austria.html.id -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-austria.html.it: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-beos-austria.html.it -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-austria.html.nl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-beos-austria.html.nl -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-austria.html.po: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-beos-austria.html.po -oe iso-8859-2 i386-beos.adp
../..//down/old/i386-beos-austria.html.sl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-beos-austria.html.sl -oe iso-8859-2 i386-beos.adp
../..//down/old/i386-beos-austria.html.ru: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-beos-austria.html.ru -oe iso-8859-5 i386-beos.adp
../..//down/old/i386-beos-austria.html.zh-CN: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-beos-austria.html.zh-CN -oe utf-16 i386-beos.adp
../..//down/old/i386-beos-austria.html: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-beos-austria.html -oe ISO-8859-1 i386-beos.adp

../..//down/old/i386-beos-austria.var: gen_makefile.conf
	echo > i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.bg' >> i386-beos-austria.var
	echo 'Content-language: bg' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.en' >> i386-beos-austria.var
	echo 'Content-language: en' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.fi' >> i386-beos-austria.var
	echo 'Content-language: fi' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.fr' >> i386-beos-austria.var
	echo 'Content-language: fr' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.id' >> i386-beos-austria.var
	echo 'Content-language: id' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.it' >> i386-beos-austria.var
	echo 'Content-language: it' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.nl' >> i386-beos-austria.var
	echo 'Content-language: nl' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.po' >> i386-beos-austria.var
	echo 'Content-language: pl' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.sl' >> i386-beos-austria.var
	echo 'Content-language: sl' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.ru' >> i386-beos-austria.var
	echo 'Content-language: ru' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.zh-CN' >> i386-beos-austria.var
	echo 'Content-language: zh-CN' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
../..//down/old/i386-emx-austria.html.bg: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-emx-austria.html.bg -oe iso-8859-5 i386-emx.adp
../..//down/old/i386-emx-austria.html.en: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-emx-austria.html.en -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-austria.html.fi: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-emx-austria.html.fi -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-austria.html.fr: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-emx-austria.html.fr -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-austria.html.id: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-emx-austria.html.id -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-austria.html.it: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-emx-austria.html.it -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-austria.html.nl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-emx-austria.html.nl -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-austria.html.po: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-emx-austria.html.po -oe iso-8859-2 i386-emx.adp
../..//down/old/i386-emx-austria.html.sl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-emx-austria.html.sl -oe iso-8859-2 i386-emx.adp
../..//down/old/i386-emx-austria.html.ru: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-emx-austria.html.ru -oe iso-8859-5 i386-emx.adp
../..//down/old/i386-emx-austria.html.zh-CN: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-emx-austria.html.zh-CN -oe utf-16 i386-emx.adp
../..//down/old/i386-emx-austria.html: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-emx-austria.html -oe ISO-8859-1 i386-emx.adp

../..//down/old/i386-emx-austria.var: gen_makefile.conf
	echo > i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.bg' >> i386-emx-austria.var
	echo 'Content-language: bg' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.en' >> i386-emx-austria.var
	echo 'Content-language: en' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.fi' >> i386-emx-austria.var
	echo 'Content-language: fi' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.fr' >> i386-emx-austria.var
	echo 'Content-language: fr' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.id' >> i386-emx-austria.var
	echo 'Content-language: id' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.it' >> i386-emx-austria.var
	echo 'Content-language: it' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.nl' >> i386-emx-austria.var
	echo 'Content-language: nl' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.po' >> i386-emx-austria.var
	echo 'Content-language: pl' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.sl' >> i386-emx-austria.var
	echo 'Content-language: sl' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.ru' >> i386-emx-austria.var
	echo 'Content-language: ru' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.zh-CN' >> i386-emx-austria.var
	echo 'Content-language: zh-CN' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
../..//down/old/i386-netbsd-austria.html.bg: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-netbsd-austria.html.bg -oe iso-8859-5 i386-netbsd.adp
../..//down/old/i386-netbsd-austria.html.en: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-netbsd-austria.html.en -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-austria.html.fi: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-netbsd-austria.html.fi -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-austria.html.fr: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-netbsd-austria.html.fr -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-austria.html.id: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-netbsd-austria.html.id -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-austria.html.it: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-netbsd-austria.html.it -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-austria.html.nl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-netbsd-austria.html.nl -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-austria.html.po: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-netbsd-austria.html.po -oe iso-8859-2 i386-netbsd.adp
../..//down/old/i386-netbsd-austria.html.sl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-netbsd-austria.html.sl -oe iso-8859-2 i386-netbsd.adp
../..//down/old/i386-netbsd-austria.html.ru: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-netbsd-austria.html.ru -oe iso-8859-5 i386-netbsd.adp
../..//down/old/i386-netbsd-austria.html.zh-CN: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-netbsd-austria.html.zh-CN -oe utf-16 i386-netbsd.adp
../..//down/old/i386-netbsd-austria.html: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-netbsd-austria.html -oe ISO-8859-1 i386-netbsd.adp

../..//down/old/i386-netbsd-austria.var: gen_makefile.conf
	echo > i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.bg' >> i386-netbsd-austria.var
	echo 'Content-language: bg' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.en' >> i386-netbsd-austria.var
	echo 'Content-language: en' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.fi' >> i386-netbsd-austria.var
	echo 'Content-language: fi' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.fr' >> i386-netbsd-austria.var
	echo 'Content-language: fr' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.id' >> i386-netbsd-austria.var
	echo 'Content-language: id' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.it' >> i386-netbsd-austria.var
	echo 'Content-language: it' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.nl' >> i386-netbsd-austria.var
	echo 'Content-language: nl' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.po' >> i386-netbsd-austria.var
	echo 'Content-language: pl' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.sl' >> i386-netbsd-austria.var
	echo 'Content-language: sl' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.ru' >> i386-netbsd-austria.var
	echo 'Content-language: ru' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.zh-CN' >> i386-netbsd-austria.var
	echo 'Content-language: zh-CN' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
../..//down/old/i386-solaris-austria.html.bg: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-solaris-austria.html.bg -oe iso-8859-5 i386-solaris.adp
../..//down/old/i386-solaris-austria.html.en: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-solaris-austria.html.en -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-austria.html.fi: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-solaris-austria.html.fi -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-austria.html.fr: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-solaris-austria.html.fr -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-austria.html.id: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-solaris-austria.html.id -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-austria.html.it: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-solaris-austria.html.it -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-austria.html.nl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-solaris-austria.html.nl -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-austria.html.po: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-solaris-austria.html.po -oe iso-8859-2 i386-solaris.adp
../..//down/old/i386-solaris-austria.html.sl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-solaris-austria.html.sl -oe iso-8859-2 i386-solaris.adp
../..//down/old/i386-solaris-austria.html.ru: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-solaris-austria.html.ru -oe iso-8859-5 i386-solaris.adp
../..//down/old/i386-solaris-austria.html.zh-CN: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-solaris-austria.html.zh-CN -oe utf-16 i386-solaris.adp
../..//down/old/i386-solaris-austria.html: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-solaris-austria.html -oe ISO-8859-1 i386-solaris.adp

../..//down/old/i386-solaris-austria.var: gen_makefile.conf
	echo > i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.bg' >> i386-solaris-austria.var
	echo 'Content-language: bg' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.en' >> i386-solaris-austria.var
	echo 'Content-language: en' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.fi' >> i386-solaris-austria.var
	echo 'Content-language: fi' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.fr' >> i386-solaris-austria.var
	echo 'Content-language: fr' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.id' >> i386-solaris-austria.var
	echo 'Content-language: id' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.it' >> i386-solaris-austria.var
	echo 'Content-language: it' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.nl' >> i386-solaris-austria.var
	echo 'Content-language: nl' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.po' >> i386-solaris-austria.var
	echo 'Content-language: pl' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.sl' >> i386-solaris-austria.var
	echo 'Content-language: sl' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.ru' >> i386-solaris-austria.var
	echo 'Content-language: ru' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.zh-CN' >> i386-solaris-austria.var
	echo 'Content-language: zh-CN' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
../..//down/old/m68k-linux-austria.html.bg: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//m68k-linux-austria.html.bg -oe iso-8859-5 m68k-linux.adp
../..//down/old/m68k-linux-austria.html.en: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-linux-austria.html.en -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-austria.html.fi: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//m68k-linux-austria.html.fi -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-austria.html.fr: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//m68k-linux-austria.html.fr -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-austria.html.id: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//m68k-linux-austria.html.id -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-austria.html.it: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//m68k-linux-austria.html.it -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-austria.html.nl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//m68k-linux-austria.html.nl -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-austria.html.po: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//m68k-linux-austria.html.po -oe iso-8859-2 m68k-linux.adp
../..//down/old/m68k-linux-austria.html.sl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//m68k-linux-austria.html.sl -oe iso-8859-2 m68k-linux.adp
../..//down/old/m68k-linux-austria.html.ru: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//m68k-linux-austria.html.ru -oe iso-8859-5 m68k-linux.adp
../..//down/old/m68k-linux-austria.html.zh-CN: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//m68k-linux-austria.html.zh-CN -oe utf-16 m68k-linux.adp
../..//down/old/m68k-linux-austria.html: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-linux-austria.html -oe ISO-8859-1 m68k-linux.adp

../..//down/old/m68k-linux-austria.var: gen_makefile.conf
	echo > m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.bg' >> m68k-linux-austria.var
	echo 'Content-language: bg' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.en' >> m68k-linux-austria.var
	echo 'Content-language: en' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.fi' >> m68k-linux-austria.var
	echo 'Content-language: fi' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.fr' >> m68k-linux-austria.var
	echo 'Content-language: fr' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.id' >> m68k-linux-austria.var
	echo 'Content-language: id' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.it' >> m68k-linux-austria.var
	echo 'Content-language: it' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.nl' >> m68k-linux-austria.var
	echo 'Content-language: nl' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.po' >> m68k-linux-austria.var
	echo 'Content-language: pl' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.sl' >> m68k-linux-austria.var
	echo 'Content-language: sl' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.ru' >> m68k-linux-austria.var
	echo 'Content-language: ru' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.zh-CN' >> m68k-linux-austria.var
	echo 'Content-language: zh-CN' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
../..//down/old/down-austria.html.bg: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//down-austria.html.bg -oe iso-8859-5 down.adp
../..//down/old/down-austria.html.en: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//down-austria.html.en -oe iso-8859-1 down.adp
../..//down/old/down-austria.html.fi: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//down-austria.html.fi -oe iso-8859-1 down.adp
../..//down/old/down-austria.html.fr: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//down-austria.html.fr -oe iso-8859-1 down.adp
../..//down/old/down-austria.html.id: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//down-austria.html.id -oe iso-8859-1 down.adp
../..//down/old/down-austria.html.it: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//down-austria.html.it -oe iso-8859-1 down.adp
../..//down/old/down-austria.html.nl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//down-austria.html.nl -oe iso-8859-1 down.adp
../..//down/old/down-austria.html.po: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//down-austria.html.po -oe iso-8859-2 down.adp
../..//down/old/down-austria.html.sl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//down-austria.html.sl -oe iso-8859-2 down.adp
../..//down/old/down-austria.html.ru: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//down-austria.html.ru -oe iso-8859-5 down.adp
../..//down/old/down-austria.html.zh-CN: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//down-austria.html.zh-CN -oe utf-16 down.adp
../..//down/old/down-austria.html: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//down-austria.html -oe ISO-8859-1 down.adp

../..//down/old/down-austria.var: gen_makefile.conf
	echo > down-austria.var
	echo 'URI: down-austria.html.bg' >> down-austria.var
	echo 'Content-language: bg' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.en' >> down-austria.var
	echo 'Content-language: en' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.fi' >> down-austria.var
	echo 'Content-language: fi' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.fr' >> down-austria.var
	echo 'Content-language: fr' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.id' >> down-austria.var
	echo 'Content-language: id' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.it' >> down-austria.var
	echo 'Content-language: it' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.nl' >> down-austria.var
	echo 'Content-language: nl' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.po' >> down-austria.var
	echo 'Content-language: pl' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.sl' >> down-austria.var
	echo 'Content-language: sl' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.ru' >> down-austria.var
	echo 'Content-language: ru' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.zh-CN' >> down-austria.var
	echo 'Content-language: zh-CN' >> down-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> down-austria.var
	echo >> down-austria.var
../..//down/old/i386-go32v2-austria.html.bg: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-go32v2-austria.html.bg -oe iso-8859-5 i386-go32v2.adp
../..//down/old/i386-go32v2-austria.html.en: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-go32v2-austria.html.en -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-austria.html.fi: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-go32v2-austria.html.fi -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-austria.html.fr: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-go32v2-austria.html.fr -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-austria.html.id: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-go32v2-austria.html.id -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-austria.html.it: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-go32v2-austria.html.it -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-austria.html.nl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-go32v2-austria.html.nl -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-austria.html.po: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-go32v2-austria.html.po -oe iso-8859-2 i386-go32v2.adp
../..//down/old/i386-go32v2-austria.html.sl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-go32v2-austria.html.sl -oe iso-8859-2 i386-go32v2.adp
../..//down/old/i386-go32v2-austria.html.ru: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-go32v2-austria.html.ru -oe iso-8859-5 i386-go32v2.adp
../..//down/old/i386-go32v2-austria.html.zh-CN: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-go32v2-austria.html.zh-CN -oe utf-16 i386-go32v2.adp
../..//down/old/i386-go32v2-austria.html: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-go32v2-austria.html -oe ISO-8859-1 i386-go32v2.adp

../..//down/old/i386-go32v2-austria.var: gen_makefile.conf
	echo > i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.bg' >> i386-go32v2-austria.var
	echo 'Content-language: bg' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.en' >> i386-go32v2-austria.var
	echo 'Content-language: en' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.fi' >> i386-go32v2-austria.var
	echo 'Content-language: fi' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.fr' >> i386-go32v2-austria.var
	echo 'Content-language: fr' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.id' >> i386-go32v2-austria.var
	echo 'Content-language: id' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.it' >> i386-go32v2-austria.var
	echo 'Content-language: it' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.nl' >> i386-go32v2-austria.var
	echo 'Content-language: nl' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.po' >> i386-go32v2-austria.var
	echo 'Content-language: pl' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.sl' >> i386-go32v2-austria.var
	echo 'Content-language: sl' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.ru' >> i386-go32v2-austria.var
	echo 'Content-language: ru' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.zh-CN' >> i386-go32v2-austria.var
	echo 'Content-language: zh-CN' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
../..//down/old/i386-qnx-austria.html.bg: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-qnx-austria.html.bg -oe iso-8859-5 i386-qnx.adp
../..//down/old/i386-qnx-austria.html.en: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-qnx-austria.html.en -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-austria.html.fi: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-qnx-austria.html.fi -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-austria.html.fr: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-qnx-austria.html.fr -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-austria.html.id: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-qnx-austria.html.id -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-austria.html.it: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-qnx-austria.html.it -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-austria.html.nl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-qnx-austria.html.nl -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-austria.html.po: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-qnx-austria.html.po -oe iso-8859-2 i386-qnx.adp
../..//down/old/i386-qnx-austria.html.sl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-qnx-austria.html.sl -oe iso-8859-2 i386-qnx.adp
../..//down/old/i386-qnx-austria.html.ru: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-qnx-austria.html.ru -oe iso-8859-5 i386-qnx.adp
../..//down/old/i386-qnx-austria.html.zh-CN: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-qnx-austria.html.zh-CN -oe utf-16 i386-qnx.adp
../..//down/old/i386-qnx-austria.html: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-qnx-austria.html -oe ISO-8859-1 i386-qnx.adp

../..//down/old/i386-qnx-austria.var: gen_makefile.conf
	echo > i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.bg' >> i386-qnx-austria.var
	echo 'Content-language: bg' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.en' >> i386-qnx-austria.var
	echo 'Content-language: en' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.fi' >> i386-qnx-austria.var
	echo 'Content-language: fi' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.fr' >> i386-qnx-austria.var
	echo 'Content-language: fr' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.id' >> i386-qnx-austria.var
	echo 'Content-language: id' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.it' >> i386-qnx-austria.var
	echo 'Content-language: it' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.nl' >> i386-qnx-austria.var
	echo 'Content-language: nl' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.po' >> i386-qnx-austria.var
	echo 'Content-language: pl' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.sl' >> i386-qnx-austria.var
	echo 'Content-language: sl' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.ru' >> i386-qnx-austria.var
	echo 'Content-language: ru' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.zh-CN' >> i386-qnx-austria.var
	echo 'Content-language: zh-CN' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
../..//down/old/m68k-amiga-austria.html.bg: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//m68k-amiga-austria.html.bg -oe iso-8859-5 m68k-amiga.adp
../..//down/old/m68k-amiga-austria.html.en: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-amiga-austria.html.en -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-austria.html.fi: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//m68k-amiga-austria.html.fi -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-austria.html.fr: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//m68k-amiga-austria.html.fr -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-austria.html.id: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//m68k-amiga-austria.html.id -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-austria.html.it: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//m68k-amiga-austria.html.it -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-austria.html.nl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//m68k-amiga-austria.html.nl -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-austria.html.po: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//m68k-amiga-austria.html.po -oe iso-8859-2 m68k-amiga.adp
../..//down/old/m68k-amiga-austria.html.sl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//m68k-amiga-austria.html.sl -oe iso-8859-2 m68k-amiga.adp
../..//down/old/m68k-amiga-austria.html.ru: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//m68k-amiga-austria.html.ru -oe iso-8859-5 m68k-amiga.adp
../..//down/old/m68k-amiga-austria.html.zh-CN: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//m68k-amiga-austria.html.zh-CN -oe utf-16 m68k-amiga.adp
../..//down/old/m68k-amiga-austria.html: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-amiga-austria.html -oe ISO-8859-1 m68k-amiga.adp

../..//down/old/m68k-amiga-austria.var: gen_makefile.conf
	echo > m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.bg' >> m68k-amiga-austria.var
	echo 'Content-language: bg' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.en' >> m68k-amiga-austria.var
	echo 'Content-language: en' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.fi' >> m68k-amiga-austria.var
	echo 'Content-language: fi' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.fr' >> m68k-amiga-austria.var
	echo 'Content-language: fr' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.id' >> m68k-amiga-austria.var
	echo 'Content-language: id' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.it' >> m68k-amiga-austria.var
	echo 'Content-language: it' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.nl' >> m68k-amiga-austria.var
	echo 'Content-language: nl' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.po' >> m68k-amiga-austria.var
	echo 'Content-language: pl' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.sl' >> m68k-amiga-austria.var
	echo 'Content-language: sl' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.ru' >> m68k-amiga-austria.var
	echo 'Content-language: ru' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.zh-CN' >> m68k-amiga-austria.var
	echo 'Content-language: zh-CN' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
../..//down/old/m68k-netbsd-austria.html.bg: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-austria.html.bg -oe iso-8859-5 m68k-netbsd.adp
../..//down/old/m68k-netbsd-austria.html.en: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-austria.html.en -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-austria.html.fi: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-austria.html.fi -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-austria.html.fr: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-austria.html.fr -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-austria.html.id: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-austria.html.id -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-austria.html.it: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-austria.html.it -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-austria.html.nl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-austria.html.nl -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-austria.html.po: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-austria.html.po -oe iso-8859-2 m68k-netbsd.adp
../..//down/old/m68k-netbsd-austria.html.sl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-austria.html.sl -oe iso-8859-2 m68k-netbsd.adp
../..//down/old/m68k-netbsd-austria.html.ru: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-austria.html.ru -oe iso-8859-5 m68k-netbsd.adp
../..//down/old/m68k-netbsd-austria.html.zh-CN: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-austria.html.zh-CN -oe utf-16 m68k-netbsd.adp
../..//down/old/m68k-netbsd-austria.html: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-austria.html -oe ISO-8859-1 m68k-netbsd.adp

../..//down/old/m68k-netbsd-austria.var: gen_makefile.conf
	echo > m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.bg' >> m68k-netbsd-austria.var
	echo 'Content-language: bg' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.en' >> m68k-netbsd-austria.var
	echo 'Content-language: en' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.fi' >> m68k-netbsd-austria.var
	echo 'Content-language: fi' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.fr' >> m68k-netbsd-austria.var
	echo 'Content-language: fr' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.id' >> m68k-netbsd-austria.var
	echo 'Content-language: id' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.it' >> m68k-netbsd-austria.var
	echo 'Content-language: it' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.nl' >> m68k-netbsd-austria.var
	echo 'Content-language: nl' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.po' >> m68k-netbsd-austria.var
	echo 'Content-language: pl' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.sl' >> m68k-netbsd-austria.var
	echo 'Content-language: sl' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.ru' >> m68k-netbsd-austria.var
	echo 'Content-language: ru' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.zh-CN' >> m68k-netbsd-austria.var
	echo 'Content-language: zh-CN' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
../..//down/old/docs-hungary.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.bg -oe iso-8859-5 docs.adp
../..//down/old/docs-hungary.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.en -oe iso-8859-1 docs.adp
../..//down/old/docs-hungary.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.fi -oe iso-8859-1 docs.adp
../..//down/old/docs-hungary.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.fr -oe iso-8859-1 docs.adp
../..//down/old/docs-hungary.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.id -oe iso-8859-1 docs.adp
../..//down/old/docs-hungary.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.it -oe iso-8859-1 docs.adp
../..//down/old/docs-hungary.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.nl -oe iso-8859-1 docs.adp
../..//down/old/docs-hungary.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.po -oe iso-8859-2 docs.adp
../..//down/old/docs-hungary.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.sl -oe iso-8859-2 docs.adp
../..//down/old/docs-hungary.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.ru -oe iso-8859-5 docs.adp
../..//down/old/docs-hungary.html.zh-CN: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//docs-hungary.html.zh-CN -oe utf-16 docs.adp
../..//down/old/docs-hungary.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//docs-hungary.html -oe ISO-8859-1 docs.adp

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
	echo 'Content-type: text/html; charset=utf-16' >> docs-hungary.var
	echo >> docs-hungary.var
../..//down/old/i386-beos-hungary.html.bg: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.bg -oe iso-8859-5 i386-beos.adp
../..//down/old/i386-beos-hungary.html.en: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.en -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-hungary.html.fi: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.fi -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-hungary.html.fr: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.fr -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-hungary.html.id: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.id -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-hungary.html.it: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.it -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-hungary.html.nl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.nl -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-hungary.html.po: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.po -oe iso-8859-2 i386-beos.adp
../..//down/old/i386-beos-hungary.html.sl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.sl -oe iso-8859-2 i386-beos.adp
../..//down/old/i386-beos-hungary.html.ru: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.ru -oe iso-8859-5 i386-beos.adp
../..//down/old/i386-beos-hungary.html.zh-CN: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html.zh-CN -oe utf-16 i386-beos.adp
../..//down/old/i386-beos-hungary.html: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-beos-hungary.html -oe ISO-8859-1 i386-beos.adp

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
	echo 'Content-type: text/html; charset=utf-16' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
../..//down/old/i386-emx-hungary.html.bg: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.bg -oe iso-8859-5 i386-emx.adp
../..//down/old/i386-emx-hungary.html.en: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.en -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-hungary.html.fi: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.fi -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-hungary.html.fr: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.fr -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-hungary.html.id: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.id -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-hungary.html.it: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.it -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-hungary.html.nl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.nl -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-hungary.html.po: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.po -oe iso-8859-2 i386-emx.adp
../..//down/old/i386-emx-hungary.html.sl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.sl -oe iso-8859-2 i386-emx.adp
../..//down/old/i386-emx-hungary.html.ru: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.ru -oe iso-8859-5 i386-emx.adp
../..//down/old/i386-emx-hungary.html.zh-CN: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html.zh-CN -oe utf-16 i386-emx.adp
../..//down/old/i386-emx-hungary.html: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-emx-hungary.html -oe ISO-8859-1 i386-emx.adp

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
	echo 'Content-type: text/html; charset=utf-16' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
../..//down/old/i386-netbsd-hungary.html.bg: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.bg -oe iso-8859-5 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.en: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.en -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.fi: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.fi -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.fr: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.fr -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.id: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.id -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.it: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.it -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.nl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.nl -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.po: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.po -oe iso-8859-2 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.sl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.sl -oe iso-8859-2 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.ru: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.ru -oe iso-8859-5 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html.zh-CN: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html.zh-CN -oe utf-16 i386-netbsd.adp
../..//down/old/i386-netbsd-hungary.html: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-netbsd-hungary.html -oe ISO-8859-1 i386-netbsd.adp

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
	echo 'Content-type: text/html; charset=utf-16' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
../..//down/old/i386-solaris-hungary.html.bg: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.bg -oe iso-8859-5 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.en: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.en -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.fi: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.fi -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.fr: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.fr -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.id: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.id -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.it: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.it -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.nl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.nl -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.po: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.po -oe iso-8859-2 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.sl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.sl -oe iso-8859-2 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.ru: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.ru -oe iso-8859-5 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html.zh-CN: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html.zh-CN -oe utf-16 i386-solaris.adp
../..//down/old/i386-solaris-hungary.html: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-solaris-hungary.html -oe ISO-8859-1 i386-solaris.adp

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
	echo 'Content-type: text/html; charset=utf-16' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
../..//down/old/m68k-linux-hungary.html.bg: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.bg -oe iso-8859-5 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.en: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.en -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.fi: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.fi -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.fr: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.fr -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.id: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.id -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.it: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.it -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.nl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.nl -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.po: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.po -oe iso-8859-2 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.sl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.sl -oe iso-8859-2 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.ru: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.ru -oe iso-8859-5 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html.zh-CN: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html.zh-CN -oe utf-16 m68k-linux.adp
../..//down/old/m68k-linux-hungary.html: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-linux-hungary.html -oe ISO-8859-1 m68k-linux.adp

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
	echo 'Content-type: text/html; charset=utf-16' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
../..//down/old/down-hungary.html.bg: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//down-hungary.html.bg -oe iso-8859-5 down.adp
../..//down/old/down-hungary.html.en: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//down-hungary.html.en -oe iso-8859-1 down.adp
../..//down/old/down-hungary.html.fi: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//down-hungary.html.fi -oe iso-8859-1 down.adp
../..//down/old/down-hungary.html.fr: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//down-hungary.html.fr -oe iso-8859-1 down.adp
../..//down/old/down-hungary.html.id: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//down-hungary.html.id -oe iso-8859-1 down.adp
../..//down/old/down-hungary.html.it: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//down-hungary.html.it -oe iso-8859-1 down.adp
../..//down/old/down-hungary.html.nl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//down-hungary.html.nl -oe iso-8859-1 down.adp
../..//down/old/down-hungary.html.po: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//down-hungary.html.po -oe iso-8859-2 down.adp
../..//down/old/down-hungary.html.sl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//down-hungary.html.sl -oe iso-8859-2 down.adp
../..//down/old/down-hungary.html.ru: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//down-hungary.html.ru -oe iso-8859-5 down.adp
../..//down/old/down-hungary.html.zh-CN: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//down-hungary.html.zh-CN -oe utf-16 down.adp
../..//down/old/down-hungary.html: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//down-hungary.html -oe ISO-8859-1 down.adp

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
	echo 'Content-type: text/html; charset=utf-16' >> down-hungary.var
	echo >> down-hungary.var
../..//down/old/i386-go32v2-hungary.html.bg: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.bg -oe iso-8859-5 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.en: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.en -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.fi: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.fi -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.fr: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.fr -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.id: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.id -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.it: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.it -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.nl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.nl -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.po: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.po -oe iso-8859-2 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.sl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.sl -oe iso-8859-2 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.ru: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.ru -oe iso-8859-5 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html.zh-CN: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html.zh-CN -oe utf-16 i386-go32v2.adp
../..//down/old/i386-go32v2-hungary.html: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-go32v2-hungary.html -oe ISO-8859-1 i386-go32v2.adp

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
	echo 'Content-type: text/html; charset=utf-16' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
../..//down/old/i386-qnx-hungary.html.bg: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.bg -oe iso-8859-5 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.en: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.en -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.fi: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.fi -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.fr: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.fr -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.id: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.id -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.it: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.it -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.nl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.nl -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.po: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.po -oe iso-8859-2 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.sl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.sl -oe iso-8859-2 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.ru: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.ru -oe iso-8859-5 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html.zh-CN: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html.zh-CN -oe utf-16 i386-qnx.adp
../..//down/old/i386-qnx-hungary.html: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-qnx-hungary.html -oe ISO-8859-1 i386-qnx.adp

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
	echo 'Content-type: text/html; charset=utf-16' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
../..//down/old/m68k-amiga-hungary.html.bg: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.bg -oe iso-8859-5 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.en: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.en -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.fi: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.fi -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.fr: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.fr -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.id: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.id -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.it: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.it -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.nl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.nl -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.po: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.po -oe iso-8859-2 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.sl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.sl -oe iso-8859-2 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.ru: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.ru -oe iso-8859-5 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html.zh-CN: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html.zh-CN -oe utf-16 m68k-amiga.adp
../..//down/old/m68k-amiga-hungary.html: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-amiga-hungary.html -oe ISO-8859-1 m68k-amiga.adp

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
	echo 'Content-type: text/html; charset=utf-16' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
../..//down/old/m68k-netbsd-hungary.html.bg: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.bg -oe iso-8859-5 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.en: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.en -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.fi: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.fi -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.fr: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.fr -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.id: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.id -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.it: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.it -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.nl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.nl -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.po: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.po -oe iso-8859-2 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.sl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.sl -oe iso-8859-2 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.ru: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.ru -oe iso-8859-5 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html.zh-CN: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html.zh-CN -oe utf-16 m68k-netbsd.adp
../..//down/old/m68k-netbsd-hungary.html: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-hungary.html -oe ISO-8859-1 m68k-netbsd.adp

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
	echo 'Content-type: text/html; charset=utf-16' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
../..//down/old/docs-netherlands.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//docs-netherlands.html.bg -oe iso-8859-5 docs.adp
../..//down/old/docs-netherlands.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//docs-netherlands.html.en -oe iso-8859-1 docs.adp
../..//down/old/docs-netherlands.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//docs-netherlands.html.fi -oe iso-8859-1 docs.adp
../..//down/old/docs-netherlands.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//docs-netherlands.html.fr -oe iso-8859-1 docs.adp
../..//down/old/docs-netherlands.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//docs-netherlands.html.id -oe iso-8859-1 docs.adp
../..//down/old/docs-netherlands.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//docs-netherlands.html.it -oe iso-8859-1 docs.adp
../..//down/old/docs-netherlands.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//docs-netherlands.html.nl -oe iso-8859-1 docs.adp
../..//down/old/docs-netherlands.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//docs-netherlands.html.po -oe iso-8859-2 docs.adp
../..//down/old/docs-netherlands.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//docs-netherlands.html.sl -oe iso-8859-2 docs.adp
../..//down/old/docs-netherlands.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//docs-netherlands.html.ru -oe iso-8859-5 docs.adp
../..//down/old/docs-netherlands.html.zh-CN: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//docs-netherlands.html.zh-CN -oe utf-16 docs.adp
../..//down/old/docs-netherlands.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//docs-netherlands.html -oe ISO-8859-1 docs.adp

../..//down/old/docs-netherlands.var: gen_makefile.conf
	echo > docs-netherlands.var
	echo 'URI: docs-netherlands.html.bg' >> docs-netherlands.var
	echo 'Content-language: bg' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.en' >> docs-netherlands.var
	echo 'Content-language: en' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.fi' >> docs-netherlands.var
	echo 'Content-language: fi' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.fr' >> docs-netherlands.var
	echo 'Content-language: fr' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.id' >> docs-netherlands.var
	echo 'Content-language: id' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.it' >> docs-netherlands.var
	echo 'Content-language: it' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.nl' >> docs-netherlands.var
	echo 'Content-language: nl' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.po' >> docs-netherlands.var
	echo 'Content-language: pl' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.sl' >> docs-netherlands.var
	echo 'Content-language: sl' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.ru' >> docs-netherlands.var
	echo 'Content-language: ru' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.zh-CN' >> docs-netherlands.var
	echo 'Content-language: zh-CN' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> docs-netherlands.var
	echo >> docs-netherlands.var
../..//down/old/i386-beos-netherlands.html.bg: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-beos-netherlands.html.bg -oe iso-8859-5 i386-beos.adp
../..//down/old/i386-beos-netherlands.html.en: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-beos-netherlands.html.en -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-netherlands.html.fi: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-beos-netherlands.html.fi -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-netherlands.html.fr: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-beos-netherlands.html.fr -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-netherlands.html.id: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-beos-netherlands.html.id -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-netherlands.html.it: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-beos-netherlands.html.it -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-netherlands.html.nl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-beos-netherlands.html.nl -oe iso-8859-1 i386-beos.adp
../..//down/old/i386-beos-netherlands.html.po: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-beos-netherlands.html.po -oe iso-8859-2 i386-beos.adp
../..//down/old/i386-beos-netherlands.html.sl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-beos-netherlands.html.sl -oe iso-8859-2 i386-beos.adp
../..//down/old/i386-beos-netherlands.html.ru: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-beos-netherlands.html.ru -oe iso-8859-5 i386-beos.adp
../..//down/old/i386-beos-netherlands.html.zh-CN: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-beos-netherlands.html.zh-CN -oe utf-16 i386-beos.adp
../..//down/old/i386-beos-netherlands.html: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-beos-netherlands.html -oe ISO-8859-1 i386-beos.adp

../..//down/old/i386-beos-netherlands.var: gen_makefile.conf
	echo > i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.bg' >> i386-beos-netherlands.var
	echo 'Content-language: bg' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.en' >> i386-beos-netherlands.var
	echo 'Content-language: en' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.fi' >> i386-beos-netherlands.var
	echo 'Content-language: fi' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.fr' >> i386-beos-netherlands.var
	echo 'Content-language: fr' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.id' >> i386-beos-netherlands.var
	echo 'Content-language: id' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.it' >> i386-beos-netherlands.var
	echo 'Content-language: it' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.nl' >> i386-beos-netherlands.var
	echo 'Content-language: nl' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.po' >> i386-beos-netherlands.var
	echo 'Content-language: pl' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.sl' >> i386-beos-netherlands.var
	echo 'Content-language: sl' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.ru' >> i386-beos-netherlands.var
	echo 'Content-language: ru' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.zh-CN' >> i386-beos-netherlands.var
	echo 'Content-language: zh-CN' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
../..//down/old/i386-emx-netherlands.html.bg: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-emx-netherlands.html.bg -oe iso-8859-5 i386-emx.adp
../..//down/old/i386-emx-netherlands.html.en: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-emx-netherlands.html.en -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-netherlands.html.fi: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-emx-netherlands.html.fi -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-netherlands.html.fr: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-emx-netherlands.html.fr -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-netherlands.html.id: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-emx-netherlands.html.id -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-netherlands.html.it: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-emx-netherlands.html.it -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-netherlands.html.nl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-emx-netherlands.html.nl -oe iso-8859-1 i386-emx.adp
../..//down/old/i386-emx-netherlands.html.po: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-emx-netherlands.html.po -oe iso-8859-2 i386-emx.adp
../..//down/old/i386-emx-netherlands.html.sl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-emx-netherlands.html.sl -oe iso-8859-2 i386-emx.adp
../..//down/old/i386-emx-netherlands.html.ru: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-emx-netherlands.html.ru -oe iso-8859-5 i386-emx.adp
../..//down/old/i386-emx-netherlands.html.zh-CN: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-emx-netherlands.html.zh-CN -oe utf-16 i386-emx.adp
../..//down/old/i386-emx-netherlands.html: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-emx-netherlands.html -oe ISO-8859-1 i386-emx.adp

../..//down/old/i386-emx-netherlands.var: gen_makefile.conf
	echo > i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.bg' >> i386-emx-netherlands.var
	echo 'Content-language: bg' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.en' >> i386-emx-netherlands.var
	echo 'Content-language: en' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.fi' >> i386-emx-netherlands.var
	echo 'Content-language: fi' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.fr' >> i386-emx-netherlands.var
	echo 'Content-language: fr' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.id' >> i386-emx-netherlands.var
	echo 'Content-language: id' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.it' >> i386-emx-netherlands.var
	echo 'Content-language: it' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.nl' >> i386-emx-netherlands.var
	echo 'Content-language: nl' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.po' >> i386-emx-netherlands.var
	echo 'Content-language: pl' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.sl' >> i386-emx-netherlands.var
	echo 'Content-language: sl' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.ru' >> i386-emx-netherlands.var
	echo 'Content-language: ru' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.zh-CN' >> i386-emx-netherlands.var
	echo 'Content-language: zh-CN' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
../..//down/old/i386-netbsd-netherlands.html.bg: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-netbsd-netherlands.html.bg -oe iso-8859-5 i386-netbsd.adp
../..//down/old/i386-netbsd-netherlands.html.en: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-netbsd-netherlands.html.en -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-netherlands.html.fi: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-netbsd-netherlands.html.fi -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-netherlands.html.fr: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-netbsd-netherlands.html.fr -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-netherlands.html.id: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-netbsd-netherlands.html.id -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-netherlands.html.it: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-netbsd-netherlands.html.it -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-netherlands.html.nl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-netbsd-netherlands.html.nl -oe iso-8859-1 i386-netbsd.adp
../..//down/old/i386-netbsd-netherlands.html.po: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-netbsd-netherlands.html.po -oe iso-8859-2 i386-netbsd.adp
../..//down/old/i386-netbsd-netherlands.html.sl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-netbsd-netherlands.html.sl -oe iso-8859-2 i386-netbsd.adp
../..//down/old/i386-netbsd-netherlands.html.ru: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-netbsd-netherlands.html.ru -oe iso-8859-5 i386-netbsd.adp
../..//down/old/i386-netbsd-netherlands.html.zh-CN: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-netbsd-netherlands.html.zh-CN -oe utf-16 i386-netbsd.adp
../..//down/old/i386-netbsd-netherlands.html: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-netbsd-netherlands.html -oe ISO-8859-1 i386-netbsd.adp

../..//down/old/i386-netbsd-netherlands.var: gen_makefile.conf
	echo > i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.bg' >> i386-netbsd-netherlands.var
	echo 'Content-language: bg' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.en' >> i386-netbsd-netherlands.var
	echo 'Content-language: en' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.fi' >> i386-netbsd-netherlands.var
	echo 'Content-language: fi' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.fr' >> i386-netbsd-netherlands.var
	echo 'Content-language: fr' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.id' >> i386-netbsd-netherlands.var
	echo 'Content-language: id' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.it' >> i386-netbsd-netherlands.var
	echo 'Content-language: it' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.nl' >> i386-netbsd-netherlands.var
	echo 'Content-language: nl' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.po' >> i386-netbsd-netherlands.var
	echo 'Content-language: pl' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.sl' >> i386-netbsd-netherlands.var
	echo 'Content-language: sl' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.ru' >> i386-netbsd-netherlands.var
	echo 'Content-language: ru' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.zh-CN' >> i386-netbsd-netherlands.var
	echo 'Content-language: zh-CN' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
../..//down/old/i386-solaris-netherlands.html.bg: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-solaris-netherlands.html.bg -oe iso-8859-5 i386-solaris.adp
../..//down/old/i386-solaris-netherlands.html.en: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-solaris-netherlands.html.en -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-netherlands.html.fi: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-solaris-netherlands.html.fi -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-netherlands.html.fr: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-solaris-netherlands.html.fr -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-netherlands.html.id: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-solaris-netherlands.html.id -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-netherlands.html.it: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-solaris-netherlands.html.it -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-netherlands.html.nl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-solaris-netherlands.html.nl -oe iso-8859-1 i386-solaris.adp
../..//down/old/i386-solaris-netherlands.html.po: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-solaris-netherlands.html.po -oe iso-8859-2 i386-solaris.adp
../..//down/old/i386-solaris-netherlands.html.sl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-solaris-netherlands.html.sl -oe iso-8859-2 i386-solaris.adp
../..//down/old/i386-solaris-netherlands.html.ru: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-solaris-netherlands.html.ru -oe iso-8859-5 i386-solaris.adp
../..//down/old/i386-solaris-netherlands.html.zh-CN: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-solaris-netherlands.html.zh-CN -oe utf-16 i386-solaris.adp
../..//down/old/i386-solaris-netherlands.html: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-solaris-netherlands.html -oe ISO-8859-1 i386-solaris.adp

../..//down/old/i386-solaris-netherlands.var: gen_makefile.conf
	echo > i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.bg' >> i386-solaris-netherlands.var
	echo 'Content-language: bg' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.en' >> i386-solaris-netherlands.var
	echo 'Content-language: en' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.fi' >> i386-solaris-netherlands.var
	echo 'Content-language: fi' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.fr' >> i386-solaris-netherlands.var
	echo 'Content-language: fr' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.id' >> i386-solaris-netherlands.var
	echo 'Content-language: id' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.it' >> i386-solaris-netherlands.var
	echo 'Content-language: it' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.nl' >> i386-solaris-netherlands.var
	echo 'Content-language: nl' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.po' >> i386-solaris-netherlands.var
	echo 'Content-language: pl' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.sl' >> i386-solaris-netherlands.var
	echo 'Content-language: sl' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.ru' >> i386-solaris-netherlands.var
	echo 'Content-language: ru' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.zh-CN' >> i386-solaris-netherlands.var
	echo 'Content-language: zh-CN' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
../..//down/old/m68k-linux-netherlands.html.bg: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//m68k-linux-netherlands.html.bg -oe iso-8859-5 m68k-linux.adp
../..//down/old/m68k-linux-netherlands.html.en: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-linux-netherlands.html.en -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-netherlands.html.fi: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//m68k-linux-netherlands.html.fi -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-netherlands.html.fr: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//m68k-linux-netherlands.html.fr -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-netherlands.html.id: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//m68k-linux-netherlands.html.id -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-netherlands.html.it: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//m68k-linux-netherlands.html.it -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-netherlands.html.nl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//m68k-linux-netherlands.html.nl -oe iso-8859-1 m68k-linux.adp
../..//down/old/m68k-linux-netherlands.html.po: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//m68k-linux-netherlands.html.po -oe iso-8859-2 m68k-linux.adp
../..//down/old/m68k-linux-netherlands.html.sl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//m68k-linux-netherlands.html.sl -oe iso-8859-2 m68k-linux.adp
../..//down/old/m68k-linux-netherlands.html.ru: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//m68k-linux-netherlands.html.ru -oe iso-8859-5 m68k-linux.adp
../..//down/old/m68k-linux-netherlands.html.zh-CN: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//m68k-linux-netherlands.html.zh-CN -oe utf-16 m68k-linux.adp
../..//down/old/m68k-linux-netherlands.html: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-linux-netherlands.html -oe ISO-8859-1 m68k-linux.adp

../..//down/old/m68k-linux-netherlands.var: gen_makefile.conf
	echo > m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.bg' >> m68k-linux-netherlands.var
	echo 'Content-language: bg' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.en' >> m68k-linux-netherlands.var
	echo 'Content-language: en' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.fi' >> m68k-linux-netherlands.var
	echo 'Content-language: fi' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.fr' >> m68k-linux-netherlands.var
	echo 'Content-language: fr' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.id' >> m68k-linux-netherlands.var
	echo 'Content-language: id' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.it' >> m68k-linux-netherlands.var
	echo 'Content-language: it' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.nl' >> m68k-linux-netherlands.var
	echo 'Content-language: nl' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.po' >> m68k-linux-netherlands.var
	echo 'Content-language: pl' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.sl' >> m68k-linux-netherlands.var
	echo 'Content-language: sl' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.ru' >> m68k-linux-netherlands.var
	echo 'Content-language: ru' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.zh-CN' >> m68k-linux-netherlands.var
	echo 'Content-language: zh-CN' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
../..//down/old/down-netherlands.html.bg: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//down-netherlands.html.bg -oe iso-8859-5 down.adp
../..//down/old/down-netherlands.html.en: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//down-netherlands.html.en -oe iso-8859-1 down.adp
../..//down/old/down-netherlands.html.fi: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//down-netherlands.html.fi -oe iso-8859-1 down.adp
../..//down/old/down-netherlands.html.fr: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//down-netherlands.html.fr -oe iso-8859-1 down.adp
../..//down/old/down-netherlands.html.id: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//down-netherlands.html.id -oe iso-8859-1 down.adp
../..//down/old/down-netherlands.html.it: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//down-netherlands.html.it -oe iso-8859-1 down.adp
../..//down/old/down-netherlands.html.nl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//down-netherlands.html.nl -oe iso-8859-1 down.adp
../..//down/old/down-netherlands.html.po: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//down-netherlands.html.po -oe iso-8859-2 down.adp
../..//down/old/down-netherlands.html.sl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//down-netherlands.html.sl -oe iso-8859-2 down.adp
../..//down/old/down-netherlands.html.ru: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//down-netherlands.html.ru -oe iso-8859-5 down.adp
../..//down/old/down-netherlands.html.zh-CN: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//down-netherlands.html.zh-CN -oe utf-16 down.adp
../..//down/old/down-netherlands.html: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//down-netherlands.html -oe ISO-8859-1 down.adp

../..//down/old/down-netherlands.var: gen_makefile.conf
	echo > down-netherlands.var
	echo 'URI: down-netherlands.html.bg' >> down-netherlands.var
	echo 'Content-language: bg' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.en' >> down-netherlands.var
	echo 'Content-language: en' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.fi' >> down-netherlands.var
	echo 'Content-language: fi' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.fr' >> down-netherlands.var
	echo 'Content-language: fr' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.id' >> down-netherlands.var
	echo 'Content-language: id' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.it' >> down-netherlands.var
	echo 'Content-language: it' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.nl' >> down-netherlands.var
	echo 'Content-language: nl' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.po' >> down-netherlands.var
	echo 'Content-language: pl' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.sl' >> down-netherlands.var
	echo 'Content-language: sl' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.ru' >> down-netherlands.var
	echo 'Content-language: ru' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.zh-CN' >> down-netherlands.var
	echo 'Content-language: zh-CN' >> down-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> down-netherlands.var
	echo >> down-netherlands.var
../..//down/old/i386-go32v2-netherlands.html.bg: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-go32v2-netherlands.html.bg -oe iso-8859-5 i386-go32v2.adp
../..//down/old/i386-go32v2-netherlands.html.en: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-go32v2-netherlands.html.en -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-netherlands.html.fi: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-go32v2-netherlands.html.fi -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-netherlands.html.fr: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-go32v2-netherlands.html.fr -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-netherlands.html.id: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-go32v2-netherlands.html.id -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-netherlands.html.it: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-go32v2-netherlands.html.it -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-netherlands.html.nl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-go32v2-netherlands.html.nl -oe iso-8859-1 i386-go32v2.adp
../..//down/old/i386-go32v2-netherlands.html.po: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-go32v2-netherlands.html.po -oe iso-8859-2 i386-go32v2.adp
../..//down/old/i386-go32v2-netherlands.html.sl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-go32v2-netherlands.html.sl -oe iso-8859-2 i386-go32v2.adp
../..//down/old/i386-go32v2-netherlands.html.ru: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-go32v2-netherlands.html.ru -oe iso-8859-5 i386-go32v2.adp
../..//down/old/i386-go32v2-netherlands.html.zh-CN: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-go32v2-netherlands.html.zh-CN -oe utf-16 i386-go32v2.adp
../..//down/old/i386-go32v2-netherlands.html: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-go32v2-netherlands.html -oe ISO-8859-1 i386-go32v2.adp

../..//down/old/i386-go32v2-netherlands.var: gen_makefile.conf
	echo > i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.bg' >> i386-go32v2-netherlands.var
	echo 'Content-language: bg' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.en' >> i386-go32v2-netherlands.var
	echo 'Content-language: en' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.fi' >> i386-go32v2-netherlands.var
	echo 'Content-language: fi' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.fr' >> i386-go32v2-netherlands.var
	echo 'Content-language: fr' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.id' >> i386-go32v2-netherlands.var
	echo 'Content-language: id' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.it' >> i386-go32v2-netherlands.var
	echo 'Content-language: it' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.nl' >> i386-go32v2-netherlands.var
	echo 'Content-language: nl' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.po' >> i386-go32v2-netherlands.var
	echo 'Content-language: pl' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.sl' >> i386-go32v2-netherlands.var
	echo 'Content-language: sl' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.ru' >> i386-go32v2-netherlands.var
	echo 'Content-language: ru' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.zh-CN' >> i386-go32v2-netherlands.var
	echo 'Content-language: zh-CN' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
../..//down/old/i386-qnx-netherlands.html.bg: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//i386-qnx-netherlands.html.bg -oe iso-8859-5 i386-qnx.adp
../..//down/old/i386-qnx-netherlands.html.en: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-qnx-netherlands.html.en -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-netherlands.html.fi: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//i386-qnx-netherlands.html.fi -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-netherlands.html.fr: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//i386-qnx-netherlands.html.fr -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-netherlands.html.id: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//i386-qnx-netherlands.html.id -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-netherlands.html.it: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//i386-qnx-netherlands.html.it -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-netherlands.html.nl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//i386-qnx-netherlands.html.nl -oe iso-8859-1 i386-qnx.adp
../..//down/old/i386-qnx-netherlands.html.po: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//i386-qnx-netherlands.html.po -oe iso-8859-2 i386-qnx.adp
../..//down/old/i386-qnx-netherlands.html.sl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//i386-qnx-netherlands.html.sl -oe iso-8859-2 i386-qnx.adp
../..//down/old/i386-qnx-netherlands.html.ru: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//i386-qnx-netherlands.html.ru -oe iso-8859-5 i386-qnx.adp
../..//down/old/i386-qnx-netherlands.html.zh-CN: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//i386-qnx-netherlands.html.zh-CN -oe utf-16 i386-qnx.adp
../..//down/old/i386-qnx-netherlands.html: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//i386-qnx-netherlands.html -oe ISO-8859-1 i386-qnx.adp

../..//down/old/i386-qnx-netherlands.var: gen_makefile.conf
	echo > i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.bg' >> i386-qnx-netherlands.var
	echo 'Content-language: bg' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.en' >> i386-qnx-netherlands.var
	echo 'Content-language: en' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.fi' >> i386-qnx-netherlands.var
	echo 'Content-language: fi' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.fr' >> i386-qnx-netherlands.var
	echo 'Content-language: fr' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.id' >> i386-qnx-netherlands.var
	echo 'Content-language: id' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.it' >> i386-qnx-netherlands.var
	echo 'Content-language: it' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.nl' >> i386-qnx-netherlands.var
	echo 'Content-language: nl' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.po' >> i386-qnx-netherlands.var
	echo 'Content-language: pl' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.sl' >> i386-qnx-netherlands.var
	echo 'Content-language: sl' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.ru' >> i386-qnx-netherlands.var
	echo 'Content-language: ru' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.zh-CN' >> i386-qnx-netherlands.var
	echo 'Content-language: zh-CN' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
../..//down/old/m68k-amiga-netherlands.html.bg: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//m68k-amiga-netherlands.html.bg -oe iso-8859-5 m68k-amiga.adp
../..//down/old/m68k-amiga-netherlands.html.en: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-amiga-netherlands.html.en -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-netherlands.html.fi: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//m68k-amiga-netherlands.html.fi -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-netherlands.html.fr: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//m68k-amiga-netherlands.html.fr -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-netherlands.html.id: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//m68k-amiga-netherlands.html.id -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-netherlands.html.it: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//m68k-amiga-netherlands.html.it -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-netherlands.html.nl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//m68k-amiga-netherlands.html.nl -oe iso-8859-1 m68k-amiga.adp
../..//down/old/m68k-amiga-netherlands.html.po: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//m68k-amiga-netherlands.html.po -oe iso-8859-2 m68k-amiga.adp
../..//down/old/m68k-amiga-netherlands.html.sl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//m68k-amiga-netherlands.html.sl -oe iso-8859-2 m68k-amiga.adp
../..//down/old/m68k-amiga-netherlands.html.ru: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//m68k-amiga-netherlands.html.ru -oe iso-8859-5 m68k-amiga.adp
../..//down/old/m68k-amiga-netherlands.html.zh-CN: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//m68k-amiga-netherlands.html.zh-CN -oe utf-16 m68k-amiga.adp
../..//down/old/m68k-amiga-netherlands.html: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-amiga-netherlands.html -oe ISO-8859-1 m68k-amiga.adp

../..//down/old/m68k-amiga-netherlands.var: gen_makefile.conf
	echo > m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.bg' >> m68k-amiga-netherlands.var
	echo 'Content-language: bg' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.en' >> m68k-amiga-netherlands.var
	echo 'Content-language: en' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.fi' >> m68k-amiga-netherlands.var
	echo 'Content-language: fi' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.fr' >> m68k-amiga-netherlands.var
	echo 'Content-language: fr' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.id' >> m68k-amiga-netherlands.var
	echo 'Content-language: id' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.it' >> m68k-amiga-netherlands.var
	echo 'Content-language: it' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.nl' >> m68k-amiga-netherlands.var
	echo 'Content-language: nl' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.po' >> m68k-amiga-netherlands.var
	echo 'Content-language: pl' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.sl' >> m68k-amiga-netherlands.var
	echo 'Content-language: sl' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.ru' >> m68k-amiga-netherlands.var
	echo 'Content-language: ru' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.zh-CN' >> m68k-amiga-netherlands.var
	echo 'Content-language: zh-CN' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
../..//down/old/m68k-netbsd-netherlands.html.bg: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-netherlands.html.bg -oe iso-8859-5 m68k-netbsd.adp
../..//down/old/m68k-netbsd-netherlands.html.en: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-netherlands.html.en -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-netherlands.html.fi: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-netherlands.html.fi -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-netherlands.html.fr: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-netherlands.html.fr -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-netherlands.html.id: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-netherlands.html.id -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-netherlands.html.it: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-netherlands.html.it -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-netherlands.html.nl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-netherlands.html.nl -oe iso-8859-1 m68k-netbsd.adp
../..//down/old/m68k-netbsd-netherlands.html.po: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-netherlands.html.po -oe iso-8859-2 m68k-netbsd.adp
../..//down/old/m68k-netbsd-netherlands.html.sl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-netherlands.html.sl -oe iso-8859-2 m68k-netbsd.adp
../..//down/old/m68k-netbsd-netherlands.html.ru: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-netherlands.html.ru -oe iso-8859-5 m68k-netbsd.adp
../..//down/old/m68k-netbsd-netherlands.html.zh-CN: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-netherlands.html.zh-CN -oe utf-16 m68k-netbsd.adp
../..//down/old/m68k-netbsd-netherlands.html: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/old/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/old//m68k-netbsd-netherlands.html -oe ISO-8859-1 m68k-netbsd.adp

../..//down/old/m68k-netbsd-netherlands.var: gen_makefile.conf
	echo > m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.bg' >> m68k-netbsd-netherlands.var
	echo 'Content-language: bg' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.en' >> m68k-netbsd-netherlands.var
	echo 'Content-language: en' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.fi' >> m68k-netbsd-netherlands.var
	echo 'Content-language: fi' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.fr' >> m68k-netbsd-netherlands.var
	echo 'Content-language: fr' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.id' >> m68k-netbsd-netherlands.var
	echo 'Content-language: id' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.it' >> m68k-netbsd-netherlands.var
	echo 'Content-language: it' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.nl' >> m68k-netbsd-netherlands.var
	echo 'Content-language: nl' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.po' >> m68k-netbsd-netherlands.var
	echo 'Content-language: pl' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.sl' >> m68k-netbsd-netherlands.var
	echo 'Content-language: sl' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.ru' >> m68k-netbsd-netherlands.var
	echo 'Content-language: ru' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.zh-CN' >> m68k-netbsd-netherlands.var
	echo 'Content-language: zh-CN' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var

../..//down/old/docs.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o docs.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/docs.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/docs.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o docs.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/docs.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o docs.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/docs.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o docs.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/docs.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o docs.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/docs.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o docs.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/docs.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o docs.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/docs.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o docs.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/docs.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o docs.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/docs.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o docs.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/old/docs.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=docs -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=utf-16' >> docs.var
	echo >> docs.var

../..//down/old/i386-beos.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-beos.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-beos.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-beos.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o i386-beos.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-beos.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-beos.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-beos.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-beos.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-beos.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-beos.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-beos.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-beos.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-beos.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-beos.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-beos.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-beos.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-beos.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-beos.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-beos.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o i386-beos.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/old/i386-beos.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=i386-beos -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=utf-16' >> i386-beos.var
	echo >> i386-beos.var

../..//down/old/i386-emx.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-emx.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-emx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-emx.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o i386-emx.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-emx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-emx.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-emx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-emx.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-emx.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-emx.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-emx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-emx.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-emx.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-emx.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-emx.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-emx.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-emx.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-emx.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-emx.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o i386-emx.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/old/i386-emx.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=i386-emx -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=utf-16' >> i386-emx.var
	echo >> i386-emx.var

../..//down/old/i386-netbsd.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-netbsd.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o i386-netbsd.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-netbsd.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-netbsd.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-netbsd.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-netbsd.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-netbsd.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-netbsd.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-netbsd.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-netbsd.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o i386-netbsd.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/old/i386-netbsd.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=i386-netbsd -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=utf-16' >> i386-netbsd.var
	echo >> i386-netbsd.var

../..//down/old/i386-solaris.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-solaris.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-solaris.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-solaris.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o i386-solaris.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-solaris.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-solaris.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-solaris.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-solaris.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-solaris.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-solaris.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-solaris.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-solaris.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-solaris.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-solaris.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-solaris.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-solaris.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-solaris.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-solaris.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-solaris.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o i386-solaris.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/old/i386-solaris.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=i386-solaris -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=utf-16' >> i386-solaris.var
	echo >> i386-solaris.var

../..//down/old/m68k-linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/m68k-linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o m68k-linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/m68k-linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/m68k-linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/m68k-linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o m68k-linux.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/old/m68k-linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=m68k-linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=utf-16' >> m68k-linux.var
	echo >> m68k-linux.var

../..//down/old/down.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o down.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/down.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/down.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o down.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/down.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o down.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/down.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o down.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/down.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o down.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/down.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o down.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/down.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o down.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/down.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o down.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/down.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o down.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/down.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o down.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/old/down.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=down -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=utf-16' >> down.var
	echo >> down.var

../..//down/old/i386-go32v2.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-go32v2.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o i386-go32v2.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-go32v2.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-go32v2.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-go32v2.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-go32v2.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-go32v2.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-go32v2.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-go32v2.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-go32v2.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o i386-go32v2.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/old/i386-go32v2.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=i386-go32v2 -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=utf-16' >> i386-go32v2.var
	echo >> i386-go32v2.var

../..//down/old/i386-qnx.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-qnx.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-qnx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-qnx.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o i386-qnx.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-qnx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-qnx.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-qnx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-qnx.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-qnx.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-qnx.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-qnx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-qnx.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/i386-qnx.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-qnx.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-qnx.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-qnx.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/i386-qnx.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-qnx.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/i386-qnx.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o i386-qnx.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/old/i386-qnx.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=i386-qnx -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=utf-16' >> i386-qnx.var
	echo >> i386-qnx.var

../..//down/old/m68k-amiga.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-amiga.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o m68k-amiga.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-amiga.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-amiga.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-amiga.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-amiga.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-amiga.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-amiga.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-amiga.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/m68k-amiga.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o m68k-amiga.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/old/m68k-amiga.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=m68k-amiga -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=utf-16' >> m68k-amiga.var
	echo >> m68k-amiga.var

../..//down/old/m68k-netbsd.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-netbsd.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o m68k-netbsd.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-netbsd.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-netbsd.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-netbsd.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-netbsd.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-netbsd.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-netbsd.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-netbsd.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o m68k-netbsd.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/old/m68k-netbsd.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=m68k-netbsd -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=utf-16' >> m68k-netbsd.var
	echo >> m68k-netbsd.var

mirrors.dat:
	echo -e 'name\tnamel\turl' > mirrors.dat
	echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat

all_pages: mirrors.dat ../..//down/old/docs-austria.html.bg ../..//down/old/docs-austria.html.en ../..//down/old/docs-austria.html.fi ../..//down/old/docs-austria.html.fr ../..//down/old/docs-austria.html.id ../..//down/old/docs-austria.html.it ../..//down/old/docs-austria.html.nl ../..//down/old/docs-austria.html.po ../..//down/old/docs-austria.html.sl ../..//down/old/docs-austria.html.ru ../..//down/old/docs-austria.html.zh-CN ../..//down/old/docs-austria.var ../..//down/old/i386-beos-austria.html.bg ../..//down/old/i386-beos-austria.html.en ../..//down/old/i386-beos-austria.html.fi ../..//down/old/i386-beos-austria.html.fr ../..//down/old/i386-beos-austria.html.id ../..//down/old/i386-beos-austria.html.it ../..//down/old/i386-beos-austria.html.nl ../..//down/old/i386-beos-austria.html.po ../..//down/old/i386-beos-austria.html.sl ../..//down/old/i386-beos-austria.html.ru ../..//down/old/i386-beos-austria.html.zh-CN ../..//down/old/i386-beos-austria.var ../..//down/old/i386-emx-austria.html.bg ../..//down/old/i386-emx-austria.html.en ../..//down/old/i386-emx-austria.html.fi ../..//down/old/i386-emx-austria.html.fr ../..//down/old/i386-emx-austria.html.id ../..//down/old/i386-emx-austria.html.it ../..//down/old/i386-emx-austria.html.nl ../..//down/old/i386-emx-austria.html.po ../..//down/old/i386-emx-austria.html.sl ../..//down/old/i386-emx-austria.html.ru ../..//down/old/i386-emx-austria.html.zh-CN ../..//down/old/i386-emx-austria.var ../..//down/old/i386-netbsd-austria.html.bg ../..//down/old/i386-netbsd-austria.html.en ../..//down/old/i386-netbsd-austria.html.fi ../..//down/old/i386-netbsd-austria.html.fr ../..//down/old/i386-netbsd-austria.html.id ../..//down/old/i386-netbsd-austria.html.it ../..//down/old/i386-netbsd-austria.html.nl ../..//down/old/i386-netbsd-austria.html.po ../..//down/old/i386-netbsd-austria.html.sl ../..//down/old/i386-netbsd-austria.html.ru ../..//down/old/i386-netbsd-austria.html.zh-CN ../..//down/old/i386-netbsd-austria.var ../..//down/old/i386-solaris-austria.html.bg ../..//down/old/i386-solaris-austria.html.en ../..//down/old/i386-solaris-austria.html.fi ../..//down/old/i386-solaris-austria.html.fr ../..//down/old/i386-solaris-austria.html.id ../..//down/old/i386-solaris-austria.html.it ../..//down/old/i386-solaris-austria.html.nl ../..//down/old/i386-solaris-austria.html.po ../..//down/old/i386-solaris-austria.html.sl ../..//down/old/i386-solaris-austria.html.ru ../..//down/old/i386-solaris-austria.html.zh-CN ../..//down/old/i386-solaris-austria.var ../..//down/old/m68k-linux-austria.html.bg ../..//down/old/m68k-linux-austria.html.en ../..//down/old/m68k-linux-austria.html.fi ../..//down/old/m68k-linux-austria.html.fr ../..//down/old/m68k-linux-austria.html.id ../..//down/old/m68k-linux-austria.html.it ../..//down/old/m68k-linux-austria.html.nl ../..//down/old/m68k-linux-austria.html.po ../..//down/old/m68k-linux-austria.html.sl ../..//down/old/m68k-linux-austria.html.ru ../..//down/old/m68k-linux-austria.html.zh-CN ../..//down/old/m68k-linux-austria.var ../..//down/old/down-austria.html.bg ../..//down/old/down-austria.html.en ../..//down/old/down-austria.html.fi ../..//down/old/down-austria.html.fr ../..//down/old/down-austria.html.id ../..//down/old/down-austria.html.it ../..//down/old/down-austria.html.nl ../..//down/old/down-austria.html.po ../..//down/old/down-austria.html.sl ../..//down/old/down-austria.html.ru ../..//down/old/down-austria.html.zh-CN ../..//down/old/down-austria.var ../..//down/old/i386-go32v2-austria.html.bg ../..//down/old/i386-go32v2-austria.html.en ../..//down/old/i386-go32v2-austria.html.fi ../..//down/old/i386-go32v2-austria.html.fr ../..//down/old/i386-go32v2-austria.html.id ../..//down/old/i386-go32v2-austria.html.it ../..//down/old/i386-go32v2-austria.html.nl ../..//down/old/i386-go32v2-austria.html.po ../..//down/old/i386-go32v2-austria.html.sl ../..//down/old/i386-go32v2-austria.html.ru ../..//down/old/i386-go32v2-austria.html.zh-CN ../..//down/old/i386-go32v2-austria.var ../..//down/old/i386-qnx-austria.html.bg ../..//down/old/i386-qnx-austria.html.en ../..//down/old/i386-qnx-austria.html.fi ../..//down/old/i386-qnx-austria.html.fr ../..//down/old/i386-qnx-austria.html.id ../..//down/old/i386-qnx-austria.html.it ../..//down/old/i386-qnx-austria.html.nl ../..//down/old/i386-qnx-austria.html.po ../..//down/old/i386-qnx-austria.html.sl ../..//down/old/i386-qnx-austria.html.ru ../..//down/old/i386-qnx-austria.html.zh-CN ../..//down/old/i386-qnx-austria.var ../..//down/old/m68k-amiga-austria.html.bg ../..//down/old/m68k-amiga-austria.html.en ../..//down/old/m68k-amiga-austria.html.fi ../..//down/old/m68k-amiga-austria.html.fr ../..//down/old/m68k-amiga-austria.html.id ../..//down/old/m68k-amiga-austria.html.it ../..//down/old/m68k-amiga-austria.html.nl ../..//down/old/m68k-amiga-austria.html.po ../..//down/old/m68k-amiga-austria.html.sl ../..//down/old/m68k-amiga-austria.html.ru ../..//down/old/m68k-amiga-austria.html.zh-CN ../..//down/old/m68k-amiga-austria.var ../..//down/old/m68k-netbsd-austria.html.bg ../..//down/old/m68k-netbsd-austria.html.en ../..//down/old/m68k-netbsd-austria.html.fi ../..//down/old/m68k-netbsd-austria.html.fr ../..//down/old/m68k-netbsd-austria.html.id ../..//down/old/m68k-netbsd-austria.html.it ../..//down/old/m68k-netbsd-austria.html.nl ../..//down/old/m68k-netbsd-austria.html.po ../..//down/old/m68k-netbsd-austria.html.sl ../..//down/old/m68k-netbsd-austria.html.ru ../..//down/old/m68k-netbsd-austria.html.zh-CN ../..//down/old/m68k-netbsd-austria.var ../..//down/old/docs-hungary.html.bg ../..//down/old/docs-hungary.html.en ../..//down/old/docs-hungary.html.fi ../..//down/old/docs-hungary.html.fr ../..//down/old/docs-hungary.html.id ../..//down/old/docs-hungary.html.it ../..//down/old/docs-hungary.html.nl ../..//down/old/docs-hungary.html.po ../..//down/old/docs-hungary.html.sl ../..//down/old/docs-hungary.html.ru ../..//down/old/docs-hungary.html.zh-CN ../..//down/old/docs-hungary.var ../..//down/old/i386-beos-hungary.html.bg ../..//down/old/i386-beos-hungary.html.en ../..//down/old/i386-beos-hungary.html.fi ../..//down/old/i386-beos-hungary.html.fr ../..//down/old/i386-beos-hungary.html.id ../..//down/old/i386-beos-hungary.html.it ../..//down/old/i386-beos-hungary.html.nl ../..//down/old/i386-beos-hungary.html.po ../..//down/old/i386-beos-hungary.html.sl ../..//down/old/i386-beos-hungary.html.ru ../..//down/old/i386-beos-hungary.html.zh-CN ../..//down/old/i386-beos-hungary.var ../..//down/old/i386-emx-hungary.html.bg ../..//down/old/i386-emx-hungary.html.en ../..//down/old/i386-emx-hungary.html.fi ../..//down/old/i386-emx-hungary.html.fr ../..//down/old/i386-emx-hungary.html.id ../..//down/old/i386-emx-hungary.html.it ../..//down/old/i386-emx-hungary.html.nl ../..//down/old/i386-emx-hungary.html.po ../..//down/old/i386-emx-hungary.html.sl ../..//down/old/i386-emx-hungary.html.ru ../..//down/old/i386-emx-hungary.html.zh-CN ../..//down/old/i386-emx-hungary.var ../..//down/old/i386-netbsd-hungary.html.bg ../..//down/old/i386-netbsd-hungary.html.en ../..//down/old/i386-netbsd-hungary.html.fi ../..//down/old/i386-netbsd-hungary.html.fr ../..//down/old/i386-netbsd-hungary.html.id ../..//down/old/i386-netbsd-hungary.html.it ../..//down/old/i386-netbsd-hungary.html.nl ../..//down/old/i386-netbsd-hungary.html.po ../..//down/old/i386-netbsd-hungary.html.sl ../..//down/old/i386-netbsd-hungary.html.ru ../..//down/old/i386-netbsd-hungary.html.zh-CN ../..//down/old/i386-netbsd-hungary.var ../..//down/old/i386-solaris-hungary.html.bg ../..//down/old/i386-solaris-hungary.html.en ../..//down/old/i386-solaris-hungary.html.fi ../..//down/old/i386-solaris-hungary.html.fr ../..//down/old/i386-solaris-hungary.html.id ../..//down/old/i386-solaris-hungary.html.it ../..//down/old/i386-solaris-hungary.html.nl ../..//down/old/i386-solaris-hungary.html.po ../..//down/old/i386-solaris-hungary.html.sl ../..//down/old/i386-solaris-hungary.html.ru ../..//down/old/i386-solaris-hungary.html.zh-CN ../..//down/old/i386-solaris-hungary.var ../..//down/old/m68k-linux-hungary.html.bg ../..//down/old/m68k-linux-hungary.html.en ../..//down/old/m68k-linux-hungary.html.fi ../..//down/old/m68k-linux-hungary.html.fr ../..//down/old/m68k-linux-hungary.html.id ../..//down/old/m68k-linux-hungary.html.it ../..//down/old/m68k-linux-hungary.html.nl ../..//down/old/m68k-linux-hungary.html.po ../..//down/old/m68k-linux-hungary.html.sl ../..//down/old/m68k-linux-hungary.html.ru ../..//down/old/m68k-linux-hungary.html.zh-CN ../..//down/old/m68k-linux-hungary.var ../..//down/old/down-hungary.html.bg ../..//down/old/down-hungary.html.en ../..//down/old/down-hungary.html.fi ../..//down/old/down-hungary.html.fr ../..//down/old/down-hungary.html.id ../..//down/old/down-hungary.html.it ../..//down/old/down-hungary.html.nl ../..//down/old/down-hungary.html.po ../..//down/old/down-hungary.html.sl ../..//down/old/down-hungary.html.ru ../..//down/old/down-hungary.html.zh-CN ../..//down/old/down-hungary.var ../..//down/old/i386-go32v2-hungary.html.bg ../..//down/old/i386-go32v2-hungary.html.en ../..//down/old/i386-go32v2-hungary.html.fi ../..//down/old/i386-go32v2-hungary.html.fr ../..//down/old/i386-go32v2-hungary.html.id ../..//down/old/i386-go32v2-hungary.html.it ../..//down/old/i386-go32v2-hungary.html.nl ../..//down/old/i386-go32v2-hungary.html.po ../..//down/old/i386-go32v2-hungary.html.sl ../..//down/old/i386-go32v2-hungary.html.ru ../..//down/old/i386-go32v2-hungary.html.zh-CN ../..//down/old/i386-go32v2-hungary.var ../..//down/old/i386-qnx-hungary.html.bg ../..//down/old/i386-qnx-hungary.html.en ../..//down/old/i386-qnx-hungary.html.fi ../..//down/old/i386-qnx-hungary.html.fr ../..//down/old/i386-qnx-hungary.html.id ../..//down/old/i386-qnx-hungary.html.it ../..//down/old/i386-qnx-hungary.html.nl ../..//down/old/i386-qnx-hungary.html.po ../..//down/old/i386-qnx-hungary.html.sl ../..//down/old/i386-qnx-hungary.html.ru ../..//down/old/i386-qnx-hungary.html.zh-CN ../..//down/old/i386-qnx-hungary.var ../..//down/old/m68k-amiga-hungary.html.bg ../..//down/old/m68k-amiga-hungary.html.en ../..//down/old/m68k-amiga-hungary.html.fi ../..//down/old/m68k-amiga-hungary.html.fr ../..//down/old/m68k-amiga-hungary.html.id ../..//down/old/m68k-amiga-hungary.html.it ../..//down/old/m68k-amiga-hungary.html.nl ../..//down/old/m68k-amiga-hungary.html.po ../..//down/old/m68k-amiga-hungary.html.sl ../..//down/old/m68k-amiga-hungary.html.ru ../..//down/old/m68k-amiga-hungary.html.zh-CN ../..//down/old/m68k-amiga-hungary.var ../..//down/old/m68k-netbsd-hungary.html.bg ../..//down/old/m68k-netbsd-hungary.html.en ../..//down/old/m68k-netbsd-hungary.html.fi ../..//down/old/m68k-netbsd-hungary.html.fr ../..//down/old/m68k-netbsd-hungary.html.id ../..//down/old/m68k-netbsd-hungary.html.it ../..//down/old/m68k-netbsd-hungary.html.nl ../..//down/old/m68k-netbsd-hungary.html.po ../..//down/old/m68k-netbsd-hungary.html.sl ../..//down/old/m68k-netbsd-hungary.html.ru ../..//down/old/m68k-netbsd-hungary.html.zh-CN ../..//down/old/m68k-netbsd-hungary.var ../..//down/old/docs-netherlands.html.bg ../..//down/old/docs-netherlands.html.en ../..//down/old/docs-netherlands.html.fi ../..//down/old/docs-netherlands.html.fr ../..//down/old/docs-netherlands.html.id ../..//down/old/docs-netherlands.html.it ../..//down/old/docs-netherlands.html.nl ../..//down/old/docs-netherlands.html.po ../..//down/old/docs-netherlands.html.sl ../..//down/old/docs-netherlands.html.ru ../..//down/old/docs-netherlands.html.zh-CN ../..//down/old/docs-netherlands.var ../..//down/old/i386-beos-netherlands.html.bg ../..//down/old/i386-beos-netherlands.html.en ../..//down/old/i386-beos-netherlands.html.fi ../..//down/old/i386-beos-netherlands.html.fr ../..//down/old/i386-beos-netherlands.html.id ../..//down/old/i386-beos-netherlands.html.it ../..//down/old/i386-beos-netherlands.html.nl ../..//down/old/i386-beos-netherlands.html.po ../..//down/old/i386-beos-netherlands.html.sl ../..//down/old/i386-beos-netherlands.html.ru ../..//down/old/i386-beos-netherlands.html.zh-CN ../..//down/old/i386-beos-netherlands.var ../..//down/old/i386-emx-netherlands.html.bg ../..//down/old/i386-emx-netherlands.html.en ../..//down/old/i386-emx-netherlands.html.fi ../..//down/old/i386-emx-netherlands.html.fr ../..//down/old/i386-emx-netherlands.html.id ../..//down/old/i386-emx-netherlands.html.it ../..//down/old/i386-emx-netherlands.html.nl ../..//down/old/i386-emx-netherlands.html.po ../..//down/old/i386-emx-netherlands.html.sl ../..//down/old/i386-emx-netherlands.html.ru ../..//down/old/i386-emx-netherlands.html.zh-CN ../..//down/old/i386-emx-netherlands.var ../..//down/old/i386-netbsd-netherlands.html.bg ../..//down/old/i386-netbsd-netherlands.html.en ../..//down/old/i386-netbsd-netherlands.html.fi ../..//down/old/i386-netbsd-netherlands.html.fr ../..//down/old/i386-netbsd-netherlands.html.id ../..//down/old/i386-netbsd-netherlands.html.it ../..//down/old/i386-netbsd-netherlands.html.nl ../..//down/old/i386-netbsd-netherlands.html.po ../..//down/old/i386-netbsd-netherlands.html.sl ../..//down/old/i386-netbsd-netherlands.html.ru ../..//down/old/i386-netbsd-netherlands.html.zh-CN ../..//down/old/i386-netbsd-netherlands.var ../..//down/old/i386-solaris-netherlands.html.bg ../..//down/old/i386-solaris-netherlands.html.en ../..//down/old/i386-solaris-netherlands.html.fi ../..//down/old/i386-solaris-netherlands.html.fr ../..//down/old/i386-solaris-netherlands.html.id ../..//down/old/i386-solaris-netherlands.html.it ../..//down/old/i386-solaris-netherlands.html.nl ../..//down/old/i386-solaris-netherlands.html.po ../..//down/old/i386-solaris-netherlands.html.sl ../..//down/old/i386-solaris-netherlands.html.ru ../..//down/old/i386-solaris-netherlands.html.zh-CN ../..//down/old/i386-solaris-netherlands.var ../..//down/old/m68k-linux-netherlands.html.bg ../..//down/old/m68k-linux-netherlands.html.en ../..//down/old/m68k-linux-netherlands.html.fi ../..//down/old/m68k-linux-netherlands.html.fr ../..//down/old/m68k-linux-netherlands.html.id ../..//down/old/m68k-linux-netherlands.html.it ../..//down/old/m68k-linux-netherlands.html.nl ../..//down/old/m68k-linux-netherlands.html.po ../..//down/old/m68k-linux-netherlands.html.sl ../..//down/old/m68k-linux-netherlands.html.ru ../..//down/old/m68k-linux-netherlands.html.zh-CN ../..//down/old/m68k-linux-netherlands.var ../..//down/old/down-netherlands.html.bg ../..//down/old/down-netherlands.html.en ../..//down/old/down-netherlands.html.fi ../..//down/old/down-netherlands.html.fr ../..//down/old/down-netherlands.html.id ../..//down/old/down-netherlands.html.it ../..//down/old/down-netherlands.html.nl ../..//down/old/down-netherlands.html.po ../..//down/old/down-netherlands.html.sl ../..//down/old/down-netherlands.html.ru ../..//down/old/down-netherlands.html.zh-CN ../..//down/old/down-netherlands.var ../..//down/old/i386-go32v2-netherlands.html.bg ../..//down/old/i386-go32v2-netherlands.html.en ../..//down/old/i386-go32v2-netherlands.html.fi ../..//down/old/i386-go32v2-netherlands.html.fr ../..//down/old/i386-go32v2-netherlands.html.id ../..//down/old/i386-go32v2-netherlands.html.it ../..//down/old/i386-go32v2-netherlands.html.nl ../..//down/old/i386-go32v2-netherlands.html.po ../..//down/old/i386-go32v2-netherlands.html.sl ../..//down/old/i386-go32v2-netherlands.html.ru ../..//down/old/i386-go32v2-netherlands.html.zh-CN ../..//down/old/i386-go32v2-netherlands.var ../..//down/old/i386-qnx-netherlands.html.bg ../..//down/old/i386-qnx-netherlands.html.en ../..//down/old/i386-qnx-netherlands.html.fi ../..//down/old/i386-qnx-netherlands.html.fr ../..//down/old/i386-qnx-netherlands.html.id ../..//down/old/i386-qnx-netherlands.html.it ../..//down/old/i386-qnx-netherlands.html.nl ../..//down/old/i386-qnx-netherlands.html.po ../..//down/old/i386-qnx-netherlands.html.sl ../..//down/old/i386-qnx-netherlands.html.ru ../..//down/old/i386-qnx-netherlands.html.zh-CN ../..//down/old/i386-qnx-netherlands.var ../..//down/old/m68k-amiga-netherlands.html.bg ../..//down/old/m68k-amiga-netherlands.html.en ../..//down/old/m68k-amiga-netherlands.html.fi ../..//down/old/m68k-amiga-netherlands.html.fr ../..//down/old/m68k-amiga-netherlands.html.id ../..//down/old/m68k-amiga-netherlands.html.it ../..//down/old/m68k-amiga-netherlands.html.nl ../..//down/old/m68k-amiga-netherlands.html.po ../..//down/old/m68k-amiga-netherlands.html.sl ../..//down/old/m68k-amiga-netherlands.html.ru ../..//down/old/m68k-amiga-netherlands.html.zh-CN ../..//down/old/m68k-amiga-netherlands.var ../..//down/old/m68k-netbsd-netherlands.html.bg ../..//down/old/m68k-netbsd-netherlands.html.en ../..//down/old/m68k-netbsd-netherlands.html.fi ../..//down/old/m68k-netbsd-netherlands.html.fr ../..//down/old/m68k-netbsd-netherlands.html.id ../..//down/old/m68k-netbsd-netherlands.html.it ../..//down/old/m68k-netbsd-netherlands.html.nl ../..//down/old/m68k-netbsd-netherlands.html.po ../..//down/old/m68k-netbsd-netherlands.html.sl ../..//down/old/m68k-netbsd-netherlands.html.ru ../..//down/old/m68k-netbsd-netherlands.html.zh-CN ../..//down/old/m68k-netbsd-netherlands.var ../..//down/old/docs.html.bg ../..//down/old/docs.html.en ../..//down/old/docs.html.fi ../..//down/old/docs.html.fr ../..//down/old/docs.html.id ../..//down/old/docs.html.it ../..//down/old/docs.html.nl ../..//down/old/docs.html.po ../..//down/old/docs.html.sl ../..//down/old/docs.html.ru ../..//down/old/docs.html.zh-CN ../..//down/old/docs.var ../..//down/old/i386-beos.html.bg ../..//down/old/i386-beos.html.en ../..//down/old/i386-beos.html.fi ../..//down/old/i386-beos.html.fr ../..//down/old/i386-beos.html.id ../..//down/old/i386-beos.html.it ../..//down/old/i386-beos.html.nl ../..//down/old/i386-beos.html.po ../..//down/old/i386-beos.html.sl ../..//down/old/i386-beos.html.ru ../..//down/old/i386-beos.html.zh-CN ../..//down/old/i386-beos.var ../..//down/old/i386-emx.html.bg ../..//down/old/i386-emx.html.en ../..//down/old/i386-emx.html.fi ../..//down/old/i386-emx.html.fr ../..//down/old/i386-emx.html.id ../..//down/old/i386-emx.html.it ../..//down/old/i386-emx.html.nl ../..//down/old/i386-emx.html.po ../..//down/old/i386-emx.html.sl ../..//down/old/i386-emx.html.ru ../..//down/old/i386-emx.html.zh-CN ../..//down/old/i386-emx.var ../..//down/old/i386-netbsd.html.bg ../..//down/old/i386-netbsd.html.en ../..//down/old/i386-netbsd.html.fi ../..//down/old/i386-netbsd.html.fr ../..//down/old/i386-netbsd.html.id ../..//down/old/i386-netbsd.html.it ../..//down/old/i386-netbsd.html.nl ../..//down/old/i386-netbsd.html.po ../..//down/old/i386-netbsd.html.sl ../..//down/old/i386-netbsd.html.ru ../..//down/old/i386-netbsd.html.zh-CN ../..//down/old/i386-netbsd.var ../..//down/old/i386-solaris.html.bg ../..//down/old/i386-solaris.html.en ../..//down/old/i386-solaris.html.fi ../..//down/old/i386-solaris.html.fr ../..//down/old/i386-solaris.html.id ../..//down/old/i386-solaris.html.it ../..//down/old/i386-solaris.html.nl ../..//down/old/i386-solaris.html.po ../..//down/old/i386-solaris.html.sl ../..//down/old/i386-solaris.html.ru ../..//down/old/i386-solaris.html.zh-CN ../..//down/old/i386-solaris.var ../..//down/old/m68k-linux.html.bg ../..//down/old/m68k-linux.html.en ../..//down/old/m68k-linux.html.fi ../..//down/old/m68k-linux.html.fr ../..//down/old/m68k-linux.html.id ../..//down/old/m68k-linux.html.it ../..//down/old/m68k-linux.html.nl ../..//down/old/m68k-linux.html.po ../..//down/old/m68k-linux.html.sl ../..//down/old/m68k-linux.html.ru ../..//down/old/m68k-linux.html.zh-CN ../..//down/old/m68k-linux.var ../..//down/old/down.html.bg ../..//down/old/down.html.en ../..//down/old/down.html.fi ../..//down/old/down.html.fr ../..//down/old/down.html.id ../..//down/old/down.html.it ../..//down/old/down.html.nl ../..//down/old/down.html.po ../..//down/old/down.html.sl ../..//down/old/down.html.ru ../..//down/old/down.html.zh-CN ../..//down/old/down.var ../..//down/old/i386-go32v2.html.bg ../..//down/old/i386-go32v2.html.en ../..//down/old/i386-go32v2.html.fi ../..//down/old/i386-go32v2.html.fr ../..//down/old/i386-go32v2.html.id ../..//down/old/i386-go32v2.html.it ../..//down/old/i386-go32v2.html.nl ../..//down/old/i386-go32v2.html.po ../..//down/old/i386-go32v2.html.sl ../..//down/old/i386-go32v2.html.ru ../..//down/old/i386-go32v2.html.zh-CN ../..//down/old/i386-go32v2.var ../..//down/old/i386-qnx.html.bg ../..//down/old/i386-qnx.html.en ../..//down/old/i386-qnx.html.fi ../..//down/old/i386-qnx.html.fr ../..//down/old/i386-qnx.html.id ../..//down/old/i386-qnx.html.it ../..//down/old/i386-qnx.html.nl ../..//down/old/i386-qnx.html.po ../..//down/old/i386-qnx.html.sl ../..//down/old/i386-qnx.html.ru ../..//down/old/i386-qnx.html.zh-CN ../..//down/old/i386-qnx.var ../..//down/old/m68k-amiga.html.bg ../..//down/old/m68k-amiga.html.en ../..//down/old/m68k-amiga.html.fi ../..//down/old/m68k-amiga.html.fr ../..//down/old/m68k-amiga.html.id ../..//down/old/m68k-amiga.html.it ../..//down/old/m68k-amiga.html.nl ../..//down/old/m68k-amiga.html.po ../..//down/old/m68k-amiga.html.sl ../..//down/old/m68k-amiga.html.ru ../..//down/old/m68k-amiga.html.zh-CN ../..//down/old/m68k-amiga.var ../..//down/old/m68k-netbsd.html.bg ../..//down/old/m68k-netbsd.html.en ../..//down/old/m68k-netbsd.html.fi ../..//down/old/m68k-netbsd.html.fr ../..//down/old/m68k-netbsd.html.id ../..//down/old/m68k-netbsd.html.it ../..//down/old/m68k-netbsd.html.nl ../..//down/old/m68k-netbsd.html.po ../..//down/old/m68k-netbsd.html.sl ../..//down/old/m68k-netbsd.html.ru ../..//down/old/m68k-netbsd.html.zh-CN ../..//down/old/m68k-netbsd.var
all_en_pages: mirrors.dat ../..//down/old/docs-austria.html ../..//down/old/i386-beos-austria.html ../..//down/old/i386-emx-austria.html ../..//down/old/i386-netbsd-austria.html ../..//down/old/i386-solaris-austria.html ../..//down/old/m68k-linux-austria.html ../..//down/old/down-austria.html ../..//down/old/i386-go32v2-austria.html ../..//down/old/i386-qnx-austria.html ../..//down/old/m68k-amiga-austria.html ../..//down/old/m68k-netbsd-austria.html ../..//down/old/docs-hungary.html ../..//down/old/i386-beos-hungary.html ../..//down/old/i386-emx-hungary.html ../..//down/old/i386-netbsd-hungary.html ../..//down/old/i386-solaris-hungary.html ../..//down/old/m68k-linux-hungary.html ../..//down/old/down-hungary.html ../..//down/old/i386-go32v2-hungary.html ../..//down/old/i386-qnx-hungary.html ../..//down/old/m68k-amiga-hungary.html ../..//down/old/m68k-netbsd-hungary.html ../..//down/old/docs-netherlands.html ../..//down/old/i386-beos-netherlands.html ../..//down/old/i386-emx-netherlands.html ../..//down/old/i386-netbsd-netherlands.html ../..//down/old/i386-solaris-netherlands.html ../..//down/old/m68k-linux-netherlands.html ../..//down/old/down-netherlands.html ../..//down/old/i386-go32v2-netherlands.html ../..//down/old/i386-qnx-netherlands.html ../..//down/old/m68k-amiga-netherlands.html ../..//down/old/m68k-netbsd-netherlands.html ../..//down/old/docs.html ../..//down/old/i386-beos.html ../..//down/old/i386-emx.html ../..//down/old/i386-netbsd.html ../..//down/old/i386-solaris.html ../..//down/old/m68k-linux.html ../..//down/old/down.html ../..//down/old/i386-go32v2.html ../..//down/old/i386-qnx.html ../..//down/old/m68k-amiga.html ../..//down/old/m68k-netbsd.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/old/

