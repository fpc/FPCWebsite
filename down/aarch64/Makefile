
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
../../down/aarch64/linux-hungary.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../../down/aarch64/linux-hungary.html.bg -e iso-8859-5 linux.adp
../../down/aarch64/linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../../down/aarch64/linux-hungary.html.en -e iso-8859-1 linux.adp
../../down/aarch64/linux-hungary.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../../down/aarch64/linux-hungary.html.fi -e iso-8859-1 linux.adp
../../down/aarch64/linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../../down/aarch64/linux-hungary.html.fr -e iso-8859-1 linux.adp
../../down/aarch64/linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../../down/aarch64/linux-hungary.html.id -e iso-8859-1 linux.adp
../../down/aarch64/linux-hungary.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../../down/aarch64/linux-hungary.html.it -e iso-8859-1 linux.adp
../../down/aarch64/linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../../down/aarch64/linux-hungary.html.nl -e iso-8859-1 linux.adp
../../down/aarch64/linux-hungary.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../../down/aarch64/linux-hungary.html.po -e iso-8859-2 linux.adp
../../down/aarch64/linux-hungary.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../../down/aarch64/linux-hungary.html.sl -e iso-8859-2 linux.adp
../../down/aarch64/linux-hungary.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../../down/aarch64/linux-hungary.html.ru -e iso-8859-5 linux.adp
../../down/aarch64/linux-hungary.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../../down/aarch64/linux-hungary.html.zh-CN -e UTF-8 linux.adp
../../down/aarch64/linux-hungary.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../../down/aarch64
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../../down/aarch64/linux-hungary.html -e ISO-8859-1 linux.adp

../../down/aarch64/linux-hungary.var: gen_makefile.conf
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
../../down/aarch64/android-hungary.html.bg: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/aarch64/android-hungary.html.bg -e iso-8859-5 android.adp
../../down/aarch64/android-hungary.html.en: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/aarch64/android-hungary.html.en -e iso-8859-1 android.adp
../../down/aarch64/android-hungary.html.fi: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/aarch64/android-hungary.html.fi -e iso-8859-1 android.adp
../../down/aarch64/android-hungary.html.fr: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/aarch64/android-hungary.html.fr -e iso-8859-1 android.adp
../../down/aarch64/android-hungary.html.id: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/aarch64/android-hungary.html.id -e iso-8859-1 android.adp
../../down/aarch64/android-hungary.html.it: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/aarch64/android-hungary.html.it -e iso-8859-1 android.adp
../../down/aarch64/android-hungary.html.nl: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/aarch64/android-hungary.html.nl -e iso-8859-1 android.adp
../../down/aarch64/android-hungary.html.po: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/aarch64/android-hungary.html.po -e iso-8859-2 android.adp
../../down/aarch64/android-hungary.html.sl: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/aarch64/android-hungary.html.sl -e iso-8859-2 android.adp
../../down/aarch64/android-hungary.html.ru: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/aarch64/android-hungary.html.ru -e iso-8859-5 android.adp
../../down/aarch64/android-hungary.html.zh-CN: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/aarch64/android-hungary.html.zh-CN -e UTF-8 android.adp
../../down/aarch64/android-hungary.html: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/aarch64/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/aarch64/android-hungary.html -e ISO-8859-1 android.adp

../../down/aarch64/android-hungary.var: gen_makefile.conf
	echo > android-hungary.var
	echo 'URI: android-hungary.html.bg' >> android-hungary.var
	echo 'Content-language: bg' >> android-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> android-hungary.var
	echo >> android-hungary.var
	echo 'URI: android-hungary.html.en' >> android-hungary.var
	echo 'Content-language: en' >> android-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-hungary.var
	echo >> android-hungary.var
	echo 'URI: android-hungary.html.fi' >> android-hungary.var
	echo 'Content-language: fi' >> android-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-hungary.var
	echo >> android-hungary.var
	echo 'URI: android-hungary.html.fr' >> android-hungary.var
	echo 'Content-language: fr' >> android-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-hungary.var
	echo >> android-hungary.var
	echo 'URI: android-hungary.html.id' >> android-hungary.var
	echo 'Content-language: id' >> android-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-hungary.var
	echo >> android-hungary.var
	echo 'URI: android-hungary.html.it' >> android-hungary.var
	echo 'Content-language: it' >> android-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-hungary.var
	echo >> android-hungary.var
	echo 'URI: android-hungary.html.nl' >> android-hungary.var
	echo 'Content-language: nl' >> android-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-hungary.var
	echo >> android-hungary.var
	echo 'URI: android-hungary.html.po' >> android-hungary.var
	echo 'Content-language: pl' >> android-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> android-hungary.var
	echo >> android-hungary.var
	echo 'URI: android-hungary.html.sl' >> android-hungary.var
	echo 'Content-language: sl' >> android-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> android-hungary.var
	echo >> android-hungary.var
	echo 'URI: android-hungary.html.ru' >> android-hungary.var
	echo 'Content-language: ru' >> android-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> android-hungary.var
	echo >> android-hungary.var
	echo 'URI: android-hungary.html.zh-CN' >> android-hungary.var
	echo 'Content-language: zh-CN' >> android-hungary.var
	echo 'Content-type: text/html; charset=UTF-8' >> android-hungary.var
	echo >> android-hungary.var

../../down/aarch64/linux-canada.html.bg: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../../down/aarch64/linux-canada.html.bg -e iso-8859-5 linux.adp
../../down/aarch64/linux-canada.html.en: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../../down/aarch64/linux-canada.html.en -e iso-8859-1 linux.adp
../../down/aarch64/linux-canada.html.fi: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../../down/aarch64/linux-canada.html.fi -e iso-8859-1 linux.adp
../../down/aarch64/linux-canada.html.fr: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../../down/aarch64/linux-canada.html.fr -e iso-8859-1 linux.adp
../../down/aarch64/linux-canada.html.id: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../../down/aarch64/linux-canada.html.id -e iso-8859-1 linux.adp
../../down/aarch64/linux-canada.html.it: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../../down/aarch64/linux-canada.html.it -e iso-8859-1 linux.adp
../../down/aarch64/linux-canada.html.nl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../../down/aarch64/linux-canada.html.nl -e iso-8859-1 linux.adp
../../down/aarch64/linux-canada.html.po: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../../down/aarch64/linux-canada.html.po -e iso-8859-2 linux.adp
../../down/aarch64/linux-canada.html.sl: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../../down/aarch64/linux-canada.html.sl -e iso-8859-2 linux.adp
../../down/aarch64/linux-canada.html.ru: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../../down/aarch64/linux-canada.html.ru -e iso-8859-5 linux.adp
../../down/aarch64/linux-canada.html.zh-CN: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../../down/aarch64/linux-canada.html.zh-CN -e UTF-8 linux.adp
../../down/aarch64/linux-canada.html: linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../../down/aarch64
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../../down/aarch64/linux-canada.html -e ISO-8859-1 linux.adp

../../down/aarch64/linux-canada.var: gen_makefile.conf
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
../../down/aarch64/android-canada.html.bg: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/aarch64/android-canada.html.bg -e iso-8859-5 android.adp
../../down/aarch64/android-canada.html.en: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/aarch64/android-canada.html.en -e iso-8859-1 android.adp
../../down/aarch64/android-canada.html.fi: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/aarch64/android-canada.html.fi -e iso-8859-1 android.adp
../../down/aarch64/android-canada.html.fr: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/aarch64/android-canada.html.fr -e iso-8859-1 android.adp
../../down/aarch64/android-canada.html.id: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/aarch64/android-canada.html.id -e iso-8859-1 android.adp
../../down/aarch64/android-canada.html.it: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/aarch64/android-canada.html.it -e iso-8859-1 android.adp
../../down/aarch64/android-canada.html.nl: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/aarch64/android-canada.html.nl -e iso-8859-1 android.adp
../../down/aarch64/android-canada.html.po: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/aarch64/android-canada.html.po -e iso-8859-2 android.adp
../../down/aarch64/android-canada.html.sl: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/aarch64/android-canada.html.sl -e iso-8859-2 android.adp
../../down/aarch64/android-canada.html.ru: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/aarch64/android-canada.html.ru -e iso-8859-5 android.adp
../../down/aarch64/android-canada.html.zh-CN: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/aarch64/android-canada.html.zh-CN -e UTF-8 android.adp
../../down/aarch64/android-canada.html: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../../down/aarch64
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/aarch64/android-canada.html -e ISO-8859-1 android.adp

../../down/aarch64/android-canada.var: gen_makefile.conf
	echo > android-canada.var
	echo 'URI: android-canada.html.bg' >> android-canada.var
	echo 'Content-language: bg' >> android-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> android-canada.var
	echo >> android-canada.var
	echo 'URI: android-canada.html.en' >> android-canada.var
	echo 'Content-language: en' >> android-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-canada.var
	echo >> android-canada.var
	echo 'URI: android-canada.html.fi' >> android-canada.var
	echo 'Content-language: fi' >> android-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-canada.var
	echo >> android-canada.var
	echo 'URI: android-canada.html.fr' >> android-canada.var
	echo 'Content-language: fr' >> android-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-canada.var
	echo >> android-canada.var
	echo 'URI: android-canada.html.id' >> android-canada.var
	echo 'Content-language: id' >> android-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-canada.var
	echo >> android-canada.var
	echo 'URI: android-canada.html.it' >> android-canada.var
	echo 'Content-language: it' >> android-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-canada.var
	echo >> android-canada.var
	echo 'URI: android-canada.html.nl' >> android-canada.var
	echo 'Content-language: nl' >> android-canada.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-canada.var
	echo >> android-canada.var
	echo 'URI: android-canada.html.po' >> android-canada.var
	echo 'Content-language: pl' >> android-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> android-canada.var
	echo >> android-canada.var
	echo 'URI: android-canada.html.sl' >> android-canada.var
	echo 'Content-language: sl' >> android-canada.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> android-canada.var
	echo >> android-canada.var
	echo 'URI: android-canada.html.ru' >> android-canada.var
	echo 'Content-language: ru' >> android-canada.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> android-canada.var
	echo >> android-canada.var
	echo 'URI: android-canada.html.zh-CN' >> android-canada.var
	echo 'Content-language: zh-CN' >> android-canada.var
	echo 'Content-type: text/html; charset=UTF-8' >> android-canada.var
	echo >> android-canada.var

../../down/aarch64/linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o linux.html.bg -e iso-8859-5 ../../templatemirror.adp
../../down/aarch64/linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html.en -e iso-8859-1 ../../templatemirror.adp
../../down/aarch64/linux.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o linux.html.fi -e iso-8859-1 ../../templatemirror.adp
../../down/aarch64/linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr -e iso-8859-1 ../../templatemirror.adp
../../down/aarch64/linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o linux.html.id -e iso-8859-1 ../../templatemirror.adp
../../down/aarch64/linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o linux.html.it -e iso-8859-1 ../../templatemirror.adp
../../down/aarch64/linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl -e iso-8859-1 ../../templatemirror.adp
../../down/aarch64/linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o linux.html.po -e iso-8859-2 ../../templatemirror.adp
../../down/aarch64/linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o linux.html.sl -e iso-8859-2 ../../templatemirror.adp
../../down/aarch64/linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o linux.html.ru -e iso-8859-5 ../../templatemirror.adp
../../down/aarch64/linux.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o linux.html.zh-CN -e UTF-8 ../../templatemirror.adp
../../down/aarch64/linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=linux -p sourceforgepath="Linux" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o linux.html -e ISO-8859-1 ../../templatemirror.adp
../../down/aarch64/linux.var: gen_makefile.conf
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

../../down/aarch64/android.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="android" -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o android.html.bg -e iso-8859-5 ../../templatemirror.adp
../../down/aarch64/android.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="android" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o android.html.en -e iso-8859-1 ../../templatemirror.adp
../../down/aarch64/android.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="android" -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o android.html.fi -e iso-8859-1 ../../templatemirror.adp
../../down/aarch64/android.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="android" -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o android.html.fr -e iso-8859-1 ../../templatemirror.adp
../../down/aarch64/android.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="android" -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o android.html.id -e iso-8859-1 ../../templatemirror.adp
../../down/aarch64/android.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="android" -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o android.html.it -e iso-8859-1 ../../templatemirror.adp
../../down/aarch64/android.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="android" -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o android.html.nl -e iso-8859-1 ../../templatemirror.adp
../../down/aarch64/android.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="android" -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o android.html.po -e iso-8859-2 ../../templatemirror.adp
../../down/aarch64/android.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="android" -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o android.html.sl -e iso-8859-2 ../../templatemirror.adp
../../down/aarch64/android.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="android" -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o android.html.ru -e iso-8859-5 ../../templatemirror.adp
../../down/aarch64/android.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="android" -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o android.html.zh-CN -e UTF-8 ../../templatemirror.adp
../../down/aarch64/android.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=android -p sourceforgepath="android" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o android.html -e ISO-8859-1 ../../templatemirror.adp
../../down/aarch64/android.var: gen_makefile.conf
	echo > android.var
	echo 'URI: android.html.bg' >> android.var
	echo 'Content-language: bg' >> android.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> android.var
	echo >> android.var
	echo 'URI: android.html.en' >> android.var
	echo 'Content-language: en' >> android.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android.var
	echo >> android.var
	echo 'URI: android.html.fi' >> android.var
	echo 'Content-language: fi' >> android.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android.var
	echo >> android.var
	echo 'URI: android.html.fr' >> android.var
	echo 'Content-language: fr' >> android.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android.var
	echo >> android.var
	echo 'URI: android.html.id' >> android.var
	echo 'Content-language: id' >> android.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android.var
	echo >> android.var
	echo 'URI: android.html.it' >> android.var
	echo 'Content-language: it' >> android.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android.var
	echo >> android.var
	echo 'URI: android.html.nl' >> android.var
	echo 'Content-language: nl' >> android.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android.var
	echo >> android.var
	echo 'URI: android.html.po' >> android.var
	echo 'Content-language: pl' >> android.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> android.var
	echo >> android.var
	echo 'URI: android.html.sl' >> android.var
	echo 'Content-language: sl' >> android.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> android.var
	echo >> android.var
	echo 'URI: android.html.ru' >> android.var
	echo 'Content-language: ru' >> android.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> android.var
	echo >> android.var
	echo 'URI: android.html.zh-CN' >> android.var
	echo 'Content-language: zh-CN' >> android.var
	echo 'Content-type: text/html; charset=UTF-8' >> android.var
	echo >> android.var

mirrors.dat:
	$(shell echo 'name\tnamel\turl' > mirrors.dat)
	$(shell echo 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo 'Canada\tcanada\tftp://mirror.freemirror.org/pub/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../../down/aarch64/linux-hungary.html.bg ../../down/aarch64/linux-hungary.html.en ../../down/aarch64/linux-hungary.html.fi ../../down/aarch64/linux-hungary.html.fr ../../down/aarch64/linux-hungary.html.id ../../down/aarch64/linux-hungary.html.it ../../down/aarch64/linux-hungary.html.nl ../../down/aarch64/linux-hungary.html.po ../../down/aarch64/linux-hungary.html.sl ../../down/aarch64/linux-hungary.html.ru ../../down/aarch64/linux-hungary.html.zh-CN ../../down/aarch64/linux-hungary.var ../../down/aarch64/android-hungary.html.bg ../../down/aarch64/android-hungary.html.en ../../down/aarch64/android-hungary.html.fi ../../down/aarch64/android-hungary.html.fr ../../down/aarch64/android-hungary.html.id ../../down/aarch64/android-hungary.html.it ../../down/aarch64/android-hungary.html.nl ../../down/aarch64/android-hungary.html.po ../../down/aarch64/android-hungary.html.sl ../../down/aarch64/android-hungary.html.ru ../../down/aarch64/android-hungary.html.zh-CN ../../down/aarch64/android-hungary.var ../../down/aarch64/linux-canada.html.bg ../../down/aarch64/linux-canada.html.en ../../down/aarch64/linux-canada.html.fi ../../down/aarch64/linux-canada.html.fr ../../down/aarch64/linux-canada.html.id ../../down/aarch64/linux-canada.html.it ../../down/aarch64/linux-canada.html.nl ../../down/aarch64/linux-canada.html.po ../../down/aarch64/linux-canada.html.sl ../../down/aarch64/linux-canada.html.ru ../../down/aarch64/linux-canada.html.zh-CN ../../down/aarch64/linux-canada.var ../../down/aarch64/android-canada.html.bg ../../down/aarch64/android-canada.html.en ../../down/aarch64/android-canada.html.fi ../../down/aarch64/android-canada.html.fr ../../down/aarch64/android-canada.html.id ../../down/aarch64/android-canada.html.it ../../down/aarch64/android-canada.html.nl ../../down/aarch64/android-canada.html.po ../../down/aarch64/android-canada.html.sl ../../down/aarch64/android-canada.html.ru ../../down/aarch64/android-canada.html.zh-CN ../../down/aarch64/android-canada.var ../../down/aarch64/linux.html.bg ../../down/aarch64/linux.html.en ../../down/aarch64/linux.html.fi ../../down/aarch64/linux.html.fr ../../down/aarch64/linux.html.id ../../down/aarch64/linux.html.it ../../down/aarch64/linux.html.nl ../../down/aarch64/linux.html.po ../../down/aarch64/linux.html.sl ../../down/aarch64/linux.html.ru ../../down/aarch64/linux.html.zh-CN ../../down/aarch64/linux.var ../../down/aarch64/android.html.bg ../../down/aarch64/android.html.en ../../down/aarch64/android.html.fi ../../down/aarch64/android.html.fr ../../down/aarch64/android.html.id ../../down/aarch64/android.html.it ../../down/aarch64/android.html.nl ../../down/aarch64/android.html.po ../../down/aarch64/android.html.sl ../../down/aarch64/android.html.ru ../../down/aarch64/android.html.zh-CN ../../down/aarch64/android.var
all_en_pages: mirrors.dat ../../down/aarch64/linux-hungary.html ../../down/aarch64/android-hungary.html ../../down/aarch64/linux-canada.html ../../down/aarch64/android-canada.html ../../down/aarch64/linux.html ../../down/aarch64/android.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/aarch64/

