
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
..//contrib/contribs.html.bg: contribs.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//contrib//contribs.html -oe iso-8859-5 contribs.adp
..//contrib/contribs.html.en: contribs.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//contrib//contribs.html -oe iso-8859-1 contribs.adp
..//contrib/contribs.html.fi: contribs.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//contrib//contribs.html -oe iso-8859-1 contribs.adp
..//contrib/contribs.html.fr: contribs.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//contrib//contribs.html -oe iso-8859-1 contribs.adp
..//contrib/contribs.html.id: contribs.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//contrib//contribs.html -oe iso-8859-1 contribs.adp
..//contrib/contribs.html.it: contribs.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//contrib//contribs.html -oe iso-8859-1 contribs.adp
..//contrib/contribs.html.nl: contribs.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//contrib//contribs.html -oe iso-8859-1 contribs.adp
..//contrib/contribs.html.po: contribs.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//contrib//contribs.html -oe iso-8859-2 contribs.adp
..//contrib/contribs.html.sl: contribs.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//contrib//contribs.html -oe iso-8859-2 contribs.adp
..//contrib/contribs.html.ru: contribs.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//contrib//contribs.html -oe iso-8859-5 contribs.adp
..//contrib/contribs.html.zh-CN: contribs.adp ../default-master.adp ../site-master.adp ../catalog.zh-CN.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.zh-CN.adp -l zh_CN -m ../default-master.adp -o ..//contrib//contribs.html -oe UTF-8 contribs.adp
..//contrib/contribs.html: contribs.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//contrib//contribs.html -oe ISO-8859-1 contribs.adp

..//contrib/contribs.var: gen_makefile.conf
	echo > contribs.var
	echo 'URI: contribs.html.bg' >> contribs.var
	echo 'Content-language: bg' >> contribs.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//contrib//contribs.var
	echo >> contribs.var
	echo 'URI: contribs.html.en' >> contribs.var
	echo 'Content-language: en' >> contribs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//contrib//contribs.var
	echo >> contribs.var
	echo 'URI: contribs.html.fi' >> contribs.var
	echo 'Content-language: fi' >> contribs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//contrib//contribs.var
	echo >> contribs.var
	echo 'URI: contribs.html.fr' >> contribs.var
	echo 'Content-language: fr' >> contribs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//contrib//contribs.var
	echo >> contribs.var
	echo 'URI: contribs.html.id' >> contribs.var
	echo 'Content-language: id' >> contribs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//contrib//contribs.var
	echo >> contribs.var
	echo 'URI: contribs.html.it' >> contribs.var
	echo 'Content-language: it' >> contribs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//contrib//contribs.var
	echo >> contribs.var
	echo 'URI: contribs.html.nl' >> contribs.var
	echo 'Content-language: nl' >> contribs.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//contrib//contribs.var
	echo >> contribs.var
	echo 'URI: contribs.html.po' >> contribs.var
	echo 'Content-language: pl' >> contribs.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//contrib//contribs.var
	echo >> contribs.var
	echo 'URI: contribs.html.sl' >> contribs.var
	echo 'Content-language: sl' >> contribs.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//contrib//contribs.var
	echo >> contribs.var
	echo 'URI: contribs.html.ru' >> contribs.var
	echo 'Content-language: ru' >> contribs.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//contrib//contribs.var
	echo >> contribs.var
	echo 'URI: contribs.html.zh-CN' >> contribs.var
	echo 'Content-language: zh-CN' >> contribs.var
	echo 'Content-type: text/html; charset=UTF-8' >> ..//contrib//contribs.var
	echo >> contribs.var

mirrors.dat:
	$(shell echo -e 'name\tnamel\turl' > mirrors.dat)
	$(shell echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo -e 'Canada\tcanada\tftp://mirror.freemirror.org/pub/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ..//contrib/contribs.html.bg ..//contrib/contribs.html.en ..//contrib/contribs.html.fi ..//contrib/contribs.html.fr ..//contrib/contribs.html.id ..//contrib/contribs.html.it ..//contrib/contribs.html.nl ..//contrib/contribs.html.po ..//contrib/contribs.html.sl ..//contrib/contribs.html.ru ..//contrib/contribs.html.zh-CN ..//contrib/contribs.var
all_en_pages: mirrors.dat ..//contrib/contribs.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ..//contrib/

