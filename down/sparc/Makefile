
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
../..//down/sparc/sparc-australia.html.bg: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//sparc-australia.html.bg -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-australia.html.en: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-australia.html.en -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-australia.html.fi: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//sparc-australia.html.fi -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-australia.html.fr: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//sparc-australia.html.fr -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-australia.html.id: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//sparc-australia.html.id -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-australia.html.it: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//sparc-australia.html.it -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-australia.html.nl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//sparc-australia.html.nl -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-australia.html.po: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//sparc-australia.html.po -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-australia.html.sl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//sparc-australia.html.sl -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-australia.html.ru: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//sparc-australia.html.ru -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-australia.html.zh-CN: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//sparc-australia.html.zh-CN -oe utf-16 sparc.adp
../..//down/sparc/sparc-australia.html: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-australia.html -oe ISO-8859-1 sparc.adp

../..//down/sparc/sparc-australia.var: gen_makefile.conf
	echo > sparc-australia.var
	echo 'URI: sparc-australia.html.bg' >> sparc-australia.var
	echo 'Content-language: bg' >> sparc-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-australia.var
	echo >> sparc-australia.var
	echo 'URI: sparc-australia.html.en' >> sparc-australia.var
	echo 'Content-language: en' >> sparc-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-australia.var
	echo >> sparc-australia.var
	echo 'URI: sparc-australia.html.fi' >> sparc-australia.var
	echo 'Content-language: fi' >> sparc-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-australia.var
	echo >> sparc-australia.var
	echo 'URI: sparc-australia.html.fr' >> sparc-australia.var
	echo 'Content-language: fr' >> sparc-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-australia.var
	echo >> sparc-australia.var
	echo 'URI: sparc-australia.html.id' >> sparc-australia.var
	echo 'Content-language: id' >> sparc-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-australia.var
	echo >> sparc-australia.var
	echo 'URI: sparc-australia.html.it' >> sparc-australia.var
	echo 'Content-language: it' >> sparc-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-australia.var
	echo >> sparc-australia.var
	echo 'URI: sparc-australia.html.nl' >> sparc-australia.var
	echo 'Content-language: nl' >> sparc-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-australia.var
	echo >> sparc-australia.var
	echo 'URI: sparc-australia.html.po' >> sparc-australia.var
	echo 'Content-language: pl' >> sparc-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-australia.var
	echo >> sparc-australia.var
	echo 'URI: sparc-australia.html.sl' >> sparc-australia.var
	echo 'Content-language: sl' >> sparc-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-australia.var
	echo >> sparc-australia.var
	echo 'URI: sparc-australia.html.ru' >> sparc-australia.var
	echo 'Content-language: ru' >> sparc-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-australia.var
	echo >> sparc-australia.var
	echo 'URI: sparc-australia.html.zh-CN' >> sparc-australia.var
	echo 'Content-language: zh-CN' >> sparc-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> sparc-australia.var
	echo >> sparc-australia.var
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
../..//down/sparc/sparc-austria.html.bg: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//sparc-austria.html.bg -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-austria.html.en: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-austria.html.en -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-austria.html.fi: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//sparc-austria.html.fi -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-austria.html.fr: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//sparc-austria.html.fr -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-austria.html.id: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//sparc-austria.html.id -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-austria.html.it: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//sparc-austria.html.it -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-austria.html.nl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//sparc-austria.html.nl -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-austria.html.po: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//sparc-austria.html.po -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-austria.html.sl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//sparc-austria.html.sl -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-austria.html.ru: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//sparc-austria.html.ru -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-austria.html.zh-CN: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//sparc-austria.html.zh-CN -oe utf-16 sparc.adp
../..//down/sparc/sparc-austria.html: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-austria.html -oe ISO-8859-1 sparc.adp

../..//down/sparc/sparc-austria.var: gen_makefile.conf
	echo > sparc-austria.var
	echo 'URI: sparc-austria.html.bg' >> sparc-austria.var
	echo 'Content-language: bg' >> sparc-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-austria.var
	echo >> sparc-austria.var
	echo 'URI: sparc-austria.html.en' >> sparc-austria.var
	echo 'Content-language: en' >> sparc-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-austria.var
	echo >> sparc-austria.var
	echo 'URI: sparc-austria.html.fi' >> sparc-austria.var
	echo 'Content-language: fi' >> sparc-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-austria.var
	echo >> sparc-austria.var
	echo 'URI: sparc-austria.html.fr' >> sparc-austria.var
	echo 'Content-language: fr' >> sparc-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-austria.var
	echo >> sparc-austria.var
	echo 'URI: sparc-austria.html.id' >> sparc-austria.var
	echo 'Content-language: id' >> sparc-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-austria.var
	echo >> sparc-austria.var
	echo 'URI: sparc-austria.html.it' >> sparc-austria.var
	echo 'Content-language: it' >> sparc-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-austria.var
	echo >> sparc-austria.var
	echo 'URI: sparc-austria.html.nl' >> sparc-austria.var
	echo 'Content-language: nl' >> sparc-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-austria.var
	echo >> sparc-austria.var
	echo 'URI: sparc-austria.html.po' >> sparc-austria.var
	echo 'Content-language: pl' >> sparc-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-austria.var
	echo >> sparc-austria.var
	echo 'URI: sparc-austria.html.sl' >> sparc-austria.var
	echo 'Content-language: sl' >> sparc-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-austria.var
	echo >> sparc-austria.var
	echo 'URI: sparc-austria.html.ru' >> sparc-austria.var
	echo 'Content-language: ru' >> sparc-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-austria.var
	echo >> sparc-austria.var
	echo 'URI: sparc-austria.html.zh-CN' >> sparc-austria.var
	echo 'Content-language: zh-CN' >> sparc-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> sparc-austria.var
	echo >> sparc-austria.var
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
../..//down/sparc/sparc-hungary.html.bg: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//sparc-hungary.html.bg -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-hungary.html.en: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-hungary.html.en -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-hungary.html.fi: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//sparc-hungary.html.fi -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-hungary.html.fr: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//sparc-hungary.html.fr -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-hungary.html.id: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//sparc-hungary.html.id -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-hungary.html.it: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//sparc-hungary.html.it -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-hungary.html.nl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//sparc-hungary.html.nl -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-hungary.html.po: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//sparc-hungary.html.po -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-hungary.html.sl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//sparc-hungary.html.sl -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-hungary.html.ru: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//sparc-hungary.html.ru -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-hungary.html.zh-CN: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//sparc-hungary.html.zh-CN -oe utf-16 sparc.adp
../..//down/sparc/sparc-hungary.html: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-hungary.html -oe ISO-8859-1 sparc.adp

../..//down/sparc/sparc-hungary.var: gen_makefile.conf
	echo > sparc-hungary.var
	echo 'URI: sparc-hungary.html.bg' >> sparc-hungary.var
	echo 'Content-language: bg' >> sparc-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-hungary.var
	echo >> sparc-hungary.var
	echo 'URI: sparc-hungary.html.en' >> sparc-hungary.var
	echo 'Content-language: en' >> sparc-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-hungary.var
	echo >> sparc-hungary.var
	echo 'URI: sparc-hungary.html.fi' >> sparc-hungary.var
	echo 'Content-language: fi' >> sparc-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-hungary.var
	echo >> sparc-hungary.var
	echo 'URI: sparc-hungary.html.fr' >> sparc-hungary.var
	echo 'Content-language: fr' >> sparc-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-hungary.var
	echo >> sparc-hungary.var
	echo 'URI: sparc-hungary.html.id' >> sparc-hungary.var
	echo 'Content-language: id' >> sparc-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-hungary.var
	echo >> sparc-hungary.var
	echo 'URI: sparc-hungary.html.it' >> sparc-hungary.var
	echo 'Content-language: it' >> sparc-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-hungary.var
	echo >> sparc-hungary.var
	echo 'URI: sparc-hungary.html.nl' >> sparc-hungary.var
	echo 'Content-language: nl' >> sparc-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-hungary.var
	echo >> sparc-hungary.var
	echo 'URI: sparc-hungary.html.po' >> sparc-hungary.var
	echo 'Content-language: pl' >> sparc-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-hungary.var
	echo >> sparc-hungary.var
	echo 'URI: sparc-hungary.html.sl' >> sparc-hungary.var
	echo 'Content-language: sl' >> sparc-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-hungary.var
	echo >> sparc-hungary.var
	echo 'URI: sparc-hungary.html.ru' >> sparc-hungary.var
	echo 'Content-language: ru' >> sparc-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-hungary.var
	echo >> sparc-hungary.var
	echo 'URI: sparc-hungary.html.zh-CN' >> sparc-hungary.var
	echo 'Content-language: zh-CN' >> sparc-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> sparc-hungary.var
	echo >> sparc-hungary.var
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
../..//down/sparc/sparc-israel.html.bg: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//sparc-israel.html.bg -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-israel.html.en: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-israel.html.en -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-israel.html.fi: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//sparc-israel.html.fi -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-israel.html.fr: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//sparc-israel.html.fr -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-israel.html.id: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//sparc-israel.html.id -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-israel.html.it: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//sparc-israel.html.it -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-israel.html.nl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//sparc-israel.html.nl -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-israel.html.po: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//sparc-israel.html.po -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-israel.html.sl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//sparc-israel.html.sl -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-israel.html.ru: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//sparc-israel.html.ru -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-israel.html.zh-CN: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//sparc-israel.html.zh-CN -oe utf-16 sparc.adp
../..//down/sparc/sparc-israel.html: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-israel.html -oe ISO-8859-1 sparc.adp

../..//down/sparc/sparc-israel.var: gen_makefile.conf
	echo > sparc-israel.var
	echo 'URI: sparc-israel.html.bg' >> sparc-israel.var
	echo 'Content-language: bg' >> sparc-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-israel.var
	echo >> sparc-israel.var
	echo 'URI: sparc-israel.html.en' >> sparc-israel.var
	echo 'Content-language: en' >> sparc-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-israel.var
	echo >> sparc-israel.var
	echo 'URI: sparc-israel.html.fi' >> sparc-israel.var
	echo 'Content-language: fi' >> sparc-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-israel.var
	echo >> sparc-israel.var
	echo 'URI: sparc-israel.html.fr' >> sparc-israel.var
	echo 'Content-language: fr' >> sparc-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-israel.var
	echo >> sparc-israel.var
	echo 'URI: sparc-israel.html.id' >> sparc-israel.var
	echo 'Content-language: id' >> sparc-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-israel.var
	echo >> sparc-israel.var
	echo 'URI: sparc-israel.html.it' >> sparc-israel.var
	echo 'Content-language: it' >> sparc-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-israel.var
	echo >> sparc-israel.var
	echo 'URI: sparc-israel.html.nl' >> sparc-israel.var
	echo 'Content-language: nl' >> sparc-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-israel.var
	echo >> sparc-israel.var
	echo 'URI: sparc-israel.html.po' >> sparc-israel.var
	echo 'Content-language: pl' >> sparc-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-israel.var
	echo >> sparc-israel.var
	echo 'URI: sparc-israel.html.sl' >> sparc-israel.var
	echo 'Content-language: sl' >> sparc-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-israel.var
	echo >> sparc-israel.var
	echo 'URI: sparc-israel.html.ru' >> sparc-israel.var
	echo 'Content-language: ru' >> sparc-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-israel.var
	echo >> sparc-israel.var
	echo 'URI: sparc-israel.html.zh-CN' >> sparc-israel.var
	echo 'Content-language: zh-CN' >> sparc-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> sparc-israel.var
	echo >> sparc-israel.var
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
../..//down/sparc/sparc-netherlands.html.bg: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//sparc-netherlands.html.bg -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-netherlands.html.en: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-netherlands.html.en -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-netherlands.html.fi: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//sparc-netherlands.html.fi -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-netherlands.html.fr: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//sparc-netherlands.html.fr -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-netherlands.html.id: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//sparc-netherlands.html.id -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-netherlands.html.it: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//sparc-netherlands.html.it -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-netherlands.html.nl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//sparc-netherlands.html.nl -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-netherlands.html.po: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//sparc-netherlands.html.po -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-netherlands.html.sl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//sparc-netherlands.html.sl -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-netherlands.html.ru: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//sparc-netherlands.html.ru -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-netherlands.html.zh-CN: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//sparc-netherlands.html.zh-CN -oe utf-16 sparc.adp
../..//down/sparc/sparc-netherlands.html: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-netherlands.html -oe ISO-8859-1 sparc.adp

../..//down/sparc/sparc-netherlands.var: gen_makefile.conf
	echo > sparc-netherlands.var
	echo 'URI: sparc-netherlands.html.bg' >> sparc-netherlands.var
	echo 'Content-language: bg' >> sparc-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-netherlands.var
	echo >> sparc-netherlands.var
	echo 'URI: sparc-netherlands.html.en' >> sparc-netherlands.var
	echo 'Content-language: en' >> sparc-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-netherlands.var
	echo >> sparc-netherlands.var
	echo 'URI: sparc-netherlands.html.fi' >> sparc-netherlands.var
	echo 'Content-language: fi' >> sparc-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-netherlands.var
	echo >> sparc-netherlands.var
	echo 'URI: sparc-netherlands.html.fr' >> sparc-netherlands.var
	echo 'Content-language: fr' >> sparc-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-netherlands.var
	echo >> sparc-netherlands.var
	echo 'URI: sparc-netherlands.html.id' >> sparc-netherlands.var
	echo 'Content-language: id' >> sparc-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-netherlands.var
	echo >> sparc-netherlands.var
	echo 'URI: sparc-netherlands.html.it' >> sparc-netherlands.var
	echo 'Content-language: it' >> sparc-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-netherlands.var
	echo >> sparc-netherlands.var
	echo 'URI: sparc-netherlands.html.nl' >> sparc-netherlands.var
	echo 'Content-language: nl' >> sparc-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-netherlands.var
	echo >> sparc-netherlands.var
	echo 'URI: sparc-netherlands.html.po' >> sparc-netherlands.var
	echo 'Content-language: pl' >> sparc-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-netherlands.var
	echo >> sparc-netherlands.var
	echo 'URI: sparc-netherlands.html.sl' >> sparc-netherlands.var
	echo 'Content-language: sl' >> sparc-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-netherlands.var
	echo >> sparc-netherlands.var
	echo 'URI: sparc-netherlands.html.ru' >> sparc-netherlands.var
	echo 'Content-language: ru' >> sparc-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-netherlands.var
	echo >> sparc-netherlands.var
	echo 'URI: sparc-netherlands.html.zh-CN' >> sparc-netherlands.var
	echo 'Content-language: zh-CN' >> sparc-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> sparc-netherlands.var
	echo >> sparc-netherlands.var
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
../..//down/sparc/sparc-norway.html.bg: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//sparc-norway.html.bg -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-norway.html.en: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-norway.html.en -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-norway.html.fi: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//sparc-norway.html.fi -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-norway.html.fr: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//sparc-norway.html.fr -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-norway.html.id: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//sparc-norway.html.id -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-norway.html.it: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//sparc-norway.html.it -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-norway.html.nl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//sparc-norway.html.nl -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-norway.html.po: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//sparc-norway.html.po -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-norway.html.sl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//sparc-norway.html.sl -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-norway.html.ru: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//sparc-norway.html.ru -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-norway.html.zh-CN: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//sparc-norway.html.zh-CN -oe utf-16 sparc.adp
../..//down/sparc/sparc-norway.html: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-norway.html -oe ISO-8859-1 sparc.adp

../..//down/sparc/sparc-norway.var: gen_makefile.conf
	echo > sparc-norway.var
	echo 'URI: sparc-norway.html.bg' >> sparc-norway.var
	echo 'Content-language: bg' >> sparc-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-norway.var
	echo >> sparc-norway.var
	echo 'URI: sparc-norway.html.en' >> sparc-norway.var
	echo 'Content-language: en' >> sparc-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-norway.var
	echo >> sparc-norway.var
	echo 'URI: sparc-norway.html.fi' >> sparc-norway.var
	echo 'Content-language: fi' >> sparc-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-norway.var
	echo >> sparc-norway.var
	echo 'URI: sparc-norway.html.fr' >> sparc-norway.var
	echo 'Content-language: fr' >> sparc-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-norway.var
	echo >> sparc-norway.var
	echo 'URI: sparc-norway.html.id' >> sparc-norway.var
	echo 'Content-language: id' >> sparc-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-norway.var
	echo >> sparc-norway.var
	echo 'URI: sparc-norway.html.it' >> sparc-norway.var
	echo 'Content-language: it' >> sparc-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-norway.var
	echo >> sparc-norway.var
	echo 'URI: sparc-norway.html.nl' >> sparc-norway.var
	echo 'Content-language: nl' >> sparc-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-norway.var
	echo >> sparc-norway.var
	echo 'URI: sparc-norway.html.po' >> sparc-norway.var
	echo 'Content-language: pl' >> sparc-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-norway.var
	echo >> sparc-norway.var
	echo 'URI: sparc-norway.html.sl' >> sparc-norway.var
	echo 'Content-language: sl' >> sparc-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-norway.var
	echo >> sparc-norway.var
	echo 'URI: sparc-norway.html.ru' >> sparc-norway.var
	echo 'Content-language: ru' >> sparc-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-norway.var
	echo >> sparc-norway.var
	echo 'URI: sparc-norway.html.zh-CN' >> sparc-norway.var
	echo 'Content-language: zh-CN' >> sparc-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> sparc-norway.var
	echo >> sparc-norway.var
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
../..//down/sparc/sparc-russia.html.bg: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//sparc-russia.html.bg -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-russia.html.en: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-russia.html.en -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-russia.html.fi: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//sparc-russia.html.fi -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-russia.html.fr: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//sparc-russia.html.fr -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-russia.html.id: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//sparc-russia.html.id -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-russia.html.it: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//sparc-russia.html.it -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-russia.html.nl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//sparc-russia.html.nl -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-russia.html.po: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//sparc-russia.html.po -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-russia.html.sl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//sparc-russia.html.sl -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-russia.html.ru: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//sparc-russia.html.ru -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-russia.html.zh-CN: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//sparc-russia.html.zh-CN -oe utf-16 sparc.adp
../..//down/sparc/sparc-russia.html: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-russia.html -oe ISO-8859-1 sparc.adp

../..//down/sparc/sparc-russia.var: gen_makefile.conf
	echo > sparc-russia.var
	echo 'URI: sparc-russia.html.bg' >> sparc-russia.var
	echo 'Content-language: bg' >> sparc-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-russia.var
	echo >> sparc-russia.var
	echo 'URI: sparc-russia.html.en' >> sparc-russia.var
	echo 'Content-language: en' >> sparc-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-russia.var
	echo >> sparc-russia.var
	echo 'URI: sparc-russia.html.fi' >> sparc-russia.var
	echo 'Content-language: fi' >> sparc-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-russia.var
	echo >> sparc-russia.var
	echo 'URI: sparc-russia.html.fr' >> sparc-russia.var
	echo 'Content-language: fr' >> sparc-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-russia.var
	echo >> sparc-russia.var
	echo 'URI: sparc-russia.html.id' >> sparc-russia.var
	echo 'Content-language: id' >> sparc-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-russia.var
	echo >> sparc-russia.var
	echo 'URI: sparc-russia.html.it' >> sparc-russia.var
	echo 'Content-language: it' >> sparc-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-russia.var
	echo >> sparc-russia.var
	echo 'URI: sparc-russia.html.nl' >> sparc-russia.var
	echo 'Content-language: nl' >> sparc-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-russia.var
	echo >> sparc-russia.var
	echo 'URI: sparc-russia.html.po' >> sparc-russia.var
	echo 'Content-language: pl' >> sparc-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-russia.var
	echo >> sparc-russia.var
	echo 'URI: sparc-russia.html.sl' >> sparc-russia.var
	echo 'Content-language: sl' >> sparc-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-russia.var
	echo >> sparc-russia.var
	echo 'URI: sparc-russia.html.ru' >> sparc-russia.var
	echo 'Content-language: ru' >> sparc-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-russia.var
	echo >> sparc-russia.var
	echo 'URI: sparc-russia.html.zh-CN' >> sparc-russia.var
	echo 'Content-language: zh-CN' >> sparc-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> sparc-russia.var
	echo >> sparc-russia.var
../..//down/sparc/linux-ftp.freepascal.org.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.bg -oe iso-8859-5 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.en -oe iso-8859-1 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.fi -oe iso-8859-1 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.fr -oe iso-8859-1 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.id -oe iso-8859-1 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.it -oe iso-8859-1 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.nl -oe iso-8859-1 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.po -oe iso-8859-2 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.sl -oe iso-8859-2 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.ru -oe iso-8859-5 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html.zh-CN -oe utf-16 linux.adp
../..//down/sparc/linux-ftp.freepascal.org.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-ftp.freepascal.org.html -oe ISO-8859-1 linux.adp

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
../..//down/sparc/sparc-ftp.freepascal.org.html.bg: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//sparc-ftp.freepascal.org.html.bg -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-ftp.freepascal.org.html.en: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-ftp.freepascal.org.html.en -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-ftp.freepascal.org.html.fi: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//sparc-ftp.freepascal.org.html.fi -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-ftp.freepascal.org.html.fr: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//sparc-ftp.freepascal.org.html.fr -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-ftp.freepascal.org.html.id: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//sparc-ftp.freepascal.org.html.id -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-ftp.freepascal.org.html.it: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//sparc-ftp.freepascal.org.html.it -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-ftp.freepascal.org.html.nl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//sparc-ftp.freepascal.org.html.nl -oe iso-8859-1 sparc.adp
../..//down/sparc/sparc-ftp.freepascal.org.html.po: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//sparc-ftp.freepascal.org.html.po -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-ftp.freepascal.org.html.sl: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//sparc-ftp.freepascal.org.html.sl -oe iso-8859-2 sparc.adp
../..//down/sparc/sparc-ftp.freepascal.org.html.ru: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//sparc-ftp.freepascal.org.html.ru -oe iso-8859-5 sparc.adp
../..//down/sparc/sparc-ftp.freepascal.org.html.zh-CN: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//sparc-ftp.freepascal.org.html.zh-CN -oe utf-16 sparc.adp
../..//down/sparc/sparc-ftp.freepascal.org.html: sparc.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//sparc-ftp.freepascal.org.html -oe ISO-8859-1 sparc.adp

../..//down/sparc/sparc-ftp.freepascal.org.var: gen_makefile.conf
	echo > sparc-ftp.freepascal.org.var
	echo 'URI: sparc-ftp.freepascal.org.html.bg' >> sparc-ftp.freepascal.org.var
	echo 'Content-language: bg' >> sparc-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-ftp.freepascal.org.var
	echo >> sparc-ftp.freepascal.org.var
	echo 'URI: sparc-ftp.freepascal.org.html.en' >> sparc-ftp.freepascal.org.var
	echo 'Content-language: en' >> sparc-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-ftp.freepascal.org.var
	echo >> sparc-ftp.freepascal.org.var
	echo 'URI: sparc-ftp.freepascal.org.html.fi' >> sparc-ftp.freepascal.org.var
	echo 'Content-language: fi' >> sparc-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-ftp.freepascal.org.var
	echo >> sparc-ftp.freepascal.org.var
	echo 'URI: sparc-ftp.freepascal.org.html.fr' >> sparc-ftp.freepascal.org.var
	echo 'Content-language: fr' >> sparc-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-ftp.freepascal.org.var
	echo >> sparc-ftp.freepascal.org.var
	echo 'URI: sparc-ftp.freepascal.org.html.id' >> sparc-ftp.freepascal.org.var
	echo 'Content-language: id' >> sparc-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-ftp.freepascal.org.var
	echo >> sparc-ftp.freepascal.org.var
	echo 'URI: sparc-ftp.freepascal.org.html.it' >> sparc-ftp.freepascal.org.var
	echo 'Content-language: it' >> sparc-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-ftp.freepascal.org.var
	echo >> sparc-ftp.freepascal.org.var
	echo 'URI: sparc-ftp.freepascal.org.html.nl' >> sparc-ftp.freepascal.org.var
	echo 'Content-language: nl' >> sparc-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc-ftp.freepascal.org.var
	echo >> sparc-ftp.freepascal.org.var
	echo 'URI: sparc-ftp.freepascal.org.html.po' >> sparc-ftp.freepascal.org.var
	echo 'Content-language: pl' >> sparc-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-ftp.freepascal.org.var
	echo >> sparc-ftp.freepascal.org.var
	echo 'URI: sparc-ftp.freepascal.org.html.sl' >> sparc-ftp.freepascal.org.var
	echo 'Content-language: sl' >> sparc-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc-ftp.freepascal.org.var
	echo >> sparc-ftp.freepascal.org.var
	echo 'URI: sparc-ftp.freepascal.org.html.ru' >> sparc-ftp.freepascal.org.var
	echo 'Content-language: ru' >> sparc-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc-ftp.freepascal.org.var
	echo >> sparc-ftp.freepascal.org.var
	echo 'URI: sparc-ftp.freepascal.org.html.zh-CN' >> sparc-ftp.freepascal.org.var
	echo 'Content-language: zh-CN' >> sparc-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=utf-16' >> sparc-ftp.freepascal.org.var
	echo >> sparc-ftp.freepascal.org.var

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

../..//down/sparc/sparc.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sparc -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o sparc.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/sparc/sparc.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sparc -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o sparc.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/sparc.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sparc -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o sparc.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/sparc.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sparc -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o sparc.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/sparc.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sparc -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o sparc.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/sparc.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sparc -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o sparc.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/sparc.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sparc -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o sparc.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/sparc.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sparc -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o sparc.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/sparc/sparc.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sparc -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o sparc.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/sparc/sparc.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sparc -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o sparc.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/sparc/sparc.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=sparc -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o sparc.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/sparc/sparc.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=sparc -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o sparc.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/sparc/sparc.var: gen_makefile.conf
	echo > sparc.var
	echo 'URI: sparc.html.bg' >> sparc.var
	echo 'Content-language: bg' >> sparc.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc.var
	echo >> sparc.var
	echo 'URI: sparc.html.en' >> sparc.var
	echo 'Content-language: en' >> sparc.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc.var
	echo >> sparc.var
	echo 'URI: sparc.html.fi' >> sparc.var
	echo 'Content-language: fi' >> sparc.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc.var
	echo >> sparc.var
	echo 'URI: sparc.html.fr' >> sparc.var
	echo 'Content-language: fr' >> sparc.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc.var
	echo >> sparc.var
	echo 'URI: sparc.html.id' >> sparc.var
	echo 'Content-language: id' >> sparc.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc.var
	echo >> sparc.var
	echo 'URI: sparc.html.it' >> sparc.var
	echo 'Content-language: it' >> sparc.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc.var
	echo >> sparc.var
	echo 'URI: sparc.html.nl' >> sparc.var
	echo 'Content-language: nl' >> sparc.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> sparc.var
	echo >> sparc.var
	echo 'URI: sparc.html.po' >> sparc.var
	echo 'Content-language: pl' >> sparc.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc.var
	echo >> sparc.var
	echo 'URI: sparc.html.sl' >> sparc.var
	echo 'Content-language: sl' >> sparc.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> sparc.var
	echo >> sparc.var
	echo 'URI: sparc.html.ru' >> sparc.var
	echo 'Content-language: ru' >> sparc.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> sparc.var
	echo >> sparc.var
	echo 'URI: sparc.html.zh-CN' >> sparc.var
	echo 'Content-language: zh-CN' >> sparc.var
	echo 'Content-type: text/html; charset=utf-16' >> sparc.var
	echo >> sparc.var

mirrors.dat:
	echo -e 'name\tnamel\turl' > mirrors.dat
	echo -e 'Australia\taustralia\thttp://fpc.planetmirror.com/pub/fpc/' >> mirrors.dat
	echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Israel\tisrael\thttp://mirror.mirimar.net/freepascal/' >> mirrors.dat
	echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat
	echo -e 'Norway\tnorway\tftp://ftp.no.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Russia\trussia\tftp://ftp.chg.ru/pub/lang/pascal/fpc/' >> mirrors.dat
	echo -e 'ftp.freepascal.org\tftp.freepascal.org\tftp://ftp.freepascal.org/pub/fpc/' >> mirrors.dat

all_pages: mirrors.dat ../..//down/sparc/linux-australia.html.bg ../..//down/sparc/linux-australia.html.en ../..//down/sparc/linux-australia.html.fi ../..//down/sparc/linux-australia.html.fr ../..//down/sparc/linux-australia.html.id ../..//down/sparc/linux-australia.html.it ../..//down/sparc/linux-australia.html.nl ../..//down/sparc/linux-australia.html.po ../..//down/sparc/linux-australia.html.sl ../..//down/sparc/linux-australia.html.ru ../..//down/sparc/linux-australia.html.zh-CN ../..//down/sparc/linux-australia.var ../..//down/sparc/sparc-australia.html.bg ../..//down/sparc/sparc-australia.html.en ../..//down/sparc/sparc-australia.html.fi ../..//down/sparc/sparc-australia.html.fr ../..//down/sparc/sparc-australia.html.id ../..//down/sparc/sparc-australia.html.it ../..//down/sparc/sparc-australia.html.nl ../..//down/sparc/sparc-australia.html.po ../..//down/sparc/sparc-australia.html.sl ../..//down/sparc/sparc-australia.html.ru ../..//down/sparc/sparc-australia.html.zh-CN ../..//down/sparc/sparc-australia.var ../..//down/sparc/linux-austria.html.bg ../..//down/sparc/linux-austria.html.en ../..//down/sparc/linux-austria.html.fi ../..//down/sparc/linux-austria.html.fr ../..//down/sparc/linux-austria.html.id ../..//down/sparc/linux-austria.html.it ../..//down/sparc/linux-austria.html.nl ../..//down/sparc/linux-austria.html.po ../..//down/sparc/linux-austria.html.sl ../..//down/sparc/linux-austria.html.ru ../..//down/sparc/linux-austria.html.zh-CN ../..//down/sparc/linux-austria.var ../..//down/sparc/sparc-austria.html.bg ../..//down/sparc/sparc-austria.html.en ../..//down/sparc/sparc-austria.html.fi ../..//down/sparc/sparc-austria.html.fr ../..//down/sparc/sparc-austria.html.id ../..//down/sparc/sparc-austria.html.it ../..//down/sparc/sparc-austria.html.nl ../..//down/sparc/sparc-austria.html.po ../..//down/sparc/sparc-austria.html.sl ../..//down/sparc/sparc-austria.html.ru ../..//down/sparc/sparc-austria.html.zh-CN ../..//down/sparc/sparc-austria.var ../..//down/sparc/linux-hungary.html.bg ../..//down/sparc/linux-hungary.html.en ../..//down/sparc/linux-hungary.html.fi ../..//down/sparc/linux-hungary.html.fr ../..//down/sparc/linux-hungary.html.id ../..//down/sparc/linux-hungary.html.it ../..//down/sparc/linux-hungary.html.nl ../..//down/sparc/linux-hungary.html.po ../..//down/sparc/linux-hungary.html.sl ../..//down/sparc/linux-hungary.html.ru ../..//down/sparc/linux-hungary.html.zh-CN ../..//down/sparc/linux-hungary.var ../..//down/sparc/sparc-hungary.html.bg ../..//down/sparc/sparc-hungary.html.en ../..//down/sparc/sparc-hungary.html.fi ../..//down/sparc/sparc-hungary.html.fr ../..//down/sparc/sparc-hungary.html.id ../..//down/sparc/sparc-hungary.html.it ../..//down/sparc/sparc-hungary.html.nl ../..//down/sparc/sparc-hungary.html.po ../..//down/sparc/sparc-hungary.html.sl ../..//down/sparc/sparc-hungary.html.ru ../..//down/sparc/sparc-hungary.html.zh-CN ../..//down/sparc/sparc-hungary.var ../..//down/sparc/linux-israel.html.bg ../..//down/sparc/linux-israel.html.en ../..//down/sparc/linux-israel.html.fi ../..//down/sparc/linux-israel.html.fr ../..//down/sparc/linux-israel.html.id ../..//down/sparc/linux-israel.html.it ../..//down/sparc/linux-israel.html.nl ../..//down/sparc/linux-israel.html.po ../..//down/sparc/linux-israel.html.sl ../..//down/sparc/linux-israel.html.ru ../..//down/sparc/linux-israel.html.zh-CN ../..//down/sparc/linux-israel.var ../..//down/sparc/sparc-israel.html.bg ../..//down/sparc/sparc-israel.html.en ../..//down/sparc/sparc-israel.html.fi ../..//down/sparc/sparc-israel.html.fr ../..//down/sparc/sparc-israel.html.id ../..//down/sparc/sparc-israel.html.it ../..//down/sparc/sparc-israel.html.nl ../..//down/sparc/sparc-israel.html.po ../..//down/sparc/sparc-israel.html.sl ../..//down/sparc/sparc-israel.html.ru ../..//down/sparc/sparc-israel.html.zh-CN ../..//down/sparc/sparc-israel.var ../..//down/sparc/linux-netherlands.html.bg ../..//down/sparc/linux-netherlands.html.en ../..//down/sparc/linux-netherlands.html.fi ../..//down/sparc/linux-netherlands.html.fr ../..//down/sparc/linux-netherlands.html.id ../..//down/sparc/linux-netherlands.html.it ../..//down/sparc/linux-netherlands.html.nl ../..//down/sparc/linux-netherlands.html.po ../..//down/sparc/linux-netherlands.html.sl ../..//down/sparc/linux-netherlands.html.ru ../..//down/sparc/linux-netherlands.html.zh-CN ../..//down/sparc/linux-netherlands.var ../..//down/sparc/sparc-netherlands.html.bg ../..//down/sparc/sparc-netherlands.html.en ../..//down/sparc/sparc-netherlands.html.fi ../..//down/sparc/sparc-netherlands.html.fr ../..//down/sparc/sparc-netherlands.html.id ../..//down/sparc/sparc-netherlands.html.it ../..//down/sparc/sparc-netherlands.html.nl ../..//down/sparc/sparc-netherlands.html.po ../..//down/sparc/sparc-netherlands.html.sl ../..//down/sparc/sparc-netherlands.html.ru ../..//down/sparc/sparc-netherlands.html.zh-CN ../..//down/sparc/sparc-netherlands.var ../..//down/sparc/linux-norway.html.bg ../..//down/sparc/linux-norway.html.en ../..//down/sparc/linux-norway.html.fi ../..//down/sparc/linux-norway.html.fr ../..//down/sparc/linux-norway.html.id ../..//down/sparc/linux-norway.html.it ../..//down/sparc/linux-norway.html.nl ../..//down/sparc/linux-norway.html.po ../..//down/sparc/linux-norway.html.sl ../..//down/sparc/linux-norway.html.ru ../..//down/sparc/linux-norway.html.zh-CN ../..//down/sparc/linux-norway.var ../..//down/sparc/sparc-norway.html.bg ../..//down/sparc/sparc-norway.html.en ../..//down/sparc/sparc-norway.html.fi ../..//down/sparc/sparc-norway.html.fr ../..//down/sparc/sparc-norway.html.id ../..//down/sparc/sparc-norway.html.it ../..//down/sparc/sparc-norway.html.nl ../..//down/sparc/sparc-norway.html.po ../..//down/sparc/sparc-norway.html.sl ../..//down/sparc/sparc-norway.html.ru ../..//down/sparc/sparc-norway.html.zh-CN ../..//down/sparc/sparc-norway.var ../..//down/sparc/linux-russia.html.bg ../..//down/sparc/linux-russia.html.en ../..//down/sparc/linux-russia.html.fi ../..//down/sparc/linux-russia.html.fr ../..//down/sparc/linux-russia.html.id ../..//down/sparc/linux-russia.html.it ../..//down/sparc/linux-russia.html.nl ../..//down/sparc/linux-russia.html.po ../..//down/sparc/linux-russia.html.sl ../..//down/sparc/linux-russia.html.ru ../..//down/sparc/linux-russia.html.zh-CN ../..//down/sparc/linux-russia.var ../..//down/sparc/sparc-russia.html.bg ../..//down/sparc/sparc-russia.html.en ../..//down/sparc/sparc-russia.html.fi ../..//down/sparc/sparc-russia.html.fr ../..//down/sparc/sparc-russia.html.id ../..//down/sparc/sparc-russia.html.it ../..//down/sparc/sparc-russia.html.nl ../..//down/sparc/sparc-russia.html.po ../..//down/sparc/sparc-russia.html.sl ../..//down/sparc/sparc-russia.html.ru ../..//down/sparc/sparc-russia.html.zh-CN ../..//down/sparc/sparc-russia.var ../..//down/sparc/linux-ftp.freepascal.org.html.bg ../..//down/sparc/linux-ftp.freepascal.org.html.en ../..//down/sparc/linux-ftp.freepascal.org.html.fi ../..//down/sparc/linux-ftp.freepascal.org.html.fr ../..//down/sparc/linux-ftp.freepascal.org.html.id ../..//down/sparc/linux-ftp.freepascal.org.html.it ../..//down/sparc/linux-ftp.freepascal.org.html.nl ../..//down/sparc/linux-ftp.freepascal.org.html.po ../..//down/sparc/linux-ftp.freepascal.org.html.sl ../..//down/sparc/linux-ftp.freepascal.org.html.ru ../..//down/sparc/linux-ftp.freepascal.org.html.zh-CN ../..//down/sparc/linux-ftp.freepascal.org.var ../..//down/sparc/sparc-ftp.freepascal.org.html.bg ../..//down/sparc/sparc-ftp.freepascal.org.html.en ../..//down/sparc/sparc-ftp.freepascal.org.html.fi ../..//down/sparc/sparc-ftp.freepascal.org.html.fr ../..//down/sparc/sparc-ftp.freepascal.org.html.id ../..//down/sparc/sparc-ftp.freepascal.org.html.it ../..//down/sparc/sparc-ftp.freepascal.org.html.nl ../..//down/sparc/sparc-ftp.freepascal.org.html.po ../..//down/sparc/sparc-ftp.freepascal.org.html.sl ../..//down/sparc/sparc-ftp.freepascal.org.html.ru ../..//down/sparc/sparc-ftp.freepascal.org.html.zh-CN ../..//down/sparc/sparc-ftp.freepascal.org.var ../..//down/sparc/linux.html.bg ../..//down/sparc/linux.html.en ../..//down/sparc/linux.html.fi ../..//down/sparc/linux.html.fr ../..//down/sparc/linux.html.id ../..//down/sparc/linux.html.it ../..//down/sparc/linux.html.nl ../..//down/sparc/linux.html.po ../..//down/sparc/linux.html.sl ../..//down/sparc/linux.html.ru ../..//down/sparc/linux.html.zh-CN ../..//down/sparc/linux.var ../..//down/sparc/sparc.html.bg ../..//down/sparc/sparc.html.en ../..//down/sparc/sparc.html.fi ../..//down/sparc/sparc.html.fr ../..//down/sparc/sparc.html.id ../..//down/sparc/sparc.html.it ../..//down/sparc/sparc.html.nl ../..//down/sparc/sparc.html.po ../..//down/sparc/sparc.html.sl ../..//down/sparc/sparc.html.ru ../..//down/sparc/sparc.html.zh-CN ../..//down/sparc/sparc.var
all_en_pages: mirrors.dat ../..//down/sparc/linux-australia.html ../..//down/sparc/sparc-australia.html ../..//down/sparc/linux-austria.html ../..//down/sparc/sparc-austria.html ../..//down/sparc/linux-hungary.html ../..//down/sparc/sparc-hungary.html ../..//down/sparc/linux-israel.html ../..//down/sparc/sparc-israel.html ../..//down/sparc/linux-netherlands.html ../..//down/sparc/sparc-netherlands.html ../..//down/sparc/linux-norway.html ../..//down/sparc/sparc-norway.html ../..//down/sparc/linux-russia.html ../..//down/sparc/sparc-russia.html ../..//down/sparc/linux-ftp.freepascal.org.html ../..//down/sparc/sparc-ftp.freepascal.org.html ../..//down/sparc/linux.html ../..//down/sparc/sparc.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/sparc/

