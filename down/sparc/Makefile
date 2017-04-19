
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
../..//down/sparc/linux-austria.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.bg -oe iso-8859-5 linux.adp
../..//down/sparc/linux-austria.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.en -oe iso-8859-1 linux.adp
../..//down/sparc/linux-austria.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.fi -oe iso-8859-1 linux.adp
../..//down/sparc/linux-austria.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.fr -oe iso-8859-1 linux.adp
../..//down/sparc/linux-austria.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.id -oe iso-8859-1 linux.adp
../..//down/sparc/linux-austria.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.it -oe iso-8859-1 linux.adp
../..//down/sparc/linux-austria.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.nl -oe iso-8859-1 linux.adp
../..//down/sparc/linux-austria.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.po -oe iso-8859-2 linux.adp
../..//down/sparc/linux-austria.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.sl -oe iso-8859-2 linux.adp
../..//down/sparc/linux-austria.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.ru -oe iso-8859-5 linux.adp
../..//down/sparc/linux-austria.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html.zh-CN -oe utf-16 linux.adp
../..//down/sparc/linux-austria.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-austria.html -oe ISO-8859-1 linux.adp

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
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.4.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.bg -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-austria.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.4.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.en -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-austria.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.4.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.fi -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-austria.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.4.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.fr -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-austria.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.4.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.id -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-austria.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.4.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.it -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-austria.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.4.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.nl -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-austria.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.4.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.po -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-austria.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.4.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.sl -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-austria.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.4.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.ru -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-austria.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.4.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html.zh-CN -oe utf-16 solaris.adp
../..//down/sparc/solaris-austria.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.4.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-austria.html -oe ISO-8859-1 solaris.adp

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
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.bg -oe iso-8859-5 linux.adp
../..//down/sparc/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.en -oe iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.fi -oe iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.fr -oe iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.id -oe iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.it -oe iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.nl -oe iso-8859-1 linux.adp
../..//down/sparc/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.po -oe iso-8859-2 linux.adp
../..//down/sparc/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.sl -oe iso-8859-2 linux.adp
../..//down/sparc/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.ru -oe iso-8859-5 linux.adp
../..//down/sparc/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html.zh-CN -oe utf-16 linux.adp
../..//down/sparc/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-hungary.html -oe ISO-8859-1 linux.adp

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
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.4.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.bg -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-hungary.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.4.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.en -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.4.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.fi -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.4.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.fr -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.4.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.id -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.4.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.it -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.4.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.nl -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-hungary.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.4.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.po -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-hungary.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.4.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.sl -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-hungary.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.4.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.ru -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-hungary.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.4.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html.zh-CN -oe utf-16 solaris.adp
../..//down/sparc/solaris-hungary.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.4.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-hungary.html -oe ISO-8859-1 solaris.adp

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
../..//down/sparc/linux-netherlands.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.bg -oe iso-8859-5 linux.adp
../..//down/sparc/linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.en -oe iso-8859-1 linux.adp
../..//down/sparc/linux-netherlands.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.fi -oe iso-8859-1 linux.adp
../..//down/sparc/linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.fr -oe iso-8859-1 linux.adp
../..//down/sparc/linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.id -oe iso-8859-1 linux.adp
../..//down/sparc/linux-netherlands.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.it -oe iso-8859-1 linux.adp
../..//down/sparc/linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.nl -oe iso-8859-1 linux.adp
../..//down/sparc/linux-netherlands.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.po -oe iso-8859-2 linux.adp
../..//down/sparc/linux-netherlands.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.sl -oe iso-8859-2 linux.adp
../..//down/sparc/linux-netherlands.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.ru -oe iso-8859-5 linux.adp
../..//down/sparc/linux-netherlands.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html.zh-CN -oe utf-16 linux.adp
../..//down/sparc/linux-netherlands.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//linux-netherlands.html -oe ISO-8859-1 linux.adp

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
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.4.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.bg -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-netherlands.html.en: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.4.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.en -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-netherlands.html.fi: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.4.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.fi -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-netherlands.html.fr: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.4.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.fr -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-netherlands.html.id: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.4.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.id -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-netherlands.html.it: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.4.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.it -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-netherlands.html.nl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.4.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.nl -oe iso-8859-1 solaris.adp
../..//down/sparc/solaris-netherlands.html.po: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.4.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.po -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-netherlands.html.sl: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.4.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.sl -oe iso-8859-2 solaris.adp
../..//down/sparc/solaris-netherlands.html.ru: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.4.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.ru -oe iso-8859-5 solaris.adp
../..//down/sparc/solaris-netherlands.html.zh-CN: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.4.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html.zh-CN -oe utf-16 solaris.adp
../..//down/sparc/solaris-netherlands.html: solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/sparc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.4.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/sparc//solaris-netherlands.html -oe ISO-8859-1 solaris.adp

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

../..//down/sparc/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/sparc/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/sparc/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/sparc/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/sparc/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/sparc/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
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
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.4.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o solaris.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/sparc/solaris.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.4.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o solaris.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.4.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o solaris.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.4.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o solaris.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.4.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o solaris.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.4.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o solaris.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.4.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o solaris.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/sparc/solaris.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.4.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o solaris.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/sparc/solaris.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.4.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o solaris.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/sparc/solaris.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.4.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o solaris.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/sparc/solaris.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.4.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o solaris.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/sparc/solaris.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=solaris -p sourceforgepath="Solaris" -p latestversion="2.4.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o solaris.html -oe ISO-8859-1 ../../templatemirror.adp
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
	/bin/echo -e 'name\tnamel\turl' > mirrors.dat
	/bin/echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	/bin/echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	/bin/echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/mirrors/fpc/' >> mirrors.dat

all_pages: mirrors.dat ../..//down/sparc/linux-austria.html.bg ../..//down/sparc/linux-austria.html.en ../..//down/sparc/linux-austria.html.fi ../..//down/sparc/linux-austria.html.fr ../..//down/sparc/linux-austria.html.id ../..//down/sparc/linux-austria.html.it ../..//down/sparc/linux-austria.html.nl ../..//down/sparc/linux-austria.html.po ../..//down/sparc/linux-austria.html.sl ../..//down/sparc/linux-austria.html.ru ../..//down/sparc/linux-austria.html.zh-CN ../..//down/sparc/linux-austria.var ../..//down/sparc/solaris-austria.html.bg ../..//down/sparc/solaris-austria.html.en ../..//down/sparc/solaris-austria.html.fi ../..//down/sparc/solaris-austria.html.fr ../..//down/sparc/solaris-austria.html.id ../..//down/sparc/solaris-austria.html.it ../..//down/sparc/solaris-austria.html.nl ../..//down/sparc/solaris-austria.html.po ../..//down/sparc/solaris-austria.html.sl ../..//down/sparc/solaris-austria.html.ru ../..//down/sparc/solaris-austria.html.zh-CN ../..//down/sparc/solaris-austria.var ../..//down/sparc/linux-hungary.html.bg ../..//down/sparc/linux-hungary.html.en ../..//down/sparc/linux-hungary.html.fi ../..//down/sparc/linux-hungary.html.fr ../..//down/sparc/linux-hungary.html.id ../..//down/sparc/linux-hungary.html.it ../..//down/sparc/linux-hungary.html.nl ../..//down/sparc/linux-hungary.html.po ../..//down/sparc/linux-hungary.html.sl ../..//down/sparc/linux-hungary.html.ru ../..//down/sparc/linux-hungary.html.zh-CN ../..//down/sparc/linux-hungary.var ../..//down/sparc/solaris-hungary.html.bg ../..//down/sparc/solaris-hungary.html.en ../..//down/sparc/solaris-hungary.html.fi ../..//down/sparc/solaris-hungary.html.fr ../..//down/sparc/solaris-hungary.html.id ../..//down/sparc/solaris-hungary.html.it ../..//down/sparc/solaris-hungary.html.nl ../..//down/sparc/solaris-hungary.html.po ../..//down/sparc/solaris-hungary.html.sl ../..//down/sparc/solaris-hungary.html.ru ../..//down/sparc/solaris-hungary.html.zh-CN ../..//down/sparc/solaris-hungary.var ../..//down/sparc/linux-netherlands.html.bg ../..//down/sparc/linux-netherlands.html.en ../..//down/sparc/linux-netherlands.html.fi ../..//down/sparc/linux-netherlands.html.fr ../..//down/sparc/linux-netherlands.html.id ../..//down/sparc/linux-netherlands.html.it ../..//down/sparc/linux-netherlands.html.nl ../..//down/sparc/linux-netherlands.html.po ../..//down/sparc/linux-netherlands.html.sl ../..//down/sparc/linux-netherlands.html.ru ../..//down/sparc/linux-netherlands.html.zh-CN ../..//down/sparc/linux-netherlands.var ../..//down/sparc/solaris-netherlands.html.bg ../..//down/sparc/solaris-netherlands.html.en ../..//down/sparc/solaris-netherlands.html.fi ../..//down/sparc/solaris-netherlands.html.fr ../..//down/sparc/solaris-netherlands.html.id ../..//down/sparc/solaris-netherlands.html.it ../..//down/sparc/solaris-netherlands.html.nl ../..//down/sparc/solaris-netherlands.html.po ../..//down/sparc/solaris-netherlands.html.sl ../..//down/sparc/solaris-netherlands.html.ru ../..//down/sparc/solaris-netherlands.html.zh-CN ../..//down/sparc/solaris-netherlands.var ../..//down/sparc/linux.html.bg ../..//down/sparc/linux.html.en ../..//down/sparc/linux.html.fi ../..//down/sparc/linux.html.fr ../..//down/sparc/linux.html.id ../..//down/sparc/linux.html.it ../..//down/sparc/linux.html.nl ../..//down/sparc/linux.html.po ../..//down/sparc/linux.html.sl ../..//down/sparc/linux.html.ru ../..//down/sparc/linux.html.zh-CN ../..//down/sparc/linux.var ../..//down/sparc/solaris.html.bg ../..//down/sparc/solaris.html.en ../..//down/sparc/solaris.html.fi ../..//down/sparc/solaris.html.fr ../..//down/sparc/solaris.html.id ../..//down/sparc/solaris.html.it ../..//down/sparc/solaris.html.nl ../..//down/sparc/solaris.html.po ../..//down/sparc/solaris.html.sl ../..//down/sparc/solaris.html.ru ../..//down/sparc/solaris.html.zh-CN ../..//down/sparc/solaris.var
all_en_pages: mirrors.dat ../..//down/sparc/linux-austria.html ../..//down/sparc/solaris-austria.html ../..//down/sparc/linux-hungary.html ../..//down/sparc/solaris-hungary.html ../..//down/sparc/linux-netherlands.html ../..//down/sparc/solaris-netherlands.html ../..//down/sparc/linux.html ../..//down/sparc/solaris.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/sparc/

