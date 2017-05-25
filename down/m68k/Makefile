
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
../..//down/m68k/linux-austria.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/m68k//linux-austria.html.bg -oe iso-8859-5 linux.adp
../..//down/m68k/linux-austria.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/m68k//linux-austria.html.en -oe iso-8859-1 linux.adp
../..//down/m68k/linux-austria.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/m68k//linux-austria.html.fi -oe iso-8859-1 linux.adp
../..//down/m68k/linux-austria.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/m68k//linux-austria.html.fr -oe iso-8859-1 linux.adp
../..//down/m68k/linux-austria.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/m68k//linux-austria.html.id -oe iso-8859-1 linux.adp
../..//down/m68k/linux-austria.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/m68k//linux-austria.html.it -oe iso-8859-1 linux.adp
../..//down/m68k/linux-austria.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/m68k//linux-austria.html.nl -oe iso-8859-1 linux.adp
../..//down/m68k/linux-austria.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/m68k//linux-austria.html.po -oe iso-8859-2 linux.adp
../..//down/m68k/linux-austria.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/m68k//linux-austria.html.sl -oe iso-8859-2 linux.adp
../..//down/m68k/linux-austria.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/m68k//linux-austria.html.ru -oe iso-8859-5 linux.adp
../..//down/m68k/linux-austria.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/m68k//linux-austria.html.zh-CN -oe utf-16 linux.adp
../..//down/m68k/linux-austria.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/m68k/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/m68k//linux-austria.html -oe ISO-8859-1 linux.adp

../..//down/m68k/linux-austria.var: gen_makefile.conf
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
../..//down/m68k/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/m68k//linux-hungary.html.bg -oe iso-8859-5 linux.adp
../..//down/m68k/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/m68k//linux-hungary.html.en -oe iso-8859-1 linux.adp
../..//down/m68k/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/m68k//linux-hungary.html.fi -oe iso-8859-1 linux.adp
../..//down/m68k/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/m68k//linux-hungary.html.fr -oe iso-8859-1 linux.adp
../..//down/m68k/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/m68k//linux-hungary.html.id -oe iso-8859-1 linux.adp
../..//down/m68k/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/m68k//linux-hungary.html.it -oe iso-8859-1 linux.adp
../..//down/m68k/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/m68k//linux-hungary.html.nl -oe iso-8859-1 linux.adp
../..//down/m68k/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/m68k//linux-hungary.html.po -oe iso-8859-2 linux.adp
../..//down/m68k/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/m68k//linux-hungary.html.sl -oe iso-8859-2 linux.adp
../..//down/m68k/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/m68k//linux-hungary.html.ru -oe iso-8859-5 linux.adp
../..//down/m68k/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/m68k//linux-hungary.html.zh-CN -oe utf-16 linux.adp
../..//down/m68k/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/m68k/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/m68k//linux-hungary.html -oe ISO-8859-1 linux.adp

../..//down/m68k/linux-hungary.var: gen_makefile.conf
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
../..//down/m68k/linux-netherlands.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/m68k//linux-netherlands.html.bg -oe iso-8859-5 linux.adp
../..//down/m68k/linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/m68k//linux-netherlands.html.en -oe iso-8859-1 linux.adp
../..//down/m68k/linux-netherlands.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/m68k//linux-netherlands.html.fi -oe iso-8859-1 linux.adp
../..//down/m68k/linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/m68k//linux-netherlands.html.fr -oe iso-8859-1 linux.adp
../..//down/m68k/linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/m68k//linux-netherlands.html.id -oe iso-8859-1 linux.adp
../..//down/m68k/linux-netherlands.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/m68k//linux-netherlands.html.it -oe iso-8859-1 linux.adp
../..//down/m68k/linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/m68k//linux-netherlands.html.nl -oe iso-8859-1 linux.adp
../..//down/m68k/linux-netherlands.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/m68k//linux-netherlands.html.po -oe iso-8859-2 linux.adp
../..//down/m68k/linux-netherlands.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/m68k//linux-netherlands.html.sl -oe iso-8859-2 linux.adp
../..//down/m68k/linux-netherlands.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/m68k//linux-netherlands.html.ru -oe iso-8859-5 linux.adp
../..//down/m68k/linux-netherlands.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/m68k//linux-netherlands.html.zh-CN -oe utf-16 linux.adp
../..//down/m68k/linux-netherlands.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/m68k/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/m68k//linux-netherlands.html -oe ISO-8859-1 linux.adp

../..//down/m68k/linux-netherlands.var: gen_makefile.conf
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

../..//down/m68k/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/m68k/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/m68k/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/m68k/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/m68k/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/m68k/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/m68k/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/m68k/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/m68k/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/m68k/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/m68k/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/m68k/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="2.6.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/m68k/linux.var: gen_makefile.conf
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

mirrors.dat:
	/bin/echo -e 'name\tnamel\turl' > mirrors.dat
	/bin/echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	/bin/echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	/bin/echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat

all_pages: mirrors.dat ../..//down/m68k/linux-austria.html.bg ../..//down/m68k/linux-austria.html.en ../..//down/m68k/linux-austria.html.fi ../..//down/m68k/linux-austria.html.fr ../..//down/m68k/linux-austria.html.id ../..//down/m68k/linux-austria.html.it ../..//down/m68k/linux-austria.html.nl ../..//down/m68k/linux-austria.html.po ../..//down/m68k/linux-austria.html.sl ../..//down/m68k/linux-austria.html.ru ../..//down/m68k/linux-austria.html.zh-CN ../..//down/m68k/linux-austria.var ../..//down/m68k/linux-hungary.html.bg ../..//down/m68k/linux-hungary.html.en ../..//down/m68k/linux-hungary.html.fi ../..//down/m68k/linux-hungary.html.fr ../..//down/m68k/linux-hungary.html.id ../..//down/m68k/linux-hungary.html.it ../..//down/m68k/linux-hungary.html.nl ../..//down/m68k/linux-hungary.html.po ../..//down/m68k/linux-hungary.html.sl ../..//down/m68k/linux-hungary.html.ru ../..//down/m68k/linux-hungary.html.zh-CN ../..//down/m68k/linux-hungary.var ../..//down/m68k/linux-netherlands.html.bg ../..//down/m68k/linux-netherlands.html.en ../..//down/m68k/linux-netherlands.html.fi ../..//down/m68k/linux-netherlands.html.fr ../..//down/m68k/linux-netherlands.html.id ../..//down/m68k/linux-netherlands.html.it ../..//down/m68k/linux-netherlands.html.nl ../..//down/m68k/linux-netherlands.html.po ../..//down/m68k/linux-netherlands.html.sl ../..//down/m68k/linux-netherlands.html.ru ../..//down/m68k/linux-netherlands.html.zh-CN ../..//down/m68k/linux-netherlands.var ../..//down/m68k/linux.html.bg ../..//down/m68k/linux.html.en ../..//down/m68k/linux.html.fi ../..//down/m68k/linux.html.fr ../..//down/m68k/linux.html.id ../..//down/m68k/linux.html.it ../..//down/m68k/linux.html.nl ../..//down/m68k/linux.html.po ../..//down/m68k/linux.html.sl ../..//down/m68k/linux.html.ru ../..//down/m68k/linux.html.zh-CN ../..//down/m68k/linux.var
all_en_pages: mirrors.dat ../..//down/m68k/linux-austria.html ../..//down/m68k/linux-hungary.html ../..//down/m68k/linux-netherlands.html ../..//down/m68k/linux.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/m68k/

