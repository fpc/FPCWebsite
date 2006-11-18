
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
ADP2HTML=../../adp2html$(EXE)

ifndef PP
 PP=fpc
endif

.PHONY: all all_pages clean
all: all_pages
linux-australia.html.de: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-australia.html.de linux.adp
linux-australia.html.en: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-australia.html.en linux.adp
linux-australia.html.fr: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-australia.html.fr linux.adp
linux-australia.html.id: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-australia.html.id linux.adp
linux-australia.html.nl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-australia.html.nl linux.adp
linux-australia.html.pl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-australia.html.pl linux.adp

linux-australia.var: gen_makefile.conf
	echo > linux-australia.var
	echo 'URI: linux-australia.html.de' >> linux-australia.var
	echo 'Content-language: de' >> linux-australia.var
	echo 'Content-type: text/html' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.en' >> linux-australia.var
	echo 'Content-language: en' >> linux-australia.var
	echo 'Content-type: text/html' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.fr' >> linux-australia.var
	echo 'Content-language: fr' >> linux-australia.var
	echo 'Content-type: text/html' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.id' >> linux-australia.var
	echo 'Content-language: id' >> linux-australia.var
	echo 'Content-type: text/html' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.nl' >> linux-australia.var
	echo 'Content-language: nl' >> linux-australia.var
	echo 'Content-type: text/html' >> linux-australia.var
	echo >> linux-australia.var
	echo 'URI: linux-australia.html.pl' >> linux-australia.var
	echo 'Content-language: pl' >> linux-australia.var
	echo 'Content-type: text/html' >> linux-australia.var
	echo >> linux-australia.var
macos-australia.html.de: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macos-australia.html.de macos.adp
macos-australia.html.en: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-australia.html.en macos.adp
macos-australia.html.fr: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-australia.html.fr macos.adp
macos-australia.html.id: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-australia.html.id macos.adp
macos-australia.html.nl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-australia.html.nl macos.adp
macos-australia.html.pl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-australia.html.pl macos.adp

macos-australia.var: gen_makefile.conf
	echo > macos-australia.var
	echo 'URI: macos-australia.html.de' >> macos-australia.var
	echo 'Content-language: de' >> macos-australia.var
	echo 'Content-type: text/html' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.en' >> macos-australia.var
	echo 'Content-language: en' >> macos-australia.var
	echo 'Content-type: text/html' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.fr' >> macos-australia.var
	echo 'Content-language: fr' >> macos-australia.var
	echo 'Content-type: text/html' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.id' >> macos-australia.var
	echo 'Content-language: id' >> macos-australia.var
	echo 'Content-type: text/html' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.nl' >> macos-australia.var
	echo 'Content-language: nl' >> macos-australia.var
	echo 'Content-type: text/html' >> macos-australia.var
	echo >> macos-australia.var
	echo 'URI: macos-australia.html.pl' >> macos-australia.var
	echo 'Content-language: pl' >> macos-australia.var
	echo 'Content-type: text/html' >> macos-australia.var
	echo >> macos-australia.var
macosx-australia.html.de: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macosx-australia.html.de macosx.adp
macosx-australia.html.en: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-australia.html.en macosx.adp
macosx-australia.html.fr: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-australia.html.fr macosx.adp
macosx-australia.html.id: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-australia.html.id macosx.adp
macosx-australia.html.nl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-australia.html.nl macosx.adp
macosx-australia.html.pl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-australia.html.pl macosx.adp

macosx-australia.var: gen_makefile.conf
	echo > macosx-australia.var
	echo 'URI: macosx-australia.html.de' >> macosx-australia.var
	echo 'Content-language: de' >> macosx-australia.var
	echo 'Content-type: text/html' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.en' >> macosx-australia.var
	echo 'Content-language: en' >> macosx-australia.var
	echo 'Content-type: text/html' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.fr' >> macosx-australia.var
	echo 'Content-language: fr' >> macosx-australia.var
	echo 'Content-type: text/html' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.id' >> macosx-australia.var
	echo 'Content-language: id' >> macosx-australia.var
	echo 'Content-type: text/html' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.nl' >> macosx-australia.var
	echo 'Content-language: nl' >> macosx-australia.var
	echo 'Content-type: text/html' >> macosx-australia.var
	echo >> macosx-australia.var
	echo 'URI: macosx-australia.html.pl' >> macosx-australia.var
	echo 'Content-language: pl' >> macosx-australia.var
	echo 'Content-type: text/html' >> macosx-australia.var
	echo >> macosx-australia.var
morphos-australia.html.de: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o morphos-australia.html.de morphos.adp
morphos-australia.html.en: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-australia.html.en morphos.adp
morphos-australia.html.fr: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-australia.html.fr morphos.adp
morphos-australia.html.id: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-australia.html.id morphos.adp
morphos-australia.html.nl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-australia.html.nl morphos.adp
morphos-australia.html.pl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-australia.html.pl morphos.adp

morphos-australia.var: gen_makefile.conf
	echo > morphos-australia.var
	echo 'URI: morphos-australia.html.de' >> morphos-australia.var
	echo 'Content-language: de' >> morphos-australia.var
	echo 'Content-type: text/html' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.en' >> morphos-australia.var
	echo 'Content-language: en' >> morphos-australia.var
	echo 'Content-type: text/html' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.fr' >> morphos-australia.var
	echo 'Content-language: fr' >> morphos-australia.var
	echo 'Content-type: text/html' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.id' >> morphos-australia.var
	echo 'Content-language: id' >> morphos-australia.var
	echo 'Content-type: text/html' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.nl' >> morphos-australia.var
	echo 'Content-language: nl' >> morphos-australia.var
	echo 'Content-type: text/html' >> morphos-australia.var
	echo >> morphos-australia.var
	echo 'URI: morphos-australia.html.pl' >> morphos-australia.var
	echo 'Content-language: pl' >> morphos-australia.var
	echo 'Content-type: text/html' >> morphos-australia.var
	echo >> morphos-australia.var
linux-austria.html.de: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-austria.html.de linux.adp
linux-austria.html.en: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-austria.html.en linux.adp
linux-austria.html.fr: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-austria.html.fr linux.adp
linux-austria.html.id: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-austria.html.id linux.adp
linux-austria.html.nl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-austria.html.nl linux.adp
linux-austria.html.pl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-austria.html.pl linux.adp

linux-austria.var: gen_makefile.conf
	echo > linux-austria.var
	echo 'URI: linux-austria.html.de' >> linux-austria.var
	echo 'Content-language: de' >> linux-austria.var
	echo 'Content-type: text/html' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.en' >> linux-austria.var
	echo 'Content-language: en' >> linux-austria.var
	echo 'Content-type: text/html' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.fr' >> linux-austria.var
	echo 'Content-language: fr' >> linux-austria.var
	echo 'Content-type: text/html' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.id' >> linux-austria.var
	echo 'Content-language: id' >> linux-austria.var
	echo 'Content-type: text/html' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.nl' >> linux-austria.var
	echo 'Content-language: nl' >> linux-austria.var
	echo 'Content-type: text/html' >> linux-austria.var
	echo >> linux-austria.var
	echo 'URI: linux-austria.html.pl' >> linux-austria.var
	echo 'Content-language: pl' >> linux-austria.var
	echo 'Content-type: text/html' >> linux-austria.var
	echo >> linux-austria.var
macos-austria.html.de: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macos-austria.html.de macos.adp
macos-austria.html.en: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-austria.html.en macos.adp
macos-austria.html.fr: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-austria.html.fr macos.adp
macos-austria.html.id: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-austria.html.id macos.adp
macos-austria.html.nl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-austria.html.nl macos.adp
macos-austria.html.pl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-austria.html.pl macos.adp

macos-austria.var: gen_makefile.conf
	echo > macos-austria.var
	echo 'URI: macos-austria.html.de' >> macos-austria.var
	echo 'Content-language: de' >> macos-austria.var
	echo 'Content-type: text/html' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.en' >> macos-austria.var
	echo 'Content-language: en' >> macos-austria.var
	echo 'Content-type: text/html' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.fr' >> macos-austria.var
	echo 'Content-language: fr' >> macos-austria.var
	echo 'Content-type: text/html' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.id' >> macos-austria.var
	echo 'Content-language: id' >> macos-austria.var
	echo 'Content-type: text/html' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.nl' >> macos-austria.var
	echo 'Content-language: nl' >> macos-austria.var
	echo 'Content-type: text/html' >> macos-austria.var
	echo >> macos-austria.var
	echo 'URI: macos-austria.html.pl' >> macos-austria.var
	echo 'Content-language: pl' >> macos-austria.var
	echo 'Content-type: text/html' >> macos-austria.var
	echo >> macos-austria.var
macosx-austria.html.de: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macosx-austria.html.de macosx.adp
macosx-austria.html.en: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-austria.html.en macosx.adp
macosx-austria.html.fr: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-austria.html.fr macosx.adp
macosx-austria.html.id: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-austria.html.id macosx.adp
macosx-austria.html.nl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-austria.html.nl macosx.adp
macosx-austria.html.pl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-austria.html.pl macosx.adp

macosx-austria.var: gen_makefile.conf
	echo > macosx-austria.var
	echo 'URI: macosx-austria.html.de' >> macosx-austria.var
	echo 'Content-language: de' >> macosx-austria.var
	echo 'Content-type: text/html' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.en' >> macosx-austria.var
	echo 'Content-language: en' >> macosx-austria.var
	echo 'Content-type: text/html' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.fr' >> macosx-austria.var
	echo 'Content-language: fr' >> macosx-austria.var
	echo 'Content-type: text/html' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.id' >> macosx-austria.var
	echo 'Content-language: id' >> macosx-austria.var
	echo 'Content-type: text/html' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.nl' >> macosx-austria.var
	echo 'Content-language: nl' >> macosx-austria.var
	echo 'Content-type: text/html' >> macosx-austria.var
	echo >> macosx-austria.var
	echo 'URI: macosx-austria.html.pl' >> macosx-austria.var
	echo 'Content-language: pl' >> macosx-austria.var
	echo 'Content-type: text/html' >> macosx-austria.var
	echo >> macosx-austria.var
morphos-austria.html.de: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o morphos-austria.html.de morphos.adp
morphos-austria.html.en: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-austria.html.en morphos.adp
morphos-austria.html.fr: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-austria.html.fr morphos.adp
morphos-austria.html.id: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-austria.html.id morphos.adp
morphos-austria.html.nl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-austria.html.nl morphos.adp
morphos-austria.html.pl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-austria.html.pl morphos.adp

morphos-austria.var: gen_makefile.conf
	echo > morphos-austria.var
	echo 'URI: morphos-austria.html.de' >> morphos-austria.var
	echo 'Content-language: de' >> morphos-austria.var
	echo 'Content-type: text/html' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.en' >> morphos-austria.var
	echo 'Content-language: en' >> morphos-austria.var
	echo 'Content-type: text/html' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.fr' >> morphos-austria.var
	echo 'Content-language: fr' >> morphos-austria.var
	echo 'Content-type: text/html' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.id' >> morphos-austria.var
	echo 'Content-language: id' >> morphos-austria.var
	echo 'Content-type: text/html' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.nl' >> morphos-austria.var
	echo 'Content-language: nl' >> morphos-austria.var
	echo 'Content-type: text/html' >> morphos-austria.var
	echo >> morphos-austria.var
	echo 'URI: morphos-austria.html.pl' >> morphos-austria.var
	echo 'Content-language: pl' >> morphos-austria.var
	echo 'Content-type: text/html' >> morphos-austria.var
	echo >> morphos-austria.var
linux-germany.html.de: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-germany.html.de linux.adp
linux-germany.html.en: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-germany.html.en linux.adp
linux-germany.html.fr: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-germany.html.fr linux.adp
linux-germany.html.id: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-germany.html.id linux.adp
linux-germany.html.nl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-germany.html.nl linux.adp
linux-germany.html.pl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-germany.html.pl linux.adp

linux-germany.var: gen_makefile.conf
	echo > linux-germany.var
	echo 'URI: linux-germany.html.de' >> linux-germany.var
	echo 'Content-language: de' >> linux-germany.var
	echo 'Content-type: text/html' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.en' >> linux-germany.var
	echo 'Content-language: en' >> linux-germany.var
	echo 'Content-type: text/html' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.fr' >> linux-germany.var
	echo 'Content-language: fr' >> linux-germany.var
	echo 'Content-type: text/html' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.id' >> linux-germany.var
	echo 'Content-language: id' >> linux-germany.var
	echo 'Content-type: text/html' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.nl' >> linux-germany.var
	echo 'Content-language: nl' >> linux-germany.var
	echo 'Content-type: text/html' >> linux-germany.var
	echo >> linux-germany.var
	echo 'URI: linux-germany.html.pl' >> linux-germany.var
	echo 'Content-language: pl' >> linux-germany.var
	echo 'Content-type: text/html' >> linux-germany.var
	echo >> linux-germany.var
macos-germany.html.de: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macos-germany.html.de macos.adp
macos-germany.html.en: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-germany.html.en macos.adp
macos-germany.html.fr: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-germany.html.fr macos.adp
macos-germany.html.id: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-germany.html.id macos.adp
macos-germany.html.nl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-germany.html.nl macos.adp
macos-germany.html.pl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-germany.html.pl macos.adp

macos-germany.var: gen_makefile.conf
	echo > macos-germany.var
	echo 'URI: macos-germany.html.de' >> macos-germany.var
	echo 'Content-language: de' >> macos-germany.var
	echo 'Content-type: text/html' >> macos-germany.var
	echo >> macos-germany.var
	echo 'URI: macos-germany.html.en' >> macos-germany.var
	echo 'Content-language: en' >> macos-germany.var
	echo 'Content-type: text/html' >> macos-germany.var
	echo >> macos-germany.var
	echo 'URI: macos-germany.html.fr' >> macos-germany.var
	echo 'Content-language: fr' >> macos-germany.var
	echo 'Content-type: text/html' >> macos-germany.var
	echo >> macos-germany.var
	echo 'URI: macos-germany.html.id' >> macos-germany.var
	echo 'Content-language: id' >> macos-germany.var
	echo 'Content-type: text/html' >> macos-germany.var
	echo >> macos-germany.var
	echo 'URI: macos-germany.html.nl' >> macos-germany.var
	echo 'Content-language: nl' >> macos-germany.var
	echo 'Content-type: text/html' >> macos-germany.var
	echo >> macos-germany.var
	echo 'URI: macos-germany.html.pl' >> macos-germany.var
	echo 'Content-language: pl' >> macos-germany.var
	echo 'Content-type: text/html' >> macos-germany.var
	echo >> macos-germany.var
macosx-germany.html.de: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macosx-germany.html.de macosx.adp
macosx-germany.html.en: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-germany.html.en macosx.adp
macosx-germany.html.fr: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-germany.html.fr macosx.adp
macosx-germany.html.id: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-germany.html.id macosx.adp
macosx-germany.html.nl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-germany.html.nl macosx.adp
macosx-germany.html.pl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-germany.html.pl macosx.adp

macosx-germany.var: gen_makefile.conf
	echo > macosx-germany.var
	echo 'URI: macosx-germany.html.de' >> macosx-germany.var
	echo 'Content-language: de' >> macosx-germany.var
	echo 'Content-type: text/html' >> macosx-germany.var
	echo >> macosx-germany.var
	echo 'URI: macosx-germany.html.en' >> macosx-germany.var
	echo 'Content-language: en' >> macosx-germany.var
	echo 'Content-type: text/html' >> macosx-germany.var
	echo >> macosx-germany.var
	echo 'URI: macosx-germany.html.fr' >> macosx-germany.var
	echo 'Content-language: fr' >> macosx-germany.var
	echo 'Content-type: text/html' >> macosx-germany.var
	echo >> macosx-germany.var
	echo 'URI: macosx-germany.html.id' >> macosx-germany.var
	echo 'Content-language: id' >> macosx-germany.var
	echo 'Content-type: text/html' >> macosx-germany.var
	echo >> macosx-germany.var
	echo 'URI: macosx-germany.html.nl' >> macosx-germany.var
	echo 'Content-language: nl' >> macosx-germany.var
	echo 'Content-type: text/html' >> macosx-germany.var
	echo >> macosx-germany.var
	echo 'URI: macosx-germany.html.pl' >> macosx-germany.var
	echo 'Content-language: pl' >> macosx-germany.var
	echo 'Content-type: text/html' >> macosx-germany.var
	echo >> macosx-germany.var
morphos-germany.html.de: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o morphos-germany.html.de morphos.adp
morphos-germany.html.en: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-germany.html.en morphos.adp
morphos-germany.html.fr: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-germany.html.fr morphos.adp
morphos-germany.html.id: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-germany.html.id morphos.adp
morphos-germany.html.nl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-germany.html.nl morphos.adp
morphos-germany.html.pl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-germany.html.pl morphos.adp

morphos-germany.var: gen_makefile.conf
	echo > morphos-germany.var
	echo 'URI: morphos-germany.html.de' >> morphos-germany.var
	echo 'Content-language: de' >> morphos-germany.var
	echo 'Content-type: text/html' >> morphos-germany.var
	echo >> morphos-germany.var
	echo 'URI: morphos-germany.html.en' >> morphos-germany.var
	echo 'Content-language: en' >> morphos-germany.var
	echo 'Content-type: text/html' >> morphos-germany.var
	echo >> morphos-germany.var
	echo 'URI: morphos-germany.html.fr' >> morphos-germany.var
	echo 'Content-language: fr' >> morphos-germany.var
	echo 'Content-type: text/html' >> morphos-germany.var
	echo >> morphos-germany.var
	echo 'URI: morphos-germany.html.id' >> morphos-germany.var
	echo 'Content-language: id' >> morphos-germany.var
	echo 'Content-type: text/html' >> morphos-germany.var
	echo >> morphos-germany.var
	echo 'URI: morphos-germany.html.nl' >> morphos-germany.var
	echo 'Content-language: nl' >> morphos-germany.var
	echo 'Content-type: text/html' >> morphos-germany.var
	echo >> morphos-germany.var
	echo 'URI: morphos-germany.html.pl' >> morphos-germany.var
	echo 'Content-language: pl' >> morphos-germany.var
	echo 'Content-type: text/html' >> morphos-germany.var
	echo >> morphos-germany.var
linux-hungary.html.de: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-hungary.html.de linux.adp
linux-hungary.html.en: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-hungary.html.en linux.adp
linux-hungary.html.fr: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-hungary.html.fr linux.adp
linux-hungary.html.id: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-hungary.html.id linux.adp
linux-hungary.html.nl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-hungary.html.nl linux.adp
linux-hungary.html.pl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-hungary.html.pl linux.adp

linux-hungary.var: gen_makefile.conf
	echo > linux-hungary.var
	echo 'URI: linux-hungary.html.de' >> linux-hungary.var
	echo 'Content-language: de' >> linux-hungary.var
	echo 'Content-type: text/html' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.en' >> linux-hungary.var
	echo 'Content-language: en' >> linux-hungary.var
	echo 'Content-type: text/html' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.fr' >> linux-hungary.var
	echo 'Content-language: fr' >> linux-hungary.var
	echo 'Content-type: text/html' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.id' >> linux-hungary.var
	echo 'Content-language: id' >> linux-hungary.var
	echo 'Content-type: text/html' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.nl' >> linux-hungary.var
	echo 'Content-language: nl' >> linux-hungary.var
	echo 'Content-type: text/html' >> linux-hungary.var
	echo >> linux-hungary.var
	echo 'URI: linux-hungary.html.pl' >> linux-hungary.var
	echo 'Content-language: pl' >> linux-hungary.var
	echo 'Content-type: text/html' >> linux-hungary.var
	echo >> linux-hungary.var
macos-hungary.html.de: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macos-hungary.html.de macos.adp
macos-hungary.html.en: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-hungary.html.en macos.adp
macos-hungary.html.fr: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-hungary.html.fr macos.adp
macos-hungary.html.id: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-hungary.html.id macos.adp
macos-hungary.html.nl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-hungary.html.nl macos.adp
macos-hungary.html.pl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-hungary.html.pl macos.adp

macos-hungary.var: gen_makefile.conf
	echo > macos-hungary.var
	echo 'URI: macos-hungary.html.de' >> macos-hungary.var
	echo 'Content-language: de' >> macos-hungary.var
	echo 'Content-type: text/html' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.en' >> macos-hungary.var
	echo 'Content-language: en' >> macos-hungary.var
	echo 'Content-type: text/html' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.fr' >> macos-hungary.var
	echo 'Content-language: fr' >> macos-hungary.var
	echo 'Content-type: text/html' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.id' >> macos-hungary.var
	echo 'Content-language: id' >> macos-hungary.var
	echo 'Content-type: text/html' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.nl' >> macos-hungary.var
	echo 'Content-language: nl' >> macos-hungary.var
	echo 'Content-type: text/html' >> macos-hungary.var
	echo >> macos-hungary.var
	echo 'URI: macos-hungary.html.pl' >> macos-hungary.var
	echo 'Content-language: pl' >> macos-hungary.var
	echo 'Content-type: text/html' >> macos-hungary.var
	echo >> macos-hungary.var
macosx-hungary.html.de: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macosx-hungary.html.de macosx.adp
macosx-hungary.html.en: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-hungary.html.en macosx.adp
macosx-hungary.html.fr: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-hungary.html.fr macosx.adp
macosx-hungary.html.id: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-hungary.html.id macosx.adp
macosx-hungary.html.nl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-hungary.html.nl macosx.adp
macosx-hungary.html.pl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-hungary.html.pl macosx.adp

macosx-hungary.var: gen_makefile.conf
	echo > macosx-hungary.var
	echo 'URI: macosx-hungary.html.de' >> macosx-hungary.var
	echo 'Content-language: de' >> macosx-hungary.var
	echo 'Content-type: text/html' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.en' >> macosx-hungary.var
	echo 'Content-language: en' >> macosx-hungary.var
	echo 'Content-type: text/html' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.fr' >> macosx-hungary.var
	echo 'Content-language: fr' >> macosx-hungary.var
	echo 'Content-type: text/html' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.id' >> macosx-hungary.var
	echo 'Content-language: id' >> macosx-hungary.var
	echo 'Content-type: text/html' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.nl' >> macosx-hungary.var
	echo 'Content-language: nl' >> macosx-hungary.var
	echo 'Content-type: text/html' >> macosx-hungary.var
	echo >> macosx-hungary.var
	echo 'URI: macosx-hungary.html.pl' >> macosx-hungary.var
	echo 'Content-language: pl' >> macosx-hungary.var
	echo 'Content-type: text/html' >> macosx-hungary.var
	echo >> macosx-hungary.var
morphos-hungary.html.de: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o morphos-hungary.html.de morphos.adp
morphos-hungary.html.en: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-hungary.html.en morphos.adp
morphos-hungary.html.fr: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-hungary.html.fr morphos.adp
morphos-hungary.html.id: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-hungary.html.id morphos.adp
morphos-hungary.html.nl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-hungary.html.nl morphos.adp
morphos-hungary.html.pl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-hungary.html.pl morphos.adp

morphos-hungary.var: gen_makefile.conf
	echo > morphos-hungary.var
	echo 'URI: morphos-hungary.html.de' >> morphos-hungary.var
	echo 'Content-language: de' >> morphos-hungary.var
	echo 'Content-type: text/html' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.en' >> morphos-hungary.var
	echo 'Content-language: en' >> morphos-hungary.var
	echo 'Content-type: text/html' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.fr' >> morphos-hungary.var
	echo 'Content-language: fr' >> morphos-hungary.var
	echo 'Content-type: text/html' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.id' >> morphos-hungary.var
	echo 'Content-language: id' >> morphos-hungary.var
	echo 'Content-type: text/html' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.nl' >> morphos-hungary.var
	echo 'Content-language: nl' >> morphos-hungary.var
	echo 'Content-type: text/html' >> morphos-hungary.var
	echo >> morphos-hungary.var
	echo 'URI: morphos-hungary.html.pl' >> morphos-hungary.var
	echo 'Content-language: pl' >> morphos-hungary.var
	echo 'Content-type: text/html' >> morphos-hungary.var
	echo >> morphos-hungary.var
linux-israel.html.de: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-israel.html.de linux.adp
linux-israel.html.en: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-israel.html.en linux.adp
linux-israel.html.fr: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-israel.html.fr linux.adp
linux-israel.html.id: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-israel.html.id linux.adp
linux-israel.html.nl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-israel.html.nl linux.adp
linux-israel.html.pl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-israel.html.pl linux.adp

linux-israel.var: gen_makefile.conf
	echo > linux-israel.var
	echo 'URI: linux-israel.html.de' >> linux-israel.var
	echo 'Content-language: de' >> linux-israel.var
	echo 'Content-type: text/html' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.en' >> linux-israel.var
	echo 'Content-language: en' >> linux-israel.var
	echo 'Content-type: text/html' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.fr' >> linux-israel.var
	echo 'Content-language: fr' >> linux-israel.var
	echo 'Content-type: text/html' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.id' >> linux-israel.var
	echo 'Content-language: id' >> linux-israel.var
	echo 'Content-type: text/html' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.nl' >> linux-israel.var
	echo 'Content-language: nl' >> linux-israel.var
	echo 'Content-type: text/html' >> linux-israel.var
	echo >> linux-israel.var
	echo 'URI: linux-israel.html.pl' >> linux-israel.var
	echo 'Content-language: pl' >> linux-israel.var
	echo 'Content-type: text/html' >> linux-israel.var
	echo >> linux-israel.var
macos-israel.html.de: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macos-israel.html.de macos.adp
macos-israel.html.en: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-israel.html.en macos.adp
macos-israel.html.fr: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-israel.html.fr macos.adp
macos-israel.html.id: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-israel.html.id macos.adp
macos-israel.html.nl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-israel.html.nl macos.adp
macos-israel.html.pl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-israel.html.pl macos.adp

macos-israel.var: gen_makefile.conf
	echo > macos-israel.var
	echo 'URI: macos-israel.html.de' >> macos-israel.var
	echo 'Content-language: de' >> macos-israel.var
	echo 'Content-type: text/html' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.en' >> macos-israel.var
	echo 'Content-language: en' >> macos-israel.var
	echo 'Content-type: text/html' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.fr' >> macos-israel.var
	echo 'Content-language: fr' >> macos-israel.var
	echo 'Content-type: text/html' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.id' >> macos-israel.var
	echo 'Content-language: id' >> macos-israel.var
	echo 'Content-type: text/html' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.nl' >> macos-israel.var
	echo 'Content-language: nl' >> macos-israel.var
	echo 'Content-type: text/html' >> macos-israel.var
	echo >> macos-israel.var
	echo 'URI: macos-israel.html.pl' >> macos-israel.var
	echo 'Content-language: pl' >> macos-israel.var
	echo 'Content-type: text/html' >> macos-israel.var
	echo >> macos-israel.var
macosx-israel.html.de: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macosx-israel.html.de macosx.adp
macosx-israel.html.en: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-israel.html.en macosx.adp
macosx-israel.html.fr: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-israel.html.fr macosx.adp
macosx-israel.html.id: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-israel.html.id macosx.adp
macosx-israel.html.nl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-israel.html.nl macosx.adp
macosx-israel.html.pl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-israel.html.pl macosx.adp

macosx-israel.var: gen_makefile.conf
	echo > macosx-israel.var
	echo 'URI: macosx-israel.html.de' >> macosx-israel.var
	echo 'Content-language: de' >> macosx-israel.var
	echo 'Content-type: text/html' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.en' >> macosx-israel.var
	echo 'Content-language: en' >> macosx-israel.var
	echo 'Content-type: text/html' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.fr' >> macosx-israel.var
	echo 'Content-language: fr' >> macosx-israel.var
	echo 'Content-type: text/html' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.id' >> macosx-israel.var
	echo 'Content-language: id' >> macosx-israel.var
	echo 'Content-type: text/html' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.nl' >> macosx-israel.var
	echo 'Content-language: nl' >> macosx-israel.var
	echo 'Content-type: text/html' >> macosx-israel.var
	echo >> macosx-israel.var
	echo 'URI: macosx-israel.html.pl' >> macosx-israel.var
	echo 'Content-language: pl' >> macosx-israel.var
	echo 'Content-type: text/html' >> macosx-israel.var
	echo >> macosx-israel.var
morphos-israel.html.de: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o morphos-israel.html.de morphos.adp
morphos-israel.html.en: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-israel.html.en morphos.adp
morphos-israel.html.fr: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-israel.html.fr morphos.adp
morphos-israel.html.id: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-israel.html.id morphos.adp
morphos-israel.html.nl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-israel.html.nl morphos.adp
morphos-israel.html.pl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-israel.html.pl morphos.adp

morphos-israel.var: gen_makefile.conf
	echo > morphos-israel.var
	echo 'URI: morphos-israel.html.de' >> morphos-israel.var
	echo 'Content-language: de' >> morphos-israel.var
	echo 'Content-type: text/html' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.en' >> morphos-israel.var
	echo 'Content-language: en' >> morphos-israel.var
	echo 'Content-type: text/html' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.fr' >> morphos-israel.var
	echo 'Content-language: fr' >> morphos-israel.var
	echo 'Content-type: text/html' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.id' >> morphos-israel.var
	echo 'Content-language: id' >> morphos-israel.var
	echo 'Content-type: text/html' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.nl' >> morphos-israel.var
	echo 'Content-language: nl' >> morphos-israel.var
	echo 'Content-type: text/html' >> morphos-israel.var
	echo >> morphos-israel.var
	echo 'URI: morphos-israel.html.pl' >> morphos-israel.var
	echo 'Content-language: pl' >> morphos-israel.var
	echo 'Content-type: text/html' >> morphos-israel.var
	echo >> morphos-israel.var
linux-netherlands.html.de: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-netherlands.html.de linux.adp
linux-netherlands.html.en: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-netherlands.html.en linux.adp
linux-netherlands.html.fr: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-netherlands.html.fr linux.adp
linux-netherlands.html.id: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-netherlands.html.id linux.adp
linux-netherlands.html.nl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-netherlands.html.nl linux.adp
linux-netherlands.html.pl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-netherlands.html.pl linux.adp

linux-netherlands.var: gen_makefile.conf
	echo > linux-netherlands.var
	echo 'URI: linux-netherlands.html.de' >> linux-netherlands.var
	echo 'Content-language: de' >> linux-netherlands.var
	echo 'Content-type: text/html' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.en' >> linux-netherlands.var
	echo 'Content-language: en' >> linux-netherlands.var
	echo 'Content-type: text/html' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.fr' >> linux-netherlands.var
	echo 'Content-language: fr' >> linux-netherlands.var
	echo 'Content-type: text/html' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.id' >> linux-netherlands.var
	echo 'Content-language: id' >> linux-netherlands.var
	echo 'Content-type: text/html' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.nl' >> linux-netherlands.var
	echo 'Content-language: nl' >> linux-netherlands.var
	echo 'Content-type: text/html' >> linux-netherlands.var
	echo >> linux-netherlands.var
	echo 'URI: linux-netherlands.html.pl' >> linux-netherlands.var
	echo 'Content-language: pl' >> linux-netherlands.var
	echo 'Content-type: text/html' >> linux-netherlands.var
	echo >> linux-netherlands.var
macos-netherlands.html.de: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macos-netherlands.html.de macos.adp
macos-netherlands.html.en: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-netherlands.html.en macos.adp
macos-netherlands.html.fr: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-netherlands.html.fr macos.adp
macos-netherlands.html.id: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-netherlands.html.id macos.adp
macos-netherlands.html.nl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-netherlands.html.nl macos.adp
macos-netherlands.html.pl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-netherlands.html.pl macos.adp

macos-netherlands.var: gen_makefile.conf
	echo > macos-netherlands.var
	echo 'URI: macos-netherlands.html.de' >> macos-netherlands.var
	echo 'Content-language: de' >> macos-netherlands.var
	echo 'Content-type: text/html' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.en' >> macos-netherlands.var
	echo 'Content-language: en' >> macos-netherlands.var
	echo 'Content-type: text/html' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.fr' >> macos-netherlands.var
	echo 'Content-language: fr' >> macos-netherlands.var
	echo 'Content-type: text/html' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.id' >> macos-netherlands.var
	echo 'Content-language: id' >> macos-netherlands.var
	echo 'Content-type: text/html' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.nl' >> macos-netherlands.var
	echo 'Content-language: nl' >> macos-netherlands.var
	echo 'Content-type: text/html' >> macos-netherlands.var
	echo >> macos-netherlands.var
	echo 'URI: macos-netherlands.html.pl' >> macos-netherlands.var
	echo 'Content-language: pl' >> macos-netherlands.var
	echo 'Content-type: text/html' >> macos-netherlands.var
	echo >> macos-netherlands.var
macosx-netherlands.html.de: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macosx-netherlands.html.de macosx.adp
macosx-netherlands.html.en: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-netherlands.html.en macosx.adp
macosx-netherlands.html.fr: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-netherlands.html.fr macosx.adp
macosx-netherlands.html.id: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-netherlands.html.id macosx.adp
macosx-netherlands.html.nl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-netherlands.html.nl macosx.adp
macosx-netherlands.html.pl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-netherlands.html.pl macosx.adp

macosx-netherlands.var: gen_makefile.conf
	echo > macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.de' >> macosx-netherlands.var
	echo 'Content-language: de' >> macosx-netherlands.var
	echo 'Content-type: text/html' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.en' >> macosx-netherlands.var
	echo 'Content-language: en' >> macosx-netherlands.var
	echo 'Content-type: text/html' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.fr' >> macosx-netherlands.var
	echo 'Content-language: fr' >> macosx-netherlands.var
	echo 'Content-type: text/html' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.id' >> macosx-netherlands.var
	echo 'Content-language: id' >> macosx-netherlands.var
	echo 'Content-type: text/html' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.nl' >> macosx-netherlands.var
	echo 'Content-language: nl' >> macosx-netherlands.var
	echo 'Content-type: text/html' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
	echo 'URI: macosx-netherlands.html.pl' >> macosx-netherlands.var
	echo 'Content-language: pl' >> macosx-netherlands.var
	echo 'Content-type: text/html' >> macosx-netherlands.var
	echo >> macosx-netherlands.var
morphos-netherlands.html.de: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o morphos-netherlands.html.de morphos.adp
morphos-netherlands.html.en: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-netherlands.html.en morphos.adp
morphos-netherlands.html.fr: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-netherlands.html.fr morphos.adp
morphos-netherlands.html.id: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-netherlands.html.id morphos.adp
morphos-netherlands.html.nl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-netherlands.html.nl morphos.adp
morphos-netherlands.html.pl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-netherlands.html.pl morphos.adp

morphos-netherlands.var: gen_makefile.conf
	echo > morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.de' >> morphos-netherlands.var
	echo 'Content-language: de' >> morphos-netherlands.var
	echo 'Content-type: text/html' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.en' >> morphos-netherlands.var
	echo 'Content-language: en' >> morphos-netherlands.var
	echo 'Content-type: text/html' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.fr' >> morphos-netherlands.var
	echo 'Content-language: fr' >> morphos-netherlands.var
	echo 'Content-type: text/html' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.id' >> morphos-netherlands.var
	echo 'Content-language: id' >> morphos-netherlands.var
	echo 'Content-type: text/html' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.nl' >> morphos-netherlands.var
	echo 'Content-language: nl' >> morphos-netherlands.var
	echo 'Content-type: text/html' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
	echo 'URI: morphos-netherlands.html.pl' >> morphos-netherlands.var
	echo 'Content-language: pl' >> morphos-netherlands.var
	echo 'Content-type: text/html' >> morphos-netherlands.var
	echo >> morphos-netherlands.var
linux-norway.html.de: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-norway.html.de linux.adp
linux-norway.html.en: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-norway.html.en linux.adp
linux-norway.html.fr: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-norway.html.fr linux.adp
linux-norway.html.id: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-norway.html.id linux.adp
linux-norway.html.nl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-norway.html.nl linux.adp
linux-norway.html.pl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-norway.html.pl linux.adp

linux-norway.var: gen_makefile.conf
	echo > linux-norway.var
	echo 'URI: linux-norway.html.de' >> linux-norway.var
	echo 'Content-language: de' >> linux-norway.var
	echo 'Content-type: text/html' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.en' >> linux-norway.var
	echo 'Content-language: en' >> linux-norway.var
	echo 'Content-type: text/html' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.fr' >> linux-norway.var
	echo 'Content-language: fr' >> linux-norway.var
	echo 'Content-type: text/html' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.id' >> linux-norway.var
	echo 'Content-language: id' >> linux-norway.var
	echo 'Content-type: text/html' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.nl' >> linux-norway.var
	echo 'Content-language: nl' >> linux-norway.var
	echo 'Content-type: text/html' >> linux-norway.var
	echo >> linux-norway.var
	echo 'URI: linux-norway.html.pl' >> linux-norway.var
	echo 'Content-language: pl' >> linux-norway.var
	echo 'Content-type: text/html' >> linux-norway.var
	echo >> linux-norway.var
macos-norway.html.de: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macos-norway.html.de macos.adp
macos-norway.html.en: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-norway.html.en macos.adp
macos-norway.html.fr: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-norway.html.fr macos.adp
macos-norway.html.id: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-norway.html.id macos.adp
macos-norway.html.nl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-norway.html.nl macos.adp
macos-norway.html.pl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-norway.html.pl macos.adp

macos-norway.var: gen_makefile.conf
	echo > macos-norway.var
	echo 'URI: macos-norway.html.de' >> macos-norway.var
	echo 'Content-language: de' >> macos-norway.var
	echo 'Content-type: text/html' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.en' >> macos-norway.var
	echo 'Content-language: en' >> macos-norway.var
	echo 'Content-type: text/html' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.fr' >> macos-norway.var
	echo 'Content-language: fr' >> macos-norway.var
	echo 'Content-type: text/html' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.id' >> macos-norway.var
	echo 'Content-language: id' >> macos-norway.var
	echo 'Content-type: text/html' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.nl' >> macos-norway.var
	echo 'Content-language: nl' >> macos-norway.var
	echo 'Content-type: text/html' >> macos-norway.var
	echo >> macos-norway.var
	echo 'URI: macos-norway.html.pl' >> macos-norway.var
	echo 'Content-language: pl' >> macos-norway.var
	echo 'Content-type: text/html' >> macos-norway.var
	echo >> macos-norway.var
macosx-norway.html.de: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macosx-norway.html.de macosx.adp
macosx-norway.html.en: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-norway.html.en macosx.adp
macosx-norway.html.fr: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-norway.html.fr macosx.adp
macosx-norway.html.id: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-norway.html.id macosx.adp
macosx-norway.html.nl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-norway.html.nl macosx.adp
macosx-norway.html.pl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-norway.html.pl macosx.adp

macosx-norway.var: gen_makefile.conf
	echo > macosx-norway.var
	echo 'URI: macosx-norway.html.de' >> macosx-norway.var
	echo 'Content-language: de' >> macosx-norway.var
	echo 'Content-type: text/html' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.en' >> macosx-norway.var
	echo 'Content-language: en' >> macosx-norway.var
	echo 'Content-type: text/html' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.fr' >> macosx-norway.var
	echo 'Content-language: fr' >> macosx-norway.var
	echo 'Content-type: text/html' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.id' >> macosx-norway.var
	echo 'Content-language: id' >> macosx-norway.var
	echo 'Content-type: text/html' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.nl' >> macosx-norway.var
	echo 'Content-language: nl' >> macosx-norway.var
	echo 'Content-type: text/html' >> macosx-norway.var
	echo >> macosx-norway.var
	echo 'URI: macosx-norway.html.pl' >> macosx-norway.var
	echo 'Content-language: pl' >> macosx-norway.var
	echo 'Content-type: text/html' >> macosx-norway.var
	echo >> macosx-norway.var
morphos-norway.html.de: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o morphos-norway.html.de morphos.adp
morphos-norway.html.en: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-norway.html.en morphos.adp
morphos-norway.html.fr: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-norway.html.fr morphos.adp
morphos-norway.html.id: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-norway.html.id morphos.adp
morphos-norway.html.nl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-norway.html.nl morphos.adp
morphos-norway.html.pl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-norway.html.pl morphos.adp

morphos-norway.var: gen_makefile.conf
	echo > morphos-norway.var
	echo 'URI: morphos-norway.html.de' >> morphos-norway.var
	echo 'Content-language: de' >> morphos-norway.var
	echo 'Content-type: text/html' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.en' >> morphos-norway.var
	echo 'Content-language: en' >> morphos-norway.var
	echo 'Content-type: text/html' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.fr' >> morphos-norway.var
	echo 'Content-language: fr' >> morphos-norway.var
	echo 'Content-type: text/html' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.id' >> morphos-norway.var
	echo 'Content-language: id' >> morphos-norway.var
	echo 'Content-type: text/html' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.nl' >> morphos-norway.var
	echo 'Content-language: nl' >> morphos-norway.var
	echo 'Content-type: text/html' >> morphos-norway.var
	echo >> morphos-norway.var
	echo 'URI: morphos-norway.html.pl' >> morphos-norway.var
	echo 'Content-language: pl' >> morphos-norway.var
	echo 'Content-type: text/html' >> morphos-norway.var
	echo >> morphos-norway.var
linux-russia.html.de: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-russia.html.de linux.adp
linux-russia.html.en: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-russia.html.en linux.adp
linux-russia.html.fr: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-russia.html.fr linux.adp
linux-russia.html.id: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-russia.html.id linux.adp
linux-russia.html.nl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-russia.html.nl linux.adp
linux-russia.html.pl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-russia.html.pl linux.adp

linux-russia.var: gen_makefile.conf
	echo > linux-russia.var
	echo 'URI: linux-russia.html.de' >> linux-russia.var
	echo 'Content-language: de' >> linux-russia.var
	echo 'Content-type: text/html' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.en' >> linux-russia.var
	echo 'Content-language: en' >> linux-russia.var
	echo 'Content-type: text/html' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.fr' >> linux-russia.var
	echo 'Content-language: fr' >> linux-russia.var
	echo 'Content-type: text/html' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.id' >> linux-russia.var
	echo 'Content-language: id' >> linux-russia.var
	echo 'Content-type: text/html' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.nl' >> linux-russia.var
	echo 'Content-language: nl' >> linux-russia.var
	echo 'Content-type: text/html' >> linux-russia.var
	echo >> linux-russia.var
	echo 'URI: linux-russia.html.pl' >> linux-russia.var
	echo 'Content-language: pl' >> linux-russia.var
	echo 'Content-type: text/html' >> linux-russia.var
	echo >> linux-russia.var
macos-russia.html.de: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macos-russia.html.de macos.adp
macos-russia.html.en: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-russia.html.en macos.adp
macos-russia.html.fr: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-russia.html.fr macos.adp
macos-russia.html.id: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-russia.html.id macos.adp
macos-russia.html.nl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-russia.html.nl macos.adp
macos-russia.html.pl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-russia.html.pl macos.adp

macos-russia.var: gen_makefile.conf
	echo > macos-russia.var
	echo 'URI: macos-russia.html.de' >> macos-russia.var
	echo 'Content-language: de' >> macos-russia.var
	echo 'Content-type: text/html' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.en' >> macos-russia.var
	echo 'Content-language: en' >> macos-russia.var
	echo 'Content-type: text/html' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.fr' >> macos-russia.var
	echo 'Content-language: fr' >> macos-russia.var
	echo 'Content-type: text/html' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.id' >> macos-russia.var
	echo 'Content-language: id' >> macos-russia.var
	echo 'Content-type: text/html' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.nl' >> macos-russia.var
	echo 'Content-language: nl' >> macos-russia.var
	echo 'Content-type: text/html' >> macos-russia.var
	echo >> macos-russia.var
	echo 'URI: macos-russia.html.pl' >> macos-russia.var
	echo 'Content-language: pl' >> macos-russia.var
	echo 'Content-type: text/html' >> macos-russia.var
	echo >> macos-russia.var
macosx-russia.html.de: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macosx-russia.html.de macosx.adp
macosx-russia.html.en: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-russia.html.en macosx.adp
macosx-russia.html.fr: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-russia.html.fr macosx.adp
macosx-russia.html.id: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-russia.html.id macosx.adp
macosx-russia.html.nl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-russia.html.nl macosx.adp
macosx-russia.html.pl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-russia.html.pl macosx.adp

macosx-russia.var: gen_makefile.conf
	echo > macosx-russia.var
	echo 'URI: macosx-russia.html.de' >> macosx-russia.var
	echo 'Content-language: de' >> macosx-russia.var
	echo 'Content-type: text/html' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.en' >> macosx-russia.var
	echo 'Content-language: en' >> macosx-russia.var
	echo 'Content-type: text/html' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.fr' >> macosx-russia.var
	echo 'Content-language: fr' >> macosx-russia.var
	echo 'Content-type: text/html' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.id' >> macosx-russia.var
	echo 'Content-language: id' >> macosx-russia.var
	echo 'Content-type: text/html' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.nl' >> macosx-russia.var
	echo 'Content-language: nl' >> macosx-russia.var
	echo 'Content-type: text/html' >> macosx-russia.var
	echo >> macosx-russia.var
	echo 'URI: macosx-russia.html.pl' >> macosx-russia.var
	echo 'Content-language: pl' >> macosx-russia.var
	echo 'Content-type: text/html' >> macosx-russia.var
	echo >> macosx-russia.var
morphos-russia.html.de: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o morphos-russia.html.de morphos.adp
morphos-russia.html.en: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-russia.html.en morphos.adp
morphos-russia.html.fr: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-russia.html.fr morphos.adp
morphos-russia.html.id: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-russia.html.id morphos.adp
morphos-russia.html.nl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-russia.html.nl morphos.adp
morphos-russia.html.pl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-russia.html.pl morphos.adp

morphos-russia.var: gen_makefile.conf
	echo > morphos-russia.var
	echo 'URI: morphos-russia.html.de' >> morphos-russia.var
	echo 'Content-language: de' >> morphos-russia.var
	echo 'Content-type: text/html' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.en' >> morphos-russia.var
	echo 'Content-language: en' >> morphos-russia.var
	echo 'Content-type: text/html' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.fr' >> morphos-russia.var
	echo 'Content-language: fr' >> morphos-russia.var
	echo 'Content-type: text/html' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.id' >> morphos-russia.var
	echo 'Content-language: id' >> morphos-russia.var
	echo 'Content-type: text/html' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.nl' >> morphos-russia.var
	echo 'Content-language: nl' >> morphos-russia.var
	echo 'Content-type: text/html' >> morphos-russia.var
	echo >> morphos-russia.var
	echo 'URI: morphos-russia.html.pl' >> morphos-russia.var
	echo 'Content-language: pl' >> morphos-russia.var
	echo 'Content-type: text/html' >> morphos-russia.var
	echo >> morphos-russia.var
linux-ftp.freepascal.org.html.de: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-ftp.freepascal.org.html.de linux.adp
linux-ftp.freepascal.org.html.en: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-ftp.freepascal.org.html.en linux.adp
linux-ftp.freepascal.org.html.fr: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-ftp.freepascal.org.html.fr linux.adp
linux-ftp.freepascal.org.html.id: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-ftp.freepascal.org.html.id linux.adp
linux-ftp.freepascal.org.html.nl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-ftp.freepascal.org.html.nl linux.adp
linux-ftp.freepascal.org.html.pl: linux.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-ftp.freepascal.org.html.pl linux.adp

linux-ftp.freepascal.org.var: gen_makefile.conf
	echo > linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.de' >> linux-ftp.freepascal.org.var
	echo 'Content-language: de' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.en' >> linux-ftp.freepascal.org.var
	echo 'Content-language: en' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.fr' >> linux-ftp.freepascal.org.var
	echo 'Content-language: fr' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.id' >> linux-ftp.freepascal.org.var
	echo 'Content-language: id' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.nl' >> linux-ftp.freepascal.org.var
	echo 'Content-language: nl' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
	echo 'URI: linux-ftp.freepascal.org.html.pl' >> linux-ftp.freepascal.org.var
	echo 'Content-language: pl' >> linux-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> linux-ftp.freepascal.org.var
	echo >> linux-ftp.freepascal.org.var
macos-ftp.freepascal.org.html.de: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macos-ftp.freepascal.org.html.de macos.adp
macos-ftp.freepascal.org.html.en: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos-ftp.freepascal.org.html.en macos.adp
macos-ftp.freepascal.org.html.fr: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos-ftp.freepascal.org.html.fr macos.adp
macos-ftp.freepascal.org.html.id: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos-ftp.freepascal.org.html.id macos.adp
macos-ftp.freepascal.org.html.nl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos-ftp.freepascal.org.html.nl macos.adp
macos-ftp.freepascal.org.html.pl: macos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos-ftp.freepascal.org.html.pl macos.adp

macos-ftp.freepascal.org.var: gen_makefile.conf
	echo > macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.de' >> macos-ftp.freepascal.org.var
	echo 'Content-language: de' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.en' >> macos-ftp.freepascal.org.var
	echo 'Content-language: en' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.fr' >> macos-ftp.freepascal.org.var
	echo 'Content-language: fr' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.id' >> macos-ftp.freepascal.org.var
	echo 'Content-language: id' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.nl' >> macos-ftp.freepascal.org.var
	echo 'Content-language: nl' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
	echo 'URI: macos-ftp.freepascal.org.html.pl' >> macos-ftp.freepascal.org.var
	echo 'Content-language: pl' >> macos-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> macos-ftp.freepascal.org.var
	echo >> macos-ftp.freepascal.org.var
macosx-ftp.freepascal.org.html.de: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.de macosx.adp
macosx-ftp.freepascal.org.html.en: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.en macosx.adp
macosx-ftp.freepascal.org.html.fr: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.fr macosx.adp
macosx-ftp.freepascal.org.html.id: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.id macosx.adp
macosx-ftp.freepascal.org.html.nl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.nl macosx.adp
macosx-ftp.freepascal.org.html.pl: macosx.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx-ftp.freepascal.org.html.pl macosx.adp

macosx-ftp.freepascal.org.var: gen_makefile.conf
	echo > macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.de' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: de' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.en' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: en' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.fr' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: fr' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.id' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: id' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.nl' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: nl' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
	echo 'URI: macosx-ftp.freepascal.org.html.pl' >> macosx-ftp.freepascal.org.var
	echo 'Content-language: pl' >> macosx-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> macosx-ftp.freepascal.org.var
	echo >> macosx-ftp.freepascal.org.var
morphos-ftp.freepascal.org.html.de: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.de morphos.adp
morphos-ftp.freepascal.org.html.en: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.en morphos.adp
morphos-ftp.freepascal.org.html.fr: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.fr morphos.adp
morphos-ftp.freepascal.org.html.id: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.id morphos.adp
morphos-ftp.freepascal.org.html.nl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.nl morphos.adp
morphos-ftp.freepascal.org.html.pl: morphos.adp ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos-ftp.freepascal.org.html.pl morphos.adp

morphos-ftp.freepascal.org.var: gen_makefile.conf
	echo > morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.de' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: de' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.en' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: en' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.fr' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: fr' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.id' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: id' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.nl' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: nl' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var
	echo 'URI: morphos-ftp.freepascal.org.html.pl' >> morphos-ftp.freepascal.org.var
	echo 'Content-language: pl' >> morphos-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> morphos-ftp.freepascal.org.var
	echo >> morphos-ftp.freepascal.org.var

linux.html.de: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux.html.de ../../templatemirror.adp
linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux.html.en ../../templatemirror.adp
linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux.html.fr ../../templatemirror.adp
linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux.html.id ../../templatemirror.adp
linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux.html.nl ../../templatemirror.adp
linux.html.pl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=linux -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux.html.pl ../../templatemirror.adp

macos.html.de: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macos.html.de ../../templatemirror.adp
macos.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macos.html.en ../../templatemirror.adp
macos.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macos.html.fr ../../templatemirror.adp
macos.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macos.html.id ../../templatemirror.adp
macos.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macos.html.nl ../../templatemirror.adp
macos.html.pl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macos -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macos.html.pl ../../templatemirror.adp

macosx.html.de: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o macosx.html.de ../../templatemirror.adp
macosx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l en_US -m ../../default-master.adp -o macosx.html.en ../../templatemirror.adp
macosx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o macosx.html.fr ../../templatemirror.adp
macosx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o macosx.html.id ../../templatemirror.adp
macosx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o macosx.html.nl ../../templatemirror.adp
macosx.html.pl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=macosx -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o macosx.html.pl ../../templatemirror.adp

morphos.html.de: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o morphos.html.de ../../templatemirror.adp
morphos.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l en_US -m ../../default-master.adp -o morphos.html.en ../../templatemirror.adp
morphos.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o morphos.html.fr ../../templatemirror.adp
morphos.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o morphos.html.id ../../templatemirror.adp
morphos.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o morphos.html.nl ../../templatemirror.adp
morphos.html.pl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=morphos -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o morphos.html.pl ../../templatemirror.adp

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

all_pages: linux-australia.html.de linux-australia.html.en linux-australia.html.fr linux-australia.html.id linux-australia.html.nl linux-australia.html.pl linux-australia.var macos-australia.html.de macos-australia.html.en macos-australia.html.fr macos-australia.html.id macos-australia.html.nl macos-australia.html.pl macos-australia.var macosx-australia.html.de macosx-australia.html.en macosx-australia.html.fr macosx-australia.html.id macosx-australia.html.nl macosx-australia.html.pl macosx-australia.var morphos-australia.html.de morphos-australia.html.en morphos-australia.html.fr morphos-australia.html.id morphos-australia.html.nl morphos-australia.html.pl morphos-australia.var linux-austria.html.de linux-austria.html.en linux-austria.html.fr linux-austria.html.id linux-austria.html.nl linux-austria.html.pl linux-austria.var macos-austria.html.de macos-austria.html.en macos-austria.html.fr macos-austria.html.id macos-austria.html.nl macos-austria.html.pl macos-austria.var macosx-austria.html.de macosx-austria.html.en macosx-austria.html.fr macosx-austria.html.id macosx-austria.html.nl macosx-austria.html.pl macosx-austria.var morphos-austria.html.de morphos-austria.html.en morphos-austria.html.fr morphos-austria.html.id morphos-austria.html.nl morphos-austria.html.pl morphos-austria.var linux-germany.html.de linux-germany.html.en linux-germany.html.fr linux-germany.html.id linux-germany.html.nl linux-germany.html.pl linux-germany.var macos-germany.html.de macos-germany.html.en macos-germany.html.fr macos-germany.html.id macos-germany.html.nl macos-germany.html.pl macos-germany.var macosx-germany.html.de macosx-germany.html.en macosx-germany.html.fr macosx-germany.html.id macosx-germany.html.nl macosx-germany.html.pl macosx-germany.var morphos-germany.html.de morphos-germany.html.en morphos-germany.html.fr morphos-germany.html.id morphos-germany.html.nl morphos-germany.html.pl morphos-germany.var linux-hungary.html.de linux-hungary.html.en linux-hungary.html.fr linux-hungary.html.id linux-hungary.html.nl linux-hungary.html.pl linux-hungary.var macos-hungary.html.de macos-hungary.html.en macos-hungary.html.fr macos-hungary.html.id macos-hungary.html.nl macos-hungary.html.pl macos-hungary.var macosx-hungary.html.de macosx-hungary.html.en macosx-hungary.html.fr macosx-hungary.html.id macosx-hungary.html.nl macosx-hungary.html.pl macosx-hungary.var morphos-hungary.html.de morphos-hungary.html.en morphos-hungary.html.fr morphos-hungary.html.id morphos-hungary.html.nl morphos-hungary.html.pl morphos-hungary.var linux-israel.html.de linux-israel.html.en linux-israel.html.fr linux-israel.html.id linux-israel.html.nl linux-israel.html.pl linux-israel.var macos-israel.html.de macos-israel.html.en macos-israel.html.fr macos-israel.html.id macos-israel.html.nl macos-israel.html.pl macos-israel.var macosx-israel.html.de macosx-israel.html.en macosx-israel.html.fr macosx-israel.html.id macosx-israel.html.nl macosx-israel.html.pl macosx-israel.var morphos-israel.html.de morphos-israel.html.en morphos-israel.html.fr morphos-israel.html.id morphos-israel.html.nl morphos-israel.html.pl morphos-israel.var linux-netherlands.html.de linux-netherlands.html.en linux-netherlands.html.fr linux-netherlands.html.id linux-netherlands.html.nl linux-netherlands.html.pl linux-netherlands.var macos-netherlands.html.de macos-netherlands.html.en macos-netherlands.html.fr macos-netherlands.html.id macos-netherlands.html.nl macos-netherlands.html.pl macos-netherlands.var macosx-netherlands.html.de macosx-netherlands.html.en macosx-netherlands.html.fr macosx-netherlands.html.id macosx-netherlands.html.nl macosx-netherlands.html.pl macosx-netherlands.var morphos-netherlands.html.de morphos-netherlands.html.en morphos-netherlands.html.fr morphos-netherlands.html.id morphos-netherlands.html.nl morphos-netherlands.html.pl morphos-netherlands.var linux-norway.html.de linux-norway.html.en linux-norway.html.fr linux-norway.html.id linux-norway.html.nl linux-norway.html.pl linux-norway.var macos-norway.html.de macos-norway.html.en macos-norway.html.fr macos-norway.html.id macos-norway.html.nl macos-norway.html.pl macos-norway.var macosx-norway.html.de macosx-norway.html.en macosx-norway.html.fr macosx-norway.html.id macosx-norway.html.nl macosx-norway.html.pl macosx-norway.var morphos-norway.html.de morphos-norway.html.en morphos-norway.html.fr morphos-norway.html.id morphos-norway.html.nl morphos-norway.html.pl morphos-norway.var linux-russia.html.de linux-russia.html.en linux-russia.html.fr linux-russia.html.id linux-russia.html.nl linux-russia.html.pl linux-russia.var macos-russia.html.de macos-russia.html.en macos-russia.html.fr macos-russia.html.id macos-russia.html.nl macos-russia.html.pl macos-russia.var macosx-russia.html.de macosx-russia.html.en macosx-russia.html.fr macosx-russia.html.id macosx-russia.html.nl macosx-russia.html.pl macosx-russia.var morphos-russia.html.de morphos-russia.html.en morphos-russia.html.fr morphos-russia.html.id morphos-russia.html.nl morphos-russia.html.pl morphos-russia.var linux-ftp.freepascal.org.html.de linux-ftp.freepascal.org.html.en linux-ftp.freepascal.org.html.fr linux-ftp.freepascal.org.html.id linux-ftp.freepascal.org.html.nl linux-ftp.freepascal.org.html.pl linux-ftp.freepascal.org.var macos-ftp.freepascal.org.html.de macos-ftp.freepascal.org.html.en macos-ftp.freepascal.org.html.fr macos-ftp.freepascal.org.html.id macos-ftp.freepascal.org.html.nl macos-ftp.freepascal.org.html.pl macos-ftp.freepascal.org.var macosx-ftp.freepascal.org.html.de macosx-ftp.freepascal.org.html.en macosx-ftp.freepascal.org.html.fr macosx-ftp.freepascal.org.html.id macosx-ftp.freepascal.org.html.nl macosx-ftp.freepascal.org.html.pl macosx-ftp.freepascal.org.var morphos-ftp.freepascal.org.html.de morphos-ftp.freepascal.org.html.en morphos-ftp.freepascal.org.html.fr morphos-ftp.freepascal.org.html.id morphos-ftp.freepascal.org.html.nl morphos-ftp.freepascal.org.html.pl morphos-ftp.freepascal.org.var linux.html.de linux.html.en linux.html.fr linux.html.id linux.html.nl linux.html.pl macos.html.de macos.html.en macos.html.fr macos.html.id macos.html.nl macos.html.pl macosx.html.de macosx.html.en macosx.html.fr macosx.html.id macosx.html.nl macosx.html.pl morphos.html.de morphos.html.en morphos.html.fr morphos.html.id morphos.html.nl morphos.html.pl mirrors.dat


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

