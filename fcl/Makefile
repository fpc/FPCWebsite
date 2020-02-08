
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
..//fcl/fcl.html.bg: fcl.adp ../default-master.adp ../site-master.adp ../catalog.bg.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.bg.adp -l bg_BG -m ../default-master.adp -o ..//fcl//fcl.html.bg -e iso-8859-5 fcl.adp
..//fcl/fcl.html.en: fcl.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//fcl//fcl.html.en -e iso-8859-1 fcl.adp
..//fcl/fcl.html.fi: fcl.adp ../default-master.adp ../site-master.adp ../catalog.fi.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fi.adp -l fi_FI -m ../default-master.adp -o ..//fcl//fcl.html.fi -e iso-8859-1 fcl.adp
..//fcl/fcl.html.fr: fcl.adp ../default-master.adp ../site-master.adp ../catalog.fr.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.fr.adp -l fr_FR -m ../default-master.adp -o ..//fcl//fcl.html.fr -e iso-8859-1 fcl.adp
..//fcl/fcl.html.id: fcl.adp ../default-master.adp ../site-master.adp ../catalog.id.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.id.adp -l id_ID -m ../default-master.adp -o ..//fcl//fcl.html.id -e iso-8859-1 fcl.adp
..//fcl/fcl.html.it: fcl.adp ../default-master.adp ../site-master.adp ../catalog.it.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.it.adp -l it_IT -m ../default-master.adp -o ..//fcl//fcl.html.it -e iso-8859-1 fcl.adp
..//fcl/fcl.html.nl: fcl.adp ../default-master.adp ../site-master.adp ../catalog.nl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.nl.adp -l nl_NL -m ../default-master.adp -o ..//fcl//fcl.html.nl -e iso-8859-1 fcl.adp
..//fcl/fcl.html.po: fcl.adp ../default-master.adp ../site-master.adp ../catalog.pl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.pl.adp -l pl_PL -m ../default-master.adp -o ..//fcl//fcl.html.po -e iso-8859-2 fcl.adp
..//fcl/fcl.html.sl: fcl.adp ../default-master.adp ../site-master.adp ../catalog.sl.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.sl.adp -l sl_SI -m ../default-master.adp -o ..//fcl//fcl.html.sl -e iso-8859-2 fcl.adp
..//fcl/fcl.html.ru: fcl.adp ../default-master.adp ../site-master.adp ../catalog.ru.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.ru.adp -l ru_RU -m ../default-master.adp -o ..//fcl//fcl.html.ru -e iso-8859-5 fcl.adp
..//fcl/fcl.html.zh-CN: fcl.adp ../default-master.adp ../site-master.adp ../catalog.zh-CN.adp
	../adp2html -p x=$(URL_EXTENSION) -c ../catalog.zh-CN.adp -l zh_CN -m ../default-master.adp -o ..//fcl//fcl.html.zh-CN -e UTF-8 fcl.adp
..//fcl/fcl.html: fcl.adp ../default-master.adp ../site-master.adp ../catalog.en.adp
	../adp2html -p x=$(URL_EXTENSION_EN) -c ../catalog.en.adp -l en_US -m ../default-master.adp -o ..//fcl//fcl.html -e ISO-8859-1 fcl.adp

..//fcl/fcl.var: gen_makefile.conf
	echo > fcl.var
	echo 'URI: fcl.html.bg' >> fcl.var
	echo 'Content-language: bg' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//fcl//fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.en' >> fcl.var
	echo 'Content-language: en' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//fcl//fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.fi' >> fcl.var
	echo 'Content-language: fi' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//fcl//fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.fr' >> fcl.var
	echo 'Content-language: fr' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//fcl//fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.id' >> fcl.var
	echo 'Content-language: id' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//fcl//fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.it' >> fcl.var
	echo 'Content-language: it' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//fcl//fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.nl' >> fcl.var
	echo 'Content-language: nl' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-1' >> ..//fcl//fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.po' >> fcl.var
	echo 'Content-language: pl' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//fcl//fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.sl' >> fcl.var
	echo 'Content-language: sl' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-2' >> ..//fcl//fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.ru' >> fcl.var
	echo 'Content-language: ru' >> fcl.var
	echo 'Content-type: text/html; charset=iso-8859-5' >> ..//fcl//fcl.var
	echo >> fcl.var
	echo 'URI: fcl.html.zh-CN' >> fcl.var
	echo 'Content-language: zh-CN' >> fcl.var
	echo 'Content-type: text/html; charset=UTF-8' >> ..//fcl//fcl.var
	echo >> fcl.var

mirrors.dat:
	$(shell echo -e 'name\tnamel\turl' > mirrors.dat)
	$(shell echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat)
	$(shell echo -e 'Canada\tcanada\tftp://mirror.freemirror.org/pub/fpc/' >> mirrors.dat)

all_pages: mirrors.dat ..//fcl/fcl.html.bg ..//fcl/fcl.html.en ..//fcl/fcl.html.fi ..//fcl/fcl.html.fr ..//fcl/fcl.html.id ..//fcl/fcl.html.it ..//fcl/fcl.html.nl ..//fcl/fcl.html.po ..//fcl/fcl.html.sl ..//fcl/fcl.html.ru ..//fcl/fcl.html.zh-CN ..//fcl/fcl.var
all_en_pages: mirrors.dat ..//fcl/fcl.html


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

#output directory
output_directory:
	mkdir -p ..//fcl/

