
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
../..//down2/i386/freebsd-australia.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//freebsd-australia.html.bg -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-australia.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-australia.html.en -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-australia.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//freebsd-australia.html.fi -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-australia.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//freebsd-australia.html.fr -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-australia.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//freebsd-australia.html.id -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-australia.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//freebsd-australia.html.it -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-australia.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//freebsd-australia.html.nl -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-australia.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//freebsd-australia.html.po -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-australia.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//freebsd-australia.html.sl -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-australia.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//freebsd-australia.html.ru -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-australia.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//freebsd-australia.html.zh-CN -oe utf-16 freebsd.adp
../..//down2/i386/freebsd-australia.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-australia.html -oe ISO-8859-1 freebsd.adp

../..//down2/i386/freebsd-australia.var: gen_makefile.conf
	echo > freebsd-australia.var
	echo 'URI: freebsd-australia.html.bg' >> freebsd-australia.var
	echo 'Content-language: bg' >> freebsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.en' >> freebsd-australia.var
	echo 'Content-language: en' >> freebsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.fi' >> freebsd-australia.var
	echo 'Content-language: fi' >> freebsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.fr' >> freebsd-australia.var
	echo 'Content-language: fr' >> freebsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.id' >> freebsd-australia.var
	echo 'Content-language: id' >> freebsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.it' >> freebsd-australia.var
	echo 'Content-language: it' >> freebsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.nl' >> freebsd-australia.var
	echo 'Content-language: nl' >> freebsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.po' >> freebsd-australia.var
	echo 'Content-language: pl' >> freebsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.sl' >> freebsd-australia.var
	echo 'Content-language: sl' >> freebsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.ru' >> freebsd-australia.var
	echo 'Content-language: ru' >> freebsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.zh-CN' >> freebsd-australia.var
	echo 'Content-language: zh-CN' >> freebsd-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> freebsd-australia.var
	echo >> freebsd-australia.var
../..//down2/i386/go32v2-australia.html.bg: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//go32v2-australia.html.bg -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-australia.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-australia.html.en -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-australia.html.fi: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//go32v2-australia.html.fi -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-australia.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//go32v2-australia.html.fr -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-australia.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//go32v2-australia.html.id -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-australia.html.it: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//go32v2-australia.html.it -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-australia.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//go32v2-australia.html.nl -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-australia.html.po: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//go32v2-australia.html.po -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-australia.html.sl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//go32v2-australia.html.sl -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-australia.html.ru: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//go32v2-australia.html.ru -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-australia.html.zh-CN: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//go32v2-australia.html.zh-CN -oe utf-16 go32v2.adp
../..//down2/i386/go32v2-australia.html: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-australia.html -oe ISO-8859-1 go32v2.adp

../..//down2/i386/go32v2-australia.var: gen_makefile.conf
	echo > go32v2-australia.var
	echo 'URI: go32v2-australia.html.bg' >> go32v2-australia.var
	echo 'Content-language: bg' >> go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.en' >> go32v2-australia.var
	echo 'Content-language: en' >> go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.fi' >> go32v2-australia.var
	echo 'Content-language: fi' >> go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.fr' >> go32v2-australia.var
	echo 'Content-language: fr' >> go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.id' >> go32v2-australia.var
	echo 'Content-language: id' >> go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.it' >> go32v2-australia.var
	echo 'Content-language: it' >> go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.nl' >> go32v2-australia.var
	echo 'Content-language: nl' >> go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.po' >> go32v2-australia.var
	echo 'Content-language: pl' >> go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.sl' >> go32v2-australia.var
	echo 'Content-language: sl' >> go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.ru' >> go32v2-australia.var
	echo 'Content-language: ru' >> go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.zh-CN' >> go32v2-australia.var
	echo 'Content-language: zh-CN' >> go32v2-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> go32v2-australia.var
	echo >> go32v2-australia.var
../..//down2/i386/linux-australia.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//linux-australia.html.bg -oe iso-8859-5 linux.adp
../..//down2/i386/linux-australia.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-australia.html.en -oe iso-8859-1 linux.adp
../..//down2/i386/linux-australia.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//linux-australia.html.fi -oe iso-8859-1 linux.adp
../..//down2/i386/linux-australia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//linux-australia.html.fr -oe iso-8859-1 linux.adp
../..//down2/i386/linux-australia.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//linux-australia.html.id -oe iso-8859-1 linux.adp
../..//down2/i386/linux-australia.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//linux-australia.html.it -oe iso-8859-1 linux.adp
../..//down2/i386/linux-australia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//linux-australia.html.nl -oe iso-8859-1 linux.adp
../..//down2/i386/linux-australia.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//linux-australia.html.po -oe iso-8859-2 linux.adp
../..//down2/i386/linux-australia.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//linux-australia.html.sl -oe iso-8859-2 linux.adp
../..//down2/i386/linux-australia.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//linux-australia.html.ru -oe iso-8859-5 linux.adp
../..//down2/i386/linux-australia.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//linux-australia.html.zh-CN -oe utf-16 linux.adp
../..//down2/i386/linux-australia.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-australia.html -oe ISO-8859-1 linux.adp

../..//down2/i386/linux-australia.var: gen_makefile.conf
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
../..//down2/i386/macosx-australia.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//macosx-australia.html.bg -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-australia.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-australia.html.en -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-australia.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//macosx-australia.html.fi -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-australia.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//macosx-australia.html.fr -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-australia.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//macosx-australia.html.id -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-australia.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//macosx-australia.html.it -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-australia.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//macosx-australia.html.nl -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-australia.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//macosx-australia.html.po -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-australia.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//macosx-australia.html.sl -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-australia.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//macosx-australia.html.ru -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-australia.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//macosx-australia.html.zh-CN -oe utf-16 macosx.adp
../..//down2/i386/macosx-australia.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-australia.html -oe ISO-8859-1 macosx.adp

../..//down2/i386/macosx-australia.var: gen_makefile.conf
	echo > macosx-australia.var
	echo 'URI: macosx-australia.html.bg' >> macosx-australia.var
	echo 'Content-language: bg' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.en' >> macosx-australia.var
	echo 'Content-language: en' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.fi' >> macosx-australia.var
	echo 'Content-language: fi' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.fr' >> macosx-australia.var
	echo 'Content-language: fr' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.id' >> macosx-australia.var
	echo 'Content-language: id' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.it' >> macosx-australia.var
	echo 'Content-language: it' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.nl' >> macosx-australia.var
	echo 'Content-language: nl' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.po' >> macosx-australia.var
	echo 'Content-language: pl' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.sl' >> macosx-australia.var
	echo 'Content-language: sl' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.ru' >> macosx-australia.var
	echo 'Content-language: ru' >> macosx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.zh-CN' >> macosx-australia.var
	echo 'Content-language: zh-CN' >> macosx-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-australia.var
	echo >> macosx-australia.var
../..//down2/i386/win32-australia.html.bg: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//win32-australia.html.bg -oe iso-8859-5 win32.adp
../..//down2/i386/win32-australia.html.en: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-australia.html.en -oe iso-8859-1 win32.adp
../..//down2/i386/win32-australia.html.fi: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//win32-australia.html.fi -oe iso-8859-1 win32.adp
../..//down2/i386/win32-australia.html.fr: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//win32-australia.html.fr -oe iso-8859-1 win32.adp
../..//down2/i386/win32-australia.html.id: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//win32-australia.html.id -oe iso-8859-1 win32.adp
../..//down2/i386/win32-australia.html.it: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//win32-australia.html.it -oe iso-8859-1 win32.adp
../..//down2/i386/win32-australia.html.nl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//win32-australia.html.nl -oe iso-8859-1 win32.adp
../..//down2/i386/win32-australia.html.po: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//win32-australia.html.po -oe iso-8859-2 win32.adp
../..//down2/i386/win32-australia.html.sl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//win32-australia.html.sl -oe iso-8859-2 win32.adp
../..//down2/i386/win32-australia.html.ru: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//win32-australia.html.ru -oe iso-8859-5 win32.adp
../..//down2/i386/win32-australia.html.zh-CN: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//win32-australia.html.zh-CN -oe utf-16 win32.adp
../..//down2/i386/win32-australia.html: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-australia.html -oe ISO-8859-1 win32.adp

../..//down2/i386/win32-australia.var: gen_makefile.conf
	echo > win32-australia.var
	echo 'URI: win32-australia.html.bg' >> win32-australia.var
	echo 'Content-language: bg' >> win32-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.en' >> win32-australia.var
	echo 'Content-language: en' >> win32-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.fi' >> win32-australia.var
	echo 'Content-language: fi' >> win32-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.fr' >> win32-australia.var
	echo 'Content-language: fr' >> win32-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.id' >> win32-australia.var
	echo 'Content-language: id' >> win32-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.it' >> win32-australia.var
	echo 'Content-language: it' >> win32-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.nl' >> win32-australia.var
	echo 'Content-language: nl' >> win32-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.po' >> win32-australia.var
	echo 'Content-language: pl' >> win32-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.sl' >> win32-australia.var
	echo 'Content-language: sl' >> win32-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.ru' >> win32-australia.var
	echo 'Content-language: ru' >> win32-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.zh-CN' >> win32-australia.var
	echo 'Content-language: zh-CN' >> win32-australia.var
	echo 'Content-type: text/html; charset=utf-16' >> win32-australia.var
	echo >> win32-australia.var
../..//down2/i386/freebsd-austria.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//freebsd-austria.html.bg -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-austria.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-austria.html.en -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-austria.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//freebsd-austria.html.fi -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-austria.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//freebsd-austria.html.fr -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-austria.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//freebsd-austria.html.id -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-austria.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//freebsd-austria.html.it -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-austria.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//freebsd-austria.html.nl -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-austria.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//freebsd-austria.html.po -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-austria.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//freebsd-austria.html.sl -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-austria.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//freebsd-austria.html.ru -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-austria.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//freebsd-austria.html.zh-CN -oe utf-16 freebsd.adp
../..//down2/i386/freebsd-austria.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-austria.html -oe ISO-8859-1 freebsd.adp

../..//down2/i386/freebsd-austria.var: gen_makefile.conf
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
../..//down2/i386/go32v2-austria.html.bg: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//go32v2-austria.html.bg -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-austria.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-austria.html.en -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-austria.html.fi: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//go32v2-austria.html.fi -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-austria.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//go32v2-austria.html.fr -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-austria.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//go32v2-austria.html.id -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-austria.html.it: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//go32v2-austria.html.it -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-austria.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//go32v2-austria.html.nl -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-austria.html.po: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//go32v2-austria.html.po -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-austria.html.sl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//go32v2-austria.html.sl -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-austria.html.ru: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//go32v2-austria.html.ru -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-austria.html.zh-CN: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//go32v2-austria.html.zh-CN -oe utf-16 go32v2.adp
../..//down2/i386/go32v2-austria.html: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-austria.html -oe ISO-8859-1 go32v2.adp

../..//down2/i386/go32v2-austria.var: gen_makefile.conf
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
../..//down2/i386/linux-austria.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//linux-austria.html.bg -oe iso-8859-5 linux.adp
../..//down2/i386/linux-austria.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-austria.html.en -oe iso-8859-1 linux.adp
../..//down2/i386/linux-austria.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//linux-austria.html.fi -oe iso-8859-1 linux.adp
../..//down2/i386/linux-austria.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//linux-austria.html.fr -oe iso-8859-1 linux.adp
../..//down2/i386/linux-austria.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//linux-austria.html.id -oe iso-8859-1 linux.adp
../..//down2/i386/linux-austria.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//linux-austria.html.it -oe iso-8859-1 linux.adp
../..//down2/i386/linux-austria.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//linux-austria.html.nl -oe iso-8859-1 linux.adp
../..//down2/i386/linux-austria.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//linux-austria.html.po -oe iso-8859-2 linux.adp
../..//down2/i386/linux-austria.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//linux-austria.html.sl -oe iso-8859-2 linux.adp
../..//down2/i386/linux-austria.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//linux-austria.html.ru -oe iso-8859-5 linux.adp
../..//down2/i386/linux-austria.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//linux-austria.html.zh-CN -oe utf-16 linux.adp
../..//down2/i386/linux-austria.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-austria.html -oe ISO-8859-1 linux.adp

../..//down2/i386/linux-austria.var: gen_makefile.conf
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
../..//down2/i386/macosx-austria.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//macosx-austria.html.bg -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-austria.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-austria.html.en -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-austria.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//macosx-austria.html.fi -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-austria.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//macosx-austria.html.fr -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-austria.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//macosx-austria.html.id -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-austria.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//macosx-austria.html.it -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-austria.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//macosx-austria.html.nl -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-austria.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//macosx-austria.html.po -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-austria.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//macosx-austria.html.sl -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-austria.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//macosx-austria.html.ru -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-austria.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//macosx-austria.html.zh-CN -oe utf-16 macosx.adp
../..//down2/i386/macosx-austria.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-austria.html -oe ISO-8859-1 macosx.adp

../..//down2/i386/macosx-austria.var: gen_makefile.conf
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
../..//down2/i386/win32-austria.html.bg: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//win32-austria.html.bg -oe iso-8859-5 win32.adp
../..//down2/i386/win32-austria.html.en: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-austria.html.en -oe iso-8859-1 win32.adp
../..//down2/i386/win32-austria.html.fi: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//win32-austria.html.fi -oe iso-8859-1 win32.adp
../..//down2/i386/win32-austria.html.fr: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//win32-austria.html.fr -oe iso-8859-1 win32.adp
../..//down2/i386/win32-austria.html.id: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//win32-austria.html.id -oe iso-8859-1 win32.adp
../..//down2/i386/win32-austria.html.it: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//win32-austria.html.it -oe iso-8859-1 win32.adp
../..//down2/i386/win32-austria.html.nl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//win32-austria.html.nl -oe iso-8859-1 win32.adp
../..//down2/i386/win32-austria.html.po: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//win32-austria.html.po -oe iso-8859-2 win32.adp
../..//down2/i386/win32-austria.html.sl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//win32-austria.html.sl -oe iso-8859-2 win32.adp
../..//down2/i386/win32-austria.html.ru: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//win32-austria.html.ru -oe iso-8859-5 win32.adp
../..//down2/i386/win32-austria.html.zh-CN: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//win32-austria.html.zh-CN -oe utf-16 win32.adp
../..//down2/i386/win32-austria.html: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-austria.html -oe ISO-8859-1 win32.adp

../..//down2/i386/win32-austria.var: gen_makefile.conf
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
../..//down2/i386/freebsd-hungary.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.bg -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-hungary.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.en -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-hungary.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.fi -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-hungary.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.fr -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-hungary.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.id -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-hungary.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.it -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-hungary.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.nl -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-hungary.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.po -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-hungary.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.sl -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-hungary.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.ru -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-hungary.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html.zh-CN -oe utf-16 freebsd.adp
../..//down2/i386/freebsd-hungary.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-hungary.html -oe ISO-8859-1 freebsd.adp

../..//down2/i386/freebsd-hungary.var: gen_makefile.conf
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
../..//down2/i386/go32v2-hungary.html.bg: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.bg -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-hungary.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.en -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-hungary.html.fi: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.fi -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-hungary.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.fr -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-hungary.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.id -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-hungary.html.it: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.it -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-hungary.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.nl -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-hungary.html.po: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.po -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-hungary.html.sl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.sl -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-hungary.html.ru: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.ru -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-hungary.html.zh-CN: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html.zh-CN -oe utf-16 go32v2.adp
../..//down2/i386/go32v2-hungary.html: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-hungary.html -oe ISO-8859-1 go32v2.adp

../..//down2/i386/go32v2-hungary.var: gen_makefile.conf
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
../..//down2/i386/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.bg -oe iso-8859-5 linux.adp
../..//down2/i386/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.en -oe iso-8859-1 linux.adp
../..//down2/i386/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.fi -oe iso-8859-1 linux.adp
../..//down2/i386/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.fr -oe iso-8859-1 linux.adp
../..//down2/i386/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.id -oe iso-8859-1 linux.adp
../..//down2/i386/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.it -oe iso-8859-1 linux.adp
../..//down2/i386/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.nl -oe iso-8859-1 linux.adp
../..//down2/i386/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.po -oe iso-8859-2 linux.adp
../..//down2/i386/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.sl -oe iso-8859-2 linux.adp
../..//down2/i386/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.ru -oe iso-8859-5 linux.adp
../..//down2/i386/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html.zh-CN -oe utf-16 linux.adp
../..//down2/i386/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-hungary.html -oe ISO-8859-1 linux.adp

../..//down2/i386/linux-hungary.var: gen_makefile.conf
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
../..//down2/i386/macosx-hungary.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.bg -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-hungary.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.en -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-hungary.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.fi -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-hungary.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.fr -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-hungary.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.id -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-hungary.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.it -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-hungary.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.nl -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-hungary.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.po -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-hungary.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.sl -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-hungary.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.ru -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-hungary.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html.zh-CN -oe utf-16 macosx.adp
../..//down2/i386/macosx-hungary.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-hungary.html -oe ISO-8859-1 macosx.adp

../..//down2/i386/macosx-hungary.var: gen_makefile.conf
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
../..//down2/i386/win32-hungary.html.bg: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.bg -oe iso-8859-5 win32.adp
../..//down2/i386/win32-hungary.html.en: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.en -oe iso-8859-1 win32.adp
../..//down2/i386/win32-hungary.html.fi: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.fi -oe iso-8859-1 win32.adp
../..//down2/i386/win32-hungary.html.fr: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.fr -oe iso-8859-1 win32.adp
../..//down2/i386/win32-hungary.html.id: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.id -oe iso-8859-1 win32.adp
../..//down2/i386/win32-hungary.html.it: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.it -oe iso-8859-1 win32.adp
../..//down2/i386/win32-hungary.html.nl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.nl -oe iso-8859-1 win32.adp
../..//down2/i386/win32-hungary.html.po: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.po -oe iso-8859-2 win32.adp
../..//down2/i386/win32-hungary.html.sl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.sl -oe iso-8859-2 win32.adp
../..//down2/i386/win32-hungary.html.ru: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.ru -oe iso-8859-5 win32.adp
../..//down2/i386/win32-hungary.html.zh-CN: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html.zh-CN -oe utf-16 win32.adp
../..//down2/i386/win32-hungary.html: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-hungary.html -oe ISO-8859-1 win32.adp

../..//down2/i386/win32-hungary.var: gen_makefile.conf
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
../..//down2/i386/freebsd-israel.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//freebsd-israel.html.bg -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-israel.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-israel.html.en -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-israel.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//freebsd-israel.html.fi -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-israel.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//freebsd-israel.html.fr -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-israel.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//freebsd-israel.html.id -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-israel.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//freebsd-israel.html.it -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-israel.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//freebsd-israel.html.nl -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-israel.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//freebsd-israel.html.po -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-israel.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//freebsd-israel.html.sl -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-israel.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//freebsd-israel.html.ru -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-israel.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//freebsd-israel.html.zh-CN -oe utf-16 freebsd.adp
../..//down2/i386/freebsd-israel.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-israel.html -oe ISO-8859-1 freebsd.adp

../..//down2/i386/freebsd-israel.var: gen_makefile.conf
	echo > freebsd-israel.var
	echo 'URI: freebsd-israel.html.bg' >> freebsd-israel.var
	echo 'Content-language: bg' >> freebsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.en' >> freebsd-israel.var
	echo 'Content-language: en' >> freebsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.fi' >> freebsd-israel.var
	echo 'Content-language: fi' >> freebsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.fr' >> freebsd-israel.var
	echo 'Content-language: fr' >> freebsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.id' >> freebsd-israel.var
	echo 'Content-language: id' >> freebsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.it' >> freebsd-israel.var
	echo 'Content-language: it' >> freebsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.nl' >> freebsd-israel.var
	echo 'Content-language: nl' >> freebsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.po' >> freebsd-israel.var
	echo 'Content-language: pl' >> freebsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.sl' >> freebsd-israel.var
	echo 'Content-language: sl' >> freebsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.ru' >> freebsd-israel.var
	echo 'Content-language: ru' >> freebsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.zh-CN' >> freebsd-israel.var
	echo 'Content-language: zh-CN' >> freebsd-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> freebsd-israel.var
	echo >> freebsd-israel.var
../..//down2/i386/go32v2-israel.html.bg: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//go32v2-israel.html.bg -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-israel.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-israel.html.en -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-israel.html.fi: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//go32v2-israel.html.fi -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-israel.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//go32v2-israel.html.fr -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-israel.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//go32v2-israel.html.id -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-israel.html.it: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//go32v2-israel.html.it -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-israel.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//go32v2-israel.html.nl -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-israel.html.po: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//go32v2-israel.html.po -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-israel.html.sl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//go32v2-israel.html.sl -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-israel.html.ru: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//go32v2-israel.html.ru -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-israel.html.zh-CN: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//go32v2-israel.html.zh-CN -oe utf-16 go32v2.adp
../..//down2/i386/go32v2-israel.html: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-israel.html -oe ISO-8859-1 go32v2.adp

../..//down2/i386/go32v2-israel.var: gen_makefile.conf
	echo > go32v2-israel.var
	echo 'URI: go32v2-israel.html.bg' >> go32v2-israel.var
	echo 'Content-language: bg' >> go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.en' >> go32v2-israel.var
	echo 'Content-language: en' >> go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.fi' >> go32v2-israel.var
	echo 'Content-language: fi' >> go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.fr' >> go32v2-israel.var
	echo 'Content-language: fr' >> go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.id' >> go32v2-israel.var
	echo 'Content-language: id' >> go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.it' >> go32v2-israel.var
	echo 'Content-language: it' >> go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.nl' >> go32v2-israel.var
	echo 'Content-language: nl' >> go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.po' >> go32v2-israel.var
	echo 'Content-language: pl' >> go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.sl' >> go32v2-israel.var
	echo 'Content-language: sl' >> go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.ru' >> go32v2-israel.var
	echo 'Content-language: ru' >> go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.zh-CN' >> go32v2-israel.var
	echo 'Content-language: zh-CN' >> go32v2-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> go32v2-israel.var
	echo >> go32v2-israel.var
../..//down2/i386/linux-israel.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//linux-israel.html.bg -oe iso-8859-5 linux.adp
../..//down2/i386/linux-israel.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-israel.html.en -oe iso-8859-1 linux.adp
../..//down2/i386/linux-israel.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//linux-israel.html.fi -oe iso-8859-1 linux.adp
../..//down2/i386/linux-israel.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//linux-israel.html.fr -oe iso-8859-1 linux.adp
../..//down2/i386/linux-israel.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//linux-israel.html.id -oe iso-8859-1 linux.adp
../..//down2/i386/linux-israel.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//linux-israel.html.it -oe iso-8859-1 linux.adp
../..//down2/i386/linux-israel.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//linux-israel.html.nl -oe iso-8859-1 linux.adp
../..//down2/i386/linux-israel.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//linux-israel.html.po -oe iso-8859-2 linux.adp
../..//down2/i386/linux-israel.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//linux-israel.html.sl -oe iso-8859-2 linux.adp
../..//down2/i386/linux-israel.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//linux-israel.html.ru -oe iso-8859-5 linux.adp
../..//down2/i386/linux-israel.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//linux-israel.html.zh-CN -oe utf-16 linux.adp
../..//down2/i386/linux-israel.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-israel.html -oe ISO-8859-1 linux.adp

../..//down2/i386/linux-israel.var: gen_makefile.conf
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
../..//down2/i386/macosx-israel.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//macosx-israel.html.bg -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-israel.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-israel.html.en -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-israel.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//macosx-israel.html.fi -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-israel.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//macosx-israel.html.fr -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-israel.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//macosx-israel.html.id -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-israel.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//macosx-israel.html.it -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-israel.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//macosx-israel.html.nl -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-israel.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//macosx-israel.html.po -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-israel.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//macosx-israel.html.sl -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-israel.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//macosx-israel.html.ru -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-israel.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//macosx-israel.html.zh-CN -oe utf-16 macosx.adp
../..//down2/i386/macosx-israel.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-israel.html -oe ISO-8859-1 macosx.adp

../..//down2/i386/macosx-israel.var: gen_makefile.conf
	echo > macosx-israel.var
	echo 'URI: macosx-israel.html.bg' >> macosx-israel.var
	echo 'Content-language: bg' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.en' >> macosx-israel.var
	echo 'Content-language: en' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.fi' >> macosx-israel.var
	echo 'Content-language: fi' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.fr' >> macosx-israel.var
	echo 'Content-language: fr' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.id' >> macosx-israel.var
	echo 'Content-language: id' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.it' >> macosx-israel.var
	echo 'Content-language: it' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.nl' >> macosx-israel.var
	echo 'Content-language: nl' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.po' >> macosx-israel.var
	echo 'Content-language: pl' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.sl' >> macosx-israel.var
	echo 'Content-language: sl' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.ru' >> macosx-israel.var
	echo 'Content-language: ru' >> macosx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.zh-CN' >> macosx-israel.var
	echo 'Content-language: zh-CN' >> macosx-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-israel.var
	echo >> macosx-israel.var
../..//down2/i386/win32-israel.html.bg: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//win32-israel.html.bg -oe iso-8859-5 win32.adp
../..//down2/i386/win32-israel.html.en: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-israel.html.en -oe iso-8859-1 win32.adp
../..//down2/i386/win32-israel.html.fi: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//win32-israel.html.fi -oe iso-8859-1 win32.adp
../..//down2/i386/win32-israel.html.fr: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//win32-israel.html.fr -oe iso-8859-1 win32.adp
../..//down2/i386/win32-israel.html.id: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//win32-israel.html.id -oe iso-8859-1 win32.adp
../..//down2/i386/win32-israel.html.it: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//win32-israel.html.it -oe iso-8859-1 win32.adp
../..//down2/i386/win32-israel.html.nl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//win32-israel.html.nl -oe iso-8859-1 win32.adp
../..//down2/i386/win32-israel.html.po: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//win32-israel.html.po -oe iso-8859-2 win32.adp
../..//down2/i386/win32-israel.html.sl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//win32-israel.html.sl -oe iso-8859-2 win32.adp
../..//down2/i386/win32-israel.html.ru: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//win32-israel.html.ru -oe iso-8859-5 win32.adp
../..//down2/i386/win32-israel.html.zh-CN: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//win32-israel.html.zh-CN -oe utf-16 win32.adp
../..//down2/i386/win32-israel.html: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-israel.html -oe ISO-8859-1 win32.adp

../..//down2/i386/win32-israel.var: gen_makefile.conf
	echo > win32-israel.var
	echo 'URI: win32-israel.html.bg' >> win32-israel.var
	echo 'Content-language: bg' >> win32-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.en' >> win32-israel.var
	echo 'Content-language: en' >> win32-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.fi' >> win32-israel.var
	echo 'Content-language: fi' >> win32-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.fr' >> win32-israel.var
	echo 'Content-language: fr' >> win32-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.id' >> win32-israel.var
	echo 'Content-language: id' >> win32-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.it' >> win32-israel.var
	echo 'Content-language: it' >> win32-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.nl' >> win32-israel.var
	echo 'Content-language: nl' >> win32-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.po' >> win32-israel.var
	echo 'Content-language: pl' >> win32-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.sl' >> win32-israel.var
	echo 'Content-language: sl' >> win32-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.ru' >> win32-israel.var
	echo 'Content-language: ru' >> win32-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.zh-CN' >> win32-israel.var
	echo 'Content-language: zh-CN' >> win32-israel.var
	echo 'Content-type: text/html; charset=utf-16' >> win32-israel.var
	echo >> win32-israel.var
../..//down2/i386/freebsd-netherlands.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//freebsd-netherlands.html.bg -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-netherlands.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-netherlands.html.en -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-netherlands.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//freebsd-netherlands.html.fi -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-netherlands.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//freebsd-netherlands.html.fr -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-netherlands.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//freebsd-netherlands.html.id -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-netherlands.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//freebsd-netherlands.html.it -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-netherlands.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//freebsd-netherlands.html.nl -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-netherlands.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//freebsd-netherlands.html.po -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-netherlands.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//freebsd-netherlands.html.sl -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-netherlands.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//freebsd-netherlands.html.ru -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-netherlands.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//freebsd-netherlands.html.zh-CN -oe utf-16 freebsd.adp
../..//down2/i386/freebsd-netherlands.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-netherlands.html -oe ISO-8859-1 freebsd.adp

../..//down2/i386/freebsd-netherlands.var: gen_makefile.conf
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
../..//down2/i386/go32v2-netherlands.html.bg: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//go32v2-netherlands.html.bg -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-netherlands.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-netherlands.html.en -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-netherlands.html.fi: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//go32v2-netherlands.html.fi -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-netherlands.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//go32v2-netherlands.html.fr -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-netherlands.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//go32v2-netherlands.html.id -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-netherlands.html.it: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//go32v2-netherlands.html.it -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-netherlands.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//go32v2-netherlands.html.nl -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-netherlands.html.po: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//go32v2-netherlands.html.po -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-netherlands.html.sl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//go32v2-netherlands.html.sl -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-netherlands.html.ru: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//go32v2-netherlands.html.ru -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-netherlands.html.zh-CN: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//go32v2-netherlands.html.zh-CN -oe utf-16 go32v2.adp
../..//down2/i386/go32v2-netherlands.html: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-netherlands.html -oe ISO-8859-1 go32v2.adp

../..//down2/i386/go32v2-netherlands.var: gen_makefile.conf
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
../..//down2/i386/linux-netherlands.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//linux-netherlands.html.bg -oe iso-8859-5 linux.adp
../..//down2/i386/linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-netherlands.html.en -oe iso-8859-1 linux.adp
../..//down2/i386/linux-netherlands.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//linux-netherlands.html.fi -oe iso-8859-1 linux.adp
../..//down2/i386/linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//linux-netherlands.html.fr -oe iso-8859-1 linux.adp
../..//down2/i386/linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//linux-netherlands.html.id -oe iso-8859-1 linux.adp
../..//down2/i386/linux-netherlands.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//linux-netherlands.html.it -oe iso-8859-1 linux.adp
../..//down2/i386/linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//linux-netherlands.html.nl -oe iso-8859-1 linux.adp
../..//down2/i386/linux-netherlands.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//linux-netherlands.html.po -oe iso-8859-2 linux.adp
../..//down2/i386/linux-netherlands.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//linux-netherlands.html.sl -oe iso-8859-2 linux.adp
../..//down2/i386/linux-netherlands.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//linux-netherlands.html.ru -oe iso-8859-5 linux.adp
../..//down2/i386/linux-netherlands.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//linux-netherlands.html.zh-CN -oe utf-16 linux.adp
../..//down2/i386/linux-netherlands.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-netherlands.html -oe ISO-8859-1 linux.adp

../..//down2/i386/linux-netherlands.var: gen_makefile.conf
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
../..//down2/i386/macosx-netherlands.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//macosx-netherlands.html.bg -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-netherlands.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-netherlands.html.en -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-netherlands.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//macosx-netherlands.html.fi -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-netherlands.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//macosx-netherlands.html.fr -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-netherlands.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//macosx-netherlands.html.id -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-netherlands.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//macosx-netherlands.html.it -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-netherlands.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//macosx-netherlands.html.nl -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-netherlands.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//macosx-netherlands.html.po -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-netherlands.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//macosx-netherlands.html.sl -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-netherlands.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//macosx-netherlands.html.ru -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-netherlands.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//macosx-netherlands.html.zh-CN -oe utf-16 macosx.adp
../..//down2/i386/macosx-netherlands.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-netherlands.html -oe ISO-8859-1 macosx.adp

../..//down2/i386/macosx-netherlands.var: gen_makefile.conf
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
../..//down2/i386/win32-netherlands.html.bg: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//win32-netherlands.html.bg -oe iso-8859-5 win32.adp
../..//down2/i386/win32-netherlands.html.en: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-netherlands.html.en -oe iso-8859-1 win32.adp
../..//down2/i386/win32-netherlands.html.fi: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//win32-netherlands.html.fi -oe iso-8859-1 win32.adp
../..//down2/i386/win32-netherlands.html.fr: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//win32-netherlands.html.fr -oe iso-8859-1 win32.adp
../..//down2/i386/win32-netherlands.html.id: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//win32-netherlands.html.id -oe iso-8859-1 win32.adp
../..//down2/i386/win32-netherlands.html.it: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//win32-netherlands.html.it -oe iso-8859-1 win32.adp
../..//down2/i386/win32-netherlands.html.nl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//win32-netherlands.html.nl -oe iso-8859-1 win32.adp
../..//down2/i386/win32-netherlands.html.po: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//win32-netherlands.html.po -oe iso-8859-2 win32.adp
../..//down2/i386/win32-netherlands.html.sl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//win32-netherlands.html.sl -oe iso-8859-2 win32.adp
../..//down2/i386/win32-netherlands.html.ru: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//win32-netherlands.html.ru -oe iso-8859-5 win32.adp
../..//down2/i386/win32-netherlands.html.zh-CN: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//win32-netherlands.html.zh-CN -oe utf-16 win32.adp
../..//down2/i386/win32-netherlands.html: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-netherlands.html -oe ISO-8859-1 win32.adp

../..//down2/i386/win32-netherlands.var: gen_makefile.conf
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
../..//down2/i386/freebsd-norway.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//freebsd-norway.html.bg -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-norway.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-norway.html.en -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-norway.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//freebsd-norway.html.fi -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-norway.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//freebsd-norway.html.fr -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-norway.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//freebsd-norway.html.id -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-norway.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//freebsd-norway.html.it -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-norway.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//freebsd-norway.html.nl -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-norway.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//freebsd-norway.html.po -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-norway.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//freebsd-norway.html.sl -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-norway.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//freebsd-norway.html.ru -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-norway.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//freebsd-norway.html.zh-CN -oe utf-16 freebsd.adp
../..//down2/i386/freebsd-norway.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-norway.html -oe ISO-8859-1 freebsd.adp

../..//down2/i386/freebsd-norway.var: gen_makefile.conf
	echo > freebsd-norway.var
	echo 'URI: freebsd-norway.html.bg' >> freebsd-norway.var
	echo 'Content-language: bg' >> freebsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.en' >> freebsd-norway.var
	echo 'Content-language: en' >> freebsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.fi' >> freebsd-norway.var
	echo 'Content-language: fi' >> freebsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.fr' >> freebsd-norway.var
	echo 'Content-language: fr' >> freebsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.id' >> freebsd-norway.var
	echo 'Content-language: id' >> freebsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.it' >> freebsd-norway.var
	echo 'Content-language: it' >> freebsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.nl' >> freebsd-norway.var
	echo 'Content-language: nl' >> freebsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.po' >> freebsd-norway.var
	echo 'Content-language: pl' >> freebsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.sl' >> freebsd-norway.var
	echo 'Content-language: sl' >> freebsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.ru' >> freebsd-norway.var
	echo 'Content-language: ru' >> freebsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.zh-CN' >> freebsd-norway.var
	echo 'Content-language: zh-CN' >> freebsd-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> freebsd-norway.var
	echo >> freebsd-norway.var
../..//down2/i386/go32v2-norway.html.bg: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//go32v2-norway.html.bg -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-norway.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-norway.html.en -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-norway.html.fi: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//go32v2-norway.html.fi -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-norway.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//go32v2-norway.html.fr -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-norway.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//go32v2-norway.html.id -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-norway.html.it: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//go32v2-norway.html.it -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-norway.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//go32v2-norway.html.nl -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-norway.html.po: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//go32v2-norway.html.po -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-norway.html.sl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//go32v2-norway.html.sl -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-norway.html.ru: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//go32v2-norway.html.ru -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-norway.html.zh-CN: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//go32v2-norway.html.zh-CN -oe utf-16 go32v2.adp
../..//down2/i386/go32v2-norway.html: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-norway.html -oe ISO-8859-1 go32v2.adp

../..//down2/i386/go32v2-norway.var: gen_makefile.conf
	echo > go32v2-norway.var
	echo 'URI: go32v2-norway.html.bg' >> go32v2-norway.var
	echo 'Content-language: bg' >> go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.en' >> go32v2-norway.var
	echo 'Content-language: en' >> go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.fi' >> go32v2-norway.var
	echo 'Content-language: fi' >> go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.fr' >> go32v2-norway.var
	echo 'Content-language: fr' >> go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.id' >> go32v2-norway.var
	echo 'Content-language: id' >> go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.it' >> go32v2-norway.var
	echo 'Content-language: it' >> go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.nl' >> go32v2-norway.var
	echo 'Content-language: nl' >> go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.po' >> go32v2-norway.var
	echo 'Content-language: pl' >> go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.sl' >> go32v2-norway.var
	echo 'Content-language: sl' >> go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.ru' >> go32v2-norway.var
	echo 'Content-language: ru' >> go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.zh-CN' >> go32v2-norway.var
	echo 'Content-language: zh-CN' >> go32v2-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> go32v2-norway.var
	echo >> go32v2-norway.var
../..//down2/i386/linux-norway.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//linux-norway.html.bg -oe iso-8859-5 linux.adp
../..//down2/i386/linux-norway.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-norway.html.en -oe iso-8859-1 linux.adp
../..//down2/i386/linux-norway.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//linux-norway.html.fi -oe iso-8859-1 linux.adp
../..//down2/i386/linux-norway.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//linux-norway.html.fr -oe iso-8859-1 linux.adp
../..//down2/i386/linux-norway.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//linux-norway.html.id -oe iso-8859-1 linux.adp
../..//down2/i386/linux-norway.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//linux-norway.html.it -oe iso-8859-1 linux.adp
../..//down2/i386/linux-norway.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//linux-norway.html.nl -oe iso-8859-1 linux.adp
../..//down2/i386/linux-norway.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//linux-norway.html.po -oe iso-8859-2 linux.adp
../..//down2/i386/linux-norway.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//linux-norway.html.sl -oe iso-8859-2 linux.adp
../..//down2/i386/linux-norway.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//linux-norway.html.ru -oe iso-8859-5 linux.adp
../..//down2/i386/linux-norway.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//linux-norway.html.zh-CN -oe utf-16 linux.adp
../..//down2/i386/linux-norway.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-norway.html -oe ISO-8859-1 linux.adp

../..//down2/i386/linux-norway.var: gen_makefile.conf
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
../..//down2/i386/macosx-norway.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//macosx-norway.html.bg -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-norway.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-norway.html.en -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-norway.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//macosx-norway.html.fi -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-norway.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//macosx-norway.html.fr -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-norway.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//macosx-norway.html.id -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-norway.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//macosx-norway.html.it -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-norway.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//macosx-norway.html.nl -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-norway.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//macosx-norway.html.po -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-norway.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//macosx-norway.html.sl -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-norway.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//macosx-norway.html.ru -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-norway.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//macosx-norway.html.zh-CN -oe utf-16 macosx.adp
../..//down2/i386/macosx-norway.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-norway.html -oe ISO-8859-1 macosx.adp

../..//down2/i386/macosx-norway.var: gen_makefile.conf
	echo > macosx-norway.var
	echo 'URI: macosx-norway.html.bg' >> macosx-norway.var
	echo 'Content-language: bg' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.en' >> macosx-norway.var
	echo 'Content-language: en' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.fi' >> macosx-norway.var
	echo 'Content-language: fi' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.fr' >> macosx-norway.var
	echo 'Content-language: fr' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.id' >> macosx-norway.var
	echo 'Content-language: id' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.it' >> macosx-norway.var
	echo 'Content-language: it' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.nl' >> macosx-norway.var
	echo 'Content-language: nl' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.po' >> macosx-norway.var
	echo 'Content-language: pl' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.sl' >> macosx-norway.var
	echo 'Content-language: sl' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.ru' >> macosx-norway.var
	echo 'Content-language: ru' >> macosx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.zh-CN' >> macosx-norway.var
	echo 'Content-language: zh-CN' >> macosx-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-norway.var
	echo >> macosx-norway.var
../..//down2/i386/win32-norway.html.bg: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//win32-norway.html.bg -oe iso-8859-5 win32.adp
../..//down2/i386/win32-norway.html.en: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-norway.html.en -oe iso-8859-1 win32.adp
../..//down2/i386/win32-norway.html.fi: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//win32-norway.html.fi -oe iso-8859-1 win32.adp
../..//down2/i386/win32-norway.html.fr: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//win32-norway.html.fr -oe iso-8859-1 win32.adp
../..//down2/i386/win32-norway.html.id: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//win32-norway.html.id -oe iso-8859-1 win32.adp
../..//down2/i386/win32-norway.html.it: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//win32-norway.html.it -oe iso-8859-1 win32.adp
../..//down2/i386/win32-norway.html.nl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//win32-norway.html.nl -oe iso-8859-1 win32.adp
../..//down2/i386/win32-norway.html.po: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//win32-norway.html.po -oe iso-8859-2 win32.adp
../..//down2/i386/win32-norway.html.sl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//win32-norway.html.sl -oe iso-8859-2 win32.adp
../..//down2/i386/win32-norway.html.ru: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//win32-norway.html.ru -oe iso-8859-5 win32.adp
../..//down2/i386/win32-norway.html.zh-CN: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//win32-norway.html.zh-CN -oe utf-16 win32.adp
../..//down2/i386/win32-norway.html: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-norway.html -oe ISO-8859-1 win32.adp

../..//down2/i386/win32-norway.var: gen_makefile.conf
	echo > win32-norway.var
	echo 'URI: win32-norway.html.bg' >> win32-norway.var
	echo 'Content-language: bg' >> win32-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.en' >> win32-norway.var
	echo 'Content-language: en' >> win32-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.fi' >> win32-norway.var
	echo 'Content-language: fi' >> win32-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.fr' >> win32-norway.var
	echo 'Content-language: fr' >> win32-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.id' >> win32-norway.var
	echo 'Content-language: id' >> win32-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.it' >> win32-norway.var
	echo 'Content-language: it' >> win32-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.nl' >> win32-norway.var
	echo 'Content-language: nl' >> win32-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.po' >> win32-norway.var
	echo 'Content-language: pl' >> win32-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.sl' >> win32-norway.var
	echo 'Content-language: sl' >> win32-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.ru' >> win32-norway.var
	echo 'Content-language: ru' >> win32-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.zh-CN' >> win32-norway.var
	echo 'Content-language: zh-CN' >> win32-norway.var
	echo 'Content-type: text/html; charset=utf-16' >> win32-norway.var
	echo >> win32-norway.var
../..//down2/i386/freebsd-russia.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//freebsd-russia.html.bg -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-russia.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-russia.html.en -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-russia.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//freebsd-russia.html.fi -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-russia.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//freebsd-russia.html.fr -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-russia.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//freebsd-russia.html.id -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-russia.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//freebsd-russia.html.it -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-russia.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//freebsd-russia.html.nl -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-russia.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//freebsd-russia.html.po -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-russia.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//freebsd-russia.html.sl -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-russia.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//freebsd-russia.html.ru -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-russia.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//freebsd-russia.html.zh-CN -oe utf-16 freebsd.adp
../..//down2/i386/freebsd-russia.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-russia.html -oe ISO-8859-1 freebsd.adp

../..//down2/i386/freebsd-russia.var: gen_makefile.conf
	echo > freebsd-russia.var
	echo 'URI: freebsd-russia.html.bg' >> freebsd-russia.var
	echo 'Content-language: bg' >> freebsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.en' >> freebsd-russia.var
	echo 'Content-language: en' >> freebsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.fi' >> freebsd-russia.var
	echo 'Content-language: fi' >> freebsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.fr' >> freebsd-russia.var
	echo 'Content-language: fr' >> freebsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.id' >> freebsd-russia.var
	echo 'Content-language: id' >> freebsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.it' >> freebsd-russia.var
	echo 'Content-language: it' >> freebsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.nl' >> freebsd-russia.var
	echo 'Content-language: nl' >> freebsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.po' >> freebsd-russia.var
	echo 'Content-language: pl' >> freebsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.sl' >> freebsd-russia.var
	echo 'Content-language: sl' >> freebsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.ru' >> freebsd-russia.var
	echo 'Content-language: ru' >> freebsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.zh-CN' >> freebsd-russia.var
	echo 'Content-language: zh-CN' >> freebsd-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> freebsd-russia.var
	echo >> freebsd-russia.var
../..//down2/i386/go32v2-russia.html.bg: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//go32v2-russia.html.bg -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-russia.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-russia.html.en -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-russia.html.fi: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//go32v2-russia.html.fi -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-russia.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//go32v2-russia.html.fr -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-russia.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//go32v2-russia.html.id -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-russia.html.it: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//go32v2-russia.html.it -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-russia.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//go32v2-russia.html.nl -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-russia.html.po: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//go32v2-russia.html.po -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-russia.html.sl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//go32v2-russia.html.sl -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-russia.html.ru: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//go32v2-russia.html.ru -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-russia.html.zh-CN: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//go32v2-russia.html.zh-CN -oe utf-16 go32v2.adp
../..//down2/i386/go32v2-russia.html: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-russia.html -oe ISO-8859-1 go32v2.adp

../..//down2/i386/go32v2-russia.var: gen_makefile.conf
	echo > go32v2-russia.var
	echo 'URI: go32v2-russia.html.bg' >> go32v2-russia.var
	echo 'Content-language: bg' >> go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.en' >> go32v2-russia.var
	echo 'Content-language: en' >> go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.fi' >> go32v2-russia.var
	echo 'Content-language: fi' >> go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.fr' >> go32v2-russia.var
	echo 'Content-language: fr' >> go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.id' >> go32v2-russia.var
	echo 'Content-language: id' >> go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.it' >> go32v2-russia.var
	echo 'Content-language: it' >> go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.nl' >> go32v2-russia.var
	echo 'Content-language: nl' >> go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.po' >> go32v2-russia.var
	echo 'Content-language: pl' >> go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.sl' >> go32v2-russia.var
	echo 'Content-language: sl' >> go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.ru' >> go32v2-russia.var
	echo 'Content-language: ru' >> go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.zh-CN' >> go32v2-russia.var
	echo 'Content-language: zh-CN' >> go32v2-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> go32v2-russia.var
	echo >> go32v2-russia.var
../..//down2/i386/linux-russia.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//linux-russia.html.bg -oe iso-8859-5 linux.adp
../..//down2/i386/linux-russia.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-russia.html.en -oe iso-8859-1 linux.adp
../..//down2/i386/linux-russia.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//linux-russia.html.fi -oe iso-8859-1 linux.adp
../..//down2/i386/linux-russia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//linux-russia.html.fr -oe iso-8859-1 linux.adp
../..//down2/i386/linux-russia.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//linux-russia.html.id -oe iso-8859-1 linux.adp
../..//down2/i386/linux-russia.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//linux-russia.html.it -oe iso-8859-1 linux.adp
../..//down2/i386/linux-russia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//linux-russia.html.nl -oe iso-8859-1 linux.adp
../..//down2/i386/linux-russia.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//linux-russia.html.po -oe iso-8859-2 linux.adp
../..//down2/i386/linux-russia.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//linux-russia.html.sl -oe iso-8859-2 linux.adp
../..//down2/i386/linux-russia.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//linux-russia.html.ru -oe iso-8859-5 linux.adp
../..//down2/i386/linux-russia.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//linux-russia.html.zh-CN -oe utf-16 linux.adp
../..//down2/i386/linux-russia.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-russia.html -oe ISO-8859-1 linux.adp

../..//down2/i386/linux-russia.var: gen_makefile.conf
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
../..//down2/i386/macosx-russia.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//macosx-russia.html.bg -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-russia.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-russia.html.en -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-russia.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//macosx-russia.html.fi -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-russia.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//macosx-russia.html.fr -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-russia.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//macosx-russia.html.id -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-russia.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//macosx-russia.html.it -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-russia.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//macosx-russia.html.nl -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-russia.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//macosx-russia.html.po -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-russia.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//macosx-russia.html.sl -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-russia.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//macosx-russia.html.ru -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-russia.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//macosx-russia.html.zh-CN -oe utf-16 macosx.adp
../..//down2/i386/macosx-russia.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-russia.html -oe ISO-8859-1 macosx.adp

../..//down2/i386/macosx-russia.var: gen_makefile.conf
	echo > macosx-russia.var
	echo 'URI: macosx-russia.html.bg' >> macosx-russia.var
	echo 'Content-language: bg' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.en' >> macosx-russia.var
	echo 'Content-language: en' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.fi' >> macosx-russia.var
	echo 'Content-language: fi' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.fr' >> macosx-russia.var
	echo 'Content-language: fr' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.id' >> macosx-russia.var
	echo 'Content-language: id' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.it' >> macosx-russia.var
	echo 'Content-language: it' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.nl' >> macosx-russia.var
	echo 'Content-language: nl' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.po' >> macosx-russia.var
	echo 'Content-language: pl' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.sl' >> macosx-russia.var
	echo 'Content-language: sl' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.ru' >> macosx-russia.var
	echo 'Content-language: ru' >> macosx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.zh-CN' >> macosx-russia.var
	echo 'Content-language: zh-CN' >> macosx-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-russia.var
	echo >> macosx-russia.var
../..//down2/i386/win32-russia.html.bg: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//win32-russia.html.bg -oe iso-8859-5 win32.adp
../..//down2/i386/win32-russia.html.en: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-russia.html.en -oe iso-8859-1 win32.adp
../..//down2/i386/win32-russia.html.fi: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//win32-russia.html.fi -oe iso-8859-1 win32.adp
../..//down2/i386/win32-russia.html.fr: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//win32-russia.html.fr -oe iso-8859-1 win32.adp
../..//down2/i386/win32-russia.html.id: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//win32-russia.html.id -oe iso-8859-1 win32.adp
../..//down2/i386/win32-russia.html.it: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//win32-russia.html.it -oe iso-8859-1 win32.adp
../..//down2/i386/win32-russia.html.nl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//win32-russia.html.nl -oe iso-8859-1 win32.adp
../..//down2/i386/win32-russia.html.po: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//win32-russia.html.po -oe iso-8859-2 win32.adp
../..//down2/i386/win32-russia.html.sl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//win32-russia.html.sl -oe iso-8859-2 win32.adp
../..//down2/i386/win32-russia.html.ru: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//win32-russia.html.ru -oe iso-8859-5 win32.adp
../..//down2/i386/win32-russia.html.zh-CN: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//win32-russia.html.zh-CN -oe utf-16 win32.adp
../..//down2/i386/win32-russia.html: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-russia.html -oe ISO-8859-1 win32.adp

../..//down2/i386/win32-russia.var: gen_makefile.conf
	echo > win32-russia.var
	echo 'URI: win32-russia.html.bg' >> win32-russia.var
	echo 'Content-language: bg' >> win32-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.en' >> win32-russia.var
	echo 'Content-language: en' >> win32-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.fi' >> win32-russia.var
	echo 'Content-language: fi' >> win32-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.fr' >> win32-russia.var
	echo 'Content-language: fr' >> win32-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.id' >> win32-russia.var
	echo 'Content-language: id' >> win32-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.it' >> win32-russia.var
	echo 'Content-language: it' >> win32-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.nl' >> win32-russia.var
	echo 'Content-language: nl' >> win32-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.po' >> win32-russia.var
	echo 'Content-language: pl' >> win32-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.sl' >> win32-russia.var
	echo 'Content-language: sl' >> win32-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.ru' >> win32-russia.var
	echo 'Content-language: ru' >> win32-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.zh-CN' >> win32-russia.var
	echo 'Content-language: zh-CN' >> win32-russia.var
	echo 'Content-type: text/html; charset=utf-16' >> win32-russia.var
	echo >> win32-russia.var
../..//down2/i386/freebsd-ftp.freepascal.org.html.bg: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//freebsd-ftp.freepascal.org.html.bg -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-ftp.freepascal.org.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-ftp.freepascal.org.html.en -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-ftp.freepascal.org.html.fi: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//freebsd-ftp.freepascal.org.html.fi -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-ftp.freepascal.org.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//freebsd-ftp.freepascal.org.html.fr -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-ftp.freepascal.org.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//freebsd-ftp.freepascal.org.html.id -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-ftp.freepascal.org.html.it: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//freebsd-ftp.freepascal.org.html.it -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-ftp.freepascal.org.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//freebsd-ftp.freepascal.org.html.nl -oe iso-8859-1 freebsd.adp
../..//down2/i386/freebsd-ftp.freepascal.org.html.po: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//freebsd-ftp.freepascal.org.html.po -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-ftp.freepascal.org.html.sl: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//freebsd-ftp.freepascal.org.html.sl -oe iso-8859-2 freebsd.adp
../..//down2/i386/freebsd-ftp.freepascal.org.html.ru: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//freebsd-ftp.freepascal.org.html.ru -oe iso-8859-5 freebsd.adp
../..//down2/i386/freebsd-ftp.freepascal.org.html.zh-CN: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//freebsd-ftp.freepascal.org.html.zh-CN -oe utf-16 freebsd.adp
../..//down2/i386/freebsd-ftp.freepascal.org.html: freebsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//freebsd-ftp.freepascal.org.html -oe ISO-8859-1 freebsd.adp

../..//down2/i386/freebsd-ftp.freepascal.org.var: gen_makefile.conf
	echo > freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.bg' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: bg' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.en' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: en' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.fi' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: fi' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.fr' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: fr' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.id' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: id' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.it' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: it' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.nl' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: nl' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.po' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: pl' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.sl' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: sl' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.ru' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: ru' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.zh-CN' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: zh-CN' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=utf-16' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
../..//down2/i386/go32v2-ftp.freepascal.org.html.bg: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//go32v2-ftp.freepascal.org.html.bg -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-ftp.freepascal.org.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-ftp.freepascal.org.html.en -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-ftp.freepascal.org.html.fi: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//go32v2-ftp.freepascal.org.html.fi -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-ftp.freepascal.org.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//go32v2-ftp.freepascal.org.html.fr -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-ftp.freepascal.org.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//go32v2-ftp.freepascal.org.html.id -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-ftp.freepascal.org.html.it: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//go32v2-ftp.freepascal.org.html.it -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-ftp.freepascal.org.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//go32v2-ftp.freepascal.org.html.nl -oe iso-8859-1 go32v2.adp
../..//down2/i386/go32v2-ftp.freepascal.org.html.po: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//go32v2-ftp.freepascal.org.html.po -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-ftp.freepascal.org.html.sl: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//go32v2-ftp.freepascal.org.html.sl -oe iso-8859-2 go32v2.adp
../..//down2/i386/go32v2-ftp.freepascal.org.html.ru: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//go32v2-ftp.freepascal.org.html.ru -oe iso-8859-5 go32v2.adp
../..//down2/i386/go32v2-ftp.freepascal.org.html.zh-CN: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//go32v2-ftp.freepascal.org.html.zh-CN -oe utf-16 go32v2.adp
../..//down2/i386/go32v2-ftp.freepascal.org.html: go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//go32v2-ftp.freepascal.org.html -oe ISO-8859-1 go32v2.adp

../..//down2/i386/go32v2-ftp.freepascal.org.var: gen_makefile.conf
	echo > go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.bg' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: bg' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.en' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: en' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.fi' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: fi' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.fr' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: fr' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.id' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: id' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.it' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: it' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.nl' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: nl' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.po' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: pl' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.sl' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: sl' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.ru' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: ru' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.zh-CN' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: zh-CN' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=utf-16' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
../..//down2/i386/linux-ftp.freepascal.org.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//linux-ftp.freepascal.org.html.bg -oe iso-8859-5 linux.adp
../..//down2/i386/linux-ftp.freepascal.org.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-ftp.freepascal.org.html.en -oe iso-8859-1 linux.adp
../..//down2/i386/linux-ftp.freepascal.org.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//linux-ftp.freepascal.org.html.fi -oe iso-8859-1 linux.adp
../..//down2/i386/linux-ftp.freepascal.org.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//linux-ftp.freepascal.org.html.fr -oe iso-8859-1 linux.adp
../..//down2/i386/linux-ftp.freepascal.org.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//linux-ftp.freepascal.org.html.id -oe iso-8859-1 linux.adp
../..//down2/i386/linux-ftp.freepascal.org.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//linux-ftp.freepascal.org.html.it -oe iso-8859-1 linux.adp
../..//down2/i386/linux-ftp.freepascal.org.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//linux-ftp.freepascal.org.html.nl -oe iso-8859-1 linux.adp
../..//down2/i386/linux-ftp.freepascal.org.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//linux-ftp.freepascal.org.html.po -oe iso-8859-2 linux.adp
../..//down2/i386/linux-ftp.freepascal.org.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//linux-ftp.freepascal.org.html.sl -oe iso-8859-2 linux.adp
../..//down2/i386/linux-ftp.freepascal.org.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//linux-ftp.freepascal.org.html.ru -oe iso-8859-5 linux.adp
../..//down2/i386/linux-ftp.freepascal.org.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//linux-ftp.freepascal.org.html.zh-CN -oe utf-16 linux.adp
../..//down2/i386/linux-ftp.freepascal.org.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//linux-ftp.freepascal.org.html -oe ISO-8859-1 linux.adp

../..//down2/i386/linux-ftp.freepascal.org.var: gen_makefile.conf
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
../..//down2/i386/macosx-ftp.freepascal.org.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//macosx-ftp.freepascal.org.html.bg -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-ftp.freepascal.org.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-ftp.freepascal.org.html.en -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-ftp.freepascal.org.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//macosx-ftp.freepascal.org.html.fi -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-ftp.freepascal.org.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//macosx-ftp.freepascal.org.html.fr -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-ftp.freepascal.org.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//macosx-ftp.freepascal.org.html.id -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-ftp.freepascal.org.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//macosx-ftp.freepascal.org.html.it -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-ftp.freepascal.org.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//macosx-ftp.freepascal.org.html.nl -oe iso-8859-1 macosx.adp
../..//down2/i386/macosx-ftp.freepascal.org.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//macosx-ftp.freepascal.org.html.po -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-ftp.freepascal.org.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//macosx-ftp.freepascal.org.html.sl -oe iso-8859-2 macosx.adp
../..//down2/i386/macosx-ftp.freepascal.org.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//macosx-ftp.freepascal.org.html.ru -oe iso-8859-5 macosx.adp
../..//down2/i386/macosx-ftp.freepascal.org.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//macosx-ftp.freepascal.org.html.zh-CN -oe utf-16 macosx.adp
../..//down2/i386/macosx-ftp.freepascal.org.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//macosx-ftp.freepascal.org.html -oe ISO-8859-1 macosx.adp

../..//down2/i386/macosx-ftp.freepascal.org.var: gen_makefile.conf
	echo > macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.bg' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: bg' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.en' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: en' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.fi' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: fi' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.fr' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: fr' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.id' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: id' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.it' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: it' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.nl' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: nl' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.po' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: pl' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.sl' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: sl' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.ru' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: ru' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.zh-CN' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: zh-CN' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=utf-16' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
../..//down2/i386/win32-ftp.freepascal.org.html.bg: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/i386//win32-ftp.freepascal.org.html.bg -oe iso-8859-5 win32.adp
../..//down2/i386/win32-ftp.freepascal.org.html.en: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-ftp.freepascal.org.html.en -oe iso-8859-1 win32.adp
../..//down2/i386/win32-ftp.freepascal.org.html.fi: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/i386//win32-ftp.freepascal.org.html.fi -oe iso-8859-1 win32.adp
../..//down2/i386/win32-ftp.freepascal.org.html.fr: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/i386//win32-ftp.freepascal.org.html.fr -oe iso-8859-1 win32.adp
../..//down2/i386/win32-ftp.freepascal.org.html.id: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/i386//win32-ftp.freepascal.org.html.id -oe iso-8859-1 win32.adp
../..//down2/i386/win32-ftp.freepascal.org.html.it: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/i386//win32-ftp.freepascal.org.html.it -oe iso-8859-1 win32.adp
../..//down2/i386/win32-ftp.freepascal.org.html.nl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/i386//win32-ftp.freepascal.org.html.nl -oe iso-8859-1 win32.adp
../..//down2/i386/win32-ftp.freepascal.org.html.po: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/i386//win32-ftp.freepascal.org.html.po -oe iso-8859-2 win32.adp
../..//down2/i386/win32-ftp.freepascal.org.html.sl: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/i386//win32-ftp.freepascal.org.html.sl -oe iso-8859-2 win32.adp
../..//down2/i386/win32-ftp.freepascal.org.html.ru: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/i386//win32-ftp.freepascal.org.html.ru -oe iso-8859-5 win32.adp
../..//down2/i386/win32-ftp.freepascal.org.html.zh-CN: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/i386//win32-ftp.freepascal.org.html.zh-CN -oe utf-16 win32.adp
../..//down2/i386/win32-ftp.freepascal.org.html: win32.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/i386/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/i386//win32-ftp.freepascal.org.html -oe ISO-8859-1 win32.adp

../..//down2/i386/win32-ftp.freepascal.org.var: gen_makefile.conf
	echo > win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.bg' >> win32-ftp.freepascal.org.var
	echo 'Content-language: bg' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.en' >> win32-ftp.freepascal.org.var
	echo 'Content-language: en' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.fi' >> win32-ftp.freepascal.org.var
	echo 'Content-language: fi' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.fr' >> win32-ftp.freepascal.org.var
	echo 'Content-language: fr' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.id' >> win32-ftp.freepascal.org.var
	echo 'Content-language: id' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.it' >> win32-ftp.freepascal.org.var
	echo 'Content-language: it' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.nl' >> win32-ftp.freepascal.org.var
	echo 'Content-language: nl' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.po' >> win32-ftp.freepascal.org.var
	echo 'Content-language: pl' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.sl' >> win32-ftp.freepascal.org.var
	echo 'Content-language: sl' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.ru' >> win32-ftp.freepascal.org.var
	echo 'Content-language: ru' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.zh-CN' >> win32-ftp.freepascal.org.var
	echo 'Content-language: zh-CN' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=utf-16' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var

../..//down2/i386/freebsd.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o freebsd.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down2/i386/freebsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o freebsd.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/freebsd.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o freebsd.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/freebsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o freebsd.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/freebsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o freebsd.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/freebsd.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o freebsd.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/freebsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o freebsd.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/freebsd.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o freebsd.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down2/i386/freebsd.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o freebsd.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down2/i386/freebsd.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o freebsd.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down2/i386/freebsd.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o freebsd.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down2/i386/freebsd.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=freebsd -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o freebsd.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down2/i386/freebsd.var: gen_makefile.conf
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

../..//down2/i386/go32v2.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o go32v2.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down2/i386/go32v2.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o go32v2.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/go32v2.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o go32v2.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/go32v2.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o go32v2.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/go32v2.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o go32v2.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/go32v2.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o go32v2.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/go32v2.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o go32v2.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/go32v2.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o go32v2.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down2/i386/go32v2.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o go32v2.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down2/i386/go32v2.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o go32v2.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down2/i386/go32v2.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o go32v2.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down2/i386/go32v2.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=go32v2 -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o go32v2.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down2/i386/go32v2.var: gen_makefile.conf
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

../..//down2/i386/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down2/i386/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down2/i386/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down2/i386/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down2/i386/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down2/i386/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down2/i386/linux.var: gen_makefile.conf
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

../..//down2/i386/macosx.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o macosx.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down2/i386/macosx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macosx.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/macosx.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o macosx.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/macosx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o macosx.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/macosx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o macosx.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/macosx.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o macosx.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/macosx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o macosx.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/macosx.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o macosx.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down2/i386/macosx.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o macosx.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down2/i386/macosx.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o macosx.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down2/i386/macosx.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o macosx.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down2/i386/macosx.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=macosx -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macosx.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down2/i386/macosx.var: gen_makefile.conf
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

../..//down2/i386/win32.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o win32.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down2/i386/win32.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win32.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/win32.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o win32.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/win32.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o win32.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/win32.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o win32.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/win32.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o win32.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/win32.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o win32.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down2/i386/win32.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o win32.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down2/i386/win32.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o win32.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down2/i386/win32.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o win32.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down2/i386/win32.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o win32.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down2/i386/win32.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=win32 -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win32.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down2/i386/win32.var: gen_makefile.conf
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

all_pages: mirrors.dat ../..//down2/i386/freebsd-australia.html.bg ../..//down2/i386/freebsd-australia.html.en ../..//down2/i386/freebsd-australia.html.fi ../..//down2/i386/freebsd-australia.html.fr ../..//down2/i386/freebsd-australia.html.id ../..//down2/i386/freebsd-australia.html.it ../..//down2/i386/freebsd-australia.html.nl ../..//down2/i386/freebsd-australia.html.po ../..//down2/i386/freebsd-australia.html.sl ../..//down2/i386/freebsd-australia.html.ru ../..//down2/i386/freebsd-australia.html.zh-CN ../..//down2/i386/freebsd-australia.var ../..//down2/i386/go32v2-australia.html.bg ../..//down2/i386/go32v2-australia.html.en ../..//down2/i386/go32v2-australia.html.fi ../..//down2/i386/go32v2-australia.html.fr ../..//down2/i386/go32v2-australia.html.id ../..//down2/i386/go32v2-australia.html.it ../..//down2/i386/go32v2-australia.html.nl ../..//down2/i386/go32v2-australia.html.po ../..//down2/i386/go32v2-australia.html.sl ../..//down2/i386/go32v2-australia.html.ru ../..//down2/i386/go32v2-australia.html.zh-CN ../..//down2/i386/go32v2-australia.var ../..//down2/i386/linux-australia.html.bg ../..//down2/i386/linux-australia.html.en ../..//down2/i386/linux-australia.html.fi ../..//down2/i386/linux-australia.html.fr ../..//down2/i386/linux-australia.html.id ../..//down2/i386/linux-australia.html.it ../..//down2/i386/linux-australia.html.nl ../..//down2/i386/linux-australia.html.po ../..//down2/i386/linux-australia.html.sl ../..//down2/i386/linux-australia.html.ru ../..//down2/i386/linux-australia.html.zh-CN ../..//down2/i386/linux-australia.var ../..//down2/i386/macosx-australia.html.bg ../..//down2/i386/macosx-australia.html.en ../..//down2/i386/macosx-australia.html.fi ../..//down2/i386/macosx-australia.html.fr ../..//down2/i386/macosx-australia.html.id ../..//down2/i386/macosx-australia.html.it ../..//down2/i386/macosx-australia.html.nl ../..//down2/i386/macosx-australia.html.po ../..//down2/i386/macosx-australia.html.sl ../..//down2/i386/macosx-australia.html.ru ../..//down2/i386/macosx-australia.html.zh-CN ../..//down2/i386/macosx-australia.var ../..//down2/i386/win32-australia.html.bg ../..//down2/i386/win32-australia.html.en ../..//down2/i386/win32-australia.html.fi ../..//down2/i386/win32-australia.html.fr ../..//down2/i386/win32-australia.html.id ../..//down2/i386/win32-australia.html.it ../..//down2/i386/win32-australia.html.nl ../..//down2/i386/win32-australia.html.po ../..//down2/i386/win32-australia.html.sl ../..//down2/i386/win32-australia.html.ru ../..//down2/i386/win32-australia.html.zh-CN ../..//down2/i386/win32-australia.var ../..//down2/i386/freebsd-austria.html.bg ../..//down2/i386/freebsd-austria.html.en ../..//down2/i386/freebsd-austria.html.fi ../..//down2/i386/freebsd-austria.html.fr ../..//down2/i386/freebsd-austria.html.id ../..//down2/i386/freebsd-austria.html.it ../..//down2/i386/freebsd-austria.html.nl ../..//down2/i386/freebsd-austria.html.po ../..//down2/i386/freebsd-austria.html.sl ../..//down2/i386/freebsd-austria.html.ru ../..//down2/i386/freebsd-austria.html.zh-CN ../..//down2/i386/freebsd-austria.var ../..//down2/i386/go32v2-austria.html.bg ../..//down2/i386/go32v2-austria.html.en ../..//down2/i386/go32v2-austria.html.fi ../..//down2/i386/go32v2-austria.html.fr ../..//down2/i386/go32v2-austria.html.id ../..//down2/i386/go32v2-austria.html.it ../..//down2/i386/go32v2-austria.html.nl ../..//down2/i386/go32v2-austria.html.po ../..//down2/i386/go32v2-austria.html.sl ../..//down2/i386/go32v2-austria.html.ru ../..//down2/i386/go32v2-austria.html.zh-CN ../..//down2/i386/go32v2-austria.var ../..//down2/i386/linux-austria.html.bg ../..//down2/i386/linux-austria.html.en ../..//down2/i386/linux-austria.html.fi ../..//down2/i386/linux-austria.html.fr ../..//down2/i386/linux-austria.html.id ../..//down2/i386/linux-austria.html.it ../..//down2/i386/linux-austria.html.nl ../..//down2/i386/linux-austria.html.po ../..//down2/i386/linux-austria.html.sl ../..//down2/i386/linux-austria.html.ru ../..//down2/i386/linux-austria.html.zh-CN ../..//down2/i386/linux-austria.var ../..//down2/i386/macosx-austria.html.bg ../..//down2/i386/macosx-austria.html.en ../..//down2/i386/macosx-austria.html.fi ../..//down2/i386/macosx-austria.html.fr ../..//down2/i386/macosx-austria.html.id ../..//down2/i386/macosx-austria.html.it ../..//down2/i386/macosx-austria.html.nl ../..//down2/i386/macosx-austria.html.po ../..//down2/i386/macosx-austria.html.sl ../..//down2/i386/macosx-austria.html.ru ../..//down2/i386/macosx-austria.html.zh-CN ../..//down2/i386/macosx-austria.var ../..//down2/i386/win32-austria.html.bg ../..//down2/i386/win32-austria.html.en ../..//down2/i386/win32-austria.html.fi ../..//down2/i386/win32-austria.html.fr ../..//down2/i386/win32-austria.html.id ../..//down2/i386/win32-austria.html.it ../..//down2/i386/win32-austria.html.nl ../..//down2/i386/win32-austria.html.po ../..//down2/i386/win32-austria.html.sl ../..//down2/i386/win32-austria.html.ru ../..//down2/i386/win32-austria.html.zh-CN ../..//down2/i386/win32-austria.var ../..//down2/i386/freebsd-hungary.html.bg ../..//down2/i386/freebsd-hungary.html.en ../..//down2/i386/freebsd-hungary.html.fi ../..//down2/i386/freebsd-hungary.html.fr ../..//down2/i386/freebsd-hungary.html.id ../..//down2/i386/freebsd-hungary.html.it ../..//down2/i386/freebsd-hungary.html.nl ../..//down2/i386/freebsd-hungary.html.po ../..//down2/i386/freebsd-hungary.html.sl ../..//down2/i386/freebsd-hungary.html.ru ../..//down2/i386/freebsd-hungary.html.zh-CN ../..//down2/i386/freebsd-hungary.var ../..//down2/i386/go32v2-hungary.html.bg ../..//down2/i386/go32v2-hungary.html.en ../..//down2/i386/go32v2-hungary.html.fi ../..//down2/i386/go32v2-hungary.html.fr ../..//down2/i386/go32v2-hungary.html.id ../..//down2/i386/go32v2-hungary.html.it ../..//down2/i386/go32v2-hungary.html.nl ../..//down2/i386/go32v2-hungary.html.po ../..//down2/i386/go32v2-hungary.html.sl ../..//down2/i386/go32v2-hungary.html.ru ../..//down2/i386/go32v2-hungary.html.zh-CN ../..//down2/i386/go32v2-hungary.var ../..//down2/i386/linux-hungary.html.bg ../..//down2/i386/linux-hungary.html.en ../..//down2/i386/linux-hungary.html.fi ../..//down2/i386/linux-hungary.html.fr ../..//down2/i386/linux-hungary.html.id ../..//down2/i386/linux-hungary.html.it ../..//down2/i386/linux-hungary.html.nl ../..//down2/i386/linux-hungary.html.po ../..//down2/i386/linux-hungary.html.sl ../..//down2/i386/linux-hungary.html.ru ../..//down2/i386/linux-hungary.html.zh-CN ../..//down2/i386/linux-hungary.var ../..//down2/i386/macosx-hungary.html.bg ../..//down2/i386/macosx-hungary.html.en ../..//down2/i386/macosx-hungary.html.fi ../..//down2/i386/macosx-hungary.html.fr ../..//down2/i386/macosx-hungary.html.id ../..//down2/i386/macosx-hungary.html.it ../..//down2/i386/macosx-hungary.html.nl ../..//down2/i386/macosx-hungary.html.po ../..//down2/i386/macosx-hungary.html.sl ../..//down2/i386/macosx-hungary.html.ru ../..//down2/i386/macosx-hungary.html.zh-CN ../..//down2/i386/macosx-hungary.var ../..//down2/i386/win32-hungary.html.bg ../..//down2/i386/win32-hungary.html.en ../..//down2/i386/win32-hungary.html.fi ../..//down2/i386/win32-hungary.html.fr ../..//down2/i386/win32-hungary.html.id ../..//down2/i386/win32-hungary.html.it ../..//down2/i386/win32-hungary.html.nl ../..//down2/i386/win32-hungary.html.po ../..//down2/i386/win32-hungary.html.sl ../..//down2/i386/win32-hungary.html.ru ../..//down2/i386/win32-hungary.html.zh-CN ../..//down2/i386/win32-hungary.var ../..//down2/i386/freebsd-israel.html.bg ../..//down2/i386/freebsd-israel.html.en ../..//down2/i386/freebsd-israel.html.fi ../..//down2/i386/freebsd-israel.html.fr ../..//down2/i386/freebsd-israel.html.id ../..//down2/i386/freebsd-israel.html.it ../..//down2/i386/freebsd-israel.html.nl ../..//down2/i386/freebsd-israel.html.po ../..//down2/i386/freebsd-israel.html.sl ../..//down2/i386/freebsd-israel.html.ru ../..//down2/i386/freebsd-israel.html.zh-CN ../..//down2/i386/freebsd-israel.var ../..//down2/i386/go32v2-israel.html.bg ../..//down2/i386/go32v2-israel.html.en ../..//down2/i386/go32v2-israel.html.fi ../..//down2/i386/go32v2-israel.html.fr ../..//down2/i386/go32v2-israel.html.id ../..//down2/i386/go32v2-israel.html.it ../..//down2/i386/go32v2-israel.html.nl ../..//down2/i386/go32v2-israel.html.po ../..//down2/i386/go32v2-israel.html.sl ../..//down2/i386/go32v2-israel.html.ru ../..//down2/i386/go32v2-israel.html.zh-CN ../..//down2/i386/go32v2-israel.var ../..//down2/i386/linux-israel.html.bg ../..//down2/i386/linux-israel.html.en ../..//down2/i386/linux-israel.html.fi ../..//down2/i386/linux-israel.html.fr ../..//down2/i386/linux-israel.html.id ../..//down2/i386/linux-israel.html.it ../..//down2/i386/linux-israel.html.nl ../..//down2/i386/linux-israel.html.po ../..//down2/i386/linux-israel.html.sl ../..//down2/i386/linux-israel.html.ru ../..//down2/i386/linux-israel.html.zh-CN ../..//down2/i386/linux-israel.var ../..//down2/i386/macosx-israel.html.bg ../..//down2/i386/macosx-israel.html.en ../..//down2/i386/macosx-israel.html.fi ../..//down2/i386/macosx-israel.html.fr ../..//down2/i386/macosx-israel.html.id ../..//down2/i386/macosx-israel.html.it ../..//down2/i386/macosx-israel.html.nl ../..//down2/i386/macosx-israel.html.po ../..//down2/i386/macosx-israel.html.sl ../..//down2/i386/macosx-israel.html.ru ../..//down2/i386/macosx-israel.html.zh-CN ../..//down2/i386/macosx-israel.var ../..//down2/i386/win32-israel.html.bg ../..//down2/i386/win32-israel.html.en ../..//down2/i386/win32-israel.html.fi ../..//down2/i386/win32-israel.html.fr ../..//down2/i386/win32-israel.html.id ../..//down2/i386/win32-israel.html.it ../..//down2/i386/win32-israel.html.nl ../..//down2/i386/win32-israel.html.po ../..//down2/i386/win32-israel.html.sl ../..//down2/i386/win32-israel.html.ru ../..//down2/i386/win32-israel.html.zh-CN ../..//down2/i386/win32-israel.var ../..//down2/i386/freebsd-netherlands.html.bg ../..//down2/i386/freebsd-netherlands.html.en ../..//down2/i386/freebsd-netherlands.html.fi ../..//down2/i386/freebsd-netherlands.html.fr ../..//down2/i386/freebsd-netherlands.html.id ../..//down2/i386/freebsd-netherlands.html.it ../..//down2/i386/freebsd-netherlands.html.nl ../..//down2/i386/freebsd-netherlands.html.po ../..//down2/i386/freebsd-netherlands.html.sl ../..//down2/i386/freebsd-netherlands.html.ru ../..//down2/i386/freebsd-netherlands.html.zh-CN ../..//down2/i386/freebsd-netherlands.var ../..//down2/i386/go32v2-netherlands.html.bg ../..//down2/i386/go32v2-netherlands.html.en ../..//down2/i386/go32v2-netherlands.html.fi ../..//down2/i386/go32v2-netherlands.html.fr ../..//down2/i386/go32v2-netherlands.html.id ../..//down2/i386/go32v2-netherlands.html.it ../..//down2/i386/go32v2-netherlands.html.nl ../..//down2/i386/go32v2-netherlands.html.po ../..//down2/i386/go32v2-netherlands.html.sl ../..//down2/i386/go32v2-netherlands.html.ru ../..//down2/i386/go32v2-netherlands.html.zh-CN ../..//down2/i386/go32v2-netherlands.var ../..//down2/i386/linux-netherlands.html.bg ../..//down2/i386/linux-netherlands.html.en ../..//down2/i386/linux-netherlands.html.fi ../..//down2/i386/linux-netherlands.html.fr ../..//down2/i386/linux-netherlands.html.id ../..//down2/i386/linux-netherlands.html.it ../..//down2/i386/linux-netherlands.html.nl ../..//down2/i386/linux-netherlands.html.po ../..//down2/i386/linux-netherlands.html.sl ../..//down2/i386/linux-netherlands.html.ru ../..//down2/i386/linux-netherlands.html.zh-CN ../..//down2/i386/linux-netherlands.var ../..//down2/i386/macosx-netherlands.html.bg ../..//down2/i386/macosx-netherlands.html.en ../..//down2/i386/macosx-netherlands.html.fi ../..//down2/i386/macosx-netherlands.html.fr ../..//down2/i386/macosx-netherlands.html.id ../..//down2/i386/macosx-netherlands.html.it ../..//down2/i386/macosx-netherlands.html.nl ../..//down2/i386/macosx-netherlands.html.po ../..//down2/i386/macosx-netherlands.html.sl ../..//down2/i386/macosx-netherlands.html.ru ../..//down2/i386/macosx-netherlands.html.zh-CN ../..//down2/i386/macosx-netherlands.var ../..//down2/i386/win32-netherlands.html.bg ../..//down2/i386/win32-netherlands.html.en ../..//down2/i386/win32-netherlands.html.fi ../..//down2/i386/win32-netherlands.html.fr ../..//down2/i386/win32-netherlands.html.id ../..//down2/i386/win32-netherlands.html.it ../..//down2/i386/win32-netherlands.html.nl ../..//down2/i386/win32-netherlands.html.po ../..//down2/i386/win32-netherlands.html.sl ../..//down2/i386/win32-netherlands.html.ru ../..//down2/i386/win32-netherlands.html.zh-CN ../..//down2/i386/win32-netherlands.var ../..//down2/i386/freebsd-norway.html.bg ../..//down2/i386/freebsd-norway.html.en ../..//down2/i386/freebsd-norway.html.fi ../..//down2/i386/freebsd-norway.html.fr ../..//down2/i386/freebsd-norway.html.id ../..//down2/i386/freebsd-norway.html.it ../..//down2/i386/freebsd-norway.html.nl ../..//down2/i386/freebsd-norway.html.po ../..//down2/i386/freebsd-norway.html.sl ../..//down2/i386/freebsd-norway.html.ru ../..//down2/i386/freebsd-norway.html.zh-CN ../..//down2/i386/freebsd-norway.var ../..//down2/i386/go32v2-norway.html.bg ../..//down2/i386/go32v2-norway.html.en ../..//down2/i386/go32v2-norway.html.fi ../..//down2/i386/go32v2-norway.html.fr ../..//down2/i386/go32v2-norway.html.id ../..//down2/i386/go32v2-norway.html.it ../..//down2/i386/go32v2-norway.html.nl ../..//down2/i386/go32v2-norway.html.po ../..//down2/i386/go32v2-norway.html.sl ../..//down2/i386/go32v2-norway.html.ru ../..//down2/i386/go32v2-norway.html.zh-CN ../..//down2/i386/go32v2-norway.var ../..//down2/i386/linux-norway.html.bg ../..//down2/i386/linux-norway.html.en ../..//down2/i386/linux-norway.html.fi ../..//down2/i386/linux-norway.html.fr ../..//down2/i386/linux-norway.html.id ../..//down2/i386/linux-norway.html.it ../..//down2/i386/linux-norway.html.nl ../..//down2/i386/linux-norway.html.po ../..//down2/i386/linux-norway.html.sl ../..//down2/i386/linux-norway.html.ru ../..//down2/i386/linux-norway.html.zh-CN ../..//down2/i386/linux-norway.var ../..//down2/i386/macosx-norway.html.bg ../..//down2/i386/macosx-norway.html.en ../..//down2/i386/macosx-norway.html.fi ../..//down2/i386/macosx-norway.html.fr ../..//down2/i386/macosx-norway.html.id ../..//down2/i386/macosx-norway.html.it ../..//down2/i386/macosx-norway.html.nl ../..//down2/i386/macosx-norway.html.po ../..//down2/i386/macosx-norway.html.sl ../..//down2/i386/macosx-norway.html.ru ../..//down2/i386/macosx-norway.html.zh-CN ../..//down2/i386/macosx-norway.var ../..//down2/i386/win32-norway.html.bg ../..//down2/i386/win32-norway.html.en ../..//down2/i386/win32-norway.html.fi ../..//down2/i386/win32-norway.html.fr ../..//down2/i386/win32-norway.html.id ../..//down2/i386/win32-norway.html.it ../..//down2/i386/win32-norway.html.nl ../..//down2/i386/win32-norway.html.po ../..//down2/i386/win32-norway.html.sl ../..//down2/i386/win32-norway.html.ru ../..//down2/i386/win32-norway.html.zh-CN ../..//down2/i386/win32-norway.var ../..//down2/i386/freebsd-russia.html.bg ../..//down2/i386/freebsd-russia.html.en ../..//down2/i386/freebsd-russia.html.fi ../..//down2/i386/freebsd-russia.html.fr ../..//down2/i386/freebsd-russia.html.id ../..//down2/i386/freebsd-russia.html.it ../..//down2/i386/freebsd-russia.html.nl ../..//down2/i386/freebsd-russia.html.po ../..//down2/i386/freebsd-russia.html.sl ../..//down2/i386/freebsd-russia.html.ru ../..//down2/i386/freebsd-russia.html.zh-CN ../..//down2/i386/freebsd-russia.var ../..//down2/i386/go32v2-russia.html.bg ../..//down2/i386/go32v2-russia.html.en ../..//down2/i386/go32v2-russia.html.fi ../..//down2/i386/go32v2-russia.html.fr ../..//down2/i386/go32v2-russia.html.id ../..//down2/i386/go32v2-russia.html.it ../..//down2/i386/go32v2-russia.html.nl ../..//down2/i386/go32v2-russia.html.po ../..//down2/i386/go32v2-russia.html.sl ../..//down2/i386/go32v2-russia.html.ru ../..//down2/i386/go32v2-russia.html.zh-CN ../..//down2/i386/go32v2-russia.var ../..//down2/i386/linux-russia.html.bg ../..//down2/i386/linux-russia.html.en ../..//down2/i386/linux-russia.html.fi ../..//down2/i386/linux-russia.html.fr ../..//down2/i386/linux-russia.html.id ../..//down2/i386/linux-russia.html.it ../..//down2/i386/linux-russia.html.nl ../..//down2/i386/linux-russia.html.po ../..//down2/i386/linux-russia.html.sl ../..//down2/i386/linux-russia.html.ru ../..//down2/i386/linux-russia.html.zh-CN ../..//down2/i386/linux-russia.var ../..//down2/i386/macosx-russia.html.bg ../..//down2/i386/macosx-russia.html.en ../..//down2/i386/macosx-russia.html.fi ../..//down2/i386/macosx-russia.html.fr ../..//down2/i386/macosx-russia.html.id ../..//down2/i386/macosx-russia.html.it ../..//down2/i386/macosx-russia.html.nl ../..//down2/i386/macosx-russia.html.po ../..//down2/i386/macosx-russia.html.sl ../..//down2/i386/macosx-russia.html.ru ../..//down2/i386/macosx-russia.html.zh-CN ../..//down2/i386/macosx-russia.var ../..//down2/i386/win32-russia.html.bg ../..//down2/i386/win32-russia.html.en ../..//down2/i386/win32-russia.html.fi ../..//down2/i386/win32-russia.html.fr ../..//down2/i386/win32-russia.html.id ../..//down2/i386/win32-russia.html.it ../..//down2/i386/win32-russia.html.nl ../..//down2/i386/win32-russia.html.po ../..//down2/i386/win32-russia.html.sl ../..//down2/i386/win32-russia.html.ru ../..//down2/i386/win32-russia.html.zh-CN ../..//down2/i386/win32-russia.var ../..//down2/i386/freebsd-ftp.freepascal.org.html.bg ../..//down2/i386/freebsd-ftp.freepascal.org.html.en ../..//down2/i386/freebsd-ftp.freepascal.org.html.fi ../..//down2/i386/freebsd-ftp.freepascal.org.html.fr ../..//down2/i386/freebsd-ftp.freepascal.org.html.id ../..//down2/i386/freebsd-ftp.freepascal.org.html.it ../..//down2/i386/freebsd-ftp.freepascal.org.html.nl ../..//down2/i386/freebsd-ftp.freepascal.org.html.po ../..//down2/i386/freebsd-ftp.freepascal.org.html.sl ../..//down2/i386/freebsd-ftp.freepascal.org.html.ru ../..//down2/i386/freebsd-ftp.freepascal.org.html.zh-CN ../..//down2/i386/freebsd-ftp.freepascal.org.var ../..//down2/i386/go32v2-ftp.freepascal.org.html.bg ../..//down2/i386/go32v2-ftp.freepascal.org.html.en ../..//down2/i386/go32v2-ftp.freepascal.org.html.fi ../..//down2/i386/go32v2-ftp.freepascal.org.html.fr ../..//down2/i386/go32v2-ftp.freepascal.org.html.id ../..//down2/i386/go32v2-ftp.freepascal.org.html.it ../..//down2/i386/go32v2-ftp.freepascal.org.html.nl ../..//down2/i386/go32v2-ftp.freepascal.org.html.po ../..//down2/i386/go32v2-ftp.freepascal.org.html.sl ../..//down2/i386/go32v2-ftp.freepascal.org.html.ru ../..//down2/i386/go32v2-ftp.freepascal.org.html.zh-CN ../..//down2/i386/go32v2-ftp.freepascal.org.var ../..//down2/i386/linux-ftp.freepascal.org.html.bg ../..//down2/i386/linux-ftp.freepascal.org.html.en ../..//down2/i386/linux-ftp.freepascal.org.html.fi ../..//down2/i386/linux-ftp.freepascal.org.html.fr ../..//down2/i386/linux-ftp.freepascal.org.html.id ../..//down2/i386/linux-ftp.freepascal.org.html.it ../..//down2/i386/linux-ftp.freepascal.org.html.nl ../..//down2/i386/linux-ftp.freepascal.org.html.po ../..//down2/i386/linux-ftp.freepascal.org.html.sl ../..//down2/i386/linux-ftp.freepascal.org.html.ru ../..//down2/i386/linux-ftp.freepascal.org.html.zh-CN ../..//down2/i386/linux-ftp.freepascal.org.var ../..//down2/i386/macosx-ftp.freepascal.org.html.bg ../..//down2/i386/macosx-ftp.freepascal.org.html.en ../..//down2/i386/macosx-ftp.freepascal.org.html.fi ../..//down2/i386/macosx-ftp.freepascal.org.html.fr ../..//down2/i386/macosx-ftp.freepascal.org.html.id ../..//down2/i386/macosx-ftp.freepascal.org.html.it ../..//down2/i386/macosx-ftp.freepascal.org.html.nl ../..//down2/i386/macosx-ftp.freepascal.org.html.po ../..//down2/i386/macosx-ftp.freepascal.org.html.sl ../..//down2/i386/macosx-ftp.freepascal.org.html.ru ../..//down2/i386/macosx-ftp.freepascal.org.html.zh-CN ../..//down2/i386/macosx-ftp.freepascal.org.var ../..//down2/i386/win32-ftp.freepascal.org.html.bg ../..//down2/i386/win32-ftp.freepascal.org.html.en ../..//down2/i386/win32-ftp.freepascal.org.html.fi ../..//down2/i386/win32-ftp.freepascal.org.html.fr ../..//down2/i386/win32-ftp.freepascal.org.html.id ../..//down2/i386/win32-ftp.freepascal.org.html.it ../..//down2/i386/win32-ftp.freepascal.org.html.nl ../..//down2/i386/win32-ftp.freepascal.org.html.po ../..//down2/i386/win32-ftp.freepascal.org.html.sl ../..//down2/i386/win32-ftp.freepascal.org.html.ru ../..//down2/i386/win32-ftp.freepascal.org.html.zh-CN ../..//down2/i386/win32-ftp.freepascal.org.var ../..//down2/i386/freebsd.html.bg ../..//down2/i386/freebsd.html.en ../..//down2/i386/freebsd.html.fi ../..//down2/i386/freebsd.html.fr ../..//down2/i386/freebsd.html.id ../..//down2/i386/freebsd.html.it ../..//down2/i386/freebsd.html.nl ../..//down2/i386/freebsd.html.po ../..//down2/i386/freebsd.html.sl ../..//down2/i386/freebsd.html.ru ../..//down2/i386/freebsd.html.zh-CN ../..//down2/i386/freebsd.var ../..//down2/i386/go32v2.html.bg ../..//down2/i386/go32v2.html.en ../..//down2/i386/go32v2.html.fi ../..//down2/i386/go32v2.html.fr ../..//down2/i386/go32v2.html.id ../..//down2/i386/go32v2.html.it ../..//down2/i386/go32v2.html.nl ../..//down2/i386/go32v2.html.po ../..//down2/i386/go32v2.html.sl ../..//down2/i386/go32v2.html.ru ../..//down2/i386/go32v2.html.zh-CN ../..//down2/i386/go32v2.var ../..//down2/i386/linux.html.bg ../..//down2/i386/linux.html.en ../..//down2/i386/linux.html.fi ../..//down2/i386/linux.html.fr ../..//down2/i386/linux.html.id ../..//down2/i386/linux.html.it ../..//down2/i386/linux.html.nl ../..//down2/i386/linux.html.po ../..//down2/i386/linux.html.sl ../..//down2/i386/linux.html.ru ../..//down2/i386/linux.html.zh-CN ../..//down2/i386/linux.var ../..//down2/i386/macosx.html.bg ../..//down2/i386/macosx.html.en ../..//down2/i386/macosx.html.fi ../..//down2/i386/macosx.html.fr ../..//down2/i386/macosx.html.id ../..//down2/i386/macosx.html.it ../..//down2/i386/macosx.html.nl ../..//down2/i386/macosx.html.po ../..//down2/i386/macosx.html.sl ../..//down2/i386/macosx.html.ru ../..//down2/i386/macosx.html.zh-CN ../..//down2/i386/macosx.var ../..//down2/i386/win32.html.bg ../..//down2/i386/win32.html.en ../..//down2/i386/win32.html.fi ../..//down2/i386/win32.html.fr ../..//down2/i386/win32.html.id ../..//down2/i386/win32.html.it ../..//down2/i386/win32.html.nl ../..//down2/i386/win32.html.po ../..//down2/i386/win32.html.sl ../..//down2/i386/win32.html.ru ../..//down2/i386/win32.html.zh-CN ../..//down2/i386/win32.var
all_en_pages: mirrors.dat ../..//down2/i386/freebsd-australia.html ../..//down2/i386/go32v2-australia.html ../..//down2/i386/linux-australia.html ../..//down2/i386/macosx-australia.html ../..//down2/i386/win32-australia.html ../..//down2/i386/freebsd-austria.html ../..//down2/i386/go32v2-austria.html ../..//down2/i386/linux-austria.html ../..//down2/i386/macosx-austria.html ../..//down2/i386/win32-austria.html ../..//down2/i386/freebsd-hungary.html ../..//down2/i386/go32v2-hungary.html ../..//down2/i386/linux-hungary.html ../..//down2/i386/macosx-hungary.html ../..//down2/i386/win32-hungary.html ../..//down2/i386/freebsd-israel.html ../..//down2/i386/go32v2-israel.html ../..//down2/i386/linux-israel.html ../..//down2/i386/macosx-israel.html ../..//down2/i386/win32-israel.html ../..//down2/i386/freebsd-netherlands.html ../..//down2/i386/go32v2-netherlands.html ../..//down2/i386/linux-netherlands.html ../..//down2/i386/macosx-netherlands.html ../..//down2/i386/win32-netherlands.html ../..//down2/i386/freebsd-norway.html ../..//down2/i386/go32v2-norway.html ../..//down2/i386/linux-norway.html ../..//down2/i386/macosx-norway.html ../..//down2/i386/win32-norway.html ../..//down2/i386/freebsd-russia.html ../..//down2/i386/go32v2-russia.html ../..//down2/i386/linux-russia.html ../..//down2/i386/macosx-russia.html ../..//down2/i386/win32-russia.html ../..//down2/i386/freebsd-ftp.freepascal.org.html ../..//down2/i386/go32v2-ftp.freepascal.org.html ../..//down2/i386/linux-ftp.freepascal.org.html ../..//down2/i386/macosx-ftp.freepascal.org.html ../..//down2/i386/win32-ftp.freepascal.org.html ../..//down2/i386/freebsd.html ../..//down2/i386/go32v2.html ../..//down2/i386/linux.html ../..//down2/i386/macosx.html ../..//down2/i386/win32.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down2/i386/

