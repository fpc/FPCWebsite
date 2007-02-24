
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
ADP2HTML=./adp2html$(EXE)

ifndef PP
 PP=fpc
endif

.PHONY: all all_pages clean zip tar
default: all
all: $(ADP2HTML) all_pages down_all fcl_all tools_all
english: $(ADP2HTML) all_en_pages down_all_en fcl_all_en tools_all_en
aboutus.html.bg: aboutus.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o aboutus.html.bg -oe iso-8859-5 aboutus.adp
aboutus.html.en: aboutus.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o aboutus.html.en -oe iso-8859-1 aboutus.adp
aboutus.html.fr: aboutus.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o aboutus.html.fr -oe iso-8859-1 aboutus.adp
aboutus.html.id: aboutus.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o aboutus.html.id -oe iso-8859-1 aboutus.adp
aboutus.html.it: aboutus.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o aboutus.html.it -oe iso-8859-1 aboutus.adp
aboutus.html.nl: aboutus.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o aboutus.html.nl -oe iso-8859-1 aboutus.adp
aboutus.html.po: aboutus.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o aboutus.html.po -oe iso-8859-2 aboutus.adp
aboutus.html.sl: aboutus.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o aboutus.html.sl -oe iso-8859-2 aboutus.adp
aboutus.html.ru: aboutus.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o aboutus.html.ru -oe iso-8859-5 aboutus.adp
aboutus.html: aboutus.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o aboutus.html -oe ISO-8859-1 aboutus.adp

aboutus.var: gen_makefile.conf
	echo > aboutus.var
	echo 'URI: aboutus.html.bg' >> aboutus.var
	echo 'Content-language: bg' >> aboutus.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aboutus.var
	echo >> aboutus.var
	echo 'URI: aboutus.html.en' >> aboutus.var
	echo 'Content-language: en' >> aboutus.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aboutus.var
	echo >> aboutus.var
	echo 'URI: aboutus.html.fr' >> aboutus.var
	echo 'Content-language: fr' >> aboutus.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aboutus.var
	echo >> aboutus.var
	echo 'URI: aboutus.html.id' >> aboutus.var
	echo 'Content-language: id' >> aboutus.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aboutus.var
	echo >> aboutus.var
	echo 'URI: aboutus.html.it' >> aboutus.var
	echo 'Content-language: it' >> aboutus.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aboutus.var
	echo >> aboutus.var
	echo 'URI: aboutus.html.nl' >> aboutus.var
	echo 'Content-language: nl' >> aboutus.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aboutus.var
	echo >> aboutus.var
	echo 'URI: aboutus.html.po' >> aboutus.var
	echo 'Content-language: pl' >> aboutus.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aboutus.var
	echo >> aboutus.var
	echo 'URI: aboutus.html.sl' >> aboutus.var
	echo 'Content-language: sl' >> aboutus.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aboutus.var
	echo >> aboutus.var
	echo 'URI: aboutus.html.ru' >> aboutus.var
	echo 'Content-language: ru' >> aboutus.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aboutus.var
	echo >> aboutus.var
advantage.html.bg: advantage.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o advantage.html.bg -oe iso-8859-5 advantage.adp
advantage.html.en: advantage.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o advantage.html.en -oe iso-8859-1 advantage.adp
advantage.html.fr: advantage.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o advantage.html.fr -oe iso-8859-1 advantage.adp
advantage.html.id: advantage.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o advantage.html.id -oe iso-8859-1 advantage.adp
advantage.html.it: advantage.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o advantage.html.it -oe iso-8859-1 advantage.adp
advantage.html.nl: advantage.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o advantage.html.nl -oe iso-8859-1 advantage.adp
advantage.html.po: advantage.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o advantage.html.po -oe iso-8859-2 advantage.adp
advantage.html.sl: advantage.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o advantage.html.sl -oe iso-8859-2 advantage.adp
advantage.html.ru: advantage.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o advantage.html.ru -oe iso-8859-5 advantage.adp
advantage.html: advantage.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o advantage.html -oe ISO-8859-1 advantage.adp

advantage.var: gen_makefile.conf
	echo > advantage.var
	echo 'URI: advantage.html.bg' >> advantage.var
	echo 'Content-language: bg' >> advantage.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> advantage.var
	echo >> advantage.var
	echo 'URI: advantage.html.en' >> advantage.var
	echo 'Content-language: en' >> advantage.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> advantage.var
	echo >> advantage.var
	echo 'URI: advantage.html.fr' >> advantage.var
	echo 'Content-language: fr' >> advantage.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> advantage.var
	echo >> advantage.var
	echo 'URI: advantage.html.id' >> advantage.var
	echo 'Content-language: id' >> advantage.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> advantage.var
	echo >> advantage.var
	echo 'URI: advantage.html.it' >> advantage.var
	echo 'Content-language: it' >> advantage.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> advantage.var
	echo >> advantage.var
	echo 'URI: advantage.html.nl' >> advantage.var
	echo 'Content-language: nl' >> advantage.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> advantage.var
	echo >> advantage.var
	echo 'URI: advantage.html.po' >> advantage.var
	echo 'Content-language: pl' >> advantage.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> advantage.var
	echo >> advantage.var
	echo 'URI: advantage.html.sl' >> advantage.var
	echo 'Content-language: sl' >> advantage.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> advantage.var
	echo >> advantage.var
	echo 'URI: advantage.html.ru' >> advantage.var
	echo 'Content-language: ru' >> advantage.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> advantage.var
	echo >> advantage.var
credits.html.bg: credits.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o credits.html.bg -oe iso-8859-5 credits.adp
credits.html.en: credits.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o credits.html.en -oe iso-8859-1 credits.adp
credits.html.fr: credits.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o credits.html.fr -oe iso-8859-1 credits.adp
credits.html.id: credits.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o credits.html.id -oe iso-8859-1 credits.adp
credits.html.it: credits.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o credits.html.it -oe iso-8859-1 credits.adp
credits.html.nl: credits.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o credits.html.nl -oe iso-8859-1 credits.adp
credits.html.po: credits.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o credits.html.po -oe iso-8859-2 credits.adp
credits.html.sl: credits.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o credits.html.sl -oe iso-8859-2 credits.adp
credits.html.ru: credits.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o credits.html.ru -oe iso-8859-5 credits.adp
credits.html: credits.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o credits.html -oe ISO-8859-1 credits.adp

credits.var: gen_makefile.conf
	echo > credits.var
	echo 'URI: credits.html.bg' >> credits.var
	echo 'Content-language: bg' >> credits.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> credits.var
	echo >> credits.var
	echo 'URI: credits.html.en' >> credits.var
	echo 'Content-language: en' >> credits.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> credits.var
	echo >> credits.var
	echo 'URI: credits.html.fr' >> credits.var
	echo 'Content-language: fr' >> credits.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> credits.var
	echo >> credits.var
	echo 'URI: credits.html.id' >> credits.var
	echo 'Content-language: id' >> credits.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> credits.var
	echo >> credits.var
	echo 'URI: credits.html.it' >> credits.var
	echo 'Content-language: it' >> credits.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> credits.var
	echo >> credits.var
	echo 'URI: credits.html.nl' >> credits.var
	echo 'Content-language: nl' >> credits.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> credits.var
	echo >> credits.var
	echo 'URI: credits.html.po' >> credits.var
	echo 'Content-language: pl' >> credits.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> credits.var
	echo >> credits.var
	echo 'URI: credits.html.sl' >> credits.var
	echo 'Content-language: sl' >> credits.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> credits.var
	echo >> credits.var
	echo 'URI: credits.html.ru' >> credits.var
	echo 'Content-language: ru' >> credits.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> credits.var
	echo >> credits.var
develop.html.bg: develop.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o develop.html.bg -oe iso-8859-5 develop.adp
develop.html.en: develop.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o develop.html.en -oe iso-8859-1 develop.adp
develop.html.fr: develop.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o develop.html.fr -oe iso-8859-1 develop.adp
develop.html.id: develop.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o develop.html.id -oe iso-8859-1 develop.adp
develop.html.it: develop.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o develop.html.it -oe iso-8859-1 develop.adp
develop.html.nl: develop.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o develop.html.nl -oe iso-8859-1 develop.adp
develop.html.po: develop.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o develop.html.po -oe iso-8859-2 develop.adp
develop.html.sl: develop.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o develop.html.sl -oe iso-8859-2 develop.adp
develop.html.ru: develop.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o develop.html.ru -oe iso-8859-5 develop.adp
develop.html: develop.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o develop.html -oe ISO-8859-1 develop.adp

develop.var: gen_makefile.conf
	echo > develop.var
	echo 'URI: develop.html.bg' >> develop.var
	echo 'Content-language: bg' >> develop.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> develop.var
	echo >> develop.var
	echo 'URI: develop.html.en' >> develop.var
	echo 'Content-language: en' >> develop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> develop.var
	echo >> develop.var
	echo 'URI: develop.html.fr' >> develop.var
	echo 'Content-language: fr' >> develop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> develop.var
	echo >> develop.var
	echo 'URI: develop.html.id' >> develop.var
	echo 'Content-language: id' >> develop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> develop.var
	echo >> develop.var
	echo 'URI: develop.html.it' >> develop.var
	echo 'Content-language: it' >> develop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> develop.var
	echo >> develop.var
	echo 'URI: develop.html.nl' >> develop.var
	echo 'Content-language: nl' >> develop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> develop.var
	echo >> develop.var
	echo 'URI: develop.html.po' >> develop.var
	echo 'Content-language: pl' >> develop.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> develop.var
	echo >> develop.var
	echo 'URI: develop.html.sl' >> develop.var
	echo 'Content-language: sl' >> develop.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> develop.var
	echo >> develop.var
	echo 'URI: develop.html.ru' >> develop.var
	echo 'Content-language: ru' >> develop.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> develop.var
	echo >> develop.var
download.html.bg: download.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o download.html.bg -oe iso-8859-5 download.adp
download.html.en: download.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o download.html.en -oe iso-8859-1 download.adp
download.html.fr: download.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o download.html.fr -oe iso-8859-1 download.adp
download.html.id: download.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o download.html.id -oe iso-8859-1 download.adp
download.html.it: download.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o download.html.it -oe iso-8859-1 download.adp
download.html.nl: download.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o download.html.nl -oe iso-8859-1 download.adp
download.html.po: download.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o download.html.po -oe iso-8859-2 download.adp
download.html.sl: download.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o download.html.sl -oe iso-8859-2 download.adp
download.html.ru: download.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o download.html.ru -oe iso-8859-5 download.adp
download.html: download.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o download.html -oe ISO-8859-1 download.adp

download.var: gen_makefile.conf
	echo > download.var
	echo 'URI: download.html.bg' >> download.var
	echo 'Content-language: bg' >> download.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> download.var
	echo >> download.var
	echo 'URI: download.html.en' >> download.var
	echo 'Content-language: en' >> download.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> download.var
	echo >> download.var
	echo 'URI: download.html.fr' >> download.var
	echo 'Content-language: fr' >> download.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> download.var
	echo >> download.var
	echo 'URI: download.html.id' >> download.var
	echo 'Content-language: id' >> download.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> download.var
	echo >> download.var
	echo 'URI: download.html.it' >> download.var
	echo 'Content-language: it' >> download.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> download.var
	echo >> download.var
	echo 'URI: download.html.nl' >> download.var
	echo 'Content-language: nl' >> download.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> download.var
	echo >> download.var
	echo 'URI: download.html.po' >> download.var
	echo 'Content-language: pl' >> download.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> download.var
	echo >> download.var
	echo 'URI: download.html.sl' >> download.var
	echo 'Content-language: sl' >> download.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> download.var
	echo >> download.var
	echo 'URI: download.html.ru' >> download.var
	echo 'Content-language: ru' >> download.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> download.var
	echo >> download.var
docs.html.bg: docs.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o docs.html.bg -oe iso-8859-5 docs.adp
docs.html.en: docs.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o docs.html.en -oe iso-8859-1 docs.adp
docs.html.fr: docs.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o docs.html.fr -oe iso-8859-1 docs.adp
docs.html.id: docs.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o docs.html.id -oe iso-8859-1 docs.adp
docs.html.it: docs.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o docs.html.it -oe iso-8859-1 docs.adp
docs.html.nl: docs.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o docs.html.nl -oe iso-8859-1 docs.adp
docs.html.po: docs.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o docs.html.po -oe iso-8859-2 docs.adp
docs.html.sl: docs.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o docs.html.sl -oe iso-8859-2 docs.adp
docs.html.ru: docs.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o docs.html.ru -oe iso-8859-5 docs.adp
docs.html: docs.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o docs.html -oe ISO-8859-1 docs.adp

docs.var: gen_makefile.conf
	echo > docs.var
	echo 'URI: docs.html.bg' >> docs.var
	echo 'Content-language: bg' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.en' >> docs.var
	echo 'Content-language: en' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.fr' >> docs.var
	echo 'Content-language: fr' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.id' >> docs.var
	echo 'Content-language: id' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.it' >> docs.var
	echo 'Content-language: it' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.nl' >> docs.var
	echo 'Content-language: nl' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.po' >> docs.var
	echo 'Content-language: pl' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.sl' >> docs.var
	echo 'Content-language: sl' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.ru' >> docs.var
	echo 'Content-language: ru' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs.var
	echo >> docs.var
faq.html.bg: faq.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o faq.html.bg -oe iso-8859-5 faq.adp
faq.html.en: faq.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o faq.html.en -oe iso-8859-1 faq.adp
faq.html.fr: faq.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o faq.html.fr -oe iso-8859-1 faq.adp
faq.html.id: faq.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o faq.html.id -oe iso-8859-1 faq.adp
faq.html.it: faq.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o faq.html.it -oe iso-8859-1 faq.adp
faq.html.nl: faq.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o faq.html.nl -oe iso-8859-1 faq.adp
faq.html.po: faq.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o faq.html.po -oe iso-8859-2 faq.adp
faq.html.sl: faq.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o faq.html.sl -oe iso-8859-2 faq.adp
faq.html.ru: faq.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o faq.html.ru -oe iso-8859-5 faq.adp
faq.html: faq.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o faq.html -oe ISO-8859-1 faq.adp

faq.var: gen_makefile.conf
	echo > faq.var
	echo 'URI: faq.html.bg' >> faq.var
	echo 'Content-language: bg' >> faq.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> faq.var
	echo >> faq.var
	echo 'URI: faq.html.en' >> faq.var
	echo 'Content-language: en' >> faq.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> faq.var
	echo >> faq.var
	echo 'URI: faq.html.fr' >> faq.var
	echo 'Content-language: fr' >> faq.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> faq.var
	echo >> faq.var
	echo 'URI: faq.html.id' >> faq.var
	echo 'Content-language: id' >> faq.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> faq.var
	echo >> faq.var
	echo 'URI: faq.html.it' >> faq.var
	echo 'Content-language: it' >> faq.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> faq.var
	echo >> faq.var
	echo 'URI: faq.html.nl' >> faq.var
	echo 'Content-language: nl' >> faq.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> faq.var
	echo >> faq.var
	echo 'URI: faq.html.po' >> faq.var
	echo 'Content-language: pl' >> faq.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> faq.var
	echo >> faq.var
	echo 'URI: faq.html.sl' >> faq.var
	echo 'Content-language: sl' >> faq.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> faq.var
	echo >> faq.var
	echo 'URI: faq.html.ru' >> faq.var
	echo 'Content-language: ru' >> faq.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> faq.var
	echo >> faq.var
fpc.html.bg: fpc.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o fpc.html.bg -oe iso-8859-5 fpc.adp
fpc.html.en: fpc.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o fpc.html.en -oe iso-8859-1 fpc.adp
fpc.html.fr: fpc.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o fpc.html.fr -oe iso-8859-1 fpc.adp
fpc.html.id: fpc.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o fpc.html.id -oe iso-8859-1 fpc.adp
fpc.html.it: fpc.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o fpc.html.it -oe iso-8859-1 fpc.adp
fpc.html.nl: fpc.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o fpc.html.nl -oe iso-8859-1 fpc.adp
fpc.html.po: fpc.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o fpc.html.po -oe iso-8859-2 fpc.adp
fpc.html.sl: fpc.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o fpc.html.sl -oe iso-8859-2 fpc.adp
fpc.html.ru: fpc.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o fpc.html.ru -oe iso-8859-5 fpc.adp
fpc.html: fpc.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o fpc.html -oe ISO-8859-1 fpc.adp

fpc.var: gen_makefile.conf
	echo > fpc.var
	echo 'URI: fpc.html.bg' >> fpc.var
	echo 'Content-language: bg' >> fpc.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> fpc.var
	echo >> fpc.var
	echo 'URI: fpc.html.en' >> fpc.var
	echo 'Content-language: en' >> fpc.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fpc.var
	echo >> fpc.var
	echo 'URI: fpc.html.fr' >> fpc.var
	echo 'Content-language: fr' >> fpc.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fpc.var
	echo >> fpc.var
	echo 'URI: fpc.html.id' >> fpc.var
	echo 'Content-language: id' >> fpc.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fpc.var
	echo >> fpc.var
	echo 'URI: fpc.html.it' >> fpc.var
	echo 'Content-language: it' >> fpc.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fpc.var
	echo >> fpc.var
	echo 'URI: fpc.html.nl' >> fpc.var
	echo 'Content-language: nl' >> fpc.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fpc.var
	echo >> fpc.var
	echo 'URI: fpc.html.po' >> fpc.var
	echo 'Content-language: pl' >> fpc.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> fpc.var
	echo >> fpc.var
	echo 'URI: fpc.html.sl' >> fpc.var
	echo 'Content-language: sl' >> fpc.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> fpc.var
	echo >> fpc.var
	echo 'URI: fpc.html.ru' >> fpc.var
	echo 'Content-language: ru' >> fpc.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> fpc.var
	echo >> fpc.var
fpcmac.html.bg: fpcmac.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o fpcmac.html.bg -oe iso-8859-5 fpcmac.adp
fpcmac.html.en: fpcmac.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o fpcmac.html.en -oe iso-8859-1 fpcmac.adp
fpcmac.html.fr: fpcmac.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o fpcmac.html.fr -oe iso-8859-1 fpcmac.adp
fpcmac.html.id: fpcmac.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o fpcmac.html.id -oe iso-8859-1 fpcmac.adp
fpcmac.html.it: fpcmac.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o fpcmac.html.it -oe iso-8859-1 fpcmac.adp
fpcmac.html.nl: fpcmac.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o fpcmac.html.nl -oe iso-8859-1 fpcmac.adp
fpcmac.html.po: fpcmac.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o fpcmac.html.po -oe iso-8859-2 fpcmac.adp
fpcmac.html.sl: fpcmac.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o fpcmac.html.sl -oe iso-8859-2 fpcmac.adp
fpcmac.html.ru: fpcmac.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o fpcmac.html.ru -oe iso-8859-5 fpcmac.adp
fpcmac.html: fpcmac.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o fpcmac.html -oe ISO-8859-1 fpcmac.adp

fpcmac.var: gen_makefile.conf
	echo > fpcmac.var
	echo 'URI: fpcmac.html.bg' >> fpcmac.var
	echo 'Content-language: bg' >> fpcmac.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> fpcmac.var
	echo >> fpcmac.var
	echo 'URI: fpcmac.html.en' >> fpcmac.var
	echo 'Content-language: en' >> fpcmac.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fpcmac.var
	echo >> fpcmac.var
	echo 'URI: fpcmac.html.fr' >> fpcmac.var
	echo 'Content-language: fr' >> fpcmac.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fpcmac.var
	echo >> fpcmac.var
	echo 'URI: fpcmac.html.id' >> fpcmac.var
	echo 'Content-language: id' >> fpcmac.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fpcmac.var
	echo >> fpcmac.var
	echo 'URI: fpcmac.html.it' >> fpcmac.var
	echo 'Content-language: it' >> fpcmac.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fpcmac.var
	echo >> fpcmac.var
	echo 'URI: fpcmac.html.nl' >> fpcmac.var
	echo 'Content-language: nl' >> fpcmac.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fpcmac.var
	echo >> fpcmac.var
	echo 'URI: fpcmac.html.po' >> fpcmac.var
	echo 'Content-language: pl' >> fpcmac.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> fpcmac.var
	echo >> fpcmac.var
	echo 'URI: fpcmac.html.sl' >> fpcmac.var
	echo 'Content-language: sl' >> fpcmac.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> fpcmac.var
	echo >> fpcmac.var
	echo 'URI: fpcmac.html.ru' >> fpcmac.var
	echo 'Content-language: ru' >> fpcmac.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> fpcmac.var
	echo >> fpcmac.var
future.html.bg: future.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o future.html.bg -oe iso-8859-5 future.adp
future.html.en: future.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o future.html.en -oe iso-8859-1 future.adp
future.html.fr: future.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o future.html.fr -oe iso-8859-1 future.adp
future.html.id: future.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o future.html.id -oe iso-8859-1 future.adp
future.html.it: future.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o future.html.it -oe iso-8859-1 future.adp
future.html.nl: future.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o future.html.nl -oe iso-8859-1 future.adp
future.html.po: future.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o future.html.po -oe iso-8859-2 future.adp
future.html.sl: future.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o future.html.sl -oe iso-8859-2 future.adp
future.html.ru: future.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o future.html.ru -oe iso-8859-5 future.adp
future.html: future.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o future.html -oe ISO-8859-1 future.adp

future.var: gen_makefile.conf
	echo > future.var
	echo 'URI: future.html.bg' >> future.var
	echo 'Content-language: bg' >> future.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> future.var
	echo >> future.var
	echo 'URI: future.html.en' >> future.var
	echo 'Content-language: en' >> future.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> future.var
	echo >> future.var
	echo 'URI: future.html.fr' >> future.var
	echo 'Content-language: fr' >> future.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> future.var
	echo >> future.var
	echo 'URI: future.html.id' >> future.var
	echo 'Content-language: id' >> future.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> future.var
	echo >> future.var
	echo 'URI: future.html.it' >> future.var
	echo 'Content-language: it' >> future.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> future.var
	echo >> future.var
	echo 'URI: future.html.nl' >> future.var
	echo 'Content-language: nl' >> future.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> future.var
	echo >> future.var
	echo 'URI: future.html.po' >> future.var
	echo 'Content-language: pl' >> future.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> future.var
	echo >> future.var
	echo 'URI: future.html.sl' >> future.var
	echo 'Content-language: sl' >> future.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> future.var
	echo >> future.var
	echo 'URI: future.html.ru' >> future.var
	echo 'Content-language: ru' >> future.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> future.var
	echo >> future.var
lang_howto.html.bg: lang_howto.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o lang_howto.html.bg -oe iso-8859-5 lang_howto.adp
lang_howto.html.en: lang_howto.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o lang_howto.html.en -oe iso-8859-1 lang_howto.adp
lang_howto.html.fr: lang_howto.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o lang_howto.html.fr -oe iso-8859-1 lang_howto.adp
lang_howto.html.id: lang_howto.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o lang_howto.html.id -oe iso-8859-1 lang_howto.adp
lang_howto.html.it: lang_howto.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o lang_howto.html.it -oe iso-8859-1 lang_howto.adp
lang_howto.html.nl: lang_howto.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o lang_howto.html.nl -oe iso-8859-1 lang_howto.adp
lang_howto.html.po: lang_howto.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o lang_howto.html.po -oe iso-8859-2 lang_howto.adp
lang_howto.html.sl: lang_howto.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o lang_howto.html.sl -oe iso-8859-2 lang_howto.adp
lang_howto.html.ru: lang_howto.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o lang_howto.html.ru -oe iso-8859-5 lang_howto.adp
lang_howto.html: lang_howto.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o lang_howto.html -oe ISO-8859-1 lang_howto.adp

lang_howto.var: gen_makefile.conf
	echo > lang_howto.var
	echo 'URI: lang_howto.html.bg' >> lang_howto.var
	echo 'Content-language: bg' >> lang_howto.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> lang_howto.var
	echo >> lang_howto.var
	echo 'URI: lang_howto.html.en' >> lang_howto.var
	echo 'Content-language: en' >> lang_howto.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> lang_howto.var
	echo >> lang_howto.var
	echo 'URI: lang_howto.html.fr' >> lang_howto.var
	echo 'Content-language: fr' >> lang_howto.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> lang_howto.var
	echo >> lang_howto.var
	echo 'URI: lang_howto.html.id' >> lang_howto.var
	echo 'Content-language: id' >> lang_howto.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> lang_howto.var
	echo >> lang_howto.var
	echo 'URI: lang_howto.html.it' >> lang_howto.var
	echo 'Content-language: it' >> lang_howto.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> lang_howto.var
	echo >> lang_howto.var
	echo 'URI: lang_howto.html.nl' >> lang_howto.var
	echo 'Content-language: nl' >> lang_howto.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> lang_howto.var
	echo >> lang_howto.var
	echo 'URI: lang_howto.html.po' >> lang_howto.var
	echo 'Content-language: pl' >> lang_howto.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> lang_howto.var
	echo >> lang_howto.var
	echo 'URI: lang_howto.html.sl' >> lang_howto.var
	echo 'Content-language: sl' >> lang_howto.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> lang_howto.var
	echo >> lang_howto.var
	echo 'URI: lang_howto.html.ru' >> lang_howto.var
	echo 'Content-language: ru' >> lang_howto.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> lang_howto.var
	echo >> lang_howto.var
links.html.bg: links.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o links.html.bg -oe iso-8859-5 links.adp
links.html.en: links.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o links.html.en -oe iso-8859-1 links.adp
links.html.fr: links.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o links.html.fr -oe iso-8859-1 links.adp
links.html.id: links.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o links.html.id -oe iso-8859-1 links.adp
links.html.it: links.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o links.html.it -oe iso-8859-1 links.adp
links.html.nl: links.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o links.html.nl -oe iso-8859-1 links.adp
links.html.po: links.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o links.html.po -oe iso-8859-2 links.adp
links.html.sl: links.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o links.html.sl -oe iso-8859-2 links.adp
links.html.ru: links.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o links.html.ru -oe iso-8859-5 links.adp
links.html: links.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o links.html -oe ISO-8859-1 links.adp

links.var: gen_makefile.conf
	echo > links.var
	echo 'URI: links.html.bg' >> links.var
	echo 'Content-language: bg' >> links.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> links.var
	echo >> links.var
	echo 'URI: links.html.en' >> links.var
	echo 'Content-language: en' >> links.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> links.var
	echo >> links.var
	echo 'URI: links.html.fr' >> links.var
	echo 'Content-language: fr' >> links.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> links.var
	echo >> links.var
	echo 'URI: links.html.id' >> links.var
	echo 'Content-language: id' >> links.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> links.var
	echo >> links.var
	echo 'URI: links.html.it' >> links.var
	echo 'Content-language: it' >> links.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> links.var
	echo >> links.var
	echo 'URI: links.html.nl' >> links.var
	echo 'Content-language: nl' >> links.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> links.var
	echo >> links.var
	echo 'URI: links.html.po' >> links.var
	echo 'Content-language: pl' >> links.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> links.var
	echo >> links.var
	echo 'URI: links.html.sl' >> links.var
	echo 'Content-language: sl' >> links.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> links.var
	echo >> links.var
	echo 'URI: links.html.ru' >> links.var
	echo 'Content-language: ru' >> links.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> links.var
	echo >> links.var
maillist.html.bg: maillist.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o maillist.html.bg -oe iso-8859-5 maillist.adp
maillist.html.en: maillist.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o maillist.html.en -oe iso-8859-1 maillist.adp
maillist.html.fr: maillist.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o maillist.html.fr -oe iso-8859-1 maillist.adp
maillist.html.id: maillist.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o maillist.html.id -oe iso-8859-1 maillist.adp
maillist.html.it: maillist.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o maillist.html.it -oe iso-8859-1 maillist.adp
maillist.html.nl: maillist.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o maillist.html.nl -oe iso-8859-1 maillist.adp
maillist.html.po: maillist.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o maillist.html.po -oe iso-8859-2 maillist.adp
maillist.html.sl: maillist.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o maillist.html.sl -oe iso-8859-2 maillist.adp
maillist.html.ru: maillist.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o maillist.html.ru -oe iso-8859-5 maillist.adp
maillist.html: maillist.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o maillist.html -oe ISO-8859-1 maillist.adp

maillist.var: gen_makefile.conf
	echo > maillist.var
	echo 'URI: maillist.html.bg' >> maillist.var
	echo 'Content-language: bg' >> maillist.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> maillist.var
	echo >> maillist.var
	echo 'URI: maillist.html.en' >> maillist.var
	echo 'Content-language: en' >> maillist.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> maillist.var
	echo >> maillist.var
	echo 'URI: maillist.html.fr' >> maillist.var
	echo 'Content-language: fr' >> maillist.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> maillist.var
	echo >> maillist.var
	echo 'URI: maillist.html.id' >> maillist.var
	echo 'Content-language: id' >> maillist.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> maillist.var
	echo >> maillist.var
	echo 'URI: maillist.html.it' >> maillist.var
	echo 'Content-language: it' >> maillist.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> maillist.var
	echo >> maillist.var
	echo 'URI: maillist.html.nl' >> maillist.var
	echo 'Content-language: nl' >> maillist.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> maillist.var
	echo >> maillist.var
	echo 'URI: maillist.html.po' >> maillist.var
	echo 'Content-language: pl' >> maillist.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> maillist.var
	echo >> maillist.var
	echo 'URI: maillist.html.sl' >> maillist.var
	echo 'Content-language: sl' >> maillist.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> maillist.var
	echo >> maillist.var
	echo 'URI: maillist.html.ru' >> maillist.var
	echo 'Content-language: ru' >> maillist.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> maillist.var
	echo >> maillist.var
mirrors.html.bg: mirrors.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o mirrors.html.bg -oe iso-8859-5 mirrors.adp
mirrors.html.en: mirrors.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o mirrors.html.en -oe iso-8859-1 mirrors.adp
mirrors.html.fr: mirrors.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o mirrors.html.fr -oe iso-8859-1 mirrors.adp
mirrors.html.id: mirrors.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o mirrors.html.id -oe iso-8859-1 mirrors.adp
mirrors.html.it: mirrors.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o mirrors.html.it -oe iso-8859-1 mirrors.adp
mirrors.html.nl: mirrors.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o mirrors.html.nl -oe iso-8859-1 mirrors.adp
mirrors.html.po: mirrors.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o mirrors.html.po -oe iso-8859-2 mirrors.adp
mirrors.html.sl: mirrors.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o mirrors.html.sl -oe iso-8859-2 mirrors.adp
mirrors.html.ru: mirrors.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o mirrors.html.ru -oe iso-8859-5 mirrors.adp
mirrors.html: mirrors.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o mirrors.html -oe ISO-8859-1 mirrors.adp

mirrors.var: gen_makefile.conf
	echo > mirrors.var
	echo 'URI: mirrors.html.bg' >> mirrors.var
	echo 'Content-language: bg' >> mirrors.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> mirrors.var
	echo >> mirrors.var
	echo 'URI: mirrors.html.en' >> mirrors.var
	echo 'Content-language: en' >> mirrors.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> mirrors.var
	echo >> mirrors.var
	echo 'URI: mirrors.html.fr' >> mirrors.var
	echo 'Content-language: fr' >> mirrors.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> mirrors.var
	echo >> mirrors.var
	echo 'URI: mirrors.html.id' >> mirrors.var
	echo 'Content-language: id' >> mirrors.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> mirrors.var
	echo >> mirrors.var
	echo 'URI: mirrors.html.it' >> mirrors.var
	echo 'Content-language: it' >> mirrors.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> mirrors.var
	echo >> mirrors.var
	echo 'URI: mirrors.html.nl' >> mirrors.var
	echo 'Content-language: nl' >> mirrors.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> mirrors.var
	echo >> mirrors.var
	echo 'URI: mirrors.html.po' >> mirrors.var
	echo 'Content-language: pl' >> mirrors.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> mirrors.var
	echo >> mirrors.var
	echo 'URI: mirrors.html.sl' >> mirrors.var
	echo 'Content-language: sl' >> mirrors.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> mirrors.var
	echo >> mirrors.var
	echo 'URI: mirrors.html.ru' >> mirrors.var
	echo 'Content-language: ru' >> mirrors.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> mirrors.var
	echo >> mirrors.var
moreinfo.html.bg: moreinfo.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o moreinfo.html.bg -oe iso-8859-5 moreinfo.adp
moreinfo.html.en: moreinfo.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o moreinfo.html.en -oe iso-8859-1 moreinfo.adp
moreinfo.html.fr: moreinfo.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o moreinfo.html.fr -oe iso-8859-1 moreinfo.adp
moreinfo.html.id: moreinfo.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o moreinfo.html.id -oe iso-8859-1 moreinfo.adp
moreinfo.html.it: moreinfo.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o moreinfo.html.it -oe iso-8859-1 moreinfo.adp
moreinfo.html.nl: moreinfo.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o moreinfo.html.nl -oe iso-8859-1 moreinfo.adp
moreinfo.html.po: moreinfo.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o moreinfo.html.po -oe iso-8859-2 moreinfo.adp
moreinfo.html.sl: moreinfo.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o moreinfo.html.sl -oe iso-8859-2 moreinfo.adp
moreinfo.html.ru: moreinfo.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o moreinfo.html.ru -oe iso-8859-5 moreinfo.adp
moreinfo.html: moreinfo.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o moreinfo.html -oe ISO-8859-1 moreinfo.adp

moreinfo.var: gen_makefile.conf
	echo > moreinfo.var
	echo 'URI: moreinfo.html.bg' >> moreinfo.var
	echo 'Content-language: bg' >> moreinfo.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> moreinfo.var
	echo >> moreinfo.var
	echo 'URI: moreinfo.html.en' >> moreinfo.var
	echo 'Content-language: en' >> moreinfo.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> moreinfo.var
	echo >> moreinfo.var
	echo 'URI: moreinfo.html.fr' >> moreinfo.var
	echo 'Content-language: fr' >> moreinfo.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> moreinfo.var
	echo >> moreinfo.var
	echo 'URI: moreinfo.html.id' >> moreinfo.var
	echo 'Content-language: id' >> moreinfo.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> moreinfo.var
	echo >> moreinfo.var
	echo 'URI: moreinfo.html.it' >> moreinfo.var
	echo 'Content-language: it' >> moreinfo.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> moreinfo.var
	echo >> moreinfo.var
	echo 'URI: moreinfo.html.nl' >> moreinfo.var
	echo 'Content-language: nl' >> moreinfo.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> moreinfo.var
	echo >> moreinfo.var
	echo 'URI: moreinfo.html.po' >> moreinfo.var
	echo 'Content-language: pl' >> moreinfo.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> moreinfo.var
	echo >> moreinfo.var
	echo 'URI: moreinfo.html.sl' >> moreinfo.var
	echo 'Content-language: sl' >> moreinfo.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> moreinfo.var
	echo >> moreinfo.var
	echo 'URI: moreinfo.html.ru' >> moreinfo.var
	echo 'Content-language: ru' >> moreinfo.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> moreinfo.var
	echo >> moreinfo.var
news.html.bg: news.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o news.html.bg -oe iso-8859-5 news.adp
news.html.en: news.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o news.html.en -oe iso-8859-1 news.adp
news.html.fr: news.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o news.html.fr -oe iso-8859-1 news.adp
news.html.id: news.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o news.html.id -oe iso-8859-1 news.adp
news.html.it: news.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o news.html.it -oe iso-8859-1 news.adp
news.html.nl: news.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o news.html.nl -oe iso-8859-1 news.adp
news.html.po: news.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o news.html.po -oe iso-8859-2 news.adp
news.html.sl: news.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o news.html.sl -oe iso-8859-2 news.adp
news.html.ru: news.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o news.html.ru -oe iso-8859-5 news.adp
news.html: news.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o news.html -oe ISO-8859-1 news.adp

news.var: gen_makefile.conf
	echo > news.var
	echo 'URI: news.html.bg' >> news.var
	echo 'Content-language: bg' >> news.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> news.var
	echo >> news.var
	echo 'URI: news.html.en' >> news.var
	echo 'Content-language: en' >> news.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> news.var
	echo >> news.var
	echo 'URI: news.html.fr' >> news.var
	echo 'Content-language: fr' >> news.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> news.var
	echo >> news.var
	echo 'URI: news.html.id' >> news.var
	echo 'Content-language: id' >> news.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> news.var
	echo >> news.var
	echo 'URI: news.html.it' >> news.var
	echo 'Content-language: it' >> news.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> news.var
	echo >> news.var
	echo 'URI: news.html.nl' >> news.var
	echo 'Content-language: nl' >> news.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> news.var
	echo >> news.var
	echo 'URI: news.html.po' >> news.var
	echo 'Content-language: pl' >> news.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> news.var
	echo >> news.var
	echo 'URI: news.html.sl' >> news.var
	echo 'Content-language: sl' >> news.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> news.var
	echo >> news.var
	echo 'URI: news.html.ru' >> news.var
	echo 'Content-language: ru' >> news.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> news.var
	echo >> news.var
port.html.bg: port.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o port.html.bg -oe iso-8859-5 port.adp
port.html.en: port.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o port.html.en -oe iso-8859-1 port.adp
port.html.fr: port.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o port.html.fr -oe iso-8859-1 port.adp
port.html.id: port.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o port.html.id -oe iso-8859-1 port.adp
port.html.it: port.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o port.html.it -oe iso-8859-1 port.adp
port.html.nl: port.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o port.html.nl -oe iso-8859-1 port.adp
port.html.po: port.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o port.html.po -oe iso-8859-2 port.adp
port.html.sl: port.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o port.html.sl -oe iso-8859-2 port.adp
port.html.ru: port.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o port.html.ru -oe iso-8859-5 port.adp
port.html: port.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o port.html -oe ISO-8859-1 port.adp

port.var: gen_makefile.conf
	echo > port.var
	echo 'URI: port.html.bg' >> port.var
	echo 'Content-language: bg' >> port.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> port.var
	echo >> port.var
	echo 'URI: port.html.en' >> port.var
	echo 'Content-language: en' >> port.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> port.var
	echo >> port.var
	echo 'URI: port.html.fr' >> port.var
	echo 'Content-language: fr' >> port.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> port.var
	echo >> port.var
	echo 'URI: port.html.id' >> port.var
	echo 'Content-language: id' >> port.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> port.var
	echo >> port.var
	echo 'URI: port.html.it' >> port.var
	echo 'Content-language: it' >> port.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> port.var
	echo >> port.var
	echo 'URI: port.html.nl' >> port.var
	echo 'Content-language: nl' >> port.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> port.var
	echo >> port.var
	echo 'URI: port.html.po' >> port.var
	echo 'Content-language: pl' >> port.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> port.var
	echo >> port.var
	echo 'URI: port.html.sl' >> port.var
	echo 'Content-language: sl' >> port.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> port.var
	echo >> port.var
	echo 'URI: port.html.ru' >> port.var
	echo 'Content-language: ru' >> port.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> port.var
	echo >> port.var
prog.html.bg: prog.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o prog.html.bg -oe iso-8859-5 prog.adp
prog.html.en: prog.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o prog.html.en -oe iso-8859-1 prog.adp
prog.html.fr: prog.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o prog.html.fr -oe iso-8859-1 prog.adp
prog.html.id: prog.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o prog.html.id -oe iso-8859-1 prog.adp
prog.html.it: prog.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o prog.html.it -oe iso-8859-1 prog.adp
prog.html.nl: prog.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o prog.html.nl -oe iso-8859-1 prog.adp
prog.html.po: prog.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o prog.html.po -oe iso-8859-2 prog.adp
prog.html.sl: prog.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o prog.html.sl -oe iso-8859-2 prog.adp
prog.html.ru: prog.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o prog.html.ru -oe iso-8859-5 prog.adp
prog.html: prog.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o prog.html -oe ISO-8859-1 prog.adp

prog.var: gen_makefile.conf
	echo > prog.var
	echo 'URI: prog.html.bg' >> prog.var
	echo 'Content-language: bg' >> prog.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> prog.var
	echo >> prog.var
	echo 'URI: prog.html.en' >> prog.var
	echo 'Content-language: en' >> prog.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> prog.var
	echo >> prog.var
	echo 'URI: prog.html.fr' >> prog.var
	echo 'Content-language: fr' >> prog.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> prog.var
	echo >> prog.var
	echo 'URI: prog.html.id' >> prog.var
	echo 'Content-language: id' >> prog.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> prog.var
	echo >> prog.var
	echo 'URI: prog.html.it' >> prog.var
	echo 'Content-language: it' >> prog.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> prog.var
	echo >> prog.var
	echo 'URI: prog.html.nl' >> prog.var
	echo 'Content-language: nl' >> prog.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> prog.var
	echo >> prog.var
	echo 'URI: prog.html.po' >> prog.var
	echo 'Content-language: pl' >> prog.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> prog.var
	echo >> prog.var
	echo 'URI: prog.html.sl' >> prog.var
	echo 'Content-language: sl' >> prog.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> prog.var
	echo >> prog.var
	echo 'URI: prog.html.ru' >> prog.var
	echo 'Content-language: ru' >> prog.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> prog.var
	echo >> prog.var
probs.html.bg: probs.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o probs.html.bg -oe iso-8859-5 probs.adp
probs.html.en: probs.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o probs.html.en -oe iso-8859-1 probs.adp
probs.html.fr: probs.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o probs.html.fr -oe iso-8859-1 probs.adp
probs.html.id: probs.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o probs.html.id -oe iso-8859-1 probs.adp
probs.html.it: probs.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o probs.html.it -oe iso-8859-1 probs.adp
probs.html.nl: probs.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o probs.html.nl -oe iso-8859-1 probs.adp
probs.html.po: probs.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o probs.html.po -oe iso-8859-2 probs.adp
probs.html.sl: probs.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o probs.html.sl -oe iso-8859-2 probs.adp
probs.html.ru: probs.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o probs.html.ru -oe iso-8859-5 probs.adp
probs.html: probs.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o probs.html -oe ISO-8859-1 probs.adp

probs.var: gen_makefile.conf
	echo > probs.var
	echo 'URI: probs.html.bg' >> probs.var
	echo 'Content-language: bg' >> probs.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> probs.var
	echo >> probs.var
	echo 'URI: probs.html.en' >> probs.var
	echo 'Content-language: en' >> probs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> probs.var
	echo >> probs.var
	echo 'URI: probs.html.fr' >> probs.var
	echo 'Content-language: fr' >> probs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> probs.var
	echo >> probs.var
	echo 'URI: probs.html.id' >> probs.var
	echo 'Content-language: id' >> probs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> probs.var
	echo >> probs.var
	echo 'URI: probs.html.it' >> probs.var
	echo 'Content-language: it' >> probs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> probs.var
	echo >> probs.var
	echo 'URI: probs.html.nl' >> probs.var
	echo 'Content-language: nl' >> probs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> probs.var
	echo >> probs.var
	echo 'URI: probs.html.po' >> probs.var
	echo 'Content-language: pl' >> probs.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> probs.var
	echo >> probs.var
	echo 'URI: probs.html.sl' >> probs.var
	echo 'Content-language: sl' >> probs.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> probs.var
	echo >> probs.var
	echo 'URI: probs.html.ru' >> probs.var
	echo 'Content-language: ru' >> probs.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> probs.var
	echo >> probs.var
units.html.bg: units.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o units.html.bg -oe iso-8859-5 units.adp
units.html.en: units.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o units.html.en -oe iso-8859-1 units.adp
units.html.fr: units.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o units.html.fr -oe iso-8859-1 units.adp
units.html.id: units.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o units.html.id -oe iso-8859-1 units.adp
units.html.it: units.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o units.html.it -oe iso-8859-1 units.adp
units.html.nl: units.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o units.html.nl -oe iso-8859-1 units.adp
units.html.po: units.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o units.html.po -oe iso-8859-2 units.adp
units.html.sl: units.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o units.html.sl -oe iso-8859-2 units.adp
units.html.ru: units.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o units.html.ru -oe iso-8859-5 units.adp
units.html: units.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o units.html -oe ISO-8859-1 units.adp

units.var: gen_makefile.conf
	echo > units.var
	echo 'URI: units.html.bg' >> units.var
	echo 'Content-language: bg' >> units.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> units.var
	echo >> units.var
	echo 'URI: units.html.en' >> units.var
	echo 'Content-language: en' >> units.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> units.var
	echo >> units.var
	echo 'URI: units.html.fr' >> units.var
	echo 'Content-language: fr' >> units.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> units.var
	echo >> units.var
	echo 'URI: units.html.id' >> units.var
	echo 'Content-language: id' >> units.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> units.var
	echo >> units.var
	echo 'URI: units.html.it' >> units.var
	echo 'Content-language: it' >> units.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> units.var
	echo >> units.var
	echo 'URI: units.html.nl' >> units.var
	echo 'Content-language: nl' >> units.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> units.var
	echo >> units.var
	echo 'URI: units.html.po' >> units.var
	echo 'Content-language: pl' >> units.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> units.var
	echo >> units.var
	echo 'URI: units.html.sl' >> units.var
	echo 'Content-language: sl' >> units.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> units.var
	echo >> units.var
	echo 'URI: units.html.ru' >> units.var
	echo 'Content-language: ru' >> units.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> units.var
	echo >> units.var
unitsrtl.html.bg: unitsrtl.adp default-master.adp site-master.adp ./catalog.bg.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.bg.adp -l bg_BG -m default-master.adp -o unitsrtl.html.bg -oe iso-8859-5 unitsrtl.adp
unitsrtl.html.en: unitsrtl.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.en.adp -l en_US -m default-master.adp -o unitsrtl.html.en -oe iso-8859-1 unitsrtl.adp
unitsrtl.html.fr: unitsrtl.adp default-master.adp site-master.adp ./catalog.fr.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.fr.adp -l fr_FR -m default-master.adp -o unitsrtl.html.fr -oe iso-8859-1 unitsrtl.adp
unitsrtl.html.id: unitsrtl.adp default-master.adp site-master.adp ./catalog.id.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.id.adp -l id_ID -m default-master.adp -o unitsrtl.html.id -oe iso-8859-1 unitsrtl.adp
unitsrtl.html.it: unitsrtl.adp default-master.adp site-master.adp ./catalog.it.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.it.adp -l it_IT -m default-master.adp -o unitsrtl.html.it -oe iso-8859-1 unitsrtl.adp
unitsrtl.html.nl: unitsrtl.adp default-master.adp site-master.adp ./catalog.nl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.nl.adp -l nl_NL -m default-master.adp -o unitsrtl.html.nl -oe iso-8859-1 unitsrtl.adp
unitsrtl.html.po: unitsrtl.adp default-master.adp site-master.adp ./catalog.pl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.pl.adp -l pl_PL -m default-master.adp -o unitsrtl.html.po -oe iso-8859-2 unitsrtl.adp
unitsrtl.html.sl: unitsrtl.adp default-master.adp site-master.adp ./catalog.sl.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.sl.adp -l sl_SI -m default-master.adp -o unitsrtl.html.sl -oe iso-8859-2 unitsrtl.adp
unitsrtl.html.ru: unitsrtl.adp default-master.adp site-master.adp ./catalog.ru.adp
	./adp2html -p x=$(URL_EXTENSION) -c ./catalog.ru.adp -l ru_RU -m default-master.adp -o unitsrtl.html.ru -oe iso-8859-5 unitsrtl.adp
unitsrtl.html: unitsrtl.adp default-master.adp site-master.adp ./catalog.en.adp
	./adp2html -p x=$(URL_EXTENSION_EN) -c ./catalog.en.adp -l en_US -m default-master.adp -o unitsrtl.html -oe ISO-8859-1 unitsrtl.adp

unitsrtl.var: gen_makefile.conf
	echo > unitsrtl.var
	echo 'URI: unitsrtl.html.bg' >> unitsrtl.var
	echo 'Content-language: bg' >> unitsrtl.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> unitsrtl.var
	echo >> unitsrtl.var
	echo 'URI: unitsrtl.html.en' >> unitsrtl.var
	echo 'Content-language: en' >> unitsrtl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> unitsrtl.var
	echo >> unitsrtl.var
	echo 'URI: unitsrtl.html.fr' >> unitsrtl.var
	echo 'Content-language: fr' >> unitsrtl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> unitsrtl.var
	echo >> unitsrtl.var
	echo 'URI: unitsrtl.html.id' >> unitsrtl.var
	echo 'Content-language: id' >> unitsrtl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> unitsrtl.var
	echo >> unitsrtl.var
	echo 'URI: unitsrtl.html.it' >> unitsrtl.var
	echo 'Content-language: it' >> unitsrtl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> unitsrtl.var
	echo >> unitsrtl.var
	echo 'URI: unitsrtl.html.nl' >> unitsrtl.var
	echo 'Content-language: nl' >> unitsrtl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> unitsrtl.var
	echo >> unitsrtl.var
	echo 'URI: unitsrtl.html.po' >> unitsrtl.var
	echo 'Content-language: pl' >> unitsrtl.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> unitsrtl.var
	echo >> unitsrtl.var
	echo 'URI: unitsrtl.html.sl' >> unitsrtl.var
	echo 'Content-language: sl' >> unitsrtl.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> unitsrtl.var
	echo >> unitsrtl.var
	echo 'URI: unitsrtl.html.ru' >> unitsrtl.var
	echo 'Content-language: ru' >> unitsrtl.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> unitsrtl.var
	echo >> unitsrtl.var

mirrors.dat:
	echo -e 'name\tnamel\turl' > mirrors.dat
	echo -e 'Australia\taustralia\thttp://fpc.planetmirror.com/pub/fpc/' >> mirrors.dat
	echo -e 'Austria\taustria\tftp://gd.tuwien.ac.at/languages/pascal/fpc/' >> mirrors.dat
	echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Israel\tisrael\thttp://mirror.mirimar.net/freepascal/' >> mirrors.dat
	echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat
	echo -e 'Norway\tnorway\tftp://ftp.no.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Russia\trussia\tftp://ftp.chg.ru/pub/lang/pascal/fpc/' >> mirrors.dat
	echo -e 'ftp.freepascal.org\tftp.freepascal.org\tftp://ftp.freepascal.org/pub/fpc/' >> mirrors.dat

all_pages: mirrors.dat aboutus.html.bg aboutus.html.en aboutus.html.fr aboutus.html.id aboutus.html.it aboutus.html.nl aboutus.html.po aboutus.html.sl aboutus.html.ru aboutus.var advantage.html.bg advantage.html.en advantage.html.fr advantage.html.id advantage.html.it advantage.html.nl advantage.html.po advantage.html.sl advantage.html.ru advantage.var credits.html.bg credits.html.en credits.html.fr credits.html.id credits.html.it credits.html.nl credits.html.po credits.html.sl credits.html.ru credits.var develop.html.bg develop.html.en develop.html.fr develop.html.id develop.html.it develop.html.nl develop.html.po develop.html.sl develop.html.ru develop.var download.html.bg download.html.en download.html.fr download.html.id download.html.it download.html.nl download.html.po download.html.sl download.html.ru download.var docs.html.bg docs.html.en docs.html.fr docs.html.id docs.html.it docs.html.nl docs.html.po docs.html.sl docs.html.ru docs.var faq.html.bg faq.html.en faq.html.fr faq.html.id faq.html.it faq.html.nl faq.html.po faq.html.sl faq.html.ru faq.var fpc.html.bg fpc.html.en fpc.html.fr fpc.html.id fpc.html.it fpc.html.nl fpc.html.po fpc.html.sl fpc.html.ru fpc.var fpcmac.html.bg fpcmac.html.en fpcmac.html.fr fpcmac.html.id fpcmac.html.it fpcmac.html.nl fpcmac.html.po fpcmac.html.sl fpcmac.html.ru fpcmac.var future.html.bg future.html.en future.html.fr future.html.id future.html.it future.html.nl future.html.po future.html.sl future.html.ru future.var lang_howto.html.bg lang_howto.html.en lang_howto.html.fr lang_howto.html.id lang_howto.html.it lang_howto.html.nl lang_howto.html.po lang_howto.html.sl lang_howto.html.ru lang_howto.var links.html.bg links.html.en links.html.fr links.html.id links.html.it links.html.nl links.html.po links.html.sl links.html.ru links.var maillist.html.bg maillist.html.en maillist.html.fr maillist.html.id maillist.html.it maillist.html.nl maillist.html.po maillist.html.sl maillist.html.ru maillist.var mirrors.html.bg mirrors.html.en mirrors.html.fr mirrors.html.id mirrors.html.it mirrors.html.nl mirrors.html.po mirrors.html.sl mirrors.html.ru mirrors.var moreinfo.html.bg moreinfo.html.en moreinfo.html.fr moreinfo.html.id moreinfo.html.it moreinfo.html.nl moreinfo.html.po moreinfo.html.sl moreinfo.html.ru moreinfo.var news.html.bg news.html.en news.html.fr news.html.id news.html.it news.html.nl news.html.po news.html.sl news.html.ru news.var port.html.bg port.html.en port.html.fr port.html.id port.html.it port.html.nl port.html.po port.html.sl port.html.ru port.var prog.html.bg prog.html.en prog.html.fr prog.html.id prog.html.it prog.html.nl prog.html.po prog.html.sl prog.html.ru prog.var probs.html.bg probs.html.en probs.html.fr probs.html.id probs.html.it probs.html.nl probs.html.po probs.html.sl probs.html.ru probs.var units.html.bg units.html.en units.html.fr units.html.id units.html.it units.html.nl units.html.po units.html.sl units.html.ru units.var unitsrtl.html.bg unitsrtl.html.en unitsrtl.html.fr unitsrtl.html.id unitsrtl.html.it unitsrtl.html.nl unitsrtl.html.po unitsrtl.html.sl unitsrtl.html.ru unitsrtl.var
all_en_pages: mirrors.dat aboutus.html advantage.html credits.html develop.html download.html docs.html faq.html fpc.html fpcmac.html future.html lang_howto.html links.html maillist.html mirrors.html moreinfo.html news.html port.html prog.html probs.html units.html unitsrtl.html


#adp2html tool
$(ADP2HTML): adp2html.pp
	$(PP) $(OPT) -Xs adp2html.pp

# down subdir
down_all:
	$(MAKE) -C down all

fcl_all:
	$(MAKE) -C fcl all

tools_all:
	$(MAKE) -C tools all

down_all_en:
	$(MAKE) -C down english

fcl_all_en:
	$(MAKE) -C fcl english

tools_all_en:
	$(MAKE) -C tools english

# clean
clean: clean_down clean_fcl clean_tools
	rm -f *.html.* *.var mirrors.dat adp2html

clean_down:
	$(MAKE) -C down clean

clean_fcl:
	$(MAKE) -C fcl clean

clean_tools:
	$(MAKE) -C tools clean

# archives (unix only)
tar: all
	tar -czf htmls.tar.gz `find -name '*.html' -or -name '*.html.*' -or -name '*.var' -or -name '*.gif' -or -name '*.png' -or -name '*.css' -or -name '*.jpg'` $(OTHERFILES)

zip: all
	zip htmls.zip `find -name '*.html' -or -name '*.html.*' -or -name '*.var' -or -name '*.gif' -or -name '*.png' -or -name '*.css' -or -name '*.jpg'` $(OTHERFILES)

english_tar: english
	tar -czf htmls.tar.gz `find -name '*.html' -or -name '*.html.*' -or -name '*.var' -or -name '*.gif' -or -name '*.png' -or -name '*.css' -or -name '*.jpg'` $(OTHERFILES)

english_zip: english
	zip htmls.zip `find -name '*.html' -or -name '*.html.*' -or -name '*.var' -or -name '*.gif' -or -name '*.png' -or -name '*.css' -or -name '*.jpg'` $(OTHERFILES)

