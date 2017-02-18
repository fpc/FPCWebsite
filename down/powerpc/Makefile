
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
../..//down/powerpc/linux-austria.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-austria.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-austria.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-austria.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-austria.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-austria.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-austria.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-austria.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-austria.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-austria.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-austria.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html.zh-CN -oe utf-16 linux.adp
../..//down/powerpc/linux-austria.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-austria.html -oe ISO-8859-1 linux.adp

../..//down/powerpc/linux-austria.var: gen_makefile.conf
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
../..//down/powerpc/macosx-austria.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.bg -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-austria.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.en -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-austria.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.fi -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-austria.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.fr -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-austria.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.id -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-austria.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.it -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-austria.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.nl -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-austria.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.po -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-austria.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.sl -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-austria.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.ru -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-austria.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html.zh-CN -oe utf-16 macosx.adp
../..//down/powerpc/macosx-austria.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-austria.html -oe ISO-8859-1 macosx.adp

../..//down/powerpc/macosx-austria.var: gen_makefile.conf
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
../..//down/powerpc/wii-austria.html.bg: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.bg -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-austria.html.en: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.en -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-austria.html.fi: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.fi -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-austria.html.fr: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.fr -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-austria.html.id: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.id -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-austria.html.it: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.it -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-austria.html.nl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.nl -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-austria.html.po: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.po -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-austria.html.sl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.sl -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-austria.html.ru: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.ru -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-austria.html.zh-CN: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html.zh-CN -oe utf-16 wii.adp
../..//down/powerpc/wii-austria.html: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-austria.html -oe ISO-8859-1 wii.adp

../..//down/powerpc/wii-austria.var: gen_makefile.conf
	echo > wii-austria.var
	echo 'URI: wii-austria.html.bg' >> wii-austria.var
	echo 'Content-language: bg' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.en' >> wii-austria.var
	echo 'Content-language: en' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.fi' >> wii-austria.var
	echo 'Content-language: fi' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.fr' >> wii-austria.var
	echo 'Content-language: fr' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.id' >> wii-austria.var
	echo 'Content-language: id' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.it' >> wii-austria.var
	echo 'Content-language: it' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.nl' >> wii-austria.var
	echo 'Content-language: nl' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.po' >> wii-austria.var
	echo 'Content-language: pl' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.sl' >> wii-austria.var
	echo 'Content-language: sl' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.ru' >> wii-austria.var
	echo 'Content-language: ru' >> wii-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-austria.var
	echo >> wii-austria.var
	echo 'URI: wii-austria.html.zh-CN' >> wii-austria.var
	echo 'Content-language: zh-CN' >> wii-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> wii-austria.var
	echo >> wii-austria.var
../..//down/powerpc/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html.zh-CN -oe utf-16 linux.adp
../..//down/powerpc/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-hungary.html -oe ISO-8859-1 linux.adp

../..//down/powerpc/linux-hungary.var: gen_makefile.conf
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
../..//down/powerpc/macosx-hungary.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.bg -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-hungary.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.en -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.fi -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.fr -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.id -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.it -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.nl -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-hungary.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.po -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-hungary.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.sl -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-hungary.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.ru -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-hungary.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html.zh-CN -oe utf-16 macosx.adp
../..//down/powerpc/macosx-hungary.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-hungary.html -oe ISO-8859-1 macosx.adp

../..//down/powerpc/macosx-hungary.var: gen_makefile.conf
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
../..//down/powerpc/wii-hungary.html.bg: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.bg -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-hungary.html.en: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.en -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.fi: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.fi -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.fr: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.fr -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.id: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.id -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.it: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.it -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.nl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.nl -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-hungary.html.po: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.po -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-hungary.html.sl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.sl -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-hungary.html.ru: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.ru -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-hungary.html.zh-CN: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html.zh-CN -oe utf-16 wii.adp
../..//down/powerpc/wii-hungary.html: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-hungary.html -oe ISO-8859-1 wii.adp

../..//down/powerpc/wii-hungary.var: gen_makefile.conf
	echo > wii-hungary.var
	echo 'URI: wii-hungary.html.bg' >> wii-hungary.var
	echo 'Content-language: bg' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.en' >> wii-hungary.var
	echo 'Content-language: en' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.fi' >> wii-hungary.var
	echo 'Content-language: fi' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.fr' >> wii-hungary.var
	echo 'Content-language: fr' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.id' >> wii-hungary.var
	echo 'Content-language: id' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.it' >> wii-hungary.var
	echo 'Content-language: it' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.nl' >> wii-hungary.var
	echo 'Content-language: nl' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.po' >> wii-hungary.var
	echo 'Content-language: pl' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.sl' >> wii-hungary.var
	echo 'Content-language: sl' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.ru' >> wii-hungary.var
	echo 'Content-language: ru' >> wii-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-hungary.var
	echo >> wii-hungary.var
	echo 'URI: wii-hungary.html.zh-CN' >> wii-hungary.var
	echo 'Content-language: zh-CN' >> wii-hungary.var
	echo 'Content-type: text/html; charset=utf-16' >> wii-hungary.var
	echo >> wii-hungary.var
../..//down/powerpc/linux-netherlands.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.bg -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.en -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-netherlands.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.fi -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.fr -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.id -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-netherlands.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.it -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.nl -oe iso-8859-1 linux.adp
../..//down/powerpc/linux-netherlands.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.po -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-netherlands.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.sl -oe iso-8859-2 linux.adp
../..//down/powerpc/linux-netherlands.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.ru -oe iso-8859-5 linux.adp
../..//down/powerpc/linux-netherlands.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html.zh-CN -oe utf-16 linux.adp
../..//down/powerpc/linux-netherlands.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//linux-netherlands.html -oe ISO-8859-1 linux.adp

../..//down/powerpc/linux-netherlands.var: gen_makefile.conf
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
../..//down/powerpc/macosx-netherlands.html.bg: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.bg -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-netherlands.html.en: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.en -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-netherlands.html.fi: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.fi -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-netherlands.html.fr: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.fr -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-netherlands.html.id: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.id -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-netherlands.html.it: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.it -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-netherlands.html.nl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.nl -oe iso-8859-1 macosx.adp
../..//down/powerpc/macosx-netherlands.html.po: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.po -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-netherlands.html.sl: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.sl -oe iso-8859-2 macosx.adp
../..//down/powerpc/macosx-netherlands.html.ru: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.ru -oe iso-8859-5 macosx.adp
../..//down/powerpc/macosx-netherlands.html.zh-CN: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html.zh-CN -oe utf-16 macosx.adp
../..//down/powerpc/macosx-netherlands.html: macosx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//macosx-netherlands.html -oe ISO-8859-1 macosx.adp

../..//down/powerpc/macosx-netherlands.var: gen_makefile.conf
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
../..//down/powerpc/wii-netherlands.html.bg: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.bg -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-netherlands.html.en: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.en -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-netherlands.html.fi: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.fi -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-netherlands.html.fr: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.fr -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-netherlands.html.id: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.id -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-netherlands.html.it: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.it -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-netherlands.html.nl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.nl -oe iso-8859-1 wii.adp
../..//down/powerpc/wii-netherlands.html.po: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.po -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-netherlands.html.sl: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.sl -oe iso-8859-2 wii.adp
../..//down/powerpc/wii-netherlands.html.ru: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.ru -oe iso-8859-5 wii.adp
../..//down/powerpc/wii-netherlands.html.zh-CN: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html.zh-CN -oe utf-16 wii.adp
../..//down/powerpc/wii-netherlands.html: wii.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/powerpc/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/powerpc//wii-netherlands.html -oe ISO-8859-1 wii.adp

../..//down/powerpc/wii-netherlands.var: gen_makefile.conf
	echo > wii-netherlands.var
	echo 'URI: wii-netherlands.html.bg' >> wii-netherlands.var
	echo 'Content-language: bg' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.en' >> wii-netherlands.var
	echo 'Content-language: en' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.fi' >> wii-netherlands.var
	echo 'Content-language: fi' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.fr' >> wii-netherlands.var
	echo 'Content-language: fr' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.id' >> wii-netherlands.var
	echo 'Content-language: id' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.it' >> wii-netherlands.var
	echo 'Content-language: it' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.nl' >> wii-netherlands.var
	echo 'Content-language: nl' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.po' >> wii-netherlands.var
	echo 'Content-language: pl' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.sl' >> wii-netherlands.var
	echo 'Content-language: sl' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.ru' >> wii-netherlands.var
	echo 'Content-language: ru' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii-netherlands.var
	echo >> wii-netherlands.var
	echo 'URI: wii-netherlands.html.zh-CN' >> wii-netherlands.var
	echo 'Content-language: zh-CN' >> wii-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> wii-netherlands.var
	echo >> wii-netherlands.var

../..//down/powerpc/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/powerpc/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/powerpc/linux.var: gen_makefile.conf
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

../..//down/powerpc/macosx.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.2" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o macosx.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/macosx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macosx.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.2" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o macosx.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.2" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o macosx.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.2" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o macosx.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.2" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o macosx.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.2" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o macosx.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.2" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o macosx.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/macosx.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.2" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o macosx.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/macosx.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.2" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o macosx.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/macosx.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.2" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o macosx.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/powerpc/macosx.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=macosx -p sourceforgepath="Mac OS X" -p latestversion="3.0.2" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o macosx.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/powerpc/macosx.var: gen_makefile.conf
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

../..//down/powerpc/wii.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o wii.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/wii.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o wii.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o wii.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o wii.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o wii.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o wii.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o wii.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o wii.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/wii.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o wii.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/powerpc/wii.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o wii.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/powerpc/wii.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o wii.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/powerpc/wii.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=wii -p sourceforgepath="WII" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o wii.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/powerpc/wii.var: gen_makefile.conf
	echo > wii.var
	echo 'URI: wii.html.bg' >> wii.var
	echo 'Content-language: bg' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.en' >> wii.var
	echo 'Content-language: en' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.fi' >> wii.var
	echo 'Content-language: fi' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.fr' >> wii.var
	echo 'Content-language: fr' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.id' >> wii.var
	echo 'Content-language: id' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.it' >> wii.var
	echo 'Content-language: it' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.nl' >> wii.var
	echo 'Content-language: nl' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.po' >> wii.var
	echo 'Content-language: pl' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.sl' >> wii.var
	echo 'Content-language: sl' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.ru' >> wii.var
	echo 'Content-language: ru' >> wii.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> wii.var
	echo >> wii.var
	echo 'URI: wii.html.zh-CN' >> wii.var
	echo 'Content-language: zh-CN' >> wii.var
	echo 'Content-type: text/html; charset=utf-16' >> wii.var
	echo >> wii.var

mirrors.dat:
	/bin/echo -e 'name\tnamel\turl' > mirrors.dat
	/bin/echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	/bin/echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	/bin/echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat

all_pages: mirrors.dat ../..//down/powerpc/linux-austria.html.bg ../..//down/powerpc/linux-austria.html.en ../..//down/powerpc/linux-austria.html.fi ../..//down/powerpc/linux-austria.html.fr ../..//down/powerpc/linux-austria.html.id ../..//down/powerpc/linux-austria.html.it ../..//down/powerpc/linux-austria.html.nl ../..//down/powerpc/linux-austria.html.po ../..//down/powerpc/linux-austria.html.sl ../..//down/powerpc/linux-austria.html.ru ../..//down/powerpc/linux-austria.html.zh-CN ../..//down/powerpc/linux-austria.var ../..//down/powerpc/macosx-austria.html.bg ../..//down/powerpc/macosx-austria.html.en ../..//down/powerpc/macosx-austria.html.fi ../..//down/powerpc/macosx-austria.html.fr ../..//down/powerpc/macosx-austria.html.id ../..//down/powerpc/macosx-austria.html.it ../..//down/powerpc/macosx-austria.html.nl ../..//down/powerpc/macosx-austria.html.po ../..//down/powerpc/macosx-austria.html.sl ../..//down/powerpc/macosx-austria.html.ru ../..//down/powerpc/macosx-austria.html.zh-CN ../..//down/powerpc/macosx-austria.var ../..//down/powerpc/wii-austria.html.bg ../..//down/powerpc/wii-austria.html.en ../..//down/powerpc/wii-austria.html.fi ../..//down/powerpc/wii-austria.html.fr ../..//down/powerpc/wii-austria.html.id ../..//down/powerpc/wii-austria.html.it ../..//down/powerpc/wii-austria.html.nl ../..//down/powerpc/wii-austria.html.po ../..//down/powerpc/wii-austria.html.sl ../..//down/powerpc/wii-austria.html.ru ../..//down/powerpc/wii-austria.html.zh-CN ../..//down/powerpc/wii-austria.var ../..//down/powerpc/linux-hungary.html.bg ../..//down/powerpc/linux-hungary.html.en ../..//down/powerpc/linux-hungary.html.fi ../..//down/powerpc/linux-hungary.html.fr ../..//down/powerpc/linux-hungary.html.id ../..//down/powerpc/linux-hungary.html.it ../..//down/powerpc/linux-hungary.html.nl ../..//down/powerpc/linux-hungary.html.po ../..//down/powerpc/linux-hungary.html.sl ../..//down/powerpc/linux-hungary.html.ru ../..//down/powerpc/linux-hungary.html.zh-CN ../..//down/powerpc/linux-hungary.var ../..//down/powerpc/macosx-hungary.html.bg ../..//down/powerpc/macosx-hungary.html.en ../..//down/powerpc/macosx-hungary.html.fi ../..//down/powerpc/macosx-hungary.html.fr ../..//down/powerpc/macosx-hungary.html.id ../..//down/powerpc/macosx-hungary.html.it ../..//down/powerpc/macosx-hungary.html.nl ../..//down/powerpc/macosx-hungary.html.po ../..//down/powerpc/macosx-hungary.html.sl ../..//down/powerpc/macosx-hungary.html.ru ../..//down/powerpc/macosx-hungary.html.zh-CN ../..//down/powerpc/macosx-hungary.var ../..//down/powerpc/wii-hungary.html.bg ../..//down/powerpc/wii-hungary.html.en ../..//down/powerpc/wii-hungary.html.fi ../..//down/powerpc/wii-hungary.html.fr ../..//down/powerpc/wii-hungary.html.id ../..//down/powerpc/wii-hungary.html.it ../..//down/powerpc/wii-hungary.html.nl ../..//down/powerpc/wii-hungary.html.po ../..//down/powerpc/wii-hungary.html.sl ../..//down/powerpc/wii-hungary.html.ru ../..//down/powerpc/wii-hungary.html.zh-CN ../..//down/powerpc/wii-hungary.var ../..//down/powerpc/linux-netherlands.html.bg ../..//down/powerpc/linux-netherlands.html.en ../..//down/powerpc/linux-netherlands.html.fi ../..//down/powerpc/linux-netherlands.html.fr ../..//down/powerpc/linux-netherlands.html.id ../..//down/powerpc/linux-netherlands.html.it ../..//down/powerpc/linux-netherlands.html.nl ../..//down/powerpc/linux-netherlands.html.po ../..//down/powerpc/linux-netherlands.html.sl ../..//down/powerpc/linux-netherlands.html.ru ../..//down/powerpc/linux-netherlands.html.zh-CN ../..//down/powerpc/linux-netherlands.var ../..//down/powerpc/macosx-netherlands.html.bg ../..//down/powerpc/macosx-netherlands.html.en ../..//down/powerpc/macosx-netherlands.html.fi ../..//down/powerpc/macosx-netherlands.html.fr ../..//down/powerpc/macosx-netherlands.html.id ../..//down/powerpc/macosx-netherlands.html.it ../..//down/powerpc/macosx-netherlands.html.nl ../..//down/powerpc/macosx-netherlands.html.po ../..//down/powerpc/macosx-netherlands.html.sl ../..//down/powerpc/macosx-netherlands.html.ru ../..//down/powerpc/macosx-netherlands.html.zh-CN ../..//down/powerpc/macosx-netherlands.var ../..//down/powerpc/wii-netherlands.html.bg ../..//down/powerpc/wii-netherlands.html.en ../..//down/powerpc/wii-netherlands.html.fi ../..//down/powerpc/wii-netherlands.html.fr ../..//down/powerpc/wii-netherlands.html.id ../..//down/powerpc/wii-netherlands.html.it ../..//down/powerpc/wii-netherlands.html.nl ../..//down/powerpc/wii-netherlands.html.po ../..//down/powerpc/wii-netherlands.html.sl ../..//down/powerpc/wii-netherlands.html.ru ../..//down/powerpc/wii-netherlands.html.zh-CN ../..//down/powerpc/wii-netherlands.var ../..//down/powerpc/linux.html.bg ../..//down/powerpc/linux.html.en ../..//down/powerpc/linux.html.fi ../..//down/powerpc/linux.html.fr ../..//down/powerpc/linux.html.id ../..//down/powerpc/linux.html.it ../..//down/powerpc/linux.html.nl ../..//down/powerpc/linux.html.po ../..//down/powerpc/linux.html.sl ../..//down/powerpc/linux.html.ru ../..//down/powerpc/linux.html.zh-CN ../..//down/powerpc/linux.var ../..//down/powerpc/macosx.html.bg ../..//down/powerpc/macosx.html.en ../..//down/powerpc/macosx.html.fi ../..//down/powerpc/macosx.html.fr ../..//down/powerpc/macosx.html.id ../..//down/powerpc/macosx.html.it ../..//down/powerpc/macosx.html.nl ../..//down/powerpc/macosx.html.po ../..//down/powerpc/macosx.html.sl ../..//down/powerpc/macosx.html.ru ../..//down/powerpc/macosx.html.zh-CN ../..//down/powerpc/macosx.var ../..//down/powerpc/wii.html.bg ../..//down/powerpc/wii.html.en ../..//down/powerpc/wii.html.fi ../..//down/powerpc/wii.html.fr ../..//down/powerpc/wii.html.id ../..//down/powerpc/wii.html.it ../..//down/powerpc/wii.html.nl ../..//down/powerpc/wii.html.po ../..//down/powerpc/wii.html.sl ../..//down/powerpc/wii.html.ru ../..//down/powerpc/wii.html.zh-CN ../..//down/powerpc/wii.var
all_en_pages: mirrors.dat ../..//down/powerpc/linux-austria.html ../..//down/powerpc/macosx-austria.html ../..//down/powerpc/wii-austria.html ../..//down/powerpc/linux-hungary.html ../..//down/powerpc/macosx-hungary.html ../..//down/powerpc/wii-hungary.html ../..//down/powerpc/linux-netherlands.html ../..//down/powerpc/macosx-netherlands.html ../..//down/powerpc/wii-netherlands.html ../..//down/powerpc/linux.html ../..//down/powerpc/macosx.html ../..//down/powerpc/wii.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/powerpc/

