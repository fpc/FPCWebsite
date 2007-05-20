
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

.PHONY: all all_pages clean
default: all
all: all_pages
english: all_en_pages
docs-australia.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o docs-australia.html.bg -oe iso-8859-5 docs.adp
docs-australia.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-australia.html.en -oe iso-8859-1 docs.adp
docs-australia.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o docs-australia.html.fr -oe iso-8859-1 docs.adp
docs-australia.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o docs-australia.html.id -oe iso-8859-1 docs.adp
docs-australia.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o docs-australia.html.it -oe iso-8859-1 docs.adp
docs-australia.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o docs-australia.html.nl -oe iso-8859-1 docs.adp
docs-australia.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o docs-australia.html.po -oe iso-8859-2 docs.adp
docs-australia.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o docs-australia.html.sl -oe iso-8859-2 docs.adp
docs-australia.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o docs-australia.html.ru -oe iso-8859-5 docs.adp
docs-australia.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-australia.html -oe ISO-8859-1 docs.adp

docs-australia.var: gen_makefile.conf
	echo > docs-australia.var
	echo 'URI: docs-australia.html.bg' >> docs-australia.var
	echo 'Content-language: bg' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.en' >> docs-australia.var
	echo 'Content-language: en' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.fr' >> docs-australia.var
	echo 'Content-language: fr' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.id' >> docs-australia.var
	echo 'Content-language: id' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.it' >> docs-australia.var
	echo 'Content-language: it' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.nl' >> docs-australia.var
	echo 'Content-language: nl' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.po' >> docs-australia.var
	echo 'Content-language: pl' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.sl' >> docs-australia.var
	echo 'Content-language: sl' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-australia.var
	echo >> docs-australia.var
	echo 'URI: docs-australia.html.ru' >> docs-australia.var
	echo 'Content-language: ru' >> docs-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-australia.var
	echo >> docs-australia.var
i386-beos-australia.html.bg: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-beos-australia.html.bg -oe iso-8859-5 i386-beos.adp
i386-beos-australia.html.en: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-australia.html.en -oe iso-8859-1 i386-beos.adp
i386-beos-australia.html.fr: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-beos-australia.html.fr -oe iso-8859-1 i386-beos.adp
i386-beos-australia.html.id: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-beos-australia.html.id -oe iso-8859-1 i386-beos.adp
i386-beos-australia.html.it: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-beos-australia.html.it -oe iso-8859-1 i386-beos.adp
i386-beos-australia.html.nl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-beos-australia.html.nl -oe iso-8859-1 i386-beos.adp
i386-beos-australia.html.po: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-beos-australia.html.po -oe iso-8859-2 i386-beos.adp
i386-beos-australia.html.sl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-beos-australia.html.sl -oe iso-8859-2 i386-beos.adp
i386-beos-australia.html.ru: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-beos-australia.html.ru -oe iso-8859-5 i386-beos.adp
i386-beos-australia.html: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-australia.html -oe ISO-8859-1 i386-beos.adp

i386-beos-australia.var: gen_makefile.conf
	echo > i386-beos-australia.var
	echo 'URI: i386-beos-australia.html.bg' >> i386-beos-australia.var
	echo 'Content-language: bg' >> i386-beos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-australia.var
	echo >> i386-beos-australia.var
	echo 'URI: i386-beos-australia.html.en' >> i386-beos-australia.var
	echo 'Content-language: en' >> i386-beos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-australia.var
	echo >> i386-beos-australia.var
	echo 'URI: i386-beos-australia.html.fr' >> i386-beos-australia.var
	echo 'Content-language: fr' >> i386-beos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-australia.var
	echo >> i386-beos-australia.var
	echo 'URI: i386-beos-australia.html.id' >> i386-beos-australia.var
	echo 'Content-language: id' >> i386-beos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-australia.var
	echo >> i386-beos-australia.var
	echo 'URI: i386-beos-australia.html.it' >> i386-beos-australia.var
	echo 'Content-language: it' >> i386-beos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-australia.var
	echo >> i386-beos-australia.var
	echo 'URI: i386-beos-australia.html.nl' >> i386-beos-australia.var
	echo 'Content-language: nl' >> i386-beos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-australia.var
	echo >> i386-beos-australia.var
	echo 'URI: i386-beos-australia.html.po' >> i386-beos-australia.var
	echo 'Content-language: pl' >> i386-beos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-australia.var
	echo >> i386-beos-australia.var
	echo 'URI: i386-beos-australia.html.sl' >> i386-beos-australia.var
	echo 'Content-language: sl' >> i386-beos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-australia.var
	echo >> i386-beos-australia.var
	echo 'URI: i386-beos-australia.html.ru' >> i386-beos-australia.var
	echo 'Content-language: ru' >> i386-beos-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-australia.var
	echo >> i386-beos-australia.var
i386-emx-australia.html.bg: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-emx-australia.html.bg -oe iso-8859-5 i386-emx.adp
i386-emx-australia.html.en: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-australia.html.en -oe iso-8859-1 i386-emx.adp
i386-emx-australia.html.fr: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-emx-australia.html.fr -oe iso-8859-1 i386-emx.adp
i386-emx-australia.html.id: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-emx-australia.html.id -oe iso-8859-1 i386-emx.adp
i386-emx-australia.html.it: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-emx-australia.html.it -oe iso-8859-1 i386-emx.adp
i386-emx-australia.html.nl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-emx-australia.html.nl -oe iso-8859-1 i386-emx.adp
i386-emx-australia.html.po: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-emx-australia.html.po -oe iso-8859-2 i386-emx.adp
i386-emx-australia.html.sl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-emx-australia.html.sl -oe iso-8859-2 i386-emx.adp
i386-emx-australia.html.ru: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-emx-australia.html.ru -oe iso-8859-5 i386-emx.adp
i386-emx-australia.html: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-australia.html -oe ISO-8859-1 i386-emx.adp

i386-emx-australia.var: gen_makefile.conf
	echo > i386-emx-australia.var
	echo 'URI: i386-emx-australia.html.bg' >> i386-emx-australia.var
	echo 'Content-language: bg' >> i386-emx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-australia.var
	echo >> i386-emx-australia.var
	echo 'URI: i386-emx-australia.html.en' >> i386-emx-australia.var
	echo 'Content-language: en' >> i386-emx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-australia.var
	echo >> i386-emx-australia.var
	echo 'URI: i386-emx-australia.html.fr' >> i386-emx-australia.var
	echo 'Content-language: fr' >> i386-emx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-australia.var
	echo >> i386-emx-australia.var
	echo 'URI: i386-emx-australia.html.id' >> i386-emx-australia.var
	echo 'Content-language: id' >> i386-emx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-australia.var
	echo >> i386-emx-australia.var
	echo 'URI: i386-emx-australia.html.it' >> i386-emx-australia.var
	echo 'Content-language: it' >> i386-emx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-australia.var
	echo >> i386-emx-australia.var
	echo 'URI: i386-emx-australia.html.nl' >> i386-emx-australia.var
	echo 'Content-language: nl' >> i386-emx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-australia.var
	echo >> i386-emx-australia.var
	echo 'URI: i386-emx-australia.html.po' >> i386-emx-australia.var
	echo 'Content-language: pl' >> i386-emx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-australia.var
	echo >> i386-emx-australia.var
	echo 'URI: i386-emx-australia.html.sl' >> i386-emx-australia.var
	echo 'Content-language: sl' >> i386-emx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-australia.var
	echo >> i386-emx-australia.var
	echo 'URI: i386-emx-australia.html.ru' >> i386-emx-australia.var
	echo 'Content-language: ru' >> i386-emx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-australia.var
	echo >> i386-emx-australia.var
i386-netbsd-australia.html.bg: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-netbsd-australia.html.bg -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-australia.html.en: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-australia.html.en -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-australia.html.fr: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-netbsd-australia.html.fr -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-australia.html.id: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-netbsd-australia.html.id -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-australia.html.it: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-netbsd-australia.html.it -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-australia.html.nl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-netbsd-australia.html.nl -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-australia.html.po: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-netbsd-australia.html.po -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-australia.html.sl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-netbsd-australia.html.sl -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-australia.html.ru: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-netbsd-australia.html.ru -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-australia.html: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-australia.html -oe ISO-8859-1 i386-netbsd.adp

i386-netbsd-australia.var: gen_makefile.conf
	echo > i386-netbsd-australia.var
	echo 'URI: i386-netbsd-australia.html.bg' >> i386-netbsd-australia.var
	echo 'Content-language: bg' >> i386-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-australia.var
	echo >> i386-netbsd-australia.var
	echo 'URI: i386-netbsd-australia.html.en' >> i386-netbsd-australia.var
	echo 'Content-language: en' >> i386-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-australia.var
	echo >> i386-netbsd-australia.var
	echo 'URI: i386-netbsd-australia.html.fr' >> i386-netbsd-australia.var
	echo 'Content-language: fr' >> i386-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-australia.var
	echo >> i386-netbsd-australia.var
	echo 'URI: i386-netbsd-australia.html.id' >> i386-netbsd-australia.var
	echo 'Content-language: id' >> i386-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-australia.var
	echo >> i386-netbsd-australia.var
	echo 'URI: i386-netbsd-australia.html.it' >> i386-netbsd-australia.var
	echo 'Content-language: it' >> i386-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-australia.var
	echo >> i386-netbsd-australia.var
	echo 'URI: i386-netbsd-australia.html.nl' >> i386-netbsd-australia.var
	echo 'Content-language: nl' >> i386-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-australia.var
	echo >> i386-netbsd-australia.var
	echo 'URI: i386-netbsd-australia.html.po' >> i386-netbsd-australia.var
	echo 'Content-language: pl' >> i386-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-australia.var
	echo >> i386-netbsd-australia.var
	echo 'URI: i386-netbsd-australia.html.sl' >> i386-netbsd-australia.var
	echo 'Content-language: sl' >> i386-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-australia.var
	echo >> i386-netbsd-australia.var
	echo 'URI: i386-netbsd-australia.html.ru' >> i386-netbsd-australia.var
	echo 'Content-language: ru' >> i386-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-australia.var
	echo >> i386-netbsd-australia.var
i386-solaris-australia.html.bg: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-solaris-australia.html.bg -oe iso-8859-5 i386-solaris.adp
i386-solaris-australia.html.en: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-australia.html.en -oe iso-8859-1 i386-solaris.adp
i386-solaris-australia.html.fr: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-solaris-australia.html.fr -oe iso-8859-1 i386-solaris.adp
i386-solaris-australia.html.id: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-solaris-australia.html.id -oe iso-8859-1 i386-solaris.adp
i386-solaris-australia.html.it: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-solaris-australia.html.it -oe iso-8859-1 i386-solaris.adp
i386-solaris-australia.html.nl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-solaris-australia.html.nl -oe iso-8859-1 i386-solaris.adp
i386-solaris-australia.html.po: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-solaris-australia.html.po -oe iso-8859-2 i386-solaris.adp
i386-solaris-australia.html.sl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-solaris-australia.html.sl -oe iso-8859-2 i386-solaris.adp
i386-solaris-australia.html.ru: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-solaris-australia.html.ru -oe iso-8859-5 i386-solaris.adp
i386-solaris-australia.html: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-australia.html -oe ISO-8859-1 i386-solaris.adp

i386-solaris-australia.var: gen_makefile.conf
	echo > i386-solaris-australia.var
	echo 'URI: i386-solaris-australia.html.bg' >> i386-solaris-australia.var
	echo 'Content-language: bg' >> i386-solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-australia.var
	echo >> i386-solaris-australia.var
	echo 'URI: i386-solaris-australia.html.en' >> i386-solaris-australia.var
	echo 'Content-language: en' >> i386-solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-australia.var
	echo >> i386-solaris-australia.var
	echo 'URI: i386-solaris-australia.html.fr' >> i386-solaris-australia.var
	echo 'Content-language: fr' >> i386-solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-australia.var
	echo >> i386-solaris-australia.var
	echo 'URI: i386-solaris-australia.html.id' >> i386-solaris-australia.var
	echo 'Content-language: id' >> i386-solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-australia.var
	echo >> i386-solaris-australia.var
	echo 'URI: i386-solaris-australia.html.it' >> i386-solaris-australia.var
	echo 'Content-language: it' >> i386-solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-australia.var
	echo >> i386-solaris-australia.var
	echo 'URI: i386-solaris-australia.html.nl' >> i386-solaris-australia.var
	echo 'Content-language: nl' >> i386-solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-australia.var
	echo >> i386-solaris-australia.var
	echo 'URI: i386-solaris-australia.html.po' >> i386-solaris-australia.var
	echo 'Content-language: pl' >> i386-solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-australia.var
	echo >> i386-solaris-australia.var
	echo 'URI: i386-solaris-australia.html.sl' >> i386-solaris-australia.var
	echo 'Content-language: sl' >> i386-solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-australia.var
	echo >> i386-solaris-australia.var
	echo 'URI: i386-solaris-australia.html.ru' >> i386-solaris-australia.var
	echo 'Content-language: ru' >> i386-solaris-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-australia.var
	echo >> i386-solaris-australia.var
m68k-linux-australia.html.bg: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-linux-australia.html.bg -oe iso-8859-5 m68k-linux.adp
m68k-linux-australia.html.en: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-australia.html.en -oe iso-8859-1 m68k-linux.adp
m68k-linux-australia.html.fr: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-linux-australia.html.fr -oe iso-8859-1 m68k-linux.adp
m68k-linux-australia.html.id: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-linux-australia.html.id -oe iso-8859-1 m68k-linux.adp
m68k-linux-australia.html.it: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-linux-australia.html.it -oe iso-8859-1 m68k-linux.adp
m68k-linux-australia.html.nl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-linux-australia.html.nl -oe iso-8859-1 m68k-linux.adp
m68k-linux-australia.html.po: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-linux-australia.html.po -oe iso-8859-2 m68k-linux.adp
m68k-linux-australia.html.sl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-linux-australia.html.sl -oe iso-8859-2 m68k-linux.adp
m68k-linux-australia.html.ru: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-linux-australia.html.ru -oe iso-8859-5 m68k-linux.adp
m68k-linux-australia.html: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-australia.html -oe ISO-8859-1 m68k-linux.adp

m68k-linux-australia.var: gen_makefile.conf
	echo > m68k-linux-australia.var
	echo 'URI: m68k-linux-australia.html.bg' >> m68k-linux-australia.var
	echo 'Content-language: bg' >> m68k-linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-australia.var
	echo >> m68k-linux-australia.var
	echo 'URI: m68k-linux-australia.html.en' >> m68k-linux-australia.var
	echo 'Content-language: en' >> m68k-linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-australia.var
	echo >> m68k-linux-australia.var
	echo 'URI: m68k-linux-australia.html.fr' >> m68k-linux-australia.var
	echo 'Content-language: fr' >> m68k-linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-australia.var
	echo >> m68k-linux-australia.var
	echo 'URI: m68k-linux-australia.html.id' >> m68k-linux-australia.var
	echo 'Content-language: id' >> m68k-linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-australia.var
	echo >> m68k-linux-australia.var
	echo 'URI: m68k-linux-australia.html.it' >> m68k-linux-australia.var
	echo 'Content-language: it' >> m68k-linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-australia.var
	echo >> m68k-linux-australia.var
	echo 'URI: m68k-linux-australia.html.nl' >> m68k-linux-australia.var
	echo 'Content-language: nl' >> m68k-linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-australia.var
	echo >> m68k-linux-australia.var
	echo 'URI: m68k-linux-australia.html.po' >> m68k-linux-australia.var
	echo 'Content-language: pl' >> m68k-linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-australia.var
	echo >> m68k-linux-australia.var
	echo 'URI: m68k-linux-australia.html.sl' >> m68k-linux-australia.var
	echo 'Content-language: sl' >> m68k-linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-australia.var
	echo >> m68k-linux-australia.var
	echo 'URI: m68k-linux-australia.html.ru' >> m68k-linux-australia.var
	echo 'Content-language: ru' >> m68k-linux-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-australia.var
	echo >> m68k-linux-australia.var
down-australia.html.bg: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o down-australia.html.bg -oe iso-8859-5 down.adp
down-australia.html.en: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-australia.html.en -oe iso-8859-1 down.adp
down-australia.html.fr: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o down-australia.html.fr -oe iso-8859-1 down.adp
down-australia.html.id: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o down-australia.html.id -oe iso-8859-1 down.adp
down-australia.html.it: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o down-australia.html.it -oe iso-8859-1 down.adp
down-australia.html.nl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o down-australia.html.nl -oe iso-8859-1 down.adp
down-australia.html.po: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o down-australia.html.po -oe iso-8859-2 down.adp
down-australia.html.sl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o down-australia.html.sl -oe iso-8859-2 down.adp
down-australia.html.ru: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o down-australia.html.ru -oe iso-8859-5 down.adp
down-australia.html: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-australia.html -oe ISO-8859-1 down.adp

down-australia.var: gen_makefile.conf
	echo > down-australia.var
	echo 'URI: down-australia.html.bg' >> down-australia.var
	echo 'Content-language: bg' >> down-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-australia.var
	echo >> down-australia.var
	echo 'URI: down-australia.html.en' >> down-australia.var
	echo 'Content-language: en' >> down-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-australia.var
	echo >> down-australia.var
	echo 'URI: down-australia.html.fr' >> down-australia.var
	echo 'Content-language: fr' >> down-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-australia.var
	echo >> down-australia.var
	echo 'URI: down-australia.html.id' >> down-australia.var
	echo 'Content-language: id' >> down-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-australia.var
	echo >> down-australia.var
	echo 'URI: down-australia.html.it' >> down-australia.var
	echo 'Content-language: it' >> down-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-australia.var
	echo >> down-australia.var
	echo 'URI: down-australia.html.nl' >> down-australia.var
	echo 'Content-language: nl' >> down-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-australia.var
	echo >> down-australia.var
	echo 'URI: down-australia.html.po' >> down-australia.var
	echo 'Content-language: pl' >> down-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-australia.var
	echo >> down-australia.var
	echo 'URI: down-australia.html.sl' >> down-australia.var
	echo 'Content-language: sl' >> down-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-australia.var
	echo >> down-australia.var
	echo 'URI: down-australia.html.ru' >> down-australia.var
	echo 'Content-language: ru' >> down-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-australia.var
	echo >> down-australia.var
i386-go32v2-australia.html.bg: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-go32v2-australia.html.bg -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-australia.html.en: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-australia.html.en -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-australia.html.fr: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-go32v2-australia.html.fr -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-australia.html.id: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-go32v2-australia.html.id -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-australia.html.it: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-go32v2-australia.html.it -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-australia.html.nl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-go32v2-australia.html.nl -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-australia.html.po: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-go32v2-australia.html.po -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-australia.html.sl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-go32v2-australia.html.sl -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-australia.html.ru: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-go32v2-australia.html.ru -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-australia.html: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-australia.html -oe ISO-8859-1 i386-go32v2.adp

i386-go32v2-australia.var: gen_makefile.conf
	echo > i386-go32v2-australia.var
	echo 'URI: i386-go32v2-australia.html.bg' >> i386-go32v2-australia.var
	echo 'Content-language: bg' >> i386-go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-australia.var
	echo >> i386-go32v2-australia.var
	echo 'URI: i386-go32v2-australia.html.en' >> i386-go32v2-australia.var
	echo 'Content-language: en' >> i386-go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-australia.var
	echo >> i386-go32v2-australia.var
	echo 'URI: i386-go32v2-australia.html.fr' >> i386-go32v2-australia.var
	echo 'Content-language: fr' >> i386-go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-australia.var
	echo >> i386-go32v2-australia.var
	echo 'URI: i386-go32v2-australia.html.id' >> i386-go32v2-australia.var
	echo 'Content-language: id' >> i386-go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-australia.var
	echo >> i386-go32v2-australia.var
	echo 'URI: i386-go32v2-australia.html.it' >> i386-go32v2-australia.var
	echo 'Content-language: it' >> i386-go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-australia.var
	echo >> i386-go32v2-australia.var
	echo 'URI: i386-go32v2-australia.html.nl' >> i386-go32v2-australia.var
	echo 'Content-language: nl' >> i386-go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-australia.var
	echo >> i386-go32v2-australia.var
	echo 'URI: i386-go32v2-australia.html.po' >> i386-go32v2-australia.var
	echo 'Content-language: pl' >> i386-go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-australia.var
	echo >> i386-go32v2-australia.var
	echo 'URI: i386-go32v2-australia.html.sl' >> i386-go32v2-australia.var
	echo 'Content-language: sl' >> i386-go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-australia.var
	echo >> i386-go32v2-australia.var
	echo 'URI: i386-go32v2-australia.html.ru' >> i386-go32v2-australia.var
	echo 'Content-language: ru' >> i386-go32v2-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-australia.var
	echo >> i386-go32v2-australia.var
i386-qnx-australia.html.bg: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-qnx-australia.html.bg -oe iso-8859-5 i386-qnx.adp
i386-qnx-australia.html.en: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-australia.html.en -oe iso-8859-1 i386-qnx.adp
i386-qnx-australia.html.fr: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-qnx-australia.html.fr -oe iso-8859-1 i386-qnx.adp
i386-qnx-australia.html.id: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-qnx-australia.html.id -oe iso-8859-1 i386-qnx.adp
i386-qnx-australia.html.it: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-qnx-australia.html.it -oe iso-8859-1 i386-qnx.adp
i386-qnx-australia.html.nl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-qnx-australia.html.nl -oe iso-8859-1 i386-qnx.adp
i386-qnx-australia.html.po: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-qnx-australia.html.po -oe iso-8859-2 i386-qnx.adp
i386-qnx-australia.html.sl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-qnx-australia.html.sl -oe iso-8859-2 i386-qnx.adp
i386-qnx-australia.html.ru: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-qnx-australia.html.ru -oe iso-8859-5 i386-qnx.adp
i386-qnx-australia.html: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-australia.html -oe ISO-8859-1 i386-qnx.adp

i386-qnx-australia.var: gen_makefile.conf
	echo > i386-qnx-australia.var
	echo 'URI: i386-qnx-australia.html.bg' >> i386-qnx-australia.var
	echo 'Content-language: bg' >> i386-qnx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-australia.var
	echo >> i386-qnx-australia.var
	echo 'URI: i386-qnx-australia.html.en' >> i386-qnx-australia.var
	echo 'Content-language: en' >> i386-qnx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-australia.var
	echo >> i386-qnx-australia.var
	echo 'URI: i386-qnx-australia.html.fr' >> i386-qnx-australia.var
	echo 'Content-language: fr' >> i386-qnx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-australia.var
	echo >> i386-qnx-australia.var
	echo 'URI: i386-qnx-australia.html.id' >> i386-qnx-australia.var
	echo 'Content-language: id' >> i386-qnx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-australia.var
	echo >> i386-qnx-australia.var
	echo 'URI: i386-qnx-australia.html.it' >> i386-qnx-australia.var
	echo 'Content-language: it' >> i386-qnx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-australia.var
	echo >> i386-qnx-australia.var
	echo 'URI: i386-qnx-australia.html.nl' >> i386-qnx-australia.var
	echo 'Content-language: nl' >> i386-qnx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-australia.var
	echo >> i386-qnx-australia.var
	echo 'URI: i386-qnx-australia.html.po' >> i386-qnx-australia.var
	echo 'Content-language: pl' >> i386-qnx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-australia.var
	echo >> i386-qnx-australia.var
	echo 'URI: i386-qnx-australia.html.sl' >> i386-qnx-australia.var
	echo 'Content-language: sl' >> i386-qnx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-australia.var
	echo >> i386-qnx-australia.var
	echo 'URI: i386-qnx-australia.html.ru' >> i386-qnx-australia.var
	echo 'Content-language: ru' >> i386-qnx-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-australia.var
	echo >> i386-qnx-australia.var
m68k-amiga-australia.html.bg: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-amiga-australia.html.bg -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-australia.html.en: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-australia.html.en -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-australia.html.fr: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-amiga-australia.html.fr -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-australia.html.id: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-amiga-australia.html.id -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-australia.html.it: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-amiga-australia.html.it -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-australia.html.nl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-amiga-australia.html.nl -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-australia.html.po: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-amiga-australia.html.po -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-australia.html.sl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-amiga-australia.html.sl -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-australia.html.ru: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-amiga-australia.html.ru -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-australia.html: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-australia.html -oe ISO-8859-1 m68k-amiga.adp

m68k-amiga-australia.var: gen_makefile.conf
	echo > m68k-amiga-australia.var
	echo 'URI: m68k-amiga-australia.html.bg' >> m68k-amiga-australia.var
	echo 'Content-language: bg' >> m68k-amiga-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-australia.var
	echo >> m68k-amiga-australia.var
	echo 'URI: m68k-amiga-australia.html.en' >> m68k-amiga-australia.var
	echo 'Content-language: en' >> m68k-amiga-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-australia.var
	echo >> m68k-amiga-australia.var
	echo 'URI: m68k-amiga-australia.html.fr' >> m68k-amiga-australia.var
	echo 'Content-language: fr' >> m68k-amiga-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-australia.var
	echo >> m68k-amiga-australia.var
	echo 'URI: m68k-amiga-australia.html.id' >> m68k-amiga-australia.var
	echo 'Content-language: id' >> m68k-amiga-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-australia.var
	echo >> m68k-amiga-australia.var
	echo 'URI: m68k-amiga-australia.html.it' >> m68k-amiga-australia.var
	echo 'Content-language: it' >> m68k-amiga-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-australia.var
	echo >> m68k-amiga-australia.var
	echo 'URI: m68k-amiga-australia.html.nl' >> m68k-amiga-australia.var
	echo 'Content-language: nl' >> m68k-amiga-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-australia.var
	echo >> m68k-amiga-australia.var
	echo 'URI: m68k-amiga-australia.html.po' >> m68k-amiga-australia.var
	echo 'Content-language: pl' >> m68k-amiga-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-australia.var
	echo >> m68k-amiga-australia.var
	echo 'URI: m68k-amiga-australia.html.sl' >> m68k-amiga-australia.var
	echo 'Content-language: sl' >> m68k-amiga-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-australia.var
	echo >> m68k-amiga-australia.var
	echo 'URI: m68k-amiga-australia.html.ru' >> m68k-amiga-australia.var
	echo 'Content-language: ru' >> m68k-amiga-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-australia.var
	echo >> m68k-amiga-australia.var
m68k-netbsd-australia.html.bg: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-netbsd-australia.html.bg -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-australia.html.en: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-australia.html.en -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-australia.html.fr: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-netbsd-australia.html.fr -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-australia.html.id: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-netbsd-australia.html.id -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-australia.html.it: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-netbsd-australia.html.it -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-australia.html.nl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-netbsd-australia.html.nl -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-australia.html.po: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-netbsd-australia.html.po -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-australia.html.sl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-netbsd-australia.html.sl -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-australia.html.ru: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-netbsd-australia.html.ru -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-australia.html: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -p mirrorsuffix=australia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-australia.html -oe ISO-8859-1 m68k-netbsd.adp

m68k-netbsd-australia.var: gen_makefile.conf
	echo > m68k-netbsd-australia.var
	echo 'URI: m68k-netbsd-australia.html.bg' >> m68k-netbsd-australia.var
	echo 'Content-language: bg' >> m68k-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-australia.var
	echo >> m68k-netbsd-australia.var
	echo 'URI: m68k-netbsd-australia.html.en' >> m68k-netbsd-australia.var
	echo 'Content-language: en' >> m68k-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-australia.var
	echo >> m68k-netbsd-australia.var
	echo 'URI: m68k-netbsd-australia.html.fr' >> m68k-netbsd-australia.var
	echo 'Content-language: fr' >> m68k-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-australia.var
	echo >> m68k-netbsd-australia.var
	echo 'URI: m68k-netbsd-australia.html.id' >> m68k-netbsd-australia.var
	echo 'Content-language: id' >> m68k-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-australia.var
	echo >> m68k-netbsd-australia.var
	echo 'URI: m68k-netbsd-australia.html.it' >> m68k-netbsd-australia.var
	echo 'Content-language: it' >> m68k-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-australia.var
	echo >> m68k-netbsd-australia.var
	echo 'URI: m68k-netbsd-australia.html.nl' >> m68k-netbsd-australia.var
	echo 'Content-language: nl' >> m68k-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-australia.var
	echo >> m68k-netbsd-australia.var
	echo 'URI: m68k-netbsd-australia.html.po' >> m68k-netbsd-australia.var
	echo 'Content-language: pl' >> m68k-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-australia.var
	echo >> m68k-netbsd-australia.var
	echo 'URI: m68k-netbsd-australia.html.sl' >> m68k-netbsd-australia.var
	echo 'Content-language: sl' >> m68k-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-australia.var
	echo >> m68k-netbsd-australia.var
	echo 'URI: m68k-netbsd-australia.html.ru' >> m68k-netbsd-australia.var
	echo 'Content-language: ru' >> m68k-netbsd-australia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-australia.var
	echo >> m68k-netbsd-australia.var
docs-austria.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o docs-austria.html.bg -oe iso-8859-5 docs.adp
docs-austria.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-austria.html.en -oe iso-8859-1 docs.adp
docs-austria.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o docs-austria.html.fr -oe iso-8859-1 docs.adp
docs-austria.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o docs-austria.html.id -oe iso-8859-1 docs.adp
docs-austria.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o docs-austria.html.it -oe iso-8859-1 docs.adp
docs-austria.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o docs-austria.html.nl -oe iso-8859-1 docs.adp
docs-austria.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o docs-austria.html.po -oe iso-8859-2 docs.adp
docs-austria.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o docs-austria.html.sl -oe iso-8859-2 docs.adp
docs-austria.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o docs-austria.html.ru -oe iso-8859-5 docs.adp
docs-austria.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-austria.html -oe ISO-8859-1 docs.adp

docs-austria.var: gen_makefile.conf
	echo > docs-austria.var
	echo 'URI: docs-austria.html.bg' >> docs-austria.var
	echo 'Content-language: bg' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.en' >> docs-austria.var
	echo 'Content-language: en' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.fr' >> docs-austria.var
	echo 'Content-language: fr' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.id' >> docs-austria.var
	echo 'Content-language: id' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.it' >> docs-austria.var
	echo 'Content-language: it' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.nl' >> docs-austria.var
	echo 'Content-language: nl' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.po' >> docs-austria.var
	echo 'Content-language: pl' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.sl' >> docs-austria.var
	echo 'Content-language: sl' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-austria.var
	echo >> docs-austria.var
	echo 'URI: docs-austria.html.ru' >> docs-austria.var
	echo 'Content-language: ru' >> docs-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-austria.var
	echo >> docs-austria.var
i386-beos-austria.html.bg: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-beos-austria.html.bg -oe iso-8859-5 i386-beos.adp
i386-beos-austria.html.en: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-austria.html.en -oe iso-8859-1 i386-beos.adp
i386-beos-austria.html.fr: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-beos-austria.html.fr -oe iso-8859-1 i386-beos.adp
i386-beos-austria.html.id: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-beos-austria.html.id -oe iso-8859-1 i386-beos.adp
i386-beos-austria.html.it: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-beos-austria.html.it -oe iso-8859-1 i386-beos.adp
i386-beos-austria.html.nl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-beos-austria.html.nl -oe iso-8859-1 i386-beos.adp
i386-beos-austria.html.po: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-beos-austria.html.po -oe iso-8859-2 i386-beos.adp
i386-beos-austria.html.sl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-beos-austria.html.sl -oe iso-8859-2 i386-beos.adp
i386-beos-austria.html.ru: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-beos-austria.html.ru -oe iso-8859-5 i386-beos.adp
i386-beos-austria.html: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-austria.html -oe ISO-8859-1 i386-beos.adp

i386-beos-austria.var: gen_makefile.conf
	echo > i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.bg' >> i386-beos-austria.var
	echo 'Content-language: bg' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.en' >> i386-beos-austria.var
	echo 'Content-language: en' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.fr' >> i386-beos-austria.var
	echo 'Content-language: fr' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.id' >> i386-beos-austria.var
	echo 'Content-language: id' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.it' >> i386-beos-austria.var
	echo 'Content-language: it' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.nl' >> i386-beos-austria.var
	echo 'Content-language: nl' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.po' >> i386-beos-austria.var
	echo 'Content-language: pl' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.sl' >> i386-beos-austria.var
	echo 'Content-language: sl' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
	echo 'URI: i386-beos-austria.html.ru' >> i386-beos-austria.var
	echo 'Content-language: ru' >> i386-beos-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-austria.var
	echo >> i386-beos-austria.var
i386-emx-austria.html.bg: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-emx-austria.html.bg -oe iso-8859-5 i386-emx.adp
i386-emx-austria.html.en: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-austria.html.en -oe iso-8859-1 i386-emx.adp
i386-emx-austria.html.fr: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-emx-austria.html.fr -oe iso-8859-1 i386-emx.adp
i386-emx-austria.html.id: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-emx-austria.html.id -oe iso-8859-1 i386-emx.adp
i386-emx-austria.html.it: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-emx-austria.html.it -oe iso-8859-1 i386-emx.adp
i386-emx-austria.html.nl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-emx-austria.html.nl -oe iso-8859-1 i386-emx.adp
i386-emx-austria.html.po: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-emx-austria.html.po -oe iso-8859-2 i386-emx.adp
i386-emx-austria.html.sl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-emx-austria.html.sl -oe iso-8859-2 i386-emx.adp
i386-emx-austria.html.ru: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-emx-austria.html.ru -oe iso-8859-5 i386-emx.adp
i386-emx-austria.html: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-austria.html -oe ISO-8859-1 i386-emx.adp

i386-emx-austria.var: gen_makefile.conf
	echo > i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.bg' >> i386-emx-austria.var
	echo 'Content-language: bg' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.en' >> i386-emx-austria.var
	echo 'Content-language: en' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.fr' >> i386-emx-austria.var
	echo 'Content-language: fr' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.id' >> i386-emx-austria.var
	echo 'Content-language: id' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.it' >> i386-emx-austria.var
	echo 'Content-language: it' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.nl' >> i386-emx-austria.var
	echo 'Content-language: nl' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.po' >> i386-emx-austria.var
	echo 'Content-language: pl' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.sl' >> i386-emx-austria.var
	echo 'Content-language: sl' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
	echo 'URI: i386-emx-austria.html.ru' >> i386-emx-austria.var
	echo 'Content-language: ru' >> i386-emx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-austria.var
	echo >> i386-emx-austria.var
i386-netbsd-austria.html.bg: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-netbsd-austria.html.bg -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-austria.html.en: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-austria.html.en -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-austria.html.fr: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-netbsd-austria.html.fr -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-austria.html.id: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-netbsd-austria.html.id -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-austria.html.it: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-netbsd-austria.html.it -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-austria.html.nl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-netbsd-austria.html.nl -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-austria.html.po: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-netbsd-austria.html.po -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-austria.html.sl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-netbsd-austria.html.sl -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-austria.html.ru: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-netbsd-austria.html.ru -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-austria.html: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-austria.html -oe ISO-8859-1 i386-netbsd.adp

i386-netbsd-austria.var: gen_makefile.conf
	echo > i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.bg' >> i386-netbsd-austria.var
	echo 'Content-language: bg' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.en' >> i386-netbsd-austria.var
	echo 'Content-language: en' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.fr' >> i386-netbsd-austria.var
	echo 'Content-language: fr' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.id' >> i386-netbsd-austria.var
	echo 'Content-language: id' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.it' >> i386-netbsd-austria.var
	echo 'Content-language: it' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.nl' >> i386-netbsd-austria.var
	echo 'Content-language: nl' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.po' >> i386-netbsd-austria.var
	echo 'Content-language: pl' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.sl' >> i386-netbsd-austria.var
	echo 'Content-language: sl' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
	echo 'URI: i386-netbsd-austria.html.ru' >> i386-netbsd-austria.var
	echo 'Content-language: ru' >> i386-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-austria.var
	echo >> i386-netbsd-austria.var
i386-solaris-austria.html.bg: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-solaris-austria.html.bg -oe iso-8859-5 i386-solaris.adp
i386-solaris-austria.html.en: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-austria.html.en -oe iso-8859-1 i386-solaris.adp
i386-solaris-austria.html.fr: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-solaris-austria.html.fr -oe iso-8859-1 i386-solaris.adp
i386-solaris-austria.html.id: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-solaris-austria.html.id -oe iso-8859-1 i386-solaris.adp
i386-solaris-austria.html.it: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-solaris-austria.html.it -oe iso-8859-1 i386-solaris.adp
i386-solaris-austria.html.nl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-solaris-austria.html.nl -oe iso-8859-1 i386-solaris.adp
i386-solaris-austria.html.po: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-solaris-austria.html.po -oe iso-8859-2 i386-solaris.adp
i386-solaris-austria.html.sl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-solaris-austria.html.sl -oe iso-8859-2 i386-solaris.adp
i386-solaris-austria.html.ru: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-solaris-austria.html.ru -oe iso-8859-5 i386-solaris.adp
i386-solaris-austria.html: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-austria.html -oe ISO-8859-1 i386-solaris.adp

i386-solaris-austria.var: gen_makefile.conf
	echo > i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.bg' >> i386-solaris-austria.var
	echo 'Content-language: bg' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.en' >> i386-solaris-austria.var
	echo 'Content-language: en' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.fr' >> i386-solaris-austria.var
	echo 'Content-language: fr' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.id' >> i386-solaris-austria.var
	echo 'Content-language: id' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.it' >> i386-solaris-austria.var
	echo 'Content-language: it' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.nl' >> i386-solaris-austria.var
	echo 'Content-language: nl' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.po' >> i386-solaris-austria.var
	echo 'Content-language: pl' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.sl' >> i386-solaris-austria.var
	echo 'Content-language: sl' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
	echo 'URI: i386-solaris-austria.html.ru' >> i386-solaris-austria.var
	echo 'Content-language: ru' >> i386-solaris-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-austria.var
	echo >> i386-solaris-austria.var
m68k-linux-austria.html.bg: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-linux-austria.html.bg -oe iso-8859-5 m68k-linux.adp
m68k-linux-austria.html.en: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-austria.html.en -oe iso-8859-1 m68k-linux.adp
m68k-linux-austria.html.fr: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-linux-austria.html.fr -oe iso-8859-1 m68k-linux.adp
m68k-linux-austria.html.id: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-linux-austria.html.id -oe iso-8859-1 m68k-linux.adp
m68k-linux-austria.html.it: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-linux-austria.html.it -oe iso-8859-1 m68k-linux.adp
m68k-linux-austria.html.nl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-linux-austria.html.nl -oe iso-8859-1 m68k-linux.adp
m68k-linux-austria.html.po: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-linux-austria.html.po -oe iso-8859-2 m68k-linux.adp
m68k-linux-austria.html.sl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-linux-austria.html.sl -oe iso-8859-2 m68k-linux.adp
m68k-linux-austria.html.ru: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-linux-austria.html.ru -oe iso-8859-5 m68k-linux.adp
m68k-linux-austria.html: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-austria.html -oe ISO-8859-1 m68k-linux.adp

m68k-linux-austria.var: gen_makefile.conf
	echo > m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.bg' >> m68k-linux-austria.var
	echo 'Content-language: bg' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.en' >> m68k-linux-austria.var
	echo 'Content-language: en' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.fr' >> m68k-linux-austria.var
	echo 'Content-language: fr' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.id' >> m68k-linux-austria.var
	echo 'Content-language: id' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.it' >> m68k-linux-austria.var
	echo 'Content-language: it' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.nl' >> m68k-linux-austria.var
	echo 'Content-language: nl' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.po' >> m68k-linux-austria.var
	echo 'Content-language: pl' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.sl' >> m68k-linux-austria.var
	echo 'Content-language: sl' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
	echo 'URI: m68k-linux-austria.html.ru' >> m68k-linux-austria.var
	echo 'Content-language: ru' >> m68k-linux-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-austria.var
	echo >> m68k-linux-austria.var
down-austria.html.bg: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o down-austria.html.bg -oe iso-8859-5 down.adp
down-austria.html.en: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-austria.html.en -oe iso-8859-1 down.adp
down-austria.html.fr: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o down-austria.html.fr -oe iso-8859-1 down.adp
down-austria.html.id: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o down-austria.html.id -oe iso-8859-1 down.adp
down-austria.html.it: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o down-austria.html.it -oe iso-8859-1 down.adp
down-austria.html.nl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o down-austria.html.nl -oe iso-8859-1 down.adp
down-austria.html.po: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o down-austria.html.po -oe iso-8859-2 down.adp
down-austria.html.sl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o down-austria.html.sl -oe iso-8859-2 down.adp
down-austria.html.ru: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o down-austria.html.ru -oe iso-8859-5 down.adp
down-austria.html: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-austria.html -oe ISO-8859-1 down.adp

down-austria.var: gen_makefile.conf
	echo > down-austria.var
	echo 'URI: down-austria.html.bg' >> down-austria.var
	echo 'Content-language: bg' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.en' >> down-austria.var
	echo 'Content-language: en' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.fr' >> down-austria.var
	echo 'Content-language: fr' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.id' >> down-austria.var
	echo 'Content-language: id' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.it' >> down-austria.var
	echo 'Content-language: it' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.nl' >> down-austria.var
	echo 'Content-language: nl' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.po' >> down-austria.var
	echo 'Content-language: pl' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.sl' >> down-austria.var
	echo 'Content-language: sl' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-austria.var
	echo >> down-austria.var
	echo 'URI: down-austria.html.ru' >> down-austria.var
	echo 'Content-language: ru' >> down-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-austria.var
	echo >> down-austria.var
i386-go32v2-austria.html.bg: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-go32v2-austria.html.bg -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-austria.html.en: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-austria.html.en -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-austria.html.fr: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-go32v2-austria.html.fr -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-austria.html.id: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-go32v2-austria.html.id -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-austria.html.it: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-go32v2-austria.html.it -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-austria.html.nl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-go32v2-austria.html.nl -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-austria.html.po: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-go32v2-austria.html.po -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-austria.html.sl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-go32v2-austria.html.sl -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-austria.html.ru: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-go32v2-austria.html.ru -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-austria.html: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-austria.html -oe ISO-8859-1 i386-go32v2.adp

i386-go32v2-austria.var: gen_makefile.conf
	echo > i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.bg' >> i386-go32v2-austria.var
	echo 'Content-language: bg' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.en' >> i386-go32v2-austria.var
	echo 'Content-language: en' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.fr' >> i386-go32v2-austria.var
	echo 'Content-language: fr' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.id' >> i386-go32v2-austria.var
	echo 'Content-language: id' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.it' >> i386-go32v2-austria.var
	echo 'Content-language: it' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.nl' >> i386-go32v2-austria.var
	echo 'Content-language: nl' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.po' >> i386-go32v2-austria.var
	echo 'Content-language: pl' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.sl' >> i386-go32v2-austria.var
	echo 'Content-language: sl' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
	echo 'URI: i386-go32v2-austria.html.ru' >> i386-go32v2-austria.var
	echo 'Content-language: ru' >> i386-go32v2-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-austria.var
	echo >> i386-go32v2-austria.var
i386-qnx-austria.html.bg: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-qnx-austria.html.bg -oe iso-8859-5 i386-qnx.adp
i386-qnx-austria.html.en: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-austria.html.en -oe iso-8859-1 i386-qnx.adp
i386-qnx-austria.html.fr: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-qnx-austria.html.fr -oe iso-8859-1 i386-qnx.adp
i386-qnx-austria.html.id: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-qnx-austria.html.id -oe iso-8859-1 i386-qnx.adp
i386-qnx-austria.html.it: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-qnx-austria.html.it -oe iso-8859-1 i386-qnx.adp
i386-qnx-austria.html.nl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-qnx-austria.html.nl -oe iso-8859-1 i386-qnx.adp
i386-qnx-austria.html.po: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-qnx-austria.html.po -oe iso-8859-2 i386-qnx.adp
i386-qnx-austria.html.sl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-qnx-austria.html.sl -oe iso-8859-2 i386-qnx.adp
i386-qnx-austria.html.ru: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-qnx-austria.html.ru -oe iso-8859-5 i386-qnx.adp
i386-qnx-austria.html: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-austria.html -oe ISO-8859-1 i386-qnx.adp

i386-qnx-austria.var: gen_makefile.conf
	echo > i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.bg' >> i386-qnx-austria.var
	echo 'Content-language: bg' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.en' >> i386-qnx-austria.var
	echo 'Content-language: en' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.fr' >> i386-qnx-austria.var
	echo 'Content-language: fr' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.id' >> i386-qnx-austria.var
	echo 'Content-language: id' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.it' >> i386-qnx-austria.var
	echo 'Content-language: it' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.nl' >> i386-qnx-austria.var
	echo 'Content-language: nl' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.po' >> i386-qnx-austria.var
	echo 'Content-language: pl' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.sl' >> i386-qnx-austria.var
	echo 'Content-language: sl' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
	echo 'URI: i386-qnx-austria.html.ru' >> i386-qnx-austria.var
	echo 'Content-language: ru' >> i386-qnx-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-austria.var
	echo >> i386-qnx-austria.var
m68k-amiga-austria.html.bg: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-amiga-austria.html.bg -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-austria.html.en: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-austria.html.en -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-austria.html.fr: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-amiga-austria.html.fr -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-austria.html.id: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-amiga-austria.html.id -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-austria.html.it: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-amiga-austria.html.it -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-austria.html.nl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-amiga-austria.html.nl -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-austria.html.po: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-amiga-austria.html.po -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-austria.html.sl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-amiga-austria.html.sl -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-austria.html.ru: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-amiga-austria.html.ru -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-austria.html: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-austria.html -oe ISO-8859-1 m68k-amiga.adp

m68k-amiga-austria.var: gen_makefile.conf
	echo > m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.bg' >> m68k-amiga-austria.var
	echo 'Content-language: bg' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.en' >> m68k-amiga-austria.var
	echo 'Content-language: en' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.fr' >> m68k-amiga-austria.var
	echo 'Content-language: fr' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.id' >> m68k-amiga-austria.var
	echo 'Content-language: id' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.it' >> m68k-amiga-austria.var
	echo 'Content-language: it' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.nl' >> m68k-amiga-austria.var
	echo 'Content-language: nl' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.po' >> m68k-amiga-austria.var
	echo 'Content-language: pl' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.sl' >> m68k-amiga-austria.var
	echo 'Content-language: sl' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
	echo 'URI: m68k-amiga-austria.html.ru' >> m68k-amiga-austria.var
	echo 'Content-language: ru' >> m68k-amiga-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-austria.var
	echo >> m68k-amiga-austria.var
m68k-netbsd-austria.html.bg: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-netbsd-austria.html.bg -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-austria.html.en: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-austria.html.en -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-austria.html.fr: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-netbsd-austria.html.fr -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-austria.html.id: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-netbsd-austria.html.id -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-austria.html.it: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-netbsd-austria.html.it -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-austria.html.nl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-netbsd-austria.html.nl -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-austria.html.po: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-netbsd-austria.html.po -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-austria.html.sl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-netbsd-austria.html.sl -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-austria.html.ru: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-netbsd-austria.html.ru -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-austria.html: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -p mirrorsuffix=austria -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-austria.html -oe ISO-8859-1 m68k-netbsd.adp

m68k-netbsd-austria.var: gen_makefile.conf
	echo > m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.bg' >> m68k-netbsd-austria.var
	echo 'Content-language: bg' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.en' >> m68k-netbsd-austria.var
	echo 'Content-language: en' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.fr' >> m68k-netbsd-austria.var
	echo 'Content-language: fr' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.id' >> m68k-netbsd-austria.var
	echo 'Content-language: id' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.it' >> m68k-netbsd-austria.var
	echo 'Content-language: it' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.nl' >> m68k-netbsd-austria.var
	echo 'Content-language: nl' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.po' >> m68k-netbsd-austria.var
	echo 'Content-language: pl' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.sl' >> m68k-netbsd-austria.var
	echo 'Content-language: sl' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
	echo 'URI: m68k-netbsd-austria.html.ru' >> m68k-netbsd-austria.var
	echo 'Content-language: ru' >> m68k-netbsd-austria.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-austria.var
	echo >> m68k-netbsd-austria.var
docs-hungary.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o docs-hungary.html.bg -oe iso-8859-5 docs.adp
docs-hungary.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-hungary.html.en -oe iso-8859-1 docs.adp
docs-hungary.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o docs-hungary.html.fr -oe iso-8859-1 docs.adp
docs-hungary.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o docs-hungary.html.id -oe iso-8859-1 docs.adp
docs-hungary.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o docs-hungary.html.it -oe iso-8859-1 docs.adp
docs-hungary.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o docs-hungary.html.nl -oe iso-8859-1 docs.adp
docs-hungary.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o docs-hungary.html.po -oe iso-8859-2 docs.adp
docs-hungary.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o docs-hungary.html.sl -oe iso-8859-2 docs.adp
docs-hungary.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o docs-hungary.html.ru -oe iso-8859-5 docs.adp
docs-hungary.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-hungary.html -oe ISO-8859-1 docs.adp

docs-hungary.var: gen_makefile.conf
	echo > docs-hungary.var
	echo 'URI: docs-hungary.html.bg' >> docs-hungary.var
	echo 'Content-language: bg' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.en' >> docs-hungary.var
	echo 'Content-language: en' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.fr' >> docs-hungary.var
	echo 'Content-language: fr' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.id' >> docs-hungary.var
	echo 'Content-language: id' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.it' >> docs-hungary.var
	echo 'Content-language: it' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.nl' >> docs-hungary.var
	echo 'Content-language: nl' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.po' >> docs-hungary.var
	echo 'Content-language: pl' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.sl' >> docs-hungary.var
	echo 'Content-language: sl' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-hungary.var
	echo >> docs-hungary.var
	echo 'URI: docs-hungary.html.ru' >> docs-hungary.var
	echo 'Content-language: ru' >> docs-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-hungary.var
	echo >> docs-hungary.var
i386-beos-hungary.html.bg: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-beos-hungary.html.bg -oe iso-8859-5 i386-beos.adp
i386-beos-hungary.html.en: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-hungary.html.en -oe iso-8859-1 i386-beos.adp
i386-beos-hungary.html.fr: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-beos-hungary.html.fr -oe iso-8859-1 i386-beos.adp
i386-beos-hungary.html.id: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-beos-hungary.html.id -oe iso-8859-1 i386-beos.adp
i386-beos-hungary.html.it: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-beos-hungary.html.it -oe iso-8859-1 i386-beos.adp
i386-beos-hungary.html.nl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-beos-hungary.html.nl -oe iso-8859-1 i386-beos.adp
i386-beos-hungary.html.po: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-beos-hungary.html.po -oe iso-8859-2 i386-beos.adp
i386-beos-hungary.html.sl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-beos-hungary.html.sl -oe iso-8859-2 i386-beos.adp
i386-beos-hungary.html.ru: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-beos-hungary.html.ru -oe iso-8859-5 i386-beos.adp
i386-beos-hungary.html: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-hungary.html -oe ISO-8859-1 i386-beos.adp

i386-beos-hungary.var: gen_makefile.conf
	echo > i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.bg' >> i386-beos-hungary.var
	echo 'Content-language: bg' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.en' >> i386-beos-hungary.var
	echo 'Content-language: en' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.fr' >> i386-beos-hungary.var
	echo 'Content-language: fr' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.id' >> i386-beos-hungary.var
	echo 'Content-language: id' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.it' >> i386-beos-hungary.var
	echo 'Content-language: it' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.nl' >> i386-beos-hungary.var
	echo 'Content-language: nl' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.po' >> i386-beos-hungary.var
	echo 'Content-language: pl' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.sl' >> i386-beos-hungary.var
	echo 'Content-language: sl' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
	echo 'URI: i386-beos-hungary.html.ru' >> i386-beos-hungary.var
	echo 'Content-language: ru' >> i386-beos-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-hungary.var
	echo >> i386-beos-hungary.var
i386-emx-hungary.html.bg: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-emx-hungary.html.bg -oe iso-8859-5 i386-emx.adp
i386-emx-hungary.html.en: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-hungary.html.en -oe iso-8859-1 i386-emx.adp
i386-emx-hungary.html.fr: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-emx-hungary.html.fr -oe iso-8859-1 i386-emx.adp
i386-emx-hungary.html.id: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-emx-hungary.html.id -oe iso-8859-1 i386-emx.adp
i386-emx-hungary.html.it: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-emx-hungary.html.it -oe iso-8859-1 i386-emx.adp
i386-emx-hungary.html.nl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-emx-hungary.html.nl -oe iso-8859-1 i386-emx.adp
i386-emx-hungary.html.po: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-emx-hungary.html.po -oe iso-8859-2 i386-emx.adp
i386-emx-hungary.html.sl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-emx-hungary.html.sl -oe iso-8859-2 i386-emx.adp
i386-emx-hungary.html.ru: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-emx-hungary.html.ru -oe iso-8859-5 i386-emx.adp
i386-emx-hungary.html: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-hungary.html -oe ISO-8859-1 i386-emx.adp

i386-emx-hungary.var: gen_makefile.conf
	echo > i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.bg' >> i386-emx-hungary.var
	echo 'Content-language: bg' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.en' >> i386-emx-hungary.var
	echo 'Content-language: en' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.fr' >> i386-emx-hungary.var
	echo 'Content-language: fr' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.id' >> i386-emx-hungary.var
	echo 'Content-language: id' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.it' >> i386-emx-hungary.var
	echo 'Content-language: it' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.nl' >> i386-emx-hungary.var
	echo 'Content-language: nl' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.po' >> i386-emx-hungary.var
	echo 'Content-language: pl' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.sl' >> i386-emx-hungary.var
	echo 'Content-language: sl' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
	echo 'URI: i386-emx-hungary.html.ru' >> i386-emx-hungary.var
	echo 'Content-language: ru' >> i386-emx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-hungary.var
	echo >> i386-emx-hungary.var
i386-netbsd-hungary.html.bg: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-netbsd-hungary.html.bg -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-hungary.html.en: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-hungary.html.en -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-hungary.html.fr: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-netbsd-hungary.html.fr -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-hungary.html.id: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-netbsd-hungary.html.id -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-hungary.html.it: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-netbsd-hungary.html.it -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-hungary.html.nl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-netbsd-hungary.html.nl -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-hungary.html.po: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-netbsd-hungary.html.po -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-hungary.html.sl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-netbsd-hungary.html.sl -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-hungary.html.ru: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-netbsd-hungary.html.ru -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-hungary.html: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-hungary.html -oe ISO-8859-1 i386-netbsd.adp

i386-netbsd-hungary.var: gen_makefile.conf
	echo > i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.bg' >> i386-netbsd-hungary.var
	echo 'Content-language: bg' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.en' >> i386-netbsd-hungary.var
	echo 'Content-language: en' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.fr' >> i386-netbsd-hungary.var
	echo 'Content-language: fr' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.id' >> i386-netbsd-hungary.var
	echo 'Content-language: id' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.it' >> i386-netbsd-hungary.var
	echo 'Content-language: it' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.nl' >> i386-netbsd-hungary.var
	echo 'Content-language: nl' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.po' >> i386-netbsd-hungary.var
	echo 'Content-language: pl' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.sl' >> i386-netbsd-hungary.var
	echo 'Content-language: sl' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
	echo 'URI: i386-netbsd-hungary.html.ru' >> i386-netbsd-hungary.var
	echo 'Content-language: ru' >> i386-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-hungary.var
	echo >> i386-netbsd-hungary.var
i386-solaris-hungary.html.bg: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-solaris-hungary.html.bg -oe iso-8859-5 i386-solaris.adp
i386-solaris-hungary.html.en: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-hungary.html.en -oe iso-8859-1 i386-solaris.adp
i386-solaris-hungary.html.fr: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-solaris-hungary.html.fr -oe iso-8859-1 i386-solaris.adp
i386-solaris-hungary.html.id: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-solaris-hungary.html.id -oe iso-8859-1 i386-solaris.adp
i386-solaris-hungary.html.it: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-solaris-hungary.html.it -oe iso-8859-1 i386-solaris.adp
i386-solaris-hungary.html.nl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-solaris-hungary.html.nl -oe iso-8859-1 i386-solaris.adp
i386-solaris-hungary.html.po: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-solaris-hungary.html.po -oe iso-8859-2 i386-solaris.adp
i386-solaris-hungary.html.sl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-solaris-hungary.html.sl -oe iso-8859-2 i386-solaris.adp
i386-solaris-hungary.html.ru: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-solaris-hungary.html.ru -oe iso-8859-5 i386-solaris.adp
i386-solaris-hungary.html: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-hungary.html -oe ISO-8859-1 i386-solaris.adp

i386-solaris-hungary.var: gen_makefile.conf
	echo > i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.bg' >> i386-solaris-hungary.var
	echo 'Content-language: bg' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.en' >> i386-solaris-hungary.var
	echo 'Content-language: en' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.fr' >> i386-solaris-hungary.var
	echo 'Content-language: fr' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.id' >> i386-solaris-hungary.var
	echo 'Content-language: id' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.it' >> i386-solaris-hungary.var
	echo 'Content-language: it' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.nl' >> i386-solaris-hungary.var
	echo 'Content-language: nl' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.po' >> i386-solaris-hungary.var
	echo 'Content-language: pl' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.sl' >> i386-solaris-hungary.var
	echo 'Content-language: sl' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
	echo 'URI: i386-solaris-hungary.html.ru' >> i386-solaris-hungary.var
	echo 'Content-language: ru' >> i386-solaris-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-hungary.var
	echo >> i386-solaris-hungary.var
m68k-linux-hungary.html.bg: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-linux-hungary.html.bg -oe iso-8859-5 m68k-linux.adp
m68k-linux-hungary.html.en: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-hungary.html.en -oe iso-8859-1 m68k-linux.adp
m68k-linux-hungary.html.fr: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-linux-hungary.html.fr -oe iso-8859-1 m68k-linux.adp
m68k-linux-hungary.html.id: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-linux-hungary.html.id -oe iso-8859-1 m68k-linux.adp
m68k-linux-hungary.html.it: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-linux-hungary.html.it -oe iso-8859-1 m68k-linux.adp
m68k-linux-hungary.html.nl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-linux-hungary.html.nl -oe iso-8859-1 m68k-linux.adp
m68k-linux-hungary.html.po: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-linux-hungary.html.po -oe iso-8859-2 m68k-linux.adp
m68k-linux-hungary.html.sl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-linux-hungary.html.sl -oe iso-8859-2 m68k-linux.adp
m68k-linux-hungary.html.ru: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-linux-hungary.html.ru -oe iso-8859-5 m68k-linux.adp
m68k-linux-hungary.html: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-hungary.html -oe ISO-8859-1 m68k-linux.adp

m68k-linux-hungary.var: gen_makefile.conf
	echo > m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.bg' >> m68k-linux-hungary.var
	echo 'Content-language: bg' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.en' >> m68k-linux-hungary.var
	echo 'Content-language: en' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.fr' >> m68k-linux-hungary.var
	echo 'Content-language: fr' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.id' >> m68k-linux-hungary.var
	echo 'Content-language: id' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.it' >> m68k-linux-hungary.var
	echo 'Content-language: it' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.nl' >> m68k-linux-hungary.var
	echo 'Content-language: nl' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.po' >> m68k-linux-hungary.var
	echo 'Content-language: pl' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.sl' >> m68k-linux-hungary.var
	echo 'Content-language: sl' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
	echo 'URI: m68k-linux-hungary.html.ru' >> m68k-linux-hungary.var
	echo 'Content-language: ru' >> m68k-linux-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-hungary.var
	echo >> m68k-linux-hungary.var
down-hungary.html.bg: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o down-hungary.html.bg -oe iso-8859-5 down.adp
down-hungary.html.en: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-hungary.html.en -oe iso-8859-1 down.adp
down-hungary.html.fr: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o down-hungary.html.fr -oe iso-8859-1 down.adp
down-hungary.html.id: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o down-hungary.html.id -oe iso-8859-1 down.adp
down-hungary.html.it: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o down-hungary.html.it -oe iso-8859-1 down.adp
down-hungary.html.nl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o down-hungary.html.nl -oe iso-8859-1 down.adp
down-hungary.html.po: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o down-hungary.html.po -oe iso-8859-2 down.adp
down-hungary.html.sl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o down-hungary.html.sl -oe iso-8859-2 down.adp
down-hungary.html.ru: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o down-hungary.html.ru -oe iso-8859-5 down.adp
down-hungary.html: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-hungary.html -oe ISO-8859-1 down.adp

down-hungary.var: gen_makefile.conf
	echo > down-hungary.var
	echo 'URI: down-hungary.html.bg' >> down-hungary.var
	echo 'Content-language: bg' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.en' >> down-hungary.var
	echo 'Content-language: en' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.fr' >> down-hungary.var
	echo 'Content-language: fr' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.id' >> down-hungary.var
	echo 'Content-language: id' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.it' >> down-hungary.var
	echo 'Content-language: it' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.nl' >> down-hungary.var
	echo 'Content-language: nl' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.po' >> down-hungary.var
	echo 'Content-language: pl' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.sl' >> down-hungary.var
	echo 'Content-language: sl' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-hungary.var
	echo >> down-hungary.var
	echo 'URI: down-hungary.html.ru' >> down-hungary.var
	echo 'Content-language: ru' >> down-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-hungary.var
	echo >> down-hungary.var
i386-go32v2-hungary.html.bg: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-go32v2-hungary.html.bg -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-hungary.html.en: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-hungary.html.en -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-hungary.html.fr: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-go32v2-hungary.html.fr -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-hungary.html.id: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-go32v2-hungary.html.id -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-hungary.html.it: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-go32v2-hungary.html.it -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-hungary.html.nl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-go32v2-hungary.html.nl -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-hungary.html.po: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-go32v2-hungary.html.po -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-hungary.html.sl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-go32v2-hungary.html.sl -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-hungary.html.ru: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-go32v2-hungary.html.ru -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-hungary.html: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-hungary.html -oe ISO-8859-1 i386-go32v2.adp

i386-go32v2-hungary.var: gen_makefile.conf
	echo > i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.bg' >> i386-go32v2-hungary.var
	echo 'Content-language: bg' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.en' >> i386-go32v2-hungary.var
	echo 'Content-language: en' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.fr' >> i386-go32v2-hungary.var
	echo 'Content-language: fr' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.id' >> i386-go32v2-hungary.var
	echo 'Content-language: id' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.it' >> i386-go32v2-hungary.var
	echo 'Content-language: it' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.nl' >> i386-go32v2-hungary.var
	echo 'Content-language: nl' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.po' >> i386-go32v2-hungary.var
	echo 'Content-language: pl' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.sl' >> i386-go32v2-hungary.var
	echo 'Content-language: sl' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
	echo 'URI: i386-go32v2-hungary.html.ru' >> i386-go32v2-hungary.var
	echo 'Content-language: ru' >> i386-go32v2-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-hungary.var
	echo >> i386-go32v2-hungary.var
i386-qnx-hungary.html.bg: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-qnx-hungary.html.bg -oe iso-8859-5 i386-qnx.adp
i386-qnx-hungary.html.en: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-hungary.html.en -oe iso-8859-1 i386-qnx.adp
i386-qnx-hungary.html.fr: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-qnx-hungary.html.fr -oe iso-8859-1 i386-qnx.adp
i386-qnx-hungary.html.id: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-qnx-hungary.html.id -oe iso-8859-1 i386-qnx.adp
i386-qnx-hungary.html.it: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-qnx-hungary.html.it -oe iso-8859-1 i386-qnx.adp
i386-qnx-hungary.html.nl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-qnx-hungary.html.nl -oe iso-8859-1 i386-qnx.adp
i386-qnx-hungary.html.po: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-qnx-hungary.html.po -oe iso-8859-2 i386-qnx.adp
i386-qnx-hungary.html.sl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-qnx-hungary.html.sl -oe iso-8859-2 i386-qnx.adp
i386-qnx-hungary.html.ru: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-qnx-hungary.html.ru -oe iso-8859-5 i386-qnx.adp
i386-qnx-hungary.html: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-hungary.html -oe ISO-8859-1 i386-qnx.adp

i386-qnx-hungary.var: gen_makefile.conf
	echo > i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.bg' >> i386-qnx-hungary.var
	echo 'Content-language: bg' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.en' >> i386-qnx-hungary.var
	echo 'Content-language: en' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.fr' >> i386-qnx-hungary.var
	echo 'Content-language: fr' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.id' >> i386-qnx-hungary.var
	echo 'Content-language: id' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.it' >> i386-qnx-hungary.var
	echo 'Content-language: it' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.nl' >> i386-qnx-hungary.var
	echo 'Content-language: nl' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.po' >> i386-qnx-hungary.var
	echo 'Content-language: pl' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.sl' >> i386-qnx-hungary.var
	echo 'Content-language: sl' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
	echo 'URI: i386-qnx-hungary.html.ru' >> i386-qnx-hungary.var
	echo 'Content-language: ru' >> i386-qnx-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-hungary.var
	echo >> i386-qnx-hungary.var
m68k-amiga-hungary.html.bg: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-amiga-hungary.html.bg -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-hungary.html.en: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-hungary.html.en -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-hungary.html.fr: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-amiga-hungary.html.fr -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-hungary.html.id: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-amiga-hungary.html.id -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-hungary.html.it: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-amiga-hungary.html.it -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-hungary.html.nl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-amiga-hungary.html.nl -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-hungary.html.po: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-amiga-hungary.html.po -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-hungary.html.sl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-amiga-hungary.html.sl -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-hungary.html.ru: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-amiga-hungary.html.ru -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-hungary.html: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-hungary.html -oe ISO-8859-1 m68k-amiga.adp

m68k-amiga-hungary.var: gen_makefile.conf
	echo > m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.bg' >> m68k-amiga-hungary.var
	echo 'Content-language: bg' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.en' >> m68k-amiga-hungary.var
	echo 'Content-language: en' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.fr' >> m68k-amiga-hungary.var
	echo 'Content-language: fr' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.id' >> m68k-amiga-hungary.var
	echo 'Content-language: id' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.it' >> m68k-amiga-hungary.var
	echo 'Content-language: it' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.nl' >> m68k-amiga-hungary.var
	echo 'Content-language: nl' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.po' >> m68k-amiga-hungary.var
	echo 'Content-language: pl' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.sl' >> m68k-amiga-hungary.var
	echo 'Content-language: sl' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
	echo 'URI: m68k-amiga-hungary.html.ru' >> m68k-amiga-hungary.var
	echo 'Content-language: ru' >> m68k-amiga-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-hungary.var
	echo >> m68k-amiga-hungary.var
m68k-netbsd-hungary.html.bg: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-netbsd-hungary.html.bg -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-hungary.html.en: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-hungary.html.en -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-hungary.html.fr: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-netbsd-hungary.html.fr -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-hungary.html.id: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-netbsd-hungary.html.id -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-hungary.html.it: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-netbsd-hungary.html.it -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-hungary.html.nl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-netbsd-hungary.html.nl -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-hungary.html.po: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-netbsd-hungary.html.po -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-hungary.html.sl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-netbsd-hungary.html.sl -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-hungary.html.ru: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-netbsd-hungary.html.ru -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-hungary.html: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -p mirrorsuffix=hungary -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-hungary.html -oe ISO-8859-1 m68k-netbsd.adp

m68k-netbsd-hungary.var: gen_makefile.conf
	echo > m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.bg' >> m68k-netbsd-hungary.var
	echo 'Content-language: bg' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.en' >> m68k-netbsd-hungary.var
	echo 'Content-language: en' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.fr' >> m68k-netbsd-hungary.var
	echo 'Content-language: fr' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.id' >> m68k-netbsd-hungary.var
	echo 'Content-language: id' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.it' >> m68k-netbsd-hungary.var
	echo 'Content-language: it' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.nl' >> m68k-netbsd-hungary.var
	echo 'Content-language: nl' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.po' >> m68k-netbsd-hungary.var
	echo 'Content-language: pl' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.sl' >> m68k-netbsd-hungary.var
	echo 'Content-language: sl' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
	echo 'URI: m68k-netbsd-hungary.html.ru' >> m68k-netbsd-hungary.var
	echo 'Content-language: ru' >> m68k-netbsd-hungary.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-hungary.var
	echo >> m68k-netbsd-hungary.var
docs-israel.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o docs-israel.html.bg -oe iso-8859-5 docs.adp
docs-israel.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-israel.html.en -oe iso-8859-1 docs.adp
docs-israel.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o docs-israel.html.fr -oe iso-8859-1 docs.adp
docs-israel.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o docs-israel.html.id -oe iso-8859-1 docs.adp
docs-israel.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o docs-israel.html.it -oe iso-8859-1 docs.adp
docs-israel.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o docs-israel.html.nl -oe iso-8859-1 docs.adp
docs-israel.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o docs-israel.html.po -oe iso-8859-2 docs.adp
docs-israel.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o docs-israel.html.sl -oe iso-8859-2 docs.adp
docs-israel.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o docs-israel.html.ru -oe iso-8859-5 docs.adp
docs-israel.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-israel.html -oe ISO-8859-1 docs.adp

docs-israel.var: gen_makefile.conf
	echo > docs-israel.var
	echo 'URI: docs-israel.html.bg' >> docs-israel.var
	echo 'Content-language: bg' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.en' >> docs-israel.var
	echo 'Content-language: en' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.fr' >> docs-israel.var
	echo 'Content-language: fr' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.id' >> docs-israel.var
	echo 'Content-language: id' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.it' >> docs-israel.var
	echo 'Content-language: it' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.nl' >> docs-israel.var
	echo 'Content-language: nl' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.po' >> docs-israel.var
	echo 'Content-language: pl' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.sl' >> docs-israel.var
	echo 'Content-language: sl' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-israel.var
	echo >> docs-israel.var
	echo 'URI: docs-israel.html.ru' >> docs-israel.var
	echo 'Content-language: ru' >> docs-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-israel.var
	echo >> docs-israel.var
i386-beos-israel.html.bg: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-beos-israel.html.bg -oe iso-8859-5 i386-beos.adp
i386-beos-israel.html.en: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-israel.html.en -oe iso-8859-1 i386-beos.adp
i386-beos-israel.html.fr: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-beos-israel.html.fr -oe iso-8859-1 i386-beos.adp
i386-beos-israel.html.id: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-beos-israel.html.id -oe iso-8859-1 i386-beos.adp
i386-beos-israel.html.it: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-beos-israel.html.it -oe iso-8859-1 i386-beos.adp
i386-beos-israel.html.nl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-beos-israel.html.nl -oe iso-8859-1 i386-beos.adp
i386-beos-israel.html.po: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-beos-israel.html.po -oe iso-8859-2 i386-beos.adp
i386-beos-israel.html.sl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-beos-israel.html.sl -oe iso-8859-2 i386-beos.adp
i386-beos-israel.html.ru: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-beos-israel.html.ru -oe iso-8859-5 i386-beos.adp
i386-beos-israel.html: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-israel.html -oe ISO-8859-1 i386-beos.adp

i386-beos-israel.var: gen_makefile.conf
	echo > i386-beos-israel.var
	echo 'URI: i386-beos-israel.html.bg' >> i386-beos-israel.var
	echo 'Content-language: bg' >> i386-beos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-israel.var
	echo >> i386-beos-israel.var
	echo 'URI: i386-beos-israel.html.en' >> i386-beos-israel.var
	echo 'Content-language: en' >> i386-beos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-israel.var
	echo >> i386-beos-israel.var
	echo 'URI: i386-beos-israel.html.fr' >> i386-beos-israel.var
	echo 'Content-language: fr' >> i386-beos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-israel.var
	echo >> i386-beos-israel.var
	echo 'URI: i386-beos-israel.html.id' >> i386-beos-israel.var
	echo 'Content-language: id' >> i386-beos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-israel.var
	echo >> i386-beos-israel.var
	echo 'URI: i386-beos-israel.html.it' >> i386-beos-israel.var
	echo 'Content-language: it' >> i386-beos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-israel.var
	echo >> i386-beos-israel.var
	echo 'URI: i386-beos-israel.html.nl' >> i386-beos-israel.var
	echo 'Content-language: nl' >> i386-beos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-israel.var
	echo >> i386-beos-israel.var
	echo 'URI: i386-beos-israel.html.po' >> i386-beos-israel.var
	echo 'Content-language: pl' >> i386-beos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-israel.var
	echo >> i386-beos-israel.var
	echo 'URI: i386-beos-israel.html.sl' >> i386-beos-israel.var
	echo 'Content-language: sl' >> i386-beos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-israel.var
	echo >> i386-beos-israel.var
	echo 'URI: i386-beos-israel.html.ru' >> i386-beos-israel.var
	echo 'Content-language: ru' >> i386-beos-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-israel.var
	echo >> i386-beos-israel.var
i386-emx-israel.html.bg: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-emx-israel.html.bg -oe iso-8859-5 i386-emx.adp
i386-emx-israel.html.en: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-israel.html.en -oe iso-8859-1 i386-emx.adp
i386-emx-israel.html.fr: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-emx-israel.html.fr -oe iso-8859-1 i386-emx.adp
i386-emx-israel.html.id: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-emx-israel.html.id -oe iso-8859-1 i386-emx.adp
i386-emx-israel.html.it: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-emx-israel.html.it -oe iso-8859-1 i386-emx.adp
i386-emx-israel.html.nl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-emx-israel.html.nl -oe iso-8859-1 i386-emx.adp
i386-emx-israel.html.po: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-emx-israel.html.po -oe iso-8859-2 i386-emx.adp
i386-emx-israel.html.sl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-emx-israel.html.sl -oe iso-8859-2 i386-emx.adp
i386-emx-israel.html.ru: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-emx-israel.html.ru -oe iso-8859-5 i386-emx.adp
i386-emx-israel.html: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-israel.html -oe ISO-8859-1 i386-emx.adp

i386-emx-israel.var: gen_makefile.conf
	echo > i386-emx-israel.var
	echo 'URI: i386-emx-israel.html.bg' >> i386-emx-israel.var
	echo 'Content-language: bg' >> i386-emx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-israel.var
	echo >> i386-emx-israel.var
	echo 'URI: i386-emx-israel.html.en' >> i386-emx-israel.var
	echo 'Content-language: en' >> i386-emx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-israel.var
	echo >> i386-emx-israel.var
	echo 'URI: i386-emx-israel.html.fr' >> i386-emx-israel.var
	echo 'Content-language: fr' >> i386-emx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-israel.var
	echo >> i386-emx-israel.var
	echo 'URI: i386-emx-israel.html.id' >> i386-emx-israel.var
	echo 'Content-language: id' >> i386-emx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-israel.var
	echo >> i386-emx-israel.var
	echo 'URI: i386-emx-israel.html.it' >> i386-emx-israel.var
	echo 'Content-language: it' >> i386-emx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-israel.var
	echo >> i386-emx-israel.var
	echo 'URI: i386-emx-israel.html.nl' >> i386-emx-israel.var
	echo 'Content-language: nl' >> i386-emx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-israel.var
	echo >> i386-emx-israel.var
	echo 'URI: i386-emx-israel.html.po' >> i386-emx-israel.var
	echo 'Content-language: pl' >> i386-emx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-israel.var
	echo >> i386-emx-israel.var
	echo 'URI: i386-emx-israel.html.sl' >> i386-emx-israel.var
	echo 'Content-language: sl' >> i386-emx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-israel.var
	echo >> i386-emx-israel.var
	echo 'URI: i386-emx-israel.html.ru' >> i386-emx-israel.var
	echo 'Content-language: ru' >> i386-emx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-israel.var
	echo >> i386-emx-israel.var
i386-netbsd-israel.html.bg: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-netbsd-israel.html.bg -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-israel.html.en: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-israel.html.en -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-israel.html.fr: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-netbsd-israel.html.fr -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-israel.html.id: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-netbsd-israel.html.id -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-israel.html.it: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-netbsd-israel.html.it -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-israel.html.nl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-netbsd-israel.html.nl -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-israel.html.po: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-netbsd-israel.html.po -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-israel.html.sl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-netbsd-israel.html.sl -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-israel.html.ru: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-netbsd-israel.html.ru -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-israel.html: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-israel.html -oe ISO-8859-1 i386-netbsd.adp

i386-netbsd-israel.var: gen_makefile.conf
	echo > i386-netbsd-israel.var
	echo 'URI: i386-netbsd-israel.html.bg' >> i386-netbsd-israel.var
	echo 'Content-language: bg' >> i386-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-israel.var
	echo >> i386-netbsd-israel.var
	echo 'URI: i386-netbsd-israel.html.en' >> i386-netbsd-israel.var
	echo 'Content-language: en' >> i386-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-israel.var
	echo >> i386-netbsd-israel.var
	echo 'URI: i386-netbsd-israel.html.fr' >> i386-netbsd-israel.var
	echo 'Content-language: fr' >> i386-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-israel.var
	echo >> i386-netbsd-israel.var
	echo 'URI: i386-netbsd-israel.html.id' >> i386-netbsd-israel.var
	echo 'Content-language: id' >> i386-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-israel.var
	echo >> i386-netbsd-israel.var
	echo 'URI: i386-netbsd-israel.html.it' >> i386-netbsd-israel.var
	echo 'Content-language: it' >> i386-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-israel.var
	echo >> i386-netbsd-israel.var
	echo 'URI: i386-netbsd-israel.html.nl' >> i386-netbsd-israel.var
	echo 'Content-language: nl' >> i386-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-israel.var
	echo >> i386-netbsd-israel.var
	echo 'URI: i386-netbsd-israel.html.po' >> i386-netbsd-israel.var
	echo 'Content-language: pl' >> i386-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-israel.var
	echo >> i386-netbsd-israel.var
	echo 'URI: i386-netbsd-israel.html.sl' >> i386-netbsd-israel.var
	echo 'Content-language: sl' >> i386-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-israel.var
	echo >> i386-netbsd-israel.var
	echo 'URI: i386-netbsd-israel.html.ru' >> i386-netbsd-israel.var
	echo 'Content-language: ru' >> i386-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-israel.var
	echo >> i386-netbsd-israel.var
i386-solaris-israel.html.bg: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-solaris-israel.html.bg -oe iso-8859-5 i386-solaris.adp
i386-solaris-israel.html.en: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-israel.html.en -oe iso-8859-1 i386-solaris.adp
i386-solaris-israel.html.fr: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-solaris-israel.html.fr -oe iso-8859-1 i386-solaris.adp
i386-solaris-israel.html.id: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-solaris-israel.html.id -oe iso-8859-1 i386-solaris.adp
i386-solaris-israel.html.it: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-solaris-israel.html.it -oe iso-8859-1 i386-solaris.adp
i386-solaris-israel.html.nl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-solaris-israel.html.nl -oe iso-8859-1 i386-solaris.adp
i386-solaris-israel.html.po: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-solaris-israel.html.po -oe iso-8859-2 i386-solaris.adp
i386-solaris-israel.html.sl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-solaris-israel.html.sl -oe iso-8859-2 i386-solaris.adp
i386-solaris-israel.html.ru: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-solaris-israel.html.ru -oe iso-8859-5 i386-solaris.adp
i386-solaris-israel.html: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-israel.html -oe ISO-8859-1 i386-solaris.adp

i386-solaris-israel.var: gen_makefile.conf
	echo > i386-solaris-israel.var
	echo 'URI: i386-solaris-israel.html.bg' >> i386-solaris-israel.var
	echo 'Content-language: bg' >> i386-solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-israel.var
	echo >> i386-solaris-israel.var
	echo 'URI: i386-solaris-israel.html.en' >> i386-solaris-israel.var
	echo 'Content-language: en' >> i386-solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-israel.var
	echo >> i386-solaris-israel.var
	echo 'URI: i386-solaris-israel.html.fr' >> i386-solaris-israel.var
	echo 'Content-language: fr' >> i386-solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-israel.var
	echo >> i386-solaris-israel.var
	echo 'URI: i386-solaris-israel.html.id' >> i386-solaris-israel.var
	echo 'Content-language: id' >> i386-solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-israel.var
	echo >> i386-solaris-israel.var
	echo 'URI: i386-solaris-israel.html.it' >> i386-solaris-israel.var
	echo 'Content-language: it' >> i386-solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-israel.var
	echo >> i386-solaris-israel.var
	echo 'URI: i386-solaris-israel.html.nl' >> i386-solaris-israel.var
	echo 'Content-language: nl' >> i386-solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-israel.var
	echo >> i386-solaris-israel.var
	echo 'URI: i386-solaris-israel.html.po' >> i386-solaris-israel.var
	echo 'Content-language: pl' >> i386-solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-israel.var
	echo >> i386-solaris-israel.var
	echo 'URI: i386-solaris-israel.html.sl' >> i386-solaris-israel.var
	echo 'Content-language: sl' >> i386-solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-israel.var
	echo >> i386-solaris-israel.var
	echo 'URI: i386-solaris-israel.html.ru' >> i386-solaris-israel.var
	echo 'Content-language: ru' >> i386-solaris-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-israel.var
	echo >> i386-solaris-israel.var
m68k-linux-israel.html.bg: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-linux-israel.html.bg -oe iso-8859-5 m68k-linux.adp
m68k-linux-israel.html.en: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-israel.html.en -oe iso-8859-1 m68k-linux.adp
m68k-linux-israel.html.fr: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-linux-israel.html.fr -oe iso-8859-1 m68k-linux.adp
m68k-linux-israel.html.id: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-linux-israel.html.id -oe iso-8859-1 m68k-linux.adp
m68k-linux-israel.html.it: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-linux-israel.html.it -oe iso-8859-1 m68k-linux.adp
m68k-linux-israel.html.nl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-linux-israel.html.nl -oe iso-8859-1 m68k-linux.adp
m68k-linux-israel.html.po: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-linux-israel.html.po -oe iso-8859-2 m68k-linux.adp
m68k-linux-israel.html.sl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-linux-israel.html.sl -oe iso-8859-2 m68k-linux.adp
m68k-linux-israel.html.ru: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-linux-israel.html.ru -oe iso-8859-5 m68k-linux.adp
m68k-linux-israel.html: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-israel.html -oe ISO-8859-1 m68k-linux.adp

m68k-linux-israel.var: gen_makefile.conf
	echo > m68k-linux-israel.var
	echo 'URI: m68k-linux-israel.html.bg' >> m68k-linux-israel.var
	echo 'Content-language: bg' >> m68k-linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-israel.var
	echo >> m68k-linux-israel.var
	echo 'URI: m68k-linux-israel.html.en' >> m68k-linux-israel.var
	echo 'Content-language: en' >> m68k-linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-israel.var
	echo >> m68k-linux-israel.var
	echo 'URI: m68k-linux-israel.html.fr' >> m68k-linux-israel.var
	echo 'Content-language: fr' >> m68k-linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-israel.var
	echo >> m68k-linux-israel.var
	echo 'URI: m68k-linux-israel.html.id' >> m68k-linux-israel.var
	echo 'Content-language: id' >> m68k-linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-israel.var
	echo >> m68k-linux-israel.var
	echo 'URI: m68k-linux-israel.html.it' >> m68k-linux-israel.var
	echo 'Content-language: it' >> m68k-linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-israel.var
	echo >> m68k-linux-israel.var
	echo 'URI: m68k-linux-israel.html.nl' >> m68k-linux-israel.var
	echo 'Content-language: nl' >> m68k-linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-israel.var
	echo >> m68k-linux-israel.var
	echo 'URI: m68k-linux-israel.html.po' >> m68k-linux-israel.var
	echo 'Content-language: pl' >> m68k-linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-israel.var
	echo >> m68k-linux-israel.var
	echo 'URI: m68k-linux-israel.html.sl' >> m68k-linux-israel.var
	echo 'Content-language: sl' >> m68k-linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-israel.var
	echo >> m68k-linux-israel.var
	echo 'URI: m68k-linux-israel.html.ru' >> m68k-linux-israel.var
	echo 'Content-language: ru' >> m68k-linux-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-israel.var
	echo >> m68k-linux-israel.var
down-israel.html.bg: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o down-israel.html.bg -oe iso-8859-5 down.adp
down-israel.html.en: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-israel.html.en -oe iso-8859-1 down.adp
down-israel.html.fr: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o down-israel.html.fr -oe iso-8859-1 down.adp
down-israel.html.id: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o down-israel.html.id -oe iso-8859-1 down.adp
down-israel.html.it: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o down-israel.html.it -oe iso-8859-1 down.adp
down-israel.html.nl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o down-israel.html.nl -oe iso-8859-1 down.adp
down-israel.html.po: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o down-israel.html.po -oe iso-8859-2 down.adp
down-israel.html.sl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o down-israel.html.sl -oe iso-8859-2 down.adp
down-israel.html.ru: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o down-israel.html.ru -oe iso-8859-5 down.adp
down-israel.html: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-israel.html -oe ISO-8859-1 down.adp

down-israel.var: gen_makefile.conf
	echo > down-israel.var
	echo 'URI: down-israel.html.bg' >> down-israel.var
	echo 'Content-language: bg' >> down-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-israel.var
	echo >> down-israel.var
	echo 'URI: down-israel.html.en' >> down-israel.var
	echo 'Content-language: en' >> down-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-israel.var
	echo >> down-israel.var
	echo 'URI: down-israel.html.fr' >> down-israel.var
	echo 'Content-language: fr' >> down-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-israel.var
	echo >> down-israel.var
	echo 'URI: down-israel.html.id' >> down-israel.var
	echo 'Content-language: id' >> down-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-israel.var
	echo >> down-israel.var
	echo 'URI: down-israel.html.it' >> down-israel.var
	echo 'Content-language: it' >> down-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-israel.var
	echo >> down-israel.var
	echo 'URI: down-israel.html.nl' >> down-israel.var
	echo 'Content-language: nl' >> down-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-israel.var
	echo >> down-israel.var
	echo 'URI: down-israel.html.po' >> down-israel.var
	echo 'Content-language: pl' >> down-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-israel.var
	echo >> down-israel.var
	echo 'URI: down-israel.html.sl' >> down-israel.var
	echo 'Content-language: sl' >> down-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-israel.var
	echo >> down-israel.var
	echo 'URI: down-israel.html.ru' >> down-israel.var
	echo 'Content-language: ru' >> down-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-israel.var
	echo >> down-israel.var
i386-go32v2-israel.html.bg: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-go32v2-israel.html.bg -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-israel.html.en: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-israel.html.en -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-israel.html.fr: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-go32v2-israel.html.fr -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-israel.html.id: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-go32v2-israel.html.id -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-israel.html.it: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-go32v2-israel.html.it -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-israel.html.nl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-go32v2-israel.html.nl -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-israel.html.po: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-go32v2-israel.html.po -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-israel.html.sl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-go32v2-israel.html.sl -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-israel.html.ru: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-go32v2-israel.html.ru -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-israel.html: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-israel.html -oe ISO-8859-1 i386-go32v2.adp

i386-go32v2-israel.var: gen_makefile.conf
	echo > i386-go32v2-israel.var
	echo 'URI: i386-go32v2-israel.html.bg' >> i386-go32v2-israel.var
	echo 'Content-language: bg' >> i386-go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-israel.var
	echo >> i386-go32v2-israel.var
	echo 'URI: i386-go32v2-israel.html.en' >> i386-go32v2-israel.var
	echo 'Content-language: en' >> i386-go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-israel.var
	echo >> i386-go32v2-israel.var
	echo 'URI: i386-go32v2-israel.html.fr' >> i386-go32v2-israel.var
	echo 'Content-language: fr' >> i386-go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-israel.var
	echo >> i386-go32v2-israel.var
	echo 'URI: i386-go32v2-israel.html.id' >> i386-go32v2-israel.var
	echo 'Content-language: id' >> i386-go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-israel.var
	echo >> i386-go32v2-israel.var
	echo 'URI: i386-go32v2-israel.html.it' >> i386-go32v2-israel.var
	echo 'Content-language: it' >> i386-go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-israel.var
	echo >> i386-go32v2-israel.var
	echo 'URI: i386-go32v2-israel.html.nl' >> i386-go32v2-israel.var
	echo 'Content-language: nl' >> i386-go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-israel.var
	echo >> i386-go32v2-israel.var
	echo 'URI: i386-go32v2-israel.html.po' >> i386-go32v2-israel.var
	echo 'Content-language: pl' >> i386-go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-israel.var
	echo >> i386-go32v2-israel.var
	echo 'URI: i386-go32v2-israel.html.sl' >> i386-go32v2-israel.var
	echo 'Content-language: sl' >> i386-go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-israel.var
	echo >> i386-go32v2-israel.var
	echo 'URI: i386-go32v2-israel.html.ru' >> i386-go32v2-israel.var
	echo 'Content-language: ru' >> i386-go32v2-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-israel.var
	echo >> i386-go32v2-israel.var
i386-qnx-israel.html.bg: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-qnx-israel.html.bg -oe iso-8859-5 i386-qnx.adp
i386-qnx-israel.html.en: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-israel.html.en -oe iso-8859-1 i386-qnx.adp
i386-qnx-israel.html.fr: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-qnx-israel.html.fr -oe iso-8859-1 i386-qnx.adp
i386-qnx-israel.html.id: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-qnx-israel.html.id -oe iso-8859-1 i386-qnx.adp
i386-qnx-israel.html.it: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-qnx-israel.html.it -oe iso-8859-1 i386-qnx.adp
i386-qnx-israel.html.nl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-qnx-israel.html.nl -oe iso-8859-1 i386-qnx.adp
i386-qnx-israel.html.po: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-qnx-israel.html.po -oe iso-8859-2 i386-qnx.adp
i386-qnx-israel.html.sl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-qnx-israel.html.sl -oe iso-8859-2 i386-qnx.adp
i386-qnx-israel.html.ru: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-qnx-israel.html.ru -oe iso-8859-5 i386-qnx.adp
i386-qnx-israel.html: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-israel.html -oe ISO-8859-1 i386-qnx.adp

i386-qnx-israel.var: gen_makefile.conf
	echo > i386-qnx-israel.var
	echo 'URI: i386-qnx-israel.html.bg' >> i386-qnx-israel.var
	echo 'Content-language: bg' >> i386-qnx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-israel.var
	echo >> i386-qnx-israel.var
	echo 'URI: i386-qnx-israel.html.en' >> i386-qnx-israel.var
	echo 'Content-language: en' >> i386-qnx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-israel.var
	echo >> i386-qnx-israel.var
	echo 'URI: i386-qnx-israel.html.fr' >> i386-qnx-israel.var
	echo 'Content-language: fr' >> i386-qnx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-israel.var
	echo >> i386-qnx-israel.var
	echo 'URI: i386-qnx-israel.html.id' >> i386-qnx-israel.var
	echo 'Content-language: id' >> i386-qnx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-israel.var
	echo >> i386-qnx-israel.var
	echo 'URI: i386-qnx-israel.html.it' >> i386-qnx-israel.var
	echo 'Content-language: it' >> i386-qnx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-israel.var
	echo >> i386-qnx-israel.var
	echo 'URI: i386-qnx-israel.html.nl' >> i386-qnx-israel.var
	echo 'Content-language: nl' >> i386-qnx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-israel.var
	echo >> i386-qnx-israel.var
	echo 'URI: i386-qnx-israel.html.po' >> i386-qnx-israel.var
	echo 'Content-language: pl' >> i386-qnx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-israel.var
	echo >> i386-qnx-israel.var
	echo 'URI: i386-qnx-israel.html.sl' >> i386-qnx-israel.var
	echo 'Content-language: sl' >> i386-qnx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-israel.var
	echo >> i386-qnx-israel.var
	echo 'URI: i386-qnx-israel.html.ru' >> i386-qnx-israel.var
	echo 'Content-language: ru' >> i386-qnx-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-israel.var
	echo >> i386-qnx-israel.var
m68k-amiga-israel.html.bg: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-amiga-israel.html.bg -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-israel.html.en: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-israel.html.en -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-israel.html.fr: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-amiga-israel.html.fr -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-israel.html.id: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-amiga-israel.html.id -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-israel.html.it: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-amiga-israel.html.it -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-israel.html.nl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-amiga-israel.html.nl -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-israel.html.po: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-amiga-israel.html.po -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-israel.html.sl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-amiga-israel.html.sl -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-israel.html.ru: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-amiga-israel.html.ru -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-israel.html: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-israel.html -oe ISO-8859-1 m68k-amiga.adp

m68k-amiga-israel.var: gen_makefile.conf
	echo > m68k-amiga-israel.var
	echo 'URI: m68k-amiga-israel.html.bg' >> m68k-amiga-israel.var
	echo 'Content-language: bg' >> m68k-amiga-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-israel.var
	echo >> m68k-amiga-israel.var
	echo 'URI: m68k-amiga-israel.html.en' >> m68k-amiga-israel.var
	echo 'Content-language: en' >> m68k-amiga-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-israel.var
	echo >> m68k-amiga-israel.var
	echo 'URI: m68k-amiga-israel.html.fr' >> m68k-amiga-israel.var
	echo 'Content-language: fr' >> m68k-amiga-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-israel.var
	echo >> m68k-amiga-israel.var
	echo 'URI: m68k-amiga-israel.html.id' >> m68k-amiga-israel.var
	echo 'Content-language: id' >> m68k-amiga-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-israel.var
	echo >> m68k-amiga-israel.var
	echo 'URI: m68k-amiga-israel.html.it' >> m68k-amiga-israel.var
	echo 'Content-language: it' >> m68k-amiga-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-israel.var
	echo >> m68k-amiga-israel.var
	echo 'URI: m68k-amiga-israel.html.nl' >> m68k-amiga-israel.var
	echo 'Content-language: nl' >> m68k-amiga-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-israel.var
	echo >> m68k-amiga-israel.var
	echo 'URI: m68k-amiga-israel.html.po' >> m68k-amiga-israel.var
	echo 'Content-language: pl' >> m68k-amiga-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-israel.var
	echo >> m68k-amiga-israel.var
	echo 'URI: m68k-amiga-israel.html.sl' >> m68k-amiga-israel.var
	echo 'Content-language: sl' >> m68k-amiga-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-israel.var
	echo >> m68k-amiga-israel.var
	echo 'URI: m68k-amiga-israel.html.ru' >> m68k-amiga-israel.var
	echo 'Content-language: ru' >> m68k-amiga-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-israel.var
	echo >> m68k-amiga-israel.var
m68k-netbsd-israel.html.bg: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-netbsd-israel.html.bg -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-israel.html.en: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-israel.html.en -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-israel.html.fr: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-netbsd-israel.html.fr -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-israel.html.id: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-netbsd-israel.html.id -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-israel.html.it: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-netbsd-israel.html.it -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-israel.html.nl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-netbsd-israel.html.nl -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-israel.html.po: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-netbsd-israel.html.po -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-israel.html.sl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-netbsd-israel.html.sl -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-israel.html.ru: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-netbsd-israel.html.ru -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-israel.html: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=http://mirror.mirimar.net/freepascal/ -p mirrorsuffix=israel -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-israel.html -oe ISO-8859-1 m68k-netbsd.adp

m68k-netbsd-israel.var: gen_makefile.conf
	echo > m68k-netbsd-israel.var
	echo 'URI: m68k-netbsd-israel.html.bg' >> m68k-netbsd-israel.var
	echo 'Content-language: bg' >> m68k-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-israel.var
	echo >> m68k-netbsd-israel.var
	echo 'URI: m68k-netbsd-israel.html.en' >> m68k-netbsd-israel.var
	echo 'Content-language: en' >> m68k-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-israel.var
	echo >> m68k-netbsd-israel.var
	echo 'URI: m68k-netbsd-israel.html.fr' >> m68k-netbsd-israel.var
	echo 'Content-language: fr' >> m68k-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-israel.var
	echo >> m68k-netbsd-israel.var
	echo 'URI: m68k-netbsd-israel.html.id' >> m68k-netbsd-israel.var
	echo 'Content-language: id' >> m68k-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-israel.var
	echo >> m68k-netbsd-israel.var
	echo 'URI: m68k-netbsd-israel.html.it' >> m68k-netbsd-israel.var
	echo 'Content-language: it' >> m68k-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-israel.var
	echo >> m68k-netbsd-israel.var
	echo 'URI: m68k-netbsd-israel.html.nl' >> m68k-netbsd-israel.var
	echo 'Content-language: nl' >> m68k-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-israel.var
	echo >> m68k-netbsd-israel.var
	echo 'URI: m68k-netbsd-israel.html.po' >> m68k-netbsd-israel.var
	echo 'Content-language: pl' >> m68k-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-israel.var
	echo >> m68k-netbsd-israel.var
	echo 'URI: m68k-netbsd-israel.html.sl' >> m68k-netbsd-israel.var
	echo 'Content-language: sl' >> m68k-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-israel.var
	echo >> m68k-netbsd-israel.var
	echo 'URI: m68k-netbsd-israel.html.ru' >> m68k-netbsd-israel.var
	echo 'Content-language: ru' >> m68k-netbsd-israel.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-israel.var
	echo >> m68k-netbsd-israel.var
docs-netherlands.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o docs-netherlands.html.bg -oe iso-8859-5 docs.adp
docs-netherlands.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-netherlands.html.en -oe iso-8859-1 docs.adp
docs-netherlands.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o docs-netherlands.html.fr -oe iso-8859-1 docs.adp
docs-netherlands.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o docs-netherlands.html.id -oe iso-8859-1 docs.adp
docs-netherlands.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o docs-netherlands.html.it -oe iso-8859-1 docs.adp
docs-netherlands.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o docs-netherlands.html.nl -oe iso-8859-1 docs.adp
docs-netherlands.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o docs-netherlands.html.po -oe iso-8859-2 docs.adp
docs-netherlands.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o docs-netherlands.html.sl -oe iso-8859-2 docs.adp
docs-netherlands.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o docs-netherlands.html.ru -oe iso-8859-5 docs.adp
docs-netherlands.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-netherlands.html -oe ISO-8859-1 docs.adp

docs-netherlands.var: gen_makefile.conf
	echo > docs-netherlands.var
	echo 'URI: docs-netherlands.html.bg' >> docs-netherlands.var
	echo 'Content-language: bg' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.en' >> docs-netherlands.var
	echo 'Content-language: en' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.fr' >> docs-netherlands.var
	echo 'Content-language: fr' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.id' >> docs-netherlands.var
	echo 'Content-language: id' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.it' >> docs-netherlands.var
	echo 'Content-language: it' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.nl' >> docs-netherlands.var
	echo 'Content-language: nl' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.po' >> docs-netherlands.var
	echo 'Content-language: pl' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.sl' >> docs-netherlands.var
	echo 'Content-language: sl' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-netherlands.var
	echo >> docs-netherlands.var
	echo 'URI: docs-netherlands.html.ru' >> docs-netherlands.var
	echo 'Content-language: ru' >> docs-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-netherlands.var
	echo >> docs-netherlands.var
i386-beos-netherlands.html.bg: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-beos-netherlands.html.bg -oe iso-8859-5 i386-beos.adp
i386-beos-netherlands.html.en: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-netherlands.html.en -oe iso-8859-1 i386-beos.adp
i386-beos-netherlands.html.fr: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-beos-netherlands.html.fr -oe iso-8859-1 i386-beos.adp
i386-beos-netherlands.html.id: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-beos-netherlands.html.id -oe iso-8859-1 i386-beos.adp
i386-beos-netherlands.html.it: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-beos-netherlands.html.it -oe iso-8859-1 i386-beos.adp
i386-beos-netherlands.html.nl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-beos-netherlands.html.nl -oe iso-8859-1 i386-beos.adp
i386-beos-netherlands.html.po: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-beos-netherlands.html.po -oe iso-8859-2 i386-beos.adp
i386-beos-netherlands.html.sl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-beos-netherlands.html.sl -oe iso-8859-2 i386-beos.adp
i386-beos-netherlands.html.ru: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-beos-netherlands.html.ru -oe iso-8859-5 i386-beos.adp
i386-beos-netherlands.html: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-netherlands.html -oe ISO-8859-1 i386-beos.adp

i386-beos-netherlands.var: gen_makefile.conf
	echo > i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.bg' >> i386-beos-netherlands.var
	echo 'Content-language: bg' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.en' >> i386-beos-netherlands.var
	echo 'Content-language: en' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.fr' >> i386-beos-netherlands.var
	echo 'Content-language: fr' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.id' >> i386-beos-netherlands.var
	echo 'Content-language: id' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.it' >> i386-beos-netherlands.var
	echo 'Content-language: it' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.nl' >> i386-beos-netherlands.var
	echo 'Content-language: nl' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.po' >> i386-beos-netherlands.var
	echo 'Content-language: pl' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.sl' >> i386-beos-netherlands.var
	echo 'Content-language: sl' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
	echo 'URI: i386-beos-netherlands.html.ru' >> i386-beos-netherlands.var
	echo 'Content-language: ru' >> i386-beos-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-netherlands.var
	echo >> i386-beos-netherlands.var
i386-emx-netherlands.html.bg: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-emx-netherlands.html.bg -oe iso-8859-5 i386-emx.adp
i386-emx-netherlands.html.en: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-netherlands.html.en -oe iso-8859-1 i386-emx.adp
i386-emx-netherlands.html.fr: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-emx-netherlands.html.fr -oe iso-8859-1 i386-emx.adp
i386-emx-netherlands.html.id: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-emx-netherlands.html.id -oe iso-8859-1 i386-emx.adp
i386-emx-netherlands.html.it: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-emx-netherlands.html.it -oe iso-8859-1 i386-emx.adp
i386-emx-netherlands.html.nl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-emx-netherlands.html.nl -oe iso-8859-1 i386-emx.adp
i386-emx-netherlands.html.po: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-emx-netherlands.html.po -oe iso-8859-2 i386-emx.adp
i386-emx-netherlands.html.sl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-emx-netherlands.html.sl -oe iso-8859-2 i386-emx.adp
i386-emx-netherlands.html.ru: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-emx-netherlands.html.ru -oe iso-8859-5 i386-emx.adp
i386-emx-netherlands.html: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-netherlands.html -oe ISO-8859-1 i386-emx.adp

i386-emx-netherlands.var: gen_makefile.conf
	echo > i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.bg' >> i386-emx-netherlands.var
	echo 'Content-language: bg' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.en' >> i386-emx-netherlands.var
	echo 'Content-language: en' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.fr' >> i386-emx-netherlands.var
	echo 'Content-language: fr' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.id' >> i386-emx-netherlands.var
	echo 'Content-language: id' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.it' >> i386-emx-netherlands.var
	echo 'Content-language: it' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.nl' >> i386-emx-netherlands.var
	echo 'Content-language: nl' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.po' >> i386-emx-netherlands.var
	echo 'Content-language: pl' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.sl' >> i386-emx-netherlands.var
	echo 'Content-language: sl' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
	echo 'URI: i386-emx-netherlands.html.ru' >> i386-emx-netherlands.var
	echo 'Content-language: ru' >> i386-emx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-netherlands.var
	echo >> i386-emx-netherlands.var
i386-netbsd-netherlands.html.bg: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-netbsd-netherlands.html.bg -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-netherlands.html.en: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-netherlands.html.en -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-netherlands.html.fr: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-netbsd-netherlands.html.fr -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-netherlands.html.id: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-netbsd-netherlands.html.id -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-netherlands.html.it: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-netbsd-netherlands.html.it -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-netherlands.html.nl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-netbsd-netherlands.html.nl -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-netherlands.html.po: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-netbsd-netherlands.html.po -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-netherlands.html.sl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-netbsd-netherlands.html.sl -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-netherlands.html.ru: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-netbsd-netherlands.html.ru -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-netherlands.html: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-netherlands.html -oe ISO-8859-1 i386-netbsd.adp

i386-netbsd-netherlands.var: gen_makefile.conf
	echo > i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.bg' >> i386-netbsd-netherlands.var
	echo 'Content-language: bg' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.en' >> i386-netbsd-netherlands.var
	echo 'Content-language: en' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.fr' >> i386-netbsd-netherlands.var
	echo 'Content-language: fr' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.id' >> i386-netbsd-netherlands.var
	echo 'Content-language: id' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.it' >> i386-netbsd-netherlands.var
	echo 'Content-language: it' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.nl' >> i386-netbsd-netherlands.var
	echo 'Content-language: nl' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.po' >> i386-netbsd-netherlands.var
	echo 'Content-language: pl' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.sl' >> i386-netbsd-netherlands.var
	echo 'Content-language: sl' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
	echo 'URI: i386-netbsd-netherlands.html.ru' >> i386-netbsd-netherlands.var
	echo 'Content-language: ru' >> i386-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-netherlands.var
	echo >> i386-netbsd-netherlands.var
i386-solaris-netherlands.html.bg: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-solaris-netherlands.html.bg -oe iso-8859-5 i386-solaris.adp
i386-solaris-netherlands.html.en: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-netherlands.html.en -oe iso-8859-1 i386-solaris.adp
i386-solaris-netherlands.html.fr: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-solaris-netherlands.html.fr -oe iso-8859-1 i386-solaris.adp
i386-solaris-netherlands.html.id: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-solaris-netherlands.html.id -oe iso-8859-1 i386-solaris.adp
i386-solaris-netherlands.html.it: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-solaris-netherlands.html.it -oe iso-8859-1 i386-solaris.adp
i386-solaris-netherlands.html.nl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-solaris-netherlands.html.nl -oe iso-8859-1 i386-solaris.adp
i386-solaris-netherlands.html.po: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-solaris-netherlands.html.po -oe iso-8859-2 i386-solaris.adp
i386-solaris-netherlands.html.sl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-solaris-netherlands.html.sl -oe iso-8859-2 i386-solaris.adp
i386-solaris-netherlands.html.ru: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-solaris-netherlands.html.ru -oe iso-8859-5 i386-solaris.adp
i386-solaris-netherlands.html: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-netherlands.html -oe ISO-8859-1 i386-solaris.adp

i386-solaris-netherlands.var: gen_makefile.conf
	echo > i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.bg' >> i386-solaris-netherlands.var
	echo 'Content-language: bg' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.en' >> i386-solaris-netherlands.var
	echo 'Content-language: en' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.fr' >> i386-solaris-netherlands.var
	echo 'Content-language: fr' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.id' >> i386-solaris-netherlands.var
	echo 'Content-language: id' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.it' >> i386-solaris-netherlands.var
	echo 'Content-language: it' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.nl' >> i386-solaris-netherlands.var
	echo 'Content-language: nl' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.po' >> i386-solaris-netherlands.var
	echo 'Content-language: pl' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.sl' >> i386-solaris-netherlands.var
	echo 'Content-language: sl' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
	echo 'URI: i386-solaris-netherlands.html.ru' >> i386-solaris-netherlands.var
	echo 'Content-language: ru' >> i386-solaris-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-netherlands.var
	echo >> i386-solaris-netherlands.var
m68k-linux-netherlands.html.bg: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-linux-netherlands.html.bg -oe iso-8859-5 m68k-linux.adp
m68k-linux-netherlands.html.en: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-netherlands.html.en -oe iso-8859-1 m68k-linux.adp
m68k-linux-netherlands.html.fr: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-linux-netherlands.html.fr -oe iso-8859-1 m68k-linux.adp
m68k-linux-netherlands.html.id: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-linux-netherlands.html.id -oe iso-8859-1 m68k-linux.adp
m68k-linux-netherlands.html.it: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-linux-netherlands.html.it -oe iso-8859-1 m68k-linux.adp
m68k-linux-netherlands.html.nl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-linux-netherlands.html.nl -oe iso-8859-1 m68k-linux.adp
m68k-linux-netherlands.html.po: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-linux-netherlands.html.po -oe iso-8859-2 m68k-linux.adp
m68k-linux-netherlands.html.sl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-linux-netherlands.html.sl -oe iso-8859-2 m68k-linux.adp
m68k-linux-netherlands.html.ru: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-linux-netherlands.html.ru -oe iso-8859-5 m68k-linux.adp
m68k-linux-netherlands.html: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-netherlands.html -oe ISO-8859-1 m68k-linux.adp

m68k-linux-netherlands.var: gen_makefile.conf
	echo > m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.bg' >> m68k-linux-netherlands.var
	echo 'Content-language: bg' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.en' >> m68k-linux-netherlands.var
	echo 'Content-language: en' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.fr' >> m68k-linux-netherlands.var
	echo 'Content-language: fr' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.id' >> m68k-linux-netherlands.var
	echo 'Content-language: id' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.it' >> m68k-linux-netherlands.var
	echo 'Content-language: it' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.nl' >> m68k-linux-netherlands.var
	echo 'Content-language: nl' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.po' >> m68k-linux-netherlands.var
	echo 'Content-language: pl' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.sl' >> m68k-linux-netherlands.var
	echo 'Content-language: sl' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
	echo 'URI: m68k-linux-netherlands.html.ru' >> m68k-linux-netherlands.var
	echo 'Content-language: ru' >> m68k-linux-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-netherlands.var
	echo >> m68k-linux-netherlands.var
down-netherlands.html.bg: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o down-netherlands.html.bg -oe iso-8859-5 down.adp
down-netherlands.html.en: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-netherlands.html.en -oe iso-8859-1 down.adp
down-netherlands.html.fr: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o down-netherlands.html.fr -oe iso-8859-1 down.adp
down-netherlands.html.id: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o down-netherlands.html.id -oe iso-8859-1 down.adp
down-netherlands.html.it: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o down-netherlands.html.it -oe iso-8859-1 down.adp
down-netherlands.html.nl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o down-netherlands.html.nl -oe iso-8859-1 down.adp
down-netherlands.html.po: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o down-netherlands.html.po -oe iso-8859-2 down.adp
down-netherlands.html.sl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o down-netherlands.html.sl -oe iso-8859-2 down.adp
down-netherlands.html.ru: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o down-netherlands.html.ru -oe iso-8859-5 down.adp
down-netherlands.html: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-netherlands.html -oe ISO-8859-1 down.adp

down-netherlands.var: gen_makefile.conf
	echo > down-netherlands.var
	echo 'URI: down-netherlands.html.bg' >> down-netherlands.var
	echo 'Content-language: bg' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.en' >> down-netherlands.var
	echo 'Content-language: en' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.fr' >> down-netherlands.var
	echo 'Content-language: fr' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.id' >> down-netherlands.var
	echo 'Content-language: id' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.it' >> down-netherlands.var
	echo 'Content-language: it' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.nl' >> down-netherlands.var
	echo 'Content-language: nl' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.po' >> down-netherlands.var
	echo 'Content-language: pl' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.sl' >> down-netherlands.var
	echo 'Content-language: sl' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-netherlands.var
	echo >> down-netherlands.var
	echo 'URI: down-netherlands.html.ru' >> down-netherlands.var
	echo 'Content-language: ru' >> down-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-netherlands.var
	echo >> down-netherlands.var
i386-go32v2-netherlands.html.bg: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-go32v2-netherlands.html.bg -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-netherlands.html.en: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-netherlands.html.en -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-netherlands.html.fr: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-go32v2-netherlands.html.fr -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-netherlands.html.id: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-go32v2-netherlands.html.id -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-netherlands.html.it: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-go32v2-netherlands.html.it -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-netherlands.html.nl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-go32v2-netherlands.html.nl -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-netherlands.html.po: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-go32v2-netherlands.html.po -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-netherlands.html.sl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-go32v2-netherlands.html.sl -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-netherlands.html.ru: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-go32v2-netherlands.html.ru -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-netherlands.html: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-netherlands.html -oe ISO-8859-1 i386-go32v2.adp

i386-go32v2-netherlands.var: gen_makefile.conf
	echo > i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.bg' >> i386-go32v2-netherlands.var
	echo 'Content-language: bg' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.en' >> i386-go32v2-netherlands.var
	echo 'Content-language: en' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.fr' >> i386-go32v2-netherlands.var
	echo 'Content-language: fr' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.id' >> i386-go32v2-netherlands.var
	echo 'Content-language: id' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.it' >> i386-go32v2-netherlands.var
	echo 'Content-language: it' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.nl' >> i386-go32v2-netherlands.var
	echo 'Content-language: nl' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.po' >> i386-go32v2-netherlands.var
	echo 'Content-language: pl' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.sl' >> i386-go32v2-netherlands.var
	echo 'Content-language: sl' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
	echo 'URI: i386-go32v2-netherlands.html.ru' >> i386-go32v2-netherlands.var
	echo 'Content-language: ru' >> i386-go32v2-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-netherlands.var
	echo >> i386-go32v2-netherlands.var
i386-qnx-netherlands.html.bg: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-qnx-netherlands.html.bg -oe iso-8859-5 i386-qnx.adp
i386-qnx-netherlands.html.en: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-netherlands.html.en -oe iso-8859-1 i386-qnx.adp
i386-qnx-netherlands.html.fr: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-qnx-netherlands.html.fr -oe iso-8859-1 i386-qnx.adp
i386-qnx-netherlands.html.id: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-qnx-netherlands.html.id -oe iso-8859-1 i386-qnx.adp
i386-qnx-netherlands.html.it: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-qnx-netherlands.html.it -oe iso-8859-1 i386-qnx.adp
i386-qnx-netherlands.html.nl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-qnx-netherlands.html.nl -oe iso-8859-1 i386-qnx.adp
i386-qnx-netherlands.html.po: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-qnx-netherlands.html.po -oe iso-8859-2 i386-qnx.adp
i386-qnx-netherlands.html.sl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-qnx-netherlands.html.sl -oe iso-8859-2 i386-qnx.adp
i386-qnx-netherlands.html.ru: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-qnx-netherlands.html.ru -oe iso-8859-5 i386-qnx.adp
i386-qnx-netherlands.html: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-netherlands.html -oe ISO-8859-1 i386-qnx.adp

i386-qnx-netherlands.var: gen_makefile.conf
	echo > i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.bg' >> i386-qnx-netherlands.var
	echo 'Content-language: bg' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.en' >> i386-qnx-netherlands.var
	echo 'Content-language: en' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.fr' >> i386-qnx-netherlands.var
	echo 'Content-language: fr' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.id' >> i386-qnx-netherlands.var
	echo 'Content-language: id' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.it' >> i386-qnx-netherlands.var
	echo 'Content-language: it' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.nl' >> i386-qnx-netherlands.var
	echo 'Content-language: nl' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.po' >> i386-qnx-netherlands.var
	echo 'Content-language: pl' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.sl' >> i386-qnx-netherlands.var
	echo 'Content-language: sl' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
	echo 'URI: i386-qnx-netherlands.html.ru' >> i386-qnx-netherlands.var
	echo 'Content-language: ru' >> i386-qnx-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-netherlands.var
	echo >> i386-qnx-netherlands.var
m68k-amiga-netherlands.html.bg: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-amiga-netherlands.html.bg -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-netherlands.html.en: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-netherlands.html.en -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-netherlands.html.fr: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-amiga-netherlands.html.fr -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-netherlands.html.id: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-amiga-netherlands.html.id -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-netherlands.html.it: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-amiga-netherlands.html.it -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-netherlands.html.nl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-amiga-netherlands.html.nl -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-netherlands.html.po: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-amiga-netherlands.html.po -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-netherlands.html.sl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-amiga-netherlands.html.sl -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-netherlands.html.ru: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-amiga-netherlands.html.ru -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-netherlands.html: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-netherlands.html -oe ISO-8859-1 m68k-amiga.adp

m68k-amiga-netherlands.var: gen_makefile.conf
	echo > m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.bg' >> m68k-amiga-netherlands.var
	echo 'Content-language: bg' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.en' >> m68k-amiga-netherlands.var
	echo 'Content-language: en' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.fr' >> m68k-amiga-netherlands.var
	echo 'Content-language: fr' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.id' >> m68k-amiga-netherlands.var
	echo 'Content-language: id' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.it' >> m68k-amiga-netherlands.var
	echo 'Content-language: it' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.nl' >> m68k-amiga-netherlands.var
	echo 'Content-language: nl' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.po' >> m68k-amiga-netherlands.var
	echo 'Content-language: pl' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.sl' >> m68k-amiga-netherlands.var
	echo 'Content-language: sl' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
	echo 'URI: m68k-amiga-netherlands.html.ru' >> m68k-amiga-netherlands.var
	echo 'Content-language: ru' >> m68k-amiga-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-netherlands.var
	echo >> m68k-amiga-netherlands.var
m68k-netbsd-netherlands.html.bg: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-netbsd-netherlands.html.bg -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-netherlands.html.en: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-netherlands.html.en -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-netherlands.html.fr: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-netbsd-netherlands.html.fr -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-netherlands.html.id: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-netbsd-netherlands.html.id -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-netherlands.html.it: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-netbsd-netherlands.html.it -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-netherlands.html.nl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-netbsd-netherlands.html.nl -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-netherlands.html.po: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-netbsd-netherlands.html.po -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-netherlands.html.sl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-netbsd-netherlands.html.sl -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-netherlands.html.ru: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-netbsd-netherlands.html.ru -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-netherlands.html: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -p mirrorsuffix=netherlands -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-netherlands.html -oe ISO-8859-1 m68k-netbsd.adp

m68k-netbsd-netherlands.var: gen_makefile.conf
	echo > m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.bg' >> m68k-netbsd-netherlands.var
	echo 'Content-language: bg' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.en' >> m68k-netbsd-netherlands.var
	echo 'Content-language: en' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.fr' >> m68k-netbsd-netherlands.var
	echo 'Content-language: fr' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.id' >> m68k-netbsd-netherlands.var
	echo 'Content-language: id' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.it' >> m68k-netbsd-netherlands.var
	echo 'Content-language: it' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.nl' >> m68k-netbsd-netherlands.var
	echo 'Content-language: nl' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.po' >> m68k-netbsd-netherlands.var
	echo 'Content-language: pl' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.sl' >> m68k-netbsd-netherlands.var
	echo 'Content-language: sl' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
	echo 'URI: m68k-netbsd-netherlands.html.ru' >> m68k-netbsd-netherlands.var
	echo 'Content-language: ru' >> m68k-netbsd-netherlands.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-netherlands.var
	echo >> m68k-netbsd-netherlands.var
docs-norway.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o docs-norway.html.bg -oe iso-8859-5 docs.adp
docs-norway.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-norway.html.en -oe iso-8859-1 docs.adp
docs-norway.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o docs-norway.html.fr -oe iso-8859-1 docs.adp
docs-norway.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o docs-norway.html.id -oe iso-8859-1 docs.adp
docs-norway.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o docs-norway.html.it -oe iso-8859-1 docs.adp
docs-norway.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o docs-norway.html.nl -oe iso-8859-1 docs.adp
docs-norway.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o docs-norway.html.po -oe iso-8859-2 docs.adp
docs-norway.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o docs-norway.html.sl -oe iso-8859-2 docs.adp
docs-norway.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o docs-norway.html.ru -oe iso-8859-5 docs.adp
docs-norway.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-norway.html -oe ISO-8859-1 docs.adp

docs-norway.var: gen_makefile.conf
	echo > docs-norway.var
	echo 'URI: docs-norway.html.bg' >> docs-norway.var
	echo 'Content-language: bg' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.en' >> docs-norway.var
	echo 'Content-language: en' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.fr' >> docs-norway.var
	echo 'Content-language: fr' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.id' >> docs-norway.var
	echo 'Content-language: id' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.it' >> docs-norway.var
	echo 'Content-language: it' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.nl' >> docs-norway.var
	echo 'Content-language: nl' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.po' >> docs-norway.var
	echo 'Content-language: pl' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.sl' >> docs-norway.var
	echo 'Content-language: sl' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-norway.var
	echo >> docs-norway.var
	echo 'URI: docs-norway.html.ru' >> docs-norway.var
	echo 'Content-language: ru' >> docs-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-norway.var
	echo >> docs-norway.var
i386-beos-norway.html.bg: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-beos-norway.html.bg -oe iso-8859-5 i386-beos.adp
i386-beos-norway.html.en: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-norway.html.en -oe iso-8859-1 i386-beos.adp
i386-beos-norway.html.fr: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-beos-norway.html.fr -oe iso-8859-1 i386-beos.adp
i386-beos-norway.html.id: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-beos-norway.html.id -oe iso-8859-1 i386-beos.adp
i386-beos-norway.html.it: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-beos-norway.html.it -oe iso-8859-1 i386-beos.adp
i386-beos-norway.html.nl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-beos-norway.html.nl -oe iso-8859-1 i386-beos.adp
i386-beos-norway.html.po: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-beos-norway.html.po -oe iso-8859-2 i386-beos.adp
i386-beos-norway.html.sl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-beos-norway.html.sl -oe iso-8859-2 i386-beos.adp
i386-beos-norway.html.ru: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-beos-norway.html.ru -oe iso-8859-5 i386-beos.adp
i386-beos-norway.html: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-norway.html -oe ISO-8859-1 i386-beos.adp

i386-beos-norway.var: gen_makefile.conf
	echo > i386-beos-norway.var
	echo 'URI: i386-beos-norway.html.bg' >> i386-beos-norway.var
	echo 'Content-language: bg' >> i386-beos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-norway.var
	echo >> i386-beos-norway.var
	echo 'URI: i386-beos-norway.html.en' >> i386-beos-norway.var
	echo 'Content-language: en' >> i386-beos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-norway.var
	echo >> i386-beos-norway.var
	echo 'URI: i386-beos-norway.html.fr' >> i386-beos-norway.var
	echo 'Content-language: fr' >> i386-beos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-norway.var
	echo >> i386-beos-norway.var
	echo 'URI: i386-beos-norway.html.id' >> i386-beos-norway.var
	echo 'Content-language: id' >> i386-beos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-norway.var
	echo >> i386-beos-norway.var
	echo 'URI: i386-beos-norway.html.it' >> i386-beos-norway.var
	echo 'Content-language: it' >> i386-beos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-norway.var
	echo >> i386-beos-norway.var
	echo 'URI: i386-beos-norway.html.nl' >> i386-beos-norway.var
	echo 'Content-language: nl' >> i386-beos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-norway.var
	echo >> i386-beos-norway.var
	echo 'URI: i386-beos-norway.html.po' >> i386-beos-norway.var
	echo 'Content-language: pl' >> i386-beos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-norway.var
	echo >> i386-beos-norway.var
	echo 'URI: i386-beos-norway.html.sl' >> i386-beos-norway.var
	echo 'Content-language: sl' >> i386-beos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-norway.var
	echo >> i386-beos-norway.var
	echo 'URI: i386-beos-norway.html.ru' >> i386-beos-norway.var
	echo 'Content-language: ru' >> i386-beos-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-norway.var
	echo >> i386-beos-norway.var
i386-emx-norway.html.bg: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-emx-norway.html.bg -oe iso-8859-5 i386-emx.adp
i386-emx-norway.html.en: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-norway.html.en -oe iso-8859-1 i386-emx.adp
i386-emx-norway.html.fr: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-emx-norway.html.fr -oe iso-8859-1 i386-emx.adp
i386-emx-norway.html.id: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-emx-norway.html.id -oe iso-8859-1 i386-emx.adp
i386-emx-norway.html.it: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-emx-norway.html.it -oe iso-8859-1 i386-emx.adp
i386-emx-norway.html.nl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-emx-norway.html.nl -oe iso-8859-1 i386-emx.adp
i386-emx-norway.html.po: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-emx-norway.html.po -oe iso-8859-2 i386-emx.adp
i386-emx-norway.html.sl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-emx-norway.html.sl -oe iso-8859-2 i386-emx.adp
i386-emx-norway.html.ru: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-emx-norway.html.ru -oe iso-8859-5 i386-emx.adp
i386-emx-norway.html: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-norway.html -oe ISO-8859-1 i386-emx.adp

i386-emx-norway.var: gen_makefile.conf
	echo > i386-emx-norway.var
	echo 'URI: i386-emx-norway.html.bg' >> i386-emx-norway.var
	echo 'Content-language: bg' >> i386-emx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-norway.var
	echo >> i386-emx-norway.var
	echo 'URI: i386-emx-norway.html.en' >> i386-emx-norway.var
	echo 'Content-language: en' >> i386-emx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-norway.var
	echo >> i386-emx-norway.var
	echo 'URI: i386-emx-norway.html.fr' >> i386-emx-norway.var
	echo 'Content-language: fr' >> i386-emx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-norway.var
	echo >> i386-emx-norway.var
	echo 'URI: i386-emx-norway.html.id' >> i386-emx-norway.var
	echo 'Content-language: id' >> i386-emx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-norway.var
	echo >> i386-emx-norway.var
	echo 'URI: i386-emx-norway.html.it' >> i386-emx-norway.var
	echo 'Content-language: it' >> i386-emx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-norway.var
	echo >> i386-emx-norway.var
	echo 'URI: i386-emx-norway.html.nl' >> i386-emx-norway.var
	echo 'Content-language: nl' >> i386-emx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-norway.var
	echo >> i386-emx-norway.var
	echo 'URI: i386-emx-norway.html.po' >> i386-emx-norway.var
	echo 'Content-language: pl' >> i386-emx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-norway.var
	echo >> i386-emx-norway.var
	echo 'URI: i386-emx-norway.html.sl' >> i386-emx-norway.var
	echo 'Content-language: sl' >> i386-emx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-norway.var
	echo >> i386-emx-norway.var
	echo 'URI: i386-emx-norway.html.ru' >> i386-emx-norway.var
	echo 'Content-language: ru' >> i386-emx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-norway.var
	echo >> i386-emx-norway.var
i386-netbsd-norway.html.bg: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-netbsd-norway.html.bg -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-norway.html.en: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-norway.html.en -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-norway.html.fr: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-netbsd-norway.html.fr -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-norway.html.id: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-netbsd-norway.html.id -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-norway.html.it: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-netbsd-norway.html.it -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-norway.html.nl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-netbsd-norway.html.nl -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-norway.html.po: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-netbsd-norway.html.po -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-norway.html.sl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-netbsd-norway.html.sl -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-norway.html.ru: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-netbsd-norway.html.ru -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-norway.html: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-norway.html -oe ISO-8859-1 i386-netbsd.adp

i386-netbsd-norway.var: gen_makefile.conf
	echo > i386-netbsd-norway.var
	echo 'URI: i386-netbsd-norway.html.bg' >> i386-netbsd-norway.var
	echo 'Content-language: bg' >> i386-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-norway.var
	echo >> i386-netbsd-norway.var
	echo 'URI: i386-netbsd-norway.html.en' >> i386-netbsd-norway.var
	echo 'Content-language: en' >> i386-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-norway.var
	echo >> i386-netbsd-norway.var
	echo 'URI: i386-netbsd-norway.html.fr' >> i386-netbsd-norway.var
	echo 'Content-language: fr' >> i386-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-norway.var
	echo >> i386-netbsd-norway.var
	echo 'URI: i386-netbsd-norway.html.id' >> i386-netbsd-norway.var
	echo 'Content-language: id' >> i386-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-norway.var
	echo >> i386-netbsd-norway.var
	echo 'URI: i386-netbsd-norway.html.it' >> i386-netbsd-norway.var
	echo 'Content-language: it' >> i386-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-norway.var
	echo >> i386-netbsd-norway.var
	echo 'URI: i386-netbsd-norway.html.nl' >> i386-netbsd-norway.var
	echo 'Content-language: nl' >> i386-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-norway.var
	echo >> i386-netbsd-norway.var
	echo 'URI: i386-netbsd-norway.html.po' >> i386-netbsd-norway.var
	echo 'Content-language: pl' >> i386-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-norway.var
	echo >> i386-netbsd-norway.var
	echo 'URI: i386-netbsd-norway.html.sl' >> i386-netbsd-norway.var
	echo 'Content-language: sl' >> i386-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-norway.var
	echo >> i386-netbsd-norway.var
	echo 'URI: i386-netbsd-norway.html.ru' >> i386-netbsd-norway.var
	echo 'Content-language: ru' >> i386-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-norway.var
	echo >> i386-netbsd-norway.var
i386-solaris-norway.html.bg: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-solaris-norway.html.bg -oe iso-8859-5 i386-solaris.adp
i386-solaris-norway.html.en: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-norway.html.en -oe iso-8859-1 i386-solaris.adp
i386-solaris-norway.html.fr: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-solaris-norway.html.fr -oe iso-8859-1 i386-solaris.adp
i386-solaris-norway.html.id: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-solaris-norway.html.id -oe iso-8859-1 i386-solaris.adp
i386-solaris-norway.html.it: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-solaris-norway.html.it -oe iso-8859-1 i386-solaris.adp
i386-solaris-norway.html.nl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-solaris-norway.html.nl -oe iso-8859-1 i386-solaris.adp
i386-solaris-norway.html.po: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-solaris-norway.html.po -oe iso-8859-2 i386-solaris.adp
i386-solaris-norway.html.sl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-solaris-norway.html.sl -oe iso-8859-2 i386-solaris.adp
i386-solaris-norway.html.ru: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-solaris-norway.html.ru -oe iso-8859-5 i386-solaris.adp
i386-solaris-norway.html: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-norway.html -oe ISO-8859-1 i386-solaris.adp

i386-solaris-norway.var: gen_makefile.conf
	echo > i386-solaris-norway.var
	echo 'URI: i386-solaris-norway.html.bg' >> i386-solaris-norway.var
	echo 'Content-language: bg' >> i386-solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-norway.var
	echo >> i386-solaris-norway.var
	echo 'URI: i386-solaris-norway.html.en' >> i386-solaris-norway.var
	echo 'Content-language: en' >> i386-solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-norway.var
	echo >> i386-solaris-norway.var
	echo 'URI: i386-solaris-norway.html.fr' >> i386-solaris-norway.var
	echo 'Content-language: fr' >> i386-solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-norway.var
	echo >> i386-solaris-norway.var
	echo 'URI: i386-solaris-norway.html.id' >> i386-solaris-norway.var
	echo 'Content-language: id' >> i386-solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-norway.var
	echo >> i386-solaris-norway.var
	echo 'URI: i386-solaris-norway.html.it' >> i386-solaris-norway.var
	echo 'Content-language: it' >> i386-solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-norway.var
	echo >> i386-solaris-norway.var
	echo 'URI: i386-solaris-norway.html.nl' >> i386-solaris-norway.var
	echo 'Content-language: nl' >> i386-solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-norway.var
	echo >> i386-solaris-norway.var
	echo 'URI: i386-solaris-norway.html.po' >> i386-solaris-norway.var
	echo 'Content-language: pl' >> i386-solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-norway.var
	echo >> i386-solaris-norway.var
	echo 'URI: i386-solaris-norway.html.sl' >> i386-solaris-norway.var
	echo 'Content-language: sl' >> i386-solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-norway.var
	echo >> i386-solaris-norway.var
	echo 'URI: i386-solaris-norway.html.ru' >> i386-solaris-norway.var
	echo 'Content-language: ru' >> i386-solaris-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-norway.var
	echo >> i386-solaris-norway.var
m68k-linux-norway.html.bg: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-linux-norway.html.bg -oe iso-8859-5 m68k-linux.adp
m68k-linux-norway.html.en: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-norway.html.en -oe iso-8859-1 m68k-linux.adp
m68k-linux-norway.html.fr: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-linux-norway.html.fr -oe iso-8859-1 m68k-linux.adp
m68k-linux-norway.html.id: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-linux-norway.html.id -oe iso-8859-1 m68k-linux.adp
m68k-linux-norway.html.it: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-linux-norway.html.it -oe iso-8859-1 m68k-linux.adp
m68k-linux-norway.html.nl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-linux-norway.html.nl -oe iso-8859-1 m68k-linux.adp
m68k-linux-norway.html.po: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-linux-norway.html.po -oe iso-8859-2 m68k-linux.adp
m68k-linux-norway.html.sl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-linux-norway.html.sl -oe iso-8859-2 m68k-linux.adp
m68k-linux-norway.html.ru: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-linux-norway.html.ru -oe iso-8859-5 m68k-linux.adp
m68k-linux-norway.html: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-norway.html -oe ISO-8859-1 m68k-linux.adp

m68k-linux-norway.var: gen_makefile.conf
	echo > m68k-linux-norway.var
	echo 'URI: m68k-linux-norway.html.bg' >> m68k-linux-norway.var
	echo 'Content-language: bg' >> m68k-linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-norway.var
	echo >> m68k-linux-norway.var
	echo 'URI: m68k-linux-norway.html.en' >> m68k-linux-norway.var
	echo 'Content-language: en' >> m68k-linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-norway.var
	echo >> m68k-linux-norway.var
	echo 'URI: m68k-linux-norway.html.fr' >> m68k-linux-norway.var
	echo 'Content-language: fr' >> m68k-linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-norway.var
	echo >> m68k-linux-norway.var
	echo 'URI: m68k-linux-norway.html.id' >> m68k-linux-norway.var
	echo 'Content-language: id' >> m68k-linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-norway.var
	echo >> m68k-linux-norway.var
	echo 'URI: m68k-linux-norway.html.it' >> m68k-linux-norway.var
	echo 'Content-language: it' >> m68k-linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-norway.var
	echo >> m68k-linux-norway.var
	echo 'URI: m68k-linux-norway.html.nl' >> m68k-linux-norway.var
	echo 'Content-language: nl' >> m68k-linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-norway.var
	echo >> m68k-linux-norway.var
	echo 'URI: m68k-linux-norway.html.po' >> m68k-linux-norway.var
	echo 'Content-language: pl' >> m68k-linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-norway.var
	echo >> m68k-linux-norway.var
	echo 'URI: m68k-linux-norway.html.sl' >> m68k-linux-norway.var
	echo 'Content-language: sl' >> m68k-linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-norway.var
	echo >> m68k-linux-norway.var
	echo 'URI: m68k-linux-norway.html.ru' >> m68k-linux-norway.var
	echo 'Content-language: ru' >> m68k-linux-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-norway.var
	echo >> m68k-linux-norway.var
down-norway.html.bg: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o down-norway.html.bg -oe iso-8859-5 down.adp
down-norway.html.en: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-norway.html.en -oe iso-8859-1 down.adp
down-norway.html.fr: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o down-norway.html.fr -oe iso-8859-1 down.adp
down-norway.html.id: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o down-norway.html.id -oe iso-8859-1 down.adp
down-norway.html.it: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o down-norway.html.it -oe iso-8859-1 down.adp
down-norway.html.nl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o down-norway.html.nl -oe iso-8859-1 down.adp
down-norway.html.po: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o down-norway.html.po -oe iso-8859-2 down.adp
down-norway.html.sl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o down-norway.html.sl -oe iso-8859-2 down.adp
down-norway.html.ru: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o down-norway.html.ru -oe iso-8859-5 down.adp
down-norway.html: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-norway.html -oe ISO-8859-1 down.adp

down-norway.var: gen_makefile.conf
	echo > down-norway.var
	echo 'URI: down-norway.html.bg' >> down-norway.var
	echo 'Content-language: bg' >> down-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-norway.var
	echo >> down-norway.var
	echo 'URI: down-norway.html.en' >> down-norway.var
	echo 'Content-language: en' >> down-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-norway.var
	echo >> down-norway.var
	echo 'URI: down-norway.html.fr' >> down-norway.var
	echo 'Content-language: fr' >> down-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-norway.var
	echo >> down-norway.var
	echo 'URI: down-norway.html.id' >> down-norway.var
	echo 'Content-language: id' >> down-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-norway.var
	echo >> down-norway.var
	echo 'URI: down-norway.html.it' >> down-norway.var
	echo 'Content-language: it' >> down-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-norway.var
	echo >> down-norway.var
	echo 'URI: down-norway.html.nl' >> down-norway.var
	echo 'Content-language: nl' >> down-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-norway.var
	echo >> down-norway.var
	echo 'URI: down-norway.html.po' >> down-norway.var
	echo 'Content-language: pl' >> down-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-norway.var
	echo >> down-norway.var
	echo 'URI: down-norway.html.sl' >> down-norway.var
	echo 'Content-language: sl' >> down-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-norway.var
	echo >> down-norway.var
	echo 'URI: down-norway.html.ru' >> down-norway.var
	echo 'Content-language: ru' >> down-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-norway.var
	echo >> down-norway.var
i386-go32v2-norway.html.bg: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-go32v2-norway.html.bg -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-norway.html.en: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-norway.html.en -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-norway.html.fr: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-go32v2-norway.html.fr -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-norway.html.id: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-go32v2-norway.html.id -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-norway.html.it: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-go32v2-norway.html.it -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-norway.html.nl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-go32v2-norway.html.nl -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-norway.html.po: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-go32v2-norway.html.po -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-norway.html.sl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-go32v2-norway.html.sl -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-norway.html.ru: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-go32v2-norway.html.ru -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-norway.html: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-norway.html -oe ISO-8859-1 i386-go32v2.adp

i386-go32v2-norway.var: gen_makefile.conf
	echo > i386-go32v2-norway.var
	echo 'URI: i386-go32v2-norway.html.bg' >> i386-go32v2-norway.var
	echo 'Content-language: bg' >> i386-go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-norway.var
	echo >> i386-go32v2-norway.var
	echo 'URI: i386-go32v2-norway.html.en' >> i386-go32v2-norway.var
	echo 'Content-language: en' >> i386-go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-norway.var
	echo >> i386-go32v2-norway.var
	echo 'URI: i386-go32v2-norway.html.fr' >> i386-go32v2-norway.var
	echo 'Content-language: fr' >> i386-go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-norway.var
	echo >> i386-go32v2-norway.var
	echo 'URI: i386-go32v2-norway.html.id' >> i386-go32v2-norway.var
	echo 'Content-language: id' >> i386-go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-norway.var
	echo >> i386-go32v2-norway.var
	echo 'URI: i386-go32v2-norway.html.it' >> i386-go32v2-norway.var
	echo 'Content-language: it' >> i386-go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-norway.var
	echo >> i386-go32v2-norway.var
	echo 'URI: i386-go32v2-norway.html.nl' >> i386-go32v2-norway.var
	echo 'Content-language: nl' >> i386-go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-norway.var
	echo >> i386-go32v2-norway.var
	echo 'URI: i386-go32v2-norway.html.po' >> i386-go32v2-norway.var
	echo 'Content-language: pl' >> i386-go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-norway.var
	echo >> i386-go32v2-norway.var
	echo 'URI: i386-go32v2-norway.html.sl' >> i386-go32v2-norway.var
	echo 'Content-language: sl' >> i386-go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-norway.var
	echo >> i386-go32v2-norway.var
	echo 'URI: i386-go32v2-norway.html.ru' >> i386-go32v2-norway.var
	echo 'Content-language: ru' >> i386-go32v2-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-norway.var
	echo >> i386-go32v2-norway.var
i386-qnx-norway.html.bg: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-qnx-norway.html.bg -oe iso-8859-5 i386-qnx.adp
i386-qnx-norway.html.en: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-norway.html.en -oe iso-8859-1 i386-qnx.adp
i386-qnx-norway.html.fr: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-qnx-norway.html.fr -oe iso-8859-1 i386-qnx.adp
i386-qnx-norway.html.id: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-qnx-norway.html.id -oe iso-8859-1 i386-qnx.adp
i386-qnx-norway.html.it: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-qnx-norway.html.it -oe iso-8859-1 i386-qnx.adp
i386-qnx-norway.html.nl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-qnx-norway.html.nl -oe iso-8859-1 i386-qnx.adp
i386-qnx-norway.html.po: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-qnx-norway.html.po -oe iso-8859-2 i386-qnx.adp
i386-qnx-norway.html.sl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-qnx-norway.html.sl -oe iso-8859-2 i386-qnx.adp
i386-qnx-norway.html.ru: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-qnx-norway.html.ru -oe iso-8859-5 i386-qnx.adp
i386-qnx-norway.html: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-norway.html -oe ISO-8859-1 i386-qnx.adp

i386-qnx-norway.var: gen_makefile.conf
	echo > i386-qnx-norway.var
	echo 'URI: i386-qnx-norway.html.bg' >> i386-qnx-norway.var
	echo 'Content-language: bg' >> i386-qnx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-norway.var
	echo >> i386-qnx-norway.var
	echo 'URI: i386-qnx-norway.html.en' >> i386-qnx-norway.var
	echo 'Content-language: en' >> i386-qnx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-norway.var
	echo >> i386-qnx-norway.var
	echo 'URI: i386-qnx-norway.html.fr' >> i386-qnx-norway.var
	echo 'Content-language: fr' >> i386-qnx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-norway.var
	echo >> i386-qnx-norway.var
	echo 'URI: i386-qnx-norway.html.id' >> i386-qnx-norway.var
	echo 'Content-language: id' >> i386-qnx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-norway.var
	echo >> i386-qnx-norway.var
	echo 'URI: i386-qnx-norway.html.it' >> i386-qnx-norway.var
	echo 'Content-language: it' >> i386-qnx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-norway.var
	echo >> i386-qnx-norway.var
	echo 'URI: i386-qnx-norway.html.nl' >> i386-qnx-norway.var
	echo 'Content-language: nl' >> i386-qnx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-norway.var
	echo >> i386-qnx-norway.var
	echo 'URI: i386-qnx-norway.html.po' >> i386-qnx-norway.var
	echo 'Content-language: pl' >> i386-qnx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-norway.var
	echo >> i386-qnx-norway.var
	echo 'URI: i386-qnx-norway.html.sl' >> i386-qnx-norway.var
	echo 'Content-language: sl' >> i386-qnx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-norway.var
	echo >> i386-qnx-norway.var
	echo 'URI: i386-qnx-norway.html.ru' >> i386-qnx-norway.var
	echo 'Content-language: ru' >> i386-qnx-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-norway.var
	echo >> i386-qnx-norway.var
m68k-amiga-norway.html.bg: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-amiga-norway.html.bg -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-norway.html.en: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-norway.html.en -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-norway.html.fr: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-amiga-norway.html.fr -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-norway.html.id: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-amiga-norway.html.id -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-norway.html.it: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-amiga-norway.html.it -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-norway.html.nl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-amiga-norway.html.nl -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-norway.html.po: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-amiga-norway.html.po -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-norway.html.sl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-amiga-norway.html.sl -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-norway.html.ru: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-amiga-norway.html.ru -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-norway.html: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-norway.html -oe ISO-8859-1 m68k-amiga.adp

m68k-amiga-norway.var: gen_makefile.conf
	echo > m68k-amiga-norway.var
	echo 'URI: m68k-amiga-norway.html.bg' >> m68k-amiga-norway.var
	echo 'Content-language: bg' >> m68k-amiga-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-norway.var
	echo >> m68k-amiga-norway.var
	echo 'URI: m68k-amiga-norway.html.en' >> m68k-amiga-norway.var
	echo 'Content-language: en' >> m68k-amiga-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-norway.var
	echo >> m68k-amiga-norway.var
	echo 'URI: m68k-amiga-norway.html.fr' >> m68k-amiga-norway.var
	echo 'Content-language: fr' >> m68k-amiga-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-norway.var
	echo >> m68k-amiga-norway.var
	echo 'URI: m68k-amiga-norway.html.id' >> m68k-amiga-norway.var
	echo 'Content-language: id' >> m68k-amiga-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-norway.var
	echo >> m68k-amiga-norway.var
	echo 'URI: m68k-amiga-norway.html.it' >> m68k-amiga-norway.var
	echo 'Content-language: it' >> m68k-amiga-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-norway.var
	echo >> m68k-amiga-norway.var
	echo 'URI: m68k-amiga-norway.html.nl' >> m68k-amiga-norway.var
	echo 'Content-language: nl' >> m68k-amiga-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-norway.var
	echo >> m68k-amiga-norway.var
	echo 'URI: m68k-amiga-norway.html.po' >> m68k-amiga-norway.var
	echo 'Content-language: pl' >> m68k-amiga-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-norway.var
	echo >> m68k-amiga-norway.var
	echo 'URI: m68k-amiga-norway.html.sl' >> m68k-amiga-norway.var
	echo 'Content-language: sl' >> m68k-amiga-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-norway.var
	echo >> m68k-amiga-norway.var
	echo 'URI: m68k-amiga-norway.html.ru' >> m68k-amiga-norway.var
	echo 'Content-language: ru' >> m68k-amiga-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-norway.var
	echo >> m68k-amiga-norway.var
m68k-netbsd-norway.html.bg: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-netbsd-norway.html.bg -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-norway.html.en: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-norway.html.en -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-norway.html.fr: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-netbsd-norway.html.fr -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-norway.html.id: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-netbsd-norway.html.id -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-norway.html.it: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-netbsd-norway.html.it -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-norway.html.nl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-netbsd-norway.html.nl -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-norway.html.po: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-netbsd-norway.html.po -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-norway.html.sl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-netbsd-norway.html.sl -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-norway.html.ru: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-netbsd-norway.html.ru -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-norway.html: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -p mirrorsuffix=norway -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-norway.html -oe ISO-8859-1 m68k-netbsd.adp

m68k-netbsd-norway.var: gen_makefile.conf
	echo > m68k-netbsd-norway.var
	echo 'URI: m68k-netbsd-norway.html.bg' >> m68k-netbsd-norway.var
	echo 'Content-language: bg' >> m68k-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-norway.var
	echo >> m68k-netbsd-norway.var
	echo 'URI: m68k-netbsd-norway.html.en' >> m68k-netbsd-norway.var
	echo 'Content-language: en' >> m68k-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-norway.var
	echo >> m68k-netbsd-norway.var
	echo 'URI: m68k-netbsd-norway.html.fr' >> m68k-netbsd-norway.var
	echo 'Content-language: fr' >> m68k-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-norway.var
	echo >> m68k-netbsd-norway.var
	echo 'URI: m68k-netbsd-norway.html.id' >> m68k-netbsd-norway.var
	echo 'Content-language: id' >> m68k-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-norway.var
	echo >> m68k-netbsd-norway.var
	echo 'URI: m68k-netbsd-norway.html.it' >> m68k-netbsd-norway.var
	echo 'Content-language: it' >> m68k-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-norway.var
	echo >> m68k-netbsd-norway.var
	echo 'URI: m68k-netbsd-norway.html.nl' >> m68k-netbsd-norway.var
	echo 'Content-language: nl' >> m68k-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-norway.var
	echo >> m68k-netbsd-norway.var
	echo 'URI: m68k-netbsd-norway.html.po' >> m68k-netbsd-norway.var
	echo 'Content-language: pl' >> m68k-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-norway.var
	echo >> m68k-netbsd-norway.var
	echo 'URI: m68k-netbsd-norway.html.sl' >> m68k-netbsd-norway.var
	echo 'Content-language: sl' >> m68k-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-norway.var
	echo >> m68k-netbsd-norway.var
	echo 'URI: m68k-netbsd-norway.html.ru' >> m68k-netbsd-norway.var
	echo 'Content-language: ru' >> m68k-netbsd-norway.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-norway.var
	echo >> m68k-netbsd-norway.var
docs-russia.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o docs-russia.html.bg -oe iso-8859-5 docs.adp
docs-russia.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-russia.html.en -oe iso-8859-1 docs.adp
docs-russia.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o docs-russia.html.fr -oe iso-8859-1 docs.adp
docs-russia.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o docs-russia.html.id -oe iso-8859-1 docs.adp
docs-russia.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o docs-russia.html.it -oe iso-8859-1 docs.adp
docs-russia.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o docs-russia.html.nl -oe iso-8859-1 docs.adp
docs-russia.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o docs-russia.html.po -oe iso-8859-2 docs.adp
docs-russia.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o docs-russia.html.sl -oe iso-8859-2 docs.adp
docs-russia.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o docs-russia.html.ru -oe iso-8859-5 docs.adp
docs-russia.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-russia.html -oe ISO-8859-1 docs.adp

docs-russia.var: gen_makefile.conf
	echo > docs-russia.var
	echo 'URI: docs-russia.html.bg' >> docs-russia.var
	echo 'Content-language: bg' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.en' >> docs-russia.var
	echo 'Content-language: en' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.fr' >> docs-russia.var
	echo 'Content-language: fr' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.id' >> docs-russia.var
	echo 'Content-language: id' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.it' >> docs-russia.var
	echo 'Content-language: it' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.nl' >> docs-russia.var
	echo 'Content-language: nl' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.po' >> docs-russia.var
	echo 'Content-language: pl' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.sl' >> docs-russia.var
	echo 'Content-language: sl' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-russia.var
	echo >> docs-russia.var
	echo 'URI: docs-russia.html.ru' >> docs-russia.var
	echo 'Content-language: ru' >> docs-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-russia.var
	echo >> docs-russia.var
i386-beos-russia.html.bg: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-beos-russia.html.bg -oe iso-8859-5 i386-beos.adp
i386-beos-russia.html.en: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-russia.html.en -oe iso-8859-1 i386-beos.adp
i386-beos-russia.html.fr: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-beos-russia.html.fr -oe iso-8859-1 i386-beos.adp
i386-beos-russia.html.id: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-beos-russia.html.id -oe iso-8859-1 i386-beos.adp
i386-beos-russia.html.it: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-beos-russia.html.it -oe iso-8859-1 i386-beos.adp
i386-beos-russia.html.nl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-beos-russia.html.nl -oe iso-8859-1 i386-beos.adp
i386-beos-russia.html.po: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-beos-russia.html.po -oe iso-8859-2 i386-beos.adp
i386-beos-russia.html.sl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-beos-russia.html.sl -oe iso-8859-2 i386-beos.adp
i386-beos-russia.html.ru: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-beos-russia.html.ru -oe iso-8859-5 i386-beos.adp
i386-beos-russia.html: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-russia.html -oe ISO-8859-1 i386-beos.adp

i386-beos-russia.var: gen_makefile.conf
	echo > i386-beos-russia.var
	echo 'URI: i386-beos-russia.html.bg' >> i386-beos-russia.var
	echo 'Content-language: bg' >> i386-beos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-russia.var
	echo >> i386-beos-russia.var
	echo 'URI: i386-beos-russia.html.en' >> i386-beos-russia.var
	echo 'Content-language: en' >> i386-beos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-russia.var
	echo >> i386-beos-russia.var
	echo 'URI: i386-beos-russia.html.fr' >> i386-beos-russia.var
	echo 'Content-language: fr' >> i386-beos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-russia.var
	echo >> i386-beos-russia.var
	echo 'URI: i386-beos-russia.html.id' >> i386-beos-russia.var
	echo 'Content-language: id' >> i386-beos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-russia.var
	echo >> i386-beos-russia.var
	echo 'URI: i386-beos-russia.html.it' >> i386-beos-russia.var
	echo 'Content-language: it' >> i386-beos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-russia.var
	echo >> i386-beos-russia.var
	echo 'URI: i386-beos-russia.html.nl' >> i386-beos-russia.var
	echo 'Content-language: nl' >> i386-beos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-russia.var
	echo >> i386-beos-russia.var
	echo 'URI: i386-beos-russia.html.po' >> i386-beos-russia.var
	echo 'Content-language: pl' >> i386-beos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-russia.var
	echo >> i386-beos-russia.var
	echo 'URI: i386-beos-russia.html.sl' >> i386-beos-russia.var
	echo 'Content-language: sl' >> i386-beos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-russia.var
	echo >> i386-beos-russia.var
	echo 'URI: i386-beos-russia.html.ru' >> i386-beos-russia.var
	echo 'Content-language: ru' >> i386-beos-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-russia.var
	echo >> i386-beos-russia.var
i386-emx-russia.html.bg: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-emx-russia.html.bg -oe iso-8859-5 i386-emx.adp
i386-emx-russia.html.en: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-russia.html.en -oe iso-8859-1 i386-emx.adp
i386-emx-russia.html.fr: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-emx-russia.html.fr -oe iso-8859-1 i386-emx.adp
i386-emx-russia.html.id: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-emx-russia.html.id -oe iso-8859-1 i386-emx.adp
i386-emx-russia.html.it: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-emx-russia.html.it -oe iso-8859-1 i386-emx.adp
i386-emx-russia.html.nl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-emx-russia.html.nl -oe iso-8859-1 i386-emx.adp
i386-emx-russia.html.po: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-emx-russia.html.po -oe iso-8859-2 i386-emx.adp
i386-emx-russia.html.sl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-emx-russia.html.sl -oe iso-8859-2 i386-emx.adp
i386-emx-russia.html.ru: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-emx-russia.html.ru -oe iso-8859-5 i386-emx.adp
i386-emx-russia.html: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-russia.html -oe ISO-8859-1 i386-emx.adp

i386-emx-russia.var: gen_makefile.conf
	echo > i386-emx-russia.var
	echo 'URI: i386-emx-russia.html.bg' >> i386-emx-russia.var
	echo 'Content-language: bg' >> i386-emx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-russia.var
	echo >> i386-emx-russia.var
	echo 'URI: i386-emx-russia.html.en' >> i386-emx-russia.var
	echo 'Content-language: en' >> i386-emx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-russia.var
	echo >> i386-emx-russia.var
	echo 'URI: i386-emx-russia.html.fr' >> i386-emx-russia.var
	echo 'Content-language: fr' >> i386-emx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-russia.var
	echo >> i386-emx-russia.var
	echo 'URI: i386-emx-russia.html.id' >> i386-emx-russia.var
	echo 'Content-language: id' >> i386-emx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-russia.var
	echo >> i386-emx-russia.var
	echo 'URI: i386-emx-russia.html.it' >> i386-emx-russia.var
	echo 'Content-language: it' >> i386-emx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-russia.var
	echo >> i386-emx-russia.var
	echo 'URI: i386-emx-russia.html.nl' >> i386-emx-russia.var
	echo 'Content-language: nl' >> i386-emx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-russia.var
	echo >> i386-emx-russia.var
	echo 'URI: i386-emx-russia.html.po' >> i386-emx-russia.var
	echo 'Content-language: pl' >> i386-emx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-russia.var
	echo >> i386-emx-russia.var
	echo 'URI: i386-emx-russia.html.sl' >> i386-emx-russia.var
	echo 'Content-language: sl' >> i386-emx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-russia.var
	echo >> i386-emx-russia.var
	echo 'URI: i386-emx-russia.html.ru' >> i386-emx-russia.var
	echo 'Content-language: ru' >> i386-emx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-russia.var
	echo >> i386-emx-russia.var
i386-netbsd-russia.html.bg: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-netbsd-russia.html.bg -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-russia.html.en: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-russia.html.en -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-russia.html.fr: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-netbsd-russia.html.fr -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-russia.html.id: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-netbsd-russia.html.id -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-russia.html.it: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-netbsd-russia.html.it -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-russia.html.nl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-netbsd-russia.html.nl -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-russia.html.po: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-netbsd-russia.html.po -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-russia.html.sl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-netbsd-russia.html.sl -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-russia.html.ru: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-netbsd-russia.html.ru -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-russia.html: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-russia.html -oe ISO-8859-1 i386-netbsd.adp

i386-netbsd-russia.var: gen_makefile.conf
	echo > i386-netbsd-russia.var
	echo 'URI: i386-netbsd-russia.html.bg' >> i386-netbsd-russia.var
	echo 'Content-language: bg' >> i386-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-russia.var
	echo >> i386-netbsd-russia.var
	echo 'URI: i386-netbsd-russia.html.en' >> i386-netbsd-russia.var
	echo 'Content-language: en' >> i386-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-russia.var
	echo >> i386-netbsd-russia.var
	echo 'URI: i386-netbsd-russia.html.fr' >> i386-netbsd-russia.var
	echo 'Content-language: fr' >> i386-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-russia.var
	echo >> i386-netbsd-russia.var
	echo 'URI: i386-netbsd-russia.html.id' >> i386-netbsd-russia.var
	echo 'Content-language: id' >> i386-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-russia.var
	echo >> i386-netbsd-russia.var
	echo 'URI: i386-netbsd-russia.html.it' >> i386-netbsd-russia.var
	echo 'Content-language: it' >> i386-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-russia.var
	echo >> i386-netbsd-russia.var
	echo 'URI: i386-netbsd-russia.html.nl' >> i386-netbsd-russia.var
	echo 'Content-language: nl' >> i386-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-russia.var
	echo >> i386-netbsd-russia.var
	echo 'URI: i386-netbsd-russia.html.po' >> i386-netbsd-russia.var
	echo 'Content-language: pl' >> i386-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-russia.var
	echo >> i386-netbsd-russia.var
	echo 'URI: i386-netbsd-russia.html.sl' >> i386-netbsd-russia.var
	echo 'Content-language: sl' >> i386-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-russia.var
	echo >> i386-netbsd-russia.var
	echo 'URI: i386-netbsd-russia.html.ru' >> i386-netbsd-russia.var
	echo 'Content-language: ru' >> i386-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-russia.var
	echo >> i386-netbsd-russia.var
i386-solaris-russia.html.bg: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-solaris-russia.html.bg -oe iso-8859-5 i386-solaris.adp
i386-solaris-russia.html.en: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-russia.html.en -oe iso-8859-1 i386-solaris.adp
i386-solaris-russia.html.fr: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-solaris-russia.html.fr -oe iso-8859-1 i386-solaris.adp
i386-solaris-russia.html.id: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-solaris-russia.html.id -oe iso-8859-1 i386-solaris.adp
i386-solaris-russia.html.it: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-solaris-russia.html.it -oe iso-8859-1 i386-solaris.adp
i386-solaris-russia.html.nl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-solaris-russia.html.nl -oe iso-8859-1 i386-solaris.adp
i386-solaris-russia.html.po: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-solaris-russia.html.po -oe iso-8859-2 i386-solaris.adp
i386-solaris-russia.html.sl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-solaris-russia.html.sl -oe iso-8859-2 i386-solaris.adp
i386-solaris-russia.html.ru: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-solaris-russia.html.ru -oe iso-8859-5 i386-solaris.adp
i386-solaris-russia.html: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-russia.html -oe ISO-8859-1 i386-solaris.adp

i386-solaris-russia.var: gen_makefile.conf
	echo > i386-solaris-russia.var
	echo 'URI: i386-solaris-russia.html.bg' >> i386-solaris-russia.var
	echo 'Content-language: bg' >> i386-solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-russia.var
	echo >> i386-solaris-russia.var
	echo 'URI: i386-solaris-russia.html.en' >> i386-solaris-russia.var
	echo 'Content-language: en' >> i386-solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-russia.var
	echo >> i386-solaris-russia.var
	echo 'URI: i386-solaris-russia.html.fr' >> i386-solaris-russia.var
	echo 'Content-language: fr' >> i386-solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-russia.var
	echo >> i386-solaris-russia.var
	echo 'URI: i386-solaris-russia.html.id' >> i386-solaris-russia.var
	echo 'Content-language: id' >> i386-solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-russia.var
	echo >> i386-solaris-russia.var
	echo 'URI: i386-solaris-russia.html.it' >> i386-solaris-russia.var
	echo 'Content-language: it' >> i386-solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-russia.var
	echo >> i386-solaris-russia.var
	echo 'URI: i386-solaris-russia.html.nl' >> i386-solaris-russia.var
	echo 'Content-language: nl' >> i386-solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-russia.var
	echo >> i386-solaris-russia.var
	echo 'URI: i386-solaris-russia.html.po' >> i386-solaris-russia.var
	echo 'Content-language: pl' >> i386-solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-russia.var
	echo >> i386-solaris-russia.var
	echo 'URI: i386-solaris-russia.html.sl' >> i386-solaris-russia.var
	echo 'Content-language: sl' >> i386-solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-russia.var
	echo >> i386-solaris-russia.var
	echo 'URI: i386-solaris-russia.html.ru' >> i386-solaris-russia.var
	echo 'Content-language: ru' >> i386-solaris-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-russia.var
	echo >> i386-solaris-russia.var
m68k-linux-russia.html.bg: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-linux-russia.html.bg -oe iso-8859-5 m68k-linux.adp
m68k-linux-russia.html.en: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-russia.html.en -oe iso-8859-1 m68k-linux.adp
m68k-linux-russia.html.fr: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-linux-russia.html.fr -oe iso-8859-1 m68k-linux.adp
m68k-linux-russia.html.id: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-linux-russia.html.id -oe iso-8859-1 m68k-linux.adp
m68k-linux-russia.html.it: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-linux-russia.html.it -oe iso-8859-1 m68k-linux.adp
m68k-linux-russia.html.nl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-linux-russia.html.nl -oe iso-8859-1 m68k-linux.adp
m68k-linux-russia.html.po: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-linux-russia.html.po -oe iso-8859-2 m68k-linux.adp
m68k-linux-russia.html.sl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-linux-russia.html.sl -oe iso-8859-2 m68k-linux.adp
m68k-linux-russia.html.ru: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-linux-russia.html.ru -oe iso-8859-5 m68k-linux.adp
m68k-linux-russia.html: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-russia.html -oe ISO-8859-1 m68k-linux.adp

m68k-linux-russia.var: gen_makefile.conf
	echo > m68k-linux-russia.var
	echo 'URI: m68k-linux-russia.html.bg' >> m68k-linux-russia.var
	echo 'Content-language: bg' >> m68k-linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-russia.var
	echo >> m68k-linux-russia.var
	echo 'URI: m68k-linux-russia.html.en' >> m68k-linux-russia.var
	echo 'Content-language: en' >> m68k-linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-russia.var
	echo >> m68k-linux-russia.var
	echo 'URI: m68k-linux-russia.html.fr' >> m68k-linux-russia.var
	echo 'Content-language: fr' >> m68k-linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-russia.var
	echo >> m68k-linux-russia.var
	echo 'URI: m68k-linux-russia.html.id' >> m68k-linux-russia.var
	echo 'Content-language: id' >> m68k-linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-russia.var
	echo >> m68k-linux-russia.var
	echo 'URI: m68k-linux-russia.html.it' >> m68k-linux-russia.var
	echo 'Content-language: it' >> m68k-linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-russia.var
	echo >> m68k-linux-russia.var
	echo 'URI: m68k-linux-russia.html.nl' >> m68k-linux-russia.var
	echo 'Content-language: nl' >> m68k-linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-russia.var
	echo >> m68k-linux-russia.var
	echo 'URI: m68k-linux-russia.html.po' >> m68k-linux-russia.var
	echo 'Content-language: pl' >> m68k-linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-russia.var
	echo >> m68k-linux-russia.var
	echo 'URI: m68k-linux-russia.html.sl' >> m68k-linux-russia.var
	echo 'Content-language: sl' >> m68k-linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-russia.var
	echo >> m68k-linux-russia.var
	echo 'URI: m68k-linux-russia.html.ru' >> m68k-linux-russia.var
	echo 'Content-language: ru' >> m68k-linux-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-russia.var
	echo >> m68k-linux-russia.var
down-russia.html.bg: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o down-russia.html.bg -oe iso-8859-5 down.adp
down-russia.html.en: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-russia.html.en -oe iso-8859-1 down.adp
down-russia.html.fr: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o down-russia.html.fr -oe iso-8859-1 down.adp
down-russia.html.id: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o down-russia.html.id -oe iso-8859-1 down.adp
down-russia.html.it: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o down-russia.html.it -oe iso-8859-1 down.adp
down-russia.html.nl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o down-russia.html.nl -oe iso-8859-1 down.adp
down-russia.html.po: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o down-russia.html.po -oe iso-8859-2 down.adp
down-russia.html.sl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o down-russia.html.sl -oe iso-8859-2 down.adp
down-russia.html.ru: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o down-russia.html.ru -oe iso-8859-5 down.adp
down-russia.html: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-russia.html -oe ISO-8859-1 down.adp

down-russia.var: gen_makefile.conf
	echo > down-russia.var
	echo 'URI: down-russia.html.bg' >> down-russia.var
	echo 'Content-language: bg' >> down-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-russia.var
	echo >> down-russia.var
	echo 'URI: down-russia.html.en' >> down-russia.var
	echo 'Content-language: en' >> down-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-russia.var
	echo >> down-russia.var
	echo 'URI: down-russia.html.fr' >> down-russia.var
	echo 'Content-language: fr' >> down-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-russia.var
	echo >> down-russia.var
	echo 'URI: down-russia.html.id' >> down-russia.var
	echo 'Content-language: id' >> down-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-russia.var
	echo >> down-russia.var
	echo 'URI: down-russia.html.it' >> down-russia.var
	echo 'Content-language: it' >> down-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-russia.var
	echo >> down-russia.var
	echo 'URI: down-russia.html.nl' >> down-russia.var
	echo 'Content-language: nl' >> down-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-russia.var
	echo >> down-russia.var
	echo 'URI: down-russia.html.po' >> down-russia.var
	echo 'Content-language: pl' >> down-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-russia.var
	echo >> down-russia.var
	echo 'URI: down-russia.html.sl' >> down-russia.var
	echo 'Content-language: sl' >> down-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-russia.var
	echo >> down-russia.var
	echo 'URI: down-russia.html.ru' >> down-russia.var
	echo 'Content-language: ru' >> down-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-russia.var
	echo >> down-russia.var
i386-go32v2-russia.html.bg: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-go32v2-russia.html.bg -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-russia.html.en: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-russia.html.en -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-russia.html.fr: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-go32v2-russia.html.fr -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-russia.html.id: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-go32v2-russia.html.id -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-russia.html.it: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-go32v2-russia.html.it -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-russia.html.nl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-go32v2-russia.html.nl -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-russia.html.po: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-go32v2-russia.html.po -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-russia.html.sl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-go32v2-russia.html.sl -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-russia.html.ru: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-go32v2-russia.html.ru -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-russia.html: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-russia.html -oe ISO-8859-1 i386-go32v2.adp

i386-go32v2-russia.var: gen_makefile.conf
	echo > i386-go32v2-russia.var
	echo 'URI: i386-go32v2-russia.html.bg' >> i386-go32v2-russia.var
	echo 'Content-language: bg' >> i386-go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-russia.var
	echo >> i386-go32v2-russia.var
	echo 'URI: i386-go32v2-russia.html.en' >> i386-go32v2-russia.var
	echo 'Content-language: en' >> i386-go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-russia.var
	echo >> i386-go32v2-russia.var
	echo 'URI: i386-go32v2-russia.html.fr' >> i386-go32v2-russia.var
	echo 'Content-language: fr' >> i386-go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-russia.var
	echo >> i386-go32v2-russia.var
	echo 'URI: i386-go32v2-russia.html.id' >> i386-go32v2-russia.var
	echo 'Content-language: id' >> i386-go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-russia.var
	echo >> i386-go32v2-russia.var
	echo 'URI: i386-go32v2-russia.html.it' >> i386-go32v2-russia.var
	echo 'Content-language: it' >> i386-go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-russia.var
	echo >> i386-go32v2-russia.var
	echo 'URI: i386-go32v2-russia.html.nl' >> i386-go32v2-russia.var
	echo 'Content-language: nl' >> i386-go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-russia.var
	echo >> i386-go32v2-russia.var
	echo 'URI: i386-go32v2-russia.html.po' >> i386-go32v2-russia.var
	echo 'Content-language: pl' >> i386-go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-russia.var
	echo >> i386-go32v2-russia.var
	echo 'URI: i386-go32v2-russia.html.sl' >> i386-go32v2-russia.var
	echo 'Content-language: sl' >> i386-go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-russia.var
	echo >> i386-go32v2-russia.var
	echo 'URI: i386-go32v2-russia.html.ru' >> i386-go32v2-russia.var
	echo 'Content-language: ru' >> i386-go32v2-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-russia.var
	echo >> i386-go32v2-russia.var
i386-qnx-russia.html.bg: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-qnx-russia.html.bg -oe iso-8859-5 i386-qnx.adp
i386-qnx-russia.html.en: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-russia.html.en -oe iso-8859-1 i386-qnx.adp
i386-qnx-russia.html.fr: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-qnx-russia.html.fr -oe iso-8859-1 i386-qnx.adp
i386-qnx-russia.html.id: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-qnx-russia.html.id -oe iso-8859-1 i386-qnx.adp
i386-qnx-russia.html.it: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-qnx-russia.html.it -oe iso-8859-1 i386-qnx.adp
i386-qnx-russia.html.nl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-qnx-russia.html.nl -oe iso-8859-1 i386-qnx.adp
i386-qnx-russia.html.po: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-qnx-russia.html.po -oe iso-8859-2 i386-qnx.adp
i386-qnx-russia.html.sl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-qnx-russia.html.sl -oe iso-8859-2 i386-qnx.adp
i386-qnx-russia.html.ru: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-qnx-russia.html.ru -oe iso-8859-5 i386-qnx.adp
i386-qnx-russia.html: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-russia.html -oe ISO-8859-1 i386-qnx.adp

i386-qnx-russia.var: gen_makefile.conf
	echo > i386-qnx-russia.var
	echo 'URI: i386-qnx-russia.html.bg' >> i386-qnx-russia.var
	echo 'Content-language: bg' >> i386-qnx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-russia.var
	echo >> i386-qnx-russia.var
	echo 'URI: i386-qnx-russia.html.en' >> i386-qnx-russia.var
	echo 'Content-language: en' >> i386-qnx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-russia.var
	echo >> i386-qnx-russia.var
	echo 'URI: i386-qnx-russia.html.fr' >> i386-qnx-russia.var
	echo 'Content-language: fr' >> i386-qnx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-russia.var
	echo >> i386-qnx-russia.var
	echo 'URI: i386-qnx-russia.html.id' >> i386-qnx-russia.var
	echo 'Content-language: id' >> i386-qnx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-russia.var
	echo >> i386-qnx-russia.var
	echo 'URI: i386-qnx-russia.html.it' >> i386-qnx-russia.var
	echo 'Content-language: it' >> i386-qnx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-russia.var
	echo >> i386-qnx-russia.var
	echo 'URI: i386-qnx-russia.html.nl' >> i386-qnx-russia.var
	echo 'Content-language: nl' >> i386-qnx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-russia.var
	echo >> i386-qnx-russia.var
	echo 'URI: i386-qnx-russia.html.po' >> i386-qnx-russia.var
	echo 'Content-language: pl' >> i386-qnx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-russia.var
	echo >> i386-qnx-russia.var
	echo 'URI: i386-qnx-russia.html.sl' >> i386-qnx-russia.var
	echo 'Content-language: sl' >> i386-qnx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-russia.var
	echo >> i386-qnx-russia.var
	echo 'URI: i386-qnx-russia.html.ru' >> i386-qnx-russia.var
	echo 'Content-language: ru' >> i386-qnx-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-russia.var
	echo >> i386-qnx-russia.var
m68k-amiga-russia.html.bg: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-amiga-russia.html.bg -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-russia.html.en: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-russia.html.en -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-russia.html.fr: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-amiga-russia.html.fr -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-russia.html.id: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-amiga-russia.html.id -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-russia.html.it: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-amiga-russia.html.it -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-russia.html.nl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-amiga-russia.html.nl -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-russia.html.po: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-amiga-russia.html.po -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-russia.html.sl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-amiga-russia.html.sl -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-russia.html.ru: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-amiga-russia.html.ru -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-russia.html: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-russia.html -oe ISO-8859-1 m68k-amiga.adp

m68k-amiga-russia.var: gen_makefile.conf
	echo > m68k-amiga-russia.var
	echo 'URI: m68k-amiga-russia.html.bg' >> m68k-amiga-russia.var
	echo 'Content-language: bg' >> m68k-amiga-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-russia.var
	echo >> m68k-amiga-russia.var
	echo 'URI: m68k-amiga-russia.html.en' >> m68k-amiga-russia.var
	echo 'Content-language: en' >> m68k-amiga-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-russia.var
	echo >> m68k-amiga-russia.var
	echo 'URI: m68k-amiga-russia.html.fr' >> m68k-amiga-russia.var
	echo 'Content-language: fr' >> m68k-amiga-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-russia.var
	echo >> m68k-amiga-russia.var
	echo 'URI: m68k-amiga-russia.html.id' >> m68k-amiga-russia.var
	echo 'Content-language: id' >> m68k-amiga-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-russia.var
	echo >> m68k-amiga-russia.var
	echo 'URI: m68k-amiga-russia.html.it' >> m68k-amiga-russia.var
	echo 'Content-language: it' >> m68k-amiga-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-russia.var
	echo >> m68k-amiga-russia.var
	echo 'URI: m68k-amiga-russia.html.nl' >> m68k-amiga-russia.var
	echo 'Content-language: nl' >> m68k-amiga-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-russia.var
	echo >> m68k-amiga-russia.var
	echo 'URI: m68k-amiga-russia.html.po' >> m68k-amiga-russia.var
	echo 'Content-language: pl' >> m68k-amiga-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-russia.var
	echo >> m68k-amiga-russia.var
	echo 'URI: m68k-amiga-russia.html.sl' >> m68k-amiga-russia.var
	echo 'Content-language: sl' >> m68k-amiga-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-russia.var
	echo >> m68k-amiga-russia.var
	echo 'URI: m68k-amiga-russia.html.ru' >> m68k-amiga-russia.var
	echo 'Content-language: ru' >> m68k-amiga-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-russia.var
	echo >> m68k-amiga-russia.var
m68k-netbsd-russia.html.bg: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-netbsd-russia.html.bg -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-russia.html.en: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-russia.html.en -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-russia.html.fr: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-netbsd-russia.html.fr -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-russia.html.id: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-netbsd-russia.html.id -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-russia.html.it: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-netbsd-russia.html.it -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-russia.html.nl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-netbsd-russia.html.nl -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-russia.html.po: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-netbsd-russia.html.po -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-russia.html.sl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-netbsd-russia.html.sl -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-russia.html.ru: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-netbsd-russia.html.ru -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-russia.html: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -p mirrorsuffix=russia -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-russia.html -oe ISO-8859-1 m68k-netbsd.adp

m68k-netbsd-russia.var: gen_makefile.conf
	echo > m68k-netbsd-russia.var
	echo 'URI: m68k-netbsd-russia.html.bg' >> m68k-netbsd-russia.var
	echo 'Content-language: bg' >> m68k-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-russia.var
	echo >> m68k-netbsd-russia.var
	echo 'URI: m68k-netbsd-russia.html.en' >> m68k-netbsd-russia.var
	echo 'Content-language: en' >> m68k-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-russia.var
	echo >> m68k-netbsd-russia.var
	echo 'URI: m68k-netbsd-russia.html.fr' >> m68k-netbsd-russia.var
	echo 'Content-language: fr' >> m68k-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-russia.var
	echo >> m68k-netbsd-russia.var
	echo 'URI: m68k-netbsd-russia.html.id' >> m68k-netbsd-russia.var
	echo 'Content-language: id' >> m68k-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-russia.var
	echo >> m68k-netbsd-russia.var
	echo 'URI: m68k-netbsd-russia.html.it' >> m68k-netbsd-russia.var
	echo 'Content-language: it' >> m68k-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-russia.var
	echo >> m68k-netbsd-russia.var
	echo 'URI: m68k-netbsd-russia.html.nl' >> m68k-netbsd-russia.var
	echo 'Content-language: nl' >> m68k-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-russia.var
	echo >> m68k-netbsd-russia.var
	echo 'URI: m68k-netbsd-russia.html.po' >> m68k-netbsd-russia.var
	echo 'Content-language: pl' >> m68k-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-russia.var
	echo >> m68k-netbsd-russia.var
	echo 'URI: m68k-netbsd-russia.html.sl' >> m68k-netbsd-russia.var
	echo 'Content-language: sl' >> m68k-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-russia.var
	echo >> m68k-netbsd-russia.var
	echo 'URI: m68k-netbsd-russia.html.ru' >> m68k-netbsd-russia.var
	echo 'Content-language: ru' >> m68k-netbsd-russia.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-russia.var
	echo >> m68k-netbsd-russia.var
docs-ftp.freepascal.org.html.bg: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o docs-ftp.freepascal.org.html.bg -oe iso-8859-5 docs.adp
docs-ftp.freepascal.org.html.en: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-ftp.freepascal.org.html.en -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.fr: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o docs-ftp.freepascal.org.html.fr -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.id: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o docs-ftp.freepascal.org.html.id -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.it: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o docs-ftp.freepascal.org.html.it -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.nl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o docs-ftp.freepascal.org.html.nl -oe iso-8859-1 docs.adp
docs-ftp.freepascal.org.html.po: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o docs-ftp.freepascal.org.html.po -oe iso-8859-2 docs.adp
docs-ftp.freepascal.org.html.sl: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o docs-ftp.freepascal.org.html.sl -oe iso-8859-2 docs.adp
docs-ftp.freepascal.org.html.ru: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o docs-ftp.freepascal.org.html.ru -oe iso-8859-5 docs.adp
docs-ftp.freepascal.org.html: docs.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs-ftp.freepascal.org.html -oe ISO-8859-1 docs.adp

docs-ftp.freepascal.org.var: gen_makefile.conf
	echo > docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.bg' >> docs-ftp.freepascal.org.var
	echo 'Content-language: bg' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.en' >> docs-ftp.freepascal.org.var
	echo 'Content-language: en' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.fr' >> docs-ftp.freepascal.org.var
	echo 'Content-language: fr' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.id' >> docs-ftp.freepascal.org.var
	echo 'Content-language: id' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.it' >> docs-ftp.freepascal.org.var
	echo 'Content-language: it' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.nl' >> docs-ftp.freepascal.org.var
	echo 'Content-language: nl' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.po' >> docs-ftp.freepascal.org.var
	echo 'Content-language: pl' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.sl' >> docs-ftp.freepascal.org.var
	echo 'Content-language: sl' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
	echo 'URI: docs-ftp.freepascal.org.html.ru' >> docs-ftp.freepascal.org.var
	echo 'Content-language: ru' >> docs-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> docs-ftp.freepascal.org.var
	echo >> docs-ftp.freepascal.org.var
i386-beos-ftp.freepascal.org.html.bg: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-beos-ftp.freepascal.org.html.bg -oe iso-8859-5 i386-beos.adp
i386-beos-ftp.freepascal.org.html.en: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-ftp.freepascal.org.html.en -oe iso-8859-1 i386-beos.adp
i386-beos-ftp.freepascal.org.html.fr: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-beos-ftp.freepascal.org.html.fr -oe iso-8859-1 i386-beos.adp
i386-beos-ftp.freepascal.org.html.id: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-beos-ftp.freepascal.org.html.id -oe iso-8859-1 i386-beos.adp
i386-beos-ftp.freepascal.org.html.it: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-beos-ftp.freepascal.org.html.it -oe iso-8859-1 i386-beos.adp
i386-beos-ftp.freepascal.org.html.nl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-beos-ftp.freepascal.org.html.nl -oe iso-8859-1 i386-beos.adp
i386-beos-ftp.freepascal.org.html.po: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-beos-ftp.freepascal.org.html.po -oe iso-8859-2 i386-beos.adp
i386-beos-ftp.freepascal.org.html.sl: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-beos-ftp.freepascal.org.html.sl -oe iso-8859-2 i386-beos.adp
i386-beos-ftp.freepascal.org.html.ru: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-beos-ftp.freepascal.org.html.ru -oe iso-8859-5 i386-beos.adp
i386-beos-ftp.freepascal.org.html: i386-beos.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos-ftp.freepascal.org.html -oe ISO-8859-1 i386-beos.adp

i386-beos-ftp.freepascal.org.var: gen_makefile.conf
	echo > i386-beos-ftp.freepascal.org.var
	echo 'URI: i386-beos-ftp.freepascal.org.html.bg' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-language: bg' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-ftp.freepascal.org.var
	echo >> i386-beos-ftp.freepascal.org.var
	echo 'URI: i386-beos-ftp.freepascal.org.html.en' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-language: en' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-ftp.freepascal.org.var
	echo >> i386-beos-ftp.freepascal.org.var
	echo 'URI: i386-beos-ftp.freepascal.org.html.fr' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-language: fr' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-ftp.freepascal.org.var
	echo >> i386-beos-ftp.freepascal.org.var
	echo 'URI: i386-beos-ftp.freepascal.org.html.id' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-language: id' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-ftp.freepascal.org.var
	echo >> i386-beos-ftp.freepascal.org.var
	echo 'URI: i386-beos-ftp.freepascal.org.html.it' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-language: it' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-ftp.freepascal.org.var
	echo >> i386-beos-ftp.freepascal.org.var
	echo 'URI: i386-beos-ftp.freepascal.org.html.nl' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-language: nl' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos-ftp.freepascal.org.var
	echo >> i386-beos-ftp.freepascal.org.var
	echo 'URI: i386-beos-ftp.freepascal.org.html.po' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-language: pl' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-ftp.freepascal.org.var
	echo >> i386-beos-ftp.freepascal.org.var
	echo 'URI: i386-beos-ftp.freepascal.org.html.sl' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-language: sl' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos-ftp.freepascal.org.var
	echo >> i386-beos-ftp.freepascal.org.var
	echo 'URI: i386-beos-ftp.freepascal.org.html.ru' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-language: ru' >> i386-beos-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos-ftp.freepascal.org.var
	echo >> i386-beos-ftp.freepascal.org.var
i386-emx-ftp.freepascal.org.html.bg: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-emx-ftp.freepascal.org.html.bg -oe iso-8859-5 i386-emx.adp
i386-emx-ftp.freepascal.org.html.en: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-ftp.freepascal.org.html.en -oe iso-8859-1 i386-emx.adp
i386-emx-ftp.freepascal.org.html.fr: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-emx-ftp.freepascal.org.html.fr -oe iso-8859-1 i386-emx.adp
i386-emx-ftp.freepascal.org.html.id: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-emx-ftp.freepascal.org.html.id -oe iso-8859-1 i386-emx.adp
i386-emx-ftp.freepascal.org.html.it: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-emx-ftp.freepascal.org.html.it -oe iso-8859-1 i386-emx.adp
i386-emx-ftp.freepascal.org.html.nl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-emx-ftp.freepascal.org.html.nl -oe iso-8859-1 i386-emx.adp
i386-emx-ftp.freepascal.org.html.po: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-emx-ftp.freepascal.org.html.po -oe iso-8859-2 i386-emx.adp
i386-emx-ftp.freepascal.org.html.sl: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-emx-ftp.freepascal.org.html.sl -oe iso-8859-2 i386-emx.adp
i386-emx-ftp.freepascal.org.html.ru: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-emx-ftp.freepascal.org.html.ru -oe iso-8859-5 i386-emx.adp
i386-emx-ftp.freepascal.org.html: i386-emx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx-ftp.freepascal.org.html -oe ISO-8859-1 i386-emx.adp

i386-emx-ftp.freepascal.org.var: gen_makefile.conf
	echo > i386-emx-ftp.freepascal.org.var
	echo 'URI: i386-emx-ftp.freepascal.org.html.bg' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-language: bg' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-ftp.freepascal.org.var
	echo >> i386-emx-ftp.freepascal.org.var
	echo 'URI: i386-emx-ftp.freepascal.org.html.en' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-language: en' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-ftp.freepascal.org.var
	echo >> i386-emx-ftp.freepascal.org.var
	echo 'URI: i386-emx-ftp.freepascal.org.html.fr' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-language: fr' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-ftp.freepascal.org.var
	echo >> i386-emx-ftp.freepascal.org.var
	echo 'URI: i386-emx-ftp.freepascal.org.html.id' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-language: id' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-ftp.freepascal.org.var
	echo >> i386-emx-ftp.freepascal.org.var
	echo 'URI: i386-emx-ftp.freepascal.org.html.it' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-language: it' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-ftp.freepascal.org.var
	echo >> i386-emx-ftp.freepascal.org.var
	echo 'URI: i386-emx-ftp.freepascal.org.html.nl' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-language: nl' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx-ftp.freepascal.org.var
	echo >> i386-emx-ftp.freepascal.org.var
	echo 'URI: i386-emx-ftp.freepascal.org.html.po' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-language: pl' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-ftp.freepascal.org.var
	echo >> i386-emx-ftp.freepascal.org.var
	echo 'URI: i386-emx-ftp.freepascal.org.html.sl' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-language: sl' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx-ftp.freepascal.org.var
	echo >> i386-emx-ftp.freepascal.org.var
	echo 'URI: i386-emx-ftp.freepascal.org.html.ru' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-language: ru' >> i386-emx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx-ftp.freepascal.org.var
	echo >> i386-emx-ftp.freepascal.org.var
i386-netbsd-ftp.freepascal.org.html.bg: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-netbsd-ftp.freepascal.org.html.bg -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-ftp.freepascal.org.html.en: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-ftp.freepascal.org.html.en -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-ftp.freepascal.org.html.fr: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-netbsd-ftp.freepascal.org.html.fr -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-ftp.freepascal.org.html.id: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-netbsd-ftp.freepascal.org.html.id -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-ftp.freepascal.org.html.it: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-netbsd-ftp.freepascal.org.html.it -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-ftp.freepascal.org.html.nl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-netbsd-ftp.freepascal.org.html.nl -oe iso-8859-1 i386-netbsd.adp
i386-netbsd-ftp.freepascal.org.html.po: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-netbsd-ftp.freepascal.org.html.po -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-ftp.freepascal.org.html.sl: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-netbsd-ftp.freepascal.org.html.sl -oe iso-8859-2 i386-netbsd.adp
i386-netbsd-ftp.freepascal.org.html.ru: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-netbsd-ftp.freepascal.org.html.ru -oe iso-8859-5 i386-netbsd.adp
i386-netbsd-ftp.freepascal.org.html: i386-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd-ftp.freepascal.org.html -oe ISO-8859-1 i386-netbsd.adp

i386-netbsd-ftp.freepascal.org.var: gen_makefile.conf
	echo > i386-netbsd-ftp.freepascal.org.var
	echo 'URI: i386-netbsd-ftp.freepascal.org.html.bg' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-language: bg' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-ftp.freepascal.org.var
	echo >> i386-netbsd-ftp.freepascal.org.var
	echo 'URI: i386-netbsd-ftp.freepascal.org.html.en' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-language: en' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-ftp.freepascal.org.var
	echo >> i386-netbsd-ftp.freepascal.org.var
	echo 'URI: i386-netbsd-ftp.freepascal.org.html.fr' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-language: fr' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-ftp.freepascal.org.var
	echo >> i386-netbsd-ftp.freepascal.org.var
	echo 'URI: i386-netbsd-ftp.freepascal.org.html.id' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-language: id' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-ftp.freepascal.org.var
	echo >> i386-netbsd-ftp.freepascal.org.var
	echo 'URI: i386-netbsd-ftp.freepascal.org.html.it' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-language: it' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-ftp.freepascal.org.var
	echo >> i386-netbsd-ftp.freepascal.org.var
	echo 'URI: i386-netbsd-ftp.freepascal.org.html.nl' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-language: nl' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd-ftp.freepascal.org.var
	echo >> i386-netbsd-ftp.freepascal.org.var
	echo 'URI: i386-netbsd-ftp.freepascal.org.html.po' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-language: pl' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-ftp.freepascal.org.var
	echo >> i386-netbsd-ftp.freepascal.org.var
	echo 'URI: i386-netbsd-ftp.freepascal.org.html.sl' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-language: sl' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd-ftp.freepascal.org.var
	echo >> i386-netbsd-ftp.freepascal.org.var
	echo 'URI: i386-netbsd-ftp.freepascal.org.html.ru' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-language: ru' >> i386-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd-ftp.freepascal.org.var
	echo >> i386-netbsd-ftp.freepascal.org.var
i386-solaris-ftp.freepascal.org.html.bg: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-solaris-ftp.freepascal.org.html.bg -oe iso-8859-5 i386-solaris.adp
i386-solaris-ftp.freepascal.org.html.en: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-ftp.freepascal.org.html.en -oe iso-8859-1 i386-solaris.adp
i386-solaris-ftp.freepascal.org.html.fr: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-solaris-ftp.freepascal.org.html.fr -oe iso-8859-1 i386-solaris.adp
i386-solaris-ftp.freepascal.org.html.id: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-solaris-ftp.freepascal.org.html.id -oe iso-8859-1 i386-solaris.adp
i386-solaris-ftp.freepascal.org.html.it: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-solaris-ftp.freepascal.org.html.it -oe iso-8859-1 i386-solaris.adp
i386-solaris-ftp.freepascal.org.html.nl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-solaris-ftp.freepascal.org.html.nl -oe iso-8859-1 i386-solaris.adp
i386-solaris-ftp.freepascal.org.html.po: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-solaris-ftp.freepascal.org.html.po -oe iso-8859-2 i386-solaris.adp
i386-solaris-ftp.freepascal.org.html.sl: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-solaris-ftp.freepascal.org.html.sl -oe iso-8859-2 i386-solaris.adp
i386-solaris-ftp.freepascal.org.html.ru: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-solaris-ftp.freepascal.org.html.ru -oe iso-8859-5 i386-solaris.adp
i386-solaris-ftp.freepascal.org.html: i386-solaris.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris-ftp.freepascal.org.html -oe ISO-8859-1 i386-solaris.adp

i386-solaris-ftp.freepascal.org.var: gen_makefile.conf
	echo > i386-solaris-ftp.freepascal.org.var
	echo 'URI: i386-solaris-ftp.freepascal.org.html.bg' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-language: bg' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-ftp.freepascal.org.var
	echo >> i386-solaris-ftp.freepascal.org.var
	echo 'URI: i386-solaris-ftp.freepascal.org.html.en' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-language: en' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-ftp.freepascal.org.var
	echo >> i386-solaris-ftp.freepascal.org.var
	echo 'URI: i386-solaris-ftp.freepascal.org.html.fr' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-language: fr' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-ftp.freepascal.org.var
	echo >> i386-solaris-ftp.freepascal.org.var
	echo 'URI: i386-solaris-ftp.freepascal.org.html.id' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-language: id' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-ftp.freepascal.org.var
	echo >> i386-solaris-ftp.freepascal.org.var
	echo 'URI: i386-solaris-ftp.freepascal.org.html.it' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-language: it' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-ftp.freepascal.org.var
	echo >> i386-solaris-ftp.freepascal.org.var
	echo 'URI: i386-solaris-ftp.freepascal.org.html.nl' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-language: nl' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris-ftp.freepascal.org.var
	echo >> i386-solaris-ftp.freepascal.org.var
	echo 'URI: i386-solaris-ftp.freepascal.org.html.po' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-language: pl' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-ftp.freepascal.org.var
	echo >> i386-solaris-ftp.freepascal.org.var
	echo 'URI: i386-solaris-ftp.freepascal.org.html.sl' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-language: sl' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris-ftp.freepascal.org.var
	echo >> i386-solaris-ftp.freepascal.org.var
	echo 'URI: i386-solaris-ftp.freepascal.org.html.ru' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-language: ru' >> i386-solaris-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris-ftp.freepascal.org.var
	echo >> i386-solaris-ftp.freepascal.org.var
m68k-linux-ftp.freepascal.org.html.bg: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-linux-ftp.freepascal.org.html.bg -oe iso-8859-5 m68k-linux.adp
m68k-linux-ftp.freepascal.org.html.en: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-ftp.freepascal.org.html.en -oe iso-8859-1 m68k-linux.adp
m68k-linux-ftp.freepascal.org.html.fr: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-linux-ftp.freepascal.org.html.fr -oe iso-8859-1 m68k-linux.adp
m68k-linux-ftp.freepascal.org.html.id: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-linux-ftp.freepascal.org.html.id -oe iso-8859-1 m68k-linux.adp
m68k-linux-ftp.freepascal.org.html.it: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-linux-ftp.freepascal.org.html.it -oe iso-8859-1 m68k-linux.adp
m68k-linux-ftp.freepascal.org.html.nl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-linux-ftp.freepascal.org.html.nl -oe iso-8859-1 m68k-linux.adp
m68k-linux-ftp.freepascal.org.html.po: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-linux-ftp.freepascal.org.html.po -oe iso-8859-2 m68k-linux.adp
m68k-linux-ftp.freepascal.org.html.sl: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-linux-ftp.freepascal.org.html.sl -oe iso-8859-2 m68k-linux.adp
m68k-linux-ftp.freepascal.org.html.ru: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-linux-ftp.freepascal.org.html.ru -oe iso-8859-5 m68k-linux.adp
m68k-linux-ftp.freepascal.org.html: m68k-linux.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux-ftp.freepascal.org.html -oe ISO-8859-1 m68k-linux.adp

m68k-linux-ftp.freepascal.org.var: gen_makefile.conf
	echo > m68k-linux-ftp.freepascal.org.var
	echo 'URI: m68k-linux-ftp.freepascal.org.html.bg' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-language: bg' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-ftp.freepascal.org.var
	echo >> m68k-linux-ftp.freepascal.org.var
	echo 'URI: m68k-linux-ftp.freepascal.org.html.en' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-language: en' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-ftp.freepascal.org.var
	echo >> m68k-linux-ftp.freepascal.org.var
	echo 'URI: m68k-linux-ftp.freepascal.org.html.fr' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-language: fr' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-ftp.freepascal.org.var
	echo >> m68k-linux-ftp.freepascal.org.var
	echo 'URI: m68k-linux-ftp.freepascal.org.html.id' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-language: id' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-ftp.freepascal.org.var
	echo >> m68k-linux-ftp.freepascal.org.var
	echo 'URI: m68k-linux-ftp.freepascal.org.html.it' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-language: it' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-ftp.freepascal.org.var
	echo >> m68k-linux-ftp.freepascal.org.var
	echo 'URI: m68k-linux-ftp.freepascal.org.html.nl' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-language: nl' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux-ftp.freepascal.org.var
	echo >> m68k-linux-ftp.freepascal.org.var
	echo 'URI: m68k-linux-ftp.freepascal.org.html.po' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-language: pl' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-ftp.freepascal.org.var
	echo >> m68k-linux-ftp.freepascal.org.var
	echo 'URI: m68k-linux-ftp.freepascal.org.html.sl' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-language: sl' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux-ftp.freepascal.org.var
	echo >> m68k-linux-ftp.freepascal.org.var
	echo 'URI: m68k-linux-ftp.freepascal.org.html.ru' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-language: ru' >> m68k-linux-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux-ftp.freepascal.org.var
	echo >> m68k-linux-ftp.freepascal.org.var
down-ftp.freepascal.org.html.bg: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o down-ftp.freepascal.org.html.bg -oe iso-8859-5 down.adp
down-ftp.freepascal.org.html.en: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-ftp.freepascal.org.html.en -oe iso-8859-1 down.adp
down-ftp.freepascal.org.html.fr: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o down-ftp.freepascal.org.html.fr -oe iso-8859-1 down.adp
down-ftp.freepascal.org.html.id: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o down-ftp.freepascal.org.html.id -oe iso-8859-1 down.adp
down-ftp.freepascal.org.html.it: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o down-ftp.freepascal.org.html.it -oe iso-8859-1 down.adp
down-ftp.freepascal.org.html.nl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o down-ftp.freepascal.org.html.nl -oe iso-8859-1 down.adp
down-ftp.freepascal.org.html.po: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o down-ftp.freepascal.org.html.po -oe iso-8859-2 down.adp
down-ftp.freepascal.org.html.sl: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o down-ftp.freepascal.org.html.sl -oe iso-8859-2 down.adp
down-ftp.freepascal.org.html.ru: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o down-ftp.freepascal.org.html.ru -oe iso-8859-5 down.adp
down-ftp.freepascal.org.html: down.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down-ftp.freepascal.org.html -oe ISO-8859-1 down.adp

down-ftp.freepascal.org.var: gen_makefile.conf
	echo > down-ftp.freepascal.org.var
	echo 'URI: down-ftp.freepascal.org.html.bg' >> down-ftp.freepascal.org.var
	echo 'Content-language: bg' >> down-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-ftp.freepascal.org.var
	echo >> down-ftp.freepascal.org.var
	echo 'URI: down-ftp.freepascal.org.html.en' >> down-ftp.freepascal.org.var
	echo 'Content-language: en' >> down-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-ftp.freepascal.org.var
	echo >> down-ftp.freepascal.org.var
	echo 'URI: down-ftp.freepascal.org.html.fr' >> down-ftp.freepascal.org.var
	echo 'Content-language: fr' >> down-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-ftp.freepascal.org.var
	echo >> down-ftp.freepascal.org.var
	echo 'URI: down-ftp.freepascal.org.html.id' >> down-ftp.freepascal.org.var
	echo 'Content-language: id' >> down-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-ftp.freepascal.org.var
	echo >> down-ftp.freepascal.org.var
	echo 'URI: down-ftp.freepascal.org.html.it' >> down-ftp.freepascal.org.var
	echo 'Content-language: it' >> down-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-ftp.freepascal.org.var
	echo >> down-ftp.freepascal.org.var
	echo 'URI: down-ftp.freepascal.org.html.nl' >> down-ftp.freepascal.org.var
	echo 'Content-language: nl' >> down-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down-ftp.freepascal.org.var
	echo >> down-ftp.freepascal.org.var
	echo 'URI: down-ftp.freepascal.org.html.po' >> down-ftp.freepascal.org.var
	echo 'Content-language: pl' >> down-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-ftp.freepascal.org.var
	echo >> down-ftp.freepascal.org.var
	echo 'URI: down-ftp.freepascal.org.html.sl' >> down-ftp.freepascal.org.var
	echo 'Content-language: sl' >> down-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down-ftp.freepascal.org.var
	echo >> down-ftp.freepascal.org.var
	echo 'URI: down-ftp.freepascal.org.html.ru' >> down-ftp.freepascal.org.var
	echo 'Content-language: ru' >> down-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down-ftp.freepascal.org.var
	echo >> down-ftp.freepascal.org.var
i386-go32v2-ftp.freepascal.org.html.bg: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-go32v2-ftp.freepascal.org.html.bg -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-ftp.freepascal.org.html.en: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-ftp.freepascal.org.html.en -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-ftp.freepascal.org.html.fr: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-go32v2-ftp.freepascal.org.html.fr -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-ftp.freepascal.org.html.id: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-go32v2-ftp.freepascal.org.html.id -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-ftp.freepascal.org.html.it: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-go32v2-ftp.freepascal.org.html.it -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-ftp.freepascal.org.html.nl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-go32v2-ftp.freepascal.org.html.nl -oe iso-8859-1 i386-go32v2.adp
i386-go32v2-ftp.freepascal.org.html.po: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-go32v2-ftp.freepascal.org.html.po -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-ftp.freepascal.org.html.sl: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-go32v2-ftp.freepascal.org.html.sl -oe iso-8859-2 i386-go32v2.adp
i386-go32v2-ftp.freepascal.org.html.ru: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-go32v2-ftp.freepascal.org.html.ru -oe iso-8859-5 i386-go32v2.adp
i386-go32v2-ftp.freepascal.org.html: i386-go32v2.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2-ftp.freepascal.org.html -oe ISO-8859-1 i386-go32v2.adp

i386-go32v2-ftp.freepascal.org.var: gen_makefile.conf
	echo > i386-go32v2-ftp.freepascal.org.var
	echo 'URI: i386-go32v2-ftp.freepascal.org.html.bg' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-language: bg' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-ftp.freepascal.org.var
	echo >> i386-go32v2-ftp.freepascal.org.var
	echo 'URI: i386-go32v2-ftp.freepascal.org.html.en' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-language: en' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-ftp.freepascal.org.var
	echo >> i386-go32v2-ftp.freepascal.org.var
	echo 'URI: i386-go32v2-ftp.freepascal.org.html.fr' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-language: fr' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-ftp.freepascal.org.var
	echo >> i386-go32v2-ftp.freepascal.org.var
	echo 'URI: i386-go32v2-ftp.freepascal.org.html.id' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-language: id' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-ftp.freepascal.org.var
	echo >> i386-go32v2-ftp.freepascal.org.var
	echo 'URI: i386-go32v2-ftp.freepascal.org.html.it' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-language: it' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-ftp.freepascal.org.var
	echo >> i386-go32v2-ftp.freepascal.org.var
	echo 'URI: i386-go32v2-ftp.freepascal.org.html.nl' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-language: nl' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2-ftp.freepascal.org.var
	echo >> i386-go32v2-ftp.freepascal.org.var
	echo 'URI: i386-go32v2-ftp.freepascal.org.html.po' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-language: pl' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-ftp.freepascal.org.var
	echo >> i386-go32v2-ftp.freepascal.org.var
	echo 'URI: i386-go32v2-ftp.freepascal.org.html.sl' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-language: sl' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2-ftp.freepascal.org.var
	echo >> i386-go32v2-ftp.freepascal.org.var
	echo 'URI: i386-go32v2-ftp.freepascal.org.html.ru' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-language: ru' >> i386-go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2-ftp.freepascal.org.var
	echo >> i386-go32v2-ftp.freepascal.org.var
i386-qnx-ftp.freepascal.org.html.bg: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-qnx-ftp.freepascal.org.html.bg -oe iso-8859-5 i386-qnx.adp
i386-qnx-ftp.freepascal.org.html.en: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-ftp.freepascal.org.html.en -oe iso-8859-1 i386-qnx.adp
i386-qnx-ftp.freepascal.org.html.fr: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-qnx-ftp.freepascal.org.html.fr -oe iso-8859-1 i386-qnx.adp
i386-qnx-ftp.freepascal.org.html.id: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-qnx-ftp.freepascal.org.html.id -oe iso-8859-1 i386-qnx.adp
i386-qnx-ftp.freepascal.org.html.it: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-qnx-ftp.freepascal.org.html.it -oe iso-8859-1 i386-qnx.adp
i386-qnx-ftp.freepascal.org.html.nl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-qnx-ftp.freepascal.org.html.nl -oe iso-8859-1 i386-qnx.adp
i386-qnx-ftp.freepascal.org.html.po: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-qnx-ftp.freepascal.org.html.po -oe iso-8859-2 i386-qnx.adp
i386-qnx-ftp.freepascal.org.html.sl: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-qnx-ftp.freepascal.org.html.sl -oe iso-8859-2 i386-qnx.adp
i386-qnx-ftp.freepascal.org.html.ru: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-qnx-ftp.freepascal.org.html.ru -oe iso-8859-5 i386-qnx.adp
i386-qnx-ftp.freepascal.org.html: i386-qnx.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx-ftp.freepascal.org.html -oe ISO-8859-1 i386-qnx.adp

i386-qnx-ftp.freepascal.org.var: gen_makefile.conf
	echo > i386-qnx-ftp.freepascal.org.var
	echo 'URI: i386-qnx-ftp.freepascal.org.html.bg' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-language: bg' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-ftp.freepascal.org.var
	echo >> i386-qnx-ftp.freepascal.org.var
	echo 'URI: i386-qnx-ftp.freepascal.org.html.en' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-language: en' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-ftp.freepascal.org.var
	echo >> i386-qnx-ftp.freepascal.org.var
	echo 'URI: i386-qnx-ftp.freepascal.org.html.fr' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-language: fr' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-ftp.freepascal.org.var
	echo >> i386-qnx-ftp.freepascal.org.var
	echo 'URI: i386-qnx-ftp.freepascal.org.html.id' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-language: id' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-ftp.freepascal.org.var
	echo >> i386-qnx-ftp.freepascal.org.var
	echo 'URI: i386-qnx-ftp.freepascal.org.html.it' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-language: it' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-ftp.freepascal.org.var
	echo >> i386-qnx-ftp.freepascal.org.var
	echo 'URI: i386-qnx-ftp.freepascal.org.html.nl' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-language: nl' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx-ftp.freepascal.org.var
	echo >> i386-qnx-ftp.freepascal.org.var
	echo 'URI: i386-qnx-ftp.freepascal.org.html.po' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-language: pl' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-ftp.freepascal.org.var
	echo >> i386-qnx-ftp.freepascal.org.var
	echo 'URI: i386-qnx-ftp.freepascal.org.html.sl' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-language: sl' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx-ftp.freepascal.org.var
	echo >> i386-qnx-ftp.freepascal.org.var
	echo 'URI: i386-qnx-ftp.freepascal.org.html.ru' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-language: ru' >> i386-qnx-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx-ftp.freepascal.org.var
	echo >> i386-qnx-ftp.freepascal.org.var
m68k-amiga-ftp.freepascal.org.html.bg: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-amiga-ftp.freepascal.org.html.bg -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-ftp.freepascal.org.html.en: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-ftp.freepascal.org.html.en -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-ftp.freepascal.org.html.fr: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-amiga-ftp.freepascal.org.html.fr -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-ftp.freepascal.org.html.id: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-amiga-ftp.freepascal.org.html.id -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-ftp.freepascal.org.html.it: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-amiga-ftp.freepascal.org.html.it -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-ftp.freepascal.org.html.nl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-amiga-ftp.freepascal.org.html.nl -oe iso-8859-1 m68k-amiga.adp
m68k-amiga-ftp.freepascal.org.html.po: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-amiga-ftp.freepascal.org.html.po -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-ftp.freepascal.org.html.sl: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-amiga-ftp.freepascal.org.html.sl -oe iso-8859-2 m68k-amiga.adp
m68k-amiga-ftp.freepascal.org.html.ru: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-amiga-ftp.freepascal.org.html.ru -oe iso-8859-5 m68k-amiga.adp
m68k-amiga-ftp.freepascal.org.html: m68k-amiga.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga-ftp.freepascal.org.html -oe ISO-8859-1 m68k-amiga.adp

m68k-amiga-ftp.freepascal.org.var: gen_makefile.conf
	echo > m68k-amiga-ftp.freepascal.org.var
	echo 'URI: m68k-amiga-ftp.freepascal.org.html.bg' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-language: bg' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-ftp.freepascal.org.var
	echo >> m68k-amiga-ftp.freepascal.org.var
	echo 'URI: m68k-amiga-ftp.freepascal.org.html.en' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-language: en' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-ftp.freepascal.org.var
	echo >> m68k-amiga-ftp.freepascal.org.var
	echo 'URI: m68k-amiga-ftp.freepascal.org.html.fr' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-language: fr' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-ftp.freepascal.org.var
	echo >> m68k-amiga-ftp.freepascal.org.var
	echo 'URI: m68k-amiga-ftp.freepascal.org.html.id' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-language: id' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-ftp.freepascal.org.var
	echo >> m68k-amiga-ftp.freepascal.org.var
	echo 'URI: m68k-amiga-ftp.freepascal.org.html.it' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-language: it' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-ftp.freepascal.org.var
	echo >> m68k-amiga-ftp.freepascal.org.var
	echo 'URI: m68k-amiga-ftp.freepascal.org.html.nl' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-language: nl' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga-ftp.freepascal.org.var
	echo >> m68k-amiga-ftp.freepascal.org.var
	echo 'URI: m68k-amiga-ftp.freepascal.org.html.po' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-language: pl' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-ftp.freepascal.org.var
	echo >> m68k-amiga-ftp.freepascal.org.var
	echo 'URI: m68k-amiga-ftp.freepascal.org.html.sl' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-language: sl' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga-ftp.freepascal.org.var
	echo >> m68k-amiga-ftp.freepascal.org.var
	echo 'URI: m68k-amiga-ftp.freepascal.org.html.ru' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-language: ru' >> m68k-amiga-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga-ftp.freepascal.org.var
	echo >> m68k-amiga-ftp.freepascal.org.var
m68k-netbsd-ftp.freepascal.org.html.bg: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-netbsd-ftp.freepascal.org.html.bg -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-ftp.freepascal.org.html.en: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-ftp.freepascal.org.html.en -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-ftp.freepascal.org.html.fr: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-netbsd-ftp.freepascal.org.html.fr -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-ftp.freepascal.org.html.id: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-netbsd-ftp.freepascal.org.html.id -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-ftp.freepascal.org.html.it: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-netbsd-ftp.freepascal.org.html.it -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-ftp.freepascal.org.html.nl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-netbsd-ftp.freepascal.org.html.nl -oe iso-8859-1 m68k-netbsd.adp
m68k-netbsd-ftp.freepascal.org.html.po: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-netbsd-ftp.freepascal.org.html.po -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-ftp.freepascal.org.html.sl: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-netbsd-ftp.freepascal.org.html.sl -oe iso-8859-2 m68k-netbsd.adp
m68k-netbsd-ftp.freepascal.org.html.ru: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-netbsd-ftp.freepascal.org.html.ru -oe iso-8859-5 m68k-netbsd.adp
m68k-netbsd-ftp.freepascal.org.html: m68k-netbsd.adp ../../default-master.adp ../../site-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION_EN) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -p mirrorsuffix=ftp.freepascal.org -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd-ftp.freepascal.org.html -oe ISO-8859-1 m68k-netbsd.adp

m68k-netbsd-ftp.freepascal.org.var: gen_makefile.conf
	echo > m68k-netbsd-ftp.freepascal.org.var
	echo 'URI: m68k-netbsd-ftp.freepascal.org.html.bg' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-language: bg' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-ftp.freepascal.org.var
	echo >> m68k-netbsd-ftp.freepascal.org.var
	echo 'URI: m68k-netbsd-ftp.freepascal.org.html.en' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-language: en' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-ftp.freepascal.org.var
	echo >> m68k-netbsd-ftp.freepascal.org.var
	echo 'URI: m68k-netbsd-ftp.freepascal.org.html.fr' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-language: fr' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-ftp.freepascal.org.var
	echo >> m68k-netbsd-ftp.freepascal.org.var
	echo 'URI: m68k-netbsd-ftp.freepascal.org.html.id' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-language: id' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-ftp.freepascal.org.var
	echo >> m68k-netbsd-ftp.freepascal.org.var
	echo 'URI: m68k-netbsd-ftp.freepascal.org.html.it' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-language: it' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-ftp.freepascal.org.var
	echo >> m68k-netbsd-ftp.freepascal.org.var
	echo 'URI: m68k-netbsd-ftp.freepascal.org.html.nl' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-language: nl' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd-ftp.freepascal.org.var
	echo >> m68k-netbsd-ftp.freepascal.org.var
	echo 'URI: m68k-netbsd-ftp.freepascal.org.html.po' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-language: pl' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-ftp.freepascal.org.var
	echo >> m68k-netbsd-ftp.freepascal.org.var
	echo 'URI: m68k-netbsd-ftp.freepascal.org.html.sl' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-language: sl' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd-ftp.freepascal.org.var
	echo >> m68k-netbsd-ftp.freepascal.org.var
	echo 'URI: m68k-netbsd-ftp.freepascal.org.html.ru' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-language: ru' >> m68k-netbsd-ftp.freepascal.org.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd-ftp.freepascal.org.var
	echo >> m68k-netbsd-ftp.freepascal.org.var

docs.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o docs.html.bg -oe iso-8859-5 ../../templatemirror.adp
docs.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs.html.en -oe iso-8859-1 ../../templatemirror.adp
docs.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o docs.html.fr -oe iso-8859-1 ../../templatemirror.adp
docs.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o docs.html.id -oe iso-8859-1 ../../templatemirror.adp
docs.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o docs.html.it -oe iso-8859-1 ../../templatemirror.adp
docs.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o docs.html.nl -oe iso-8859-1 ../../templatemirror.adp
docs.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o docs.html.po -oe iso-8859-2 ../../templatemirror.adp
docs.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o docs.html.sl -oe iso-8859-2 ../../templatemirror.adp
docs.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o docs.html.ru -oe iso-8859-5 ../../templatemirror.adp
docs.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=docs -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o docs.html -oe ISO-8859-1 ../../templatemirror.adp
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

i386-beos.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-beos.html.bg -oe iso-8859-5 ../../templatemirror.adp
i386-beos.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos.html.en -oe iso-8859-1 ../../templatemirror.adp
i386-beos.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-beos.html.fr -oe iso-8859-1 ../../templatemirror.adp
i386-beos.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-beos.html.id -oe iso-8859-1 ../../templatemirror.adp
i386-beos.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-beos.html.it -oe iso-8859-1 ../../templatemirror.adp
i386-beos.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-beos.html.nl -oe iso-8859-1 ../../templatemirror.adp
i386-beos.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-beos.html.po -oe iso-8859-2 ../../templatemirror.adp
i386-beos.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-beos.html.sl -oe iso-8859-2 ../../templatemirror.adp
i386-beos.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-beos.html.ru -oe iso-8859-5 ../../templatemirror.adp
i386-beos.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-beos -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-beos.html -oe ISO-8859-1 ../../templatemirror.adp
i386-beos.var: gen_makefile.conf
	echo > i386-beos.var
	echo 'URI: i386-beos.html.bg' >> i386-beos.var
	echo 'Content-language: bg' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.en' >> i386-beos.var
	echo 'Content-language: en' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.fr' >> i386-beos.var
	echo 'Content-language: fr' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.id' >> i386-beos.var
	echo 'Content-language: id' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.it' >> i386-beos.var
	echo 'Content-language: it' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.nl' >> i386-beos.var
	echo 'Content-language: nl' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.po' >> i386-beos.var
	echo 'Content-language: pl' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.sl' >> i386-beos.var
	echo 'Content-language: sl' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-beos.var
	echo >> i386-beos.var
	echo 'URI: i386-beos.html.ru' >> i386-beos.var
	echo 'Content-language: ru' >> i386-beos.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-beos.var
	echo >> i386-beos.var

i386-emx.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-emx.html.bg -oe iso-8859-5 ../../templatemirror.adp
i386-emx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx.html.en -oe iso-8859-1 ../../templatemirror.adp
i386-emx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-emx.html.fr -oe iso-8859-1 ../../templatemirror.adp
i386-emx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-emx.html.id -oe iso-8859-1 ../../templatemirror.adp
i386-emx.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-emx.html.it -oe iso-8859-1 ../../templatemirror.adp
i386-emx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-emx.html.nl -oe iso-8859-1 ../../templatemirror.adp
i386-emx.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-emx.html.po -oe iso-8859-2 ../../templatemirror.adp
i386-emx.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-emx.html.sl -oe iso-8859-2 ../../templatemirror.adp
i386-emx.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-emx.html.ru -oe iso-8859-5 ../../templatemirror.adp
i386-emx.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-emx -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-emx.html -oe ISO-8859-1 ../../templatemirror.adp
i386-emx.var: gen_makefile.conf
	echo > i386-emx.var
	echo 'URI: i386-emx.html.bg' >> i386-emx.var
	echo 'Content-language: bg' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.en' >> i386-emx.var
	echo 'Content-language: en' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.fr' >> i386-emx.var
	echo 'Content-language: fr' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.id' >> i386-emx.var
	echo 'Content-language: id' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.it' >> i386-emx.var
	echo 'Content-language: it' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.nl' >> i386-emx.var
	echo 'Content-language: nl' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.po' >> i386-emx.var
	echo 'Content-language: pl' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.sl' >> i386-emx.var
	echo 'Content-language: sl' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-emx.var
	echo >> i386-emx.var
	echo 'URI: i386-emx.html.ru' >> i386-emx.var
	echo 'Content-language: ru' >> i386-emx.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-emx.var
	echo >> i386-emx.var

i386-netbsd.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-netbsd.html.bg -oe iso-8859-5 ../../templatemirror.adp
i386-netbsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd.html.en -oe iso-8859-1 ../../templatemirror.adp
i386-netbsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-netbsd.html.fr -oe iso-8859-1 ../../templatemirror.adp
i386-netbsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-netbsd.html.id -oe iso-8859-1 ../../templatemirror.adp
i386-netbsd.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-netbsd.html.it -oe iso-8859-1 ../../templatemirror.adp
i386-netbsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-netbsd.html.nl -oe iso-8859-1 ../../templatemirror.adp
i386-netbsd.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-netbsd.html.po -oe iso-8859-2 ../../templatemirror.adp
i386-netbsd.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-netbsd.html.sl -oe iso-8859-2 ../../templatemirror.adp
i386-netbsd.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-netbsd.html.ru -oe iso-8859-5 ../../templatemirror.adp
i386-netbsd.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-netbsd -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-netbsd.html -oe ISO-8859-1 ../../templatemirror.adp
i386-netbsd.var: gen_makefile.conf
	echo > i386-netbsd.var
	echo 'URI: i386-netbsd.html.bg' >> i386-netbsd.var
	echo 'Content-language: bg' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.en' >> i386-netbsd.var
	echo 'Content-language: en' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.fr' >> i386-netbsd.var
	echo 'Content-language: fr' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.id' >> i386-netbsd.var
	echo 'Content-language: id' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.it' >> i386-netbsd.var
	echo 'Content-language: it' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.nl' >> i386-netbsd.var
	echo 'Content-language: nl' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.po' >> i386-netbsd.var
	echo 'Content-language: pl' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.sl' >> i386-netbsd.var
	echo 'Content-language: sl' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-netbsd.var
	echo >> i386-netbsd.var
	echo 'URI: i386-netbsd.html.ru' >> i386-netbsd.var
	echo 'Content-language: ru' >> i386-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-netbsd.var
	echo >> i386-netbsd.var

i386-solaris.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-solaris.html.bg -oe iso-8859-5 ../../templatemirror.adp
i386-solaris.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris.html.en -oe iso-8859-1 ../../templatemirror.adp
i386-solaris.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-solaris.html.fr -oe iso-8859-1 ../../templatemirror.adp
i386-solaris.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-solaris.html.id -oe iso-8859-1 ../../templatemirror.adp
i386-solaris.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-solaris.html.it -oe iso-8859-1 ../../templatemirror.adp
i386-solaris.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-solaris.html.nl -oe iso-8859-1 ../../templatemirror.adp
i386-solaris.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-solaris.html.po -oe iso-8859-2 ../../templatemirror.adp
i386-solaris.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-solaris.html.sl -oe iso-8859-2 ../../templatemirror.adp
i386-solaris.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-solaris.html.ru -oe iso-8859-5 ../../templatemirror.adp
i386-solaris.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-solaris -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-solaris.html -oe ISO-8859-1 ../../templatemirror.adp
i386-solaris.var: gen_makefile.conf
	echo > i386-solaris.var
	echo 'URI: i386-solaris.html.bg' >> i386-solaris.var
	echo 'Content-language: bg' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.en' >> i386-solaris.var
	echo 'Content-language: en' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.fr' >> i386-solaris.var
	echo 'Content-language: fr' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.id' >> i386-solaris.var
	echo 'Content-language: id' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.it' >> i386-solaris.var
	echo 'Content-language: it' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.nl' >> i386-solaris.var
	echo 'Content-language: nl' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.po' >> i386-solaris.var
	echo 'Content-language: pl' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.sl' >> i386-solaris.var
	echo 'Content-language: sl' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-solaris.var
	echo >> i386-solaris.var
	echo 'URI: i386-solaris.html.ru' >> i386-solaris.var
	echo 'Content-language: ru' >> i386-solaris.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-solaris.var
	echo >> i386-solaris.var

m68k-linux.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-linux.html.bg -oe iso-8859-5 ../../templatemirror.adp
m68k-linux.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux.html.en -oe iso-8859-1 ../../templatemirror.adp
m68k-linux.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-linux.html.fr -oe iso-8859-1 ../../templatemirror.adp
m68k-linux.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-linux.html.id -oe iso-8859-1 ../../templatemirror.adp
m68k-linux.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-linux.html.it -oe iso-8859-1 ../../templatemirror.adp
m68k-linux.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-linux.html.nl -oe iso-8859-1 ../../templatemirror.adp
m68k-linux.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-linux.html.po -oe iso-8859-2 ../../templatemirror.adp
m68k-linux.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-linux.html.sl -oe iso-8859-2 ../../templatemirror.adp
m68k-linux.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-linux.html.ru -oe iso-8859-5 ../../templatemirror.adp
m68k-linux.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-linux -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-linux.html -oe ISO-8859-1 ../../templatemirror.adp
m68k-linux.var: gen_makefile.conf
	echo > m68k-linux.var
	echo 'URI: m68k-linux.html.bg' >> m68k-linux.var
	echo 'Content-language: bg' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.en' >> m68k-linux.var
	echo 'Content-language: en' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.fr' >> m68k-linux.var
	echo 'Content-language: fr' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.id' >> m68k-linux.var
	echo 'Content-language: id' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.it' >> m68k-linux.var
	echo 'Content-language: it' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.nl' >> m68k-linux.var
	echo 'Content-language: nl' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.po' >> m68k-linux.var
	echo 'Content-language: pl' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.sl' >> m68k-linux.var
	echo 'Content-language: sl' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-linux.var
	echo >> m68k-linux.var
	echo 'URI: m68k-linux.html.ru' >> m68k-linux.var
	echo 'Content-language: ru' >> m68k-linux.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-linux.var
	echo >> m68k-linux.var

down.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o down.html.bg -oe iso-8859-5 ../../templatemirror.adp
down.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down.html.en -oe iso-8859-1 ../../templatemirror.adp
down.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o down.html.fr -oe iso-8859-1 ../../templatemirror.adp
down.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o down.html.id -oe iso-8859-1 ../../templatemirror.adp
down.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o down.html.it -oe iso-8859-1 ../../templatemirror.adp
down.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o down.html.nl -oe iso-8859-1 ../../templatemirror.adp
down.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o down.html.po -oe iso-8859-2 ../../templatemirror.adp
down.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o down.html.sl -oe iso-8859-2 ../../templatemirror.adp
down.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o down.html.ru -oe iso-8859-5 ../../templatemirror.adp
down.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=down -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o down.html -oe ISO-8859-1 ../../templatemirror.adp
down.var: gen_makefile.conf
	echo > down.var
	echo 'URI: down.html.bg' >> down.var
	echo 'Content-language: bg' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down.var
	echo >> down.var
	echo 'URI: down.html.en' >> down.var
	echo 'Content-language: en' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down.var
	echo >> down.var
	echo 'URI: down.html.fr' >> down.var
	echo 'Content-language: fr' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down.var
	echo >> down.var
	echo 'URI: down.html.id' >> down.var
	echo 'Content-language: id' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down.var
	echo >> down.var
	echo 'URI: down.html.it' >> down.var
	echo 'Content-language: it' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down.var
	echo >> down.var
	echo 'URI: down.html.nl' >> down.var
	echo 'Content-language: nl' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> down.var
	echo >> down.var
	echo 'URI: down.html.po' >> down.var
	echo 'Content-language: pl' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down.var
	echo >> down.var
	echo 'URI: down.html.sl' >> down.var
	echo 'Content-language: sl' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> down.var
	echo >> down.var
	echo 'URI: down.html.ru' >> down.var
	echo 'Content-language: ru' >> down.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> down.var
	echo >> down.var

i386-go32v2.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-go32v2.html.bg -oe iso-8859-5 ../../templatemirror.adp
i386-go32v2.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2.html.en -oe iso-8859-1 ../../templatemirror.adp
i386-go32v2.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-go32v2.html.fr -oe iso-8859-1 ../../templatemirror.adp
i386-go32v2.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-go32v2.html.id -oe iso-8859-1 ../../templatemirror.adp
i386-go32v2.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-go32v2.html.it -oe iso-8859-1 ../../templatemirror.adp
i386-go32v2.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-go32v2.html.nl -oe iso-8859-1 ../../templatemirror.adp
i386-go32v2.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-go32v2.html.po -oe iso-8859-2 ../../templatemirror.adp
i386-go32v2.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-go32v2.html.sl -oe iso-8859-2 ../../templatemirror.adp
i386-go32v2.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-go32v2.html.ru -oe iso-8859-5 ../../templatemirror.adp
i386-go32v2.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-go32v2 -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-go32v2.html -oe ISO-8859-1 ../../templatemirror.adp
i386-go32v2.var: gen_makefile.conf
	echo > i386-go32v2.var
	echo 'URI: i386-go32v2.html.bg' >> i386-go32v2.var
	echo 'Content-language: bg' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.en' >> i386-go32v2.var
	echo 'Content-language: en' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.fr' >> i386-go32v2.var
	echo 'Content-language: fr' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.id' >> i386-go32v2.var
	echo 'Content-language: id' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.it' >> i386-go32v2.var
	echo 'Content-language: it' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.nl' >> i386-go32v2.var
	echo 'Content-language: nl' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.po' >> i386-go32v2.var
	echo 'Content-language: pl' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.sl' >> i386-go32v2.var
	echo 'Content-language: sl' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-go32v2.var
	echo >> i386-go32v2.var
	echo 'URI: i386-go32v2.html.ru' >> i386-go32v2.var
	echo 'Content-language: ru' >> i386-go32v2.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-go32v2.var
	echo >> i386-go32v2.var

i386-qnx.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o i386-qnx.html.bg -oe iso-8859-5 ../../templatemirror.adp
i386-qnx.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx.html.en -oe iso-8859-1 ../../templatemirror.adp
i386-qnx.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o i386-qnx.html.fr -oe iso-8859-1 ../../templatemirror.adp
i386-qnx.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o i386-qnx.html.id -oe iso-8859-1 ../../templatemirror.adp
i386-qnx.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o i386-qnx.html.it -oe iso-8859-1 ../../templatemirror.adp
i386-qnx.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o i386-qnx.html.nl -oe iso-8859-1 ../../templatemirror.adp
i386-qnx.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o i386-qnx.html.po -oe iso-8859-2 ../../templatemirror.adp
i386-qnx.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o i386-qnx.html.sl -oe iso-8859-2 ../../templatemirror.adp
i386-qnx.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o i386-qnx.html.ru -oe iso-8859-5 ../../templatemirror.adp
i386-qnx.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=i386-qnx -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o i386-qnx.html -oe ISO-8859-1 ../../templatemirror.adp
i386-qnx.var: gen_makefile.conf
	echo > i386-qnx.var
	echo 'URI: i386-qnx.html.bg' >> i386-qnx.var
	echo 'Content-language: bg' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.en' >> i386-qnx.var
	echo 'Content-language: en' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.fr' >> i386-qnx.var
	echo 'Content-language: fr' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.id' >> i386-qnx.var
	echo 'Content-language: id' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.it' >> i386-qnx.var
	echo 'Content-language: it' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.nl' >> i386-qnx.var
	echo 'Content-language: nl' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.po' >> i386-qnx.var
	echo 'Content-language: pl' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.sl' >> i386-qnx.var
	echo 'Content-language: sl' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> i386-qnx.var
	echo >> i386-qnx.var
	echo 'URI: i386-qnx.html.ru' >> i386-qnx.var
	echo 'Content-language: ru' >> i386-qnx.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> i386-qnx.var
	echo >> i386-qnx.var

m68k-amiga.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-amiga.html.bg -oe iso-8859-5 ../../templatemirror.adp
m68k-amiga.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga.html.en -oe iso-8859-1 ../../templatemirror.adp
m68k-amiga.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-amiga.html.fr -oe iso-8859-1 ../../templatemirror.adp
m68k-amiga.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-amiga.html.id -oe iso-8859-1 ../../templatemirror.adp
m68k-amiga.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-amiga.html.it -oe iso-8859-1 ../../templatemirror.adp
m68k-amiga.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-amiga.html.nl -oe iso-8859-1 ../../templatemirror.adp
m68k-amiga.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-amiga.html.po -oe iso-8859-2 ../../templatemirror.adp
m68k-amiga.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-amiga.html.sl -oe iso-8859-2 ../../templatemirror.adp
m68k-amiga.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-amiga.html.ru -oe iso-8859-5 ../../templatemirror.adp
m68k-amiga.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-amiga -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-amiga.html -oe ISO-8859-1 ../../templatemirror.adp
m68k-amiga.var: gen_makefile.conf
	echo > m68k-amiga.var
	echo 'URI: m68k-amiga.html.bg' >> m68k-amiga.var
	echo 'Content-language: bg' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.en' >> m68k-amiga.var
	echo 'Content-language: en' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.fr' >> m68k-amiga.var
	echo 'Content-language: fr' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.id' >> m68k-amiga.var
	echo 'Content-language: id' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.it' >> m68k-amiga.var
	echo 'Content-language: it' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.nl' >> m68k-amiga.var
	echo 'Content-language: nl' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.po' >> m68k-amiga.var
	echo 'Content-language: pl' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.sl' >> m68k-amiga.var
	echo 'Content-language: sl' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-amiga.var
	echo >> m68k-amiga.var
	echo 'URI: m68k-amiga.html.ru' >> m68k-amiga.var
	echo 'Content-language: ru' >> m68k-amiga.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-amiga.var
	echo >> m68k-amiga.var

m68k-netbsd.html.bg: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.bg.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.bg.adp -l bg_BG -m ../../default-master.adp -o m68k-netbsd.html.bg -oe iso-8859-5 ../../templatemirror.adp
m68k-netbsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd.html.en -oe iso-8859-1 ../../templatemirror.adp
m68k-netbsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.fr.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.fr.adp -l fr_FR -m ../../default-master.adp -o m68k-netbsd.html.fr -oe iso-8859-1 ../../templatemirror.adp
m68k-netbsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.id.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.id.adp -l id_ID -m ../../default-master.adp -o m68k-netbsd.html.id -oe iso-8859-1 ../../templatemirror.adp
m68k-netbsd.html.it: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.it.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.it.adp -l it_IT -m ../../default-master.adp -o m68k-netbsd.html.it -oe iso-8859-1 ../../templatemirror.adp
m68k-netbsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.nl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.nl.adp -l nl_NL -m ../../default-master.adp -o m68k-netbsd.html.nl -oe iso-8859-1 ../../templatemirror.adp
m68k-netbsd.html.po: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.pl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.pl.adp -l pl_PL -m ../../default-master.adp -o m68k-netbsd.html.po -oe iso-8859-2 ../../templatemirror.adp
m68k-netbsd.html.sl: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.sl.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.sl.adp -l sl_SI -m ../../default-master.adp -o m68k-netbsd.html.sl -oe iso-8859-2 ../../templatemirror.adp
m68k-netbsd.html.ru: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.ru.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.ru.adp -l ru_RU -m ../../default-master.adp -o m68k-netbsd.html.ru -oe iso-8859-5 ../../templatemirror.adp
m68k-netbsd.html: ../../templatemirror.adp mirrors.dat ../../default-master.adp ../../catalog.en.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=m68k-netbsd -c ../../catalog.en.adp -l en_US -m ../../default-master.adp -o m68k-netbsd.html -oe ISO-8859-1 ../../templatemirror.adp
m68k-netbsd.var: gen_makefile.conf
	echo > m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.bg' >> m68k-netbsd.var
	echo 'Content-language: bg' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.en' >> m68k-netbsd.var
	echo 'Content-language: en' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.fr' >> m68k-netbsd.var
	echo 'Content-language: fr' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.id' >> m68k-netbsd.var
	echo 'Content-language: id' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.it' >> m68k-netbsd.var
	echo 'Content-language: it' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.nl' >> m68k-netbsd.var
	echo 'Content-language: nl' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.po' >> m68k-netbsd.var
	echo 'Content-language: pl' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.sl' >> m68k-netbsd.var
	echo 'Content-language: sl' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> m68k-netbsd.var
	echo >> m68k-netbsd.var
	echo 'URI: m68k-netbsd.html.ru' >> m68k-netbsd.var
	echo 'Content-language: ru' >> m68k-netbsd.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> m68k-netbsd.var
	echo >> m68k-netbsd.var

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

all_pages: mirrors.dat docs-australia.html.bg docs-australia.html.en docs-australia.html.fr docs-australia.html.id docs-australia.html.it docs-australia.html.nl docs-australia.html.po docs-australia.html.sl docs-australia.html.ru docs-australia.var i386-beos-australia.html.bg i386-beos-australia.html.en i386-beos-australia.html.fr i386-beos-australia.html.id i386-beos-australia.html.it i386-beos-australia.html.nl i386-beos-australia.html.po i386-beos-australia.html.sl i386-beos-australia.html.ru i386-beos-australia.var i386-emx-australia.html.bg i386-emx-australia.html.en i386-emx-australia.html.fr i386-emx-australia.html.id i386-emx-australia.html.it i386-emx-australia.html.nl i386-emx-australia.html.po i386-emx-australia.html.sl i386-emx-australia.html.ru i386-emx-australia.var i386-netbsd-australia.html.bg i386-netbsd-australia.html.en i386-netbsd-australia.html.fr i386-netbsd-australia.html.id i386-netbsd-australia.html.it i386-netbsd-australia.html.nl i386-netbsd-australia.html.po i386-netbsd-australia.html.sl i386-netbsd-australia.html.ru i386-netbsd-australia.var i386-solaris-australia.html.bg i386-solaris-australia.html.en i386-solaris-australia.html.fr i386-solaris-australia.html.id i386-solaris-australia.html.it i386-solaris-australia.html.nl i386-solaris-australia.html.po i386-solaris-australia.html.sl i386-solaris-australia.html.ru i386-solaris-australia.var m68k-linux-australia.html.bg m68k-linux-australia.html.en m68k-linux-australia.html.fr m68k-linux-australia.html.id m68k-linux-australia.html.it m68k-linux-australia.html.nl m68k-linux-australia.html.po m68k-linux-australia.html.sl m68k-linux-australia.html.ru m68k-linux-australia.var down-australia.html.bg down-australia.html.en down-australia.html.fr down-australia.html.id down-australia.html.it down-australia.html.nl down-australia.html.po down-australia.html.sl down-australia.html.ru down-australia.var i386-go32v2-australia.html.bg i386-go32v2-australia.html.en i386-go32v2-australia.html.fr i386-go32v2-australia.html.id i386-go32v2-australia.html.it i386-go32v2-australia.html.nl i386-go32v2-australia.html.po i386-go32v2-australia.html.sl i386-go32v2-australia.html.ru i386-go32v2-australia.var i386-qnx-australia.html.bg i386-qnx-australia.html.en i386-qnx-australia.html.fr i386-qnx-australia.html.id i386-qnx-australia.html.it i386-qnx-australia.html.nl i386-qnx-australia.html.po i386-qnx-australia.html.sl i386-qnx-australia.html.ru i386-qnx-australia.var m68k-amiga-australia.html.bg m68k-amiga-australia.html.en m68k-amiga-australia.html.fr m68k-amiga-australia.html.id m68k-amiga-australia.html.it m68k-amiga-australia.html.nl m68k-amiga-australia.html.po m68k-amiga-australia.html.sl m68k-amiga-australia.html.ru m68k-amiga-australia.var m68k-netbsd-australia.html.bg m68k-netbsd-australia.html.en m68k-netbsd-australia.html.fr m68k-netbsd-australia.html.id m68k-netbsd-australia.html.it m68k-netbsd-australia.html.nl m68k-netbsd-australia.html.po m68k-netbsd-australia.html.sl m68k-netbsd-australia.html.ru m68k-netbsd-australia.var docs-austria.html.bg docs-austria.html.en docs-austria.html.fr docs-austria.html.id docs-austria.html.it docs-austria.html.nl docs-austria.html.po docs-austria.html.sl docs-austria.html.ru docs-austria.var i386-beos-austria.html.bg i386-beos-austria.html.en i386-beos-austria.html.fr i386-beos-austria.html.id i386-beos-austria.html.it i386-beos-austria.html.nl i386-beos-austria.html.po i386-beos-austria.html.sl i386-beos-austria.html.ru i386-beos-austria.var i386-emx-austria.html.bg i386-emx-austria.html.en i386-emx-austria.html.fr i386-emx-austria.html.id i386-emx-austria.html.it i386-emx-austria.html.nl i386-emx-austria.html.po i386-emx-austria.html.sl i386-emx-austria.html.ru i386-emx-austria.var i386-netbsd-austria.html.bg i386-netbsd-austria.html.en i386-netbsd-austria.html.fr i386-netbsd-austria.html.id i386-netbsd-austria.html.it i386-netbsd-austria.html.nl i386-netbsd-austria.html.po i386-netbsd-austria.html.sl i386-netbsd-austria.html.ru i386-netbsd-austria.var i386-solaris-austria.html.bg i386-solaris-austria.html.en i386-solaris-austria.html.fr i386-solaris-austria.html.id i386-solaris-austria.html.it i386-solaris-austria.html.nl i386-solaris-austria.html.po i386-solaris-austria.html.sl i386-solaris-austria.html.ru i386-solaris-austria.var m68k-linux-austria.html.bg m68k-linux-austria.html.en m68k-linux-austria.html.fr m68k-linux-austria.html.id m68k-linux-austria.html.it m68k-linux-austria.html.nl m68k-linux-austria.html.po m68k-linux-austria.html.sl m68k-linux-austria.html.ru m68k-linux-austria.var down-austria.html.bg down-austria.html.en down-austria.html.fr down-austria.html.id down-austria.html.it down-austria.html.nl down-austria.html.po down-austria.html.sl down-austria.html.ru down-austria.var i386-go32v2-austria.html.bg i386-go32v2-austria.html.en i386-go32v2-austria.html.fr i386-go32v2-austria.html.id i386-go32v2-austria.html.it i386-go32v2-austria.html.nl i386-go32v2-austria.html.po i386-go32v2-austria.html.sl i386-go32v2-austria.html.ru i386-go32v2-austria.var i386-qnx-austria.html.bg i386-qnx-austria.html.en i386-qnx-austria.html.fr i386-qnx-austria.html.id i386-qnx-austria.html.it i386-qnx-austria.html.nl i386-qnx-austria.html.po i386-qnx-austria.html.sl i386-qnx-austria.html.ru i386-qnx-austria.var m68k-amiga-austria.html.bg m68k-amiga-austria.html.en m68k-amiga-austria.html.fr m68k-amiga-austria.html.id m68k-amiga-austria.html.it m68k-amiga-austria.html.nl m68k-amiga-austria.html.po m68k-amiga-austria.html.sl m68k-amiga-austria.html.ru m68k-amiga-austria.var m68k-netbsd-austria.html.bg m68k-netbsd-austria.html.en m68k-netbsd-austria.html.fr m68k-netbsd-austria.html.id m68k-netbsd-austria.html.it m68k-netbsd-austria.html.nl m68k-netbsd-austria.html.po m68k-netbsd-austria.html.sl m68k-netbsd-austria.html.ru m68k-netbsd-austria.var docs-hungary.html.bg docs-hungary.html.en docs-hungary.html.fr docs-hungary.html.id docs-hungary.html.it docs-hungary.html.nl docs-hungary.html.po docs-hungary.html.sl docs-hungary.html.ru docs-hungary.var i386-beos-hungary.html.bg i386-beos-hungary.html.en i386-beos-hungary.html.fr i386-beos-hungary.html.id i386-beos-hungary.html.it i386-beos-hungary.html.nl i386-beos-hungary.html.po i386-beos-hungary.html.sl i386-beos-hungary.html.ru i386-beos-hungary.var i386-emx-hungary.html.bg i386-emx-hungary.html.en i386-emx-hungary.html.fr i386-emx-hungary.html.id i386-emx-hungary.html.it i386-emx-hungary.html.nl i386-emx-hungary.html.po i386-emx-hungary.html.sl i386-emx-hungary.html.ru i386-emx-hungary.var i386-netbsd-hungary.html.bg i386-netbsd-hungary.html.en i386-netbsd-hungary.html.fr i386-netbsd-hungary.html.id i386-netbsd-hungary.html.it i386-netbsd-hungary.html.nl i386-netbsd-hungary.html.po i386-netbsd-hungary.html.sl i386-netbsd-hungary.html.ru i386-netbsd-hungary.var i386-solaris-hungary.html.bg i386-solaris-hungary.html.en i386-solaris-hungary.html.fr i386-solaris-hungary.html.id i386-solaris-hungary.html.it i386-solaris-hungary.html.nl i386-solaris-hungary.html.po i386-solaris-hungary.html.sl i386-solaris-hungary.html.ru i386-solaris-hungary.var m68k-linux-hungary.html.bg m68k-linux-hungary.html.en m68k-linux-hungary.html.fr m68k-linux-hungary.html.id m68k-linux-hungary.html.it m68k-linux-hungary.html.nl m68k-linux-hungary.html.po m68k-linux-hungary.html.sl m68k-linux-hungary.html.ru m68k-linux-hungary.var down-hungary.html.bg down-hungary.html.en down-hungary.html.fr down-hungary.html.id down-hungary.html.it down-hungary.html.nl down-hungary.html.po down-hungary.html.sl down-hungary.html.ru down-hungary.var i386-go32v2-hungary.html.bg i386-go32v2-hungary.html.en i386-go32v2-hungary.html.fr i386-go32v2-hungary.html.id i386-go32v2-hungary.html.it i386-go32v2-hungary.html.nl i386-go32v2-hungary.html.po i386-go32v2-hungary.html.sl i386-go32v2-hungary.html.ru i386-go32v2-hungary.var i386-qnx-hungary.html.bg i386-qnx-hungary.html.en i386-qnx-hungary.html.fr i386-qnx-hungary.html.id i386-qnx-hungary.html.it i386-qnx-hungary.html.nl i386-qnx-hungary.html.po i386-qnx-hungary.html.sl i386-qnx-hungary.html.ru i386-qnx-hungary.var m68k-amiga-hungary.html.bg m68k-amiga-hungary.html.en m68k-amiga-hungary.html.fr m68k-amiga-hungary.html.id m68k-amiga-hungary.html.it m68k-amiga-hungary.html.nl m68k-amiga-hungary.html.po m68k-amiga-hungary.html.sl m68k-amiga-hungary.html.ru m68k-amiga-hungary.var m68k-netbsd-hungary.html.bg m68k-netbsd-hungary.html.en m68k-netbsd-hungary.html.fr m68k-netbsd-hungary.html.id m68k-netbsd-hungary.html.it m68k-netbsd-hungary.html.nl m68k-netbsd-hungary.html.po m68k-netbsd-hungary.html.sl m68k-netbsd-hungary.html.ru m68k-netbsd-hungary.var docs-israel.html.bg docs-israel.html.en docs-israel.html.fr docs-israel.html.id docs-israel.html.it docs-israel.html.nl docs-israel.html.po docs-israel.html.sl docs-israel.html.ru docs-israel.var i386-beos-israel.html.bg i386-beos-israel.html.en i386-beos-israel.html.fr i386-beos-israel.html.id i386-beos-israel.html.it i386-beos-israel.html.nl i386-beos-israel.html.po i386-beos-israel.html.sl i386-beos-israel.html.ru i386-beos-israel.var i386-emx-israel.html.bg i386-emx-israel.html.en i386-emx-israel.html.fr i386-emx-israel.html.id i386-emx-israel.html.it i386-emx-israel.html.nl i386-emx-israel.html.po i386-emx-israel.html.sl i386-emx-israel.html.ru i386-emx-israel.var i386-netbsd-israel.html.bg i386-netbsd-israel.html.en i386-netbsd-israel.html.fr i386-netbsd-israel.html.id i386-netbsd-israel.html.it i386-netbsd-israel.html.nl i386-netbsd-israel.html.po i386-netbsd-israel.html.sl i386-netbsd-israel.html.ru i386-netbsd-israel.var i386-solaris-israel.html.bg i386-solaris-israel.html.en i386-solaris-israel.html.fr i386-solaris-israel.html.id i386-solaris-israel.html.it i386-solaris-israel.html.nl i386-solaris-israel.html.po i386-solaris-israel.html.sl i386-solaris-israel.html.ru i386-solaris-israel.var m68k-linux-israel.html.bg m68k-linux-israel.html.en m68k-linux-israel.html.fr m68k-linux-israel.html.id m68k-linux-israel.html.it m68k-linux-israel.html.nl m68k-linux-israel.html.po m68k-linux-israel.html.sl m68k-linux-israel.html.ru m68k-linux-israel.var down-israel.html.bg down-israel.html.en down-israel.html.fr down-israel.html.id down-israel.html.it down-israel.html.nl down-israel.html.po down-israel.html.sl down-israel.html.ru down-israel.var i386-go32v2-israel.html.bg i386-go32v2-israel.html.en i386-go32v2-israel.html.fr i386-go32v2-israel.html.id i386-go32v2-israel.html.it i386-go32v2-israel.html.nl i386-go32v2-israel.html.po i386-go32v2-israel.html.sl i386-go32v2-israel.html.ru i386-go32v2-israel.var i386-qnx-israel.html.bg i386-qnx-israel.html.en i386-qnx-israel.html.fr i386-qnx-israel.html.id i386-qnx-israel.html.it i386-qnx-israel.html.nl i386-qnx-israel.html.po i386-qnx-israel.html.sl i386-qnx-israel.html.ru i386-qnx-israel.var m68k-amiga-israel.html.bg m68k-amiga-israel.html.en m68k-amiga-israel.html.fr m68k-amiga-israel.html.id m68k-amiga-israel.html.it m68k-amiga-israel.html.nl m68k-amiga-israel.html.po m68k-amiga-israel.html.sl m68k-amiga-israel.html.ru m68k-amiga-israel.var m68k-netbsd-israel.html.bg m68k-netbsd-israel.html.en m68k-netbsd-israel.html.fr m68k-netbsd-israel.html.id m68k-netbsd-israel.html.it m68k-netbsd-israel.html.nl m68k-netbsd-israel.html.po m68k-netbsd-israel.html.sl m68k-netbsd-israel.html.ru m68k-netbsd-israel.var docs-netherlands.html.bg docs-netherlands.html.en docs-netherlands.html.fr docs-netherlands.html.id docs-netherlands.html.it docs-netherlands.html.nl docs-netherlands.html.po docs-netherlands.html.sl docs-netherlands.html.ru docs-netherlands.var i386-beos-netherlands.html.bg i386-beos-netherlands.html.en i386-beos-netherlands.html.fr i386-beos-netherlands.html.id i386-beos-netherlands.html.it i386-beos-netherlands.html.nl i386-beos-netherlands.html.po i386-beos-netherlands.html.sl i386-beos-netherlands.html.ru i386-beos-netherlands.var i386-emx-netherlands.html.bg i386-emx-netherlands.html.en i386-emx-netherlands.html.fr i386-emx-netherlands.html.id i386-emx-netherlands.html.it i386-emx-netherlands.html.nl i386-emx-netherlands.html.po i386-emx-netherlands.html.sl i386-emx-netherlands.html.ru i386-emx-netherlands.var i386-netbsd-netherlands.html.bg i386-netbsd-netherlands.html.en i386-netbsd-netherlands.html.fr i386-netbsd-netherlands.html.id i386-netbsd-netherlands.html.it i386-netbsd-netherlands.html.nl i386-netbsd-netherlands.html.po i386-netbsd-netherlands.html.sl i386-netbsd-netherlands.html.ru i386-netbsd-netherlands.var i386-solaris-netherlands.html.bg i386-solaris-netherlands.html.en i386-solaris-netherlands.html.fr i386-solaris-netherlands.html.id i386-solaris-netherlands.html.it i386-solaris-netherlands.html.nl i386-solaris-netherlands.html.po i386-solaris-netherlands.html.sl i386-solaris-netherlands.html.ru i386-solaris-netherlands.var m68k-linux-netherlands.html.bg m68k-linux-netherlands.html.en m68k-linux-netherlands.html.fr m68k-linux-netherlands.html.id m68k-linux-netherlands.html.it m68k-linux-netherlands.html.nl m68k-linux-netherlands.html.po m68k-linux-netherlands.html.sl m68k-linux-netherlands.html.ru m68k-linux-netherlands.var down-netherlands.html.bg down-netherlands.html.en down-netherlands.html.fr down-netherlands.html.id down-netherlands.html.it down-netherlands.html.nl down-netherlands.html.po down-netherlands.html.sl down-netherlands.html.ru down-netherlands.var i386-go32v2-netherlands.html.bg i386-go32v2-netherlands.html.en i386-go32v2-netherlands.html.fr i386-go32v2-netherlands.html.id i386-go32v2-netherlands.html.it i386-go32v2-netherlands.html.nl i386-go32v2-netherlands.html.po i386-go32v2-netherlands.html.sl i386-go32v2-netherlands.html.ru i386-go32v2-netherlands.var i386-qnx-netherlands.html.bg i386-qnx-netherlands.html.en i386-qnx-netherlands.html.fr i386-qnx-netherlands.html.id i386-qnx-netherlands.html.it i386-qnx-netherlands.html.nl i386-qnx-netherlands.html.po i386-qnx-netherlands.html.sl i386-qnx-netherlands.html.ru i386-qnx-netherlands.var m68k-amiga-netherlands.html.bg m68k-amiga-netherlands.html.en m68k-amiga-netherlands.html.fr m68k-amiga-netherlands.html.id m68k-amiga-netherlands.html.it m68k-amiga-netherlands.html.nl m68k-amiga-netherlands.html.po m68k-amiga-netherlands.html.sl m68k-amiga-netherlands.html.ru m68k-amiga-netherlands.var m68k-netbsd-netherlands.html.bg m68k-netbsd-netherlands.html.en m68k-netbsd-netherlands.html.fr m68k-netbsd-netherlands.html.id m68k-netbsd-netherlands.html.it m68k-netbsd-netherlands.html.nl m68k-netbsd-netherlands.html.po m68k-netbsd-netherlands.html.sl m68k-netbsd-netherlands.html.ru m68k-netbsd-netherlands.var docs-norway.html.bg docs-norway.html.en docs-norway.html.fr docs-norway.html.id docs-norway.html.it docs-norway.html.nl docs-norway.html.po docs-norway.html.sl docs-norway.html.ru docs-norway.var i386-beos-norway.html.bg i386-beos-norway.html.en i386-beos-norway.html.fr i386-beos-norway.html.id i386-beos-norway.html.it i386-beos-norway.html.nl i386-beos-norway.html.po i386-beos-norway.html.sl i386-beos-norway.html.ru i386-beos-norway.var i386-emx-norway.html.bg i386-emx-norway.html.en i386-emx-norway.html.fr i386-emx-norway.html.id i386-emx-norway.html.it i386-emx-norway.html.nl i386-emx-norway.html.po i386-emx-norway.html.sl i386-emx-norway.html.ru i386-emx-norway.var i386-netbsd-norway.html.bg i386-netbsd-norway.html.en i386-netbsd-norway.html.fr i386-netbsd-norway.html.id i386-netbsd-norway.html.it i386-netbsd-norway.html.nl i386-netbsd-norway.html.po i386-netbsd-norway.html.sl i386-netbsd-norway.html.ru i386-netbsd-norway.var i386-solaris-norway.html.bg i386-solaris-norway.html.en i386-solaris-norway.html.fr i386-solaris-norway.html.id i386-solaris-norway.html.it i386-solaris-norway.html.nl i386-solaris-norway.html.po i386-solaris-norway.html.sl i386-solaris-norway.html.ru i386-solaris-norway.var m68k-linux-norway.html.bg m68k-linux-norway.html.en m68k-linux-norway.html.fr m68k-linux-norway.html.id m68k-linux-norway.html.it m68k-linux-norway.html.nl m68k-linux-norway.html.po m68k-linux-norway.html.sl m68k-linux-norway.html.ru m68k-linux-norway.var down-norway.html.bg down-norway.html.en down-norway.html.fr down-norway.html.id down-norway.html.it down-norway.html.nl down-norway.html.po down-norway.html.sl down-norway.html.ru down-norway.var i386-go32v2-norway.html.bg i386-go32v2-norway.html.en i386-go32v2-norway.html.fr i386-go32v2-norway.html.id i386-go32v2-norway.html.it i386-go32v2-norway.html.nl i386-go32v2-norway.html.po i386-go32v2-norway.html.sl i386-go32v2-norway.html.ru i386-go32v2-norway.var i386-qnx-norway.html.bg i386-qnx-norway.html.en i386-qnx-norway.html.fr i386-qnx-norway.html.id i386-qnx-norway.html.it i386-qnx-norway.html.nl i386-qnx-norway.html.po i386-qnx-norway.html.sl i386-qnx-norway.html.ru i386-qnx-norway.var m68k-amiga-norway.html.bg m68k-amiga-norway.html.en m68k-amiga-norway.html.fr m68k-amiga-norway.html.id m68k-amiga-norway.html.it m68k-amiga-norway.html.nl m68k-amiga-norway.html.po m68k-amiga-norway.html.sl m68k-amiga-norway.html.ru m68k-amiga-norway.var m68k-netbsd-norway.html.bg m68k-netbsd-norway.html.en m68k-netbsd-norway.html.fr m68k-netbsd-norway.html.id m68k-netbsd-norway.html.it m68k-netbsd-norway.html.nl m68k-netbsd-norway.html.po m68k-netbsd-norway.html.sl m68k-netbsd-norway.html.ru m68k-netbsd-norway.var docs-russia.html.bg docs-russia.html.en docs-russia.html.fr docs-russia.html.id docs-russia.html.it docs-russia.html.nl docs-russia.html.po docs-russia.html.sl docs-russia.html.ru docs-russia.var i386-beos-russia.html.bg i386-beos-russia.html.en i386-beos-russia.html.fr i386-beos-russia.html.id i386-beos-russia.html.it i386-beos-russia.html.nl i386-beos-russia.html.po i386-beos-russia.html.sl i386-beos-russia.html.ru i386-beos-russia.var i386-emx-russia.html.bg i386-emx-russia.html.en i386-emx-russia.html.fr i386-emx-russia.html.id i386-emx-russia.html.it i386-emx-russia.html.nl i386-emx-russia.html.po i386-emx-russia.html.sl i386-emx-russia.html.ru i386-emx-russia.var i386-netbsd-russia.html.bg i386-netbsd-russia.html.en i386-netbsd-russia.html.fr i386-netbsd-russia.html.id i386-netbsd-russia.html.it i386-netbsd-russia.html.nl i386-netbsd-russia.html.po i386-netbsd-russia.html.sl i386-netbsd-russia.html.ru i386-netbsd-russia.var i386-solaris-russia.html.bg i386-solaris-russia.html.en i386-solaris-russia.html.fr i386-solaris-russia.html.id i386-solaris-russia.html.it i386-solaris-russia.html.nl i386-solaris-russia.html.po i386-solaris-russia.html.sl i386-solaris-russia.html.ru i386-solaris-russia.var m68k-linux-russia.html.bg m68k-linux-russia.html.en m68k-linux-russia.html.fr m68k-linux-russia.html.id m68k-linux-russia.html.it m68k-linux-russia.html.nl m68k-linux-russia.html.po m68k-linux-russia.html.sl m68k-linux-russia.html.ru m68k-linux-russia.var down-russia.html.bg down-russia.html.en down-russia.html.fr down-russia.html.id down-russia.html.it down-russia.html.nl down-russia.html.po down-russia.html.sl down-russia.html.ru down-russia.var i386-go32v2-russia.html.bg i386-go32v2-russia.html.en i386-go32v2-russia.html.fr i386-go32v2-russia.html.id i386-go32v2-russia.html.it i386-go32v2-russia.html.nl i386-go32v2-russia.html.po i386-go32v2-russia.html.sl i386-go32v2-russia.html.ru i386-go32v2-russia.var i386-qnx-russia.html.bg i386-qnx-russia.html.en i386-qnx-russia.html.fr i386-qnx-russia.html.id i386-qnx-russia.html.it i386-qnx-russia.html.nl i386-qnx-russia.html.po i386-qnx-russia.html.sl i386-qnx-russia.html.ru i386-qnx-russia.var m68k-amiga-russia.html.bg m68k-amiga-russia.html.en m68k-amiga-russia.html.fr m68k-amiga-russia.html.id m68k-amiga-russia.html.it m68k-amiga-russia.html.nl m68k-amiga-russia.html.po m68k-amiga-russia.html.sl m68k-amiga-russia.html.ru m68k-amiga-russia.var m68k-netbsd-russia.html.bg m68k-netbsd-russia.html.en m68k-netbsd-russia.html.fr m68k-netbsd-russia.html.id m68k-netbsd-russia.html.it m68k-netbsd-russia.html.nl m68k-netbsd-russia.html.po m68k-netbsd-russia.html.sl m68k-netbsd-russia.html.ru m68k-netbsd-russia.var docs-ftp.freepascal.org.html.bg docs-ftp.freepascal.org.html.en docs-ftp.freepascal.org.html.fr docs-ftp.freepascal.org.html.id docs-ftp.freepascal.org.html.it docs-ftp.freepascal.org.html.nl docs-ftp.freepascal.org.html.po docs-ftp.freepascal.org.html.sl docs-ftp.freepascal.org.html.ru docs-ftp.freepascal.org.var i386-beos-ftp.freepascal.org.html.bg i386-beos-ftp.freepascal.org.html.en i386-beos-ftp.freepascal.org.html.fr i386-beos-ftp.freepascal.org.html.id i386-beos-ftp.freepascal.org.html.it i386-beos-ftp.freepascal.org.html.nl i386-beos-ftp.freepascal.org.html.po i386-beos-ftp.freepascal.org.html.sl i386-beos-ftp.freepascal.org.html.ru i386-beos-ftp.freepascal.org.var i386-emx-ftp.freepascal.org.html.bg i386-emx-ftp.freepascal.org.html.en i386-emx-ftp.freepascal.org.html.fr i386-emx-ftp.freepascal.org.html.id i386-emx-ftp.freepascal.org.html.it i386-emx-ftp.freepascal.org.html.nl i386-emx-ftp.freepascal.org.html.po i386-emx-ftp.freepascal.org.html.sl i386-emx-ftp.freepascal.org.html.ru i386-emx-ftp.freepascal.org.var i386-netbsd-ftp.freepascal.org.html.bg i386-netbsd-ftp.freepascal.org.html.en i386-netbsd-ftp.freepascal.org.html.fr i386-netbsd-ftp.freepascal.org.html.id i386-netbsd-ftp.freepascal.org.html.it i386-netbsd-ftp.freepascal.org.html.nl i386-netbsd-ftp.freepascal.org.html.po i386-netbsd-ftp.freepascal.org.html.sl i386-netbsd-ftp.freepascal.org.html.ru i386-netbsd-ftp.freepascal.org.var i386-solaris-ftp.freepascal.org.html.bg i386-solaris-ftp.freepascal.org.html.en i386-solaris-ftp.freepascal.org.html.fr i386-solaris-ftp.freepascal.org.html.id i386-solaris-ftp.freepascal.org.html.it i386-solaris-ftp.freepascal.org.html.nl i386-solaris-ftp.freepascal.org.html.po i386-solaris-ftp.freepascal.org.html.sl i386-solaris-ftp.freepascal.org.html.ru i386-solaris-ftp.freepascal.org.var m68k-linux-ftp.freepascal.org.html.bg m68k-linux-ftp.freepascal.org.html.en m68k-linux-ftp.freepascal.org.html.fr m68k-linux-ftp.freepascal.org.html.id m68k-linux-ftp.freepascal.org.html.it m68k-linux-ftp.freepascal.org.html.nl m68k-linux-ftp.freepascal.org.html.po m68k-linux-ftp.freepascal.org.html.sl m68k-linux-ftp.freepascal.org.html.ru m68k-linux-ftp.freepascal.org.var down-ftp.freepascal.org.html.bg down-ftp.freepascal.org.html.en down-ftp.freepascal.org.html.fr down-ftp.freepascal.org.html.id down-ftp.freepascal.org.html.it down-ftp.freepascal.org.html.nl down-ftp.freepascal.org.html.po down-ftp.freepascal.org.html.sl down-ftp.freepascal.org.html.ru down-ftp.freepascal.org.var i386-go32v2-ftp.freepascal.org.html.bg i386-go32v2-ftp.freepascal.org.html.en i386-go32v2-ftp.freepascal.org.html.fr i386-go32v2-ftp.freepascal.org.html.id i386-go32v2-ftp.freepascal.org.html.it i386-go32v2-ftp.freepascal.org.html.nl i386-go32v2-ftp.freepascal.org.html.po i386-go32v2-ftp.freepascal.org.html.sl i386-go32v2-ftp.freepascal.org.html.ru i386-go32v2-ftp.freepascal.org.var i386-qnx-ftp.freepascal.org.html.bg i386-qnx-ftp.freepascal.org.html.en i386-qnx-ftp.freepascal.org.html.fr i386-qnx-ftp.freepascal.org.html.id i386-qnx-ftp.freepascal.org.html.it i386-qnx-ftp.freepascal.org.html.nl i386-qnx-ftp.freepascal.org.html.po i386-qnx-ftp.freepascal.org.html.sl i386-qnx-ftp.freepascal.org.html.ru i386-qnx-ftp.freepascal.org.var m68k-amiga-ftp.freepascal.org.html.bg m68k-amiga-ftp.freepascal.org.html.en m68k-amiga-ftp.freepascal.org.html.fr m68k-amiga-ftp.freepascal.org.html.id m68k-amiga-ftp.freepascal.org.html.it m68k-amiga-ftp.freepascal.org.html.nl m68k-amiga-ftp.freepascal.org.html.po m68k-amiga-ftp.freepascal.org.html.sl m68k-amiga-ftp.freepascal.org.html.ru m68k-amiga-ftp.freepascal.org.var m68k-netbsd-ftp.freepascal.org.html.bg m68k-netbsd-ftp.freepascal.org.html.en m68k-netbsd-ftp.freepascal.org.html.fr m68k-netbsd-ftp.freepascal.org.html.id m68k-netbsd-ftp.freepascal.org.html.it m68k-netbsd-ftp.freepascal.org.html.nl m68k-netbsd-ftp.freepascal.org.html.po m68k-netbsd-ftp.freepascal.org.html.sl m68k-netbsd-ftp.freepascal.org.html.ru m68k-netbsd-ftp.freepascal.org.var docs.html.bg docs.html.en docs.html.fr docs.html.id docs.html.it docs.html.nl docs.html.po docs.html.sl docs.html.ru docs.var i386-beos.html.bg i386-beos.html.en i386-beos.html.fr i386-beos.html.id i386-beos.html.it i386-beos.html.nl i386-beos.html.po i386-beos.html.sl i386-beos.html.ru i386-beos.var i386-emx.html.bg i386-emx.html.en i386-emx.html.fr i386-emx.html.id i386-emx.html.it i386-emx.html.nl i386-emx.html.po i386-emx.html.sl i386-emx.html.ru i386-emx.var i386-netbsd.html.bg i386-netbsd.html.en i386-netbsd.html.fr i386-netbsd.html.id i386-netbsd.html.it i386-netbsd.html.nl i386-netbsd.html.po i386-netbsd.html.sl i386-netbsd.html.ru i386-netbsd.var i386-solaris.html.bg i386-solaris.html.en i386-solaris.html.fr i386-solaris.html.id i386-solaris.html.it i386-solaris.html.nl i386-solaris.html.po i386-solaris.html.sl i386-solaris.html.ru i386-solaris.var m68k-linux.html.bg m68k-linux.html.en m68k-linux.html.fr m68k-linux.html.id m68k-linux.html.it m68k-linux.html.nl m68k-linux.html.po m68k-linux.html.sl m68k-linux.html.ru m68k-linux.var down.html.bg down.html.en down.html.fr down.html.id down.html.it down.html.nl down.html.po down.html.sl down.html.ru down.var i386-go32v2.html.bg i386-go32v2.html.en i386-go32v2.html.fr i386-go32v2.html.id i386-go32v2.html.it i386-go32v2.html.nl i386-go32v2.html.po i386-go32v2.html.sl i386-go32v2.html.ru i386-go32v2.var i386-qnx.html.bg i386-qnx.html.en i386-qnx.html.fr i386-qnx.html.id i386-qnx.html.it i386-qnx.html.nl i386-qnx.html.po i386-qnx.html.sl i386-qnx.html.ru i386-qnx.var m68k-amiga.html.bg m68k-amiga.html.en m68k-amiga.html.fr m68k-amiga.html.id m68k-amiga.html.it m68k-amiga.html.nl m68k-amiga.html.po m68k-amiga.html.sl m68k-amiga.html.ru m68k-amiga.var m68k-netbsd.html.bg m68k-netbsd.html.en m68k-netbsd.html.fr m68k-netbsd.html.id m68k-netbsd.html.it m68k-netbsd.html.nl m68k-netbsd.html.po m68k-netbsd.html.sl m68k-netbsd.html.ru m68k-netbsd.var
all_en_pages: mirrors.dat docs-australia.html i386-beos-australia.html i386-emx-australia.html i386-netbsd-australia.html i386-solaris-australia.html m68k-linux-australia.html down-australia.html i386-go32v2-australia.html i386-qnx-australia.html m68k-amiga-australia.html m68k-netbsd-australia.html docs-austria.html i386-beos-austria.html i386-emx-austria.html i386-netbsd-austria.html i386-solaris-austria.html m68k-linux-austria.html down-austria.html i386-go32v2-austria.html i386-qnx-austria.html m68k-amiga-austria.html m68k-netbsd-austria.html docs-hungary.html i386-beos-hungary.html i386-emx-hungary.html i386-netbsd-hungary.html i386-solaris-hungary.html m68k-linux-hungary.html down-hungary.html i386-go32v2-hungary.html i386-qnx-hungary.html m68k-amiga-hungary.html m68k-netbsd-hungary.html docs-israel.html i386-beos-israel.html i386-emx-israel.html i386-netbsd-israel.html i386-solaris-israel.html m68k-linux-israel.html down-israel.html i386-go32v2-israel.html i386-qnx-israel.html m68k-amiga-israel.html m68k-netbsd-israel.html docs-netherlands.html i386-beos-netherlands.html i386-emx-netherlands.html i386-netbsd-netherlands.html i386-solaris-netherlands.html m68k-linux-netherlands.html down-netherlands.html i386-go32v2-netherlands.html i386-qnx-netherlands.html m68k-amiga-netherlands.html m68k-netbsd-netherlands.html docs-norway.html i386-beos-norway.html i386-emx-norway.html i386-netbsd-norway.html i386-solaris-norway.html m68k-linux-norway.html down-norway.html i386-go32v2-norway.html i386-qnx-norway.html m68k-amiga-norway.html m68k-netbsd-norway.html docs-russia.html i386-beos-russia.html i386-emx-russia.html i386-netbsd-russia.html i386-solaris-russia.html m68k-linux-russia.html down-russia.html i386-go32v2-russia.html i386-qnx-russia.html m68k-amiga-russia.html m68k-netbsd-russia.html docs-ftp.freepascal.org.html i386-beos-ftp.freepascal.org.html i386-emx-ftp.freepascal.org.html i386-netbsd-ftp.freepascal.org.html i386-solaris-ftp.freepascal.org.html m68k-linux-ftp.freepascal.org.html down-ftp.freepascal.org.html i386-go32v2-ftp.freepascal.org.html i386-qnx-ftp.freepascal.org.html m68k-amiga-ftp.freepascal.org.html m68k-netbsd-ftp.freepascal.org.html docs.html i386-beos.html i386-emx.html i386-netbsd.html i386-solaris.html m68k-linux.html down.html i386-go32v2.html i386-qnx.html m68k-amiga.html m68k-netbsd.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

