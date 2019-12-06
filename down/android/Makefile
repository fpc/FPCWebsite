
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
../..//down/android/android-hungary.html.bg: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/android//android-hungary.html.bg -oe iso-8859-5 android.adp
../..//down/android/android-hungary.html.en: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/android//android-hungary.html.en -oe iso-8859-1 android.adp
../..//down/android/android-hungary.html.fi: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/android//android-hungary.html.fi -oe iso-8859-1 android.adp
../..//down/android/android-hungary.html.fr: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/android//android-hungary.html.fr -oe iso-8859-1 android.adp
../..//down/android/android-hungary.html.id: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/android//android-hungary.html.id -oe iso-8859-1 android.adp
../..//down/android/android-hungary.html.it: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/android//android-hungary.html.it -oe iso-8859-1 android.adp
../..//down/android/android-hungary.html.nl: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/android//android-hungary.html.nl -oe iso-8859-1 android.adp
../..//down/android/android-hungary.html.po: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/android//android-hungary.html.po -oe iso-8859-2 android.adp
../..//down/android/android-hungary.html.sl: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/android//android-hungary.html.sl -oe iso-8859-2 android.adp
../..//down/android/android-hungary.html.ru: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/android//android-hungary.html.ru -oe iso-8859-5 android.adp
../..//down/android/android-hungary.html.zh-CN: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/android//android-hungary.html.zh-CN -oe UTF-8 android.adp
../..//down/android/android-hungary.html: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/android/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/android//android-hungary.html -oe ISO-8859-1 android.adp

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
	echo 'Content-type: text/html; charset=UTF-8' >> android-hungary.var
	echo >> android-hungary.var
../..//down/android/android-canada.html.bg: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o ../..//down/android//android-canada.html.bg -oe iso-8859-5 android.adp
../..//down/android/android-canada.html.en: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/android//android-canada.html.en -oe iso-8859-1 android.adp
../..//down/android/android-canada.html.fi: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o ../..//down/android//android-canada.html.fi -oe iso-8859-1 android.adp
../..//down/android/android-canada.html.fr: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o ../..//down/android//android-canada.html.fr -oe iso-8859-1 android.adp
../..//down/android/android-canada.html.id: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o ../..//down/android//android-canada.html.id -oe iso-8859-1 android.adp
../..//down/android/android-canada.html.it: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o ../..//down/android//android-canada.html.it -oe iso-8859-1 android.adp
../..//down/android/android-canada.html.nl: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o ../..//down/android//android-canada.html.nl -oe iso-8859-1 android.adp
../..//down/android/android-canada.html.po: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o ../..//down/android//android-canada.html.po -oe iso-8859-2 android.adp
../..//down/android/android-canada.html.sl: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o ../..//down/android//android-canada.html.sl -oe iso-8859-2 android.adp
../..//down/android/android-canada.html.ru: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o ../..//down/android//android-canada.html.ru -oe iso-8859-5 android.adp
../..//down/android/android-canada.html.zh-CN: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o ../..//down/android//android-canada.html.zh-CN -oe UTF-8 android.adp
../..//down/android/android-canada.html: android.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp ../..//down/android/
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://mirror.freemirror.org/pub/fpc/ -p mirrorsuffix=canada -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o ../..//down/android//android-canada.html -oe ISO-8859-1 android.adp

../..//down/android/android-canada.var: gen_makefile.conf
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

../..//down/android/android.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o android.html.bg -oe iso-8859-5 ../../templatemirror.adp
../..//down/android/android.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o android.html.en -oe iso-8859-1 ../../templatemirror.adp
../..//down/android/android.html.fi: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fi.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.fi.adp -l fi_FI -m ../../default-master.adp -o android.html.fi -oe iso-8859-1 ../../templatemirror.adp
../..//down/android/android.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o android.html.fr -oe iso-8859-1 ../../templatemirror.adp
../..//down/android/android.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o android.html.id -oe iso-8859-1 ../../templatemirror.adp
../..//down/android/android.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o android.html.it -oe iso-8859-1 ../../templatemirror.adp
../..//down/android/android.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o android.html.nl -oe iso-8859-1 ../../templatemirror.adp
../..//down/android/android.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o android.html.po -oe iso-8859-2 ../../templatemirror.adp
../..//down/android/android.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o android.html.sl -oe iso-8859-2 ../../templatemirror.adp
../..//down/android/android.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o android.html.ru -oe iso-8859-5 ../../templatemirror.adp
../..//down/android/android.html.zh-CN: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.zh-CN.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.zh-CN.adp -l zh_CN -m ../../default-master.adp -o android.html.zh-CN -oe UTF-8 ../../templatemirror.adp
../..//down/android/android.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p pagename=android -p sourceforgepath="Win32" -p latestversion="3.0.4" -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o android.html -oe ISO-8859-1 ../../templatemirror.adp
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
	echo 'Content-type: text/html; charset=UTF-8' >> android.var
	echo >> android.var

mirrors.dat:
	$(shell echo -e 'name\tnamel\turl' > mirrors.dat)
	$(shell echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo -e 'Canada\tcanada\tftp://mirror.freemirror.org/pub/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ../..//down/android/android-hungary.html.bg ../..//down/android/android-hungary.html.en ../..//down/android/android-hungary.html.fi ../..//down/android/android-hungary.html.fr ../..//down/android/android-hungary.html.id ../..//down/android/android-hungary.html.it ../..//down/android/android-hungary.html.nl ../..//down/android/android-hungary.html.po ../..//down/android/android-hungary.html.sl ../..//down/android/android-hungary.html.ru ../..//down/android/android-hungary.html.zh-CN ../..//down/android/android-hungary.var ../..//down/android/android-canada.html.bg ../..//down/android/android-canada.html.en ../..//down/android/android-canada.html.fi ../..//down/android/android-canada.html.fr ../..//down/android/android-canada.html.id ../..//down/android/android-canada.html.it ../..//down/android/android-canada.html.nl ../..//down/android/android-canada.html.po ../..//down/android/android-canada.html.sl ../..//down/android/android-canada.html.ru ../..//down/android/android-canada.html.zh-CN ../..//down/android/android-canada.var ../..//down/android/android.html.bg ../..//down/android/android.html.en ../..//down/android/android.html.fi ../..//down/android/android.html.fr ../..//down/android/android.html.id ../..//down/android/android.html.it ../..//down/android/android.html.nl ../..//down/android/android.html.po ../..//down/android/android.html.sl ../..//down/android/android.html.ru ../..//down/android/android.html.zh-CN ../..//down/android/android.var
all_en_pages: mirrors.dat ../..//down/android/android-hungary.html ../..//down/android/android-canada.html ../..//down/android/android.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ../..//down/android/

