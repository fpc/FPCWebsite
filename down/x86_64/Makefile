
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
../..//down/x86_64/linux-austria.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//linux-austria.html.bg -oe iso-8859-5 linux.adp
../..//down/x86_64/linux-austria.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//linux-austria.html.en -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-austria.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//linux-austria.html.fi -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-austria.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//linux-austria.html.fr -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-austria.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//linux-austria.html.id -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-austria.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//linux-austria.html.it -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-austria.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//linux-austria.html.nl -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-austria.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//linux-austria.html.po -oe iso-8859-2 linux.adp
../..//down/x86_64/linux-austria.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//linux-austria.html.sl -oe iso-8859-2 linux.adp
../..//down/x86_64/linux-austria.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//linux-austria.html.ru -oe iso-8859-5 linux.adp
../..//down/x86_64/linux-austria.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//linux-austria.html.zh-CN -oe utf-16 linux.adp
../..//down/x86_64/linux-austria.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//linux-austria.html -oe ISO-8859-1 linux.adp

../..//down/x86_64/linux-austria.var: gen_makefile.conf
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
../..//down/x86_64/win64-austria.html.bg: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//win64-austria.html.bg -oe iso-8859-5 win64.adp
../..//down/x86_64/win64-austria.html.en: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//win64-austria.html.en -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-austria.html.fi: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//win64-austria.html.fi -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-austria.html.fr: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//win64-austria.html.fr -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-austria.html.id: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//win64-austria.html.id -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-austria.html.it: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//win64-austria.html.it -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-austria.html.nl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//win64-austria.html.nl -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-austria.html.po: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//win64-austria.html.po -oe iso-8859-2 win64.adp
../..//down/x86_64/win64-austria.html.sl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//win64-austria.html.sl -oe iso-8859-2 win64.adp
../..//down/x86_64/win64-austria.html.ru: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//win64-austria.html.ru -oe iso-8859-5 win64.adp
../..//down/x86_64/win64-austria.html.zh-CN: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//win64-austria.html.zh-CN -oe utf-16 win64.adp
../..//down/x86_64/win64-austria.html: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//win64-austria.html -oe ISO-8859-1 win64.adp

../..//down/x86_64/win64-austria.var: gen_makefile.conf
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
../..//down/x86_64/freebsd-austria.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//freebsd-austria.html.bg -oe iso-8859-5 freebsd.adp
../..//down/x86_64/freebsd-austria.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//freebsd-austria.html.en -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-austria.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//freebsd-austria.html.fi -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-austria.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//freebsd-austria.html.fr -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-austria.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//freebsd-austria.html.id -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-austria.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//freebsd-austria.html.it -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-austria.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//freebsd-austria.html.nl -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-austria.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//freebsd-austria.html.po -oe iso-8859-2 freebsd.adp
../..//down/x86_64/freebsd-austria.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//freebsd-austria.html.sl -oe iso-8859-2 freebsd.adp
../..//down/x86_64/freebsd-austria.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//freebsd-austria.html.ru -oe iso-8859-5 freebsd.adp
../..//down/x86_64/freebsd-austria.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//freebsd-austria.html.zh-CN -oe utf-16 freebsd.adp
../..//down/x86_64/freebsd-austria.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//freebsd-austria.html -oe ISO-8859-1 freebsd.adp

../..//down/x86_64/freebsd-austria.var: gen_makefile.conf
	echo > freebsd-austria.var
	echo 'URI: freebsd-austria.html.bg' >> freebsd-austria.var
	echo 'Content-language: bg' >> freebsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.en' >> freebsd-austria.var
	echo 'Content-language: en' >> freebsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.fi' >> freebsd-austria.var
	echo 'Content-language: fi' >> freebsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.fr' >> freebsd-austria.var
	echo 'Content-language: fr' >> freebsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.id' >> freebsd-austria.var
	echo 'Content-language: id' >> freebsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.it' >> freebsd-austria.var
	echo 'Content-language: it' >> freebsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.nl' >> freebsd-austria.var
	echo 'Content-language: nl' >> freebsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.po' >> freebsd-austria.var
	echo 'Content-language: pl' >> freebsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.sl' >> freebsd-austria.var
	echo 'Content-language: sl' >> freebsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.ru' >> freebsd-austria.var
	echo 'Content-language: ru' >> freebsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.zh-CN' >> freebsd-austria.var
	echo 'Content-language: zh-CN' >> freebsd-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> freebsd-austria.var
	echo >> freebsd-austria.var
../..//down/x86_64/solaris-austria.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//solaris-austria.html.bg -oe iso-8859-5 solaris.adp
../..//down/x86_64/solaris-austria.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//solaris-austria.html.en -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-austria.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//solaris-austria.html.fi -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-austria.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//solaris-austria.html.fr -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-austria.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//solaris-austria.html.id -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-austria.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//solaris-austria.html.it -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-austria.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//solaris-austria.html.nl -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-austria.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//solaris-austria.html.po -oe iso-8859-2 solaris.adp
../..//down/x86_64/solaris-austria.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//solaris-austria.html.sl -oe iso-8859-2 solaris.adp
../..//down/x86_64/solaris-austria.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//solaris-austria.html.ru -oe iso-8859-5 solaris.adp
../..//down/x86_64/solaris-austria.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//solaris-austria.html.zh-CN -oe utf-16 solaris.adp
../..//down/x86_64/solaris-austria.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//solaris-austria.html -oe ISO-8859-1 solaris.adp

../..//down/x86_64/solaris-austria.var: gen_makefile.conf
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
../..//down/x86_64/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.bg -oe iso-8859-5 linux.adp
../..//down/x86_64/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.en -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.fi -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.fr -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.id -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.it -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.nl -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.po -oe iso-8859-2 linux.adp
../..//down/x86_64/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.sl -oe iso-8859-2 linux.adp
../..//down/x86_64/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.ru -oe iso-8859-5 linux.adp
../..//down/x86_64/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html.zh-CN -oe utf-16 linux.adp
../..//down/x86_64/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//linux-hungary.html -oe ISO-8859-1 linux.adp

../..//down/x86_64/linux-hungary.var: gen_makefile.conf
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
../..//down/x86_64/win64-hungary.html.bg: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.bg -oe iso-8859-5 win64.adp
../..//down/x86_64/win64-hungary.html.en: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.en -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-hungary.html.fi: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.fi -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-hungary.html.fr: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.fr -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-hungary.html.id: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.id -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-hungary.html.it: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.it -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-hungary.html.nl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.nl -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-hungary.html.po: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.po -oe iso-8859-2 win64.adp
../..//down/x86_64/win64-hungary.html.sl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.sl -oe iso-8859-2 win64.adp
../..//down/x86_64/win64-hungary.html.ru: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.ru -oe iso-8859-5 win64.adp
../..//down/x86_64/win64-hungary.html.zh-CN: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html.zh-CN -oe utf-16 win64.adp
../..//down/x86_64/win64-hungary.html: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//win64-hungary.html -oe ISO-8859-1 win64.adp

../..//down/x86_64/win64-hungary.var: gen_makefile.conf
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
../..//down/x86_64/freebsd-hungary.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.bg -oe iso-8859-5 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.en -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.fi -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.fr -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.id -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.it -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.nl -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.po -oe iso-8859-2 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.sl -oe iso-8859-2 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.ru -oe iso-8859-5 freebsd.adp
../..//down/x86_64/freebsd-hungary.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html.zh-CN -oe utf-16 freebsd.adp
../..//down/x86_64/freebsd-hungary.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//freebsd-hungary.html -oe ISO-8859-1 freebsd.adp

../..//down/x86_64/freebsd-hungary.var: gen_makefile.conf
	echo > freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.bg' >> freebsd-hungary.var
	echo 'Content-language: bg' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.en' >> freebsd-hungary.var
	echo 'Content-language: en' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.fi' >> freebsd-hungary.var
	echo 'Content-language: fi' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.fr' >> freebsd-hungary.var
	echo 'Content-language: fr' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.id' >> freebsd-hungary.var
	echo 'Content-language: id' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.it' >> freebsd-hungary.var
	echo 'Content-language: it' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.nl' >> freebsd-hungary.var
	echo 'Content-language: nl' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.po' >> freebsd-hungary.var
	echo 'Content-language: pl' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.sl' >> freebsd-hungary.var
	echo 'Content-language: sl' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.ru' >> freebsd-hungary.var
	echo 'Content-language: ru' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.zh-CN' >> freebsd-hungary.var
	echo 'Content-language: zh-CN' >> freebsd-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
../..//down/x86_64/solaris-hungary.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.bg -oe iso-8859-5 solaris.adp
../..//down/x86_64/solaris-hungary.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.en -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-hungary.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.fi -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-hungary.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.fr -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-hungary.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.id -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-hungary.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.it -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-hungary.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.nl -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-hungary.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.po -oe iso-8859-2 solaris.adp
../..//down/x86_64/solaris-hungary.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.sl -oe iso-8859-2 solaris.adp
../..//down/x86_64/solaris-hungary.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.ru -oe iso-8859-5 solaris.adp
../..//down/x86_64/solaris-hungary.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html.zh-CN -oe utf-16 solaris.adp
../..//down/x86_64/solaris-hungary.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//solaris-hungary.html -oe ISO-8859-1 solaris.adp

../..//down/x86_64/solaris-hungary.var: gen_makefile.conf
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
../..//down/x86_64/linux-netherlands.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//linux-netherlands.html.bg -oe iso-8859-5 linux.adp
../..//down/x86_64/linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//linux-netherlands.html.en -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-netherlands.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//linux-netherlands.html.fi -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//linux-netherlands.html.fr -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//linux-netherlands.html.id -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-netherlands.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//linux-netherlands.html.it -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//linux-netherlands.html.nl -oe iso-8859-1 linux.adp
../..//down/x86_64/linux-netherlands.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//linux-netherlands.html.po -oe iso-8859-2 linux.adp
../..//down/x86_64/linux-netherlands.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//linux-netherlands.html.sl -oe iso-8859-2 linux.adp
../..//down/x86_64/linux-netherlands.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//linux-netherlands.html.ru -oe iso-8859-5 linux.adp
../..//down/x86_64/linux-netherlands.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//linux-netherlands.html.zh-CN -oe utf-16 linux.adp
../..//down/x86_64/linux-netherlands.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//linux-netherlands.html -oe ISO-8859-1 linux.adp

../..//down/x86_64/linux-netherlands.var: gen_makefile.conf
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
../..//down/x86_64/win64-netherlands.html.bg: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//win64-netherlands.html.bg -oe iso-8859-5 win64.adp
../..//down/x86_64/win64-netherlands.html.en: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//win64-netherlands.html.en -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-netherlands.html.fi: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//win64-netherlands.html.fi -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-netherlands.html.fr: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//win64-netherlands.html.fr -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-netherlands.html.id: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//win64-netherlands.html.id -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-netherlands.html.it: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//win64-netherlands.html.it -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-netherlands.html.nl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//win64-netherlands.html.nl -oe iso-8859-1 win64.adp
../..//down/x86_64/win64-netherlands.html.po: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//win64-netherlands.html.po -oe iso-8859-2 win64.adp
../..//down/x86_64/win64-netherlands.html.sl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//win64-netherlands.html.sl -oe iso-8859-2 win64.adp
../..//down/x86_64/win64-netherlands.html.ru: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//win64-netherlands.html.ru -oe iso-8859-5 win64.adp
../..//down/x86_64/win64-netherlands.html.zh-CN: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//win64-netherlands.html.zh-CN -oe utf-16 win64.adp
../..//down/x86_64/win64-netherlands.html: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//win64-netherlands.html -oe ISO-8859-1 win64.adp

../..//down/x86_64/win64-netherlands.var: gen_makefile.conf
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
../..//down/x86_64/freebsd-netherlands.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//freebsd-netherlands.html.bg -oe iso-8859-5 freebsd.adp
../..//down/x86_64/freebsd-netherlands.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//freebsd-netherlands.html.en -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-netherlands.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//freebsd-netherlands.html.fi -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-netherlands.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//freebsd-netherlands.html.fr -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-netherlands.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//freebsd-netherlands.html.id -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-netherlands.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//freebsd-netherlands.html.it -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-netherlands.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//freebsd-netherlands.html.nl -oe iso-8859-1 freebsd.adp
../..//down/x86_64/freebsd-netherlands.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//freebsd-netherlands.html.po -oe iso-8859-2 freebsd.adp
../..//down/x86_64/freebsd-netherlands.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//freebsd-netherlands.html.sl -oe iso-8859-2 freebsd.adp
../..//down/x86_64/freebsd-netherlands.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//freebsd-netherlands.html.ru -oe iso-8859-5 freebsd.adp
../..//down/x86_64/freebsd-netherlands.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//freebsd-netherlands.html.zh-CN -oe utf-16 freebsd.adp
../..//down/x86_64/freebsd-netherlands.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//freebsd-netherlands.html -oe ISO-8859-1 freebsd.adp

../..//down/x86_64/freebsd-netherlands.var: gen_makefile.conf
	echo > freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.bg' >> freebsd-netherlands.var
	echo 'Content-language: bg' >> freebsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.en' >> freebsd-netherlands.var
	echo 'Content-language: en' >> freebsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.fi' >> freebsd-netherlands.var
	echo 'Content-language: fi' >> freebsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.fr' >> freebsd-netherlands.var
	echo 'Content-language: fr' >> freebsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.id' >> freebsd-netherlands.var
	echo 'Content-language: id' >> freebsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.it' >> freebsd-netherlands.var
	echo 'Content-language: it' >> freebsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.nl' >> freebsd-netherlands.var
	echo 'Content-language: nl' >> freebsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.po' >> freebsd-netherlands.var
	echo 'Content-language: pl' >> freebsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.sl' >> freebsd-netherlands.var
	echo 'Content-language: sl' >> freebsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.ru' >> freebsd-netherlands.var
	echo 'Content-language: ru' >> freebsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.zh-CN' >> freebsd-netherlands.var
	echo 'Content-language: zh-CN' >> freebsd-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
../..//down/x86_64/solaris-netherlands.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/x86_64//solaris-netherlands.html.bg -oe iso-8859-5 solaris.adp
../..//down/x86_64/solaris-netherlands.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//solaris-netherlands.html.en -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-netherlands.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/x86_64//solaris-netherlands.html.fi -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-netherlands.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/x86_64//solaris-netherlands.html.fr -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-netherlands.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/x86_64//solaris-netherlands.html.id -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-netherlands.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/x86_64//solaris-netherlands.html.it -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-netherlands.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/x86_64//solaris-netherlands.html.nl -oe iso-8859-1 solaris.adp
../..//down/x86_64/solaris-netherlands.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/x86_64//solaris-netherlands.html.po -oe iso-8859-2 solaris.adp
../..//down/x86_64/solaris-netherlands.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/x86_64//solaris-netherlands.html.sl -oe iso-8859-2 solaris.adp
../..//down/x86_64/solaris-netherlands.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/x86_64//solaris-netherlands.html.ru -oe iso-8859-5 solaris.adp
../..//down/x86_64/solaris-netherlands.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/x86_64//solaris-netherlands.html.zh-CN -oe utf-16 solaris.adp
../..//down/x86_64/solaris-netherlands.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/x86_64//solaris-netherlands.html -oe ISO-8859-1 solaris.adp

../..//down/x86_64/solaris-netherlands.var: gen_makefile.conf
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

../..//down/x86_64/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/x86_64/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/x86_64/linux.var: gen_makefile.conf
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

../..//down/x86_64/win64.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o win64.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/win64.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win64.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/win64.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o win64.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/win64.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o win64.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/win64.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o win64.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/win64.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o win64.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/win64.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o win64.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/win64.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o win64.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/win64.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o win64.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/win64.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o win64.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/win64.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o win64.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/x86_64/win64.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=win64 -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win64.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/x86_64/win64.var: gen_makefile.conf
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

../..//down/x86_64/freebsd.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o freebsd.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o freebsd.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o freebsd.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o freebsd.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o freebsd.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o freebsd.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o freebsd.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o freebsd.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o freebsd.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o freebsd.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/freebsd.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o freebsd.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/x86_64/freebsd.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=freebsd -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o freebsd.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/x86_64/freebsd.var: gen_makefile.conf
	echo > freebsd.var
	echo 'URI: freebsd.html.bg' >> freebsd.var
	echo 'Content-language: bg' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.en' >> freebsd.var
	echo 'Content-language: en' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.fi' >> freebsd.var
	echo 'Content-language: fi' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.fr' >> freebsd.var
	echo 'Content-language: fr' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.id' >> freebsd.var
	echo 'Content-language: id' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.it' >> freebsd.var
	echo 'Content-language: it' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.nl' >> freebsd.var
	echo 'Content-language: nl' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.po' >> freebsd.var
	echo 'Content-language: pl' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.sl' >> freebsd.var
	echo 'Content-language: sl' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.ru' >> freebsd.var
	echo 'Content-language: ru' >> freebsd.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.zh-CN' >> freebsd.var
	echo 'Content-language: zh-CN' >> freebsd.var
	echo 'Content-type: text/html; charset=utf-16' >> freebsd.var
	echo >> freebsd.var

../..//down/x86_64/solaris.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o solaris.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/solaris.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o solaris.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/solaris.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o solaris.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/solaris.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o solaris.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/solaris.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o solaris.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/solaris.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o solaris.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/solaris.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o solaris.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/x86_64/solaris.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o solaris.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/solaris.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o solaris.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/x86_64/solaris.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o solaris.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/x86_64/solaris.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o solaris.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/x86_64/solaris.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=solaris -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o solaris.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/x86_64/solaris.var: gen_makefile.conf
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
	echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat

all_pages: mirrors.dat ../..//down/x86_64/linux-austria.html.bg ../..//down/x86_64/linux-austria.html.en ../..//down/x86_64/linux-austria.html.fi ../..//down/x86_64/linux-austria.html.fr ../..//down/x86_64/linux-austria.html.id ../..//down/x86_64/linux-austria.html.it ../..//down/x86_64/linux-austria.html.nl ../..//down/x86_64/linux-austria.html.po ../..//down/x86_64/linux-austria.html.sl ../..//down/x86_64/linux-austria.html.ru ../..//down/x86_64/linux-austria.html.zh-CN ../..//down/x86_64/linux-austria.var ../..//down/x86_64/win64-austria.html.bg ../..//down/x86_64/win64-austria.html.en ../..//down/x86_64/win64-austria.html.fi ../..//down/x86_64/win64-austria.html.fr ../..//down/x86_64/win64-austria.html.id ../..//down/x86_64/win64-austria.html.it ../..//down/x86_64/win64-austria.html.nl ../..//down/x86_64/win64-austria.html.po ../..//down/x86_64/win64-austria.html.sl ../..//down/x86_64/win64-austria.html.ru ../..//down/x86_64/win64-austria.html.zh-CN ../..//down/x86_64/win64-austria.var ../..//down/x86_64/freebsd-austria.html.bg ../..//down/x86_64/freebsd-austria.html.en ../..//down/x86_64/freebsd-austria.html.fi ../..//down/x86_64/freebsd-austria.html.fr ../..//down/x86_64/freebsd-austria.html.id ../..//down/x86_64/freebsd-austria.html.it ../..//down/x86_64/freebsd-austria.html.nl ../..//down/x86_64/freebsd-austria.html.po ../..//down/x86_64/freebsd-austria.html.sl ../..//down/x86_64/freebsd-austria.html.ru ../..//down/x86_64/freebsd-austria.html.zh-CN ../..//down/x86_64/freebsd-austria.var ../..//down/x86_64/solaris-austria.html.bg ../..//down/x86_64/solaris-austria.html.en ../..//down/x86_64/solaris-austria.html.fi ../..//down/x86_64/solaris-austria.html.fr ../..//down/x86_64/solaris-austria.html.id ../..//down/x86_64/solaris-austria.html.it ../..//down/x86_64/solaris-austria.html.nl ../..//down/x86_64/solaris-austria.html.po ../..//down/x86_64/solaris-austria.html.sl ../..//down/x86_64/solaris-austria.html.ru ../..//down/x86_64/solaris-austria.html.zh-CN ../..//down/x86_64/solaris-austria.var ../..//down/x86_64/linux-hungary.html.bg ../..//down/x86_64/linux-hungary.html.en ../..//down/x86_64/linux-hungary.html.fi ../..//down/x86_64/linux-hungary.html.fr ../..//down/x86_64/linux-hungary.html.id ../..//down/x86_64/linux-hungary.html.it ../..//down/x86_64/linux-hungary.html.nl ../..//down/x86_64/linux-hungary.html.po ../..//down/x86_64/linux-hungary.html.sl ../..//down/x86_64/linux-hungary.html.ru ../..//down/x86_64/linux-hungary.html.zh-CN ../..//down/x86_64/linux-hungary.var ../..//down/x86_64/win64-hungary.html.bg ../..//down/x86_64/win64-hungary.html.en ../..//down/x86_64/win64-hungary.html.fi ../..//down/x86_64/win64-hungary.html.fr ../..//down/x86_64/win64-hungary.html.id ../..//down/x86_64/win64-hungary.html.it ../..//down/x86_64/win64-hungary.html.nl ../..//down/x86_64/win64-hungary.html.po ../..//down/x86_64/win64-hungary.html.sl ../..//down/x86_64/win64-hungary.html.ru ../..//down/x86_64/win64-hungary.html.zh-CN ../..//down/x86_64/win64-hungary.var ../..//down/x86_64/freebsd-hungary.html.bg ../..//down/x86_64/freebsd-hungary.html.en ../..//down/x86_64/freebsd-hungary.html.fi ../..//down/x86_64/freebsd-hungary.html.fr ../..//down/x86_64/freebsd-hungary.html.id ../..//down/x86_64/freebsd-hungary.html.it ../..//down/x86_64/freebsd-hungary.html.nl ../..//down/x86_64/freebsd-hungary.html.po ../..//down/x86_64/freebsd-hungary.html.sl ../..//down/x86_64/freebsd-hungary.html.ru ../..//down/x86_64/freebsd-hungary.html.zh-CN ../..//down/x86_64/freebsd-hungary.var ../..//down/x86_64/solaris-hungary.html.bg ../..//down/x86_64/solaris-hungary.html.en ../..//down/x86_64/solaris-hungary.html.fi ../..//down/x86_64/solaris-hungary.html.fr ../..//down/x86_64/solaris-hungary.html.id ../..//down/x86_64/solaris-hungary.html.it ../..//down/x86_64/solaris-hungary.html.nl ../..//down/x86_64/solaris-hungary.html.po ../..//down/x86_64/solaris-hungary.html.sl ../..//down/x86_64/solaris-hungary.html.ru ../..//down/x86_64/solaris-hungary.html.zh-CN ../..//down/x86_64/solaris-hungary.var ../..//down/x86_64/linux-netherlands.html.bg ../..//down/x86_64/linux-netherlands.html.en ../..//down/x86_64/linux-netherlands.html.fi ../..//down/x86_64/linux-netherlands.html.fr ../..//down/x86_64/linux-netherlands.html.id ../..//down/x86_64/linux-netherlands.html.it ../..//down/x86_64/linux-netherlands.html.nl ../..//down/x86_64/linux-netherlands.html.po ../..//down/x86_64/linux-netherlands.html.sl ../..//down/x86_64/linux-netherlands.html.ru ../..//down/x86_64/linux-netherlands.html.zh-CN ../..//down/x86_64/linux-netherlands.var ../..//down/x86_64/win64-netherlands.html.bg ../..//down/x86_64/win64-netherlands.html.en ../..//down/x86_64/win64-netherlands.html.fi ../..//down/x86_64/win64-netherlands.html.fr ../..//down/x86_64/win64-netherlands.html.id ../..//down/x86_64/win64-netherlands.html.it ../..//down/x86_64/win64-netherlands.html.nl ../..//down/x86_64/win64-netherlands.html.po ../..//down/x86_64/win64-netherlands.html.sl ../..//down/x86_64/win64-netherlands.html.ru ../..//down/x86_64/win64-netherlands.html.zh-CN ../..//down/x86_64/win64-netherlands.var ../..//down/x86_64/freebsd-netherlands.html.bg ../..//down/x86_64/freebsd-netherlands.html.en ../..//down/x86_64/freebsd-netherlands.html.fi ../..//down/x86_64/freebsd-netherlands.html.fr ../..//down/x86_64/freebsd-netherlands.html.id ../..//down/x86_64/freebsd-netherlands.html.it ../..//down/x86_64/freebsd-netherlands.html.nl ../..//down/x86_64/freebsd-netherlands.html.po ../..//down/x86_64/freebsd-netherlands.html.sl ../..//down/x86_64/freebsd-netherlands.html.ru ../..//down/x86_64/freebsd-netherlands.html.zh-CN ../..//down/x86_64/freebsd-netherlands.var ../..//down/x86_64/solaris-netherlands.html.bg ../..//down/x86_64/solaris-netherlands.html.en ../..//down/x86_64/solaris-netherlands.html.fi ../..//down/x86_64/solaris-netherlands.html.fr ../..//down/x86_64/solaris-netherlands.html.id ../..//down/x86_64/solaris-netherlands.html.it ../..//down/x86_64/solaris-netherlands.html.nl ../..//down/x86_64/solaris-netherlands.html.po ../..//down/x86_64/solaris-netherlands.html.sl ../..//down/x86_64/solaris-netherlands.html.ru ../..//down/x86_64/solaris-netherlands.html.zh-CN ../..//down/x86_64/solaris-netherlands.var ../..//down/x86_64/linux.html.bg ../..//down/x86_64/linux.html.en ../..//down/x86_64/linux.html.fi ../..//down/x86_64/linux.html.fr ../..//down/x86_64/linux.html.id ../..//down/x86_64/linux.html.it ../..//down/x86_64/linux.html.nl ../..//down/x86_64/linux.html.po ../..//down/x86_64/linux.html.sl ../..//down/x86_64/linux.html.ru ../..//down/x86_64/linux.html.zh-CN ../..//down/x86_64/linux.var ../..//down/x86_64/win64.html.bg ../..//down/x86_64/win64.html.en ../..//down/x86_64/win64.html.fi ../..//down/x86_64/win64.html.fr ../..//down/x86_64/win64.html.id ../..//down/x86_64/win64.html.it ../..//down/x86_64/win64.html.nl ../..//down/x86_64/win64.html.po ../..//down/x86_64/win64.html.sl ../..//down/x86_64/win64.html.ru ../..//down/x86_64/win64.html.zh-CN ../..//down/x86_64/win64.var ../..//down/x86_64/freebsd.html.bg ../..//down/x86_64/freebsd.html.en ../..//down/x86_64/freebsd.html.fi ../..//down/x86_64/freebsd.html.fr ../..//down/x86_64/freebsd.html.id ../..//down/x86_64/freebsd.html.it ../..//down/x86_64/freebsd.html.nl ../..//down/x86_64/freebsd.html.po ../..//down/x86_64/freebsd.html.sl ../..//down/x86_64/freebsd.html.ru ../..//down/x86_64/freebsd.html.zh-CN ../..//down/x86_64/freebsd.var ../..//down/x86_64/solaris.html.bg ../..//down/x86_64/solaris.html.en ../..//down/x86_64/solaris.html.fi ../..//down/x86_64/solaris.html.fr ../..//down/x86_64/solaris.html.id ../..//down/x86_64/solaris.html.it ../..//down/x86_64/solaris.html.nl ../..//down/x86_64/solaris.html.po ../..//down/x86_64/solaris.html.sl ../..//down/x86_64/solaris.html.ru ../..//down/x86_64/solaris.html.zh-CN ../..//down/x86_64/solaris.var
all_en_pages: mirrors.dat ../..//down/x86_64/linux-austria.html ../..//down/x86_64/win64-austria.html ../..//down/x86_64/freebsd-austria.html ../..//down/x86_64/solaris-austria.html ../..//down/x86_64/linux-hungary.html ../..//down/x86_64/win64-hungary.html ../..//down/x86_64/freebsd-hungary.html ../..//down/x86_64/solaris-hungary.html ../..//down/x86_64/linux-netherlands.html ../..//down/x86_64/win64-netherlands.html ../..//down/x86_64/freebsd-netherlands.html ../..//down/x86_64/solaris-netherlands.html ../..//down/x86_64/linux.html ../..//down/x86_64/win64.html ../..//down/x86_64/freebsd.html ../..//down/x86_64/solaris.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/x86_64/

