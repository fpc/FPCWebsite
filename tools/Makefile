
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
ADP2HTML=../adp2html$(EXE)

ifndef PP
 PP=fpc
endif

.PHONY: all all_pages clean output_directory
default: all
all: output_directory all_pages
english: output_directory all_en_pages
..//tools/delp.html.bg: delp.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools//delp.html.bg -oe iso-8859-5 delp.adp
..//tools/delp.html.en: delp.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//delp.html.en -oe iso-8859-1 delp.adp
..//tools/delp.html.fi: delp.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools//delp.html.fi -oe iso-8859-1 delp.adp
..//tools/delp.html.fr: delp.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools//delp.html.fr -oe iso-8859-1 delp.adp
..//tools/delp.html.id: delp.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools//delp.html.id -oe iso-8859-1 delp.adp
..//tools/delp.html.it: delp.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools//delp.html.it -oe iso-8859-1 delp.adp
..//tools/delp.html.nl: delp.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools//delp.html.nl -oe iso-8859-1 delp.adp
..//tools/delp.html.po: delp.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools//delp.html.po -oe iso-8859-2 delp.adp
..//tools/delp.html.sl: delp.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools//delp.html.sl -oe iso-8859-2 delp.adp
..//tools/delp.html.ru: delp.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools//delp.html.ru -oe iso-8859-5 delp.adp
..//tools/delp.html.zh-CN: delp.adp ../default-master.adp ../site-master.adp ../catalog.zh-CN.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.zh-CN.adp -l zh_CN -m ../default-master.adp -o ..//tools//delp.html.zh-CN -oe utf-16 delp.adp
..//tools/delp.html: delp.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//delp.html -oe ISO-8859-1 delp.adp

..//tools/delp.var: gen_makefile.conf
	echo > delp.var
	echo 'URI: delp.html.bg' >> delp.var
	echo 'Content-language: bg' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//delp.var
	echo >> delp.var
	echo 'URI: delp.html.en' >> delp.var
	echo 'Content-language: en' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//delp.var
	echo >> delp.var
	echo 'URI: delp.html.fi' >> delp.var
	echo 'Content-language: fi' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//delp.var
	echo >> delp.var
	echo 'URI: delp.html.fr' >> delp.var
	echo 'Content-language: fr' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//delp.var
	echo >> delp.var
	echo 'URI: delp.html.id' >> delp.var
	echo 'Content-language: id' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//delp.var
	echo >> delp.var
	echo 'URI: delp.html.it' >> delp.var
	echo 'Content-language: it' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//delp.var
	echo >> delp.var
	echo 'URI: delp.html.nl' >> delp.var
	echo 'Content-language: nl' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//delp.var
	echo >> delp.var
	echo 'URI: delp.html.po' >> delp.var
	echo 'Content-language: pl' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//delp.var
	echo >> delp.var
	echo 'URI: delp.html.sl' >> delp.var
	echo 'Content-language: sl' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//delp.var
	echo >> delp.var
	echo 'URI: delp.html.ru' >> delp.var
	echo 'Content-language: ru' >> delp.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//delp.var
	echo >> delp.var
	echo 'URI: delp.html.zh-CN' >> delp.var
	echo 'Content-language: zh-CN' >> delp.var
	echo 'Content-type: text/html; charset=utf-16' >> ..//tools//delp.var
	echo >> delp.var
..//tools/fpcmake.html.bg: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools//fpcmake.html.bg -oe iso-8859-5 fpcmake.adp
..//tools/fpcmake.html.en: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//fpcmake.html.en -oe iso-8859-1 fpcmake.adp
..//tools/fpcmake.html.fi: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools//fpcmake.html.fi -oe iso-8859-1 fpcmake.adp
..//tools/fpcmake.html.fr: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools//fpcmake.html.fr -oe iso-8859-1 fpcmake.adp
..//tools/fpcmake.html.id: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools//fpcmake.html.id -oe iso-8859-1 fpcmake.adp
..//tools/fpcmake.html.it: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools//fpcmake.html.it -oe iso-8859-1 fpcmake.adp
..//tools/fpcmake.html.nl: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools//fpcmake.html.nl -oe iso-8859-1 fpcmake.adp
..//tools/fpcmake.html.po: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools//fpcmake.html.po -oe iso-8859-2 fpcmake.adp
..//tools/fpcmake.html.sl: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools//fpcmake.html.sl -oe iso-8859-2 fpcmake.adp
..//tools/fpcmake.html.ru: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools//fpcmake.html.ru -oe iso-8859-5 fpcmake.adp
..//tools/fpcmake.html.zh-CN: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.zh-CN.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.zh-CN.adp -l zh_CN -m ../default-master.adp -o ..//tools//fpcmake.html.zh-CN -oe utf-16 fpcmake.adp
..//tools/fpcmake.html: fpcmake.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//fpcmake.html -oe ISO-8859-1 fpcmake.adp

..//tools/fpcmake.var: gen_makefile.conf
	echo > fpcmake.var
	echo 'URI: fpcmake.html.bg' >> fpcmake.var
	echo 'Content-language: bg' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.en' >> fpcmake.var
	echo 'Content-language: en' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.fi' >> fpcmake.var
	echo 'Content-language: fi' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.fr' >> fpcmake.var
	echo 'Content-language: fr' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.id' >> fpcmake.var
	echo 'Content-language: id' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.it' >> fpcmake.var
	echo 'Content-language: it' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.nl' >> fpcmake.var
	echo 'Content-language: nl' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.po' >> fpcmake.var
	echo 'Content-language: pl' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.sl' >> fpcmake.var
	echo 'Content-language: sl' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.ru' >> fpcmake.var
	echo 'Content-language: ru' >> fpcmake.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//fpcmake.var
	echo >> fpcmake.var
	echo 'URI: fpcmake.html.zh-CN' >> fpcmake.var
	echo 'Content-language: zh-CN' >> fpcmake.var
	echo 'Content-type: text/html; charset=utf-16' >> ..//tools//fpcmake.var
	echo >> fpcmake.var
..//tools/h2pas.html.bg: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools//h2pas.html.bg -oe iso-8859-5 h2pas.adp
..//tools/h2pas.html.en: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//h2pas.html.en -oe iso-8859-1 h2pas.adp
..//tools/h2pas.html.fi: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools//h2pas.html.fi -oe iso-8859-1 h2pas.adp
..//tools/h2pas.html.fr: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools//h2pas.html.fr -oe iso-8859-1 h2pas.adp
..//tools/h2pas.html.id: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools//h2pas.html.id -oe iso-8859-1 h2pas.adp
..//tools/h2pas.html.it: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools//h2pas.html.it -oe iso-8859-1 h2pas.adp
..//tools/h2pas.html.nl: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools//h2pas.html.nl -oe iso-8859-1 h2pas.adp
..//tools/h2pas.html.po: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools//h2pas.html.po -oe iso-8859-2 h2pas.adp
..//tools/h2pas.html.sl: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools//h2pas.html.sl -oe iso-8859-2 h2pas.adp
..//tools/h2pas.html.ru: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools//h2pas.html.ru -oe iso-8859-5 h2pas.adp
..//tools/h2pas.html.zh-CN: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.zh-CN.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.zh-CN.adp -l zh_CN -m ../default-master.adp -o ..//tools//h2pas.html.zh-CN -oe utf-16 h2pas.adp
..//tools/h2pas.html: h2pas.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//h2pas.html -oe ISO-8859-1 h2pas.adp

..//tools/h2pas.var: gen_makefile.conf
	echo > h2pas.var
	echo 'URI: h2pas.html.bg' >> h2pas.var
	echo 'Content-language: bg' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.en' >> h2pas.var
	echo 'Content-language: en' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.fi' >> h2pas.var
	echo 'Content-language: fi' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.fr' >> h2pas.var
	echo 'Content-language: fr' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.id' >> h2pas.var
	echo 'Content-language: id' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.it' >> h2pas.var
	echo 'Content-language: it' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.nl' >> h2pas.var
	echo 'Content-language: nl' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.po' >> h2pas.var
	echo 'Content-language: pl' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.sl' >> h2pas.var
	echo 'Content-language: sl' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.ru' >> h2pas.var
	echo 'Content-language: ru' >> h2pas.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//h2pas.var
	echo >> h2pas.var
	echo 'URI: h2pas.html.zh-CN' >> h2pas.var
	echo 'Content-language: zh-CN' >> h2pas.var
	echo 'Content-type: text/html; charset=utf-16' >> ..//tools//h2pas.var
	echo >> h2pas.var
..//tools/ppdep.html.bg: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools//ppdep.html.bg -oe iso-8859-5 ppdep.adp
..//tools/ppdep.html.en: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//ppdep.html.en -oe iso-8859-1 ppdep.adp
..//tools/ppdep.html.fi: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools//ppdep.html.fi -oe iso-8859-1 ppdep.adp
..//tools/ppdep.html.fr: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools//ppdep.html.fr -oe iso-8859-1 ppdep.adp
..//tools/ppdep.html.id: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools//ppdep.html.id -oe iso-8859-1 ppdep.adp
..//tools/ppdep.html.it: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools//ppdep.html.it -oe iso-8859-1 ppdep.adp
..//tools/ppdep.html.nl: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools//ppdep.html.nl -oe iso-8859-1 ppdep.adp
..//tools/ppdep.html.po: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools//ppdep.html.po -oe iso-8859-2 ppdep.adp
..//tools/ppdep.html.sl: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools//ppdep.html.sl -oe iso-8859-2 ppdep.adp
..//tools/ppdep.html.ru: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools//ppdep.html.ru -oe iso-8859-5 ppdep.adp
..//tools/ppdep.html.zh-CN: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.zh-CN.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.zh-CN.adp -l zh_CN -m ../default-master.adp -o ..//tools//ppdep.html.zh-CN -oe utf-16 ppdep.adp
..//tools/ppdep.html: ppdep.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//ppdep.html -oe ISO-8859-1 ppdep.adp

..//tools/ppdep.var: gen_makefile.conf
	echo > ppdep.var
	echo 'URI: ppdep.html.bg' >> ppdep.var
	echo 'Content-language: bg' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.en' >> ppdep.var
	echo 'Content-language: en' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.fi' >> ppdep.var
	echo 'Content-language: fi' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.fr' >> ppdep.var
	echo 'Content-language: fr' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.id' >> ppdep.var
	echo 'Content-language: id' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.it' >> ppdep.var
	echo 'Content-language: it' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.nl' >> ppdep.var
	echo 'Content-language: nl' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.po' >> ppdep.var
	echo 'Content-language: pl' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.sl' >> ppdep.var
	echo 'Content-language: sl' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.ru' >> ppdep.var
	echo 'Content-language: ru' >> ppdep.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//ppdep.var
	echo >> ppdep.var
	echo 'URI: ppdep.html.zh-CN' >> ppdep.var
	echo 'Content-language: zh-CN' >> ppdep.var
	echo 'Content-type: text/html; charset=utf-16' >> ..//tools//ppdep.var
	echo >> ppdep.var
..//tools/ppudump.html.bg: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools//ppudump.html.bg -oe iso-8859-5 ppudump.adp
..//tools/ppudump.html.en: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//ppudump.html.en -oe iso-8859-1 ppudump.adp
..//tools/ppudump.html.fi: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools//ppudump.html.fi -oe iso-8859-1 ppudump.adp
..//tools/ppudump.html.fr: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools//ppudump.html.fr -oe iso-8859-1 ppudump.adp
..//tools/ppudump.html.id: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools//ppudump.html.id -oe iso-8859-1 ppudump.adp
..//tools/ppudump.html.it: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools//ppudump.html.it -oe iso-8859-1 ppudump.adp
..//tools/ppudump.html.nl: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools//ppudump.html.nl -oe iso-8859-1 ppudump.adp
..//tools/ppudump.html.po: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools//ppudump.html.po -oe iso-8859-2 ppudump.adp
..//tools/ppudump.html.sl: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools//ppudump.html.sl -oe iso-8859-2 ppudump.adp
..//tools/ppudump.html.ru: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools//ppudump.html.ru -oe iso-8859-5 ppudump.adp
..//tools/ppudump.html.zh-CN: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.zh-CN.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.zh-CN.adp -l zh_CN -m ../default-master.adp -o ..//tools//ppudump.html.zh-CN -oe utf-16 ppudump.adp
..//tools/ppudump.html: ppudump.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//ppudump.html -oe ISO-8859-1 ppudump.adp

..//tools/ppudump.var: gen_makefile.conf
	echo > ppudump.var
	echo 'URI: ppudump.html.bg' >> ppudump.var
	echo 'Content-language: bg' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.en' >> ppudump.var
	echo 'Content-language: en' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.fi' >> ppudump.var
	echo 'Content-language: fi' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.fr' >> ppudump.var
	echo 'Content-language: fr' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.id' >> ppudump.var
	echo 'Content-language: id' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.it' >> ppudump.var
	echo 'Content-language: it' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.nl' >> ppudump.var
	echo 'Content-language: nl' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.po' >> ppudump.var
	echo 'Content-language: pl' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.sl' >> ppudump.var
	echo 'Content-language: sl' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.ru' >> ppudump.var
	echo 'Content-language: ru' >> ppudump.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//ppudump.var
	echo >> ppudump.var
	echo 'URI: ppudump.html.zh-CN' >> ppudump.var
	echo 'Content-language: zh-CN' >> ppudump.var
	echo 'Content-type: text/html; charset=utf-16' >> ..//tools//ppudump.var
	echo >> ppudump.var
..//tools/ppufiles.html.bg: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools//ppufiles.html.bg -oe iso-8859-5 ppufiles.adp
..//tools/ppufiles.html.en: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//ppufiles.html.en -oe iso-8859-1 ppufiles.adp
..//tools/ppufiles.html.fi: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools//ppufiles.html.fi -oe iso-8859-1 ppufiles.adp
..//tools/ppufiles.html.fr: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools//ppufiles.html.fr -oe iso-8859-1 ppufiles.adp
..//tools/ppufiles.html.id: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools//ppufiles.html.id -oe iso-8859-1 ppufiles.adp
..//tools/ppufiles.html.it: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools//ppufiles.html.it -oe iso-8859-1 ppufiles.adp
..//tools/ppufiles.html.nl: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools//ppufiles.html.nl -oe iso-8859-1 ppufiles.adp
..//tools/ppufiles.html.po: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools//ppufiles.html.po -oe iso-8859-2 ppufiles.adp
..//tools/ppufiles.html.sl: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools//ppufiles.html.sl -oe iso-8859-2 ppufiles.adp
..//tools/ppufiles.html.ru: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools//ppufiles.html.ru -oe iso-8859-5 ppufiles.adp
..//tools/ppufiles.html.zh-CN: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.zh-CN.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.zh-CN.adp -l zh_CN -m ../default-master.adp -o ..//tools//ppufiles.html.zh-CN -oe utf-16 ppufiles.adp
..//tools/ppufiles.html: ppufiles.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//ppufiles.html -oe ISO-8859-1 ppufiles.adp

..//tools/ppufiles.var: gen_makefile.conf
	echo > ppufiles.var
	echo 'URI: ppufiles.html.bg' >> ppufiles.var
	echo 'Content-language: bg' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.en' >> ppufiles.var
	echo 'Content-language: en' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.fi' >> ppufiles.var
	echo 'Content-language: fi' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.fr' >> ppufiles.var
	echo 'Content-language: fr' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.id' >> ppufiles.var
	echo 'Content-language: id' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.it' >> ppufiles.var
	echo 'Content-language: it' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.nl' >> ppufiles.var
	echo 'Content-language: nl' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.po' >> ppufiles.var
	echo 'Content-language: pl' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.sl' >> ppufiles.var
	echo 'Content-language: sl' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.ru' >> ppufiles.var
	echo 'Content-language: ru' >> ppufiles.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//ppufiles.var
	echo >> ppufiles.var
	echo 'URI: ppufiles.html.zh-CN' >> ppufiles.var
	echo 'Content-language: zh-CN' >> ppufiles.var
	echo 'Content-type: text/html; charset=utf-16' >> ..//tools//ppufiles.var
	echo >> ppufiles.var
..//tools/ppumove.html.bg: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools//ppumove.html.bg -oe iso-8859-5 ppumove.adp
..//tools/ppumove.html.en: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//ppumove.html.en -oe iso-8859-1 ppumove.adp
..//tools/ppumove.html.fi: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools//ppumove.html.fi -oe iso-8859-1 ppumove.adp
..//tools/ppumove.html.fr: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools//ppumove.html.fr -oe iso-8859-1 ppumove.adp
..//tools/ppumove.html.id: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools//ppumove.html.id -oe iso-8859-1 ppumove.adp
..//tools/ppumove.html.it: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools//ppumove.html.it -oe iso-8859-1 ppumove.adp
..//tools/ppumove.html.nl: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools//ppumove.html.nl -oe iso-8859-1 ppumove.adp
..//tools/ppumove.html.po: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools//ppumove.html.po -oe iso-8859-2 ppumove.adp
..//tools/ppumove.html.sl: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools//ppumove.html.sl -oe iso-8859-2 ppumove.adp
..//tools/ppumove.html.ru: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools//ppumove.html.ru -oe iso-8859-5 ppumove.adp
..//tools/ppumove.html.zh-CN: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.zh-CN.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.zh-CN.adp -l zh_CN -m ../default-master.adp -o ..//tools//ppumove.html.zh-CN -oe utf-16 ppumove.adp
..//tools/ppumove.html: ppumove.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//ppumove.html -oe ISO-8859-1 ppumove.adp

..//tools/ppumove.var: gen_makefile.conf
	echo > ppumove.var
	echo 'URI: ppumove.html.bg' >> ppumove.var
	echo 'Content-language: bg' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.en' >> ppumove.var
	echo 'Content-language: en' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.fi' >> ppumove.var
	echo 'Content-language: fi' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.fr' >> ppumove.var
	echo 'Content-language: fr' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.id' >> ppumove.var
	echo 'Content-language: id' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.it' >> ppumove.var
	echo 'Content-language: it' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.nl' >> ppumove.var
	echo 'Content-language: nl' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.po' >> ppumove.var
	echo 'Content-language: pl' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.sl' >> ppumove.var
	echo 'Content-language: sl' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.ru' >> ppumove.var
	echo 'Content-language: ru' >> ppumove.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//ppumove.var
	echo >> ppumove.var
	echo 'URI: ppumove.html.zh-CN' >> ppumove.var
	echo 'Content-language: zh-CN' >> ppumove.var
	echo 'Content-type: text/html; charset=utf-16' >> ..//tools//ppumove.var
	echo >> ppumove.var
..//tools/ptop.html.bg: ptop.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools//ptop.html.bg -oe iso-8859-5 ptop.adp
..//tools/ptop.html.en: ptop.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//ptop.html.en -oe iso-8859-1 ptop.adp
..//tools/ptop.html.fi: ptop.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools//ptop.html.fi -oe iso-8859-1 ptop.adp
..//tools/ptop.html.fr: ptop.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools//ptop.html.fr -oe iso-8859-1 ptop.adp
..//tools/ptop.html.id: ptop.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools//ptop.html.id -oe iso-8859-1 ptop.adp
..//tools/ptop.html.it: ptop.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools//ptop.html.it -oe iso-8859-1 ptop.adp
..//tools/ptop.html.nl: ptop.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools//ptop.html.nl -oe iso-8859-1 ptop.adp
..//tools/ptop.html.po: ptop.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools//ptop.html.po -oe iso-8859-2 ptop.adp
..//tools/ptop.html.sl: ptop.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools//ptop.html.sl -oe iso-8859-2 ptop.adp
..//tools/ptop.html.ru: ptop.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools//ptop.html.ru -oe iso-8859-5 ptop.adp
..//tools/ptop.html.zh-CN: ptop.adp ../default-master.adp ../site-master.adp ../catalog.zh-CN.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.zh-CN.adp -l zh_CN -m ../default-master.adp -o ..//tools//ptop.html.zh-CN -oe utf-16 ptop.adp
..//tools/ptop.html: ptop.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//ptop.html -oe ISO-8859-1 ptop.adp

..//tools/ptop.var: gen_makefile.conf
	echo > ptop.var
	echo 'URI: ptop.html.bg' >> ptop.var
	echo 'Content-language: bg' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.en' >> ptop.var
	echo 'Content-language: en' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.fi' >> ptop.var
	echo 'Content-language: fi' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.fr' >> ptop.var
	echo 'Content-language: fr' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.id' >> ptop.var
	echo 'Content-language: id' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.it' >> ptop.var
	echo 'Content-language: it' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.nl' >> ptop.var
	echo 'Content-language: nl' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.po' >> ptop.var
	echo 'Content-language: pl' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.sl' >> ptop.var
	echo 'Content-language: sl' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.ru' >> ptop.var
	echo 'Content-language: ru' >> ptop.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//ptop.var
	echo >> ptop.var
	echo 'URI: ptop.html.zh-CN' >> ptop.var
	echo 'Content-language: zh-CN' >> ptop.var
	echo 'Content-type: text/html; charset=utf-16' >> ..//tools//ptop.var
	echo >> ptop.var
..//tools/rstconv.html.bg: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools//rstconv.html.bg -oe iso-8859-5 rstconv.adp
..//tools/rstconv.html.en: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//rstconv.html.en -oe iso-8859-1 rstconv.adp
..//tools/rstconv.html.fi: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools//rstconv.html.fi -oe iso-8859-1 rstconv.adp
..//tools/rstconv.html.fr: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools//rstconv.html.fr -oe iso-8859-1 rstconv.adp
..//tools/rstconv.html.id: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools//rstconv.html.id -oe iso-8859-1 rstconv.adp
..//tools/rstconv.html.it: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools//rstconv.html.it -oe iso-8859-1 rstconv.adp
..//tools/rstconv.html.nl: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools//rstconv.html.nl -oe iso-8859-1 rstconv.adp
..//tools/rstconv.html.po: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools//rstconv.html.po -oe iso-8859-2 rstconv.adp
..//tools/rstconv.html.sl: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools//rstconv.html.sl -oe iso-8859-2 rstconv.adp
..//tools/rstconv.html.ru: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools//rstconv.html.ru -oe iso-8859-5 rstconv.adp
..//tools/rstconv.html.zh-CN: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.zh-CN.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.zh-CN.adp -l zh_CN -m ../default-master.adp -o ..//tools//rstconv.html.zh-CN -oe utf-16 rstconv.adp
..//tools/rstconv.html: rstconv.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//rstconv.html -oe ISO-8859-1 rstconv.adp

..//tools/rstconv.var: gen_makefile.conf
	echo > rstconv.var
	echo 'URI: rstconv.html.bg' >> rstconv.var
	echo 'Content-language: bg' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.en' >> rstconv.var
	echo 'Content-language: en' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.fi' >> rstconv.var
	echo 'Content-language: fi' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.fr' >> rstconv.var
	echo 'Content-language: fr' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.id' >> rstconv.var
	echo 'Content-language: id' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.it' >> rstconv.var
	echo 'Content-language: it' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.nl' >> rstconv.var
	echo 'Content-language: nl' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.po' >> rstconv.var
	echo 'Content-language: pl' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.sl' >> rstconv.var
	echo 'Content-language: sl' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.ru' >> rstconv.var
	echo 'Content-language: ru' >> rstconv.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//rstconv.var
	echo >> rstconv.var
	echo 'URI: rstconv.html.zh-CN' >> rstconv.var
	echo 'Content-language: zh-CN' >> rstconv.var
	echo 'Content-type: text/html; charset=utf-16' >> ..//tools//rstconv.var
	echo >> rstconv.var
..//tools/tools.html.bg: tools.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools//tools.html.bg -oe iso-8859-5 tools.adp
..//tools/tools.html.en: tools.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//tools.html.en -oe iso-8859-1 tools.adp
..//tools/tools.html.fi: tools.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools//tools.html.fi -oe iso-8859-1 tools.adp
..//tools/tools.html.fr: tools.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools//tools.html.fr -oe iso-8859-1 tools.adp
..//tools/tools.html.id: tools.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools//tools.html.id -oe iso-8859-1 tools.adp
..//tools/tools.html.it: tools.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools//tools.html.it -oe iso-8859-1 tools.adp
..//tools/tools.html.nl: tools.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools//tools.html.nl -oe iso-8859-1 tools.adp
..//tools/tools.html.po: tools.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools//tools.html.po -oe iso-8859-2 tools.adp
..//tools/tools.html.sl: tools.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools//tools.html.sl -oe iso-8859-2 tools.adp
..//tools/tools.html.ru: tools.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools//tools.html.ru -oe iso-8859-5 tools.adp
..//tools/tools.html.zh-CN: tools.adp ../default-master.adp ../site-master.adp ../catalog.zh-CN.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.zh-CN.adp -l zh_CN -m ../default-master.adp -o ..//tools//tools.html.zh-CN -oe utf-16 tools.adp
..//tools/tools.html: tools.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//tools.html -oe ISO-8859-1 tools.adp

..//tools/tools.var: gen_makefile.conf
	echo > tools.var
	echo 'URI: tools.html.bg' >> tools.var
	echo 'Content-language: bg' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//tools.var
	echo >> tools.var
	echo 'URI: tools.html.en' >> tools.var
	echo 'Content-language: en' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//tools.var
	echo >> tools.var
	echo 'URI: tools.html.fi' >> tools.var
	echo 'Content-language: fi' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//tools.var
	echo >> tools.var
	echo 'URI: tools.html.fr' >> tools.var
	echo 'Content-language: fr' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//tools.var
	echo >> tools.var
	echo 'URI: tools.html.id' >> tools.var
	echo 'Content-language: id' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//tools.var
	echo >> tools.var
	echo 'URI: tools.html.it' >> tools.var
	echo 'Content-language: it' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//tools.var
	echo >> tools.var
	echo 'URI: tools.html.nl' >> tools.var
	echo 'Content-language: nl' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//tools.var
	echo >> tools.var
	echo 'URI: tools.html.po' >> tools.var
	echo 'Content-language: pl' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//tools.var
	echo >> tools.var
	echo 'URI: tools.html.sl' >> tools.var
	echo 'Content-language: sl' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//tools.var
	echo >> tools.var
	echo 'URI: tools.html.ru' >> tools.var
	echo 'Content-language: ru' >> tools.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//tools.var
	echo >> tools.var
	echo 'URI: tools.html.zh-CN' >> tools.var
	echo 'Content-language: zh-CN' >> tools.var
	echo 'Content-type: text/html; charset=utf-16' >> ..//tools//tools.var
	echo >> tools.var
..//tools/tply.html.bg: tply.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//tools//tply.html.bg -oe iso-8859-5 tply.adp
..//tools/tply.html.en: tply.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//tply.html.en -oe iso-8859-1 tply.adp
..//tools/tply.html.fi: tply.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//tools//tply.html.fi -oe iso-8859-1 tply.adp
..//tools/tply.html.fr: tply.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//tools//tply.html.fr -oe iso-8859-1 tply.adp
..//tools/tply.html.id: tply.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//tools//tply.html.id -oe iso-8859-1 tply.adp
..//tools/tply.html.it: tply.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//tools//tply.html.it -oe iso-8859-1 tply.adp
..//tools/tply.html.nl: tply.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//tools//tply.html.nl -oe iso-8859-1 tply.adp
..//tools/tply.html.po: tply.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//tools//tply.html.po -oe iso-8859-2 tply.adp
..//tools/tply.html.sl: tply.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//tools//tply.html.sl -oe iso-8859-2 tply.adp
..//tools/tply.html.ru: tply.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//tools//tply.html.ru -oe iso-8859-5 tply.adp
..//tools/tply.html.zh-CN: tply.adp ../default-master.adp ../site-master.adp ../catalog.zh-CN.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.zh-CN.adp -l zh_CN -m ../default-master.adp -o ..//tools//tply.html.zh-CN -oe utf-16 tply.adp
..//tools/tply.html: tply.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//tools//tply.html -oe ISO-8859-1 tply.adp

..//tools/tply.var: gen_makefile.conf
	echo > tply.var
	echo 'URI: tply.html.bg' >> tply.var
	echo 'Content-language: bg' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//tply.var
	echo >> tply.var
	echo 'URI: tply.html.en' >> tply.var
	echo 'Content-language: en' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//tply.var
	echo >> tply.var
	echo 'URI: tply.html.fi' >> tply.var
	echo 'Content-language: fi' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//tply.var
	echo >> tply.var
	echo 'URI: tply.html.fr' >> tply.var
	echo 'Content-language: fr' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//tply.var
	echo >> tply.var
	echo 'URI: tply.html.id' >> tply.var
	echo 'Content-language: id' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//tply.var
	echo >> tply.var
	echo 'URI: tply.html.it' >> tply.var
	echo 'Content-language: it' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//tply.var
	echo >> tply.var
	echo 'URI: tply.html.nl' >> tply.var
	echo 'Content-language: nl' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//tools//tply.var
	echo >> tply.var
	echo 'URI: tply.html.po' >> tply.var
	echo 'Content-language: pl' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//tply.var
	echo >> tply.var
	echo 'URI: tply.html.sl' >> tply.var
	echo 'Content-language: sl' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//tools//tply.var
	echo >> tply.var
	echo 'URI: tply.html.ru' >> tply.var
	echo 'Content-language: ru' >> tply.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//tools//tply.var
	echo >> tply.var
	echo 'URI: tply.html.zh-CN' >> tply.var
	echo 'Content-language: zh-CN' >> tply.var
	echo 'Content-type: text/html; charset=utf-16' >> ..//tools//tply.var
	echo >> tply.var

mirrors.dat:
	echo -e 'name\tnamel\turl' > mirrors.dat
	echo -e 'Australia\taustralia\thttp://fpc.planetmirror.com/pub/fpc/' >> mirrors.dat
	echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Israel\tisrael\thttp://mirror.mirimar.net/freepascal/' >> mirrors.dat
	echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat
	echo -e 'Norway\tnorway\tftp://ftp.no.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Russia\trussia\tftp://ftp.chg.ru/pub/lang/pascal/fpc/' >> mirrors.dat

all_pages: mirrors.dat ..//tools/delp.html.bg ..//tools/delp.html.en ..//tools/delp.html.fi ..//tools/delp.html.fr ..//tools/delp.html.id ..//tools/delp.html.it ..//tools/delp.html.nl ..//tools/delp.html.po ..//tools/delp.html.sl ..//tools/delp.html.ru ..//tools/delp.html.zh-CN ..//tools/delp.var ..//tools/fpcmake.html.bg ..//tools/fpcmake.html.en ..//tools/fpcmake.html.fi ..//tools/fpcmake.html.fr ..//tools/fpcmake.html.id ..//tools/fpcmake.html.it ..//tools/fpcmake.html.nl ..//tools/fpcmake.html.po ..//tools/fpcmake.html.sl ..//tools/fpcmake.html.ru ..//tools/fpcmake.html.zh-CN ..//tools/fpcmake.var ..//tools/h2pas.html.bg ..//tools/h2pas.html.en ..//tools/h2pas.html.fi ..//tools/h2pas.html.fr ..//tools/h2pas.html.id ..//tools/h2pas.html.it ..//tools/h2pas.html.nl ..//tools/h2pas.html.po ..//tools/h2pas.html.sl ..//tools/h2pas.html.ru ..//tools/h2pas.html.zh-CN ..//tools/h2pas.var ..//tools/ppdep.html.bg ..//tools/ppdep.html.en ..//tools/ppdep.html.fi ..//tools/ppdep.html.fr ..//tools/ppdep.html.id ..//tools/ppdep.html.it ..//tools/ppdep.html.nl ..//tools/ppdep.html.po ..//tools/ppdep.html.sl ..//tools/ppdep.html.ru ..//tools/ppdep.html.zh-CN ..//tools/ppdep.var ..//tools/ppudump.html.bg ..//tools/ppudump.html.en ..//tools/ppudump.html.fi ..//tools/ppudump.html.fr ..//tools/ppudump.html.id ..//tools/ppudump.html.it ..//tools/ppudump.html.nl ..//tools/ppudump.html.po ..//tools/ppudump.html.sl ..//tools/ppudump.html.ru ..//tools/ppudump.html.zh-CN ..//tools/ppudump.var ..//tools/ppufiles.html.bg ..//tools/ppufiles.html.en ..//tools/ppufiles.html.fi ..//tools/ppufiles.html.fr ..//tools/ppufiles.html.id ..//tools/ppufiles.html.it ..//tools/ppufiles.html.nl ..//tools/ppufiles.html.po ..//tools/ppufiles.html.sl ..//tools/ppufiles.html.ru ..//tools/ppufiles.html.zh-CN ..//tools/ppufiles.var ..//tools/ppumove.html.bg ..//tools/ppumove.html.en ..//tools/ppumove.html.fi ..//tools/ppumove.html.fr ..//tools/ppumove.html.id ..//tools/ppumove.html.it ..//tools/ppumove.html.nl ..//tools/ppumove.html.po ..//tools/ppumove.html.sl ..//tools/ppumove.html.ru ..//tools/ppumove.html.zh-CN ..//tools/ppumove.var ..//tools/ptop.html.bg ..//tools/ptop.html.en ..//tools/ptop.html.fi ..//tools/ptop.html.fr ..//tools/ptop.html.id ..//tools/ptop.html.it ..//tools/ptop.html.nl ..//tools/ptop.html.po ..//tools/ptop.html.sl ..//tools/ptop.html.ru ..//tools/ptop.html.zh-CN ..//tools/ptop.var ..//tools/rstconv.html.bg ..//tools/rstconv.html.en ..//tools/rstconv.html.fi ..//tools/rstconv.html.fr ..//tools/rstconv.html.id ..//tools/rstconv.html.it ..//tools/rstconv.html.nl ..//tools/rstconv.html.po ..//tools/rstconv.html.sl ..//tools/rstconv.html.ru ..//tools/rstconv.html.zh-CN ..//tools/rstconv.var ..//tools/tools.html.bg ..//tools/tools.html.en ..//tools/tools.html.fi ..//tools/tools.html.fr ..//tools/tools.html.id ..//tools/tools.html.it ..//tools/tools.html.nl ..//tools/tools.html.po ..//tools/tools.html.sl ..//tools/tools.html.ru ..//tools/tools.html.zh-CN ..//tools/tools.var ..//tools/tply.html.bg ..//tools/tply.html.en ..//tools/tply.html.fi ..//tools/tply.html.fr ..//tools/tply.html.id ..//tools/tply.html.it ..//tools/tply.html.nl ..//tools/tply.html.po ..//tools/tply.html.sl ..//tools/tply.html.ru ..//tools/tply.html.zh-CN ..//tools/tply.var
all_en_pages: mirrors.dat ..//tools/delp.html ..//tools/fpcmake.html ..//tools/h2pas.html ..//tools/ppdep.html ..//tools/ppudump.html ..//tools/ppufiles.html ..//tools/ppumove.html ..//tools/ptop.html ..//tools/rstconv.html ..//tools/tools.html ..//tools/tply.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ..//tools/

