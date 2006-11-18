
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
aboutus.html.de: aboutus.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o aboutus.html.de aboutus.adp
aboutus.html.en: aboutus.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o aboutus.html.en aboutus.adp
aboutus.html.fr: aboutus.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o aboutus.html.fr aboutus.adp
aboutus.html.id: aboutus.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o aboutus.html.id aboutus.adp
aboutus.html.nl: aboutus.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o aboutus.html.nl aboutus.adp
aboutus.html.pl: aboutus.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o aboutus.html.pl aboutus.adp

aboutus.var: gen_makefile.conf
	echo > aboutus.var
	echo 'URI: aboutus.html.de' >> aboutus.var
	echo 'Content-language: de' >> aboutus.var
	echo 'Content-type: text/html' >> aboutus.var
	echo >> aboutus.var
	echo 'URI: aboutus.html.en' >> aboutus.var
	echo 'Content-language: en' >> aboutus.var
	echo 'Content-type: text/html' >> aboutus.var
	echo >> aboutus.var
	echo 'URI: aboutus.html.fr' >> aboutus.var
	echo 'Content-language: fr' >> aboutus.var
	echo 'Content-type: text/html' >> aboutus.var
	echo >> aboutus.var
	echo 'URI: aboutus.html.id' >> aboutus.var
	echo 'Content-language: id' >> aboutus.var
	echo 'Content-type: text/html' >> aboutus.var
	echo >> aboutus.var
	echo 'URI: aboutus.html.nl' >> aboutus.var
	echo 'Content-language: nl' >> aboutus.var
	echo 'Content-type: text/html' >> aboutus.var
	echo >> aboutus.var
	echo 'URI: aboutus.html.pl' >> aboutus.var
	echo 'Content-language: pl' >> aboutus.var
	echo 'Content-type: text/html' >> aboutus.var
	echo >> aboutus.var
advantage.html.de: advantage.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o advantage.html.de advantage.adp
advantage.html.en: advantage.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o advantage.html.en advantage.adp
advantage.html.fr: advantage.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o advantage.html.fr advantage.adp
advantage.html.id: advantage.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o advantage.html.id advantage.adp
advantage.html.nl: advantage.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o advantage.html.nl advantage.adp
advantage.html.pl: advantage.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o advantage.html.pl advantage.adp

advantage.var: gen_makefile.conf
	echo > advantage.var
	echo 'URI: advantage.html.de' >> advantage.var
	echo 'Content-language: de' >> advantage.var
	echo 'Content-type: text/html' >> advantage.var
	echo >> advantage.var
	echo 'URI: advantage.html.en' >> advantage.var
	echo 'Content-language: en' >> advantage.var
	echo 'Content-type: text/html' >> advantage.var
	echo >> advantage.var
	echo 'URI: advantage.html.fr' >> advantage.var
	echo 'Content-language: fr' >> advantage.var
	echo 'Content-type: text/html' >> advantage.var
	echo >> advantage.var
	echo 'URI: advantage.html.id' >> advantage.var
	echo 'Content-language: id' >> advantage.var
	echo 'Content-type: text/html' >> advantage.var
	echo >> advantage.var
	echo 'URI: advantage.html.nl' >> advantage.var
	echo 'Content-language: nl' >> advantage.var
	echo 'Content-type: text/html' >> advantage.var
	echo >> advantage.var
	echo 'URI: advantage.html.pl' >> advantage.var
	echo 'Content-language: pl' >> advantage.var
	echo 'Content-type: text/html' >> advantage.var
	echo >> advantage.var
credits.html.de: credits.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o credits.html.de credits.adp
credits.html.en: credits.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o credits.html.en credits.adp
credits.html.fr: credits.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o credits.html.fr credits.adp
credits.html.id: credits.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o credits.html.id credits.adp
credits.html.nl: credits.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o credits.html.nl credits.adp
credits.html.pl: credits.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o credits.html.pl credits.adp

credits.var: gen_makefile.conf
	echo > credits.var
	echo 'URI: credits.html.de' >> credits.var
	echo 'Content-language: de' >> credits.var
	echo 'Content-type: text/html' >> credits.var
	echo >> credits.var
	echo 'URI: credits.html.en' >> credits.var
	echo 'Content-language: en' >> credits.var
	echo 'Content-type: text/html' >> credits.var
	echo >> credits.var
	echo 'URI: credits.html.fr' >> credits.var
	echo 'Content-language: fr' >> credits.var
	echo 'Content-type: text/html' >> credits.var
	echo >> credits.var
	echo 'URI: credits.html.id' >> credits.var
	echo 'Content-language: id' >> credits.var
	echo 'Content-type: text/html' >> credits.var
	echo >> credits.var
	echo 'URI: credits.html.nl' >> credits.var
	echo 'Content-language: nl' >> credits.var
	echo 'Content-type: text/html' >> credits.var
	echo >> credits.var
	echo 'URI: credits.html.pl' >> credits.var
	echo 'Content-language: pl' >> credits.var
	echo 'Content-type: text/html' >> credits.var
	echo >> credits.var
develop.html.de: develop.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o develop.html.de develop.adp
develop.html.en: develop.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o develop.html.en develop.adp
develop.html.fr: develop.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o develop.html.fr develop.adp
develop.html.id: develop.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o develop.html.id develop.adp
develop.html.nl: develop.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o develop.html.nl develop.adp
develop.html.pl: develop.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o develop.html.pl develop.adp

develop.var: gen_makefile.conf
	echo > develop.var
	echo 'URI: develop.html.de' >> develop.var
	echo 'Content-language: de' >> develop.var
	echo 'Content-type: text/html' >> develop.var
	echo >> develop.var
	echo 'URI: develop.html.en' >> develop.var
	echo 'Content-language: en' >> develop.var
	echo 'Content-type: text/html' >> develop.var
	echo >> develop.var
	echo 'URI: develop.html.fr' >> develop.var
	echo 'Content-language: fr' >> develop.var
	echo 'Content-type: text/html' >> develop.var
	echo >> develop.var
	echo 'URI: develop.html.id' >> develop.var
	echo 'Content-language: id' >> develop.var
	echo 'Content-type: text/html' >> develop.var
	echo >> develop.var
	echo 'URI: develop.html.nl' >> develop.var
	echo 'Content-language: nl' >> develop.var
	echo 'Content-type: text/html' >> develop.var
	echo >> develop.var
	echo 'URI: develop.html.pl' >> develop.var
	echo 'Content-language: pl' >> develop.var
	echo 'Content-type: text/html' >> develop.var
	echo >> develop.var
download.html.de: download.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o download.html.de download.adp
download.html.en: download.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o download.html.en download.adp
download.html.fr: download.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o download.html.fr download.adp
download.html.id: download.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o download.html.id download.adp
download.html.nl: download.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o download.html.nl download.adp
download.html.pl: download.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o download.html.pl download.adp

download.var: gen_makefile.conf
	echo > download.var
	echo 'URI: download.html.de' >> download.var
	echo 'Content-language: de' >> download.var
	echo 'Content-type: text/html' >> download.var
	echo >> download.var
	echo 'URI: download.html.en' >> download.var
	echo 'Content-language: en' >> download.var
	echo 'Content-type: text/html' >> download.var
	echo >> download.var
	echo 'URI: download.html.fr' >> download.var
	echo 'Content-language: fr' >> download.var
	echo 'Content-type: text/html' >> download.var
	echo >> download.var
	echo 'URI: download.html.id' >> download.var
	echo 'Content-language: id' >> download.var
	echo 'Content-type: text/html' >> download.var
	echo >> download.var
	echo 'URI: download.html.nl' >> download.var
	echo 'Content-language: nl' >> download.var
	echo 'Content-type: text/html' >> download.var
	echo >> download.var
	echo 'URI: download.html.pl' >> download.var
	echo 'Content-language: pl' >> download.var
	echo 'Content-type: text/html' >> download.var
	echo >> download.var
docs.html.de: docs.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o docs.html.de docs.adp
docs.html.en: docs.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o docs.html.en docs.adp
docs.html.fr: docs.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o docs.html.fr docs.adp
docs.html.id: docs.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o docs.html.id docs.adp
docs.html.nl: docs.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o docs.html.nl docs.adp
docs.html.pl: docs.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o docs.html.pl docs.adp

docs.var: gen_makefile.conf
	echo > docs.var
	echo 'URI: docs.html.de' >> docs.var
	echo 'Content-language: de' >> docs.var
	echo 'Content-type: text/html' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.en' >> docs.var
	echo 'Content-language: en' >> docs.var
	echo 'Content-type: text/html' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.fr' >> docs.var
	echo 'Content-language: fr' >> docs.var
	echo 'Content-type: text/html' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.id' >> docs.var
	echo 'Content-language: id' >> docs.var
	echo 'Content-type: text/html' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.nl' >> docs.var
	echo 'Content-language: nl' >> docs.var
	echo 'Content-type: text/html' >> docs.var
	echo >> docs.var
	echo 'URI: docs.html.pl' >> docs.var
	echo 'Content-language: pl' >> docs.var
	echo 'Content-type: text/html' >> docs.var
	echo >> docs.var
faq.html.de: faq.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o faq.html.de faq.adp
faq.html.en: faq.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o faq.html.en faq.adp
faq.html.fr: faq.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o faq.html.fr faq.adp
faq.html.id: faq.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o faq.html.id faq.adp
faq.html.nl: faq.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o faq.html.nl faq.adp
faq.html.pl: faq.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o faq.html.pl faq.adp

faq.var: gen_makefile.conf
	echo > faq.var
	echo 'URI: faq.html.de' >> faq.var
	echo 'Content-language: de' >> faq.var
	echo 'Content-type: text/html' >> faq.var
	echo >> faq.var
	echo 'URI: faq.html.en' >> faq.var
	echo 'Content-language: en' >> faq.var
	echo 'Content-type: text/html' >> faq.var
	echo >> faq.var
	echo 'URI: faq.html.fr' >> faq.var
	echo 'Content-language: fr' >> faq.var
	echo 'Content-type: text/html' >> faq.var
	echo >> faq.var
	echo 'URI: faq.html.id' >> faq.var
	echo 'Content-language: id' >> faq.var
	echo 'Content-type: text/html' >> faq.var
	echo >> faq.var
	echo 'URI: faq.html.nl' >> faq.var
	echo 'Content-language: nl' >> faq.var
	echo 'Content-type: text/html' >> faq.var
	echo >> faq.var
	echo 'URI: faq.html.pl' >> faq.var
	echo 'Content-language: pl' >> faq.var
	echo 'Content-type: text/html' >> faq.var
	echo >> faq.var
fpc.html.de: fpc.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o fpc.html.de fpc.adp
fpc.html.en: fpc.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o fpc.html.en fpc.adp
fpc.html.fr: fpc.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o fpc.html.fr fpc.adp
fpc.html.id: fpc.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o fpc.html.id fpc.adp
fpc.html.nl: fpc.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o fpc.html.nl fpc.adp
fpc.html.pl: fpc.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o fpc.html.pl fpc.adp

fpc.var: gen_makefile.conf
	echo > fpc.var
	echo 'URI: fpc.html.de' >> fpc.var
	echo 'Content-language: de' >> fpc.var
	echo 'Content-type: text/html' >> fpc.var
	echo >> fpc.var
	echo 'URI: fpc.html.en' >> fpc.var
	echo 'Content-language: en' >> fpc.var
	echo 'Content-type: text/html' >> fpc.var
	echo >> fpc.var
	echo 'URI: fpc.html.fr' >> fpc.var
	echo 'Content-language: fr' >> fpc.var
	echo 'Content-type: text/html' >> fpc.var
	echo >> fpc.var
	echo 'URI: fpc.html.id' >> fpc.var
	echo 'Content-language: id' >> fpc.var
	echo 'Content-type: text/html' >> fpc.var
	echo >> fpc.var
	echo 'URI: fpc.html.nl' >> fpc.var
	echo 'Content-language: nl' >> fpc.var
	echo 'Content-type: text/html' >> fpc.var
	echo >> fpc.var
	echo 'URI: fpc.html.pl' >> fpc.var
	echo 'Content-language: pl' >> fpc.var
	echo 'Content-type: text/html' >> fpc.var
	echo >> fpc.var
fpcmac.html.de: fpcmac.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o fpcmac.html.de fpcmac.adp
fpcmac.html.en: fpcmac.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o fpcmac.html.en fpcmac.adp
fpcmac.html.fr: fpcmac.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o fpcmac.html.fr fpcmac.adp
fpcmac.html.id: fpcmac.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o fpcmac.html.id fpcmac.adp
fpcmac.html.nl: fpcmac.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o fpcmac.html.nl fpcmac.adp
fpcmac.html.pl: fpcmac.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o fpcmac.html.pl fpcmac.adp

fpcmac.var: gen_makefile.conf
	echo > fpcmac.var
	echo 'URI: fpcmac.html.de' >> fpcmac.var
	echo 'Content-language: de' >> fpcmac.var
	echo 'Content-type: text/html' >> fpcmac.var
	echo >> fpcmac.var
	echo 'URI: fpcmac.html.en' >> fpcmac.var
	echo 'Content-language: en' >> fpcmac.var
	echo 'Content-type: text/html' >> fpcmac.var
	echo >> fpcmac.var
	echo 'URI: fpcmac.html.fr' >> fpcmac.var
	echo 'Content-language: fr' >> fpcmac.var
	echo 'Content-type: text/html' >> fpcmac.var
	echo >> fpcmac.var
	echo 'URI: fpcmac.html.id' >> fpcmac.var
	echo 'Content-language: id' >> fpcmac.var
	echo 'Content-type: text/html' >> fpcmac.var
	echo >> fpcmac.var
	echo 'URI: fpcmac.html.nl' >> fpcmac.var
	echo 'Content-language: nl' >> fpcmac.var
	echo 'Content-type: text/html' >> fpcmac.var
	echo >> fpcmac.var
	echo 'URI: fpcmac.html.pl' >> fpcmac.var
	echo 'Content-language: pl' >> fpcmac.var
	echo 'Content-type: text/html' >> fpcmac.var
	echo >> fpcmac.var
future.html.de: future.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o future.html.de future.adp
future.html.en: future.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o future.html.en future.adp
future.html.fr: future.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o future.html.fr future.adp
future.html.id: future.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o future.html.id future.adp
future.html.nl: future.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o future.html.nl future.adp
future.html.pl: future.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o future.html.pl future.adp

future.var: gen_makefile.conf
	echo > future.var
	echo 'URI: future.html.de' >> future.var
	echo 'Content-language: de' >> future.var
	echo 'Content-type: text/html' >> future.var
	echo >> future.var
	echo 'URI: future.html.en' >> future.var
	echo 'Content-language: en' >> future.var
	echo 'Content-type: text/html' >> future.var
	echo >> future.var
	echo 'URI: future.html.fr' >> future.var
	echo 'Content-language: fr' >> future.var
	echo 'Content-type: text/html' >> future.var
	echo >> future.var
	echo 'URI: future.html.id' >> future.var
	echo 'Content-language: id' >> future.var
	echo 'Content-type: text/html' >> future.var
	echo >> future.var
	echo 'URI: future.html.nl' >> future.var
	echo 'Content-language: nl' >> future.var
	echo 'Content-type: text/html' >> future.var
	echo >> future.var
	echo 'URI: future.html.pl' >> future.var
	echo 'Content-language: pl' >> future.var
	echo 'Content-type: text/html' >> future.var
	echo >> future.var
links.html.de: links.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o links.html.de links.adp
links.html.en: links.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o links.html.en links.adp
links.html.fr: links.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o links.html.fr links.adp
links.html.id: links.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o links.html.id links.adp
links.html.nl: links.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o links.html.nl links.adp
links.html.pl: links.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o links.html.pl links.adp

links.var: gen_makefile.conf
	echo > links.var
	echo 'URI: links.html.de' >> links.var
	echo 'Content-language: de' >> links.var
	echo 'Content-type: text/html' >> links.var
	echo >> links.var
	echo 'URI: links.html.en' >> links.var
	echo 'Content-language: en' >> links.var
	echo 'Content-type: text/html' >> links.var
	echo >> links.var
	echo 'URI: links.html.fr' >> links.var
	echo 'Content-language: fr' >> links.var
	echo 'Content-type: text/html' >> links.var
	echo >> links.var
	echo 'URI: links.html.id' >> links.var
	echo 'Content-language: id' >> links.var
	echo 'Content-type: text/html' >> links.var
	echo >> links.var
	echo 'URI: links.html.nl' >> links.var
	echo 'Content-language: nl' >> links.var
	echo 'Content-type: text/html' >> links.var
	echo >> links.var
	echo 'URI: links.html.pl' >> links.var
	echo 'Content-language: pl' >> links.var
	echo 'Content-type: text/html' >> links.var
	echo >> links.var
maillist.html.de: maillist.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o maillist.html.de maillist.adp
maillist.html.en: maillist.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o maillist.html.en maillist.adp
maillist.html.fr: maillist.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o maillist.html.fr maillist.adp
maillist.html.id: maillist.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o maillist.html.id maillist.adp
maillist.html.nl: maillist.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o maillist.html.nl maillist.adp
maillist.html.pl: maillist.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o maillist.html.pl maillist.adp

maillist.var: gen_makefile.conf
	echo > maillist.var
	echo 'URI: maillist.html.de' >> maillist.var
	echo 'Content-language: de' >> maillist.var
	echo 'Content-type: text/html' >> maillist.var
	echo >> maillist.var
	echo 'URI: maillist.html.en' >> maillist.var
	echo 'Content-language: en' >> maillist.var
	echo 'Content-type: text/html' >> maillist.var
	echo >> maillist.var
	echo 'URI: maillist.html.fr' >> maillist.var
	echo 'Content-language: fr' >> maillist.var
	echo 'Content-type: text/html' >> maillist.var
	echo >> maillist.var
	echo 'URI: maillist.html.id' >> maillist.var
	echo 'Content-language: id' >> maillist.var
	echo 'Content-type: text/html' >> maillist.var
	echo >> maillist.var
	echo 'URI: maillist.html.nl' >> maillist.var
	echo 'Content-language: nl' >> maillist.var
	echo 'Content-type: text/html' >> maillist.var
	echo >> maillist.var
	echo 'URI: maillist.html.pl' >> maillist.var
	echo 'Content-language: pl' >> maillist.var
	echo 'Content-type: text/html' >> maillist.var
	echo >> maillist.var
mirrors.html.de: mirrors.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o mirrors.html.de mirrors.adp
mirrors.html.en: mirrors.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o mirrors.html.en mirrors.adp
mirrors.html.fr: mirrors.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o mirrors.html.fr mirrors.adp
mirrors.html.id: mirrors.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o mirrors.html.id mirrors.adp
mirrors.html.nl: mirrors.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o mirrors.html.nl mirrors.adp
mirrors.html.pl: mirrors.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o mirrors.html.pl mirrors.adp

mirrors.var: gen_makefile.conf
	echo > mirrors.var
	echo 'URI: mirrors.html.de' >> mirrors.var
	echo 'Content-language: de' >> mirrors.var
	echo 'Content-type: text/html' >> mirrors.var
	echo >> mirrors.var
	echo 'URI: mirrors.html.en' >> mirrors.var
	echo 'Content-language: en' >> mirrors.var
	echo 'Content-type: text/html' >> mirrors.var
	echo >> mirrors.var
	echo 'URI: mirrors.html.fr' >> mirrors.var
	echo 'Content-language: fr' >> mirrors.var
	echo 'Content-type: text/html' >> mirrors.var
	echo >> mirrors.var
	echo 'URI: mirrors.html.id' >> mirrors.var
	echo 'Content-language: id' >> mirrors.var
	echo 'Content-type: text/html' >> mirrors.var
	echo >> mirrors.var
	echo 'URI: mirrors.html.nl' >> mirrors.var
	echo 'Content-language: nl' >> mirrors.var
	echo 'Content-type: text/html' >> mirrors.var
	echo >> mirrors.var
	echo 'URI: mirrors.html.pl' >> mirrors.var
	echo 'Content-language: pl' >> mirrors.var
	echo 'Content-type: text/html' >> mirrors.var
	echo >> mirrors.var
moreinfo.html.de: moreinfo.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o moreinfo.html.de moreinfo.adp
moreinfo.html.en: moreinfo.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o moreinfo.html.en moreinfo.adp
moreinfo.html.fr: moreinfo.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o moreinfo.html.fr moreinfo.adp
moreinfo.html.id: moreinfo.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o moreinfo.html.id moreinfo.adp
moreinfo.html.nl: moreinfo.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o moreinfo.html.nl moreinfo.adp
moreinfo.html.pl: moreinfo.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o moreinfo.html.pl moreinfo.adp

moreinfo.var: gen_makefile.conf
	echo > moreinfo.var
	echo 'URI: moreinfo.html.de' >> moreinfo.var
	echo 'Content-language: de' >> moreinfo.var
	echo 'Content-type: text/html' >> moreinfo.var
	echo >> moreinfo.var
	echo 'URI: moreinfo.html.en' >> moreinfo.var
	echo 'Content-language: en' >> moreinfo.var
	echo 'Content-type: text/html' >> moreinfo.var
	echo >> moreinfo.var
	echo 'URI: moreinfo.html.fr' >> moreinfo.var
	echo 'Content-language: fr' >> moreinfo.var
	echo 'Content-type: text/html' >> moreinfo.var
	echo >> moreinfo.var
	echo 'URI: moreinfo.html.id' >> moreinfo.var
	echo 'Content-language: id' >> moreinfo.var
	echo 'Content-type: text/html' >> moreinfo.var
	echo >> moreinfo.var
	echo 'URI: moreinfo.html.nl' >> moreinfo.var
	echo 'Content-language: nl' >> moreinfo.var
	echo 'Content-type: text/html' >> moreinfo.var
	echo >> moreinfo.var
	echo 'URI: moreinfo.html.pl' >> moreinfo.var
	echo 'Content-language: pl' >> moreinfo.var
	echo 'Content-type: text/html' >> moreinfo.var
	echo >> moreinfo.var
news.html.de: news.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o news.html.de news.adp
news.html.en: news.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o news.html.en news.adp
news.html.fr: news.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o news.html.fr news.adp
news.html.id: news.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o news.html.id news.adp
news.html.nl: news.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o news.html.nl news.adp
news.html.pl: news.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o news.html.pl news.adp

news.var: gen_makefile.conf
	echo > news.var
	echo 'URI: news.html.de' >> news.var
	echo 'Content-language: de' >> news.var
	echo 'Content-type: text/html' >> news.var
	echo >> news.var
	echo 'URI: news.html.en' >> news.var
	echo 'Content-language: en' >> news.var
	echo 'Content-type: text/html' >> news.var
	echo >> news.var
	echo 'URI: news.html.fr' >> news.var
	echo 'Content-language: fr' >> news.var
	echo 'Content-type: text/html' >> news.var
	echo >> news.var
	echo 'URI: news.html.id' >> news.var
	echo 'Content-language: id' >> news.var
	echo 'Content-type: text/html' >> news.var
	echo >> news.var
	echo 'URI: news.html.nl' >> news.var
	echo 'Content-language: nl' >> news.var
	echo 'Content-type: text/html' >> news.var
	echo >> news.var
	echo 'URI: news.html.pl' >> news.var
	echo 'Content-language: pl' >> news.var
	echo 'Content-type: text/html' >> news.var
	echo >> news.var
port.html.de: port.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o port.html.de port.adp
port.html.en: port.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o port.html.en port.adp
port.html.fr: port.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o port.html.fr port.adp
port.html.id: port.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o port.html.id port.adp
port.html.nl: port.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o port.html.nl port.adp
port.html.pl: port.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o port.html.pl port.adp

port.var: gen_makefile.conf
	echo > port.var
	echo 'URI: port.html.de' >> port.var
	echo 'Content-language: de' >> port.var
	echo 'Content-type: text/html' >> port.var
	echo >> port.var
	echo 'URI: port.html.en' >> port.var
	echo 'Content-language: en' >> port.var
	echo 'Content-type: text/html' >> port.var
	echo >> port.var
	echo 'URI: port.html.fr' >> port.var
	echo 'Content-language: fr' >> port.var
	echo 'Content-type: text/html' >> port.var
	echo >> port.var
	echo 'URI: port.html.id' >> port.var
	echo 'Content-language: id' >> port.var
	echo 'Content-type: text/html' >> port.var
	echo >> port.var
	echo 'URI: port.html.nl' >> port.var
	echo 'Content-language: nl' >> port.var
	echo 'Content-type: text/html' >> port.var
	echo >> port.var
	echo 'URI: port.html.pl' >> port.var
	echo 'Content-language: pl' >> port.var
	echo 'Content-type: text/html' >> port.var
	echo >> port.var
units.html.de: units.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o units.html.de units.adp
units.html.en: units.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o units.html.en units.adp
units.html.fr: units.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o units.html.fr units.adp
units.html.id: units.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o units.html.id units.adp
units.html.nl: units.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o units.html.nl units.adp
units.html.pl: units.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o units.html.pl units.adp

units.var: gen_makefile.conf
	echo > units.var
	echo 'URI: units.html.de' >> units.var
	echo 'Content-language: de' >> units.var
	echo 'Content-type: text/html' >> units.var
	echo >> units.var
	echo 'URI: units.html.en' >> units.var
	echo 'Content-language: en' >> units.var
	echo 'Content-type: text/html' >> units.var
	echo >> units.var
	echo 'URI: units.html.fr' >> units.var
	echo 'Content-language: fr' >> units.var
	echo 'Content-type: text/html' >> units.var
	echo >> units.var
	echo 'URI: units.html.id' >> units.var
	echo 'Content-language: id' >> units.var
	echo 'Content-type: text/html' >> units.var
	echo >> units.var
	echo 'URI: units.html.nl' >> units.var
	echo 'Content-language: nl' >> units.var
	echo 'Content-type: text/html' >> units.var
	echo >> units.var
	echo 'URI: units.html.pl' >> units.var
	echo 'Content-language: pl' >> units.var
	echo 'Content-type: text/html' >> units.var
	echo >> units.var
unitsrtl.html.de: unitsrtl.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l de_DE -m default-master.adp -o unitsrtl.html.de unitsrtl.adp
unitsrtl.html.en: unitsrtl.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l en_US -m default-master.adp -o unitsrtl.html.en unitsrtl.adp
unitsrtl.html.fr: unitsrtl.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l fr_FR -m default-master.adp -o unitsrtl.html.fr unitsrtl.adp
unitsrtl.html.id: unitsrtl.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l id_ID -m default-master.adp -o unitsrtl.html.id unitsrtl.adp
unitsrtl.html.nl: unitsrtl.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l nl_NL -m default-master.adp -o unitsrtl.html.nl unitsrtl.adp
unitsrtl.html.pl: unitsrtl.adp default-master.adp site-master.adp
	./adp2html -p x=$(URL_EXTENSION) -c catalog.adp -l pl_PL -m default-master.adp -o unitsrtl.html.pl unitsrtl.adp

unitsrtl.var: gen_makefile.conf
	echo > unitsrtl.var
	echo 'URI: unitsrtl.html.de' >> unitsrtl.var
	echo 'Content-language: de' >> unitsrtl.var
	echo 'Content-type: text/html' >> unitsrtl.var
	echo >> unitsrtl.var
	echo 'URI: unitsrtl.html.en' >> unitsrtl.var
	echo 'Content-language: en' >> unitsrtl.var
	echo 'Content-type: text/html' >> unitsrtl.var
	echo >> unitsrtl.var
	echo 'URI: unitsrtl.html.fr' >> unitsrtl.var
	echo 'Content-language: fr' >> unitsrtl.var
	echo 'Content-type: text/html' >> unitsrtl.var
	echo >> unitsrtl.var
	echo 'URI: unitsrtl.html.id' >> unitsrtl.var
	echo 'Content-language: id' >> unitsrtl.var
	echo 'Content-type: text/html' >> unitsrtl.var
	echo >> unitsrtl.var
	echo 'URI: unitsrtl.html.nl' >> unitsrtl.var
	echo 'Content-language: nl' >> unitsrtl.var
	echo 'Content-type: text/html' >> unitsrtl.var
	echo >> unitsrtl.var
	echo 'URI: unitsrtl.html.pl' >> unitsrtl.var
	echo 'Content-language: pl' >> unitsrtl.var
	echo 'Content-type: text/html' >> unitsrtl.var
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

all_pages: aboutus.html.de aboutus.html.en aboutus.html.fr aboutus.html.id aboutus.html.nl aboutus.html.pl aboutus.var advantage.html.de advantage.html.en advantage.html.fr advantage.html.id advantage.html.nl advantage.html.pl advantage.var credits.html.de credits.html.en credits.html.fr credits.html.id credits.html.nl credits.html.pl credits.var develop.html.de develop.html.en develop.html.fr develop.html.id develop.html.nl develop.html.pl develop.var download.html.de download.html.en download.html.fr download.html.id download.html.nl download.html.pl download.var docs.html.de docs.html.en docs.html.fr docs.html.id docs.html.nl docs.html.pl docs.var faq.html.de faq.html.en faq.html.fr faq.html.id faq.html.nl faq.html.pl faq.var fpc.html.de fpc.html.en fpc.html.fr fpc.html.id fpc.html.nl fpc.html.pl fpc.var fpcmac.html.de fpcmac.html.en fpcmac.html.fr fpcmac.html.id fpcmac.html.nl fpcmac.html.pl fpcmac.var future.html.de future.html.en future.html.fr future.html.id future.html.nl future.html.pl future.var links.html.de links.html.en links.html.fr links.html.id links.html.nl links.html.pl links.var maillist.html.de maillist.html.en maillist.html.fr maillist.html.id maillist.html.nl maillist.html.pl maillist.var mirrors.html.de mirrors.html.en mirrors.html.fr mirrors.html.id mirrors.html.nl mirrors.html.pl mirrors.var moreinfo.html.de moreinfo.html.en moreinfo.html.fr moreinfo.html.id moreinfo.html.nl moreinfo.html.pl moreinfo.var news.html.de news.html.en news.html.fr news.html.id news.html.nl news.html.pl news.var port.html.de port.html.en port.html.fr port.html.id port.html.nl port.html.pl port.var units.html.de units.html.en units.html.fr units.html.id units.html.nl units.html.pl units.var unitsrtl.html.de unitsrtl.html.en unitsrtl.html.fr unitsrtl.html.id unitsrtl.html.nl unitsrtl.html.pl unitsrtl.var mirrors.dat


#adp2html tool
$(ADP2HTML): adp2html.pp
	$(PP) $(OPT) -Xs adp2html.pp

# down subdir
down_all:
	make -C down all

tools_all:
	make -C tools all

# clean
clean: clean_down clean_tools
	rm -f *.html.* *.var mirrors.dat adp2html

clean_down:
	make -C down clean

clean_tools:
	make -C tools clean

# archives (unix only)
tar: all
	tar -czf htmls.tar.gz `find -name '*.html' -or -name '*.html.*' -or -name '*.var' -or -name '*.gif' -or -name '*.png' -or -name '*.css' -or -name '*.jpg'` $(OTHERFILES)

zip: all
	zip htmls.zip `find -name '*.html' -or -name '*.html.*' -or -name '*.var' -or -name '*.gif' -or -name '*.png' -or -name '*.css' -or -name '*.jpg'` $(OTHERFILES)

