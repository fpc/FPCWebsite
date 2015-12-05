
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
../..//down/android/android-austria.html.bg: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/android//android-austria.html.bg -oe iso-8859-5 android.adp
../..//down/android/android-austria.html.en: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/android//android-austria.html.en -oe iso-8859-1 android.adp
../..//down/android/android-austria.html.fi: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/android//android-austria.html.fi -oe iso-8859-1 android.adp
../..//down/android/android-austria.html.fr: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/android//android-austria.html.fr -oe iso-8859-1 android.adp
../..//down/android/android-austria.html.id: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/android//android-austria.html.id -oe iso-8859-1 android.adp
../..//down/android/android-austria.html.it: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/android//android-austria.html.it -oe iso-8859-1 android.adp
../..//down/android/android-austria.html.nl: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/android//android-austria.html.nl -oe iso-8859-1 android.adp
../..//down/android/android-austria.html.po: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/android//android-austria.html.po -oe iso-8859-2 android.adp
../..//down/android/android-austria.html.sl: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/android//android-austria.html.sl -oe iso-8859-2 android.adp
../..//down/android/android-austria.html.ru: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/android//android-austria.html.ru -oe iso-8859-5 android.adp
../..//down/android/android-austria.html.zh-CN: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/android//android-austria.html.zh-CN -oe utf-16 android.adp
../..//down/android/android-austria.html: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/android/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/android//android-austria.html -oe ISO-8859-1 android.adp

../..//down/android/android-austria.var: gen_makefile.conf
	echo > android-austria.var
	echo 'URI: android-austria.html.bg' >> android-austria.var
	echo 'Content-language: bg' >> android-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> android-austria.var
	echo >> android-austria.var
	echo 'URI: android-austria.html.en' >> android-austria.var
	echo 'Content-language: en' >> android-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-austria.var
	echo >> android-austria.var
	echo 'URI: android-austria.html.fi' >> android-austria.var
	echo 'Content-language: fi' >> android-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-austria.var
	echo >> android-austria.var
	echo 'URI: android-austria.html.fr' >> android-austria.var
	echo 'Content-language: fr' >> android-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-austria.var
	echo >> android-austria.var
	echo 'URI: android-austria.html.id' >> android-austria.var
	echo 'Content-language: id' >> android-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-austria.var
	echo >> android-austria.var
	echo 'URI: android-austria.html.it' >> android-austria.var
	echo 'Content-language: it' >> android-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-austria.var
	echo >> android-austria.var
	echo 'URI: android-austria.html.nl' >> android-austria.var
	echo 'Content-language: nl' >> android-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-austria.var
	echo >> android-austria.var
	echo 'URI: android-austria.html.po' >> android-austria.var
	echo 'Content-language: pl' >> android-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> android-austria.var
	echo >> android-austria.var
	echo 'URI: android-austria.html.sl' >> android-austria.var
	echo 'Content-language: sl' >> android-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> android-austria.var
	echo >> android-austria.var
	echo 'URI: android-austria.html.ru' >> android-austria.var
	echo 'Content-language: ru' >> android-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> android-austria.var
	echo >> android-austria.var
	echo 'URI: android-austria.html.zh-CN' >> android-austria.var
	echo 'Content-language: zh-CN' >> android-austria.var
	echo 'Content-type: text/html; charset=utf-16' >> android-austria.var
	echo >> android-austria.var
../..//down/android/android-hungary.html.bg: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/android//android-hungary.html.bg -oe iso-8859-5 android.adp
../..//down/android/android-hungary.html.en: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/android//android-hungary.html.en -oe iso-8859-1 android.adp
../..//down/android/android-hungary.html.fi: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/android//android-hungary.html.fi -oe iso-8859-1 android.adp
../..//down/android/android-hungary.html.fr: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/android//android-hungary.html.fr -oe iso-8859-1 android.adp
../..//down/android/android-hungary.html.id: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/android//android-hungary.html.id -oe iso-8859-1 android.adp
../..//down/android/android-hungary.html.it: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/android//android-hungary.html.it -oe iso-8859-1 android.adp
../..//down/android/android-hungary.html.nl: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/android//android-hungary.html.nl -oe iso-8859-1 android.adp
../..//down/android/android-hungary.html.po: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/android//android-hungary.html.po -oe iso-8859-2 android.adp
../..//down/android/android-hungary.html.sl: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/android//android-hungary.html.sl -oe iso-8859-2 android.adp
../..//down/android/android-hungary.html.ru: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/android//android-hungary.html.ru -oe iso-8859-5 android.adp
../..//down/android/android-hungary.html.zh-CN: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/android//android-hungary.html.zh-CN -oe utf-16 android.adp
../..//down/android/android-hungary.html: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/android/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/android//android-hungary.html -oe ISO-8859-1 android.adp

../..//down/android/android-hungary.var: gen_makefile.conf
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
	echo 'Content-type: text/html; charset=utf-16' >> android-hungary.var
	echo >> android-hungary.var
../..//down/android/android-netherlands.html.bg: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/android//android-netherlands.html.bg -oe iso-8859-5 android.adp
../..//down/android/android-netherlands.html.en: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/android//android-netherlands.html.en -oe iso-8859-1 android.adp
../..//down/android/android-netherlands.html.fi: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/android//android-netherlands.html.fi -oe iso-8859-1 android.adp
../..//down/android/android-netherlands.html.fr: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/android//android-netherlands.html.fr -oe iso-8859-1 android.adp
../..//down/android/android-netherlands.html.id: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/android//android-netherlands.html.id -oe iso-8859-1 android.adp
../..//down/android/android-netherlands.html.it: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/android//android-netherlands.html.it -oe iso-8859-1 android.adp
../..//down/android/android-netherlands.html.nl: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/android//android-netherlands.html.nl -oe iso-8859-1 android.adp
../..//down/android/android-netherlands.html.po: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/android//android-netherlands.html.po -oe iso-8859-2 android.adp
../..//down/android/android-netherlands.html.sl: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/android//android-netherlands.html.sl -oe iso-8859-2 android.adp
../..//down/android/android-netherlands.html.ru: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/android//android-netherlands.html.ru -oe iso-8859-5 android.adp
../..//down/android/android-netherlands.html.zh-CN: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/android//android-netherlands.html.zh-CN -oe utf-16 android.adp
../..//down/android/android-netherlands.html: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/android/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/android//android-netherlands.html -oe ISO-8859-1 android.adp

../..//down/android/android-netherlands.var: gen_makefile.conf
	echo > android-netherlands.var
	echo 'URI: android-netherlands.html.bg' >> android-netherlands.var
	echo 'Content-language: bg' >> android-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> android-netherlands.var
	echo >> android-netherlands.var
	echo 'URI: android-netherlands.html.en' >> android-netherlands.var
	echo 'Content-language: en' >> android-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-netherlands.var
	echo >> android-netherlands.var
	echo 'URI: android-netherlands.html.fi' >> android-netherlands.var
	echo 'Content-language: fi' >> android-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-netherlands.var
	echo >> android-netherlands.var
	echo 'URI: android-netherlands.html.fr' >> android-netherlands.var
	echo 'Content-language: fr' >> android-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-netherlands.var
	echo >> android-netherlands.var
	echo 'URI: android-netherlands.html.id' >> android-netherlands.var
	echo 'Content-language: id' >> android-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-netherlands.var
	echo >> android-netherlands.var
	echo 'URI: android-netherlands.html.it' >> android-netherlands.var
	echo 'Content-language: it' >> android-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-netherlands.var
	echo >> android-netherlands.var
	echo 'URI: android-netherlands.html.nl' >> android-netherlands.var
	echo 'Content-language: nl' >> android-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> android-netherlands.var
	echo >> android-netherlands.var
	echo 'URI: android-netherlands.html.po' >> android-netherlands.var
	echo 'Content-language: pl' >> android-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> android-netherlands.var
	echo >> android-netherlands.var
	echo 'URI: android-netherlands.html.sl' >> android-netherlands.var
	echo 'Content-language: sl' >> android-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> android-netherlands.var
	echo >> android-netherlands.var
	echo 'URI: android-netherlands.html.ru' >> android-netherlands.var
	echo 'Content-language: ru' >> android-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> android-netherlands.var
	echo >> android-netherlands.var
	echo 'URI: android-netherlands.html.zh-CN' >> android-netherlands.var
	echo 'Content-language: zh-CN' >> android-netherlands.var
	echo 'Content-type: text/html; charset=utf-16' >> android-netherlands.var
	echo >> android-netherlands.var

../..//down/android/android.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.0" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o android.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/android/android.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o android.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/android/android.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.0" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o android.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/android/android.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.0" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o android.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/android/android.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.0" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o android.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/android/android.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.0" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o android.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/android/android.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.0" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o android.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/android/android.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.0" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o android.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/android/android.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.0" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o android.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/android/android.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.0" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o android.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/android/android.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.0" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o android.html.zh-CN -oe utf-16 ../../templatemirror.adp
../..//down/android/android.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.0" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o android.html -oe ISO-8859-1 ../../templatemirror.adp
../..//down/android/android.var: gen_makefile.conf
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
	echo 'Content-type: text/html; charset=utf-16' >> android.var
	echo >> android.var

mirrors.dat:
	/bin/echo -e 'name\tnamel\turl' > mirrors.dat
	/bin/echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	/bin/echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	/bin/echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat

all_pages: mirrors.dat ../..//down/android/android-austria.html.bg ../..//down/android/android-austria.html.en ../..//down/android/android-austria.html.fi ../..//down/android/android-austria.html.fr ../..//down/android/android-austria.html.id ../..//down/android/android-austria.html.it ../..//down/android/android-austria.html.nl ../..//down/android/android-austria.html.po ../..//down/android/android-austria.html.sl ../..//down/android/android-austria.html.ru ../..//down/android/android-austria.html.zh-CN ../..//down/android/android-austria.var ../..//down/android/android-hungary.html.bg ../..//down/android/android-hungary.html.en ../..//down/android/android-hungary.html.fi ../..//down/android/android-hungary.html.fr ../..//down/android/android-hungary.html.id ../..//down/android/android-hungary.html.it ../..//down/android/android-hungary.html.nl ../..//down/android/android-hungary.html.po ../..//down/android/android-hungary.html.sl ../..//down/android/android-hungary.html.ru ../..//down/android/android-hungary.html.zh-CN ../..//down/android/android-hungary.var ../..//down/android/android-netherlands.html.bg ../..//down/android/android-netherlands.html.en ../..//down/android/android-netherlands.html.fi ../..//down/android/android-netherlands.html.fr ../..//down/android/android-netherlands.html.id ../..//down/android/android-netherlands.html.it ../..//down/android/android-netherlands.html.nl ../..//down/android/android-netherlands.html.po ../..//down/android/android-netherlands.html.sl ../..//down/android/android-netherlands.html.ru ../..//down/android/android-netherlands.html.zh-CN ../..//down/android/android-netherlands.var ../..//down/android/android.html.bg ../..//down/android/android.html.en ../..//down/android/android.html.fi ../..//down/android/android.html.fr ../..//down/android/android.html.id ../..//down/android/android.html.it ../..//down/android/android.html.nl ../..//down/android/android.html.po ../..//down/android/android.html.sl ../..//down/android/android.html.ru ../..//down/android/android.html.zh-CN ../..//down/android/android.var
all_en_pages: mirrors.dat ../..//down/android/android-austria.html ../..//down/android/android-hungary.html ../..//down/android/android-netherlands.html ../..//down/android/android.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/android/

