
URL_EXTENSION=.var

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
all: $(ADP2HTML) all_pages down_all tools_all
aboutus.html.de: aboutus.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o aboutus.html.de -oe iso-8859-1 aboutus.adp
aboutus.html.en: aboutus.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o aboutus.html.en -oe iso-8859-1 aboutus.adp
aboutus.html.fr: aboutus.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o aboutus.html.fr -oe iso-8859-1 aboutus.adp
aboutus.html.id: aboutus.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o aboutus.html.id -oe iso-8859-1 aboutus.adp
aboutus.html.it: aboutus.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o aboutus.html.it -oe iso-8859-1 aboutus.adp
aboutus.html.nl: aboutus.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o aboutus.html.nl -oe iso-8859-1 aboutus.adp
aboutus.html.pl: aboutus.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o aboutus.html.pl -oe iso-8859-2 aboutus.adp
aboutus.html.ru: aboutus.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o aboutus.html.ru -oe iso-8859-5 aboutus.adp

aboutus.var: gen_makefile.conf
	echo > aboutus.var
	echo 'URI: aboutus.html.de' >> aboutus.var
	echo 'Content-language: de' >> aboutus.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> aboutus.var
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
	echo 'URI: aboutus.html.pl' >> aboutus.var
	echo 'Content-language: pl' >> aboutus.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> aboutus.var
	echo >> aboutus.var
	echo 'URI: aboutus.html.ru' >> aboutus.var
	echo 'Content-language: ru' >> aboutus.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> aboutus.var
	echo >> aboutus.var
advantage.html.de: advantage.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o advantage.html.de -oe iso-8859-1 advantage.adp
advantage.html.en: advantage.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o advantage.html.en -oe iso-8859-1 advantage.adp
advantage.html.fr: advantage.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o advantage.html.fr -oe iso-8859-1 advantage.adp
advantage.html.id: advantage.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o advantage.html.id -oe iso-8859-1 advantage.adp
advantage.html.it: advantage.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o advantage.html.it -oe iso-8859-1 advantage.adp
advantage.html.nl: advantage.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o advantage.html.nl -oe iso-8859-1 advantage.adp
advantage.html.pl: advantage.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o advantage.html.pl -oe iso-8859-2 advantage.adp
advantage.html.ru: advantage.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o advantage.html.ru -oe iso-8859-5 advantage.adp

advantage.var: gen_makefile.conf
	echo > advantage.var
	echo 'URI: advantage.html.de' >> advantage.var
	echo 'Content-language: de' >> advantage.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> advantage.var
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
	echo 'URI: advantage.html.pl' >> advantage.var
	echo 'Content-language: pl' >> advantage.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> advantage.var
	echo >> advantage.var
	echo 'URI: advantage.html.ru' >> advantage.var
	echo 'Content-language: ru' >> advantage.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> advantage.var
	echo >> advantage.var
credits.html.de: credits.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o credits.html.de -oe iso-8859-1 credits.adp
credits.html.en: credits.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o credits.html.en -oe iso-8859-1 credits.adp
credits.html.fr: credits.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o credits.html.fr -oe iso-8859-1 credits.adp
credits.html.id: credits.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o credits.html.id -oe iso-8859-1 credits.adp
credits.html.it: credits.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o credits.html.it -oe iso-8859-1 credits.adp
credits.html.nl: credits.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o credits.html.nl -oe iso-8859-1 credits.adp
credits.html.pl: credits.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o credits.html.pl -oe iso-8859-2 credits.adp
credits.html.ru: credits.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o credits.html.ru -oe iso-8859-5 credits.adp

credits.var: gen_makefile.conf
	echo > credits.var
	echo 'URI: credits.html.de' >> credits.var
	echo 'Content-language: de' >> credits.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> credits.var
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
	echo 'URI: credits.html.pl' >> credits.var
	echo 'Content-language: pl' >> credits.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> credits.var
	echo >> credits.var
	echo 'URI: credits.html.ru' >> credits.var
	echo 'Content-language: ru' >> credits.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> credits.var
	echo >> credits.var
develop.html.de: develop.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o develop.html.de -oe iso-8859-1 develop.adp
develop.html.en: develop.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o develop.html.en -oe iso-8859-1 develop.adp
develop.html.fr: develop.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o develop.html.fr -oe iso-8859-1 develop.adp
develop.html.id: develop.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o develop.html.id -oe iso-8859-1 develop.adp
develop.html.it: develop.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o develop.html.it -oe iso-8859-1 develop.adp
develop.html.nl: develop.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o develop.html.nl -oe iso-8859-1 develop.adp
develop.html.pl: develop.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o develop.html.pl -oe iso-8859-2 develop.adp
develop.html.ru: develop.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o develop.html.ru -oe iso-8859-5 develop.adp

develop.var: gen_makefile.conf
	echo > develop.var
	echo 'URI: develop.html.de' >> develop.var
	echo 'Content-language: de' >> develop.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> develop.var
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
	echo 'URI: develop.html.pl' >> develop.var
	echo 'Content-language: pl' >> develop.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> develop.var
	echo >> develop.var
	echo 'URI: develop.html.ru' >> develop.var
	echo 'Content-language: ru' >> develop.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> develop.var
	echo >> develop.var
download.html.de: download.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o download.html.de -oe iso-8859-1 download.adp
download.html.en: download.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o download.html.en -oe iso-8859-1 download.adp
download.html.fr: download.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o download.html.fr -oe iso-8859-1 download.adp
download.html.id: download.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o download.html.id -oe iso-8859-1 download.adp
download.html.it: download.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o download.html.it -oe iso-8859-1 download.adp
download.html.nl: download.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o download.html.nl -oe iso-8859-1 download.adp
download.html.pl: download.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o download.html.pl -oe iso-8859-2 download.adp
download.html.ru: download.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o download.html.ru -oe iso-8859-5 download.adp

download.var: gen_makefile.conf
	echo > download.var
	echo 'URI: download.html.de' >> download.var
	echo 'Content-language: de' >> download.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> download.var
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
	echo 'URI: download.html.pl' >> download.var
	echo 'Content-language: pl' >> download.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> download.var
	echo >> download.var
	echo 'URI: download.html.ru' >> download.var
	echo 'Content-language: ru' >> download.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> download.var
	echo >> download.var
docs.html.de: docs.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o docs.html.de -oe iso-8859-1 docs.adp
docs.html.en: docs.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o docs.html.en -oe iso-8859-1 docs.adp
docs.html.fr: docs.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o docs.html.fr -oe iso-8859-1 docs.adp
docs.html.id: docs.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o docs.html.id -oe iso-8859-1 docs.adp
docs.html.it: docs.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o docs.html.it -oe iso-8859-1 docs.adp
docs.html.nl: docs.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o docs.html.nl -oe iso-8859-1 docs.adp
docs.html.pl: docs.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o docs.html.pl -oe iso-8859-2 docs.adp
docs.html.ru: docs.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o docs.html.ru -oe iso-8859-5 docs.adp

docs.var: gen_makefile.conf
	echo > docs.var
	echo 'URI: docs.html.de' >> docs.var
	echo 'Content-language: de' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs.var
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
	echo 'URI: docs.html.pl' >> docs.var
	echo 'Content-language: pl' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.ru' >> docs.var
	echo 'Content-language: ru' >> docs.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs.var
	echo >> docs.var
faq.html.de: faq.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o faq.html.de -oe iso-8859-1 faq.adp
faq.html.en: faq.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o faq.html.en -oe iso-8859-1 faq.adp
faq.html.fr: faq.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o faq.html.fr -oe iso-8859-1 faq.adp
faq.html.id: faq.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o faq.html.id -oe iso-8859-1 faq.adp
faq.html.it: faq.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o faq.html.it -oe iso-8859-1 faq.adp
faq.html.nl: faq.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o faq.html.nl -oe iso-8859-1 faq.adp
faq.html.pl: faq.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o faq.html.pl -oe iso-8859-2 faq.adp
faq.html.ru: faq.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o faq.html.ru -oe iso-8859-5 faq.adp

faq.var: gen_makefile.conf
	echo > faq.var
	echo 'URI: faq.html.de' >> faq.var
	echo 'Content-language: de' >> faq.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> faq.var
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
	echo 'URI: faq.html.pl' >> faq.var
	echo 'Content-language: pl' >> faq.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> faq.var
	echo >> faq.var
	echo 'URI: faq.html.ru' >> faq.var
	echo 'Content-language: ru' >> faq.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> faq.var
	echo >> faq.var
fpc.html.de: fpc.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o fpc.html.de -oe iso-8859-1 fpc.adp
fpc.html.en: fpc.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o fpc.html.en -oe iso-8859-1 fpc.adp
fpc.html.fr: fpc.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o fpc.html.fr -oe iso-8859-1 fpc.adp
fpc.html.id: fpc.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o fpc.html.id -oe iso-8859-1 fpc.adp
fpc.html.it: fpc.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o fpc.html.it -oe iso-8859-1 fpc.adp
fpc.html.nl: fpc.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o fpc.html.nl -oe iso-8859-1 fpc.adp
fpc.html.pl: fpc.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o fpc.html.pl -oe iso-8859-2 fpc.adp
fpc.html.ru: fpc.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o fpc.html.ru -oe iso-8859-5 fpc.adp

fpc.var: gen_makefile.conf
	echo > fpc.var
	echo 'URI: fpc.html.de' >> fpc.var
	echo 'Content-language: de' >> fpc.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fpc.var
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
	echo 'URI: fpc.html.pl' >> fpc.var
	echo 'Content-language: pl' >> fpc.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> fpc.var
	echo >> fpc.var
	echo 'URI: fpc.html.ru' >> fpc.var
	echo 'Content-language: ru' >> fpc.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> fpc.var
	echo >> fpc.var
fpcmac.html.de: fpcmac.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o fpcmac.html.de -oe iso-8859-1 fpcmac.adp
fpcmac.html.en: fpcmac.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o fpcmac.html.en -oe iso-8859-1 fpcmac.adp
fpcmac.html.fr: fpcmac.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o fpcmac.html.fr -oe iso-8859-1 fpcmac.adp
fpcmac.html.id: fpcmac.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o fpcmac.html.id -oe iso-8859-1 fpcmac.adp
fpcmac.html.it: fpcmac.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o fpcmac.html.it -oe iso-8859-1 fpcmac.adp
fpcmac.html.nl: fpcmac.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o fpcmac.html.nl -oe iso-8859-1 fpcmac.adp
fpcmac.html.pl: fpcmac.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o fpcmac.html.pl -oe iso-8859-2 fpcmac.adp
fpcmac.html.ru: fpcmac.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o fpcmac.html.ru -oe iso-8859-5 fpcmac.adp

fpcmac.var: gen_makefile.conf
	echo > fpcmac.var
	echo 'URI: fpcmac.html.de' >> fpcmac.var
	echo 'Content-language: de' >> fpcmac.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> fpcmac.var
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
	echo 'URI: fpcmac.html.pl' >> fpcmac.var
	echo 'Content-language: pl' >> fpcmac.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> fpcmac.var
	echo >> fpcmac.var
	echo 'URI: fpcmac.html.ru' >> fpcmac.var
	echo 'Content-language: ru' >> fpcmac.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> fpcmac.var
	echo >> fpcmac.var
future.html.de: future.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o future.html.de -oe iso-8859-1 future.adp
future.html.en: future.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o future.html.en -oe iso-8859-1 future.adp
future.html.fr: future.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o future.html.fr -oe iso-8859-1 future.adp
future.html.id: future.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o future.html.id -oe iso-8859-1 future.adp
future.html.it: future.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o future.html.it -oe iso-8859-1 future.adp
future.html.nl: future.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o future.html.nl -oe iso-8859-1 future.adp
future.html.pl: future.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o future.html.pl -oe iso-8859-2 future.adp
future.html.ru: future.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o future.html.ru -oe iso-8859-5 future.adp

future.var: gen_makefile.conf
	echo > future.var
	echo 'URI: future.html.de' >> future.var
	echo 'Content-language: de' >> future.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> future.var
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
	echo 'URI: future.html.pl' >> future.var
	echo 'Content-language: pl' >> future.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> future.var
	echo >> future.var
	echo 'URI: future.html.ru' >> future.var
	echo 'Content-language: ru' >> future.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> future.var
	echo >> future.var
links.html.de: links.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o links.html.de -oe iso-8859-1 links.adp
links.html.en: links.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o links.html.en -oe iso-8859-1 links.adp
links.html.fr: links.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o links.html.fr -oe iso-8859-1 links.adp
links.html.id: links.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o links.html.id -oe iso-8859-1 links.adp
links.html.it: links.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o links.html.it -oe iso-8859-1 links.adp
links.html.nl: links.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o links.html.nl -oe iso-8859-1 links.adp
links.html.pl: links.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o links.html.pl -oe iso-8859-2 links.adp
links.html.ru: links.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o links.html.ru -oe iso-8859-5 links.adp

links.var: gen_makefile.conf
	echo > links.var
	echo 'URI: links.html.de' >> links.var
	echo 'Content-language: de' >> links.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> links.var
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
	echo 'URI: links.html.pl' >> links.var
	echo 'Content-language: pl' >> links.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> links.var
	echo >> links.var
	echo 'URI: links.html.ru' >> links.var
	echo 'Content-language: ru' >> links.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> links.var
	echo >> links.var
maillist.html.de: maillist.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o maillist.html.de -oe iso-8859-1 maillist.adp
maillist.html.en: maillist.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o maillist.html.en -oe iso-8859-1 maillist.adp
maillist.html.fr: maillist.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o maillist.html.fr -oe iso-8859-1 maillist.adp
maillist.html.id: maillist.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o maillist.html.id -oe iso-8859-1 maillist.adp
maillist.html.it: maillist.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o maillist.html.it -oe iso-8859-1 maillist.adp
maillist.html.nl: maillist.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o maillist.html.nl -oe iso-8859-1 maillist.adp
maillist.html.pl: maillist.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o maillist.html.pl -oe iso-8859-2 maillist.adp
maillist.html.ru: maillist.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o maillist.html.ru -oe iso-8859-5 maillist.adp

maillist.var: gen_makefile.conf
	echo > maillist.var
	echo 'URI: maillist.html.de' >> maillist.var
	echo 'Content-language: de' >> maillist.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> maillist.var
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
	echo 'URI: maillist.html.pl' >> maillist.var
	echo 'Content-language: pl' >> maillist.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> maillist.var
	echo >> maillist.var
	echo 'URI: maillist.html.ru' >> maillist.var
	echo 'Content-language: ru' >> maillist.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> maillist.var
	echo >> maillist.var
mirrors.html.de: mirrors.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o mirrors.html.de -oe iso-8859-1 mirrors.adp
mirrors.html.en: mirrors.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o mirrors.html.en -oe iso-8859-1 mirrors.adp
mirrors.html.fr: mirrors.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o mirrors.html.fr -oe iso-8859-1 mirrors.adp
mirrors.html.id: mirrors.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o mirrors.html.id -oe iso-8859-1 mirrors.adp
mirrors.html.it: mirrors.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o mirrors.html.it -oe iso-8859-1 mirrors.adp
mirrors.html.nl: mirrors.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o mirrors.html.nl -oe iso-8859-1 mirrors.adp
mirrors.html.pl: mirrors.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o mirrors.html.pl -oe iso-8859-2 mirrors.adp
mirrors.html.ru: mirrors.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o mirrors.html.ru -oe iso-8859-5 mirrors.adp

mirrors.var: gen_makefile.conf
	echo > mirrors.var
	echo 'URI: mirrors.html.de' >> mirrors.var
	echo 'Content-language: de' >> mirrors.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> mirrors.var
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
	echo 'URI: mirrors.html.pl' >> mirrors.var
	echo 'Content-language: pl' >> mirrors.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> mirrors.var
	echo >> mirrors.var
	echo 'URI: mirrors.html.ru' >> mirrors.var
	echo 'Content-language: ru' >> mirrors.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> mirrors.var
	echo >> mirrors.var
moreinfo.html.de: moreinfo.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o moreinfo.html.de -oe iso-8859-1 moreinfo.adp
moreinfo.html.en: moreinfo.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o moreinfo.html.en -oe iso-8859-1 moreinfo.adp
moreinfo.html.fr: moreinfo.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o moreinfo.html.fr -oe iso-8859-1 moreinfo.adp
moreinfo.html.id: moreinfo.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o moreinfo.html.id -oe iso-8859-1 moreinfo.adp
moreinfo.html.it: moreinfo.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o moreinfo.html.it -oe iso-8859-1 moreinfo.adp
moreinfo.html.nl: moreinfo.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o moreinfo.html.nl -oe iso-8859-1 moreinfo.adp
moreinfo.html.pl: moreinfo.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o moreinfo.html.pl -oe iso-8859-2 moreinfo.adp
moreinfo.html.ru: moreinfo.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o moreinfo.html.ru -oe iso-8859-5 moreinfo.adp

moreinfo.var: gen_makefile.conf
	echo > moreinfo.var
	echo 'URI: moreinfo.html.de' >> moreinfo.var
	echo 'Content-language: de' >> moreinfo.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> moreinfo.var
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
	echo 'URI: moreinfo.html.pl' >> moreinfo.var
	echo 'Content-language: pl' >> moreinfo.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> moreinfo.var
	echo >> moreinfo.var
	echo 'URI: moreinfo.html.ru' >> moreinfo.var
	echo 'Content-language: ru' >> moreinfo.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> moreinfo.var
	echo >> moreinfo.var
news.html.de: news.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o news.html.de -oe iso-8859-1 news.adp
news.html.en: news.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o news.html.en -oe iso-8859-1 news.adp
news.html.fr: news.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o news.html.fr -oe iso-8859-1 news.adp
news.html.id: news.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o news.html.id -oe iso-8859-1 news.adp
news.html.it: news.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o news.html.it -oe iso-8859-1 news.adp
news.html.nl: news.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o news.html.nl -oe iso-8859-1 news.adp
news.html.pl: news.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o news.html.pl -oe iso-8859-2 news.adp
news.html.ru: news.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o news.html.ru -oe iso-8859-5 news.adp

news.var: gen_makefile.conf
	echo > news.var
	echo 'URI: news.html.de' >> news.var
	echo 'Content-language: de' >> news.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> news.var
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
	echo 'URI: news.html.pl' >> news.var
	echo 'Content-language: pl' >> news.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> news.var
	echo >> news.var
	echo 'URI: news.html.ru' >> news.var
	echo 'Content-language: ru' >> news.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> news.var
	echo >> news.var
port.html.de: port.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o port.html.de -oe iso-8859-1 port.adp
port.html.en: port.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o port.html.en -oe iso-8859-1 port.adp
port.html.fr: port.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o port.html.fr -oe iso-8859-1 port.adp
port.html.id: port.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o port.html.id -oe iso-8859-1 port.adp
port.html.it: port.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o port.html.it -oe iso-8859-1 port.adp
port.html.nl: port.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o port.html.nl -oe iso-8859-1 port.adp
port.html.pl: port.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o port.html.pl -oe iso-8859-2 port.adp
port.html.ru: port.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o port.html.ru -oe iso-8859-5 port.adp

port.var: gen_makefile.conf
	echo > port.var
	echo 'URI: port.html.de' >> port.var
	echo 'Content-language: de' >> port.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> port.var
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
	echo 'URI: port.html.pl' >> port.var
	echo 'Content-language: pl' >> port.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> port.var
	echo >> port.var
	echo 'URI: port.html.ru' >> port.var
	echo 'Content-language: ru' >> port.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> port.var
	echo >> port.var
units.html.de: units.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o units.html.de -oe iso-8859-1 units.adp
units.html.en: units.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o units.html.en -oe iso-8859-1 units.adp
units.html.fr: units.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o units.html.fr -oe iso-8859-1 units.adp
units.html.id: units.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o units.html.id -oe iso-8859-1 units.adp
units.html.it: units.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o units.html.it -oe iso-8859-1 units.adp
units.html.nl: units.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o units.html.nl -oe iso-8859-1 units.adp
units.html.pl: units.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o units.html.pl -oe iso-8859-2 units.adp
units.html.ru: units.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o units.html.ru -oe iso-8859-5 units.adp

units.var: gen_makefile.conf
	echo > units.var
	echo 'URI: units.html.de' >> units.var
	echo 'Content-language: de' >> units.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> units.var
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
	echo 'URI: units.html.pl' >> units.var
	echo 'Content-language: pl' >> units.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> units.var
	echo >> units.var
	echo 'URI: units.html.ru' >> units.var
	echo 'Content-language: ru' >> units.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> units.var
	echo >> units.var
unitsrtl.html.de: unitsrtl.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o unitsrtl.html.de -oe iso-8859-1 unitsrtl.adp
unitsrtl.html.en: unitsrtl.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o unitsrtl.html.en -oe iso-8859-1 unitsrtl.adp
unitsrtl.html.fr: unitsrtl.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o unitsrtl.html.fr -oe iso-8859-1 unitsrtl.adp
unitsrtl.html.id: unitsrtl.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o unitsrtl.html.id -oe iso-8859-1 unitsrtl.adp
unitsrtl.html.it: unitsrtl.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l it_IT -m default-master.adp -o unitsrtl.html.it -oe iso-8859-1 unitsrtl.adp
unitsrtl.html.nl: unitsrtl.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o unitsrtl.html.nl -oe iso-8859-1 unitsrtl.adp
unitsrtl.html.pl: unitsrtl.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o unitsrtl.html.pl -oe iso-8859-2 unitsrtl.adp
unitsrtl.html.ru: unitsrtl.adp default-master.adp site-master.adp catalog.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l ru_RU -m default-master.adp -o unitsrtl.html.ru -oe iso-8859-5 unitsrtl.adp

unitsrtl.var: gen_makefile.conf
	echo > unitsrtl.var
	echo 'URI: unitsrtl.html.de' >> unitsrtl.var
	echo 'Content-language: de' >> unitsrtl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> unitsrtl.var
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
	echo 'URI: unitsrtl.html.pl' >> unitsrtl.var
	echo 'Content-language: pl' >> unitsrtl.var
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
	echo -e 'Germany\tgermany\tftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/' >> mirrors.dat
	echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Israel\tisrael\thttp://mirror.mirimar.net/freepascal/' >> mirrors.dat
	echo -e 'Netherlands\tnetherlands\tftp://freepascal.stack.nl/pub/fpc/' >> mirrors.dat
	echo -e 'Norway\tnorway\tftp://ftp.no.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Russia\trussia\tftp://ftp.chg.ru/pub/lang/pascal/fpc/' >> mirrors.dat
	echo -e 'ftp.freepascal.org\tftp.freepascal.org\tftp://ftp.freepascal.org/pub/fpc/' >> mirrors.dat

all_pages: aboutus.html.de aboutus.html.en aboutus.html.fr aboutus.html.id aboutus.html.it aboutus.html.nl aboutus.html.pl aboutus.html.ru aboutus.var advantage.html.de advantage.html.en advantage.html.fr advantage.html.id advantage.html.it advantage.html.nl advantage.html.pl advantage.html.ru advantage.var credits.html.de credits.html.en credits.html.fr credits.html.id credits.html.it credits.html.nl credits.html.pl credits.html.ru credits.var develop.html.de develop.html.en develop.html.fr develop.html.id develop.html.it develop.html.nl develop.html.pl develop.html.ru develop.var download.html.de download.html.en download.html.fr download.html.id download.html.it download.html.nl download.html.pl download.html.ru download.var docs.html.de docs.html.en docs.html.fr docs.html.id docs.html.it docs.html.nl docs.html.pl docs.html.ru docs.var faq.html.de faq.html.en faq.html.fr faq.html.id faq.html.it faq.html.nl faq.html.pl faq.html.ru faq.var fpc.html.de fpc.html.en fpc.html.fr fpc.html.id fpc.html.it fpc.html.nl fpc.html.pl fpc.html.ru fpc.var fpcmac.html.de fpcmac.html.en fpcmac.html.fr fpcmac.html.id fpcmac.html.it fpcmac.html.nl fpcmac.html.pl fpcmac.html.ru fpcmac.var future.html.de future.html.en future.html.fr future.html.id future.html.it future.html.nl future.html.pl future.html.ru future.var links.html.de links.html.en links.html.fr links.html.id links.html.it links.html.nl links.html.pl links.html.ru links.var maillist.html.de maillist.html.en maillist.html.fr maillist.html.id maillist.html.it maillist.html.nl maillist.html.pl maillist.html.ru maillist.var mirrors.html.de mirrors.html.en mirrors.html.fr mirrors.html.id mirrors.html.it mirrors.html.nl mirrors.html.pl mirrors.html.ru mirrors.var moreinfo.html.de moreinfo.html.en moreinfo.html.fr moreinfo.html.id moreinfo.html.it moreinfo.html.nl moreinfo.html.pl moreinfo.html.ru moreinfo.var news.html.de news.html.en news.html.fr news.html.id news.html.it news.html.nl news.html.pl news.html.ru news.var port.html.de port.html.en port.html.fr port.html.id port.html.it port.html.nl port.html.pl port.html.ru port.var units.html.de units.html.en units.html.fr units.html.id units.html.it units.html.nl units.html.pl units.html.ru units.var unitsrtl.html.de unitsrtl.html.en unitsrtl.html.fr unitsrtl.html.id unitsrtl.html.it unitsrtl.html.nl unitsrtl.html.pl unitsrtl.html.ru unitsrtl.var mirrors.dat


#adp2html tool
$(ADP2HTML): adp2html.pp
	$(PP) $(OPT) -Xs adp2html.pp

# down subdir
down_all:
	$(MAKE) -C down all

tools_all:
	$(MAKE) -C tools all

# clean
clean: clean_down clean_tools
	rm -f *.html.* *.var mirrors.dat adp2html

clean_down:
	$(MAKE) -C down clean

clean_tools:
	$(MAKE) -C tools clean

# archives (unix only)
tar: all
	tar -czf htmls.tar.gz `find -name '*.html' -or -name '*.html.*' -or -name '*.var' -or -name '*.gif' -or -name '*.png' -or -name '*.css' -or -name '*.jpg'` $(OTHERFILES)

zip: all
	zip htmls.zip `find -name '*.html' -or -name '*.html.*' -or -name '*.var' -or -name '*.gif' -or -name '*.png' -or -name '*.css' -or -name '*.jpg'` $(OTHERFILES)

