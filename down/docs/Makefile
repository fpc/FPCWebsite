
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
../..//down/docs/docs-austria.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/docs//docs-austria.html.bg -oe iso-8859-5 docs.adp
../..//down/docs/docs-austria.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs//docs-austria.html.en -oe iso-8859-1 docs.adp
../..//down/docs/docs-austria.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/docs//docs-austria.html.fi -oe iso-8859-1 docs.adp
../..//down/docs/docs-austria.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/docs//docs-austria.html.fr -oe iso-8859-1 docs.adp
../..//down/docs/docs-austria.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/docs//docs-austria.html.id -oe iso-8859-1 docs.adp
../..//down/docs/docs-austria.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/docs//docs-austria.html.it -oe iso-8859-1 docs.adp
../..//down/docs/docs-austria.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/docs//docs-austria.html.nl -oe iso-8859-1 docs.adp
../..//down/docs/docs-austria.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/docs//docs-austria.html.po -oe iso-8859-2 docs.adp
../..//down/docs/docs-austria.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/docs//docs-austria.html.sl -oe iso-8859-2 docs.adp
../..//down/docs/docs-austria.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/docs//docs-austria.html.ru -oe iso-8859-5 docs.adp
../..//down/docs/docs-austria.html.zh-CN: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/docs//docs-austria.html.zh-CN -oe utf-16 docs.adp
../..//down/docs/docs-austria.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs//docs-austria.html -oe ISO-8859-1 docs.adp

../..//down/docs/docs-austria.var: gen_makefile.conf
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
../..//down/docs/docs-hungary.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/docs//docs-hungary.html.bg -oe iso-8859-5 docs.adp
../..//down/docs/docs-hungary.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs//docs-hungary.html.en -oe iso-8859-1 docs.adp
../..//down/docs/docs-hungary.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/docs//docs-hungary.html.fi -oe iso-8859-1 docs.adp
../..//down/docs/docs-hungary.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/docs//docs-hungary.html.fr -oe iso-8859-1 docs.adp
../..//down/docs/docs-hungary.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/docs//docs-hungary.html.id -oe iso-8859-1 docs.adp
../..//down/docs/docs-hungary.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/docs//docs-hungary.html.it -oe iso-8859-1 docs.adp
../..//down/docs/docs-hungary.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/docs//docs-hungary.html.nl -oe iso-8859-1 docs.adp
../..//down/docs/docs-hungary.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/docs//docs-hungary.html.po -oe iso-8859-2 docs.adp
../..//down/docs/docs-hungary.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/docs//docs-hungary.html.sl -oe iso-8859-2 docs.adp
../..//down/docs/docs-hungary.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/docs//docs-hungary.html.ru -oe iso-8859-5 docs.adp
../..//down/docs/docs-hungary.html.zh-CN: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/docs//docs-hungary.html.zh-CN -oe utf-16 docs.adp
../..//down/docs/docs-hungary.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs//docs-hungary.html -oe ISO-8859-1 docs.adp

../..//down/docs/docs-hungary.var: gen_makefile.conf
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
../..//down/docs/docs-netherlands.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/docs//docs-netherlands.html.bg -oe iso-8859-5 docs.adp
../..//down/docs/docs-netherlands.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs//docs-netherlands.html.en -oe iso-8859-1 docs.adp
../..//down/docs/docs-netherlands.html.fi: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/docs//docs-netherlands.html.fi -oe iso-8859-1 docs.adp
../..//down/docs/docs-netherlands.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/docs//docs-netherlands.html.fr -oe iso-8859-1 docs.adp
../..//down/docs/docs-netherlands.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/docs//docs-netherlands.html.id -oe iso-8859-1 docs.adp
../..//down/docs/docs-netherlands.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/docs//docs-netherlands.html.it -oe iso-8859-1 docs.adp
../..//down/docs/docs-netherlands.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/docs//docs-netherlands.html.nl -oe iso-8859-1 docs.adp
../..//down/docs/docs-netherlands.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/docs//docs-netherlands.html.po -oe iso-8859-2 docs.adp
../..//down/docs/docs-netherlands.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/docs//docs-netherlands.html.sl -oe iso-8859-2 docs.adp
../..//down/docs/docs-netherlands.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/docs//docs-netherlands.html.ru -oe iso-8859-5 docs.adp
../..//down/docs/docs-netherlands.html.zh-CN: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/docs//docs-netherlands.html.zh-CN -oe utf-16 docs.adp
../..//down/docs/docs-netherlands.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/docs/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/docs//docs-netherlands.html -oe ISO-8859-1 docs.adp

../..//down/docs/docs-netherlands.var: gen_makefile.conf
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

../..//down/docs/docs.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="Documentation" -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o docs.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/docs/docs.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="Documentation" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/docs/docs.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="Documentation" -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o docs.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/docs/docs.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="Documentation" -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o docs.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/docs/docs.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="Documentation" -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o docs.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/docs/docs.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="Documentation" -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o docs.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/docs/docs.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="Documentation" -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o docs.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/docs/docs.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="Documentation" -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o docs.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/docs/docs.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="Documentation" -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o docs.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/docs/docs.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="Documentation" -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o docs.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/docs/docs.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -p sourceforgepath="Documentation" -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o docs.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/docs/docs.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=docs -p sourceforgepath="Documentation" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/docs/docs.var: gen_makefile.conf
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

mirrors.dat:
	echo -e 'name\tnamel\turl' > mirrors.dat
	/bin/echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	/bin/echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	/bin/echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat

all_pages: mirrors.dat ../..//down/docs/docs-austria.html.bg ../..//down/docs/docs-austria.html.en ../..//down/docs/docs-austria.html.fi ../..//down/docs/docs-austria.html.fr ../..//down/docs/docs-austria.html.id ../..//down/docs/docs-austria.html.it ../..//down/docs/docs-austria.html.nl ../..//down/docs/docs-austria.html.po ../..//down/docs/docs-austria.html.sl ../..//down/docs/docs-austria.html.ru ../..//down/docs/docs-austria.html.zh-CN ../..//down/docs/docs-austria.var ../..//down/docs/docs-hungary.html.bg ../..//down/docs/docs-hungary.html.en ../..//down/docs/docs-hungary.html.fi ../..//down/docs/docs-hungary.html.fr ../..//down/docs/docs-hungary.html.id ../..//down/docs/docs-hungary.html.it ../..//down/docs/docs-hungary.html.nl ../..//down/docs/docs-hungary.html.po ../..//down/docs/docs-hungary.html.sl ../..//down/docs/docs-hungary.html.ru ../..//down/docs/docs-hungary.html.zh-CN ../..//down/docs/docs-hungary.var ../..//down/docs/docs-netherlands.html.bg ../..//down/docs/docs-netherlands.html.en ../..//down/docs/docs-netherlands.html.fi ../..//down/docs/docs-netherlands.html.fr ../..//down/docs/docs-netherlands.html.id ../..//down/docs/docs-netherlands.html.it ../..//down/docs/docs-netherlands.html.nl ../..//down/docs/docs-netherlands.html.po ../..//down/docs/docs-netherlands.html.sl ../..//down/docs/docs-netherlands.html.ru ../..//down/docs/docs-netherlands.html.zh-CN ../..//down/docs/docs-netherlands.var ../..//down/docs/docs.html.bg ../..//down/docs/docs.html.en ../..//down/docs/docs.html.fi ../..//down/docs/docs.html.fr ../..//down/docs/docs.html.id ../..//down/docs/docs.html.it ../..//down/docs/docs.html.nl ../..//down/docs/docs.html.po ../..//down/docs/docs.html.sl ../..//down/docs/docs.html.ru ../..//down/docs/docs.html.zh-CN ../..//down/docs/docs.var
all_en_pages: mirrors.dat ../..//down/docs/docs-austria.html ../..//down/docs/docs-hungary.html ../..//down/docs/docs-netherlands.html ../..//down/docs/docs.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/docs/

