
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
../..//down/i386/freebsd-austria.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//freebsd-austria.html.bg -oe iso-8859-5 freebsd.adp
../..//down/i386/freebsd-austria.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//freebsd-austria.html.en -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-austria.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//freebsd-austria.html.fi -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-austria.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//freebsd-austria.html.fr -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-austria.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//freebsd-austria.html.id -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-austria.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//freebsd-austria.html.it -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-austria.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//freebsd-austria.html.nl -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-austria.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//freebsd-austria.html.po -oe iso-8859-2 freebsd.adp
../..//down/i386/freebsd-austria.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//freebsd-austria.html.sl -oe iso-8859-2 freebsd.adp
../..//down/i386/freebsd-austria.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//freebsd-austria.html.ru -oe iso-8859-5 freebsd.adp
../..//down/i386/freebsd-austria.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//freebsd-austria.html.zh-CN -oe utf-16 freebsd.adp
../..//down/i386/freebsd-austria.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//freebsd-austria.html -oe ISO-8859-1 freebsd.adp

../..//down/i386/freebsd-austria.var: gen_makefile.conf
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
../..//down/i386/go32v2-austria.html.bg: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//go32v2-austria.html.bg -oe iso-8859-5 go32v2.adp
../..//down/i386/go32v2-austria.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//go32v2-austria.html.en -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-austria.html.fi: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//go32v2-austria.html.fi -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-austria.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//go32v2-austria.html.fr -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-austria.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//go32v2-austria.html.id -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-austria.html.it: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//go32v2-austria.html.it -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-austria.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//go32v2-austria.html.nl -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-austria.html.po: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//go32v2-austria.html.po -oe iso-8859-2 go32v2.adp
../..//down/i386/go32v2-austria.html.sl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//go32v2-austria.html.sl -oe iso-8859-2 go32v2.adp
../..//down/i386/go32v2-austria.html.ru: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//go32v2-austria.html.ru -oe iso-8859-5 go32v2.adp
../..//down/i386/go32v2-austria.html.zh-CN: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//go32v2-austria.html.zh-CN -oe utf-16 go32v2.adp
../..//down/i386/go32v2-austria.html: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//go32v2-austria.html -oe ISO-8859-1 go32v2.adp

../..//down/i386/go32v2-austria.var: gen_makefile.conf
	echo > go32v2-austria.var
	echo 'URI: go32v2-austria.html.bg' >> go32v2-austria.var
	echo 'Content-language: bg' >> go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.en' >> go32v2-austria.var
	echo 'Content-language: en' >> go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.fi' >> go32v2-austria.var
	echo 'Content-language: fi' >> go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.fr' >> go32v2-austria.var
	echo 'Content-language: fr' >> go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.id' >> go32v2-austria.var
	echo 'Content-language: id' >> go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.it' >> go32v2-austria.var
	echo 'Content-language: it' >> go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.nl' >> go32v2-austria.var
	echo 'Content-language: nl' >> go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.po' >> go32v2-austria.var
	echo 'Content-language: pl' >> go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.sl' >> go32v2-austria.var
	echo 'Content-language: sl' >> go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.ru' >> go32v2-austria.var
	echo 'Content-language: ru' >> go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.zh-CN' >> go32v2-austria.var
	echo 'Content-language: zh-CN' >> go32v2-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> go32v2-austria.var
	echo >> go32v2-austria.var
../..//down/i386/linux-austria.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//linux-austria.html.bg -oe iso-8859-5 linux.adp
../..//down/i386/linux-austria.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//linux-austria.html.en -oe iso-8859-1 linux.adp
../..//down/i386/linux-austria.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//linux-austria.html.fi -oe iso-8859-1 linux.adp
../..//down/i386/linux-austria.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//linux-austria.html.fr -oe iso-8859-1 linux.adp
../..//down/i386/linux-austria.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//linux-austria.html.id -oe iso-8859-1 linux.adp
../..//down/i386/linux-austria.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//linux-austria.html.it -oe iso-8859-1 linux.adp
../..//down/i386/linux-austria.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//linux-austria.html.nl -oe iso-8859-1 linux.adp
../..//down/i386/linux-austria.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//linux-austria.html.po -oe iso-8859-2 linux.adp
../..//down/i386/linux-austria.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//linux-austria.html.sl -oe iso-8859-2 linux.adp
../..//down/i386/linux-austria.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//linux-austria.html.ru -oe iso-8859-5 linux.adp
../..//down/i386/linux-austria.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//linux-austria.html.zh-CN -oe utf-16 linux.adp
../..//down/i386/linux-austria.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//linux-austria.html -oe ISO-8859-1 linux.adp

../..//down/i386/linux-austria.var: gen_makefile.conf
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
../..//down/i386/netware-austria.html.bg: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//netware-austria.html.bg -oe iso-8859-5 netware.adp
../..//down/i386/netware-austria.html.en: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//netware-austria.html.en -oe iso-8859-1 netware.adp
../..//down/i386/netware-austria.html.fi: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//netware-austria.html.fi -oe iso-8859-1 netware.adp
../..//down/i386/netware-austria.html.fr: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//netware-austria.html.fr -oe iso-8859-1 netware.adp
../..//down/i386/netware-austria.html.id: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//netware-austria.html.id -oe iso-8859-1 netware.adp
../..//down/i386/netware-austria.html.it: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//netware-austria.html.it -oe iso-8859-1 netware.adp
../..//down/i386/netware-austria.html.nl: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//netware-austria.html.nl -oe iso-8859-1 netware.adp
../..//down/i386/netware-austria.html.po: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//netware-austria.html.po -oe iso-8859-2 netware.adp
../..//down/i386/netware-austria.html.sl: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//netware-austria.html.sl -oe iso-8859-2 netware.adp
../..//down/i386/netware-austria.html.ru: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//netware-austria.html.ru -oe iso-8859-5 netware.adp
../..//down/i386/netware-austria.html.zh-CN: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//netware-austria.html.zh-CN -oe utf-16 netware.adp
../..//down/i386/netware-austria.html: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//netware-austria.html -oe ISO-8859-1 netware.adp

../..//down/i386/netware-austria.var: gen_makefile.conf
	echo > netware-austria.var
	echo 'URI: netware-austria.html.bg' >> netware-austria.var
	echo 'Content-language: bg' >> netware-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.en' >> netware-austria.var
	echo 'Content-language: en' >> netware-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.fi' >> netware-austria.var
	echo 'Content-language: fi' >> netware-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.fr' >> netware-austria.var
	echo 'Content-language: fr' >> netware-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.id' >> netware-austria.var
	echo 'Content-language: id' >> netware-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.it' >> netware-austria.var
	echo 'Content-language: it' >> netware-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.nl' >> netware-austria.var
	echo 'Content-language: nl' >> netware-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.po' >> netware-austria.var
	echo 'Content-language: pl' >> netware-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.sl' >> netware-austria.var
	echo 'Content-language: sl' >> netware-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.ru' >> netware-austria.var
	echo 'Content-language: ru' >> netware-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.zh-CN' >> netware-austria.var
	echo 'Content-language: zh-CN' >> netware-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> netware-austria.var
	echo >> netware-austria.var
../..//down/i386/os2-austria.html.bg: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//os2-austria.html.bg -oe iso-8859-5 os2.adp
../..//down/i386/os2-austria.html.en: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//os2-austria.html.en -oe iso-8859-1 os2.adp
../..//down/i386/os2-austria.html.fi: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//os2-austria.html.fi -oe iso-8859-1 os2.adp
../..//down/i386/os2-austria.html.fr: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//os2-austria.html.fr -oe iso-8859-1 os2.adp
../..//down/i386/os2-austria.html.id: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//os2-austria.html.id -oe iso-8859-1 os2.adp
../..//down/i386/os2-austria.html.it: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//os2-austria.html.it -oe iso-8859-1 os2.adp
../..//down/i386/os2-austria.html.nl: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//os2-austria.html.nl -oe iso-8859-1 os2.adp
../..//down/i386/os2-austria.html.po: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//os2-austria.html.po -oe iso-8859-2 os2.adp
../..//down/i386/os2-austria.html.sl: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//os2-austria.html.sl -oe iso-8859-2 os2.adp
../..//down/i386/os2-austria.html.ru: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//os2-austria.html.ru -oe iso-8859-5 os2.adp
../..//down/i386/os2-austria.html.zh-CN: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//os2-austria.html.zh-CN -oe utf-16 os2.adp
../..//down/i386/os2-austria.html: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//os2-austria.html -oe ISO-8859-1 os2.adp

../..//down/i386/os2-austria.var: gen_makefile.conf
	echo > os2-austria.var
	echo 'URI: os2-austria.html.bg' >> os2-austria.var
	echo 'Content-language: bg' >> os2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.en' >> os2-austria.var
	echo 'Content-language: en' >> os2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.fi' >> os2-austria.var
	echo 'Content-language: fi' >> os2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.fr' >> os2-austria.var
	echo 'Content-language: fr' >> os2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.id' >> os2-austria.var
	echo 'Content-language: id' >> os2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.it' >> os2-austria.var
	echo 'Content-language: it' >> os2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.nl' >> os2-austria.var
	echo 'Content-language: nl' >> os2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.po' >> os2-austria.var
	echo 'Content-language: pl' >> os2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.sl' >> os2-austria.var
	echo 'Content-language: sl' >> os2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.ru' >> os2-austria.var
	echo 'Content-language: ru' >> os2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.zh-CN' >> os2-austria.var
	echo 'Content-language: zh-CN' >> os2-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> os2-austria.var
	echo >> os2-austria.var
../..//down/i386/win32-austria.html.bg: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//win32-austria.html.bg -oe iso-8859-5 win32.adp
../..//down/i386/win32-austria.html.en: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//win32-austria.html.en -oe iso-8859-1 win32.adp
../..//down/i386/win32-austria.html.fi: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//win32-austria.html.fi -oe iso-8859-1 win32.adp
../..//down/i386/win32-austria.html.fr: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//win32-austria.html.fr -oe iso-8859-1 win32.adp
../..//down/i386/win32-austria.html.id: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//win32-austria.html.id -oe iso-8859-1 win32.adp
../..//down/i386/win32-austria.html.it: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//win32-austria.html.it -oe iso-8859-1 win32.adp
../..//down/i386/win32-austria.html.nl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//win32-austria.html.nl -oe iso-8859-1 win32.adp
../..//down/i386/win32-austria.html.po: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//win32-austria.html.po -oe iso-8859-2 win32.adp
../..//down/i386/win32-austria.html.sl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//win32-austria.html.sl -oe iso-8859-2 win32.adp
../..//down/i386/win32-austria.html.ru: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//win32-austria.html.ru -oe iso-8859-5 win32.adp
../..//down/i386/win32-austria.html.zh-CN: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//win32-austria.html.zh-CN -oe utf-16 win32.adp
../..//down/i386/win32-austria.html: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//win32-austria.html -oe ISO-8859-1 win32.adp

../..//down/i386/win32-austria.var: gen_makefile.conf
	echo > win32-austria.var
	echo 'URI: win32-austria.html.bg' >> win32-austria.var
	echo 'Content-language: bg' >> win32-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.en' >> win32-austria.var
	echo 'Content-language: en' >> win32-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.fi' >> win32-austria.var
	echo 'Content-language: fi' >> win32-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.fr' >> win32-austria.var
	echo 'Content-language: fr' >> win32-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.id' >> win32-austria.var
	echo 'Content-language: id' >> win32-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.it' >> win32-austria.var
	echo 'Content-language: it' >> win32-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.nl' >> win32-austria.var
	echo 'Content-language: nl' >> win32-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.po' >> win32-austria.var
	echo 'Content-language: pl' >> win32-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.sl' >> win32-austria.var
	echo 'Content-language: sl' >> win32-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.ru' >> win32-austria.var
	echo 'Content-language: ru' >> win32-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.zh-CN' >> win32-austria.var
	echo 'Content-language: zh-CN' >> win32-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> win32-austria.var
	echo >> win32-austria.var
../..//down/i386/macosx-austria.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//macosx-austria.html.bg -oe iso-8859-5 macosx.adp
../..//down/i386/macosx-austria.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//macosx-austria.html.en -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-austria.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//macosx-austria.html.fi -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-austria.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//macosx-austria.html.fr -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-austria.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//macosx-austria.html.id -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-austria.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//macosx-austria.html.it -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-austria.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//macosx-austria.html.nl -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-austria.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//macosx-austria.html.po -oe iso-8859-2 macosx.adp
../..//down/i386/macosx-austria.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//macosx-austria.html.sl -oe iso-8859-2 macosx.adp
../..//down/i386/macosx-austria.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//macosx-austria.html.ru -oe iso-8859-5 macosx.adp
../..//down/i386/macosx-austria.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//macosx-austria.html.zh-CN -oe utf-16 macosx.adp
../..//down/i386/macosx-austria.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//macosx-austria.html -oe ISO-8859-1 macosx.adp

../..//down/i386/macosx-austria.var: gen_makefile.conf
	echo > macosx-austria.var
	echo 'URI: macosx-austria.html.bg' >> macosx-austria.var
	echo 'Content-language: bg' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.en' >> macosx-austria.var
	echo 'Content-language: en' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.fi' >> macosx-austria.var
	echo 'Content-language: fi' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.fr' >> macosx-austria.var
	echo 'Content-language: fr' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.id' >> macosx-austria.var
	echo 'Content-language: id' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.it' >> macosx-austria.var
	echo 'Content-language: it' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.nl' >> macosx-austria.var
	echo 'Content-language: nl' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.po' >> macosx-austria.var
	echo 'Content-language: pl' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.sl' >> macosx-austria.var
	echo 'Content-language: sl' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.ru' >> macosx-austria.var
	echo 'Content-language: ru' >> macosx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.zh-CN' >> macosx-austria.var
	echo 'Content-language: zh-CN' >> macosx-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-austria.var
	echo >> macosx-austria.var
../..//down/i386/haiku-austria.html.bg: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//haiku-austria.html.bg -oe iso-8859-5 haiku.adp
../..//down/i386/haiku-austria.html.en: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//haiku-austria.html.en -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-austria.html.fi: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//haiku-austria.html.fi -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-austria.html.fr: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//haiku-austria.html.fr -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-austria.html.id: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//haiku-austria.html.id -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-austria.html.it: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//haiku-austria.html.it -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-austria.html.nl: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//haiku-austria.html.nl -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-austria.html.po: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//haiku-austria.html.po -oe iso-8859-2 haiku.adp
../..//down/i386/haiku-austria.html.sl: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//haiku-austria.html.sl -oe iso-8859-2 haiku.adp
../..//down/i386/haiku-austria.html.ru: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//haiku-austria.html.ru -oe iso-8859-5 haiku.adp
../..//down/i386/haiku-austria.html.zh-CN: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//haiku-austria.html.zh-CN -oe utf-16 haiku.adp
../..//down/i386/haiku-austria.html: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//haiku-austria.html -oe ISO-8859-1 haiku.adp

../..//down/i386/haiku-austria.var: gen_makefile.conf
	echo > haiku-austria.var
	echo 'URI: haiku-austria.html.bg' >> haiku-austria.var
	echo 'Content-language: bg' >> haiku-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> haiku-austria.var
	echo >> haiku-austria.var
	echo 'URI: haiku-austria.html.en' >> haiku-austria.var
	echo 'Content-language: en' >> haiku-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-austria.var
	echo >> haiku-austria.var
	echo 'URI: haiku-austria.html.fi' >> haiku-austria.var
	echo 'Content-language: fi' >> haiku-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-austria.var
	echo >> haiku-austria.var
	echo 'URI: haiku-austria.html.fr' >> haiku-austria.var
	echo 'Content-language: fr' >> haiku-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-austria.var
	echo >> haiku-austria.var
	echo 'URI: haiku-austria.html.id' >> haiku-austria.var
	echo 'Content-language: id' >> haiku-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-austria.var
	echo >> haiku-austria.var
	echo 'URI: haiku-austria.html.it' >> haiku-austria.var
	echo 'Content-language: it' >> haiku-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-austria.var
	echo >> haiku-austria.var
	echo 'URI: haiku-austria.html.nl' >> haiku-austria.var
	echo 'Content-language: nl' >> haiku-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-austria.var
	echo >> haiku-austria.var
	echo 'URI: haiku-austria.html.po' >> haiku-austria.var
	echo 'Content-language: pl' >> haiku-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> haiku-austria.var
	echo >> haiku-austria.var
	echo 'URI: haiku-austria.html.sl' >> haiku-austria.var
	echo 'Content-language: sl' >> haiku-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> haiku-austria.var
	echo >> haiku-austria.var
	echo 'URI: haiku-austria.html.ru' >> haiku-austria.var
	echo 'Content-language: ru' >> haiku-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> haiku-austria.var
	echo >> haiku-austria.var
	echo 'URI: haiku-austria.html.zh-CN' >> haiku-austria.var
	echo 'Content-language: zh-CN' >> haiku-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> haiku-austria.var
	echo >> haiku-austria.var
../..//down/i386/solaris-austria.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//solaris-austria.html.bg -oe iso-8859-5 solaris.adp
../..//down/i386/solaris-austria.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//solaris-austria.html.en -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-austria.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//solaris-austria.html.fi -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-austria.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//solaris-austria.html.fr -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-austria.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//solaris-austria.html.id -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-austria.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//solaris-austria.html.it -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-austria.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//solaris-austria.html.nl -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-austria.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//solaris-austria.html.po -oe iso-8859-2 solaris.adp
../..//down/i386/solaris-austria.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//solaris-austria.html.sl -oe iso-8859-2 solaris.adp
../..//down/i386/solaris-austria.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//solaris-austria.html.ru -oe iso-8859-5 solaris.adp
../..//down/i386/solaris-austria.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//solaris-austria.html.zh-CN -oe utf-16 solaris.adp
../..//down/i386/solaris-austria.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//solaris-austria.html -oe ISO-8859-1 solaris.adp

../..//down/i386/solaris-austria.var: gen_makefile.conf
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
../..//down/i386/freebsd-hungary.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.bg -oe iso-8859-5 freebsd.adp
../..//down/i386/freebsd-hungary.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.en -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-hungary.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.fi -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-hungary.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.fr -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-hungary.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.id -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-hungary.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.it -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-hungary.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.nl -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-hungary.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.po -oe iso-8859-2 freebsd.adp
../..//down/i386/freebsd-hungary.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.sl -oe iso-8859-2 freebsd.adp
../..//down/i386/freebsd-hungary.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.ru -oe iso-8859-5 freebsd.adp
../..//down/i386/freebsd-hungary.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html.zh-CN -oe utf-16 freebsd.adp
../..//down/i386/freebsd-hungary.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//freebsd-hungary.html -oe ISO-8859-1 freebsd.adp

../..//down/i386/freebsd-hungary.var: gen_makefile.conf
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
../..//down/i386/go32v2-hungary.html.bg: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.bg -oe iso-8859-5 go32v2.adp
../..//down/i386/go32v2-hungary.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.en -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-hungary.html.fi: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.fi -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-hungary.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.fr -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-hungary.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.id -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-hungary.html.it: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.it -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-hungary.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.nl -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-hungary.html.po: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.po -oe iso-8859-2 go32v2.adp
../..//down/i386/go32v2-hungary.html.sl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.sl -oe iso-8859-2 go32v2.adp
../..//down/i386/go32v2-hungary.html.ru: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.ru -oe iso-8859-5 go32v2.adp
../..//down/i386/go32v2-hungary.html.zh-CN: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html.zh-CN -oe utf-16 go32v2.adp
../..//down/i386/go32v2-hungary.html: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//go32v2-hungary.html -oe ISO-8859-1 go32v2.adp

../..//down/i386/go32v2-hungary.var: gen_makefile.conf
	echo > go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.bg' >> go32v2-hungary.var
	echo 'Content-language: bg' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.en' >> go32v2-hungary.var
	echo 'Content-language: en' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.fi' >> go32v2-hungary.var
	echo 'Content-language: fi' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.fr' >> go32v2-hungary.var
	echo 'Content-language: fr' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.id' >> go32v2-hungary.var
	echo 'Content-language: id' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.it' >> go32v2-hungary.var
	echo 'Content-language: it' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.nl' >> go32v2-hungary.var
	echo 'Content-language: nl' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.po' >> go32v2-hungary.var
	echo 'Content-language: pl' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.sl' >> go32v2-hungary.var
	echo 'Content-language: sl' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.ru' >> go32v2-hungary.var
	echo 'Content-language: ru' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.zh-CN' >> go32v2-hungary.var
	echo 'Content-language: zh-CN' >> go32v2-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
../..//down/i386/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.bg -oe iso-8859-5 linux.adp
../..//down/i386/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.en -oe iso-8859-1 linux.adp
../..//down/i386/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.fi -oe iso-8859-1 linux.adp
../..//down/i386/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.fr -oe iso-8859-1 linux.adp
../..//down/i386/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.id -oe iso-8859-1 linux.adp
../..//down/i386/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.it -oe iso-8859-1 linux.adp
../..//down/i386/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.nl -oe iso-8859-1 linux.adp
../..//down/i386/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.po -oe iso-8859-2 linux.adp
../..//down/i386/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.sl -oe iso-8859-2 linux.adp
../..//down/i386/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.ru -oe iso-8859-5 linux.adp
../..//down/i386/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html.zh-CN -oe utf-16 linux.adp
../..//down/i386/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//linux-hungary.html -oe ISO-8859-1 linux.adp

../..//down/i386/linux-hungary.var: gen_makefile.conf
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
../..//down/i386/netware-hungary.html.bg: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.bg -oe iso-8859-5 netware.adp
../..//down/i386/netware-hungary.html.en: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.en -oe iso-8859-1 netware.adp
../..//down/i386/netware-hungary.html.fi: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.fi -oe iso-8859-1 netware.adp
../..//down/i386/netware-hungary.html.fr: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.fr -oe iso-8859-1 netware.adp
../..//down/i386/netware-hungary.html.id: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.id -oe iso-8859-1 netware.adp
../..//down/i386/netware-hungary.html.it: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.it -oe iso-8859-1 netware.adp
../..//down/i386/netware-hungary.html.nl: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.nl -oe iso-8859-1 netware.adp
../..//down/i386/netware-hungary.html.po: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.po -oe iso-8859-2 netware.adp
../..//down/i386/netware-hungary.html.sl: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.sl -oe iso-8859-2 netware.adp
../..//down/i386/netware-hungary.html.ru: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.ru -oe iso-8859-5 netware.adp
../..//down/i386/netware-hungary.html.zh-CN: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html.zh-CN -oe utf-16 netware.adp
../..//down/i386/netware-hungary.html: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//netware-hungary.html -oe ISO-8859-1 netware.adp

../..//down/i386/netware-hungary.var: gen_makefile.conf
	echo > netware-hungary.var
	echo 'URI: netware-hungary.html.bg' >> netware-hungary.var
	echo 'Content-language: bg' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.en' >> netware-hungary.var
	echo 'Content-language: en' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.fi' >> netware-hungary.var
	echo 'Content-language: fi' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.fr' >> netware-hungary.var
	echo 'Content-language: fr' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.id' >> netware-hungary.var
	echo 'Content-language: id' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.it' >> netware-hungary.var
	echo 'Content-language: it' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.nl' >> netware-hungary.var
	echo 'Content-language: nl' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.po' >> netware-hungary.var
	echo 'Content-language: pl' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.sl' >> netware-hungary.var
	echo 'Content-language: sl' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.ru' >> netware-hungary.var
	echo 'Content-language: ru' >> netware-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.zh-CN' >> netware-hungary.var
	echo 'Content-language: zh-CN' >> netware-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> netware-hungary.var
	echo >> netware-hungary.var
../..//down/i386/os2-hungary.html.bg: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.bg -oe iso-8859-5 os2.adp
../..//down/i386/os2-hungary.html.en: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.en -oe iso-8859-1 os2.adp
../..//down/i386/os2-hungary.html.fi: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.fi -oe iso-8859-1 os2.adp
../..//down/i386/os2-hungary.html.fr: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.fr -oe iso-8859-1 os2.adp
../..//down/i386/os2-hungary.html.id: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.id -oe iso-8859-1 os2.adp
../..//down/i386/os2-hungary.html.it: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.it -oe iso-8859-1 os2.adp
../..//down/i386/os2-hungary.html.nl: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.nl -oe iso-8859-1 os2.adp
../..//down/i386/os2-hungary.html.po: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.po -oe iso-8859-2 os2.adp
../..//down/i386/os2-hungary.html.sl: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.sl -oe iso-8859-2 os2.adp
../..//down/i386/os2-hungary.html.ru: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.ru -oe iso-8859-5 os2.adp
../..//down/i386/os2-hungary.html.zh-CN: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html.zh-CN -oe utf-16 os2.adp
../..//down/i386/os2-hungary.html: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//os2-hungary.html -oe ISO-8859-1 os2.adp

../..//down/i386/os2-hungary.var: gen_makefile.conf
	echo > os2-hungary.var
	echo 'URI: os2-hungary.html.bg' >> os2-hungary.var
	echo 'Content-language: bg' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.en' >> os2-hungary.var
	echo 'Content-language: en' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.fi' >> os2-hungary.var
	echo 'Content-language: fi' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.fr' >> os2-hungary.var
	echo 'Content-language: fr' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.id' >> os2-hungary.var
	echo 'Content-language: id' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.it' >> os2-hungary.var
	echo 'Content-language: it' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.nl' >> os2-hungary.var
	echo 'Content-language: nl' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.po' >> os2-hungary.var
	echo 'Content-language: pl' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.sl' >> os2-hungary.var
	echo 'Content-language: sl' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.ru' >> os2-hungary.var
	echo 'Content-language: ru' >> os2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.zh-CN' >> os2-hungary.var
	echo 'Content-language: zh-CN' >> os2-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> os2-hungary.var
	echo >> os2-hungary.var
../..//down/i386/win32-hungary.html.bg: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.bg -oe iso-8859-5 win32.adp
../..//down/i386/win32-hungary.html.en: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.en -oe iso-8859-1 win32.adp
../..//down/i386/win32-hungary.html.fi: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.fi -oe iso-8859-1 win32.adp
../..//down/i386/win32-hungary.html.fr: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.fr -oe iso-8859-1 win32.adp
../..//down/i386/win32-hungary.html.id: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.id -oe iso-8859-1 win32.adp
../..//down/i386/win32-hungary.html.it: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.it -oe iso-8859-1 win32.adp
../..//down/i386/win32-hungary.html.nl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.nl -oe iso-8859-1 win32.adp
../..//down/i386/win32-hungary.html.po: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.po -oe iso-8859-2 win32.adp
../..//down/i386/win32-hungary.html.sl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.sl -oe iso-8859-2 win32.adp
../..//down/i386/win32-hungary.html.ru: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.ru -oe iso-8859-5 win32.adp
../..//down/i386/win32-hungary.html.zh-CN: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html.zh-CN -oe utf-16 win32.adp
../..//down/i386/win32-hungary.html: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//win32-hungary.html -oe ISO-8859-1 win32.adp

../..//down/i386/win32-hungary.var: gen_makefile.conf
	echo > win32-hungary.var
	echo 'URI: win32-hungary.html.bg' >> win32-hungary.var
	echo 'Content-language: bg' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.en' >> win32-hungary.var
	echo 'Content-language: en' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.fi' >> win32-hungary.var
	echo 'Content-language: fi' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.fr' >> win32-hungary.var
	echo 'Content-language: fr' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.id' >> win32-hungary.var
	echo 'Content-language: id' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.it' >> win32-hungary.var
	echo 'Content-language: it' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.nl' >> win32-hungary.var
	echo 'Content-language: nl' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.po' >> win32-hungary.var
	echo 'Content-language: pl' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.sl' >> win32-hungary.var
	echo 'Content-language: sl' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.ru' >> win32-hungary.var
	echo 'Content-language: ru' >> win32-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.zh-CN' >> win32-hungary.var
	echo 'Content-language: zh-CN' >> win32-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> win32-hungary.var
	echo >> win32-hungary.var
../..//down/i386/macosx-hungary.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.bg -oe iso-8859-5 macosx.adp
../..//down/i386/macosx-hungary.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.en -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-hungary.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.fi -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-hungary.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.fr -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-hungary.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.id -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-hungary.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.it -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-hungary.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.nl -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-hungary.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.po -oe iso-8859-2 macosx.adp
../..//down/i386/macosx-hungary.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.sl -oe iso-8859-2 macosx.adp
../..//down/i386/macosx-hungary.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.ru -oe iso-8859-5 macosx.adp
../..//down/i386/macosx-hungary.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html.zh-CN -oe utf-16 macosx.adp
../..//down/i386/macosx-hungary.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//macosx-hungary.html -oe ISO-8859-1 macosx.adp

../..//down/i386/macosx-hungary.var: gen_makefile.conf
	echo > macosx-hungary.var
	echo 'URI: macosx-hungary.html.bg' >> macosx-hungary.var
	echo 'Content-language: bg' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.en' >> macosx-hungary.var
	echo 'Content-language: en' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.fi' >> macosx-hungary.var
	echo 'Content-language: fi' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.fr' >> macosx-hungary.var
	echo 'Content-language: fr' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.id' >> macosx-hungary.var
	echo 'Content-language: id' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.it' >> macosx-hungary.var
	echo 'Content-language: it' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.nl' >> macosx-hungary.var
	echo 'Content-language: nl' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.po' >> macosx-hungary.var
	echo 'Content-language: pl' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.sl' >> macosx-hungary.var
	echo 'Content-language: sl' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.ru' >> macosx-hungary.var
	echo 'Content-language: ru' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.zh-CN' >> macosx-hungary.var
	echo 'Content-language: zh-CN' >> macosx-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-hungary.var
	echo >> macosx-hungary.var
../..//down/i386/haiku-hungary.html.bg: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.bg -oe iso-8859-5 haiku.adp
../..//down/i386/haiku-hungary.html.en: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.en -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-hungary.html.fi: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.fi -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-hungary.html.fr: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.fr -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-hungary.html.id: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.id -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-hungary.html.it: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.it -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-hungary.html.nl: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.nl -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-hungary.html.po: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.po -oe iso-8859-2 haiku.adp
../..//down/i386/haiku-hungary.html.sl: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.sl -oe iso-8859-2 haiku.adp
../..//down/i386/haiku-hungary.html.ru: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.ru -oe iso-8859-5 haiku.adp
../..//down/i386/haiku-hungary.html.zh-CN: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html.zh-CN -oe utf-16 haiku.adp
../..//down/i386/haiku-hungary.html: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//haiku-hungary.html -oe ISO-8859-1 haiku.adp

../..//down/i386/haiku-hungary.var: gen_makefile.conf
	echo > haiku-hungary.var
	echo 'URI: haiku-hungary.html.bg' >> haiku-hungary.var
	echo 'Content-language: bg' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.en' >> haiku-hungary.var
	echo 'Content-language: en' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.fi' >> haiku-hungary.var
	echo 'Content-language: fi' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.fr' >> haiku-hungary.var
	echo 'Content-language: fr' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.id' >> haiku-hungary.var
	echo 'Content-language: id' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.it' >> haiku-hungary.var
	echo 'Content-language: it' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.nl' >> haiku-hungary.var
	echo 'Content-language: nl' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.po' >> haiku-hungary.var
	echo 'Content-language: pl' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.sl' >> haiku-hungary.var
	echo 'Content-language: sl' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.ru' >> haiku-hungary.var
	echo 'Content-language: ru' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> haiku-hungary.var
	echo >> haiku-hungary.var
	echo 'URI: haiku-hungary.html.zh-CN' >> haiku-hungary.var
	echo 'Content-language: zh-CN' >> haiku-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> haiku-hungary.var
	echo >> haiku-hungary.var
../..//down/i386/solaris-hungary.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.bg -oe iso-8859-5 solaris.adp
../..//down/i386/solaris-hungary.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.en -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-hungary.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.fi -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-hungary.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.fr -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-hungary.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.id -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-hungary.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.it -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-hungary.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.nl -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-hungary.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.po -oe iso-8859-2 solaris.adp
../..//down/i386/solaris-hungary.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.sl -oe iso-8859-2 solaris.adp
../..//down/i386/solaris-hungary.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.ru -oe iso-8859-5 solaris.adp
../..//down/i386/solaris-hungary.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html.zh-CN -oe utf-16 solaris.adp
../..//down/i386/solaris-hungary.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//solaris-hungary.html -oe ISO-8859-1 solaris.adp

../..//down/i386/solaris-hungary.var: gen_makefile.conf
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
../..//down/i386/freebsd-netherlands.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//freebsd-netherlands.html.bg -oe iso-8859-5 freebsd.adp
../..//down/i386/freebsd-netherlands.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//freebsd-netherlands.html.en -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-netherlands.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//freebsd-netherlands.html.fi -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-netherlands.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//freebsd-netherlands.html.fr -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-netherlands.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//freebsd-netherlands.html.id -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-netherlands.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//freebsd-netherlands.html.it -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-netherlands.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//freebsd-netherlands.html.nl -oe iso-8859-1 freebsd.adp
../..//down/i386/freebsd-netherlands.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//freebsd-netherlands.html.po -oe iso-8859-2 freebsd.adp
../..//down/i386/freebsd-netherlands.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//freebsd-netherlands.html.sl -oe iso-8859-2 freebsd.adp
../..//down/i386/freebsd-netherlands.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//freebsd-netherlands.html.ru -oe iso-8859-5 freebsd.adp
../..//down/i386/freebsd-netherlands.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//freebsd-netherlands.html.zh-CN -oe utf-16 freebsd.adp
../..//down/i386/freebsd-netherlands.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//freebsd-netherlands.html -oe ISO-8859-1 freebsd.adp

../..//down/i386/freebsd-netherlands.var: gen_makefile.conf
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
../..//down/i386/go32v2-netherlands.html.bg: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//go32v2-netherlands.html.bg -oe iso-8859-5 go32v2.adp
../..//down/i386/go32v2-netherlands.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//go32v2-netherlands.html.en -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-netherlands.html.fi: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//go32v2-netherlands.html.fi -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-netherlands.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//go32v2-netherlands.html.fr -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-netherlands.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//go32v2-netherlands.html.id -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-netherlands.html.it: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//go32v2-netherlands.html.it -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-netherlands.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//go32v2-netherlands.html.nl -oe iso-8859-1 go32v2.adp
../..//down/i386/go32v2-netherlands.html.po: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//go32v2-netherlands.html.po -oe iso-8859-2 go32v2.adp
../..//down/i386/go32v2-netherlands.html.sl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//go32v2-netherlands.html.sl -oe iso-8859-2 go32v2.adp
../..//down/i386/go32v2-netherlands.html.ru: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//go32v2-netherlands.html.ru -oe iso-8859-5 go32v2.adp
../..//down/i386/go32v2-netherlands.html.zh-CN: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//go32v2-netherlands.html.zh-CN -oe utf-16 go32v2.adp
../..//down/i386/go32v2-netherlands.html: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//go32v2-netherlands.html -oe ISO-8859-1 go32v2.adp

../..//down/i386/go32v2-netherlands.var: gen_makefile.conf
	echo > go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.bg' >> go32v2-netherlands.var
	echo 'Content-language: bg' >> go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.en' >> go32v2-netherlands.var
	echo 'Content-language: en' >> go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.fi' >> go32v2-netherlands.var
	echo 'Content-language: fi' >> go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.fr' >> go32v2-netherlands.var
	echo 'Content-language: fr' >> go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.id' >> go32v2-netherlands.var
	echo 'Content-language: id' >> go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.it' >> go32v2-netherlands.var
	echo 'Content-language: it' >> go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.nl' >> go32v2-netherlands.var
	echo 'Content-language: nl' >> go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.po' >> go32v2-netherlands.var
	echo 'Content-language: pl' >> go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.sl' >> go32v2-netherlands.var
	echo 'Content-language: sl' >> go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.ru' >> go32v2-netherlands.var
	echo 'Content-language: ru' >> go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.zh-CN' >> go32v2-netherlands.var
	echo 'Content-language: zh-CN' >> go32v2-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
../..//down/i386/linux-netherlands.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//linux-netherlands.html.bg -oe iso-8859-5 linux.adp
../..//down/i386/linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//linux-netherlands.html.en -oe iso-8859-1 linux.adp
../..//down/i386/linux-netherlands.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//linux-netherlands.html.fi -oe iso-8859-1 linux.adp
../..//down/i386/linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//linux-netherlands.html.fr -oe iso-8859-1 linux.adp
../..//down/i386/linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//linux-netherlands.html.id -oe iso-8859-1 linux.adp
../..//down/i386/linux-netherlands.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//linux-netherlands.html.it -oe iso-8859-1 linux.adp
../..//down/i386/linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//linux-netherlands.html.nl -oe iso-8859-1 linux.adp
../..//down/i386/linux-netherlands.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//linux-netherlands.html.po -oe iso-8859-2 linux.adp
../..//down/i386/linux-netherlands.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//linux-netherlands.html.sl -oe iso-8859-2 linux.adp
../..//down/i386/linux-netherlands.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//linux-netherlands.html.ru -oe iso-8859-5 linux.adp
../..//down/i386/linux-netherlands.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//linux-netherlands.html.zh-CN -oe utf-16 linux.adp
../..//down/i386/linux-netherlands.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//linux-netherlands.html -oe ISO-8859-1 linux.adp

../..//down/i386/linux-netherlands.var: gen_makefile.conf
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
../..//down/i386/netware-netherlands.html.bg: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//netware-netherlands.html.bg -oe iso-8859-5 netware.adp
../..//down/i386/netware-netherlands.html.en: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//netware-netherlands.html.en -oe iso-8859-1 netware.adp
../..//down/i386/netware-netherlands.html.fi: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//netware-netherlands.html.fi -oe iso-8859-1 netware.adp
../..//down/i386/netware-netherlands.html.fr: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//netware-netherlands.html.fr -oe iso-8859-1 netware.adp
../..//down/i386/netware-netherlands.html.id: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//netware-netherlands.html.id -oe iso-8859-1 netware.adp
../..//down/i386/netware-netherlands.html.it: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//netware-netherlands.html.it -oe iso-8859-1 netware.adp
../..//down/i386/netware-netherlands.html.nl: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//netware-netherlands.html.nl -oe iso-8859-1 netware.adp
../..//down/i386/netware-netherlands.html.po: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//netware-netherlands.html.po -oe iso-8859-2 netware.adp
../..//down/i386/netware-netherlands.html.sl: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//netware-netherlands.html.sl -oe iso-8859-2 netware.adp
../..//down/i386/netware-netherlands.html.ru: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//netware-netherlands.html.ru -oe iso-8859-5 netware.adp
../..//down/i386/netware-netherlands.html.zh-CN: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//netware-netherlands.html.zh-CN -oe utf-16 netware.adp
../..//down/i386/netware-netherlands.html: netware.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//netware-netherlands.html -oe ISO-8859-1 netware.adp

../..//down/i386/netware-netherlands.var: gen_makefile.conf
	echo > netware-netherlands.var
	echo 'URI: netware-netherlands.html.bg' >> netware-netherlands.var
	echo 'Content-language: bg' >> netware-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.en' >> netware-netherlands.var
	echo 'Content-language: en' >> netware-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.fi' >> netware-netherlands.var
	echo 'Content-language: fi' >> netware-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.fr' >> netware-netherlands.var
	echo 'Content-language: fr' >> netware-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.id' >> netware-netherlands.var
	echo 'Content-language: id' >> netware-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.it' >> netware-netherlands.var
	echo 'Content-language: it' >> netware-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.nl' >> netware-netherlands.var
	echo 'Content-language: nl' >> netware-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.po' >> netware-netherlands.var
	echo 'Content-language: pl' >> netware-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.sl' >> netware-netherlands.var
	echo 'Content-language: sl' >> netware-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.ru' >> netware-netherlands.var
	echo 'Content-language: ru' >> netware-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.zh-CN' >> netware-netherlands.var
	echo 'Content-language: zh-CN' >> netware-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> netware-netherlands.var
	echo >> netware-netherlands.var
../..//down/i386/os2-netherlands.html.bg: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//os2-netherlands.html.bg -oe iso-8859-5 os2.adp
../..//down/i386/os2-netherlands.html.en: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//os2-netherlands.html.en -oe iso-8859-1 os2.adp
../..//down/i386/os2-netherlands.html.fi: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//os2-netherlands.html.fi -oe iso-8859-1 os2.adp
../..//down/i386/os2-netherlands.html.fr: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//os2-netherlands.html.fr -oe iso-8859-1 os2.adp
../..//down/i386/os2-netherlands.html.id: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//os2-netherlands.html.id -oe iso-8859-1 os2.adp
../..//down/i386/os2-netherlands.html.it: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//os2-netherlands.html.it -oe iso-8859-1 os2.adp
../..//down/i386/os2-netherlands.html.nl: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//os2-netherlands.html.nl -oe iso-8859-1 os2.adp
../..//down/i386/os2-netherlands.html.po: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//os2-netherlands.html.po -oe iso-8859-2 os2.adp
../..//down/i386/os2-netherlands.html.sl: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//os2-netherlands.html.sl -oe iso-8859-2 os2.adp
../..//down/i386/os2-netherlands.html.ru: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//os2-netherlands.html.ru -oe iso-8859-5 os2.adp
../..//down/i386/os2-netherlands.html.zh-CN: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//os2-netherlands.html.zh-CN -oe utf-16 os2.adp
../..//down/i386/os2-netherlands.html: os2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//os2-netherlands.html -oe ISO-8859-1 os2.adp

../..//down/i386/os2-netherlands.var: gen_makefile.conf
	echo > os2-netherlands.var
	echo 'URI: os2-netherlands.html.bg' >> os2-netherlands.var
	echo 'Content-language: bg' >> os2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.en' >> os2-netherlands.var
	echo 'Content-language: en' >> os2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.fi' >> os2-netherlands.var
	echo 'Content-language: fi' >> os2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.fr' >> os2-netherlands.var
	echo 'Content-language: fr' >> os2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.id' >> os2-netherlands.var
	echo 'Content-language: id' >> os2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.it' >> os2-netherlands.var
	echo 'Content-language: it' >> os2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.nl' >> os2-netherlands.var
	echo 'Content-language: nl' >> os2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.po' >> os2-netherlands.var
	echo 'Content-language: pl' >> os2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.sl' >> os2-netherlands.var
	echo 'Content-language: sl' >> os2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.ru' >> os2-netherlands.var
	echo 'Content-language: ru' >> os2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.zh-CN' >> os2-netherlands.var
	echo 'Content-language: zh-CN' >> os2-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> os2-netherlands.var
	echo >> os2-netherlands.var
../..//down/i386/win32-netherlands.html.bg: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//win32-netherlands.html.bg -oe iso-8859-5 win32.adp
../..//down/i386/win32-netherlands.html.en: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//win32-netherlands.html.en -oe iso-8859-1 win32.adp
../..//down/i386/win32-netherlands.html.fi: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//win32-netherlands.html.fi -oe iso-8859-1 win32.adp
../..//down/i386/win32-netherlands.html.fr: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//win32-netherlands.html.fr -oe iso-8859-1 win32.adp
../..//down/i386/win32-netherlands.html.id: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//win32-netherlands.html.id -oe iso-8859-1 win32.adp
../..//down/i386/win32-netherlands.html.it: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//win32-netherlands.html.it -oe iso-8859-1 win32.adp
../..//down/i386/win32-netherlands.html.nl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//win32-netherlands.html.nl -oe iso-8859-1 win32.adp
../..//down/i386/win32-netherlands.html.po: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//win32-netherlands.html.po -oe iso-8859-2 win32.adp
../..//down/i386/win32-netherlands.html.sl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//win32-netherlands.html.sl -oe iso-8859-2 win32.adp
../..//down/i386/win32-netherlands.html.ru: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//win32-netherlands.html.ru -oe iso-8859-5 win32.adp
../..//down/i386/win32-netherlands.html.zh-CN: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//win32-netherlands.html.zh-CN -oe utf-16 win32.adp
../..//down/i386/win32-netherlands.html: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//win32-netherlands.html -oe ISO-8859-1 win32.adp

../..//down/i386/win32-netherlands.var: gen_makefile.conf
	echo > win32-netherlands.var
	echo 'URI: win32-netherlands.html.bg' >> win32-netherlands.var
	echo 'Content-language: bg' >> win32-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.en' >> win32-netherlands.var
	echo 'Content-language: en' >> win32-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.fi' >> win32-netherlands.var
	echo 'Content-language: fi' >> win32-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.fr' >> win32-netherlands.var
	echo 'Content-language: fr' >> win32-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.id' >> win32-netherlands.var
	echo 'Content-language: id' >> win32-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.it' >> win32-netherlands.var
	echo 'Content-language: it' >> win32-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.nl' >> win32-netherlands.var
	echo 'Content-language: nl' >> win32-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.po' >> win32-netherlands.var
	echo 'Content-language: pl' >> win32-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.sl' >> win32-netherlands.var
	echo 'Content-language: sl' >> win32-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.ru' >> win32-netherlands.var
	echo 'Content-language: ru' >> win32-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.zh-CN' >> win32-netherlands.var
	echo 'Content-language: zh-CN' >> win32-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> win32-netherlands.var
	echo >> win32-netherlands.var
../..//down/i386/macosx-netherlands.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//macosx-netherlands.html.bg -oe iso-8859-5 macosx.adp
../..//down/i386/macosx-netherlands.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//macosx-netherlands.html.en -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-netherlands.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//macosx-netherlands.html.fi -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-netherlands.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//macosx-netherlands.html.fr -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-netherlands.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//macosx-netherlands.html.id -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-netherlands.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//macosx-netherlands.html.it -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-netherlands.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//macosx-netherlands.html.nl -oe iso-8859-1 macosx.adp
../..//down/i386/macosx-netherlands.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//macosx-netherlands.html.po -oe iso-8859-2 macosx.adp
../..//down/i386/macosx-netherlands.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//macosx-netherlands.html.sl -oe iso-8859-2 macosx.adp
../..//down/i386/macosx-netherlands.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//macosx-netherlands.html.ru -oe iso-8859-5 macosx.adp
../..//down/i386/macosx-netherlands.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//macosx-netherlands.html.zh-CN -oe utf-16 macosx.adp
../..//down/i386/macosx-netherlands.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//macosx-netherlands.html -oe ISO-8859-1 macosx.adp

../..//down/i386/macosx-netherlands.var: gen_makefile.conf
	echo > macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.bg' >> macosx-netherlands.var
	echo 'Content-language: bg' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.en' >> macosx-netherlands.var
	echo 'Content-language: en' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.fi' >> macosx-netherlands.var
	echo 'Content-language: fi' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.fr' >> macosx-netherlands.var
	echo 'Content-language: fr' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.id' >> macosx-netherlands.var
	echo 'Content-language: id' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.it' >> macosx-netherlands.var
	echo 'Content-language: it' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.nl' >> macosx-netherlands.var
	echo 'Content-language: nl' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.po' >> macosx-netherlands.var
	echo 'Content-language: pl' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.sl' >> macosx-netherlands.var
	echo 'Content-language: sl' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.ru' >> macosx-netherlands.var
	echo 'Content-language: ru' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.zh-CN' >> macosx-netherlands.var
	echo 'Content-language: zh-CN' >> macosx-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
../..//down/i386/haiku-netherlands.html.bg: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//haiku-netherlands.html.bg -oe iso-8859-5 haiku.adp
../..//down/i386/haiku-netherlands.html.en: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//haiku-netherlands.html.en -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-netherlands.html.fi: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//haiku-netherlands.html.fi -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-netherlands.html.fr: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//haiku-netherlands.html.fr -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-netherlands.html.id: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//haiku-netherlands.html.id -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-netherlands.html.it: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//haiku-netherlands.html.it -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-netherlands.html.nl: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//haiku-netherlands.html.nl -oe iso-8859-1 haiku.adp
../..//down/i386/haiku-netherlands.html.po: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//haiku-netherlands.html.po -oe iso-8859-2 haiku.adp
../..//down/i386/haiku-netherlands.html.sl: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//haiku-netherlands.html.sl -oe iso-8859-2 haiku.adp
../..//down/i386/haiku-netherlands.html.ru: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//haiku-netherlands.html.ru -oe iso-8859-5 haiku.adp
../..//down/i386/haiku-netherlands.html.zh-CN: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//haiku-netherlands.html.zh-CN -oe utf-16 haiku.adp
../..//down/i386/haiku-netherlands.html: haiku.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//haiku-netherlands.html -oe ISO-8859-1 haiku.adp

../..//down/i386/haiku-netherlands.var: gen_makefile.conf
	echo > haiku-netherlands.var
	echo 'URI: haiku-netherlands.html.bg' >> haiku-netherlands.var
	echo 'Content-language: bg' >> haiku-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> haiku-netherlands.var
	echo >> haiku-netherlands.var
	echo 'URI: haiku-netherlands.html.en' >> haiku-netherlands.var
	echo 'Content-language: en' >> haiku-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-netherlands.var
	echo >> haiku-netherlands.var
	echo 'URI: haiku-netherlands.html.fi' >> haiku-netherlands.var
	echo 'Content-language: fi' >> haiku-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-netherlands.var
	echo >> haiku-netherlands.var
	echo 'URI: haiku-netherlands.html.fr' >> haiku-netherlands.var
	echo 'Content-language: fr' >> haiku-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-netherlands.var
	echo >> haiku-netherlands.var
	echo 'URI: haiku-netherlands.html.id' >> haiku-netherlands.var
	echo 'Content-language: id' >> haiku-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-netherlands.var
	echo >> haiku-netherlands.var
	echo 'URI: haiku-netherlands.html.it' >> haiku-netherlands.var
	echo 'Content-language: it' >> haiku-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-netherlands.var
	echo >> haiku-netherlands.var
	echo 'URI: haiku-netherlands.html.nl' >> haiku-netherlands.var
	echo 'Content-language: nl' >> haiku-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku-netherlands.var
	echo >> haiku-netherlands.var
	echo 'URI: haiku-netherlands.html.po' >> haiku-netherlands.var
	echo 'Content-language: pl' >> haiku-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> haiku-netherlands.var
	echo >> haiku-netherlands.var
	echo 'URI: haiku-netherlands.html.sl' >> haiku-netherlands.var
	echo 'Content-language: sl' >> haiku-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> haiku-netherlands.var
	echo >> haiku-netherlands.var
	echo 'URI: haiku-netherlands.html.ru' >> haiku-netherlands.var
	echo 'Content-language: ru' >> haiku-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> haiku-netherlands.var
	echo >> haiku-netherlands.var
	echo 'URI: haiku-netherlands.html.zh-CN' >> haiku-netherlands.var
	echo 'Content-language: zh-CN' >> haiku-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> haiku-netherlands.var
	echo >> haiku-netherlands.var
../..//down/i386/solaris-netherlands.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/i386//solaris-netherlands.html.bg -oe iso-8859-5 solaris.adp
../..//down/i386/solaris-netherlands.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//solaris-netherlands.html.en -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-netherlands.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/i386//solaris-netherlands.html.fi -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-netherlands.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/i386//solaris-netherlands.html.fr -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-netherlands.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/i386//solaris-netherlands.html.id -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-netherlands.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/i386//solaris-netherlands.html.it -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-netherlands.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/i386//solaris-netherlands.html.nl -oe iso-8859-1 solaris.adp
../..//down/i386/solaris-netherlands.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/i386//solaris-netherlands.html.po -oe iso-8859-2 solaris.adp
../..//down/i386/solaris-netherlands.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/i386//solaris-netherlands.html.sl -oe iso-8859-2 solaris.adp
../..//down/i386/solaris-netherlands.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/i386//solaris-netherlands.html.ru -oe iso-8859-5 solaris.adp
../..//down/i386/solaris-netherlands.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/i386//solaris-netherlands.html.zh-CN -oe utf-16 solaris.adp
../..//down/i386/solaris-netherlands.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/i386//solaris-netherlands.html -oe ISO-8859-1 solaris.adp

../..//down/i386/solaris-netherlands.var: gen_makefile.conf
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

../..//down/i386/freebsd.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o freebsd.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/freebsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o freebsd.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/freebsd.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o freebsd.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/freebsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o freebsd.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/freebsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o freebsd.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/freebsd.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o freebsd.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/freebsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o freebsd.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/freebsd.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o freebsd.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/freebsd.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o freebsd.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/freebsd.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o freebsd.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/freebsd.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o freebsd.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/i386/freebsd.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=freebsd -p sourceforgepath="FreeBSD" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o freebsd.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/freebsd.var: gen_makefile.conf
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

../..//down/i386/go32v2.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o go32v2.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/go32v2.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o go32v2.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/go32v2.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o go32v2.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/go32v2.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o go32v2.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/go32v2.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o go32v2.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/go32v2.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o go32v2.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/go32v2.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o go32v2.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/go32v2.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o go32v2.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/go32v2.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o go32v2.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/go32v2.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o go32v2.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/go32v2.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o go32v2.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/i386/go32v2.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=go32v2 -p sourceforgepath="DOS_Go32v2" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o go32v2.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/go32v2.var: gen_makefile.conf
	echo > go32v2.var
	echo 'URI: go32v2.html.bg' >> go32v2.var
	echo 'Content-language: bg' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.en' >> go32v2.var
	echo 'Content-language: en' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.fi' >> go32v2.var
	echo 'Content-language: fi' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.fr' >> go32v2.var
	echo 'Content-language: fr' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.id' >> go32v2.var
	echo 'Content-language: id' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.it' >> go32v2.var
	echo 'Content-language: it' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.nl' >> go32v2.var
	echo 'Content-language: nl' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.po' >> go32v2.var
	echo 'Content-language: pl' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.sl' >> go32v2.var
	echo 'Content-language: sl' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.ru' >> go32v2.var
	echo 'Content-language: ru' >> go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.zh-CN' >> go32v2.var
	echo 'Content-language: zh-CN' >> go32v2.var
	echo 'Content-type: text/html; charset=utf-16' >> go32v2.var
	echo >> go32v2.var

../..//down/i386/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/i386/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/linux.var: gen_makefile.conf
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

../..//down/i386/netware.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o netware.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/netware.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o netware.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netware.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o netware.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netware.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o netware.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netware.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o netware.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netware.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o netware.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netware.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o netware.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/netware.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o netware.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/netware.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o netware.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/netware.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o netware.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/netware.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o netware.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/i386/netware.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=netware -p sourceforgepath="na" -p latestversion="2.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o netware.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/netware.var: gen_makefile.conf
	echo > netware.var
	echo 'URI: netware.html.bg' >> netware.var
	echo 'Content-language: bg' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.en' >> netware.var
	echo 'Content-language: en' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.fi' >> netware.var
	echo 'Content-language: fi' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.fr' >> netware.var
	echo 'Content-language: fr' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.id' >> netware.var
	echo 'Content-language: id' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.it' >> netware.var
	echo 'Content-language: it' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.nl' >> netware.var
	echo 'Content-language: nl' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.po' >> netware.var
	echo 'Content-language: pl' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.sl' >> netware.var
	echo 'Content-language: sl' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.ru' >> netware.var
	echo 'Content-language: ru' >> netware.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.zh-CN' >> netware.var
	echo 'Content-language: zh-CN' >> netware.var
	echo 'Content-type: text/html; charset=utf-16' >> netware.var
	echo >> netware.var

../..//down/i386/os2.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o os2.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/os2.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o os2.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/os2.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o os2.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/os2.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o os2.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/os2.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o os2.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/os2.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o os2.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/os2.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o os2.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/os2.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o os2.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/os2.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o os2.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/os2.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o os2.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/os2.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o os2.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/i386/os2.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=os2 -p sourceforgepath="OS_2" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o os2.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/os2.var: gen_makefile.conf
	echo > os2.var
	echo 'URI: os2.html.bg' >> os2.var
	echo 'Content-language: bg' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.en' >> os2.var
	echo 'Content-language: en' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.fi' >> os2.var
	echo 'Content-language: fi' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.fr' >> os2.var
	echo 'Content-language: fr' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.id' >> os2.var
	echo 'Content-language: id' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.it' >> os2.var
	echo 'Content-language: it' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.nl' >> os2.var
	echo 'Content-language: nl' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.po' >> os2.var
	echo 'Content-language: pl' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.sl' >> os2.var
	echo 'Content-language: sl' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.ru' >> os2.var
	echo 'Content-language: ru' >> os2.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.zh-CN' >> os2.var
	echo 'Content-language: zh-CN' >> os2.var
	echo 'Content-type: text/html; charset=utf-16' >> os2.var
	echo >> os2.var

../..//down/i386/win32.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="2.6.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o win32.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/win32.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win32.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/win32.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="2.6.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o win32.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/win32.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="2.6.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o win32.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/win32.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="2.6.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o win32.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/win32.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="2.6.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o win32.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/win32.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="2.6.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o win32.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/win32.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="2.6.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o win32.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/win32.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="2.6.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o win32.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/win32.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="2.6.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o win32.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/win32.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="2.6.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o win32.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/i386/win32.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=win32 -p sourceforgepath="Win32" -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win32.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/win32.var: gen_makefile.conf
	echo > win32.var
	echo 'URI: win32.html.bg' >> win32.var
	echo 'Content-language: bg' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.en' >> win32.var
	echo 'Content-language: en' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.fi' >> win32.var
	echo 'Content-language: fi' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.fr' >> win32.var
	echo 'Content-language: fr' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.id' >> win32.var
	echo 'Content-language: id' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.it' >> win32.var
	echo 'Content-language: it' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.nl' >> win32.var
	echo 'Content-language: nl' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.po' >> win32.var
	echo 'Content-language: pl' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.sl' >> win32.var
	echo 'Content-language: sl' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.ru' >> win32.var
	echo 'Content-language: ru' >> win32.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.zh-CN' >> win32.var
	echo 'Content-language: zh-CN' >> win32.var
	echo 'Content-type: text/html; charset=utf-16' >> win32.var
	echo >> win32.var

../..//down/i386/macosx.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o macosx.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/macosx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macosx.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/macosx.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o macosx.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/macosx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o macosx.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/macosx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o macosx.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/macosx.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o macosx.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/macosx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o macosx.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/macosx.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o macosx.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/macosx.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o macosx.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/macosx.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o macosx.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/macosx.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o macosx.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/i386/macosx.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macosx.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/macosx.var: gen_makefile.conf
	echo > macosx.var
	echo 'URI: macosx.html.bg' >> macosx.var
	echo 'Content-language: bg' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.en' >> macosx.var
	echo 'Content-language: en' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.fi' >> macosx.var
	echo 'Content-language: fi' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.fr' >> macosx.var
	echo 'Content-language: fr' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.id' >> macosx.var
	echo 'Content-language: id' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.it' >> macosx.var
	echo 'Content-language: it' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.nl' >> macosx.var
	echo 'Content-language: nl' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.po' >> macosx.var
	echo 'Content-language: pl' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.sl' >> macosx.var
	echo 'Content-language: sl' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.ru' >> macosx.var
	echo 'Content-language: ru' >> macosx.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx.var
	echo >> macosx.var
	echo 'URI: macosx.html.zh-CN' >> macosx.var
	echo 'Content-language: zh-CN' >> macosx.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx.var
	echo >> macosx.var

../..//down/i386/haiku.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o haiku.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/haiku.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o haiku.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/haiku.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o haiku.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/haiku.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o haiku.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/haiku.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o haiku.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/haiku.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o haiku.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/haiku.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o haiku.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/haiku.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o haiku.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/haiku.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o haiku.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/haiku.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o haiku.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/haiku.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o haiku.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/i386/haiku.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=haiku -p sourceforgepath="Haiku" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o haiku.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/haiku.var: gen_makefile.conf
	echo > haiku.var
	echo 'URI: haiku.html.bg' >> haiku.var
	echo 'Content-language: bg' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.en' >> haiku.var
	echo 'Content-language: en' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.fi' >> haiku.var
	echo 'Content-language: fi' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.fr' >> haiku.var
	echo 'Content-language: fr' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.id' >> haiku.var
	echo 'Content-language: id' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.it' >> haiku.var
	echo 'Content-language: it' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.nl' >> haiku.var
	echo 'Content-language: nl' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.po' >> haiku.var
	echo 'Content-language: pl' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.sl' >> haiku.var
	echo 'Content-language: sl' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.ru' >> haiku.var
	echo 'Content-language: ru' >> haiku.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> haiku.var
	echo >> haiku.var
	echo 'URI: haiku.html.zh-CN' >> haiku.var
	echo 'Content-language: zh-CN' >> haiku.var
	echo 'Content-type: text/html; charset=utf-16' >> haiku.var
	echo >> haiku.var

../..//down/i386/solaris.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.6.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o solaris.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/solaris.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o solaris.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/solaris.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.6.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o solaris.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/solaris.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.6.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o solaris.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/solaris.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.6.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o solaris.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/solaris.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.6.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o solaris.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/solaris.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.6.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o solaris.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/i386/solaris.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.6.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o solaris.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/solaris.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.6.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o solaris.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/i386/solaris.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.6.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o solaris.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/i386/solaris.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.6.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o solaris.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/i386/solaris.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.6.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o solaris.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/i386/solaris.var: gen_makefile.conf
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

all_pages: mirrors.dat ../..//down/i386/freebsd-austria.html.bg ../..//down/i386/freebsd-austria.html.en ../..//down/i386/freebsd-austria.html.fi ../..//down/i386/freebsd-austria.html.fr ../..//down/i386/freebsd-austria.html.id ../..//down/i386/freebsd-austria.html.it ../..//down/i386/freebsd-austria.html.nl ../..//down/i386/freebsd-austria.html.po ../..//down/i386/freebsd-austria.html.sl ../..//down/i386/freebsd-austria.html.ru ../..//down/i386/freebsd-austria.html.zh-CN ../..//down/i386/freebsd-austria.var ../..//down/i386/go32v2-austria.html.bg ../..//down/i386/go32v2-austria.html.en ../..//down/i386/go32v2-austria.html.fi ../..//down/i386/go32v2-austria.html.fr ../..//down/i386/go32v2-austria.html.id ../..//down/i386/go32v2-austria.html.it ../..//down/i386/go32v2-austria.html.nl ../..//down/i386/go32v2-austria.html.po ../..//down/i386/go32v2-austria.html.sl ../..//down/i386/go32v2-austria.html.ru ../..//down/i386/go32v2-austria.html.zh-CN ../..//down/i386/go32v2-austria.var ../..//down/i386/linux-austria.html.bg ../..//down/i386/linux-austria.html.en ../..//down/i386/linux-austria.html.fi ../..//down/i386/linux-austria.html.fr ../..//down/i386/linux-austria.html.id ../..//down/i386/linux-austria.html.it ../..//down/i386/linux-austria.html.nl ../..//down/i386/linux-austria.html.po ../..//down/i386/linux-austria.html.sl ../..//down/i386/linux-austria.html.ru ../..//down/i386/linux-austria.html.zh-CN ../..//down/i386/linux-austria.var ../..//down/i386/netware-austria.html.bg ../..//down/i386/netware-austria.html.en ../..//down/i386/netware-austria.html.fi ../..//down/i386/netware-austria.html.fr ../..//down/i386/netware-austria.html.id ../..//down/i386/netware-austria.html.it ../..//down/i386/netware-austria.html.nl ../..//down/i386/netware-austria.html.po ../..//down/i386/netware-austria.html.sl ../..//down/i386/netware-austria.html.ru ../..//down/i386/netware-austria.html.zh-CN ../..//down/i386/netware-austria.var ../..//down/i386/os2-austria.html.bg ../..//down/i386/os2-austria.html.en ../..//down/i386/os2-austria.html.fi ../..//down/i386/os2-austria.html.fr ../..//down/i386/os2-austria.html.id ../..//down/i386/os2-austria.html.it ../..//down/i386/os2-austria.html.nl ../..//down/i386/os2-austria.html.po ../..//down/i386/os2-austria.html.sl ../..//down/i386/os2-austria.html.ru ../..//down/i386/os2-austria.html.zh-CN ../..//down/i386/os2-austria.var ../..//down/i386/win32-austria.html.bg ../..//down/i386/win32-austria.html.en ../..//down/i386/win32-austria.html.fi ../..//down/i386/win32-austria.html.fr ../..//down/i386/win32-austria.html.id ../..//down/i386/win32-austria.html.it ../..//down/i386/win32-austria.html.nl ../..//down/i386/win32-austria.html.po ../..//down/i386/win32-austria.html.sl ../..//down/i386/win32-austria.html.ru ../..//down/i386/win32-austria.html.zh-CN ../..//down/i386/win32-austria.var ../..//down/i386/macosx-austria.html.bg ../..//down/i386/macosx-austria.html.en ../..//down/i386/macosx-austria.html.fi ../..//down/i386/macosx-austria.html.fr ../..//down/i386/macosx-austria.html.id ../..//down/i386/macosx-austria.html.it ../..//down/i386/macosx-austria.html.nl ../..//down/i386/macosx-austria.html.po ../..//down/i386/macosx-austria.html.sl ../..//down/i386/macosx-austria.html.ru ../..//down/i386/macosx-austria.html.zh-CN ../..//down/i386/macosx-austria.var ../..//down/i386/haiku-austria.html.bg ../..//down/i386/haiku-austria.html.en ../..//down/i386/haiku-austria.html.fi ../..//down/i386/haiku-austria.html.fr ../..//down/i386/haiku-austria.html.id ../..//down/i386/haiku-austria.html.it ../..//down/i386/haiku-austria.html.nl ../..//down/i386/haiku-austria.html.po ../..//down/i386/haiku-austria.html.sl ../..//down/i386/haiku-austria.html.ru ../..//down/i386/haiku-austria.html.zh-CN ../..//down/i386/haiku-austria.var ../..//down/i386/solaris-austria.html.bg ../..//down/i386/solaris-austria.html.en ../..//down/i386/solaris-austria.html.fi ../..//down/i386/solaris-austria.html.fr ../..//down/i386/solaris-austria.html.id ../..//down/i386/solaris-austria.html.it ../..//down/i386/solaris-austria.html.nl ../..//down/i386/solaris-austria.html.po ../..//down/i386/solaris-austria.html.sl ../..//down/i386/solaris-austria.html.ru ../..//down/i386/solaris-austria.html.zh-CN ../..//down/i386/solaris-austria.var ../..//down/i386/freebsd-hungary.html.bg ../..//down/i386/freebsd-hungary.html.en ../..//down/i386/freebsd-hungary.html.fi ../..//down/i386/freebsd-hungary.html.fr ../..//down/i386/freebsd-hungary.html.id ../..//down/i386/freebsd-hungary.html.it ../..//down/i386/freebsd-hungary.html.nl ../..//down/i386/freebsd-hungary.html.po ../..//down/i386/freebsd-hungary.html.sl ../..//down/i386/freebsd-hungary.html.ru ../..//down/i386/freebsd-hungary.html.zh-CN ../..//down/i386/freebsd-hungary.var ../..//down/i386/go32v2-hungary.html.bg ../..//down/i386/go32v2-hungary.html.en ../..//down/i386/go32v2-hungary.html.fi ../..//down/i386/go32v2-hungary.html.fr ../..//down/i386/go32v2-hungary.html.id ../..//down/i386/go32v2-hungary.html.it ../..//down/i386/go32v2-hungary.html.nl ../..//down/i386/go32v2-hungary.html.po ../..//down/i386/go32v2-hungary.html.sl ../..//down/i386/go32v2-hungary.html.ru ../..//down/i386/go32v2-hungary.html.zh-CN ../..//down/i386/go32v2-hungary.var ../..//down/i386/linux-hungary.html.bg ../..//down/i386/linux-hungary.html.en ../..//down/i386/linux-hungary.html.fi ../..//down/i386/linux-hungary.html.fr ../..//down/i386/linux-hungary.html.id ../..//down/i386/linux-hungary.html.it ../..//down/i386/linux-hungary.html.nl ../..//down/i386/linux-hungary.html.po ../..//down/i386/linux-hungary.html.sl ../..//down/i386/linux-hungary.html.ru ../..//down/i386/linux-hungary.html.zh-CN ../..//down/i386/linux-hungary.var ../..//down/i386/netware-hungary.html.bg ../..//down/i386/netware-hungary.html.en ../..//down/i386/netware-hungary.html.fi ../..//down/i386/netware-hungary.html.fr ../..//down/i386/netware-hungary.html.id ../..//down/i386/netware-hungary.html.it ../..//down/i386/netware-hungary.html.nl ../..//down/i386/netware-hungary.html.po ../..//down/i386/netware-hungary.html.sl ../..//down/i386/netware-hungary.html.ru ../..//down/i386/netware-hungary.html.zh-CN ../..//down/i386/netware-hungary.var ../..//down/i386/os2-hungary.html.bg ../..//down/i386/os2-hungary.html.en ../..//down/i386/os2-hungary.html.fi ../..//down/i386/os2-hungary.html.fr ../..//down/i386/os2-hungary.html.id ../..//down/i386/os2-hungary.html.it ../..//down/i386/os2-hungary.html.nl ../..//down/i386/os2-hungary.html.po ../..//down/i386/os2-hungary.html.sl ../..//down/i386/os2-hungary.html.ru ../..//down/i386/os2-hungary.html.zh-CN ../..//down/i386/os2-hungary.var ../..//down/i386/win32-hungary.html.bg ../..//down/i386/win32-hungary.html.en ../..//down/i386/win32-hungary.html.fi ../..//down/i386/win32-hungary.html.fr ../..//down/i386/win32-hungary.html.id ../..//down/i386/win32-hungary.html.it ../..//down/i386/win32-hungary.html.nl ../..//down/i386/win32-hungary.html.po ../..//down/i386/win32-hungary.html.sl ../..//down/i386/win32-hungary.html.ru ../..//down/i386/win32-hungary.html.zh-CN ../..//down/i386/win32-hungary.var ../..//down/i386/macosx-hungary.html.bg ../..//down/i386/macosx-hungary.html.en ../..//down/i386/macosx-hungary.html.fi ../..//down/i386/macosx-hungary.html.fr ../..//down/i386/macosx-hungary.html.id ../..//down/i386/macosx-hungary.html.it ../..//down/i386/macosx-hungary.html.nl ../..//down/i386/macosx-hungary.html.po ../..//down/i386/macosx-hungary.html.sl ../..//down/i386/macosx-hungary.html.ru ../..//down/i386/macosx-hungary.html.zh-CN ../..//down/i386/macosx-hungary.var ../..//down/i386/haiku-hungary.html.bg ../..//down/i386/haiku-hungary.html.en ../..//down/i386/haiku-hungary.html.fi ../..//down/i386/haiku-hungary.html.fr ../..//down/i386/haiku-hungary.html.id ../..//down/i386/haiku-hungary.html.it ../..//down/i386/haiku-hungary.html.nl ../..//down/i386/haiku-hungary.html.po ../..//down/i386/haiku-hungary.html.sl ../..//down/i386/haiku-hungary.html.ru ../..//down/i386/haiku-hungary.html.zh-CN ../..//down/i386/haiku-hungary.var ../..//down/i386/solaris-hungary.html.bg ../..//down/i386/solaris-hungary.html.en ../..//down/i386/solaris-hungary.html.fi ../..//down/i386/solaris-hungary.html.fr ../..//down/i386/solaris-hungary.html.id ../..//down/i386/solaris-hungary.html.it ../..//down/i386/solaris-hungary.html.nl ../..//down/i386/solaris-hungary.html.po ../..//down/i386/solaris-hungary.html.sl ../..//down/i386/solaris-hungary.html.ru ../..//down/i386/solaris-hungary.html.zh-CN ../..//down/i386/solaris-hungary.var ../..//down/i386/freebsd-netherlands.html.bg ../..//down/i386/freebsd-netherlands.html.en ../..//down/i386/freebsd-netherlands.html.fi ../..//down/i386/freebsd-netherlands.html.fr ../..//down/i386/freebsd-netherlands.html.id ../..//down/i386/freebsd-netherlands.html.it ../..//down/i386/freebsd-netherlands.html.nl ../..//down/i386/freebsd-netherlands.html.po ../..//down/i386/freebsd-netherlands.html.sl ../..//down/i386/freebsd-netherlands.html.ru ../..//down/i386/freebsd-netherlands.html.zh-CN ../..//down/i386/freebsd-netherlands.var ../..//down/i386/go32v2-netherlands.html.bg ../..//down/i386/go32v2-netherlands.html.en ../..//down/i386/go32v2-netherlands.html.fi ../..//down/i386/go32v2-netherlands.html.fr ../..//down/i386/go32v2-netherlands.html.id ../..//down/i386/go32v2-netherlands.html.it ../..//down/i386/go32v2-netherlands.html.nl ../..//down/i386/go32v2-netherlands.html.po ../..//down/i386/go32v2-netherlands.html.sl ../..//down/i386/go32v2-netherlands.html.ru ../..//down/i386/go32v2-netherlands.html.zh-CN ../..//down/i386/go32v2-netherlands.var ../..//down/i386/linux-netherlands.html.bg ../..//down/i386/linux-netherlands.html.en ../..//down/i386/linux-netherlands.html.fi ../..//down/i386/linux-netherlands.html.fr ../..//down/i386/linux-netherlands.html.id ../..//down/i386/linux-netherlands.html.it ../..//down/i386/linux-netherlands.html.nl ../..//down/i386/linux-netherlands.html.po ../..//down/i386/linux-netherlands.html.sl ../..//down/i386/linux-netherlands.html.ru ../..//down/i386/linux-netherlands.html.zh-CN ../..//down/i386/linux-netherlands.var ../..//down/i386/netware-netherlands.html.bg ../..//down/i386/netware-netherlands.html.en ../..//down/i386/netware-netherlands.html.fi ../..//down/i386/netware-netherlands.html.fr ../..//down/i386/netware-netherlands.html.id ../..//down/i386/netware-netherlands.html.it ../..//down/i386/netware-netherlands.html.nl ../..//down/i386/netware-netherlands.html.po ../..//down/i386/netware-netherlands.html.sl ../..//down/i386/netware-netherlands.html.ru ../..//down/i386/netware-netherlands.html.zh-CN ../..//down/i386/netware-netherlands.var ../..//down/i386/os2-netherlands.html.bg ../..//down/i386/os2-netherlands.html.en ../..//down/i386/os2-netherlands.html.fi ../..//down/i386/os2-netherlands.html.fr ../..//down/i386/os2-netherlands.html.id ../..//down/i386/os2-netherlands.html.it ../..//down/i386/os2-netherlands.html.nl ../..//down/i386/os2-netherlands.html.po ../..//down/i386/os2-netherlands.html.sl ../..//down/i386/os2-netherlands.html.ru ../..//down/i386/os2-netherlands.html.zh-CN ../..//down/i386/os2-netherlands.var ../..//down/i386/win32-netherlands.html.bg ../..//down/i386/win32-netherlands.html.en ../..//down/i386/win32-netherlands.html.fi ../..//down/i386/win32-netherlands.html.fr ../..//down/i386/win32-netherlands.html.id ../..//down/i386/win32-netherlands.html.it ../..//down/i386/win32-netherlands.html.nl ../..//down/i386/win32-netherlands.html.po ../..//down/i386/win32-netherlands.html.sl ../..//down/i386/win32-netherlands.html.ru ../..//down/i386/win32-netherlands.html.zh-CN ../..//down/i386/win32-netherlands.var ../..//down/i386/macosx-netherlands.html.bg ../..//down/i386/macosx-netherlands.html.en ../..//down/i386/macosx-netherlands.html.fi ../..//down/i386/macosx-netherlands.html.fr ../..//down/i386/macosx-netherlands.html.id ../..//down/i386/macosx-netherlands.html.it ../..//down/i386/macosx-netherlands.html.nl ../..//down/i386/macosx-netherlands.html.po ../..//down/i386/macosx-netherlands.html.sl ../..//down/i386/macosx-netherlands.html.ru ../..//down/i386/macosx-netherlands.html.zh-CN ../..//down/i386/macosx-netherlands.var ../..//down/i386/haiku-netherlands.html.bg ../..//down/i386/haiku-netherlands.html.en ../..//down/i386/haiku-netherlands.html.fi ../..//down/i386/haiku-netherlands.html.fr ../..//down/i386/haiku-netherlands.html.id ../..//down/i386/haiku-netherlands.html.it ../..//down/i386/haiku-netherlands.html.nl ../..//down/i386/haiku-netherlands.html.po ../..//down/i386/haiku-netherlands.html.sl ../..//down/i386/haiku-netherlands.html.ru ../..//down/i386/haiku-netherlands.html.zh-CN ../..//down/i386/haiku-netherlands.var ../..//down/i386/solaris-netherlands.html.bg ../..//down/i386/solaris-netherlands.html.en ../..//down/i386/solaris-netherlands.html.fi ../..//down/i386/solaris-netherlands.html.fr ../..//down/i386/solaris-netherlands.html.id ../..//down/i386/solaris-netherlands.html.it ../..//down/i386/solaris-netherlands.html.nl ../..//down/i386/solaris-netherlands.html.po ../..//down/i386/solaris-netherlands.html.sl ../..//down/i386/solaris-netherlands.html.ru ../..//down/i386/solaris-netherlands.html.zh-CN ../..//down/i386/solaris-netherlands.var ../..//down/i386/freebsd.html.bg ../..//down/i386/freebsd.html.en ../..//down/i386/freebsd.html.fi ../..//down/i386/freebsd.html.fr ../..//down/i386/freebsd.html.id ../..//down/i386/freebsd.html.it ../..//down/i386/freebsd.html.nl ../..//down/i386/freebsd.html.po ../..//down/i386/freebsd.html.sl ../..//down/i386/freebsd.html.ru ../..//down/i386/freebsd.html.zh-CN ../..//down/i386/freebsd.var ../..//down/i386/go32v2.html.bg ../..//down/i386/go32v2.html.en ../..//down/i386/go32v2.html.fi ../..//down/i386/go32v2.html.fr ../..//down/i386/go32v2.html.id ../..//down/i386/go32v2.html.it ../..//down/i386/go32v2.html.nl ../..//down/i386/go32v2.html.po ../..//down/i386/go32v2.html.sl ../..//down/i386/go32v2.html.ru ../..//down/i386/go32v2.html.zh-CN ../..//down/i386/go32v2.var ../..//down/i386/linux.html.bg ../..//down/i386/linux.html.en ../..//down/i386/linux.html.fi ../..//down/i386/linux.html.fr ../..//down/i386/linux.html.id ../..//down/i386/linux.html.it ../..//down/i386/linux.html.nl ../..//down/i386/linux.html.po ../..//down/i386/linux.html.sl ../..//down/i386/linux.html.ru ../..//down/i386/linux.html.zh-CN ../..//down/i386/linux.var ../..//down/i386/netware.html.bg ../..//down/i386/netware.html.en ../..//down/i386/netware.html.fi ../..//down/i386/netware.html.fr ../..//down/i386/netware.html.id ../..//down/i386/netware.html.it ../..//down/i386/netware.html.nl ../..//down/i386/netware.html.po ../..//down/i386/netware.html.sl ../..//down/i386/netware.html.ru ../..//down/i386/netware.html.zh-CN ../..//down/i386/netware.var ../..//down/i386/os2.html.bg ../..//down/i386/os2.html.en ../..//down/i386/os2.html.fi ../..//down/i386/os2.html.fr ../..//down/i386/os2.html.id ../..//down/i386/os2.html.it ../..//down/i386/os2.html.nl ../..//down/i386/os2.html.po ../..//down/i386/os2.html.sl ../..//down/i386/os2.html.ru ../..//down/i386/os2.html.zh-CN ../..//down/i386/os2.var ../..//down/i386/win32.html.bg ../..//down/i386/win32.html.en ../..//down/i386/win32.html.fi ../..//down/i386/win32.html.fr ../..//down/i386/win32.html.id ../..//down/i386/win32.html.it ../..//down/i386/win32.html.nl ../..//down/i386/win32.html.po ../..//down/i386/win32.html.sl ../..//down/i386/win32.html.ru ../..//down/i386/win32.html.zh-CN ../..//down/i386/win32.var ../..//down/i386/macosx.html.bg ../..//down/i386/macosx.html.en ../..//down/i386/macosx.html.fi ../..//down/i386/macosx.html.fr ../..//down/i386/macosx.html.id ../..//down/i386/macosx.html.it ../..//down/i386/macosx.html.nl ../..//down/i386/macosx.html.po ../..//down/i386/macosx.html.sl ../..//down/i386/macosx.html.ru ../..//down/i386/macosx.html.zh-CN ../..//down/i386/macosx.var ../..//down/i386/haiku.html.bg ../..//down/i386/haiku.html.en ../..//down/i386/haiku.html.fi ../..//down/i386/haiku.html.fr ../..//down/i386/haiku.html.id ../..//down/i386/haiku.html.it ../..//down/i386/haiku.html.nl ../..//down/i386/haiku.html.po ../..//down/i386/haiku.html.sl ../..//down/i386/haiku.html.ru ../..//down/i386/haiku.html.zh-CN ../..//down/i386/haiku.var ../..//down/i386/solaris.html.bg ../..//down/i386/solaris.html.en ../..//down/i386/solaris.html.fi ../..//down/i386/solaris.html.fr ../..//down/i386/solaris.html.id ../..//down/i386/solaris.html.it ../..//down/i386/solaris.html.nl ../..//down/i386/solaris.html.po ../..//down/i386/solaris.html.sl ../..//down/i386/solaris.html.ru ../..//down/i386/solaris.html.zh-CN ../..//down/i386/solaris.var
all_en_pages: mirrors.dat ../..//down/i386/freebsd-austria.html ../..//down/i386/go32v2-austria.html ../..//down/i386/linux-austria.html ../..//down/i386/netware-austria.html ../..//down/i386/os2-austria.html ../..//down/i386/win32-austria.html ../..//down/i386/macosx-austria.html ../..//down/i386/haiku-austria.html ../..//down/i386/solaris-austria.html ../..//down/i386/freebsd-hungary.html ../..//down/i386/go32v2-hungary.html ../..//down/i386/linux-hungary.html ../..//down/i386/netware-hungary.html ../..//down/i386/os2-hungary.html ../..//down/i386/win32-hungary.html ../..//down/i386/macosx-hungary.html ../..//down/i386/haiku-hungary.html ../..//down/i386/solaris-hungary.html ../..//down/i386/freebsd-netherlands.html ../..//down/i386/go32v2-netherlands.html ../..//down/i386/linux-netherlands.html ../..//down/i386/netware-netherlands.html ../..//down/i386/os2-netherlands.html ../..//down/i386/win32-netherlands.html ../..//down/i386/macosx-netherlands.html ../..//down/i386/haiku-netherlands.html ../..//down/i386/solaris-netherlands.html ../..//down/i386/freebsd.html ../..//down/i386/go32v2.html ../..//down/i386/linux.html ../..//down/i386/netware.html ../..//down/i386/os2.html ../..//down/i386/win32.html ../..//down/i386/macosx.html ../..//down/i386/haiku.html ../..//down/i386/solaris.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/i386/

