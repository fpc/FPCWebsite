
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
../..//down/powerpc64/aix-hungary.html.bg: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.bg -oe iso-8859-5 aix.adp
../..//down/powerpc64/aix-hungary.html.en: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.en -oe iso-8859-1 aix.adp
../..//down/powerpc64/aix-hungary.html.fi: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.fi -oe iso-8859-1 aix.adp
../..//down/powerpc64/aix-hungary.html.fr: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.fr -oe iso-8859-1 aix.adp
../..//down/powerpc64/aix-hungary.html.id: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.id -oe iso-8859-1 aix.adp
../..//down/powerpc64/aix-hungary.html.it: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.it -oe iso-8859-1 aix.adp
../..//down/powerpc64/aix-hungary.html.nl: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.nl -oe iso-8859-1 aix.adp
../..//down/powerpc64/aix-hungary.html.po: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.po -oe iso-8859-2 aix.adp
../..//down/powerpc64/aix-hungary.html.sl: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.sl -oe iso-8859-2 aix.adp
../..//down/powerpc64/aix-hungary.html.ru: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.ru -oe iso-8859-5 aix.adp
../..//down/powerpc64/aix-hungary.html.zh-CN: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html.zh-CN -oe UTF-8 aix.adp
../..//down/powerpc64/aix-hungary.html: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//aix-hungary.html -oe ISO-8859-1 aix.adp

../..//down/powerpc64/aix-hungary.var: gen_makefile.conf
	echo > aix-hungary.var
	echo 'URI: aix-hungary.html.bg' >> aix-hungary.var
	echo 'Content-language: bg' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.en' >> aix-hungary.var
	echo 'Content-language: en' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.fi' >> aix-hungary.var
	echo 'Content-language: fi' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.fr' >> aix-hungary.var
	echo 'Content-language: fr' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.id' >> aix-hungary.var
	echo 'Content-language: id' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.it' >> aix-hungary.var
	echo 'Content-language: it' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.nl' >> aix-hungary.var
	echo 'Content-language: nl' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.po' >> aix-hungary.var
	echo 'Content-language: pl' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.sl' >> aix-hungary.var
	echo 'Content-language: sl' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.ru' >> aix-hungary.var
	echo 'Content-language: ru' >> aix-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aix-hungary.var
	echo >> aix-hungary.var
	echo 'URI: aix-hungary.html.zh-CN' >> aix-hungary.var
	echo 'Content-language: zh-CN' >> aix-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> aix-hungary.var
	echo >> aix-hungary.var
../..//down/powerpc64/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc64/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc64/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc64/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc64/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc64/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc64/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc64/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc64/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc64/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc64/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html.zh-CN -oe UTF-8 linux.adp
../..//down/powerpc64/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//linux-hungary.html -oe ISO-8859-1 linux.adp

../..//down/powerpc64/linux-hungary.var: gen_makefile.conf
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
../..//down/powerpc64/aix-netherlands.html.bg: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc64//aix-netherlands.html.bg -oe iso-8859-5 aix.adp
../..//down/powerpc64/aix-netherlands.html.en: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//aix-netherlands.html.en -oe iso-8859-1 aix.adp
../..//down/powerpc64/aix-netherlands.html.fi: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc64//aix-netherlands.html.fi -oe iso-8859-1 aix.adp
../..//down/powerpc64/aix-netherlands.html.fr: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc64//aix-netherlands.html.fr -oe iso-8859-1 aix.adp
../..//down/powerpc64/aix-netherlands.html.id: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc64//aix-netherlands.html.id -oe iso-8859-1 aix.adp
../..//down/powerpc64/aix-netherlands.html.it: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc64//aix-netherlands.html.it -oe iso-8859-1 aix.adp
../..//down/powerpc64/aix-netherlands.html.nl: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc64//aix-netherlands.html.nl -oe iso-8859-1 aix.adp
../..//down/powerpc64/aix-netherlands.html.po: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc64//aix-netherlands.html.po -oe iso-8859-2 aix.adp
../..//down/powerpc64/aix-netherlands.html.sl: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc64//aix-netherlands.html.sl -oe iso-8859-2 aix.adp
../..//down/powerpc64/aix-netherlands.html.ru: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc64//aix-netherlands.html.ru -oe iso-8859-5 aix.adp
../..//down/powerpc64/aix-netherlands.html.zh-CN: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc64//aix-netherlands.html.zh-CN -oe UTF-8 aix.adp
../..//down/powerpc64/aix-netherlands.html: aix.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//aix-netherlands.html -oe ISO-8859-1 aix.adp

../..//down/powerpc64/aix-netherlands.var: gen_makefile.conf
	echo > aix-netherlands.var
	echo 'URI: aix-netherlands.html.bg' >> aix-netherlands.var
	echo 'Content-language: bg' >> aix-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aix-netherlands.var
	echo >> aix-netherlands.var
	echo 'URI: aix-netherlands.html.en' >> aix-netherlands.var
	echo 'Content-language: en' >> aix-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-netherlands.var
	echo >> aix-netherlands.var
	echo 'URI: aix-netherlands.html.fi' >> aix-netherlands.var
	echo 'Content-language: fi' >> aix-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-netherlands.var
	echo >> aix-netherlands.var
	echo 'URI: aix-netherlands.html.fr' >> aix-netherlands.var
	echo 'Content-language: fr' >> aix-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-netherlands.var
	echo >> aix-netherlands.var
	echo 'URI: aix-netherlands.html.id' >> aix-netherlands.var
	echo 'Content-language: id' >> aix-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-netherlands.var
	echo >> aix-netherlands.var
	echo 'URI: aix-netherlands.html.it' >> aix-netherlands.var
	echo 'Content-language: it' >> aix-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-netherlands.var
	echo >> aix-netherlands.var
	echo 'URI: aix-netherlands.html.nl' >> aix-netherlands.var
	echo 'Content-language: nl' >> aix-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix-netherlands.var
	echo >> aix-netherlands.var
	echo 'URI: aix-netherlands.html.po' >> aix-netherlands.var
	echo 'Content-language: pl' >> aix-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aix-netherlands.var
	echo >> aix-netherlands.var
	echo 'URI: aix-netherlands.html.sl' >> aix-netherlands.var
	echo 'Content-language: sl' >> aix-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aix-netherlands.var
	echo >> aix-netherlands.var
	echo 'URI: aix-netherlands.html.ru' >> aix-netherlands.var
	echo 'Content-language: ru' >> aix-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aix-netherlands.var
	echo >> aix-netherlands.var
	echo 'URI: aix-netherlands.html.zh-CN' >> aix-netherlands.var
	echo 'Content-language: zh-CN' >> aix-netherlands.var
	echo 'Content-type: text/html; charset=UTF-8' >> aix-netherlands.var
	echo >> aix-netherlands.var
../..//down/powerpc64/linux-netherlands.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc64//linux-netherlands.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc64/linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//linux-netherlands.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc64/linux-netherlands.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc64//linux-netherlands.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc64/linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc64//linux-netherlands.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc64/linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc64//linux-netherlands.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc64/linux-netherlands.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc64//linux-netherlands.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc64/linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc64//linux-netherlands.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc64/linux-netherlands.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc64//linux-netherlands.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc64/linux-netherlands.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc64//linux-netherlands.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc64/linux-netherlands.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc64//linux-netherlands.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc64/linux-netherlands.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc64//linux-netherlands.html.zh-CN -oe UTF-8 linux.adp
../..//down/powerpc64/linux-netherlands.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc64//linux-netherlands.html -oe ISO-8859-1 linux.adp

../..//down/powerpc64/linux-netherlands.var: gen_makefile.conf
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
	echo 'Content-type: text/html; charset=UTF-8' >> linux-netherlands.var
	echo >> linux-netherlands.var

../..//down/powerpc64/aix.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o aix.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc64/aix.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o aix.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/aix.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o aix.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/aix.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o aix.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/aix.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o aix.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/aix.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o aix.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/aix.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o aix.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/aix.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o aix.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc64/aix.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o aix.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc64/aix.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o aix.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc64/aix.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o aix.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/powerpc64/aix.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=aix -p sourceforgepath="AIX" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o aix.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/powerpc64/aix.var: gen_makefile.conf
	echo > aix.var
	echo 'URI: aix.html.bg' >> aix.var
	echo 'Content-language: bg' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.en' >> aix.var
	echo 'Content-language: en' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.fi' >> aix.var
	echo 'Content-language: fi' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.fr' >> aix.var
	echo 'Content-language: fr' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.id' >> aix.var
	echo 'Content-language: id' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.it' >> aix.var
	echo 'Content-language: it' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.nl' >> aix.var
	echo 'Content-language: nl' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.po' >> aix.var
	echo 'Content-language: pl' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.sl' >> aix.var
	echo 'Content-language: sl' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.ru' >> aix.var
	echo 'Content-language: ru' >> aix.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aix.var
	echo >> aix.var
	echo 'URI: aix.html.zh-CN' >> aix.var
	echo 'Content-language: zh-CN' >> aix.var
	echo 'Content-type: text/html; charset=UTF-8' >> aix.var
	echo >> aix.var

../..//down/powerpc64/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc64/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc64/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc64/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc64/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc64/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/powerpc64/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/powerpc64/linux.var: gen_makefile.conf
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

mirrors.dat:
	$(shell echo 'name\tnamel\turl' > mirrors.dat)
	$(shell echo 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/mirrors/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../..//down/powerpc64/aix-hungary.html.bg ../..//down/powerpc64/aix-hungary.html.en ../..//down/powerpc64/aix-hungary.html.fi ../..//down/powerpc64/aix-hungary.html.fr ../..//down/powerpc64/aix-hungary.html.id ../..//down/powerpc64/aix-hungary.html.it ../..//down/powerpc64/aix-hungary.html.nl ../..//down/powerpc64/aix-hungary.html.po ../..//down/powerpc64/aix-hungary.html.sl ../..//down/powerpc64/aix-hungary.html.ru ../..//down/powerpc64/aix-hungary.html.zh-CN ../..//down/powerpc64/aix-hungary.var ../..//down/powerpc64/linux-hungary.html.bg ../..//down/powerpc64/linux-hungary.html.en ../..//down/powerpc64/linux-hungary.html.fi ../..//down/powerpc64/linux-hungary.html.fr ../..//down/powerpc64/linux-hungary.html.id ../..//down/powerpc64/linux-hungary.html.it ../..//down/powerpc64/linux-hungary.html.nl ../..//down/powerpc64/linux-hungary.html.po ../..//down/powerpc64/linux-hungary.html.sl ../..//down/powerpc64/linux-hungary.html.ru ../..//down/powerpc64/linux-hungary.html.zh-CN ../..//down/powerpc64/linux-hungary.var ../..//down/powerpc64/aix-netherlands.html.bg ../..//down/powerpc64/aix-netherlands.html.en ../..//down/powerpc64/aix-netherlands.html.fi ../..//down/powerpc64/aix-netherlands.html.fr ../..//down/powerpc64/aix-netherlands.html.id ../..//down/powerpc64/aix-netherlands.html.it ../..//down/powerpc64/aix-netherlands.html.nl ../..//down/powerpc64/aix-netherlands.html.po ../..//down/powerpc64/aix-netherlands.html.sl ../..//down/powerpc64/aix-netherlands.html.ru ../..//down/powerpc64/aix-netherlands.html.zh-CN ../..//down/powerpc64/aix-netherlands.var ../..//down/powerpc64/linux-netherlands.html.bg ../..//down/powerpc64/linux-netherlands.html.en ../..//down/powerpc64/linux-netherlands.html.fi ../..//down/powerpc64/linux-netherlands.html.fr ../..//down/powerpc64/linux-netherlands.html.id ../..//down/powerpc64/linux-netherlands.html.it ../..//down/powerpc64/linux-netherlands.html.nl ../..//down/powerpc64/linux-netherlands.html.po ../..//down/powerpc64/linux-netherlands.html.sl ../..//down/powerpc64/linux-netherlands.html.ru ../..//down/powerpc64/linux-netherlands.html.zh-CN ../..//down/powerpc64/linux-netherlands.var ../..//down/powerpc64/aix.html.bg ../..//down/powerpc64/aix.html.en ../..//down/powerpc64/aix.html.fi ../..//down/powerpc64/aix.html.fr ../..//down/powerpc64/aix.html.id ../..//down/powerpc64/aix.html.it ../..//down/powerpc64/aix.html.nl ../..//down/powerpc64/aix.html.po ../..//down/powerpc64/aix.html.sl ../..//down/powerpc64/aix.html.ru ../..//down/powerpc64/aix.html.zh-CN ../..//down/powerpc64/aix.var ../..//down/powerpc64/linux.html.bg ../..//down/powerpc64/linux.html.en ../..//down/powerpc64/linux.html.fi ../..//down/powerpc64/linux.html.fr ../..//down/powerpc64/linux.html.id ../..//down/powerpc64/linux.html.it ../..//down/powerpc64/linux.html.nl ../..//down/powerpc64/linux.html.po ../..//down/powerpc64/linux.html.sl ../..//down/powerpc64/linux.html.ru ../..//down/powerpc64/linux.html.zh-CN ../..//down/powerpc64/linux.var
all_en_pages: mirrors.dat ../..//down/powerpc64/aix-hungary.html ../..//down/powerpc64/linux-hungary.html ../..//down/powerpc64/aix-netherlands.html ../..//down/powerpc64/linux-netherlands.html ../..//down/powerpc64/aix.html ../..//down/powerpc64/linux.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/powerpc64/

