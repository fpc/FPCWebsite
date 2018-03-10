
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
../..//down2/x86_64/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.bg -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.en -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.fi -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.fr -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.id -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.it -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.nl -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.po -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.sl -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.ru -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html.zh-CN -oe UTF-8 linux.adp
../..//down2/x86_64/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-hungary.html -oe ISO-8859-1 linux.adp

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
	echo 'Content-type: text/html; charset=UTF-8' >> linux-hungary.var
	echo >> linux-hungary.var
../..//down2/x86_64/win64-hungary.html.bg: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.bg -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-hungary.html.en: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.en -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-hungary.html.fi: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.fi -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-hungary.html.fr: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.fr -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-hungary.html.id: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.id -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-hungary.html.it: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.it -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-hungary.html.nl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.nl -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-hungary.html.po: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.po -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-hungary.html.sl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.sl -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-hungary.html.ru: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.ru -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-hungary.html.zh-CN: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html.zh-CN -oe UTF-8 win64.adp
../..//down2/x86_64/win64-hungary.html: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-hungary.html -oe ISO-8859-1 win64.adp

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
	echo 'Content-type: text/html; charset=UTF-8' >> win64-hungary.var
	echo >> win64-hungary.var
../..//down2/x86_64/linux-netherlands.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.bg -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.en -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-netherlands.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.fi -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.fr -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.id -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-netherlands.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.it -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.nl -oe iso-8859-1 linux.adp
../..//down2/x86_64/linux-netherlands.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.po -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-netherlands.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.sl -oe iso-8859-2 linux.adp
../..//down2/x86_64/linux-netherlands.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.ru -oe iso-8859-5 linux.adp
../..//down2/x86_64/linux-netherlands.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html.zh-CN -oe UTF-8 linux.adp
../..//down2/x86_64/linux-netherlands.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//linux-netherlands.html -oe ISO-8859-1 linux.adp

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
	echo 'Content-type: text/html; charset=UTF-8' >> linux-netherlands.var
	echo >> linux-netherlands.var
../..//down2/x86_64/win64-netherlands.html.bg: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.bg -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-netherlands.html.en: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.en -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-netherlands.html.fi: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.fi -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-netherlands.html.fr: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.fr -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-netherlands.html.id: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.id -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-netherlands.html.it: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.it -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-netherlands.html.nl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.nl -oe iso-8859-1 win64.adp
../..//down2/x86_64/win64-netherlands.html.po: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.po -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-netherlands.html.sl: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.sl -oe iso-8859-2 win64.adp
../..//down2/x86_64/win64-netherlands.html.ru: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.ru -oe iso-8859-5 win64.adp
../..//down2/x86_64/win64-netherlands.html.zh-CN: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html.zh-CN -oe UTF-8 win64.adp
../..//down2/x86_64/win64-netherlands.html: win64.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down2/x86_64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/mirrors/fpc/ -p mirrorsuffix=netherlands -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down2/x86_64//win64-netherlands.html -oe ISO-8859-1 win64.adp

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
	echo 'Content-type: text/html; charset=UTF-8' >> win64-netherlands.var
	echo >> win64-netherlands.var

../..//down2/x86_64/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down2/x86_64/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down2/x86_64/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down2/x86_64/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down2/x86_64/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down2/x86_64/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=UTF-8' >> linux.var
	echo >> linux.var

../..//down2/x86_64/win64.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="" -p latestversion="" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o win64.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down2/x86_64/win64.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win64.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/win64.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="" -p latestversion="" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o win64.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/win64.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="" -p latestversion="" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o win64.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/win64.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="" -p latestversion="" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o win64.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/win64.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="" -p latestversion="" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o win64.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/win64.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="" -p latestversion="" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o win64.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down2/x86_64/win64.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="" -p latestversion="" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o win64.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down2/x86_64/win64.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="" -p latestversion="" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o win64.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down2/x86_64/win64.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="" -p latestversion="" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o win64.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down2/x86_64/win64.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win64 -p sourceforgepath="" -p latestversion="" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o win64.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down2/x86_64/win64.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=win64 -p sourceforgepath="" -p latestversion="" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o win64.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=UTF-8' >> win64.var
	echo >> win64.var

mirrors.dat:
	$(shell echo 'name\tnamel\turl' > mirrors.dat)
	$(shell echo 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/mirrors/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../..//down2/x86_64/linux-hungary.html.bg ../..//down2/x86_64/linux-hungary.html.en ../..//down2/x86_64/linux-hungary.html.fi ../..//down2/x86_64/linux-hungary.html.fr ../..//down2/x86_64/linux-hungary.html.id ../..//down2/x86_64/linux-hungary.html.it ../..//down2/x86_64/linux-hungary.html.nl ../..//down2/x86_64/linux-hungary.html.po ../..//down2/x86_64/linux-hungary.html.sl ../..//down2/x86_64/linux-hungary.html.ru ../..//down2/x86_64/linux-hungary.html.zh-CN ../..//down2/x86_64/linux-hungary.var ../..//down2/x86_64/win64-hungary.html.bg ../..//down2/x86_64/win64-hungary.html.en ../..//down2/x86_64/win64-hungary.html.fi ../..//down2/x86_64/win64-hungary.html.fr ../..//down2/x86_64/win64-hungary.html.id ../..//down2/x86_64/win64-hungary.html.it ../..//down2/x86_64/win64-hungary.html.nl ../..//down2/x86_64/win64-hungary.html.po ../..//down2/x86_64/win64-hungary.html.sl ../..//down2/x86_64/win64-hungary.html.ru ../..//down2/x86_64/win64-hungary.html.zh-CN ../..//down2/x86_64/win64-hungary.var ../..//down2/x86_64/linux-netherlands.html.bg ../..//down2/x86_64/linux-netherlands.html.en ../..//down2/x86_64/linux-netherlands.html.fi ../..//down2/x86_64/linux-netherlands.html.fr ../..//down2/x86_64/linux-netherlands.html.id ../..//down2/x86_64/linux-netherlands.html.it ../..//down2/x86_64/linux-netherlands.html.nl ../..//down2/x86_64/linux-netherlands.html.po ../..//down2/x86_64/linux-netherlands.html.sl ../..//down2/x86_64/linux-netherlands.html.ru ../..//down2/x86_64/linux-netherlands.html.zh-CN ../..//down2/x86_64/linux-netherlands.var ../..//down2/x86_64/win64-netherlands.html.bg ../..//down2/x86_64/win64-netherlands.html.en ../..//down2/x86_64/win64-netherlands.html.fi ../..//down2/x86_64/win64-netherlands.html.fr ../..//down2/x86_64/win64-netherlands.html.id ../..//down2/x86_64/win64-netherlands.html.it ../..//down2/x86_64/win64-netherlands.html.nl ../..//down2/x86_64/win64-netherlands.html.po ../..//down2/x86_64/win64-netherlands.html.sl ../..//down2/x86_64/win64-netherlands.html.ru ../..//down2/x86_64/win64-netherlands.html.zh-CN ../..//down2/x86_64/win64-netherlands.var ../..//down2/x86_64/linux.html.bg ../..//down2/x86_64/linux.html.en ../..//down2/x86_64/linux.html.fi ../..//down2/x86_64/linux.html.fr ../..//down2/x86_64/linux.html.id ../..//down2/x86_64/linux.html.it ../..//down2/x86_64/linux.html.nl ../..//down2/x86_64/linux.html.po ../..//down2/x86_64/linux.html.sl ../..//down2/x86_64/linux.html.ru ../..//down2/x86_64/linux.html.zh-CN ../..//down2/x86_64/linux.var ../..//down2/x86_64/win64.html.bg ../..//down2/x86_64/win64.html.en ../..//down2/x86_64/win64.html.fi ../..//down2/x86_64/win64.html.fr ../..//down2/x86_64/win64.html.id ../..//down2/x86_64/win64.html.it ../..//down2/x86_64/win64.html.nl ../..//down2/x86_64/win64.html.po ../..//down2/x86_64/win64.html.sl ../..//down2/x86_64/win64.html.ru ../..//down2/x86_64/win64.html.zh-CN ../..//down2/x86_64/win64.var
all_en_pages: mirrors.dat ../..//down2/x86_64/linux-hungary.html ../..//down2/x86_64/win64-hungary.html ../..//down2/x86_64/linux-netherlands.html ../..//down2/x86_64/win64-netherlands.html ../..//down2/x86_64/linux.html ../..//down2/x86_64/win64.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down2/x86_64/

