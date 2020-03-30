
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
../..//down/sparc/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.bg -e iso-8859-5 linux.adp
../..//down/sparc/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.en -e iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.fi -e iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.fr -e iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.id -e iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.it -e iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.nl -e iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.po -e iso-8859-2 linux.adp
../..//down/sparc/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.sl -e iso-8859-2 linux.adp
../..//down/sparc/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.ru -e iso-8859-5 linux.adp
../..//down/sparc/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.zh-CN -e UTF-8 linux.adp
../..//down/sparc/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html -e ISO-8859-1 linux.adp

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
	echo 'Content-type: text/html; charset=UTF-8' >> linux-hungary.var
	echo >> linux-hungary.var
../..//down/sparc/solaris-hungary.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.bg -e iso-8859-5 solaris.adp
../..//down/sparc/solaris-hungary.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.en -e iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.fi -e iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.fr -e iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.id -e iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.it -e iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.nl -e iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.po -e iso-8859-2 solaris.adp
../..//down/sparc/solaris-hungary.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.sl -e iso-8859-2 solaris.adp
../..//down/sparc/solaris-hungary.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.ru -e iso-8859-5 solaris.adp
../..//down/sparc/solaris-hungary.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.zh-CN -e UTF-8 solaris.adp
../..//down/sparc/solaris-hungary.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html -e ISO-8859-1 solaris.adp

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
	echo 'Content-type: text/html; charset=UTF-8' >> solaris-hungary.var
	echo >> solaris-hungary.var
../..//down/sparc/linux-canada.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//linux-canada.html.bg -e iso-8859-5 linux.adp
../..//down/sparc/linux-canada.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-canada.html.en -e iso-8859-1 linux.adp
../..//down/sparc/linux-canada.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//linux-canada.html.fi -e iso-8859-1 linux.adp
../..//down/sparc/linux-canada.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//linux-canada.html.fr -e iso-8859-1 linux.adp
../..//down/sparc/linux-canada.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//linux-canada.html.id -e iso-8859-1 linux.adp
../..//down/sparc/linux-canada.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//linux-canada.html.it -e iso-8859-1 linux.adp
../..//down/sparc/linux-canada.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//linux-canada.html.nl -e iso-8859-1 linux.adp
../..//down/sparc/linux-canada.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//linux-canada.html.po -e iso-8859-2 linux.adp
../..//down/sparc/linux-canada.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//linux-canada.html.sl -e iso-8859-2 linux.adp
../..//down/sparc/linux-canada.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//linux-canada.html.ru -e iso-8859-5 linux.adp
../..//down/sparc/linux-canada.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//linux-canada.html.zh-CN -e UTF-8 linux.adp
../..//down/sparc/linux-canada.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-canada.html -e ISO-8859-1 linux.adp

../..//down/sparc/linux-canada.var: gen_makefile.conf
	echo > linux-canada.var
	echo 'URI: linux-canada.html.bg' >> linux-canada.var
	echo 'Content-language: bg' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.en' >> linux-canada.var
	echo 'Content-language: en' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.fi' >> linux-canada.var
	echo 'Content-language: fi' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.fr' >> linux-canada.var
	echo 'Content-language: fr' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.id' >> linux-canada.var
	echo 'Content-language: id' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.it' >> linux-canada.var
	echo 'Content-language: it' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.nl' >> linux-canada.var
	echo 'Content-language: nl' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.po' >> linux-canada.var
	echo 'Content-language: pl' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.sl' >> linux-canada.var
	echo 'Content-language: sl' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.ru' >> linux-canada.var
	echo 'Content-language: ru' >> linux-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> linux-canada.var
	echo >> linux-canada.var
	echo 'URI: linux-canada.html.zh-CN' >> linux-canada.var
	echo 'Content-language: zh-CN' >> linux-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> linux-canada.var
	echo >> linux-canada.var
../..//down/sparc/solaris-canada.html.bg: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//solaris-canada.html.bg -e iso-8859-5 solaris.adp
../..//down/sparc/solaris-canada.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-canada.html.en -e iso-8859-1 solaris.adp
../..//down/sparc/solaris-canada.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//solaris-canada.html.fi -e iso-8859-1 solaris.adp
../..//down/sparc/solaris-canada.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//solaris-canada.html.fr -e iso-8859-1 solaris.adp
../..//down/sparc/solaris-canada.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//solaris-canada.html.id -e iso-8859-1 solaris.adp
../..//down/sparc/solaris-canada.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//solaris-canada.html.it -e iso-8859-1 solaris.adp
../..//down/sparc/solaris-canada.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//solaris-canada.html.nl -e iso-8859-1 solaris.adp
../..//down/sparc/solaris-canada.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//solaris-canada.html.po -e iso-8859-2 solaris.adp
../..//down/sparc/solaris-canada.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//solaris-canada.html.sl -e iso-8859-2 solaris.adp
../..//down/sparc/solaris-canada.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//solaris-canada.html.ru -e iso-8859-5 solaris.adp
../..//down/sparc/solaris-canada.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//solaris-canada.html.zh-CN -e UTF-8 solaris.adp
../..//down/sparc/solaris-canada.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-canada.html -e ISO-8859-1 solaris.adp

../..//down/sparc/solaris-canada.var: gen_makefile.conf
	echo > solaris-canada.var
	echo 'URI: solaris-canada.html.bg' >> solaris-canada.var
	echo 'Content-language: bg' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.en' >> solaris-canada.var
	echo 'Content-language: en' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.fi' >> solaris-canada.var
	echo 'Content-language: fi' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.fr' >> solaris-canada.var
	echo 'Content-language: fr' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.id' >> solaris-canada.var
	echo 'Content-language: id' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.it' >> solaris-canada.var
	echo 'Content-language: it' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.nl' >> solaris-canada.var
	echo 'Content-language: nl' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.po' >> solaris-canada.var
	echo 'Content-language: pl' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.sl' >> solaris-canada.var
	echo 'Content-language: sl' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.ru' >> solaris-canada.var
	echo 'Content-language: ru' >> solaris-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> solaris-canada.var
	echo >> solaris-canada.var
	echo 'URI: solaris-canada.html.zh-CN' >> solaris-canada.var
	echo 'Content-language: zh-CN' >> solaris-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> solaris-canada.var
	echo >> solaris-canada.var

../..//down/sparc/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -e iso-8859-5 ../../templatemirror.adp
../..//down/sparc/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -e iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -e iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -e iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -e iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -e iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -e iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -e iso-8859-2 ../../templatemirror.adp
../..//down/sparc/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -e iso-8859-2 ../../templatemirror.adp
../..//down/sparc/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -e iso-8859-5 ../../templatemirror.adp
../..//down/sparc/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -e UTF-8 ../../templatemirror.adp
../..//down/sparc/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -e ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=UTF-8' >> linux.var
	echo >> linux.var

../..//down/sparc/solaris.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o solaris.html.bg -e iso-8859-5 ../../templatemirror.adp
../..//down/sparc/solaris.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o solaris.html.en -e iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o solaris.html.fi -e iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o solaris.html.fr -e iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o solaris.html.id -e iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o solaris.html.it -e iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o solaris.html.nl -e iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o solaris.html.po -e iso-8859-2 ../../templatemirror.adp
../..//down/sparc/solaris.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o solaris.html.sl -e iso-8859-2 ../../templatemirror.adp
../..//down/sparc/solaris.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o solaris.html.ru -e iso-8859-5 ../../templatemirror.adp
../..//down/sparc/solaris.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o solaris.html.zh-CN -e UTF-8 ../../templatemirror.adp
../..//down/sparc/solaris.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o solaris.html -e ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=UTF-8' >> solaris.var
	echo >> solaris.var

mirrors.dat:
	$(shell echo 'name\tnamel\turl' > mirrors.dat)
	$(shell echo 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo 'Canada\tcanada\tftp://mirror.freemirror.org/pub/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../..//down/sparc/linux-hungary.html.bg ../..//down/sparc/linux-hungary.html.en ../..//down/sparc/linux-hungary.html.fi ../..//down/sparc/linux-hungary.html.fr ../..//down/sparc/linux-hungary.html.id ../..//down/sparc/linux-hungary.html.it ../..//down/sparc/linux-hungary.html.nl ../..//down/sparc/linux-hungary.html.po ../..//down/sparc/linux-hungary.html.sl ../..//down/sparc/linux-hungary.html.ru ../..//down/sparc/linux-hungary.html.zh-CN ../..//down/sparc/linux-hungary.var ../..//down/sparc/solaris-hungary.html.bg ../..//down/sparc/solaris-hungary.html.en ../..//down/sparc/solaris-hungary.html.fi ../..//down/sparc/solaris-hungary.html.fr ../..//down/sparc/solaris-hungary.html.id ../..//down/sparc/solaris-hungary.html.it ../..//down/sparc/solaris-hungary.html.nl ../..//down/sparc/solaris-hungary.html.po ../..//down/sparc/solaris-hungary.html.sl ../..//down/sparc/solaris-hungary.html.ru ../..//down/sparc/solaris-hungary.html.zh-CN ../..//down/sparc/solaris-hungary.var ../..//down/sparc/linux-canada.html.bg ../..//down/sparc/linux-canada.html.en ../..//down/sparc/linux-canada.html.fi ../..//down/sparc/linux-canada.html.fr ../..//down/sparc/linux-canada.html.id ../..//down/sparc/linux-canada.html.it ../..//down/sparc/linux-canada.html.nl ../..//down/sparc/linux-canada.html.po ../..//down/sparc/linux-canada.html.sl ../..//down/sparc/linux-canada.html.ru ../..//down/sparc/linux-canada.html.zh-CN ../..//down/sparc/linux-canada.var ../..//down/sparc/solaris-canada.html.bg ../..//down/sparc/solaris-canada.html.en ../..//down/sparc/solaris-canada.html.fi ../..//down/sparc/solaris-canada.html.fr ../..//down/sparc/solaris-canada.html.id ../..//down/sparc/solaris-canada.html.it ../..//down/sparc/solaris-canada.html.nl ../..//down/sparc/solaris-canada.html.po ../..//down/sparc/solaris-canada.html.sl ../..//down/sparc/solaris-canada.html.ru ../..//down/sparc/solaris-canada.html.zh-CN ../..//down/sparc/solaris-canada.var ../..//down/sparc/linux.html.bg ../..//down/sparc/linux.html.en ../..//down/sparc/linux.html.fi ../..//down/sparc/linux.html.fr ../..//down/sparc/linux.html.id ../..//down/sparc/linux.html.it ../..//down/sparc/linux.html.nl ../..//down/sparc/linux.html.po ../..//down/sparc/linux.html.sl ../..//down/sparc/linux.html.ru ../..//down/sparc/linux.html.zh-CN ../..//down/sparc/linux.var ../..//down/sparc/solaris.html.bg ../..//down/sparc/solaris.html.en ../..//down/sparc/solaris.html.fi ../..//down/sparc/solaris.html.fr ../..//down/sparc/solaris.html.id ../..//down/sparc/solaris.html.it ../..//down/sparc/solaris.html.nl ../..//down/sparc/solaris.html.po ../..//down/sparc/solaris.html.sl ../..//down/sparc/solaris.html.ru ../..//down/sparc/solaris.html.zh-CN ../..//down/sparc/solaris.var
all_en_pages: mirrors.dat ../..//down/sparc/linux-hungary.html ../..//down/sparc/solaris-hungary.html ../..//down/sparc/linux-canada.html ../..//down/sparc/solaris-canada.html ../..//down/sparc/linux.html ../..//down/sparc/solaris.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/sparc/

