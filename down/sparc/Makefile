
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
../..//down/sparc/linux-australia.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//linux-australia.html.bg -oe iso-8859-5 linux.adp
../..//down/sparc/linux-australia.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-australia.html.en -oe iso-8859-1 linux.adp
../..//down/sparc/linux-australia.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//linux-australia.html.fi -oe iso-8859-1 linux.adp
../..//down/sparc/linux-australia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//linux-australia.html.fr -oe iso-8859-1 linux.adp
../..//down/sparc/linux-australia.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//linux-australia.html.id -oe iso-8859-1 linux.adp
../..//down/sparc/linux-australia.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//linux-australia.html.it -oe iso-8859-1 linux.adp
../..//down/sparc/linux-australia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//linux-australia.html.nl -oe iso-8859-1 linux.adp
../..//down/sparc/linux-australia.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//linux-australia.html.po -oe iso-8859-2 linux.adp
../..//down/sparc/linux-australia.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//linux-australia.html.sl -oe iso-8859-2 linux.adp
../..//down/sparc/linux-australia.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//linux-australia.html.ru -oe iso-8859-5 linux.adp
../..//down/sparc/linux-australia.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//linux-australia.html.zh-CN -oe utf-16 linux.adp
../..//down/sparc/linux-australia.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-australia.html -oe ISO-8859-1 linux.adp

../..//down/sparc/linux-australia.var: gen_makefile.conf
	echo > linux-australia.var
	echo 'URI: linux-australia.html.bg' >> linux-australia.var
	echo 'Content-language: bg' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.en' >> linux-australia.var
	echo 'Content-language: en' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.fi' >> linux-australia.var
	echo 'Content-language: fi' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.fr' >> linux-australia.var
	echo 'Content-language: fr' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.id' >> linux-australia.var
	echo 'Content-language: id' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.it' >> linux-australia.var
	echo 'Content-language: it' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.nl' >> linux-australia.var
	echo 'Content-language: nl' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.po' >> linux-australia.var
	echo 'Content-language: pl' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.sl' >> linux-australia.var
	echo 'Content-language: sl' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.ru' >> linux-australia.var
	echo 'Content-language: ru' >> linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.zh-CN' >> linux-australia.var
	echo 'Content-language: zh-CN' >> linux-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-australia.var
	echo >> linux-australia.var
../..//down/sparc/solaris-australia.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//solaris-australia.html.bg -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-australia.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-australia.html.en -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-australia.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//solaris-australia.html.fi -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-australia.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//solaris-australia.html.fr -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-australia.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//solaris-australia.html.id -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-australia.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//solaris-australia.html.it -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-australia.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//solaris-australia.html.nl -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-australia.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//solaris-australia.html.po -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-australia.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//solaris-australia.html.sl -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-australia.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//solaris-australia.html.ru -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-australia.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//solaris-australia.html.zh-CN -oe utf-16 solaris.adp
../..//down/sparc/solaris-australia.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-australia.html -oe ISO-8859-1 solaris.adp

../..//down/sparc/solaris-australia.var: gen_makefile.conf
	echo > solaris-australia.var
	echo 'URI: solaris-australia.html.bg' >> solaris-australia.var
	echo 'Content-language: bg' >> solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-australia.var
	echo >> solaris-australia.var
	echo 'URI: solaris-australia.html.en' >> solaris-australia.var
	echo 'Content-language: en' >> solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-australia.var
	echo >> solaris-australia.var
	echo 'URI: solaris-australia.html.fi' >> solaris-australia.var
	echo 'Content-language: fi' >> solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-australia.var
	echo >> solaris-australia.var
	echo 'URI: solaris-australia.html.fr' >> solaris-australia.var
	echo 'Content-language: fr' >> solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-australia.var
	echo >> solaris-australia.var
	echo 'URI: solaris-australia.html.id' >> solaris-australia.var
	echo 'Content-language: id' >> solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-australia.var
	echo >> solaris-australia.var
	echo 'URI: solaris-australia.html.it' >> solaris-australia.var
	echo 'Content-language: it' >> solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-australia.var
	echo >> solaris-australia.var
	echo 'URI: solaris-australia.html.nl' >> solaris-australia.var
	echo 'Content-language: nl' >> solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-australia.var
	echo >> solaris-australia.var
	echo 'URI: solaris-australia.html.po' >> solaris-australia.var
	echo 'Content-language: pl' >> solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-australia.var
	echo >> solaris-australia.var
	echo 'URI: solaris-australia.html.sl' >> solaris-australia.var
	echo 'Content-language: sl' >> solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-australia.var
	echo >> solaris-australia.var
	echo 'URI: solaris-australia.html.ru' >> solaris-australia.var
	echo 'Content-language: ru' >> solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-australia.var
	echo >> solaris-australia.var
	echo 'URI: solaris-australia.html.zh-CN' >> solaris-australia.var
	echo 'Content-language: zh-CN' >> solaris-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> solaris-australia.var
	echo >> solaris-australia.var
../..//down/sparc/linux-austria.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.bg -oe iso-8859-5 linux.adp
../..//down/sparc/linux-austria.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.en -oe iso-8859-1 linux.adp
../..//down/sparc/linux-austria.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.fi -oe iso-8859-1 linux.adp
../..//down/sparc/linux-austria.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.fr -oe iso-8859-1 linux.adp
../..//down/sparc/linux-austria.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.id -oe iso-8859-1 linux.adp
../..//down/sparc/linux-austria.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.it -oe iso-8859-1 linux.adp
../..//down/sparc/linux-austria.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.nl -oe iso-8859-1 linux.adp
../..//down/sparc/linux-austria.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.po -oe iso-8859-2 linux.adp
../..//down/sparc/linux-austria.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.sl -oe iso-8859-2 linux.adp
../..//down/sparc/linux-austria.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.ru -oe iso-8859-5 linux.adp
../..//down/sparc/linux-austria.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.zh-CN -oe utf-16 linux.adp
../..//down/sparc/linux-austria.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html -oe ISO-8859-1 linux.adp

../..//down/sparc/linux-austria.var: gen_makefile.conf
	echo > linux-austria.var
	echo 'URI: linux-austria.html.bg' >> linux-austria.var
	echo 'Content-language: bg' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.en' >> linux-austria.var
	echo 'Content-language: en' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.fi' >> linux-austria.var
	echo 'Content-language: fi' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.fr' >> linux-austria.var
	echo 'Content-language: fr' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.id' >> linux-austria.var
	echo 'Content-language: id' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.it' >> linux-austria.var
	echo 'Content-language: it' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.nl' >> linux-austria.var
	echo 'Content-language: nl' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.po' >> linux-austria.var
	echo 'Content-language: pl' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.sl' >> linux-austria.var
	echo 'Content-language: sl' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.ru' >> linux-austria.var
	echo 'Content-language: ru' >> linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.zh-CN' >> linux-austria.var
	echo 'Content-language: zh-CN' >> linux-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-austria.var
	echo >> linux-austria.var
../..//down/sparc/solaris-austria.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.bg -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-austria.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.en -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-austria.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.fi -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-austria.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.fr -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-austria.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.id -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-austria.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.it -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-austria.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.nl -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-austria.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.po -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-austria.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.sl -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-austria.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.ru -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-austria.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.zh-CN -oe utf-16 solaris.adp
../..//down/sparc/solaris-austria.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html -oe ISO-8859-1 solaris.adp

../..//down/sparc/solaris-austria.var: gen_makefile.conf
	echo > solaris-austria.var
	echo 'URI: solaris-austria.html.bg' >> solaris-austria.var
	echo 'Content-language: bg' >> solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-austria.var
	echo >> solaris-austria.var
	echo 'URI: solaris-austria.html.en' >> solaris-austria.var
	echo 'Content-language: en' >> solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-austria.var
	echo >> solaris-austria.var
	echo 'URI: solaris-austria.html.fi' >> solaris-austria.var
	echo 'Content-language: fi' >> solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-austria.var
	echo >> solaris-austria.var
	echo 'URI: solaris-austria.html.fr' >> solaris-austria.var
	echo 'Content-language: fr' >> solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-austria.var
	echo >> solaris-austria.var
	echo 'URI: solaris-austria.html.id' >> solaris-austria.var
	echo 'Content-language: id' >> solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-austria.var
	echo >> solaris-austria.var
	echo 'URI: solaris-austria.html.it' >> solaris-austria.var
	echo 'Content-language: it' >> solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-austria.var
	echo >> solaris-austria.var
	echo 'URI: solaris-austria.html.nl' >> solaris-austria.var
	echo 'Content-language: nl' >> solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-austria.var
	echo >> solaris-austria.var
	echo 'URI: solaris-austria.html.po' >> solaris-austria.var
	echo 'Content-language: pl' >> solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-austria.var
	echo >> solaris-austria.var
	echo 'URI: solaris-austria.html.sl' >> solaris-austria.var
	echo 'Content-language: sl' >> solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-austria.var
	echo >> solaris-austria.var
	echo 'URI: solaris-austria.html.ru' >> solaris-austria.var
	echo 'Content-language: ru' >> solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-austria.var
	echo >> solaris-austria.var
	echo 'URI: solaris-austria.html.zh-CN' >> solaris-austria.var
	echo 'Content-language: zh-CN' >> solaris-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> solaris-austria.var
	echo >> solaris-austria.var
../..//down/sparc/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.bg -oe iso-8859-5 linux.adp
../..//down/sparc/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.en -oe iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.fi -oe iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.fr -oe iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.id -oe iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.it -oe iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.nl -oe iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.po -oe iso-8859-2 linux.adp
../..//down/sparc/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.sl -oe iso-8859-2 linux.adp
../..//down/sparc/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.ru -oe iso-8859-5 linux.adp
../..//down/sparc/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.zh-CN -oe utf-16 linux.adp
../..//down/sparc/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html -oe ISO-8859-1 linux.adp

../..//down/sparc/linux-hungary.var: gen_makefile.conf
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
	echo 'Content-type: text/html; charset=utf-16' >> linux-hungary.var
	echo >> linux-hungary.var
../..//down/sparc/solaris-hungary.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.bg -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-hungary.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.en -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.fi -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.fr -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.id -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.it -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.nl -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.po -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-hungary.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.sl -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-hungary.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.ru -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-hungary.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.zh-CN -oe utf-16 solaris.adp
../..//down/sparc/solaris-hungary.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html -oe ISO-8859-1 solaris.adp

../..//down/sparc/solaris-hungary.var: gen_makefile.conf
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
	echo 'Content-type: text/html; charset=utf-16' >> solaris-hungary.var
	echo >> solaris-hungary.var
../..//down/sparc/linux-israel.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//linux-israel.html.bg -oe iso-8859-5 linux.adp
../..//down/sparc/linux-israel.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-israel.html.en -oe iso-8859-1 linux.adp
../..//down/sparc/linux-israel.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//linux-israel.html.fi -oe iso-8859-1 linux.adp
../..//down/sparc/linux-israel.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//linux-israel.html.fr -oe iso-8859-1 linux.adp
../..//down/sparc/linux-israel.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//linux-israel.html.id -oe iso-8859-1 linux.adp
../..//down/sparc/linux-israel.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//linux-israel.html.it -oe iso-8859-1 linux.adp
../..//down/sparc/linux-israel.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//linux-israel.html.nl -oe iso-8859-1 linux.adp
../..//down/sparc/linux-israel.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//linux-israel.html.po -oe iso-8859-2 linux.adp
../..//down/sparc/linux-israel.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//linux-israel.html.sl -oe iso-8859-2 linux.adp
../..//down/sparc/linux-israel.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//linux-israel.html.ru -oe iso-8859-5 linux.adp
../..//down/sparc/linux-israel.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//linux-israel.html.zh-CN -oe utf-16 linux.adp
../..//down/sparc/linux-israel.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-israel.html -oe ISO-8859-1 linux.adp

../..//down/sparc/linux-israel.var: gen_makefile.conf
	echo > linux-israel.var
	echo 'URI: linux-israel.html.bg' >> linux-israel.var
	echo 'Content-language: bg' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.en' >> linux-israel.var
	echo 'Content-language: en' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.fi' >> linux-israel.var
	echo 'Content-language: fi' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.fr' >> linux-israel.var
	echo 'Content-language: fr' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.id' >> linux-israel.var
	echo 'Content-language: id' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.it' >> linux-israel.var
	echo 'Content-language: it' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.nl' >> linux-israel.var
	echo 'Content-language: nl' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.po' >> linux-israel.var
	echo 'Content-language: pl' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.sl' >> linux-israel.var
	echo 'Content-language: sl' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.ru' >> linux-israel.var
	echo 'Content-language: ru' >> linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.zh-CN' >> linux-israel.var
	echo 'Content-language: zh-CN' >> linux-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-israel.var
	echo >> linux-israel.var
../..//down/sparc/solaris-israel.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//solaris-israel.html.bg -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-israel.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-israel.html.en -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-israel.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//solaris-israel.html.fi -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-israel.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//solaris-israel.html.fr -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-israel.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//solaris-israel.html.id -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-israel.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//solaris-israel.html.it -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-israel.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//solaris-israel.html.nl -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-israel.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//solaris-israel.html.po -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-israel.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//solaris-israel.html.sl -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-israel.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//solaris-israel.html.ru -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-israel.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//solaris-israel.html.zh-CN -oe utf-16 solaris.adp
../..//down/sparc/solaris-israel.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-israel.html -oe ISO-8859-1 solaris.adp

../..//down/sparc/solaris-israel.var: gen_makefile.conf
	echo > solaris-israel.var
	echo 'URI: solaris-israel.html.bg' >> solaris-israel.var
	echo 'Content-language: bg' >> solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-israel.var
	echo >> solaris-israel.var
	echo 'URI: solaris-israel.html.en' >> solaris-israel.var
	echo 'Content-language: en' >> solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-israel.var
	echo >> solaris-israel.var
	echo 'URI: solaris-israel.html.fi' >> solaris-israel.var
	echo 'Content-language: fi' >> solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-israel.var
	echo >> solaris-israel.var
	echo 'URI: solaris-israel.html.fr' >> solaris-israel.var
	echo 'Content-language: fr' >> solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-israel.var
	echo >> solaris-israel.var
	echo 'URI: solaris-israel.html.id' >> solaris-israel.var
	echo 'Content-language: id' >> solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-israel.var
	echo >> solaris-israel.var
	echo 'URI: solaris-israel.html.it' >> solaris-israel.var
	echo 'Content-language: it' >> solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-israel.var
	echo >> solaris-israel.var
	echo 'URI: solaris-israel.html.nl' >> solaris-israel.var
	echo 'Content-language: nl' >> solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-israel.var
	echo >> solaris-israel.var
	echo 'URI: solaris-israel.html.po' >> solaris-israel.var
	echo 'Content-language: pl' >> solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-israel.var
	echo >> solaris-israel.var
	echo 'URI: solaris-israel.html.sl' >> solaris-israel.var
	echo 'Content-language: sl' >> solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-israel.var
	echo >> solaris-israel.var
	echo 'URI: solaris-israel.html.ru' >> solaris-israel.var
	echo 'Content-language: ru' >> solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-israel.var
	echo >> solaris-israel.var
	echo 'URI: solaris-israel.html.zh-CN' >> solaris-israel.var
	echo 'Content-language: zh-CN' >> solaris-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> solaris-israel.var
	echo >> solaris-israel.var
../..//down/sparc/linux-netherlands.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.bg -oe iso-8859-5 linux.adp
../..//down/sparc/linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.en -oe iso-8859-1 linux.adp
../..//down/sparc/linux-netherlands.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.fi -oe iso-8859-1 linux.adp
../..//down/sparc/linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.fr -oe iso-8859-1 linux.adp
../..//down/sparc/linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.id -oe iso-8859-1 linux.adp
../..//down/sparc/linux-netherlands.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.it -oe iso-8859-1 linux.adp
../..//down/sparc/linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.nl -oe iso-8859-1 linux.adp
../..//down/sparc/linux-netherlands.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.po -oe iso-8859-2 linux.adp
../..//down/sparc/linux-netherlands.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.sl -oe iso-8859-2 linux.adp
../..//down/sparc/linux-netherlands.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.ru -oe iso-8859-5 linux.adp
../..//down/sparc/linux-netherlands.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.zh-CN -oe utf-16 linux.adp
../..//down/sparc/linux-netherlands.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html -oe ISO-8859-1 linux.adp

../..//down/sparc/linux-netherlands.var: gen_makefile.conf
	echo > linux-netherlands.var
	echo 'URI: linux-netherlands.html.bg' >> linux-netherlands.var
	echo 'Content-language: bg' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.en' >> linux-netherlands.var
	echo 'Content-language: en' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.fi' >> linux-netherlands.var
	echo 'Content-language: fi' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.fr' >> linux-netherlands.var
	echo 'Content-language: fr' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.id' >> linux-netherlands.var
	echo 'Content-language: id' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.it' >> linux-netherlands.var
	echo 'Content-language: it' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.nl' >> linux-netherlands.var
	echo 'Content-language: nl' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.po' >> linux-netherlands.var
	echo 'Content-language: pl' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.sl' >> linux-netherlands.var
	echo 'Content-language: sl' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.ru' >> linux-netherlands.var
	echo 'Content-language: ru' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.zh-CN' >> linux-netherlands.var
	echo 'Content-language: zh-CN' >> linux-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-netherlands.var
	echo >> linux-netherlands.var
../..//down/sparc/solaris-netherlands.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.bg -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-netherlands.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.en -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-netherlands.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.fi -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-netherlands.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.fr -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-netherlands.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.id -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-netherlands.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.it -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-netherlands.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.nl -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-netherlands.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.po -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-netherlands.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.sl -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-netherlands.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.ru -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-netherlands.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.zh-CN -oe utf-16 solaris.adp
../..//down/sparc/solaris-netherlands.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html -oe ISO-8859-1 solaris.adp

../..//down/sparc/solaris-netherlands.var: gen_makefile.conf
	echo > solaris-netherlands.var
	echo 'URI: solaris-netherlands.html.bg' >> solaris-netherlands.var
	echo 'Content-language: bg' >> solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-netherlands.var
	echo >> solaris-netherlands.var
	echo 'URI: solaris-netherlands.html.en' >> solaris-netherlands.var
	echo 'Content-language: en' >> solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-netherlands.var
	echo >> solaris-netherlands.var
	echo 'URI: solaris-netherlands.html.fi' >> solaris-netherlands.var
	echo 'Content-language: fi' >> solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-netherlands.var
	echo >> solaris-netherlands.var
	echo 'URI: solaris-netherlands.html.fr' >> solaris-netherlands.var
	echo 'Content-language: fr' >> solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-netherlands.var
	echo >> solaris-netherlands.var
	echo 'URI: solaris-netherlands.html.id' >> solaris-netherlands.var
	echo 'Content-language: id' >> solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-netherlands.var
	echo >> solaris-netherlands.var
	echo 'URI: solaris-netherlands.html.it' >> solaris-netherlands.var
	echo 'Content-language: it' >> solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-netherlands.var
	echo >> solaris-netherlands.var
	echo 'URI: solaris-netherlands.html.nl' >> solaris-netherlands.var
	echo 'Content-language: nl' >> solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-netherlands.var
	echo >> solaris-netherlands.var
	echo 'URI: solaris-netherlands.html.po' >> solaris-netherlands.var
	echo 'Content-language: pl' >> solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-netherlands.var
	echo >> solaris-netherlands.var
	echo 'URI: solaris-netherlands.html.sl' >> solaris-netherlands.var
	echo 'Content-language: sl' >> solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-netherlands.var
	echo >> solaris-netherlands.var
	echo 'URI: solaris-netherlands.html.ru' >> solaris-netherlands.var
	echo 'Content-language: ru' >> solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-netherlands.var
	echo >> solaris-netherlands.var
	echo 'URI: solaris-netherlands.html.zh-CN' >> solaris-netherlands.var
	echo 'Content-language: zh-CN' >> solaris-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> solaris-netherlands.var
	echo >> solaris-netherlands.var
../..//down/sparc/linux-norway.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//linux-norway.html.bg -oe iso-8859-5 linux.adp
../..//down/sparc/linux-norway.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-norway.html.en -oe iso-8859-1 linux.adp
../..//down/sparc/linux-norway.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//linux-norway.html.fi -oe iso-8859-1 linux.adp
../..//down/sparc/linux-norway.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//linux-norway.html.fr -oe iso-8859-1 linux.adp
../..//down/sparc/linux-norway.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//linux-norway.html.id -oe iso-8859-1 linux.adp
../..//down/sparc/linux-norway.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//linux-norway.html.it -oe iso-8859-1 linux.adp
../..//down/sparc/linux-norway.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//linux-norway.html.nl -oe iso-8859-1 linux.adp
../..//down/sparc/linux-norway.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//linux-norway.html.po -oe iso-8859-2 linux.adp
../..//down/sparc/linux-norway.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//linux-norway.html.sl -oe iso-8859-2 linux.adp
../..//down/sparc/linux-norway.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//linux-norway.html.ru -oe iso-8859-5 linux.adp
../..//down/sparc/linux-norway.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//linux-norway.html.zh-CN -oe utf-16 linux.adp
../..//down/sparc/linux-norway.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-norway.html -oe ISO-8859-1 linux.adp

../..//down/sparc/linux-norway.var: gen_makefile.conf
	echo > linux-norway.var
	echo 'URI: linux-norway.html.bg' >> linux-norway.var
	echo 'Content-language: bg' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.en' >> linux-norway.var
	echo 'Content-language: en' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.fi' >> linux-norway.var
	echo 'Content-language: fi' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.fr' >> linux-norway.var
	echo 'Content-language: fr' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.id' >> linux-norway.var
	echo 'Content-language: id' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.it' >> linux-norway.var
	echo 'Content-language: it' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.nl' >> linux-norway.var
	echo 'Content-language: nl' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.po' >> linux-norway.var
	echo 'Content-language: pl' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.sl' >> linux-norway.var
	echo 'Content-language: sl' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.ru' >> linux-norway.var
	echo 'Content-language: ru' >> linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.zh-CN' >> linux-norway.var
	echo 'Content-language: zh-CN' >> linux-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-norway.var
	echo >> linux-norway.var
../..//down/sparc/solaris-norway.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//solaris-norway.html.bg -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-norway.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-norway.html.en -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-norway.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//solaris-norway.html.fi -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-norway.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//solaris-norway.html.fr -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-norway.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//solaris-norway.html.id -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-norway.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//solaris-norway.html.it -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-norway.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//solaris-norway.html.nl -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-norway.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//solaris-norway.html.po -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-norway.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//solaris-norway.html.sl -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-norway.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//solaris-norway.html.ru -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-norway.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//solaris-norway.html.zh-CN -oe utf-16 solaris.adp
../..//down/sparc/solaris-norway.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-norway.html -oe ISO-8859-1 solaris.adp

../..//down/sparc/solaris-norway.var: gen_makefile.conf
	echo > solaris-norway.var
	echo 'URI: solaris-norway.html.bg' >> solaris-norway.var
	echo 'Content-language: bg' >> solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-norway.var
	echo >> solaris-norway.var
	echo 'URI: solaris-norway.html.en' >> solaris-norway.var
	echo 'Content-language: en' >> solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-norway.var
	echo >> solaris-norway.var
	echo 'URI: solaris-norway.html.fi' >> solaris-norway.var
	echo 'Content-language: fi' >> solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-norway.var
	echo >> solaris-norway.var
	echo 'URI: solaris-norway.html.fr' >> solaris-norway.var
	echo 'Content-language: fr' >> solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-norway.var
	echo >> solaris-norway.var
	echo 'URI: solaris-norway.html.id' >> solaris-norway.var
	echo 'Content-language: id' >> solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-norway.var
	echo >> solaris-norway.var
	echo 'URI: solaris-norway.html.it' >> solaris-norway.var
	echo 'Content-language: it' >> solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-norway.var
	echo >> solaris-norway.var
	echo 'URI: solaris-norway.html.nl' >> solaris-norway.var
	echo 'Content-language: nl' >> solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-norway.var
	echo >> solaris-norway.var
	echo 'URI: solaris-norway.html.po' >> solaris-norway.var
	echo 'Content-language: pl' >> solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-norway.var
	echo >> solaris-norway.var
	echo 'URI: solaris-norway.html.sl' >> solaris-norway.var
	echo 'Content-language: sl' >> solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-norway.var
	echo >> solaris-norway.var
	echo 'URI: solaris-norway.html.ru' >> solaris-norway.var
	echo 'Content-language: ru' >> solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-norway.var
	echo >> solaris-norway.var
	echo 'URI: solaris-norway.html.zh-CN' >> solaris-norway.var
	echo 'Content-language: zh-CN' >> solaris-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> solaris-norway.var
	echo >> solaris-norway.var
../..//down/sparc/linux-russia.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//linux-russia.html.bg -oe iso-8859-5 linux.adp
../..//down/sparc/linux-russia.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-russia.html.en -oe iso-8859-1 linux.adp
../..//down/sparc/linux-russia.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//linux-russia.html.fi -oe iso-8859-1 linux.adp
../..//down/sparc/linux-russia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//linux-russia.html.fr -oe iso-8859-1 linux.adp
../..//down/sparc/linux-russia.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//linux-russia.html.id -oe iso-8859-1 linux.adp
../..//down/sparc/linux-russia.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//linux-russia.html.it -oe iso-8859-1 linux.adp
../..//down/sparc/linux-russia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//linux-russia.html.nl -oe iso-8859-1 linux.adp
../..//down/sparc/linux-russia.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//linux-russia.html.po -oe iso-8859-2 linux.adp
../..//down/sparc/linux-russia.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//linux-russia.html.sl -oe iso-8859-2 linux.adp
../..//down/sparc/linux-russia.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//linux-russia.html.ru -oe iso-8859-5 linux.adp
../..//down/sparc/linux-russia.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//linux-russia.html.zh-CN -oe utf-16 linux.adp
../..//down/sparc/linux-russia.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-russia.html -oe ISO-8859-1 linux.adp

../..//down/sparc/linux-russia.var: gen_makefile.conf
	echo > linux-russia.var
	echo 'URI: linux-russia.html.bg' >> linux-russia.var
	echo 'Content-language: bg' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.en' >> linux-russia.var
	echo 'Content-language: en' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.fi' >> linux-russia.var
	echo 'Content-language: fi' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.fr' >> linux-russia.var
	echo 'Content-language: fr' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.id' >> linux-russia.var
	echo 'Content-language: id' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.it' >> linux-russia.var
	echo 'Content-language: it' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.nl' >> linux-russia.var
	echo 'Content-language: nl' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.po' >> linux-russia.var
	echo 'Content-language: pl' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.sl' >> linux-russia.var
	echo 'Content-language: sl' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.ru' >> linux-russia.var
	echo 'Content-language: ru' >> linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.zh-CN' >> linux-russia.var
	echo 'Content-language: zh-CN' >> linux-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-russia.var
	echo >> linux-russia.var
../..//down/sparc/solaris-russia.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//solaris-russia.html.bg -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-russia.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-russia.html.en -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-russia.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//solaris-russia.html.fi -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-russia.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//solaris-russia.html.fr -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-russia.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//solaris-russia.html.id -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-russia.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//solaris-russia.html.it -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-russia.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//solaris-russia.html.nl -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-russia.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//solaris-russia.html.po -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-russia.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//solaris-russia.html.sl -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-russia.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//solaris-russia.html.ru -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-russia.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//solaris-russia.html.zh-CN -oe utf-16 solaris.adp
../..//down/sparc/solaris-russia.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-russia.html -oe ISO-8859-1 solaris.adp

../..//down/sparc/solaris-russia.var: gen_makefile.conf
	echo > solaris-russia.var
	echo 'URI: solaris-russia.html.bg' >> solaris-russia.var
	echo 'Content-language: bg' >> solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-russia.var
	echo >> solaris-russia.var
	echo 'URI: solaris-russia.html.en' >> solaris-russia.var
	echo 'Content-language: en' >> solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-russia.var
	echo >> solaris-russia.var
	echo 'URI: solaris-russia.html.fi' >> solaris-russia.var
	echo 'Content-language: fi' >> solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-russia.var
	echo >> solaris-russia.var
	echo 'URI: solaris-russia.html.fr' >> solaris-russia.var
	echo 'Content-language: fr' >> solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-russia.var
	echo >> solaris-russia.var
	echo 'URI: solaris-russia.html.id' >> solaris-russia.var
	echo 'Content-language: id' >> solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-russia.var
	echo >> solaris-russia.var
	echo 'URI: solaris-russia.html.it' >> solaris-russia.var
	echo 'Content-language: it' >> solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-russia.var
	echo >> solaris-russia.var
	echo 'URI: solaris-russia.html.nl' >> solaris-russia.var
	echo 'Content-language: nl' >> solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-russia.var
	echo >> solaris-russia.var
	echo 'URI: solaris-russia.html.po' >> solaris-russia.var
	echo 'Content-language: pl' >> solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-russia.var
	echo >> solaris-russia.var
	echo 'URI: solaris-russia.html.sl' >> solaris-russia.var
	echo 'Content-language: sl' >> solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-russia.var
	echo >> solaris-russia.var
	echo 'URI: solaris-russia.html.ru' >> solaris-russia.var
	echo 'Content-language: ru' >> solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-russia.var
	echo >> solaris-russia.var
	echo 'URI: solaris-russia.html.zh-CN' >> solaris-russia.var
	echo 'Content-language: zh-CN' >> solaris-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> solaris-russia.var
	echo >> solaris-russia.var
../..//down/sparc/linux-ftp.freepascal.org.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.bg -oe iso-8859-5 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.en -oe iso-8859-1 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.fi -oe iso-8859-1 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.fr -oe iso-8859-1 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.id -oe iso-8859-1 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.it -oe iso-8859-1 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.nl -oe iso-8859-1 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.po -oe iso-8859-2 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.sl -oe iso-8859-2 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.ru -oe iso-8859-5 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.zh-CN -oe utf-16 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html -oe ISO-8859-1 linux.adp

../..//down/sparc/linux-ftp.freepascal.org.var: gen_makefile.conf
	echo > linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.bg' >> linux-ftp.freepascal.org.var
	echo 'Content-language: bg' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.en' >> linux-ftp.freepascal.org.var
	echo 'Content-language: en' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.fi' >> linux-ftp.freepascal.org.var
	echo 'Content-language: fi' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.fr' >> linux-ftp.freepascal.org.var
	echo 'Content-language: fr' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.id' >> linux-ftp.freepascal.org.var
	echo 'Content-language: id' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.it' >> linux-ftp.freepascal.org.var
	echo 'Content-language: it' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.nl' >> linux-ftp.freepascal.org.var
	echo 'Content-language: nl' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.po' >> linux-ftp.freepascal.org.var
	echo 'Content-language: pl' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.sl' >> linux-ftp.freepascal.org.var
	echo 'Content-language: sl' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.ru' >> linux-ftp.freepascal.org.var
	echo 'Content-language: ru' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.zh-CN' >> linux-ftp.freepascal.org.var
	echo 'Content-language: zh-CN' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=utf-16' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
../..//down/sparc/solaris-ftp.freepascal.org.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//solaris-ftp.freepascal.org.html.bg -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-ftp.freepascal.org.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-ftp.freepascal.org.html.en -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-ftp.freepascal.org.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//solaris-ftp.freepascal.org.html.fi -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-ftp.freepascal.org.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//solaris-ftp.freepascal.org.html.fr -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-ftp.freepascal.org.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//solaris-ftp.freepascal.org.html.id -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-ftp.freepascal.org.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//solaris-ftp.freepascal.org.html.it -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-ftp.freepascal.org.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//solaris-ftp.freepascal.org.html.nl -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-ftp.freepascal.org.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//solaris-ftp.freepascal.org.html.po -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-ftp.freepascal.org.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//solaris-ftp.freepascal.org.html.sl -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-ftp.freepascal.org.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//solaris-ftp.freepascal.org.html.ru -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-ftp.freepascal.org.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//solaris-ftp.freepascal.org.html.zh-CN -oe utf-16 solaris.adp
../..//down/sparc/solaris-ftp.freepascal.org.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://193.224.143.39/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-ftp.freepascal.org.html -oe ISO-8859-1 solaris.adp

../..//down/sparc/solaris-ftp.freepascal.org.var: gen_makefile.conf
	echo > solaris-ftp.freepascal.org.var
	echo 'URI: solaris-ftp.freepascal.org.html.bg' >> solaris-ftp.freepascal.org.var
	echo 'Content-language: bg' >> solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-ftp.freepascal.org.var
	echo >> solaris-ftp.freepascal.org.var
	echo 'URI: solaris-ftp.freepascal.org.html.en' >> solaris-ftp.freepascal.org.var
	echo 'Content-language: en' >> solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-ftp.freepascal.org.var
	echo >> solaris-ftp.freepascal.org.var
	echo 'URI: solaris-ftp.freepascal.org.html.fi' >> solaris-ftp.freepascal.org.var
	echo 'Content-language: fi' >> solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-ftp.freepascal.org.var
	echo >> solaris-ftp.freepascal.org.var
	echo 'URI: solaris-ftp.freepascal.org.html.fr' >> solaris-ftp.freepascal.org.var
	echo 'Content-language: fr' >> solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-ftp.freepascal.org.var
	echo >> solaris-ftp.freepascal.org.var
	echo 'URI: solaris-ftp.freepascal.org.html.id' >> solaris-ftp.freepascal.org.var
	echo 'Content-language: id' >> solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-ftp.freepascal.org.var
	echo >> solaris-ftp.freepascal.org.var
	echo 'URI: solaris-ftp.freepascal.org.html.it' >> solaris-ftp.freepascal.org.var
	echo 'Content-language: it' >> solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-ftp.freepascal.org.var
	echo >> solaris-ftp.freepascal.org.var
	echo 'URI: solaris-ftp.freepascal.org.html.nl' >> solaris-ftp.freepascal.org.var
	echo 'Content-language: nl' >> solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-ftp.freepascal.org.var
	echo >> solaris-ftp.freepascal.org.var
	echo 'URI: solaris-ftp.freepascal.org.html.po' >> solaris-ftp.freepascal.org.var
	echo 'Content-language: pl' >> solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-ftp.freepascal.org.var
	echo >> solaris-ftp.freepascal.org.var
	echo 'URI: solaris-ftp.freepascal.org.html.sl' >> solaris-ftp.freepascal.org.var
	echo 'Content-language: sl' >> solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-ftp.freepascal.org.var
	echo >> solaris-ftp.freepascal.org.var
	echo 'URI: solaris-ftp.freepascal.org.html.ru' >> solaris-ftp.freepascal.org.var
	echo 'Content-language: ru' >> solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-ftp.freepascal.org.var
	echo >> solaris-ftp.freepascal.org.var
	echo 'URI: solaris-ftp.freepascal.org.html.zh-CN' >> solaris-ftp.freepascal.org.var
	echo 'Content-language: zh-CN' >> solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=utf-16' >> solaris-ftp.freepascal.org.var
	echo >> solaris-ftp.freepascal.org.var

../..//down/sparc/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/sparc/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/sparc/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/sparc/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/sparc/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/sparc/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.var: gen_makefile.conf
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
	echo 'Content-type: text/html; charset=utf-16' >> linux.var
	echo >> linux.var

../..//down/sparc/solaris.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o solaris.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/sparc/solaris.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o solaris.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o solaris.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o solaris.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o solaris.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o solaris.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o solaris.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o solaris.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/sparc/solaris.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o solaris.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/sparc/solaris.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o solaris.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/sparc/solaris.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o solaris.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/sparc/solaris.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=solaris -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o solaris.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.var: gen_makefile.conf
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
	echo 'Content-type: text/html; charset=utf-16' >> solaris.var
	echo >> solaris.var

mirrors.dat:
	echo -e 'name\tnamel\turl' > mirrors.dat
	echo -e 'Australia\taustralia\thttp://fpc.planetmirror.com/pub/fpc/' >> mirrors.dat
	echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Israel\tisrael\thttp://mirror.mirimar.net/freepascal/' >> mirrors.dat
	echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat
	echo -e 'Norway\tnorway\tftp://ftp.no.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Russia\trussia\tftp://ftp.chg.ru/pub/lang/pascal/fpc/' >> mirrors.dat
	echo -e 'ftp.freepascal.org\tftp.freepascal.org\tftp://193.224.143.39/pub/fpc/' >> mirrors.dat

all_pages: mirrors.dat ../..//down/sparc/linux-australia.html.bg ../..//down/sparc/linux-australia.html.en ../..//down/sparc/linux-australia.html.fi ../..//down/sparc/linux-australia.html.fr ../..//down/sparc/linux-australia.html.id ../..//down/sparc/linux-australia.html.it ../..//down/sparc/linux-australia.html.nl ../..//down/sparc/linux-australia.html.po ../..//down/sparc/linux-australia.html.sl ../..//down/sparc/linux-australia.html.ru ../..//down/sparc/linux-australia.html.zh-CN ../..//down/sparc/linux-australia.var ../..//down/sparc/solaris-australia.html.bg ../..//down/sparc/solaris-australia.html.en ../..//down/sparc/solaris-australia.html.fi ../..//down/sparc/solaris-australia.html.fr ../..//down/sparc/solaris-australia.html.id ../..//down/sparc/solaris-australia.html.it ../..//down/sparc/solaris-australia.html.nl ../..//down/sparc/solaris-australia.html.po ../..//down/sparc/solaris-australia.html.sl ../..//down/sparc/solaris-australia.html.ru ../..//down/sparc/solaris-australia.html.zh-CN ../..//down/sparc/solaris-australia.var ../..//down/sparc/linux-austria.html.bg ../..//down/sparc/linux-austria.html.en ../..//down/sparc/linux-austria.html.fi ../..//down/sparc/linux-austria.html.fr ../..//down/sparc/linux-austria.html.id ../..//down/sparc/linux-austria.html.it ../..//down/sparc/linux-austria.html.nl ../..//down/sparc/linux-austria.html.po ../..//down/sparc/linux-austria.html.sl ../..//down/sparc/linux-austria.html.ru ../..//down/sparc/linux-austria.html.zh-CN ../..//down/sparc/linux-austria.var ../..//down/sparc/solaris-austria.html.bg ../..//down/sparc/solaris-austria.html.en ../..//down/sparc/solaris-austria.html.fi ../..//down/sparc/solaris-austria.html.fr ../..//down/sparc/solaris-austria.html.id ../..//down/sparc/solaris-austria.html.it ../..//down/sparc/solaris-austria.html.nl ../..//down/sparc/solaris-austria.html.po ../..//down/sparc/solaris-austria.html.sl ../..//down/sparc/solaris-austria.html.ru ../..//down/sparc/solaris-austria.html.zh-CN ../..//down/sparc/solaris-austria.var ../..//down/sparc/linux-hungary.html.bg ../..//down/sparc/linux-hungary.html.en ../..//down/sparc/linux-hungary.html.fi ../..//down/sparc/linux-hungary.html.fr ../..//down/sparc/linux-hungary.html.id ../..//down/sparc/linux-hungary.html.it ../..//down/sparc/linux-hungary.html.nl ../..//down/sparc/linux-hungary.html.po ../..//down/sparc/linux-hungary.html.sl ../..//down/sparc/linux-hungary.html.ru ../..//down/sparc/linux-hungary.html.zh-CN ../..//down/sparc/linux-hungary.var ../..//down/sparc/solaris-hungary.html.bg ../..//down/sparc/solaris-hungary.html.en ../..//down/sparc/solaris-hungary.html.fi ../..//down/sparc/solaris-hungary.html.fr ../..//down/sparc/solaris-hungary.html.id ../..//down/sparc/solaris-hungary.html.it ../..//down/sparc/solaris-hungary.html.nl ../..//down/sparc/solaris-hungary.html.po ../..//down/sparc/solaris-hungary.html.sl ../..//down/sparc/solaris-hungary.html.ru ../..//down/sparc/solaris-hungary.html.zh-CN ../..//down/sparc/solaris-hungary.var ../..//down/sparc/linux-israel.html.bg ../..//down/sparc/linux-israel.html.en ../..//down/sparc/linux-israel.html.fi ../..//down/sparc/linux-israel.html.fr ../..//down/sparc/linux-israel.html.id ../..//down/sparc/linux-israel.html.it ../..//down/sparc/linux-israel.html.nl ../..//down/sparc/linux-israel.html.po ../..//down/sparc/linux-israel.html.sl ../..//down/sparc/linux-israel.html.ru ../..//down/sparc/linux-israel.html.zh-CN ../..//down/sparc/linux-israel.var ../..//down/sparc/solaris-israel.html.bg ../..//down/sparc/solaris-israel.html.en ../..//down/sparc/solaris-israel.html.fi ../..//down/sparc/solaris-israel.html.fr ../..//down/sparc/solaris-israel.html.id ../..//down/sparc/solaris-israel.html.it ../..//down/sparc/solaris-israel.html.nl ../..//down/sparc/solaris-israel.html.po ../..//down/sparc/solaris-israel.html.sl ../..//down/sparc/solaris-israel.html.ru ../..//down/sparc/solaris-israel.html.zh-CN ../..//down/sparc/solaris-israel.var ../..//down/sparc/linux-netherlands.html.bg ../..//down/sparc/linux-netherlands.html.en ../..//down/sparc/linux-netherlands.html.fi ../..//down/sparc/linux-netherlands.html.fr ../..//down/sparc/linux-netherlands.html.id ../..//down/sparc/linux-netherlands.html.it ../..//down/sparc/linux-netherlands.html.nl ../..//down/sparc/linux-netherlands.html.po ../..//down/sparc/linux-netherlands.html.sl ../..//down/sparc/linux-netherlands.html.ru ../..//down/sparc/linux-netherlands.html.zh-CN ../..//down/sparc/linux-netherlands.var ../..//down/sparc/solaris-netherlands.html.bg ../..//down/sparc/solaris-netherlands.html.en ../..//down/sparc/solaris-netherlands.html.fi ../..//down/sparc/solaris-netherlands.html.fr ../..//down/sparc/solaris-netherlands.html.id ../..//down/sparc/solaris-netherlands.html.it ../..//down/sparc/solaris-netherlands.html.nl ../..//down/sparc/solaris-netherlands.html.po ../..//down/sparc/solaris-netherlands.html.sl ../..//down/sparc/solaris-netherlands.html.ru ../..//down/sparc/solaris-netherlands.html.zh-CN ../..//down/sparc/solaris-netherlands.var ../..//down/sparc/linux-norway.html.bg ../..//down/sparc/linux-norway.html.en ../..//down/sparc/linux-norway.html.fi ../..//down/sparc/linux-norway.html.fr ../..//down/sparc/linux-norway.html.id ../..//down/sparc/linux-norway.html.it ../..//down/sparc/linux-norway.html.nl ../..//down/sparc/linux-norway.html.po ../..//down/sparc/linux-norway.html.sl ../..//down/sparc/linux-norway.html.ru ../..//down/sparc/linux-norway.html.zh-CN ../..//down/sparc/linux-norway.var ../..//down/sparc/solaris-norway.html.bg ../..//down/sparc/solaris-norway.html.en ../..//down/sparc/solaris-norway.html.fi ../..//down/sparc/solaris-norway.html.fr ../..//down/sparc/solaris-norway.html.id ../..//down/sparc/solaris-norway.html.it ../..//down/sparc/solaris-norway.html.nl ../..//down/sparc/solaris-norway.html.po ../..//down/sparc/solaris-norway.html.sl ../..//down/sparc/solaris-norway.html.ru ../..//down/sparc/solaris-norway.html.zh-CN ../..//down/sparc/solaris-norway.var ../..//down/sparc/linux-russia.html.bg ../..//down/sparc/linux-russia.html.en ../..//down/sparc/linux-russia.html.fi ../..//down/sparc/linux-russia.html.fr ../..//down/sparc/linux-russia.html.id ../..//down/sparc/linux-russia.html.it ../..//down/sparc/linux-russia.html.nl ../..//down/sparc/linux-russia.html.po ../..//down/sparc/linux-russia.html.sl ../..//down/sparc/linux-russia.html.ru ../..//down/sparc/linux-russia.html.zh-CN ../..//down/sparc/linux-russia.var ../..//down/sparc/solaris-russia.html.bg ../..//down/sparc/solaris-russia.html.en ../..//down/sparc/solaris-russia.html.fi ../..//down/sparc/solaris-russia.html.fr ../..//down/sparc/solaris-russia.html.id ../..//down/sparc/solaris-russia.html.it ../..//down/sparc/solaris-russia.html.nl ../..//down/sparc/solaris-russia.html.po ../..//down/sparc/solaris-russia.html.sl ../..//down/sparc/solaris-russia.html.ru ../..//down/sparc/solaris-russia.html.zh-CN ../..//down/sparc/solaris-russia.var ../..//down/sparc/linux-ftp.freepascal.org.html.bg ../..//down/sparc/linux-ftp.freepascal.org.html.en ../..//down/sparc/linux-ftp.freepascal.org.html.fi ../..//down/sparc/linux-ftp.freepascal.org.html.fr ../..//down/sparc/linux-ftp.freepascal.org.html.id ../..//down/sparc/linux-ftp.freepascal.org.html.it ../..//down/sparc/linux-ftp.freepascal.org.html.nl ../..//down/sparc/linux-ftp.freepascal.org.html.po ../..//down/sparc/linux-ftp.freepascal.org.html.sl ../..//down/sparc/linux-ftp.freepascal.org.html.ru ../..//down/sparc/linux-ftp.freepascal.org.html.zh-CN ../..//down/sparc/linux-ftp.freepascal.org.var ../..//down/sparc/solaris-ftp.freepascal.org.html.bg ../..//down/sparc/solaris-ftp.freepascal.org.html.en ../..//down/sparc/solaris-ftp.freepascal.org.html.fi ../..//down/sparc/solaris-ftp.freepascal.org.html.fr ../..//down/sparc/solaris-ftp.freepascal.org.html.id ../..//down/sparc/solaris-ftp.freepascal.org.html.it ../..//down/sparc/solaris-ftp.freepascal.org.html.nl ../..//down/sparc/solaris-ftp.freepascal.org.html.po ../..//down/sparc/solaris-ftp.freepascal.org.html.sl ../..//down/sparc/solaris-ftp.freepascal.org.html.ru ../..//down/sparc/solaris-ftp.freepascal.org.html.zh-CN ../..//down/sparc/solaris-ftp.freepascal.org.var ../..//down/sparc/linux.html.bg ../..//down/sparc/linux.html.en ../..//down/sparc/linux.html.fi ../..//down/sparc/linux.html.fr ../..//down/sparc/linux.html.id ../..//down/sparc/linux.html.it ../..//down/sparc/linux.html.nl ../..//down/sparc/linux.html.po ../..//down/sparc/linux.html.sl ../..//down/sparc/linux.html.ru ../..//down/sparc/linux.html.zh-CN ../..//down/sparc/linux.var ../..//down/sparc/solaris.html.bg ../..//down/sparc/solaris.html.en ../..//down/sparc/solaris.html.fi ../..//down/sparc/solaris.html.fr ../..//down/sparc/solaris.html.id ../..//down/sparc/solaris.html.it ../..//down/sparc/solaris.html.nl ../..//down/sparc/solaris.html.po ../..//down/sparc/solaris.html.sl ../..//down/sparc/solaris.html.ru ../..//down/sparc/solaris.html.zh-CN ../..//down/sparc/solaris.var
all_en_pages: mirrors.dat ../..//down/sparc/linux-australia.html ../..//down/sparc/solaris-australia.html ../..//down/sparc/linux-austria.html ../..//down/sparc/solaris-austria.html ../..//down/sparc/linux-hungary.html ../..//down/sparc/solaris-hungary.html ../..//down/sparc/linux-israel.html ../..//down/sparc/solaris-israel.html ../..//down/sparc/linux-netherlands.html ../..//down/sparc/solaris-netherlands.html ../..//down/sparc/linux-norway.html ../..//down/sparc/solaris-norway.html ../..//down/sparc/linux-russia.html ../..//down/sparc/solaris-russia.html ../..//down/sparc/linux-ftp.freepascal.org.html ../..//down/sparc/solaris-ftp.freepascal.org.html ../..//down/sparc/linux.html ../..//down/sparc/solaris.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/sparc/

