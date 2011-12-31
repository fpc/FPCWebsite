
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
../..//down2/x86_64/linux-australia.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//linux-australia.html.bg -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-australia.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-australia.html.en -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-australia.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//linux-australia.html.fi -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-australia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//linux-australia.html.fr -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-australia.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//linux-australia.html.id -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-australia.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//linux-australia.html.it -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-australia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//linux-australia.html.nl -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-australia.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//linux-australia.html.po -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-australia.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//linux-australia.html.sl -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-australia.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//linux-australia.html.ru -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-australia.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//linux-australia.html.zh-CN -oe utf-16 linux.adp
../..//down2/x86_64/linux-australia.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-australia.html -oe ISO-8859-1 linux.adp

../..//down2/x86_64/linux-australia.var: gen_makefile.conf
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
../..//down2/x86_64/win64-australia.html.bg: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//win64-australia.html.bg -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-australia.html.en: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-australia.html.en -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-australia.html.fi: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//win64-australia.html.fi -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-australia.html.fr: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//win64-australia.html.fr -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-australia.html.id: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//win64-australia.html.id -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-australia.html.it: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//win64-australia.html.it -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-australia.html.nl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//win64-australia.html.nl -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-australia.html.po: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//win64-australia.html.po -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-australia.html.sl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//win64-australia.html.sl -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-australia.html.ru: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//win64-australia.html.ru -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-australia.html.zh-CN: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//win64-australia.html.zh-CN -oe utf-16 win64.adp
../..//down2/x86_64/win64-australia.html: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-australia.html -oe ISO-8859-1 win64.adp

../..//down2/x86_64/win64-australia.var: gen_makefile.conf
	echo > win64-australia.var
	echo 'URI: win64-australia.html.bg' >> win64-australia.var
	echo 'Content-language: bg' >> win64-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-australia.var
	echo >> win64-australia.var
	echo 'URI: win64-australia.html.en' >> win64-australia.var
	echo 'Content-language: en' >> win64-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-australia.var
	echo >> win64-australia.var
	echo 'URI: win64-australia.html.fi' >> win64-australia.var
	echo 'Content-language: fi' >> win64-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-australia.var
	echo >> win64-australia.var
	echo 'URI: win64-australia.html.fr' >> win64-australia.var
	echo 'Content-language: fr' >> win64-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-australia.var
	echo >> win64-australia.var
	echo 'URI: win64-australia.html.id' >> win64-australia.var
	echo 'Content-language: id' >> win64-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-australia.var
	echo >> win64-australia.var
	echo 'URI: win64-australia.html.it' >> win64-australia.var
	echo 'Content-language: it' >> win64-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-australia.var
	echo >> win64-australia.var
	echo 'URI: win64-australia.html.nl' >> win64-australia.var
	echo 'Content-language: nl' >> win64-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-australia.var
	echo >> win64-australia.var
	echo 'URI: win64-australia.html.po' >> win64-australia.var
	echo 'Content-language: pl' >> win64-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-australia.var
	echo >> win64-australia.var
	echo 'URI: win64-australia.html.sl' >> win64-australia.var
	echo 'Content-language: sl' >> win64-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-australia.var
	echo >> win64-australia.var
	echo 'URI: win64-australia.html.ru' >> win64-australia.var
	echo 'Content-language: ru' >> win64-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-australia.var
	echo >> win64-australia.var
	echo 'URI: win64-australia.html.zh-CN' >> win64-australia.var
	echo 'Content-language: zh-CN' >> win64-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> win64-australia.var
	echo >> win64-australia.var
../..//down2/x86_64/linux-austria.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//linux-austria.html.bg -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-austria.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-austria.html.en -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-austria.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//linux-austria.html.fi -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-austria.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//linux-austria.html.fr -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-austria.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//linux-austria.html.id -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-austria.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//linux-austria.html.it -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-austria.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//linux-austria.html.nl -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-austria.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//linux-austria.html.po -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-austria.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//linux-austria.html.sl -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-austria.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//linux-austria.html.ru -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-austria.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//linux-austria.html.zh-CN -oe utf-16 linux.adp
../..//down2/x86_64/linux-austria.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-austria.html -oe ISO-8859-1 linux.adp

../..//down2/x86_64/linux-austria.var: gen_makefile.conf
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
../..//down2/x86_64/win64-austria.html.bg: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//win64-austria.html.bg -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-austria.html.en: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-austria.html.en -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-austria.html.fi: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//win64-austria.html.fi -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-austria.html.fr: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//win64-austria.html.fr -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-austria.html.id: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//win64-austria.html.id -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-austria.html.it: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//win64-austria.html.it -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-austria.html.nl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//win64-austria.html.nl -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-austria.html.po: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//win64-austria.html.po -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-austria.html.sl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//win64-austria.html.sl -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-austria.html.ru: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//win64-austria.html.ru -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-austria.html.zh-CN: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//win64-austria.html.zh-CN -oe utf-16 win64.adp
../..//down2/x86_64/win64-austria.html: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-austria.html -oe ISO-8859-1 win64.adp

../..//down2/x86_64/win64-austria.var: gen_makefile.conf
	echo > win64-austria.var
	echo 'URI: win64-austria.html.bg' >> win64-austria.var
	echo 'Content-language: bg' >> win64-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-austria.var
	echo >> win64-austria.var
	echo 'URI: win64-austria.html.en' >> win64-austria.var
	echo 'Content-language: en' >> win64-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-austria.var
	echo >> win64-austria.var
	echo 'URI: win64-austria.html.fi' >> win64-austria.var
	echo 'Content-language: fi' >> win64-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-austria.var
	echo >> win64-austria.var
	echo 'URI: win64-austria.html.fr' >> win64-austria.var
	echo 'Content-language: fr' >> win64-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-austria.var
	echo >> win64-austria.var
	echo 'URI: win64-austria.html.id' >> win64-austria.var
	echo 'Content-language: id' >> win64-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-austria.var
	echo >> win64-austria.var
	echo 'URI: win64-austria.html.it' >> win64-austria.var
	echo 'Content-language: it' >> win64-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-austria.var
	echo >> win64-austria.var
	echo 'URI: win64-austria.html.nl' >> win64-austria.var
	echo 'Content-language: nl' >> win64-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-austria.var
	echo >> win64-austria.var
	echo 'URI: win64-austria.html.po' >> win64-austria.var
	echo 'Content-language: pl' >> win64-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-austria.var
	echo >> win64-austria.var
	echo 'URI: win64-austria.html.sl' >> win64-austria.var
	echo 'Content-language: sl' >> win64-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-austria.var
	echo >> win64-austria.var
	echo 'URI: win64-austria.html.ru' >> win64-austria.var
	echo 'Content-language: ru' >> win64-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-austria.var
	echo >> win64-austria.var
	echo 'URI: win64-austria.html.zh-CN' >> win64-austria.var
	echo 'Content-language: zh-CN' >> win64-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> win64-austria.var
	echo >> win64-austria.var
../..//down2/x86_64/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.bg -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.en -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.fi -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.fr -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.id -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.it -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.nl -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.po -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.sl -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.ru -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.zh-CN -oe utf-16 linux.adp
../..//down2/x86_64/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html -oe ISO-8859-1 linux.adp

../..//down2/x86_64/linux-hungary.var: gen_makefile.conf
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
../..//down2/x86_64/win64-hungary.html.bg: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.bg -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-hungary.html.en: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.en -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-hungary.html.fi: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.fi -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-hungary.html.fr: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.fr -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-hungary.html.id: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.id -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-hungary.html.it: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.it -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-hungary.html.nl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.nl -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-hungary.html.po: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.po -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-hungary.html.sl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.sl -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-hungary.html.ru: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.ru -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-hungary.html.zh-CN: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.zh-CN -oe utf-16 win64.adp
../..//down2/x86_64/win64-hungary.html: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html -oe ISO-8859-1 win64.adp

../..//down2/x86_64/win64-hungary.var: gen_makefile.conf
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
	echo 'Content-type: text/html; charset=utf-16' >> win64-hungary.var
	echo >> win64-hungary.var
../..//down2/x86_64/linux-israel.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//linux-israel.html.bg -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-israel.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-israel.html.en -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-israel.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//linux-israel.html.fi -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-israel.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//linux-israel.html.fr -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-israel.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//linux-israel.html.id -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-israel.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//linux-israel.html.it -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-israel.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//linux-israel.html.nl -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-israel.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//linux-israel.html.po -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-israel.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//linux-israel.html.sl -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-israel.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//linux-israel.html.ru -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-israel.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//linux-israel.html.zh-CN -oe utf-16 linux.adp
../..//down2/x86_64/linux-israel.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-israel.html -oe ISO-8859-1 linux.adp

../..//down2/x86_64/linux-israel.var: gen_makefile.conf
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
../..//down2/x86_64/win64-israel.html.bg: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//win64-israel.html.bg -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-israel.html.en: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-israel.html.en -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-israel.html.fi: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//win64-israel.html.fi -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-israel.html.fr: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//win64-israel.html.fr -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-israel.html.id: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//win64-israel.html.id -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-israel.html.it: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//win64-israel.html.it -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-israel.html.nl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//win64-israel.html.nl -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-israel.html.po: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//win64-israel.html.po -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-israel.html.sl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//win64-israel.html.sl -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-israel.html.ru: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//win64-israel.html.ru -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-israel.html.zh-CN: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//win64-israel.html.zh-CN -oe utf-16 win64.adp
../..//down2/x86_64/win64-israel.html: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-israel.html -oe ISO-8859-1 win64.adp

../..//down2/x86_64/win64-israel.var: gen_makefile.conf
	echo > win64-israel.var
	echo 'URI: win64-israel.html.bg' >> win64-israel.var
	echo 'Content-language: bg' >> win64-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-israel.var
	echo >> win64-israel.var
	echo 'URI: win64-israel.html.en' >> win64-israel.var
	echo 'Content-language: en' >> win64-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-israel.var
	echo >> win64-israel.var
	echo 'URI: win64-israel.html.fi' >> win64-israel.var
	echo 'Content-language: fi' >> win64-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-israel.var
	echo >> win64-israel.var
	echo 'URI: win64-israel.html.fr' >> win64-israel.var
	echo 'Content-language: fr' >> win64-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-israel.var
	echo >> win64-israel.var
	echo 'URI: win64-israel.html.id' >> win64-israel.var
	echo 'Content-language: id' >> win64-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-israel.var
	echo >> win64-israel.var
	echo 'URI: win64-israel.html.it' >> win64-israel.var
	echo 'Content-language: it' >> win64-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-israel.var
	echo >> win64-israel.var
	echo 'URI: win64-israel.html.nl' >> win64-israel.var
	echo 'Content-language: nl' >> win64-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-israel.var
	echo >> win64-israel.var
	echo 'URI: win64-israel.html.po' >> win64-israel.var
	echo 'Content-language: pl' >> win64-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-israel.var
	echo >> win64-israel.var
	echo 'URI: win64-israel.html.sl' >> win64-israel.var
	echo 'Content-language: sl' >> win64-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-israel.var
	echo >> win64-israel.var
	echo 'URI: win64-israel.html.ru' >> win64-israel.var
	echo 'Content-language: ru' >> win64-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-israel.var
	echo >> win64-israel.var
	echo 'URI: win64-israel.html.zh-CN' >> win64-israel.var
	echo 'Content-language: zh-CN' >> win64-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> win64-israel.var
	echo >> win64-israel.var
../..//down2/x86_64/linux-netherlands.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.bg -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.en -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-netherlands.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.fi -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.fr -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.id -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-netherlands.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.it -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.nl -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-netherlands.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.po -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-netherlands.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.sl -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-netherlands.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.ru -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-netherlands.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.zh-CN -oe utf-16 linux.adp
../..//down2/x86_64/linux-netherlands.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html -oe ISO-8859-1 linux.adp

../..//down2/x86_64/linux-netherlands.var: gen_makefile.conf
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
../..//down2/x86_64/win64-netherlands.html.bg: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.bg -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-netherlands.html.en: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.en -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-netherlands.html.fi: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.fi -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-netherlands.html.fr: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.fr -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-netherlands.html.id: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.id -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-netherlands.html.it: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.it -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-netherlands.html.nl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.nl -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-netherlands.html.po: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.po -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-netherlands.html.sl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.sl -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-netherlands.html.ru: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.ru -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-netherlands.html.zh-CN: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.zh-CN -oe utf-16 win64.adp
../..//down2/x86_64/win64-netherlands.html: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html -oe ISO-8859-1 win64.adp

../..//down2/x86_64/win64-netherlands.var: gen_makefile.conf
	echo > win64-netherlands.var
	echo 'URI: win64-netherlands.html.bg' >> win64-netherlands.var
	echo 'Content-language: bg' >> win64-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-netherlands.var
	echo >> win64-netherlands.var
	echo 'URI: win64-netherlands.html.en' >> win64-netherlands.var
	echo 'Content-language: en' >> win64-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-netherlands.var
	echo >> win64-netherlands.var
	echo 'URI: win64-netherlands.html.fi' >> win64-netherlands.var
	echo 'Content-language: fi' >> win64-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-netherlands.var
	echo >> win64-netherlands.var
	echo 'URI: win64-netherlands.html.fr' >> win64-netherlands.var
	echo 'Content-language: fr' >> win64-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-netherlands.var
	echo >> win64-netherlands.var
	echo 'URI: win64-netherlands.html.id' >> win64-netherlands.var
	echo 'Content-language: id' >> win64-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-netherlands.var
	echo >> win64-netherlands.var
	echo 'URI: win64-netherlands.html.it' >> win64-netherlands.var
	echo 'Content-language: it' >> win64-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-netherlands.var
	echo >> win64-netherlands.var
	echo 'URI: win64-netherlands.html.nl' >> win64-netherlands.var
	echo 'Content-language: nl' >> win64-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-netherlands.var
	echo >> win64-netherlands.var
	echo 'URI: win64-netherlands.html.po' >> win64-netherlands.var
	echo 'Content-language: pl' >> win64-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-netherlands.var
	echo >> win64-netherlands.var
	echo 'URI: win64-netherlands.html.sl' >> win64-netherlands.var
	echo 'Content-language: sl' >> win64-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-netherlands.var
	echo >> win64-netherlands.var
	echo 'URI: win64-netherlands.html.ru' >> win64-netherlands.var
	echo 'Content-language: ru' >> win64-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-netherlands.var
	echo >> win64-netherlands.var
	echo 'URI: win64-netherlands.html.zh-CN' >> win64-netherlands.var
	echo 'Content-language: zh-CN' >> win64-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> win64-netherlands.var
	echo >> win64-netherlands.var
../..//down2/x86_64/linux-norway.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//linux-norway.html.bg -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-norway.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-norway.html.en -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-norway.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//linux-norway.html.fi -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-norway.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//linux-norway.html.fr -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-norway.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//linux-norway.html.id -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-norway.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//linux-norway.html.it -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-norway.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//linux-norway.html.nl -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-norway.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//linux-norway.html.po -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-norway.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//linux-norway.html.sl -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-norway.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//linux-norway.html.ru -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-norway.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//linux-norway.html.zh-CN -oe utf-16 linux.adp
../..//down2/x86_64/linux-norway.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-norway.html -oe ISO-8859-1 linux.adp

../..//down2/x86_64/linux-norway.var: gen_makefile.conf
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
../..//down2/x86_64/win64-norway.html.bg: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//win64-norway.html.bg -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-norway.html.en: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-norway.html.en -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-norway.html.fi: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//win64-norway.html.fi -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-norway.html.fr: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//win64-norway.html.fr -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-norway.html.id: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//win64-norway.html.id -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-norway.html.it: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//win64-norway.html.it -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-norway.html.nl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//win64-norway.html.nl -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-norway.html.po: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//win64-norway.html.po -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-norway.html.sl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//win64-norway.html.sl -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-norway.html.ru: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//win64-norway.html.ru -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-norway.html.zh-CN: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//win64-norway.html.zh-CN -oe utf-16 win64.adp
../..//down2/x86_64/win64-norway.html: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-norway.html -oe ISO-8859-1 win64.adp

../..//down2/x86_64/win64-norway.var: gen_makefile.conf
	echo > win64-norway.var
	echo 'URI: win64-norway.html.bg' >> win64-norway.var
	echo 'Content-language: bg' >> win64-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-norway.var
	echo >> win64-norway.var
	echo 'URI: win64-norway.html.en' >> win64-norway.var
	echo 'Content-language: en' >> win64-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-norway.var
	echo >> win64-norway.var
	echo 'URI: win64-norway.html.fi' >> win64-norway.var
	echo 'Content-language: fi' >> win64-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-norway.var
	echo >> win64-norway.var
	echo 'URI: win64-norway.html.fr' >> win64-norway.var
	echo 'Content-language: fr' >> win64-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-norway.var
	echo >> win64-norway.var
	echo 'URI: win64-norway.html.id' >> win64-norway.var
	echo 'Content-language: id' >> win64-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-norway.var
	echo >> win64-norway.var
	echo 'URI: win64-norway.html.it' >> win64-norway.var
	echo 'Content-language: it' >> win64-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-norway.var
	echo >> win64-norway.var
	echo 'URI: win64-norway.html.nl' >> win64-norway.var
	echo 'Content-language: nl' >> win64-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-norway.var
	echo >> win64-norway.var
	echo 'URI: win64-norway.html.po' >> win64-norway.var
	echo 'Content-language: pl' >> win64-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-norway.var
	echo >> win64-norway.var
	echo 'URI: win64-norway.html.sl' >> win64-norway.var
	echo 'Content-language: sl' >> win64-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-norway.var
	echo >> win64-norway.var
	echo 'URI: win64-norway.html.ru' >> win64-norway.var
	echo 'Content-language: ru' >> win64-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-norway.var
	echo >> win64-norway.var
	echo 'URI: win64-norway.html.zh-CN' >> win64-norway.var
	echo 'Content-language: zh-CN' >> win64-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> win64-norway.var
	echo >> win64-norway.var
../..//down2/x86_64/linux-russia.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//linux-russia.html.bg -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-russia.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-russia.html.en -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-russia.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//linux-russia.html.fi -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-russia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//linux-russia.html.fr -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-russia.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//linux-russia.html.id -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-russia.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//linux-russia.html.it -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-russia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//linux-russia.html.nl -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-russia.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//linux-russia.html.po -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-russia.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//linux-russia.html.sl -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-russia.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//linux-russia.html.ru -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-russia.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//linux-russia.html.zh-CN -oe utf-16 linux.adp
../..//down2/x86_64/linux-russia.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-russia.html -oe ISO-8859-1 linux.adp

../..//down2/x86_64/linux-russia.var: gen_makefile.conf
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
../..//down2/x86_64/win64-russia.html.bg: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//win64-russia.html.bg -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-russia.html.en: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-russia.html.en -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-russia.html.fi: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//win64-russia.html.fi -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-russia.html.fr: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//win64-russia.html.fr -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-russia.html.id: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//win64-russia.html.id -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-russia.html.it: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//win64-russia.html.it -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-russia.html.nl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//win64-russia.html.nl -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-russia.html.po: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//win64-russia.html.po -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-russia.html.sl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//win64-russia.html.sl -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-russia.html.ru: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//win64-russia.html.ru -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-russia.html.zh-CN: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//win64-russia.html.zh-CN -oe utf-16 win64.adp
../..//down2/x86_64/win64-russia.html: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-russia.html -oe ISO-8859-1 win64.adp

../..//down2/x86_64/win64-russia.var: gen_makefile.conf
	echo > win64-russia.var
	echo 'URI: win64-russia.html.bg' >> win64-russia.var
	echo 'Content-language: bg' >> win64-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-russia.var
	echo >> win64-russia.var
	echo 'URI: win64-russia.html.en' >> win64-russia.var
	echo 'Content-language: en' >> win64-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-russia.var
	echo >> win64-russia.var
	echo 'URI: win64-russia.html.fi' >> win64-russia.var
	echo 'Content-language: fi' >> win64-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-russia.var
	echo >> win64-russia.var
	echo 'URI: win64-russia.html.fr' >> win64-russia.var
	echo 'Content-language: fr' >> win64-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-russia.var
	echo >> win64-russia.var
	echo 'URI: win64-russia.html.id' >> win64-russia.var
	echo 'Content-language: id' >> win64-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-russia.var
	echo >> win64-russia.var
	echo 'URI: win64-russia.html.it' >> win64-russia.var
	echo 'Content-language: it' >> win64-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-russia.var
	echo >> win64-russia.var
	echo 'URI: win64-russia.html.nl' >> win64-russia.var
	echo 'Content-language: nl' >> win64-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win64-russia.var
	echo >> win64-russia.var
	echo 'URI: win64-russia.html.po' >> win64-russia.var
	echo 'Content-language: pl' >> win64-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-russia.var
	echo >> win64-russia.var
	echo 'URI: win64-russia.html.sl' >> win64-russia.var
	echo 'Content-language: sl' >> win64-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win64-russia.var
	echo >> win64-russia.var
	echo 'URI: win64-russia.html.ru' >> win64-russia.var
	echo 'Content-language: ru' >> win64-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win64-russia.var
	echo >> win64-russia.var
	echo 'URI: win64-russia.html.zh-CN' >> win64-russia.var
	echo 'Content-language: zh-CN' >> win64-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> win64-russia.var
	echo >> win64-russia.var

../..//down2/x86_64/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down2/x86_64/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down2/x86_64/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down2/x86_64/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down2/x86_64/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down2/x86_64/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down2/x86_64/linux.var: gen_makefile.conf
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

../..//down2/x86_64/win64.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o win64.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down2/x86_64/win64.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win64.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/win64.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o win64.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/win64.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o win64.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/win64.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o win64.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/win64.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o win64.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/win64.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o win64.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/win64.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o win64.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down2/x86_64/win64.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o win64.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down2/x86_64/win64.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o win64.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down2/x86_64/win64.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o win64.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down2/x86_64/win64.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=win64 -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win64.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down2/x86_64/win64.var: gen_makefile.conf
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
	echo 'Content-type: text/html; charset=utf-16' >> win64.var
	echo >> win64.var

mirrors.dat:
	echo -e 'name\tnamel\turl' > mirrors.dat
	echo -e 'Australia\taustralia\thttp://fpc.planetmirror.com/pub/fpc/' >> mirrors.dat
	echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Israel\tisrael\thttp://mirror.mirimar.net/freepascal/' >> mirrors.dat
	echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat
	echo -e 'Norway\tnorway\tftp://ftp.no.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Russia\trussia\tftp://ftp.chg.ru/pub/lang/pascal/fpc/' >> mirrors.dat

all_pages: mirrors.dat ../..//down2/x86_64/linux-australia.html.bg ../..//down2/x86_64/linux-australia.html.en ../..//down2/x86_64/linux-australia.html.fi ../..//down2/x86_64/linux-australia.html.fr ../..//down2/x86_64/linux-australia.html.id ../..//down2/x86_64/linux-australia.html.it ../..//down2/x86_64/linux-australia.html.nl ../..//down2/x86_64/linux-australia.html.po ../..//down2/x86_64/linux-australia.html.sl ../..//down2/x86_64/linux-australia.html.ru ../..//down2/x86_64/linux-australia.html.zh-CN ../..//down2/x86_64/linux-australia.var ../..//down2/x86_64/win64-australia.html.bg ../..//down2/x86_64/win64-australia.html.en ../..//down2/x86_64/win64-australia.html.fi ../..//down2/x86_64/win64-australia.html.fr ../..//down2/x86_64/win64-australia.html.id ../..//down2/x86_64/win64-australia.html.it ../..//down2/x86_64/win64-australia.html.nl ../..//down2/x86_64/win64-australia.html.po ../..//down2/x86_64/win64-australia.html.sl ../..//down2/x86_64/win64-australia.html.ru ../..//down2/x86_64/win64-australia.html.zh-CN ../..//down2/x86_64/win64-australia.var ../..//down2/x86_64/linux-austria.html.bg ../..//down2/x86_64/linux-austria.html.en ../..//down2/x86_64/linux-austria.html.fi ../..//down2/x86_64/linux-austria.html.fr ../..//down2/x86_64/linux-austria.html.id ../..//down2/x86_64/linux-austria.html.it ../..//down2/x86_64/linux-austria.html.nl ../..//down2/x86_64/linux-austria.html.po ../..//down2/x86_64/linux-austria.html.sl ../..//down2/x86_64/linux-austria.html.ru ../..//down2/x86_64/linux-austria.html.zh-CN ../..//down2/x86_64/linux-austria.var ../..//down2/x86_64/win64-austria.html.bg ../..//down2/x86_64/win64-austria.html.en ../..//down2/x86_64/win64-austria.html.fi ../..//down2/x86_64/win64-austria.html.fr ../..//down2/x86_64/win64-austria.html.id ../..//down2/x86_64/win64-austria.html.it ../..//down2/x86_64/win64-austria.html.nl ../..//down2/x86_64/win64-austria.html.po ../..//down2/x86_64/win64-austria.html.sl ../..//down2/x86_64/win64-austria.html.ru ../..//down2/x86_64/win64-austria.html.zh-CN ../..//down2/x86_64/win64-austria.var ../..//down2/x86_64/linux-hungary.html.bg ../..//down2/x86_64/linux-hungary.html.en ../..//down2/x86_64/linux-hungary.html.fi ../..//down2/x86_64/linux-hungary.html.fr ../..//down2/x86_64/linux-hungary.html.id ../..//down2/x86_64/linux-hungary.html.it ../..//down2/x86_64/linux-hungary.html.nl ../..//down2/x86_64/linux-hungary.html.po ../..//down2/x86_64/linux-hungary.html.sl ../..//down2/x86_64/linux-hungary.html.ru ../..//down2/x86_64/linux-hungary.html.zh-CN ../..//down2/x86_64/linux-hungary.var ../..//down2/x86_64/win64-hungary.html.bg ../..//down2/x86_64/win64-hungary.html.en ../..//down2/x86_64/win64-hungary.html.fi ../..//down2/x86_64/win64-hungary.html.fr ../..//down2/x86_64/win64-hungary.html.id ../..//down2/x86_64/win64-hungary.html.it ../..//down2/x86_64/win64-hungary.html.nl ../..//down2/x86_64/win64-hungary.html.po ../..//down2/x86_64/win64-hungary.html.sl ../..//down2/x86_64/win64-hungary.html.ru ../..//down2/x86_64/win64-hungary.html.zh-CN ../..//down2/x86_64/win64-hungary.var ../..//down2/x86_64/linux-israel.html.bg ../..//down2/x86_64/linux-israel.html.en ../..//down2/x86_64/linux-israel.html.fi ../..//down2/x86_64/linux-israel.html.fr ../..//down2/x86_64/linux-israel.html.id ../..//down2/x86_64/linux-israel.html.it ../..//down2/x86_64/linux-israel.html.nl ../..//down2/x86_64/linux-israel.html.po ../..//down2/x86_64/linux-israel.html.sl ../..//down2/x86_64/linux-israel.html.ru ../..//down2/x86_64/linux-israel.html.zh-CN ../..//down2/x86_64/linux-israel.var ../..//down2/x86_64/win64-israel.html.bg ../..//down2/x86_64/win64-israel.html.en ../..//down2/x86_64/win64-israel.html.fi ../..//down2/x86_64/win64-israel.html.fr ../..//down2/x86_64/win64-israel.html.id ../..//down2/x86_64/win64-israel.html.it ../..//down2/x86_64/win64-israel.html.nl ../..//down2/x86_64/win64-israel.html.po ../..//down2/x86_64/win64-israel.html.sl ../..//down2/x86_64/win64-israel.html.ru ../..//down2/x86_64/win64-israel.html.zh-CN ../..//down2/x86_64/win64-israel.var ../..//down2/x86_64/linux-netherlands.html.bg ../..//down2/x86_64/linux-netherlands.html.en ../..//down2/x86_64/linux-netherlands.html.fi ../..//down2/x86_64/linux-netherlands.html.fr ../..//down2/x86_64/linux-netherlands.html.id ../..//down2/x86_64/linux-netherlands.html.it ../..//down2/x86_64/linux-netherlands.html.nl ../..//down2/x86_64/linux-netherlands.html.po ../..//down2/x86_64/linux-netherlands.html.sl ../..//down2/x86_64/linux-netherlands.html.ru ../..//down2/x86_64/linux-netherlands.html.zh-CN ../..//down2/x86_64/linux-netherlands.var ../..//down2/x86_64/win64-netherlands.html.bg ../..//down2/x86_64/win64-netherlands.html.en ../..//down2/x86_64/win64-netherlands.html.fi ../..//down2/x86_64/win64-netherlands.html.fr ../..//down2/x86_64/win64-netherlands.html.id ../..//down2/x86_64/win64-netherlands.html.it ../..//down2/x86_64/win64-netherlands.html.nl ../..//down2/x86_64/win64-netherlands.html.po ../..//down2/x86_64/win64-netherlands.html.sl ../..//down2/x86_64/win64-netherlands.html.ru ../..//down2/x86_64/win64-netherlands.html.zh-CN ../..//down2/x86_64/win64-netherlands.var ../..//down2/x86_64/linux-norway.html.bg ../..//down2/x86_64/linux-norway.html.en ../..//down2/x86_64/linux-norway.html.fi ../..//down2/x86_64/linux-norway.html.fr ../..//down2/x86_64/linux-norway.html.id ../..//down2/x86_64/linux-norway.html.it ../..//down2/x86_64/linux-norway.html.nl ../..//down2/x86_64/linux-norway.html.po ../..//down2/x86_64/linux-norway.html.sl ../..//down2/x86_64/linux-norway.html.ru ../..//down2/x86_64/linux-norway.html.zh-CN ../..//down2/x86_64/linux-norway.var ../..//down2/x86_64/win64-norway.html.bg ../..//down2/x86_64/win64-norway.html.en ../..//down2/x86_64/win64-norway.html.fi ../..//down2/x86_64/win64-norway.html.fr ../..//down2/x86_64/win64-norway.html.id ../..//down2/x86_64/win64-norway.html.it ../..//down2/x86_64/win64-norway.html.nl ../..//down2/x86_64/win64-norway.html.po ../..//down2/x86_64/win64-norway.html.sl ../..//down2/x86_64/win64-norway.html.ru ../..//down2/x86_64/win64-norway.html.zh-CN ../..//down2/x86_64/win64-norway.var ../..//down2/x86_64/linux-russia.html.bg ../..//down2/x86_64/linux-russia.html.en ../..//down2/x86_64/linux-russia.html.fi ../..//down2/x86_64/linux-russia.html.fr ../..//down2/x86_64/linux-russia.html.id ../..//down2/x86_64/linux-russia.html.it ../..//down2/x86_64/linux-russia.html.nl ../..//down2/x86_64/linux-russia.html.po ../..//down2/x86_64/linux-russia.html.sl ../..//down2/x86_64/linux-russia.html.ru ../..//down2/x86_64/linux-russia.html.zh-CN ../..//down2/x86_64/linux-russia.var ../..//down2/x86_64/win64-russia.html.bg ../..//down2/x86_64/win64-russia.html.en ../..//down2/x86_64/win64-russia.html.fi ../..//down2/x86_64/win64-russia.html.fr ../..//down2/x86_64/win64-russia.html.id ../..//down2/x86_64/win64-russia.html.it ../..//down2/x86_64/win64-russia.html.nl ../..//down2/x86_64/win64-russia.html.po ../..//down2/x86_64/win64-russia.html.sl ../..//down2/x86_64/win64-russia.html.ru ../..//down2/x86_64/win64-russia.html.zh-CN ../..//down2/x86_64/win64-russia.var ../..//down2/x86_64/linux.html.bg ../..//down2/x86_64/linux.html.en ../..//down2/x86_64/linux.html.fi ../..//down2/x86_64/linux.html.fr ../..//down2/x86_64/linux.html.id ../..//down2/x86_64/linux.html.it ../..//down2/x86_64/linux.html.nl ../..//down2/x86_64/linux.html.po ../..//down2/x86_64/linux.html.sl ../..//down2/x86_64/linux.html.ru ../..//down2/x86_64/linux.html.zh-CN ../..//down2/x86_64/linux.var ../..//down2/x86_64/win64.html.bg ../..//down2/x86_64/win64.html.en ../..//down2/x86_64/win64.html.fi ../..//down2/x86_64/win64.html.fr ../..//down2/x86_64/win64.html.id ../..//down2/x86_64/win64.html.it ../..//down2/x86_64/win64.html.nl ../..//down2/x86_64/win64.html.po ../..//down2/x86_64/win64.html.sl ../..//down2/x86_64/win64.html.ru ../..//down2/x86_64/win64.html.zh-CN ../..//down2/x86_64/win64.var
all_en_pages: mirrors.dat ../..//down2/x86_64/linux-australia.html ../..//down2/x86_64/win64-australia.html ../..//down2/x86_64/linux-austria.html ../..//down2/x86_64/win64-austria.html ../..//down2/x86_64/linux-hungary.html ../..//down2/x86_64/win64-hungary.html ../..//down2/x86_64/linux-israel.html ../..//down2/x86_64/win64-israel.html ../..//down2/x86_64/linux-netherlands.html ../..//down2/x86_64/win64-netherlands.html ../..//down2/x86_64/linux-norway.html ../..//down2/x86_64/win64-norway.html ../..//down2/x86_64/linux-russia.html ../..//down2/x86_64/win64-russia.html ../..//down2/x86_64/linux.html ../..//down2/x86_64/win64.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down2/x86_64/

