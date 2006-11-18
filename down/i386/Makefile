
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
default: all
all: all_pages
freebsd-australia.html.de: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o freebsd-australia.html.de freebsd.adp
freebsd-australia.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o freebsd-australia.html.en freebsd.adp
freebsd-australia.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o freebsd-australia.html.fr freebsd.adp
freebsd-australia.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o freebsd-australia.html.id freebsd.adp
freebsd-australia.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o freebsd-australia.html.nl freebsd.adp
freebsd-australia.html.pl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o freebsd-australia.html.pl freebsd.adp

freebsd-australia.var: gen_makefile.conf
	echo > freebsd-australia.var
	echo 'URI: freebsd-australia.html.de' >> freebsd-australia.var
	echo 'Content-language: de' >> freebsd-australia.var
	echo 'Content-type: text/html' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.en' >> freebsd-australia.var
	echo 'Content-language: en' >> freebsd-australia.var
	echo 'Content-type: text/html' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.fr' >> freebsd-australia.var
	echo 'Content-language: fr' >> freebsd-australia.var
	echo 'Content-type: text/html' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.id' >> freebsd-australia.var
	echo 'Content-language: id' >> freebsd-australia.var
	echo 'Content-type: text/html' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.nl' >> freebsd-australia.var
	echo 'Content-language: nl' >> freebsd-australia.var
	echo 'Content-type: text/html' >> freebsd-australia.var
	echo >> freebsd-australia.var
	echo 'URI: freebsd-australia.html.pl' >> freebsd-australia.var
	echo 'Content-language: pl' >> freebsd-australia.var
	echo 'Content-type: text/html' >> freebsd-australia.var
	echo >> freebsd-australia.var
go32v2-australia.html.de: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o go32v2-australia.html.de go32v2.adp
go32v2-australia.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o go32v2-australia.html.en go32v2.adp
go32v2-australia.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o go32v2-australia.html.fr go32v2.adp
go32v2-australia.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o go32v2-australia.html.id go32v2.adp
go32v2-australia.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o go32v2-australia.html.nl go32v2.adp
go32v2-australia.html.pl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o go32v2-australia.html.pl go32v2.adp

go32v2-australia.var: gen_makefile.conf
	echo > go32v2-australia.var
	echo 'URI: go32v2-australia.html.de' >> go32v2-australia.var
	echo 'Content-language: de' >> go32v2-australia.var
	echo 'Content-type: text/html' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.en' >> go32v2-australia.var
	echo 'Content-language: en' >> go32v2-australia.var
	echo 'Content-type: text/html' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.fr' >> go32v2-australia.var
	echo 'Content-language: fr' >> go32v2-australia.var
	echo 'Content-type: text/html' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.id' >> go32v2-australia.var
	echo 'Content-language: id' >> go32v2-australia.var
	echo 'Content-type: text/html' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.nl' >> go32v2-australia.var
	echo 'Content-language: nl' >> go32v2-australia.var
	echo 'Content-type: text/html' >> go32v2-australia.var
	echo >> go32v2-australia.var
	echo 'URI: go32v2-australia.html.pl' >> go32v2-australia.var
	echo 'Content-language: pl' >> go32v2-australia.var
	echo 'Content-type: text/html' >> go32v2-australia.var
	echo >> go32v2-australia.var
linux-australia.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-australia.html.de linux.adp
linux-australia.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-australia.html.en linux.adp
linux-australia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-australia.html.fr linux.adp
linux-australia.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-australia.html.id linux.adp
linux-australia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-australia.html.nl linux.adp
linux-australia.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-australia.html.pl linux.adp

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
netware-australia.html.de: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o netware-australia.html.de netware.adp
netware-australia.html.en: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o netware-australia.html.en netware.adp
netware-australia.html.fr: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o netware-australia.html.fr netware.adp
netware-australia.html.id: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o netware-australia.html.id netware.adp
netware-australia.html.nl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o netware-australia.html.nl netware.adp
netware-australia.html.pl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o netware-australia.html.pl netware.adp

netware-australia.var: gen_makefile.conf
	echo > netware-australia.var
	echo 'URI: netware-australia.html.de' >> netware-australia.var
	echo 'Content-language: de' >> netware-australia.var
	echo 'Content-type: text/html' >> netware-australia.var
	echo >> netware-australia.var
	echo 'URI: netware-australia.html.en' >> netware-australia.var
	echo 'Content-language: en' >> netware-australia.var
	echo 'Content-type: text/html' >> netware-australia.var
	echo >> netware-australia.var
	echo 'URI: netware-australia.html.fr' >> netware-australia.var
	echo 'Content-language: fr' >> netware-australia.var
	echo 'Content-type: text/html' >> netware-australia.var
	echo >> netware-australia.var
	echo 'URI: netware-australia.html.id' >> netware-australia.var
	echo 'Content-language: id' >> netware-australia.var
	echo 'Content-type: text/html' >> netware-australia.var
	echo >> netware-australia.var
	echo 'URI: netware-australia.html.nl' >> netware-australia.var
	echo 'Content-language: nl' >> netware-australia.var
	echo 'Content-type: text/html' >> netware-australia.var
	echo >> netware-australia.var
	echo 'URI: netware-australia.html.pl' >> netware-australia.var
	echo 'Content-language: pl' >> netware-australia.var
	echo 'Content-type: text/html' >> netware-australia.var
	echo >> netware-australia.var
os2-australia.html.de: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o os2-australia.html.de os2.adp
os2-australia.html.en: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o os2-australia.html.en os2.adp
os2-australia.html.fr: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o os2-australia.html.fr os2.adp
os2-australia.html.id: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o os2-australia.html.id os2.adp
os2-australia.html.nl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o os2-australia.html.nl os2.adp
os2-australia.html.pl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o os2-australia.html.pl os2.adp

os2-australia.var: gen_makefile.conf
	echo > os2-australia.var
	echo 'URI: os2-australia.html.de' >> os2-australia.var
	echo 'Content-language: de' >> os2-australia.var
	echo 'Content-type: text/html' >> os2-australia.var
	echo >> os2-australia.var
	echo 'URI: os2-australia.html.en' >> os2-australia.var
	echo 'Content-language: en' >> os2-australia.var
	echo 'Content-type: text/html' >> os2-australia.var
	echo >> os2-australia.var
	echo 'URI: os2-australia.html.fr' >> os2-australia.var
	echo 'Content-language: fr' >> os2-australia.var
	echo 'Content-type: text/html' >> os2-australia.var
	echo >> os2-australia.var
	echo 'URI: os2-australia.html.id' >> os2-australia.var
	echo 'Content-language: id' >> os2-australia.var
	echo 'Content-type: text/html' >> os2-australia.var
	echo >> os2-australia.var
	echo 'URI: os2-australia.html.nl' >> os2-australia.var
	echo 'Content-language: nl' >> os2-australia.var
	echo 'Content-type: text/html' >> os2-australia.var
	echo >> os2-australia.var
	echo 'URI: os2-australia.html.pl' >> os2-australia.var
	echo 'Content-language: pl' >> os2-australia.var
	echo 'Content-type: text/html' >> os2-australia.var
	echo >> os2-australia.var
win32-australia.html.de: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o win32-australia.html.de win32.adp
win32-australia.html.en: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o win32-australia.html.en win32.adp
win32-australia.html.fr: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o win32-australia.html.fr win32.adp
win32-australia.html.id: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o win32-australia.html.id win32.adp
win32-australia.html.nl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o win32-australia.html.nl win32.adp
win32-australia.html.pl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://fpc.planetmirror.com/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o win32-australia.html.pl win32.adp

win32-australia.var: gen_makefile.conf
	echo > win32-australia.var
	echo 'URI: win32-australia.html.de' >> win32-australia.var
	echo 'Content-language: de' >> win32-australia.var
	echo 'Content-type: text/html' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.en' >> win32-australia.var
	echo 'Content-language: en' >> win32-australia.var
	echo 'Content-type: text/html' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.fr' >> win32-australia.var
	echo 'Content-language: fr' >> win32-australia.var
	echo 'Content-type: text/html' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.id' >> win32-australia.var
	echo 'Content-language: id' >> win32-australia.var
	echo 'Content-type: text/html' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.nl' >> win32-australia.var
	echo 'Content-language: nl' >> win32-australia.var
	echo 'Content-type: text/html' >> win32-australia.var
	echo >> win32-australia.var
	echo 'URI: win32-australia.html.pl' >> win32-australia.var
	echo 'Content-language: pl' >> win32-australia.var
	echo 'Content-type: text/html' >> win32-australia.var
	echo >> win32-australia.var
freebsd-austria.html.de: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o freebsd-austria.html.de freebsd.adp
freebsd-austria.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o freebsd-austria.html.en freebsd.adp
freebsd-austria.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o freebsd-austria.html.fr freebsd.adp
freebsd-austria.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o freebsd-austria.html.id freebsd.adp
freebsd-austria.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o freebsd-austria.html.nl freebsd.adp
freebsd-austria.html.pl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o freebsd-austria.html.pl freebsd.adp

freebsd-austria.var: gen_makefile.conf
	echo > freebsd-austria.var
	echo 'URI: freebsd-austria.html.de' >> freebsd-austria.var
	echo 'Content-language: de' >> freebsd-austria.var
	echo 'Content-type: text/html' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.en' >> freebsd-austria.var
	echo 'Content-language: en' >> freebsd-austria.var
	echo 'Content-type: text/html' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.fr' >> freebsd-austria.var
	echo 'Content-language: fr' >> freebsd-austria.var
	echo 'Content-type: text/html' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.id' >> freebsd-austria.var
	echo 'Content-language: id' >> freebsd-austria.var
	echo 'Content-type: text/html' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.nl' >> freebsd-austria.var
	echo 'Content-language: nl' >> freebsd-austria.var
	echo 'Content-type: text/html' >> freebsd-austria.var
	echo >> freebsd-austria.var
	echo 'URI: freebsd-austria.html.pl' >> freebsd-austria.var
	echo 'Content-language: pl' >> freebsd-austria.var
	echo 'Content-type: text/html' >> freebsd-austria.var
	echo >> freebsd-austria.var
go32v2-austria.html.de: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o go32v2-austria.html.de go32v2.adp
go32v2-austria.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o go32v2-austria.html.en go32v2.adp
go32v2-austria.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o go32v2-austria.html.fr go32v2.adp
go32v2-austria.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o go32v2-austria.html.id go32v2.adp
go32v2-austria.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o go32v2-austria.html.nl go32v2.adp
go32v2-austria.html.pl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o go32v2-austria.html.pl go32v2.adp

go32v2-austria.var: gen_makefile.conf
	echo > go32v2-austria.var
	echo 'URI: go32v2-austria.html.de' >> go32v2-austria.var
	echo 'Content-language: de' >> go32v2-austria.var
	echo 'Content-type: text/html' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.en' >> go32v2-austria.var
	echo 'Content-language: en' >> go32v2-austria.var
	echo 'Content-type: text/html' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.fr' >> go32v2-austria.var
	echo 'Content-language: fr' >> go32v2-austria.var
	echo 'Content-type: text/html' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.id' >> go32v2-austria.var
	echo 'Content-language: id' >> go32v2-austria.var
	echo 'Content-type: text/html' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.nl' >> go32v2-austria.var
	echo 'Content-language: nl' >> go32v2-austria.var
	echo 'Content-type: text/html' >> go32v2-austria.var
	echo >> go32v2-austria.var
	echo 'URI: go32v2-austria.html.pl' >> go32v2-austria.var
	echo 'Content-language: pl' >> go32v2-austria.var
	echo 'Content-type: text/html' >> go32v2-austria.var
	echo >> go32v2-austria.var
linux-austria.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-austria.html.de linux.adp
linux-austria.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-austria.html.en linux.adp
linux-austria.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-austria.html.fr linux.adp
linux-austria.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-austria.html.id linux.adp
linux-austria.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-austria.html.nl linux.adp
linux-austria.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-austria.html.pl linux.adp

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
netware-austria.html.de: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o netware-austria.html.de netware.adp
netware-austria.html.en: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o netware-austria.html.en netware.adp
netware-austria.html.fr: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o netware-austria.html.fr netware.adp
netware-austria.html.id: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o netware-austria.html.id netware.adp
netware-austria.html.nl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o netware-austria.html.nl netware.adp
netware-austria.html.pl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o netware-austria.html.pl netware.adp

netware-austria.var: gen_makefile.conf
	echo > netware-austria.var
	echo 'URI: netware-austria.html.de' >> netware-austria.var
	echo 'Content-language: de' >> netware-austria.var
	echo 'Content-type: text/html' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.en' >> netware-austria.var
	echo 'Content-language: en' >> netware-austria.var
	echo 'Content-type: text/html' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.fr' >> netware-austria.var
	echo 'Content-language: fr' >> netware-austria.var
	echo 'Content-type: text/html' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.id' >> netware-austria.var
	echo 'Content-language: id' >> netware-austria.var
	echo 'Content-type: text/html' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.nl' >> netware-austria.var
	echo 'Content-language: nl' >> netware-austria.var
	echo 'Content-type: text/html' >> netware-austria.var
	echo >> netware-austria.var
	echo 'URI: netware-austria.html.pl' >> netware-austria.var
	echo 'Content-language: pl' >> netware-austria.var
	echo 'Content-type: text/html' >> netware-austria.var
	echo >> netware-austria.var
os2-austria.html.de: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o os2-austria.html.de os2.adp
os2-austria.html.en: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o os2-austria.html.en os2.adp
os2-austria.html.fr: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o os2-austria.html.fr os2.adp
os2-austria.html.id: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o os2-austria.html.id os2.adp
os2-austria.html.nl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o os2-austria.html.nl os2.adp
os2-austria.html.pl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o os2-austria.html.pl os2.adp

os2-austria.var: gen_makefile.conf
	echo > os2-austria.var
	echo 'URI: os2-austria.html.de' >> os2-austria.var
	echo 'Content-language: de' >> os2-austria.var
	echo 'Content-type: text/html' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.en' >> os2-austria.var
	echo 'Content-language: en' >> os2-austria.var
	echo 'Content-type: text/html' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.fr' >> os2-austria.var
	echo 'Content-language: fr' >> os2-austria.var
	echo 'Content-type: text/html' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.id' >> os2-austria.var
	echo 'Content-language: id' >> os2-austria.var
	echo 'Content-type: text/html' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.nl' >> os2-austria.var
	echo 'Content-language: nl' >> os2-austria.var
	echo 'Content-type: text/html' >> os2-austria.var
	echo >> os2-austria.var
	echo 'URI: os2-austria.html.pl' >> os2-austria.var
	echo 'Content-language: pl' >> os2-austria.var
	echo 'Content-type: text/html' >> os2-austria.var
	echo >> os2-austria.var
win32-austria.html.de: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o win32-austria.html.de win32.adp
win32-austria.html.en: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o win32-austria.html.en win32.adp
win32-austria.html.fr: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o win32-austria.html.fr win32.adp
win32-austria.html.id: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o win32-austria.html.id win32.adp
win32-austria.html.nl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o win32-austria.html.nl win32.adp
win32-austria.html.pl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://gd.tuwien.ac.at/languages/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o win32-austria.html.pl win32.adp

win32-austria.var: gen_makefile.conf
	echo > win32-austria.var
	echo 'URI: win32-austria.html.de' >> win32-austria.var
	echo 'Content-language: de' >> win32-austria.var
	echo 'Content-type: text/html' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.en' >> win32-austria.var
	echo 'Content-language: en' >> win32-austria.var
	echo 'Content-type: text/html' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.fr' >> win32-austria.var
	echo 'Content-language: fr' >> win32-austria.var
	echo 'Content-type: text/html' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.id' >> win32-austria.var
	echo 'Content-language: id' >> win32-austria.var
	echo 'Content-type: text/html' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.nl' >> win32-austria.var
	echo 'Content-language: nl' >> win32-austria.var
	echo 'Content-type: text/html' >> win32-austria.var
	echo >> win32-austria.var
	echo 'URI: win32-austria.html.pl' >> win32-austria.var
	echo 'Content-language: pl' >> win32-austria.var
	echo 'Content-type: text/html' >> win32-austria.var
	echo >> win32-austria.var
freebsd-germany.html.de: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o freebsd-germany.html.de freebsd.adp
freebsd-germany.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o freebsd-germany.html.en freebsd.adp
freebsd-germany.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o freebsd-germany.html.fr freebsd.adp
freebsd-germany.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o freebsd-germany.html.id freebsd.adp
freebsd-germany.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o freebsd-germany.html.nl freebsd.adp
freebsd-germany.html.pl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o freebsd-germany.html.pl freebsd.adp

freebsd-germany.var: gen_makefile.conf
	echo > freebsd-germany.var
	echo 'URI: freebsd-germany.html.de' >> freebsd-germany.var
	echo 'Content-language: de' >> freebsd-germany.var
	echo 'Content-type: text/html' >> freebsd-germany.var
	echo >> freebsd-germany.var
	echo 'URI: freebsd-germany.html.en' >> freebsd-germany.var
	echo 'Content-language: en' >> freebsd-germany.var
	echo 'Content-type: text/html' >> freebsd-germany.var
	echo >> freebsd-germany.var
	echo 'URI: freebsd-germany.html.fr' >> freebsd-germany.var
	echo 'Content-language: fr' >> freebsd-germany.var
	echo 'Content-type: text/html' >> freebsd-germany.var
	echo >> freebsd-germany.var
	echo 'URI: freebsd-germany.html.id' >> freebsd-germany.var
	echo 'Content-language: id' >> freebsd-germany.var
	echo 'Content-type: text/html' >> freebsd-germany.var
	echo >> freebsd-germany.var
	echo 'URI: freebsd-germany.html.nl' >> freebsd-germany.var
	echo 'Content-language: nl' >> freebsd-germany.var
	echo 'Content-type: text/html' >> freebsd-germany.var
	echo >> freebsd-germany.var
	echo 'URI: freebsd-germany.html.pl' >> freebsd-germany.var
	echo 'Content-language: pl' >> freebsd-germany.var
	echo 'Content-type: text/html' >> freebsd-germany.var
	echo >> freebsd-germany.var
go32v2-germany.html.de: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o go32v2-germany.html.de go32v2.adp
go32v2-germany.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o go32v2-germany.html.en go32v2.adp
go32v2-germany.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o go32v2-germany.html.fr go32v2.adp
go32v2-germany.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o go32v2-germany.html.id go32v2.adp
go32v2-germany.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o go32v2-germany.html.nl go32v2.adp
go32v2-germany.html.pl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o go32v2-germany.html.pl go32v2.adp

go32v2-germany.var: gen_makefile.conf
	echo > go32v2-germany.var
	echo 'URI: go32v2-germany.html.de' >> go32v2-germany.var
	echo 'Content-language: de' >> go32v2-germany.var
	echo 'Content-type: text/html' >> go32v2-germany.var
	echo >> go32v2-germany.var
	echo 'URI: go32v2-germany.html.en' >> go32v2-germany.var
	echo 'Content-language: en' >> go32v2-germany.var
	echo 'Content-type: text/html' >> go32v2-germany.var
	echo >> go32v2-germany.var
	echo 'URI: go32v2-germany.html.fr' >> go32v2-germany.var
	echo 'Content-language: fr' >> go32v2-germany.var
	echo 'Content-type: text/html' >> go32v2-germany.var
	echo >> go32v2-germany.var
	echo 'URI: go32v2-germany.html.id' >> go32v2-germany.var
	echo 'Content-language: id' >> go32v2-germany.var
	echo 'Content-type: text/html' >> go32v2-germany.var
	echo >> go32v2-germany.var
	echo 'URI: go32v2-germany.html.nl' >> go32v2-germany.var
	echo 'Content-language: nl' >> go32v2-germany.var
	echo 'Content-type: text/html' >> go32v2-germany.var
	echo >> go32v2-germany.var
	echo 'URI: go32v2-germany.html.pl' >> go32v2-germany.var
	echo 'Content-language: pl' >> go32v2-germany.var
	echo 'Content-type: text/html' >> go32v2-germany.var
	echo >> go32v2-germany.var
linux-germany.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-germany.html.de linux.adp
linux-germany.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-germany.html.en linux.adp
linux-germany.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-germany.html.fr linux.adp
linux-germany.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-germany.html.id linux.adp
linux-germany.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-germany.html.nl linux.adp
linux-germany.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-germany.html.pl linux.adp

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
netware-germany.html.de: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o netware-germany.html.de netware.adp
netware-germany.html.en: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o netware-germany.html.en netware.adp
netware-germany.html.fr: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o netware-germany.html.fr netware.adp
netware-germany.html.id: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o netware-germany.html.id netware.adp
netware-germany.html.nl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o netware-germany.html.nl netware.adp
netware-germany.html.pl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o netware-germany.html.pl netware.adp

netware-germany.var: gen_makefile.conf
	echo > netware-germany.var
	echo 'URI: netware-germany.html.de' >> netware-germany.var
	echo 'Content-language: de' >> netware-germany.var
	echo 'Content-type: text/html' >> netware-germany.var
	echo >> netware-germany.var
	echo 'URI: netware-germany.html.en' >> netware-germany.var
	echo 'Content-language: en' >> netware-germany.var
	echo 'Content-type: text/html' >> netware-germany.var
	echo >> netware-germany.var
	echo 'URI: netware-germany.html.fr' >> netware-germany.var
	echo 'Content-language: fr' >> netware-germany.var
	echo 'Content-type: text/html' >> netware-germany.var
	echo >> netware-germany.var
	echo 'URI: netware-germany.html.id' >> netware-germany.var
	echo 'Content-language: id' >> netware-germany.var
	echo 'Content-type: text/html' >> netware-germany.var
	echo >> netware-germany.var
	echo 'URI: netware-germany.html.nl' >> netware-germany.var
	echo 'Content-language: nl' >> netware-germany.var
	echo 'Content-type: text/html' >> netware-germany.var
	echo >> netware-germany.var
	echo 'URI: netware-germany.html.pl' >> netware-germany.var
	echo 'Content-language: pl' >> netware-germany.var
	echo 'Content-type: text/html' >> netware-germany.var
	echo >> netware-germany.var
os2-germany.html.de: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o os2-germany.html.de os2.adp
os2-germany.html.en: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o os2-germany.html.en os2.adp
os2-germany.html.fr: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o os2-germany.html.fr os2.adp
os2-germany.html.id: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o os2-germany.html.id os2.adp
os2-germany.html.nl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o os2-germany.html.nl os2.adp
os2-germany.html.pl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o os2-germany.html.pl os2.adp

os2-germany.var: gen_makefile.conf
	echo > os2-germany.var
	echo 'URI: os2-germany.html.de' >> os2-germany.var
	echo 'Content-language: de' >> os2-germany.var
	echo 'Content-type: text/html' >> os2-germany.var
	echo >> os2-germany.var
	echo 'URI: os2-germany.html.en' >> os2-germany.var
	echo 'Content-language: en' >> os2-germany.var
	echo 'Content-type: text/html' >> os2-germany.var
	echo >> os2-germany.var
	echo 'URI: os2-germany.html.fr' >> os2-germany.var
	echo 'Content-language: fr' >> os2-germany.var
	echo 'Content-type: text/html' >> os2-germany.var
	echo >> os2-germany.var
	echo 'URI: os2-germany.html.id' >> os2-germany.var
	echo 'Content-language: id' >> os2-germany.var
	echo 'Content-type: text/html' >> os2-germany.var
	echo >> os2-germany.var
	echo 'URI: os2-germany.html.nl' >> os2-germany.var
	echo 'Content-language: nl' >> os2-germany.var
	echo 'Content-type: text/html' >> os2-germany.var
	echo >> os2-germany.var
	echo 'URI: os2-germany.html.pl' >> os2-germany.var
	echo 'Content-language: pl' >> os2-germany.var
	echo 'Content-type: text/html' >> os2-germany.var
	echo >> os2-germany.var
win32-germany.html.de: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o win32-germany.html.de win32.adp
win32-germany.html.en: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o win32-germany.html.en win32.adp
win32-germany.html.fr: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o win32-germany.html.fr win32.adp
win32-germany.html.id: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o win32-germany.html.id win32.adp
win32-germany.html.nl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o win32-germany.html.nl win32.adp
win32-germany.html.pl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.uni-erlangen.de/pub/mirrors/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o win32-germany.html.pl win32.adp

win32-germany.var: gen_makefile.conf
	echo > win32-germany.var
	echo 'URI: win32-germany.html.de' >> win32-germany.var
	echo 'Content-language: de' >> win32-germany.var
	echo 'Content-type: text/html' >> win32-germany.var
	echo >> win32-germany.var
	echo 'URI: win32-germany.html.en' >> win32-germany.var
	echo 'Content-language: en' >> win32-germany.var
	echo 'Content-type: text/html' >> win32-germany.var
	echo >> win32-germany.var
	echo 'URI: win32-germany.html.fr' >> win32-germany.var
	echo 'Content-language: fr' >> win32-germany.var
	echo 'Content-type: text/html' >> win32-germany.var
	echo >> win32-germany.var
	echo 'URI: win32-germany.html.id' >> win32-germany.var
	echo 'Content-language: id' >> win32-germany.var
	echo 'Content-type: text/html' >> win32-germany.var
	echo >> win32-germany.var
	echo 'URI: win32-germany.html.nl' >> win32-germany.var
	echo 'Content-language: nl' >> win32-germany.var
	echo 'Content-type: text/html' >> win32-germany.var
	echo >> win32-germany.var
	echo 'URI: win32-germany.html.pl' >> win32-germany.var
	echo 'Content-language: pl' >> win32-germany.var
	echo 'Content-type: text/html' >> win32-germany.var
	echo >> win32-germany.var
freebsd-hungary.html.de: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o freebsd-hungary.html.de freebsd.adp
freebsd-hungary.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o freebsd-hungary.html.en freebsd.adp
freebsd-hungary.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o freebsd-hungary.html.fr freebsd.adp
freebsd-hungary.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o freebsd-hungary.html.id freebsd.adp
freebsd-hungary.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o freebsd-hungary.html.nl freebsd.adp
freebsd-hungary.html.pl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o freebsd-hungary.html.pl freebsd.adp

freebsd-hungary.var: gen_makefile.conf
	echo > freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.de' >> freebsd-hungary.var
	echo 'Content-language: de' >> freebsd-hungary.var
	echo 'Content-type: text/html' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.en' >> freebsd-hungary.var
	echo 'Content-language: en' >> freebsd-hungary.var
	echo 'Content-type: text/html' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.fr' >> freebsd-hungary.var
	echo 'Content-language: fr' >> freebsd-hungary.var
	echo 'Content-type: text/html' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.id' >> freebsd-hungary.var
	echo 'Content-language: id' >> freebsd-hungary.var
	echo 'Content-type: text/html' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.nl' >> freebsd-hungary.var
	echo 'Content-language: nl' >> freebsd-hungary.var
	echo 'Content-type: text/html' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
	echo 'URI: freebsd-hungary.html.pl' >> freebsd-hungary.var
	echo 'Content-language: pl' >> freebsd-hungary.var
	echo 'Content-type: text/html' >> freebsd-hungary.var
	echo >> freebsd-hungary.var
go32v2-hungary.html.de: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o go32v2-hungary.html.de go32v2.adp
go32v2-hungary.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o go32v2-hungary.html.en go32v2.adp
go32v2-hungary.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o go32v2-hungary.html.fr go32v2.adp
go32v2-hungary.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o go32v2-hungary.html.id go32v2.adp
go32v2-hungary.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o go32v2-hungary.html.nl go32v2.adp
go32v2-hungary.html.pl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o go32v2-hungary.html.pl go32v2.adp

go32v2-hungary.var: gen_makefile.conf
	echo > go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.de' >> go32v2-hungary.var
	echo 'Content-language: de' >> go32v2-hungary.var
	echo 'Content-type: text/html' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.en' >> go32v2-hungary.var
	echo 'Content-language: en' >> go32v2-hungary.var
	echo 'Content-type: text/html' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.fr' >> go32v2-hungary.var
	echo 'Content-language: fr' >> go32v2-hungary.var
	echo 'Content-type: text/html' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.id' >> go32v2-hungary.var
	echo 'Content-language: id' >> go32v2-hungary.var
	echo 'Content-type: text/html' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.nl' >> go32v2-hungary.var
	echo 'Content-language: nl' >> go32v2-hungary.var
	echo 'Content-type: text/html' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
	echo 'URI: go32v2-hungary.html.pl' >> go32v2-hungary.var
	echo 'Content-language: pl' >> go32v2-hungary.var
	echo 'Content-type: text/html' >> go32v2-hungary.var
	echo >> go32v2-hungary.var
linux-hungary.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-hungary.html.de linux.adp
linux-hungary.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-hungary.html.en linux.adp
linux-hungary.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-hungary.html.fr linux.adp
linux-hungary.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-hungary.html.id linux.adp
linux-hungary.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-hungary.html.nl linux.adp
linux-hungary.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-hungary.html.pl linux.adp

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
netware-hungary.html.de: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o netware-hungary.html.de netware.adp
netware-hungary.html.en: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o netware-hungary.html.en netware.adp
netware-hungary.html.fr: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o netware-hungary.html.fr netware.adp
netware-hungary.html.id: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o netware-hungary.html.id netware.adp
netware-hungary.html.nl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o netware-hungary.html.nl netware.adp
netware-hungary.html.pl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o netware-hungary.html.pl netware.adp

netware-hungary.var: gen_makefile.conf
	echo > netware-hungary.var
	echo 'URI: netware-hungary.html.de' >> netware-hungary.var
	echo 'Content-language: de' >> netware-hungary.var
	echo 'Content-type: text/html' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.en' >> netware-hungary.var
	echo 'Content-language: en' >> netware-hungary.var
	echo 'Content-type: text/html' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.fr' >> netware-hungary.var
	echo 'Content-language: fr' >> netware-hungary.var
	echo 'Content-type: text/html' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.id' >> netware-hungary.var
	echo 'Content-language: id' >> netware-hungary.var
	echo 'Content-type: text/html' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.nl' >> netware-hungary.var
	echo 'Content-language: nl' >> netware-hungary.var
	echo 'Content-type: text/html' >> netware-hungary.var
	echo >> netware-hungary.var
	echo 'URI: netware-hungary.html.pl' >> netware-hungary.var
	echo 'Content-language: pl' >> netware-hungary.var
	echo 'Content-type: text/html' >> netware-hungary.var
	echo >> netware-hungary.var
os2-hungary.html.de: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o os2-hungary.html.de os2.adp
os2-hungary.html.en: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o os2-hungary.html.en os2.adp
os2-hungary.html.fr: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o os2-hungary.html.fr os2.adp
os2-hungary.html.id: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o os2-hungary.html.id os2.adp
os2-hungary.html.nl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o os2-hungary.html.nl os2.adp
os2-hungary.html.pl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o os2-hungary.html.pl os2.adp

os2-hungary.var: gen_makefile.conf
	echo > os2-hungary.var
	echo 'URI: os2-hungary.html.de' >> os2-hungary.var
	echo 'Content-language: de' >> os2-hungary.var
	echo 'Content-type: text/html' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.en' >> os2-hungary.var
	echo 'Content-language: en' >> os2-hungary.var
	echo 'Content-type: text/html' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.fr' >> os2-hungary.var
	echo 'Content-language: fr' >> os2-hungary.var
	echo 'Content-type: text/html' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.id' >> os2-hungary.var
	echo 'Content-language: id' >> os2-hungary.var
	echo 'Content-type: text/html' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.nl' >> os2-hungary.var
	echo 'Content-language: nl' >> os2-hungary.var
	echo 'Content-type: text/html' >> os2-hungary.var
	echo >> os2-hungary.var
	echo 'URI: os2-hungary.html.pl' >> os2-hungary.var
	echo 'Content-language: pl' >> os2-hungary.var
	echo 'Content-type: text/html' >> os2-hungary.var
	echo >> os2-hungary.var
win32-hungary.html.de: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o win32-hungary.html.de win32.adp
win32-hungary.html.en: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o win32-hungary.html.en win32.adp
win32-hungary.html.fr: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o win32-hungary.html.fr win32.adp
win32-hungary.html.id: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o win32-hungary.html.id win32.adp
win32-hungary.html.nl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o win32-hungary.html.nl win32.adp
win32-hungary.html.pl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.hu.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o win32-hungary.html.pl win32.adp

win32-hungary.var: gen_makefile.conf
	echo > win32-hungary.var
	echo 'URI: win32-hungary.html.de' >> win32-hungary.var
	echo 'Content-language: de' >> win32-hungary.var
	echo 'Content-type: text/html' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.en' >> win32-hungary.var
	echo 'Content-language: en' >> win32-hungary.var
	echo 'Content-type: text/html' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.fr' >> win32-hungary.var
	echo 'Content-language: fr' >> win32-hungary.var
	echo 'Content-type: text/html' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.id' >> win32-hungary.var
	echo 'Content-language: id' >> win32-hungary.var
	echo 'Content-type: text/html' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.nl' >> win32-hungary.var
	echo 'Content-language: nl' >> win32-hungary.var
	echo 'Content-type: text/html' >> win32-hungary.var
	echo >> win32-hungary.var
	echo 'URI: win32-hungary.html.pl' >> win32-hungary.var
	echo 'Content-language: pl' >> win32-hungary.var
	echo 'Content-type: text/html' >> win32-hungary.var
	echo >> win32-hungary.var
freebsd-israel.html.de: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o freebsd-israel.html.de freebsd.adp
freebsd-israel.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o freebsd-israel.html.en freebsd.adp
freebsd-israel.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o freebsd-israel.html.fr freebsd.adp
freebsd-israel.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o freebsd-israel.html.id freebsd.adp
freebsd-israel.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o freebsd-israel.html.nl freebsd.adp
freebsd-israel.html.pl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o freebsd-israel.html.pl freebsd.adp

freebsd-israel.var: gen_makefile.conf
	echo > freebsd-israel.var
	echo 'URI: freebsd-israel.html.de' >> freebsd-israel.var
	echo 'Content-language: de' >> freebsd-israel.var
	echo 'Content-type: text/html' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.en' >> freebsd-israel.var
	echo 'Content-language: en' >> freebsd-israel.var
	echo 'Content-type: text/html' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.fr' >> freebsd-israel.var
	echo 'Content-language: fr' >> freebsd-israel.var
	echo 'Content-type: text/html' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.id' >> freebsd-israel.var
	echo 'Content-language: id' >> freebsd-israel.var
	echo 'Content-type: text/html' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.nl' >> freebsd-israel.var
	echo 'Content-language: nl' >> freebsd-israel.var
	echo 'Content-type: text/html' >> freebsd-israel.var
	echo >> freebsd-israel.var
	echo 'URI: freebsd-israel.html.pl' >> freebsd-israel.var
	echo 'Content-language: pl' >> freebsd-israel.var
	echo 'Content-type: text/html' >> freebsd-israel.var
	echo >> freebsd-israel.var
go32v2-israel.html.de: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o go32v2-israel.html.de go32v2.adp
go32v2-israel.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o go32v2-israel.html.en go32v2.adp
go32v2-israel.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o go32v2-israel.html.fr go32v2.adp
go32v2-israel.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o go32v2-israel.html.id go32v2.adp
go32v2-israel.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o go32v2-israel.html.nl go32v2.adp
go32v2-israel.html.pl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o go32v2-israel.html.pl go32v2.adp

go32v2-israel.var: gen_makefile.conf
	echo > go32v2-israel.var
	echo 'URI: go32v2-israel.html.de' >> go32v2-israel.var
	echo 'Content-language: de' >> go32v2-israel.var
	echo 'Content-type: text/html' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.en' >> go32v2-israel.var
	echo 'Content-language: en' >> go32v2-israel.var
	echo 'Content-type: text/html' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.fr' >> go32v2-israel.var
	echo 'Content-language: fr' >> go32v2-israel.var
	echo 'Content-type: text/html' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.id' >> go32v2-israel.var
	echo 'Content-language: id' >> go32v2-israel.var
	echo 'Content-type: text/html' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.nl' >> go32v2-israel.var
	echo 'Content-language: nl' >> go32v2-israel.var
	echo 'Content-type: text/html' >> go32v2-israel.var
	echo >> go32v2-israel.var
	echo 'URI: go32v2-israel.html.pl' >> go32v2-israel.var
	echo 'Content-language: pl' >> go32v2-israel.var
	echo 'Content-type: text/html' >> go32v2-israel.var
	echo >> go32v2-israel.var
linux-israel.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-israel.html.de linux.adp
linux-israel.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-israel.html.en linux.adp
linux-israel.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-israel.html.fr linux.adp
linux-israel.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-israel.html.id linux.adp
linux-israel.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-israel.html.nl linux.adp
linux-israel.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-israel.html.pl linux.adp

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
netware-israel.html.de: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o netware-israel.html.de netware.adp
netware-israel.html.en: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o netware-israel.html.en netware.adp
netware-israel.html.fr: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o netware-israel.html.fr netware.adp
netware-israel.html.id: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o netware-israel.html.id netware.adp
netware-israel.html.nl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o netware-israel.html.nl netware.adp
netware-israel.html.pl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o netware-israel.html.pl netware.adp

netware-israel.var: gen_makefile.conf
	echo > netware-israel.var
	echo 'URI: netware-israel.html.de' >> netware-israel.var
	echo 'Content-language: de' >> netware-israel.var
	echo 'Content-type: text/html' >> netware-israel.var
	echo >> netware-israel.var
	echo 'URI: netware-israel.html.en' >> netware-israel.var
	echo 'Content-language: en' >> netware-israel.var
	echo 'Content-type: text/html' >> netware-israel.var
	echo >> netware-israel.var
	echo 'URI: netware-israel.html.fr' >> netware-israel.var
	echo 'Content-language: fr' >> netware-israel.var
	echo 'Content-type: text/html' >> netware-israel.var
	echo >> netware-israel.var
	echo 'URI: netware-israel.html.id' >> netware-israel.var
	echo 'Content-language: id' >> netware-israel.var
	echo 'Content-type: text/html' >> netware-israel.var
	echo >> netware-israel.var
	echo 'URI: netware-israel.html.nl' >> netware-israel.var
	echo 'Content-language: nl' >> netware-israel.var
	echo 'Content-type: text/html' >> netware-israel.var
	echo >> netware-israel.var
	echo 'URI: netware-israel.html.pl' >> netware-israel.var
	echo 'Content-language: pl' >> netware-israel.var
	echo 'Content-type: text/html' >> netware-israel.var
	echo >> netware-israel.var
os2-israel.html.de: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o os2-israel.html.de os2.adp
os2-israel.html.en: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o os2-israel.html.en os2.adp
os2-israel.html.fr: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o os2-israel.html.fr os2.adp
os2-israel.html.id: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o os2-israel.html.id os2.adp
os2-israel.html.nl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o os2-israel.html.nl os2.adp
os2-israel.html.pl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o os2-israel.html.pl os2.adp

os2-israel.var: gen_makefile.conf
	echo > os2-israel.var
	echo 'URI: os2-israel.html.de' >> os2-israel.var
	echo 'Content-language: de' >> os2-israel.var
	echo 'Content-type: text/html' >> os2-israel.var
	echo >> os2-israel.var
	echo 'URI: os2-israel.html.en' >> os2-israel.var
	echo 'Content-language: en' >> os2-israel.var
	echo 'Content-type: text/html' >> os2-israel.var
	echo >> os2-israel.var
	echo 'URI: os2-israel.html.fr' >> os2-israel.var
	echo 'Content-language: fr' >> os2-israel.var
	echo 'Content-type: text/html' >> os2-israel.var
	echo >> os2-israel.var
	echo 'URI: os2-israel.html.id' >> os2-israel.var
	echo 'Content-language: id' >> os2-israel.var
	echo 'Content-type: text/html' >> os2-israel.var
	echo >> os2-israel.var
	echo 'URI: os2-israel.html.nl' >> os2-israel.var
	echo 'Content-language: nl' >> os2-israel.var
	echo 'Content-type: text/html' >> os2-israel.var
	echo >> os2-israel.var
	echo 'URI: os2-israel.html.pl' >> os2-israel.var
	echo 'Content-language: pl' >> os2-israel.var
	echo 'Content-type: text/html' >> os2-israel.var
	echo >> os2-israel.var
win32-israel.html.de: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o win32-israel.html.de win32.adp
win32-israel.html.en: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o win32-israel.html.en win32.adp
win32-israel.html.fr: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o win32-israel.html.fr win32.adp
win32-israel.html.id: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o win32-israel.html.id win32.adp
win32-israel.html.nl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o win32-israel.html.nl win32.adp
win32-israel.html.pl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=http://mirror.mirimar.net/freepascal/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o win32-israel.html.pl win32.adp

win32-israel.var: gen_makefile.conf
	echo > win32-israel.var
	echo 'URI: win32-israel.html.de' >> win32-israel.var
	echo 'Content-language: de' >> win32-israel.var
	echo 'Content-type: text/html' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.en' >> win32-israel.var
	echo 'Content-language: en' >> win32-israel.var
	echo 'Content-type: text/html' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.fr' >> win32-israel.var
	echo 'Content-language: fr' >> win32-israel.var
	echo 'Content-type: text/html' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.id' >> win32-israel.var
	echo 'Content-language: id' >> win32-israel.var
	echo 'Content-type: text/html' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.nl' >> win32-israel.var
	echo 'Content-language: nl' >> win32-israel.var
	echo 'Content-type: text/html' >> win32-israel.var
	echo >> win32-israel.var
	echo 'URI: win32-israel.html.pl' >> win32-israel.var
	echo 'Content-language: pl' >> win32-israel.var
	echo 'Content-type: text/html' >> win32-israel.var
	echo >> win32-israel.var
freebsd-netherlands.html.de: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o freebsd-netherlands.html.de freebsd.adp
freebsd-netherlands.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o freebsd-netherlands.html.en freebsd.adp
freebsd-netherlands.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o freebsd-netherlands.html.fr freebsd.adp
freebsd-netherlands.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o freebsd-netherlands.html.id freebsd.adp
freebsd-netherlands.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o freebsd-netherlands.html.nl freebsd.adp
freebsd-netherlands.html.pl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o freebsd-netherlands.html.pl freebsd.adp

freebsd-netherlands.var: gen_makefile.conf
	echo > freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.de' >> freebsd-netherlands.var
	echo 'Content-language: de' >> freebsd-netherlands.var
	echo 'Content-type: text/html' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.en' >> freebsd-netherlands.var
	echo 'Content-language: en' >> freebsd-netherlands.var
	echo 'Content-type: text/html' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.fr' >> freebsd-netherlands.var
	echo 'Content-language: fr' >> freebsd-netherlands.var
	echo 'Content-type: text/html' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.id' >> freebsd-netherlands.var
	echo 'Content-language: id' >> freebsd-netherlands.var
	echo 'Content-type: text/html' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.nl' >> freebsd-netherlands.var
	echo 'Content-language: nl' >> freebsd-netherlands.var
	echo 'Content-type: text/html' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
	echo 'URI: freebsd-netherlands.html.pl' >> freebsd-netherlands.var
	echo 'Content-language: pl' >> freebsd-netherlands.var
	echo 'Content-type: text/html' >> freebsd-netherlands.var
	echo >> freebsd-netherlands.var
go32v2-netherlands.html.de: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o go32v2-netherlands.html.de go32v2.adp
go32v2-netherlands.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o go32v2-netherlands.html.en go32v2.adp
go32v2-netherlands.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o go32v2-netherlands.html.fr go32v2.adp
go32v2-netherlands.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o go32v2-netherlands.html.id go32v2.adp
go32v2-netherlands.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o go32v2-netherlands.html.nl go32v2.adp
go32v2-netherlands.html.pl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o go32v2-netherlands.html.pl go32v2.adp

go32v2-netherlands.var: gen_makefile.conf
	echo > go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.de' >> go32v2-netherlands.var
	echo 'Content-language: de' >> go32v2-netherlands.var
	echo 'Content-type: text/html' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.en' >> go32v2-netherlands.var
	echo 'Content-language: en' >> go32v2-netherlands.var
	echo 'Content-type: text/html' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.fr' >> go32v2-netherlands.var
	echo 'Content-language: fr' >> go32v2-netherlands.var
	echo 'Content-type: text/html' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.id' >> go32v2-netherlands.var
	echo 'Content-language: id' >> go32v2-netherlands.var
	echo 'Content-type: text/html' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.nl' >> go32v2-netherlands.var
	echo 'Content-language: nl' >> go32v2-netherlands.var
	echo 'Content-type: text/html' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
	echo 'URI: go32v2-netherlands.html.pl' >> go32v2-netherlands.var
	echo 'Content-language: pl' >> go32v2-netherlands.var
	echo 'Content-type: text/html' >> go32v2-netherlands.var
	echo >> go32v2-netherlands.var
linux-netherlands.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-netherlands.html.de linux.adp
linux-netherlands.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-netherlands.html.en linux.adp
linux-netherlands.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-netherlands.html.fr linux.adp
linux-netherlands.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-netherlands.html.id linux.adp
linux-netherlands.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-netherlands.html.nl linux.adp
linux-netherlands.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-netherlands.html.pl linux.adp

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
netware-netherlands.html.de: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o netware-netherlands.html.de netware.adp
netware-netherlands.html.en: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o netware-netherlands.html.en netware.adp
netware-netherlands.html.fr: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o netware-netherlands.html.fr netware.adp
netware-netherlands.html.id: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o netware-netherlands.html.id netware.adp
netware-netherlands.html.nl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o netware-netherlands.html.nl netware.adp
netware-netherlands.html.pl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o netware-netherlands.html.pl netware.adp

netware-netherlands.var: gen_makefile.conf
	echo > netware-netherlands.var
	echo 'URI: netware-netherlands.html.de' >> netware-netherlands.var
	echo 'Content-language: de' >> netware-netherlands.var
	echo 'Content-type: text/html' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.en' >> netware-netherlands.var
	echo 'Content-language: en' >> netware-netherlands.var
	echo 'Content-type: text/html' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.fr' >> netware-netherlands.var
	echo 'Content-language: fr' >> netware-netherlands.var
	echo 'Content-type: text/html' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.id' >> netware-netherlands.var
	echo 'Content-language: id' >> netware-netherlands.var
	echo 'Content-type: text/html' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.nl' >> netware-netherlands.var
	echo 'Content-language: nl' >> netware-netherlands.var
	echo 'Content-type: text/html' >> netware-netherlands.var
	echo >> netware-netherlands.var
	echo 'URI: netware-netherlands.html.pl' >> netware-netherlands.var
	echo 'Content-language: pl' >> netware-netherlands.var
	echo 'Content-type: text/html' >> netware-netherlands.var
	echo >> netware-netherlands.var
os2-netherlands.html.de: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o os2-netherlands.html.de os2.adp
os2-netherlands.html.en: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o os2-netherlands.html.en os2.adp
os2-netherlands.html.fr: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o os2-netherlands.html.fr os2.adp
os2-netherlands.html.id: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o os2-netherlands.html.id os2.adp
os2-netherlands.html.nl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o os2-netherlands.html.nl os2.adp
os2-netherlands.html.pl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o os2-netherlands.html.pl os2.adp

os2-netherlands.var: gen_makefile.conf
	echo > os2-netherlands.var
	echo 'URI: os2-netherlands.html.de' >> os2-netherlands.var
	echo 'Content-language: de' >> os2-netherlands.var
	echo 'Content-type: text/html' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.en' >> os2-netherlands.var
	echo 'Content-language: en' >> os2-netherlands.var
	echo 'Content-type: text/html' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.fr' >> os2-netherlands.var
	echo 'Content-language: fr' >> os2-netherlands.var
	echo 'Content-type: text/html' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.id' >> os2-netherlands.var
	echo 'Content-language: id' >> os2-netherlands.var
	echo 'Content-type: text/html' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.nl' >> os2-netherlands.var
	echo 'Content-language: nl' >> os2-netherlands.var
	echo 'Content-type: text/html' >> os2-netherlands.var
	echo >> os2-netherlands.var
	echo 'URI: os2-netherlands.html.pl' >> os2-netherlands.var
	echo 'Content-language: pl' >> os2-netherlands.var
	echo 'Content-type: text/html' >> os2-netherlands.var
	echo >> os2-netherlands.var
win32-netherlands.html.de: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o win32-netherlands.html.de win32.adp
win32-netherlands.html.en: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o win32-netherlands.html.en win32.adp
win32-netherlands.html.fr: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o win32-netherlands.html.fr win32.adp
win32-netherlands.html.id: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o win32-netherlands.html.id win32.adp
win32-netherlands.html.nl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o win32-netherlands.html.nl win32.adp
win32-netherlands.html.pl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://freepascal.stack.nl/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o win32-netherlands.html.pl win32.adp

win32-netherlands.var: gen_makefile.conf
	echo > win32-netherlands.var
	echo 'URI: win32-netherlands.html.de' >> win32-netherlands.var
	echo 'Content-language: de' >> win32-netherlands.var
	echo 'Content-type: text/html' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.en' >> win32-netherlands.var
	echo 'Content-language: en' >> win32-netherlands.var
	echo 'Content-type: text/html' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.fr' >> win32-netherlands.var
	echo 'Content-language: fr' >> win32-netherlands.var
	echo 'Content-type: text/html' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.id' >> win32-netherlands.var
	echo 'Content-language: id' >> win32-netherlands.var
	echo 'Content-type: text/html' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.nl' >> win32-netherlands.var
	echo 'Content-language: nl' >> win32-netherlands.var
	echo 'Content-type: text/html' >> win32-netherlands.var
	echo >> win32-netherlands.var
	echo 'URI: win32-netherlands.html.pl' >> win32-netherlands.var
	echo 'Content-language: pl' >> win32-netherlands.var
	echo 'Content-type: text/html' >> win32-netherlands.var
	echo >> win32-netherlands.var
freebsd-norway.html.de: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o freebsd-norway.html.de freebsd.adp
freebsd-norway.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o freebsd-norway.html.en freebsd.adp
freebsd-norway.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o freebsd-norway.html.fr freebsd.adp
freebsd-norway.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o freebsd-norway.html.id freebsd.adp
freebsd-norway.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o freebsd-norway.html.nl freebsd.adp
freebsd-norway.html.pl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o freebsd-norway.html.pl freebsd.adp

freebsd-norway.var: gen_makefile.conf
	echo > freebsd-norway.var
	echo 'URI: freebsd-norway.html.de' >> freebsd-norway.var
	echo 'Content-language: de' >> freebsd-norway.var
	echo 'Content-type: text/html' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.en' >> freebsd-norway.var
	echo 'Content-language: en' >> freebsd-norway.var
	echo 'Content-type: text/html' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.fr' >> freebsd-norway.var
	echo 'Content-language: fr' >> freebsd-norway.var
	echo 'Content-type: text/html' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.id' >> freebsd-norway.var
	echo 'Content-language: id' >> freebsd-norway.var
	echo 'Content-type: text/html' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.nl' >> freebsd-norway.var
	echo 'Content-language: nl' >> freebsd-norway.var
	echo 'Content-type: text/html' >> freebsd-norway.var
	echo >> freebsd-norway.var
	echo 'URI: freebsd-norway.html.pl' >> freebsd-norway.var
	echo 'Content-language: pl' >> freebsd-norway.var
	echo 'Content-type: text/html' >> freebsd-norway.var
	echo >> freebsd-norway.var
go32v2-norway.html.de: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o go32v2-norway.html.de go32v2.adp
go32v2-norway.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o go32v2-norway.html.en go32v2.adp
go32v2-norway.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o go32v2-norway.html.fr go32v2.adp
go32v2-norway.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o go32v2-norway.html.id go32v2.adp
go32v2-norway.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o go32v2-norway.html.nl go32v2.adp
go32v2-norway.html.pl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o go32v2-norway.html.pl go32v2.adp

go32v2-norway.var: gen_makefile.conf
	echo > go32v2-norway.var
	echo 'URI: go32v2-norway.html.de' >> go32v2-norway.var
	echo 'Content-language: de' >> go32v2-norway.var
	echo 'Content-type: text/html' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.en' >> go32v2-norway.var
	echo 'Content-language: en' >> go32v2-norway.var
	echo 'Content-type: text/html' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.fr' >> go32v2-norway.var
	echo 'Content-language: fr' >> go32v2-norway.var
	echo 'Content-type: text/html' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.id' >> go32v2-norway.var
	echo 'Content-language: id' >> go32v2-norway.var
	echo 'Content-type: text/html' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.nl' >> go32v2-norway.var
	echo 'Content-language: nl' >> go32v2-norway.var
	echo 'Content-type: text/html' >> go32v2-norway.var
	echo >> go32v2-norway.var
	echo 'URI: go32v2-norway.html.pl' >> go32v2-norway.var
	echo 'Content-language: pl' >> go32v2-norway.var
	echo 'Content-type: text/html' >> go32v2-norway.var
	echo >> go32v2-norway.var
linux-norway.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-norway.html.de linux.adp
linux-norway.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-norway.html.en linux.adp
linux-norway.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-norway.html.fr linux.adp
linux-norway.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-norway.html.id linux.adp
linux-norway.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-norway.html.nl linux.adp
linux-norway.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-norway.html.pl linux.adp

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
netware-norway.html.de: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o netware-norway.html.de netware.adp
netware-norway.html.en: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o netware-norway.html.en netware.adp
netware-norway.html.fr: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o netware-norway.html.fr netware.adp
netware-norway.html.id: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o netware-norway.html.id netware.adp
netware-norway.html.nl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o netware-norway.html.nl netware.adp
netware-norway.html.pl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o netware-norway.html.pl netware.adp

netware-norway.var: gen_makefile.conf
	echo > netware-norway.var
	echo 'URI: netware-norway.html.de' >> netware-norway.var
	echo 'Content-language: de' >> netware-norway.var
	echo 'Content-type: text/html' >> netware-norway.var
	echo >> netware-norway.var
	echo 'URI: netware-norway.html.en' >> netware-norway.var
	echo 'Content-language: en' >> netware-norway.var
	echo 'Content-type: text/html' >> netware-norway.var
	echo >> netware-norway.var
	echo 'URI: netware-norway.html.fr' >> netware-norway.var
	echo 'Content-language: fr' >> netware-norway.var
	echo 'Content-type: text/html' >> netware-norway.var
	echo >> netware-norway.var
	echo 'URI: netware-norway.html.id' >> netware-norway.var
	echo 'Content-language: id' >> netware-norway.var
	echo 'Content-type: text/html' >> netware-norway.var
	echo >> netware-norway.var
	echo 'URI: netware-norway.html.nl' >> netware-norway.var
	echo 'Content-language: nl' >> netware-norway.var
	echo 'Content-type: text/html' >> netware-norway.var
	echo >> netware-norway.var
	echo 'URI: netware-norway.html.pl' >> netware-norway.var
	echo 'Content-language: pl' >> netware-norway.var
	echo 'Content-type: text/html' >> netware-norway.var
	echo >> netware-norway.var
os2-norway.html.de: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o os2-norway.html.de os2.adp
os2-norway.html.en: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o os2-norway.html.en os2.adp
os2-norway.html.fr: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o os2-norway.html.fr os2.adp
os2-norway.html.id: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o os2-norway.html.id os2.adp
os2-norway.html.nl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o os2-norway.html.nl os2.adp
os2-norway.html.pl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o os2-norway.html.pl os2.adp

os2-norway.var: gen_makefile.conf
	echo > os2-norway.var
	echo 'URI: os2-norway.html.de' >> os2-norway.var
	echo 'Content-language: de' >> os2-norway.var
	echo 'Content-type: text/html' >> os2-norway.var
	echo >> os2-norway.var
	echo 'URI: os2-norway.html.en' >> os2-norway.var
	echo 'Content-language: en' >> os2-norway.var
	echo 'Content-type: text/html' >> os2-norway.var
	echo >> os2-norway.var
	echo 'URI: os2-norway.html.fr' >> os2-norway.var
	echo 'Content-language: fr' >> os2-norway.var
	echo 'Content-type: text/html' >> os2-norway.var
	echo >> os2-norway.var
	echo 'URI: os2-norway.html.id' >> os2-norway.var
	echo 'Content-language: id' >> os2-norway.var
	echo 'Content-type: text/html' >> os2-norway.var
	echo >> os2-norway.var
	echo 'URI: os2-norway.html.nl' >> os2-norway.var
	echo 'Content-language: nl' >> os2-norway.var
	echo 'Content-type: text/html' >> os2-norway.var
	echo >> os2-norway.var
	echo 'URI: os2-norway.html.pl' >> os2-norway.var
	echo 'Content-language: pl' >> os2-norway.var
	echo 'Content-type: text/html' >> os2-norway.var
	echo >> os2-norway.var
win32-norway.html.de: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o win32-norway.html.de win32.adp
win32-norway.html.en: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o win32-norway.html.en win32.adp
win32-norway.html.fr: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o win32-norway.html.fr win32.adp
win32-norway.html.id: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o win32-norway.html.id win32.adp
win32-norway.html.nl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o win32-norway.html.nl win32.adp
win32-norway.html.pl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.no.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o win32-norway.html.pl win32.adp

win32-norway.var: gen_makefile.conf
	echo > win32-norway.var
	echo 'URI: win32-norway.html.de' >> win32-norway.var
	echo 'Content-language: de' >> win32-norway.var
	echo 'Content-type: text/html' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.en' >> win32-norway.var
	echo 'Content-language: en' >> win32-norway.var
	echo 'Content-type: text/html' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.fr' >> win32-norway.var
	echo 'Content-language: fr' >> win32-norway.var
	echo 'Content-type: text/html' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.id' >> win32-norway.var
	echo 'Content-language: id' >> win32-norway.var
	echo 'Content-type: text/html' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.nl' >> win32-norway.var
	echo 'Content-language: nl' >> win32-norway.var
	echo 'Content-type: text/html' >> win32-norway.var
	echo >> win32-norway.var
	echo 'URI: win32-norway.html.pl' >> win32-norway.var
	echo 'Content-language: pl' >> win32-norway.var
	echo 'Content-type: text/html' >> win32-norway.var
	echo >> win32-norway.var
freebsd-russia.html.de: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o freebsd-russia.html.de freebsd.adp
freebsd-russia.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o freebsd-russia.html.en freebsd.adp
freebsd-russia.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o freebsd-russia.html.fr freebsd.adp
freebsd-russia.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o freebsd-russia.html.id freebsd.adp
freebsd-russia.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o freebsd-russia.html.nl freebsd.adp
freebsd-russia.html.pl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o freebsd-russia.html.pl freebsd.adp

freebsd-russia.var: gen_makefile.conf
	echo > freebsd-russia.var
	echo 'URI: freebsd-russia.html.de' >> freebsd-russia.var
	echo 'Content-language: de' >> freebsd-russia.var
	echo 'Content-type: text/html' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.en' >> freebsd-russia.var
	echo 'Content-language: en' >> freebsd-russia.var
	echo 'Content-type: text/html' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.fr' >> freebsd-russia.var
	echo 'Content-language: fr' >> freebsd-russia.var
	echo 'Content-type: text/html' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.id' >> freebsd-russia.var
	echo 'Content-language: id' >> freebsd-russia.var
	echo 'Content-type: text/html' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.nl' >> freebsd-russia.var
	echo 'Content-language: nl' >> freebsd-russia.var
	echo 'Content-type: text/html' >> freebsd-russia.var
	echo >> freebsd-russia.var
	echo 'URI: freebsd-russia.html.pl' >> freebsd-russia.var
	echo 'Content-language: pl' >> freebsd-russia.var
	echo 'Content-type: text/html' >> freebsd-russia.var
	echo >> freebsd-russia.var
go32v2-russia.html.de: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o go32v2-russia.html.de go32v2.adp
go32v2-russia.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o go32v2-russia.html.en go32v2.adp
go32v2-russia.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o go32v2-russia.html.fr go32v2.adp
go32v2-russia.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o go32v2-russia.html.id go32v2.adp
go32v2-russia.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o go32v2-russia.html.nl go32v2.adp
go32v2-russia.html.pl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o go32v2-russia.html.pl go32v2.adp

go32v2-russia.var: gen_makefile.conf
	echo > go32v2-russia.var
	echo 'URI: go32v2-russia.html.de' >> go32v2-russia.var
	echo 'Content-language: de' >> go32v2-russia.var
	echo 'Content-type: text/html' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.en' >> go32v2-russia.var
	echo 'Content-language: en' >> go32v2-russia.var
	echo 'Content-type: text/html' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.fr' >> go32v2-russia.var
	echo 'Content-language: fr' >> go32v2-russia.var
	echo 'Content-type: text/html' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.id' >> go32v2-russia.var
	echo 'Content-language: id' >> go32v2-russia.var
	echo 'Content-type: text/html' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.nl' >> go32v2-russia.var
	echo 'Content-language: nl' >> go32v2-russia.var
	echo 'Content-type: text/html' >> go32v2-russia.var
	echo >> go32v2-russia.var
	echo 'URI: go32v2-russia.html.pl' >> go32v2-russia.var
	echo 'Content-language: pl' >> go32v2-russia.var
	echo 'Content-type: text/html' >> go32v2-russia.var
	echo >> go32v2-russia.var
linux-russia.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-russia.html.de linux.adp
linux-russia.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-russia.html.en linux.adp
linux-russia.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-russia.html.fr linux.adp
linux-russia.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-russia.html.id linux.adp
linux-russia.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-russia.html.nl linux.adp
linux-russia.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-russia.html.pl linux.adp

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
netware-russia.html.de: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o netware-russia.html.de netware.adp
netware-russia.html.en: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o netware-russia.html.en netware.adp
netware-russia.html.fr: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o netware-russia.html.fr netware.adp
netware-russia.html.id: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o netware-russia.html.id netware.adp
netware-russia.html.nl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o netware-russia.html.nl netware.adp
netware-russia.html.pl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o netware-russia.html.pl netware.adp

netware-russia.var: gen_makefile.conf
	echo > netware-russia.var
	echo 'URI: netware-russia.html.de' >> netware-russia.var
	echo 'Content-language: de' >> netware-russia.var
	echo 'Content-type: text/html' >> netware-russia.var
	echo >> netware-russia.var
	echo 'URI: netware-russia.html.en' >> netware-russia.var
	echo 'Content-language: en' >> netware-russia.var
	echo 'Content-type: text/html' >> netware-russia.var
	echo >> netware-russia.var
	echo 'URI: netware-russia.html.fr' >> netware-russia.var
	echo 'Content-language: fr' >> netware-russia.var
	echo 'Content-type: text/html' >> netware-russia.var
	echo >> netware-russia.var
	echo 'URI: netware-russia.html.id' >> netware-russia.var
	echo 'Content-language: id' >> netware-russia.var
	echo 'Content-type: text/html' >> netware-russia.var
	echo >> netware-russia.var
	echo 'URI: netware-russia.html.nl' >> netware-russia.var
	echo 'Content-language: nl' >> netware-russia.var
	echo 'Content-type: text/html' >> netware-russia.var
	echo >> netware-russia.var
	echo 'URI: netware-russia.html.pl' >> netware-russia.var
	echo 'Content-language: pl' >> netware-russia.var
	echo 'Content-type: text/html' >> netware-russia.var
	echo >> netware-russia.var
os2-russia.html.de: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o os2-russia.html.de os2.adp
os2-russia.html.en: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o os2-russia.html.en os2.adp
os2-russia.html.fr: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o os2-russia.html.fr os2.adp
os2-russia.html.id: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o os2-russia.html.id os2.adp
os2-russia.html.nl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o os2-russia.html.nl os2.adp
os2-russia.html.pl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o os2-russia.html.pl os2.adp

os2-russia.var: gen_makefile.conf
	echo > os2-russia.var
	echo 'URI: os2-russia.html.de' >> os2-russia.var
	echo 'Content-language: de' >> os2-russia.var
	echo 'Content-type: text/html' >> os2-russia.var
	echo >> os2-russia.var
	echo 'URI: os2-russia.html.en' >> os2-russia.var
	echo 'Content-language: en' >> os2-russia.var
	echo 'Content-type: text/html' >> os2-russia.var
	echo >> os2-russia.var
	echo 'URI: os2-russia.html.fr' >> os2-russia.var
	echo 'Content-language: fr' >> os2-russia.var
	echo 'Content-type: text/html' >> os2-russia.var
	echo >> os2-russia.var
	echo 'URI: os2-russia.html.id' >> os2-russia.var
	echo 'Content-language: id' >> os2-russia.var
	echo 'Content-type: text/html' >> os2-russia.var
	echo >> os2-russia.var
	echo 'URI: os2-russia.html.nl' >> os2-russia.var
	echo 'Content-language: nl' >> os2-russia.var
	echo 'Content-type: text/html' >> os2-russia.var
	echo >> os2-russia.var
	echo 'URI: os2-russia.html.pl' >> os2-russia.var
	echo 'Content-language: pl' >> os2-russia.var
	echo 'Content-type: text/html' >> os2-russia.var
	echo >> os2-russia.var
win32-russia.html.de: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o win32-russia.html.de win32.adp
win32-russia.html.en: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o win32-russia.html.en win32.adp
win32-russia.html.fr: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o win32-russia.html.fr win32.adp
win32-russia.html.id: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o win32-russia.html.id win32.adp
win32-russia.html.nl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o win32-russia.html.nl win32.adp
win32-russia.html.pl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.chg.ru/pub/lang/pascal/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o win32-russia.html.pl win32.adp

win32-russia.var: gen_makefile.conf
	echo > win32-russia.var
	echo 'URI: win32-russia.html.de' >> win32-russia.var
	echo 'Content-language: de' >> win32-russia.var
	echo 'Content-type: text/html' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.en' >> win32-russia.var
	echo 'Content-language: en' >> win32-russia.var
	echo 'Content-type: text/html' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.fr' >> win32-russia.var
	echo 'Content-language: fr' >> win32-russia.var
	echo 'Content-type: text/html' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.id' >> win32-russia.var
	echo 'Content-language: id' >> win32-russia.var
	echo 'Content-type: text/html' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.nl' >> win32-russia.var
	echo 'Content-language: nl' >> win32-russia.var
	echo 'Content-type: text/html' >> win32-russia.var
	echo >> win32-russia.var
	echo 'URI: win32-russia.html.pl' >> win32-russia.var
	echo 'Content-language: pl' >> win32-russia.var
	echo 'Content-type: text/html' >> win32-russia.var
	echo >> win32-russia.var
freebsd-ftp.freepascal.org.html.de: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o freebsd-ftp.freepascal.org.html.de freebsd.adp
freebsd-ftp.freepascal.org.html.en: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o freebsd-ftp.freepascal.org.html.en freebsd.adp
freebsd-ftp.freepascal.org.html.fr: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o freebsd-ftp.freepascal.org.html.fr freebsd.adp
freebsd-ftp.freepascal.org.html.id: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o freebsd-ftp.freepascal.org.html.id freebsd.adp
freebsd-ftp.freepascal.org.html.nl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o freebsd-ftp.freepascal.org.html.nl freebsd.adp
freebsd-ftp.freepascal.org.html.pl: freebsd.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o freebsd-ftp.freepascal.org.html.pl freebsd.adp

freebsd-ftp.freepascal.org.var: gen_makefile.conf
	echo > freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.de' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: de' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.en' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: en' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.fr' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: fr' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.id' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: id' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.nl' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: nl' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
	echo 'URI: freebsd-ftp.freepascal.org.html.pl' >> freebsd-ftp.freepascal.org.var
	echo 'Content-language: pl' >> freebsd-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> freebsd-ftp.freepascal.org.var
	echo >> freebsd-ftp.freepascal.org.var
go32v2-ftp.freepascal.org.html.de: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o go32v2-ftp.freepascal.org.html.de go32v2.adp
go32v2-ftp.freepascal.org.html.en: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o go32v2-ftp.freepascal.org.html.en go32v2.adp
go32v2-ftp.freepascal.org.html.fr: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o go32v2-ftp.freepascal.org.html.fr go32v2.adp
go32v2-ftp.freepascal.org.html.id: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o go32v2-ftp.freepascal.org.html.id go32v2.adp
go32v2-ftp.freepascal.org.html.nl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o go32v2-ftp.freepascal.org.html.nl go32v2.adp
go32v2-ftp.freepascal.org.html.pl: go32v2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o go32v2-ftp.freepascal.org.html.pl go32v2.adp

go32v2-ftp.freepascal.org.var: gen_makefile.conf
	echo > go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.de' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: de' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.en' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: en' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.fr' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: fr' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.id' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: id' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.nl' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: nl' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
	echo 'URI: go32v2-ftp.freepascal.org.html.pl' >> go32v2-ftp.freepascal.org.var
	echo 'Content-language: pl' >> go32v2-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> go32v2-ftp.freepascal.org.var
	echo >> go32v2-ftp.freepascal.org.var
linux-ftp.freepascal.org.html.de: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o linux-ftp.freepascal.org.html.de linux.adp
linux-ftp.freepascal.org.html.en: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o linux-ftp.freepascal.org.html.en linux.adp
linux-ftp.freepascal.org.html.fr: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o linux-ftp.freepascal.org.html.fr linux.adp
linux-ftp.freepascal.org.html.id: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o linux-ftp.freepascal.org.html.id linux.adp
linux-ftp.freepascal.org.html.nl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o linux-ftp.freepascal.org.html.nl linux.adp
linux-ftp.freepascal.org.html.pl: linux.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o linux-ftp.freepascal.org.html.pl linux.adp

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
netware-ftp.freepascal.org.html.de: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o netware-ftp.freepascal.org.html.de netware.adp
netware-ftp.freepascal.org.html.en: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o netware-ftp.freepascal.org.html.en netware.adp
netware-ftp.freepascal.org.html.fr: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o netware-ftp.freepascal.org.html.fr netware.adp
netware-ftp.freepascal.org.html.id: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o netware-ftp.freepascal.org.html.id netware.adp
netware-ftp.freepascal.org.html.nl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o netware-ftp.freepascal.org.html.nl netware.adp
netware-ftp.freepascal.org.html.pl: netware.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o netware-ftp.freepascal.org.html.pl netware.adp

netware-ftp.freepascal.org.var: gen_makefile.conf
	echo > netware-ftp.freepascal.org.var
	echo 'URI: netware-ftp.freepascal.org.html.de' >> netware-ftp.freepascal.org.var
	echo 'Content-language: de' >> netware-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> netware-ftp.freepascal.org.var
	echo >> netware-ftp.freepascal.org.var
	echo 'URI: netware-ftp.freepascal.org.html.en' >> netware-ftp.freepascal.org.var
	echo 'Content-language: en' >> netware-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> netware-ftp.freepascal.org.var
	echo >> netware-ftp.freepascal.org.var
	echo 'URI: netware-ftp.freepascal.org.html.fr' >> netware-ftp.freepascal.org.var
	echo 'Content-language: fr' >> netware-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> netware-ftp.freepascal.org.var
	echo >> netware-ftp.freepascal.org.var
	echo 'URI: netware-ftp.freepascal.org.html.id' >> netware-ftp.freepascal.org.var
	echo 'Content-language: id' >> netware-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> netware-ftp.freepascal.org.var
	echo >> netware-ftp.freepascal.org.var
	echo 'URI: netware-ftp.freepascal.org.html.nl' >> netware-ftp.freepascal.org.var
	echo 'Content-language: nl' >> netware-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> netware-ftp.freepascal.org.var
	echo >> netware-ftp.freepascal.org.var
	echo 'URI: netware-ftp.freepascal.org.html.pl' >> netware-ftp.freepascal.org.var
	echo 'Content-language: pl' >> netware-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> netware-ftp.freepascal.org.var
	echo >> netware-ftp.freepascal.org.var
os2-ftp.freepascal.org.html.de: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o os2-ftp.freepascal.org.html.de os2.adp
os2-ftp.freepascal.org.html.en: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o os2-ftp.freepascal.org.html.en os2.adp
os2-ftp.freepascal.org.html.fr: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o os2-ftp.freepascal.org.html.fr os2.adp
os2-ftp.freepascal.org.html.id: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o os2-ftp.freepascal.org.html.id os2.adp
os2-ftp.freepascal.org.html.nl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o os2-ftp.freepascal.org.html.nl os2.adp
os2-ftp.freepascal.org.html.pl: os2.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o os2-ftp.freepascal.org.html.pl os2.adp

os2-ftp.freepascal.org.var: gen_makefile.conf
	echo > os2-ftp.freepascal.org.var
	echo 'URI: os2-ftp.freepascal.org.html.de' >> os2-ftp.freepascal.org.var
	echo 'Content-language: de' >> os2-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> os2-ftp.freepascal.org.var
	echo >> os2-ftp.freepascal.org.var
	echo 'URI: os2-ftp.freepascal.org.html.en' >> os2-ftp.freepascal.org.var
	echo 'Content-language: en' >> os2-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> os2-ftp.freepascal.org.var
	echo >> os2-ftp.freepascal.org.var
	echo 'URI: os2-ftp.freepascal.org.html.fr' >> os2-ftp.freepascal.org.var
	echo 'Content-language: fr' >> os2-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> os2-ftp.freepascal.org.var
	echo >> os2-ftp.freepascal.org.var
	echo 'URI: os2-ftp.freepascal.org.html.id' >> os2-ftp.freepascal.org.var
	echo 'Content-language: id' >> os2-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> os2-ftp.freepascal.org.var
	echo >> os2-ftp.freepascal.org.var
	echo 'URI: os2-ftp.freepascal.org.html.nl' >> os2-ftp.freepascal.org.var
	echo 'Content-language: nl' >> os2-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> os2-ftp.freepascal.org.var
	echo >> os2-ftp.freepascal.org.var
	echo 'URI: os2-ftp.freepascal.org.html.pl' >> os2-ftp.freepascal.org.var
	echo 'Content-language: pl' >> os2-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> os2-ftp.freepascal.org.var
	echo >> os2-ftp.freepascal.org.var
win32-ftp.freepascal.org.html.de: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o win32-ftp.freepascal.org.html.de win32.adp
win32-ftp.freepascal.org.html.en: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l en_US -m ../../default-master.adp -o win32-ftp.freepascal.org.html.en win32.adp
win32-ftp.freepascal.org.html.fr: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o win32-ftp.freepascal.org.html.fr win32.adp
win32-ftp.freepascal.org.html.id: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o win32-ftp.freepascal.org.html.id win32.adp
win32-ftp.freepascal.org.html.nl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o win32-ftp.freepascal.org.html.nl win32.adp
win32-ftp.freepascal.org.html.pl: win32.adp ../../default-master.adp ../../site-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p mirror_url=ftp://ftp.freepascal.org/pub/fpc/ -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o win32-ftp.freepascal.org.html.pl win32.adp

win32-ftp.freepascal.org.var: gen_makefile.conf
	echo > win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.de' >> win32-ftp.freepascal.org.var
	echo 'Content-language: de' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.en' >> win32-ftp.freepascal.org.var
	echo 'Content-language: en' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.fr' >> win32-ftp.freepascal.org.var
	echo 'Content-language: fr' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.id' >> win32-ftp.freepascal.org.var
	echo 'Content-language: id' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.nl' >> win32-ftp.freepascal.org.var
	echo 'Content-language: nl' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var
	echo 'URI: win32-ftp.freepascal.org.html.pl' >> win32-ftp.freepascal.org.var
	echo 'Content-language: pl' >> win32-ftp.freepascal.org.var
	echo 'Content-type: text/html' >> win32-ftp.freepascal.org.var
	echo >> win32-ftp.freepascal.org.var

freebsd.html.de: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o freebsd.html.de ../../templatemirror.adp
freebsd.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.adp -l en_US -m ../../default-master.adp -o freebsd.html.en ../../templatemirror.adp
freebsd.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o freebsd.html.fr ../../templatemirror.adp
freebsd.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o freebsd.html.id ../../templatemirror.adp
freebsd.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o freebsd.html.nl ../../templatemirror.adp
freebsd.html.pl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=freebsd -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o freebsd.html.pl ../../templatemirror.adp
freebsd.var: gen_makefile.conf
	echo > freebsd.var
	echo 'URI: freebsd.html.de' >> freebsd.var
	echo 'Content-language: de' >> freebsd.var
	echo 'Content-type: text/html' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.en' >> freebsd.var
	echo 'Content-language: en' >> freebsd.var
	echo 'Content-type: text/html' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.fr' >> freebsd.var
	echo 'Content-language: fr' >> freebsd.var
	echo 'Content-type: text/html' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.id' >> freebsd.var
	echo 'Content-language: id' >> freebsd.var
	echo 'Content-type: text/html' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.nl' >> freebsd.var
	echo 'Content-language: nl' >> freebsd.var
	echo 'Content-type: text/html' >> freebsd.var
	echo >> freebsd.var
	echo 'URI: freebsd.html.pl' >> freebsd.var
	echo 'Content-language: pl' >> freebsd.var
	echo 'Content-type: text/html' >> freebsd.var
	echo >> freebsd.var

go32v2.html.de: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o go32v2.html.de ../../templatemirror.adp
go32v2.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.adp -l en_US -m ../../default-master.adp -o go32v2.html.en ../../templatemirror.adp
go32v2.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o go32v2.html.fr ../../templatemirror.adp
go32v2.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o go32v2.html.id ../../templatemirror.adp
go32v2.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o go32v2.html.nl ../../templatemirror.adp
go32v2.html.pl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=go32v2 -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o go32v2.html.pl ../../templatemirror.adp
go32v2.var: gen_makefile.conf
	echo > go32v2.var
	echo 'URI: go32v2.html.de' >> go32v2.var
	echo 'Content-language: de' >> go32v2.var
	echo 'Content-type: text/html' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.en' >> go32v2.var
	echo 'Content-language: en' >> go32v2.var
	echo 'Content-type: text/html' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.fr' >> go32v2.var
	echo 'Content-language: fr' >> go32v2.var
	echo 'Content-type: text/html' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.id' >> go32v2.var
	echo 'Content-language: id' >> go32v2.var
	echo 'Content-type: text/html' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.nl' >> go32v2.var
	echo 'Content-language: nl' >> go32v2.var
	echo 'Content-type: text/html' >> go32v2.var
	echo >> go32v2.var
	echo 'URI: go32v2.html.pl' >> go32v2.var
	echo 'Content-language: pl' >> go32v2.var
	echo 'Content-type: text/html' >> go32v2.var
	echo >> go32v2.var

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
linux.var: gen_makefile.conf
	echo > linux.var
	echo 'URI: linux.html.de' >> linux.var
	echo 'Content-language: de' >> linux.var
	echo 'Content-type: text/html' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.en' >> linux.var
	echo 'Content-language: en' >> linux.var
	echo 'Content-type: text/html' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.fr' >> linux.var
	echo 'Content-language: fr' >> linux.var
	echo 'Content-type: text/html' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.id' >> linux.var
	echo 'Content-language: id' >> linux.var
	echo 'Content-type: text/html' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.nl' >> linux.var
	echo 'Content-language: nl' >> linux.var
	echo 'Content-type: text/html' >> linux.var
	echo >> linux.var
	echo 'URI: linux.html.pl' >> linux.var
	echo 'Content-language: pl' >> linux.var
	echo 'Content-type: text/html' >> linux.var
	echo >> linux.var

netware.html.de: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o netware.html.de ../../templatemirror.adp
netware.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -c ../../catalog.adp -l en_US -m ../../default-master.adp -o netware.html.en ../../templatemirror.adp
netware.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o netware.html.fr ../../templatemirror.adp
netware.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o netware.html.id ../../templatemirror.adp
netware.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o netware.html.nl ../../templatemirror.adp
netware.html.pl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=netware -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o netware.html.pl ../../templatemirror.adp
netware.var: gen_makefile.conf
	echo > netware.var
	echo 'URI: netware.html.de' >> netware.var
	echo 'Content-language: de' >> netware.var
	echo 'Content-type: text/html' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.en' >> netware.var
	echo 'Content-language: en' >> netware.var
	echo 'Content-type: text/html' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.fr' >> netware.var
	echo 'Content-language: fr' >> netware.var
	echo 'Content-type: text/html' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.id' >> netware.var
	echo 'Content-language: id' >> netware.var
	echo 'Content-type: text/html' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.nl' >> netware.var
	echo 'Content-language: nl' >> netware.var
	echo 'Content-type: text/html' >> netware.var
	echo >> netware.var
	echo 'URI: netware.html.pl' >> netware.var
	echo 'Content-language: pl' >> netware.var
	echo 'Content-type: text/html' >> netware.var
	echo >> netware.var

os2.html.de: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o os2.html.de ../../templatemirror.adp
os2.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -c ../../catalog.adp -l en_US -m ../../default-master.adp -o os2.html.en ../../templatemirror.adp
os2.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o os2.html.fr ../../templatemirror.adp
os2.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o os2.html.id ../../templatemirror.adp
os2.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o os2.html.nl ../../templatemirror.adp
os2.html.pl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=os2 -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o os2.html.pl ../../templatemirror.adp
os2.var: gen_makefile.conf
	echo > os2.var
	echo 'URI: os2.html.de' >> os2.var
	echo 'Content-language: de' >> os2.var
	echo 'Content-type: text/html' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.en' >> os2.var
	echo 'Content-language: en' >> os2.var
	echo 'Content-type: text/html' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.fr' >> os2.var
	echo 'Content-language: fr' >> os2.var
	echo 'Content-type: text/html' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.id' >> os2.var
	echo 'Content-language: id' >> os2.var
	echo 'Content-type: text/html' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.nl' >> os2.var
	echo 'Content-language: nl' >> os2.var
	echo 'Content-type: text/html' >> os2.var
	echo >> os2.var
	echo 'URI: os2.html.pl' >> os2.var
	echo 'Content-language: pl' >> os2.var
	echo 'Content-type: text/html' >> os2.var
	echo >> os2.var

win32.html.de: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.adp -l de_DE -m ../../default-master.adp -o win32.html.de ../../templatemirror.adp
win32.html.en: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.adp -l en_US -m ../../default-master.adp -o win32.html.en ../../templatemirror.adp
win32.html.fr: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.adp -l fr_FR -m ../../default-master.adp -o win32.html.fr ../../templatemirror.adp
win32.html.id: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.adp -l id_ID -m ../../default-master.adp -o win32.html.id ../../templatemirror.adp
win32.html.nl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.adp -l nl_NL -m ../../default-master.adp -o win32.html.nl ../../templatemirror.adp
win32.html.pl: ../../templatemirror.adp mirrors.dat ../../default-master.adp
	../../adp2html -p x=$(URL_EXTENSION) -p pagename=win32 -c ../../catalog.adp -l pl_PL -m ../../default-master.adp -o win32.html.pl ../../templatemirror.adp
win32.var: gen_makefile.conf
	echo > win32.var
	echo 'URI: win32.html.de' >> win32.var
	echo 'Content-language: de' >> win32.var
	echo 'Content-type: text/html' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.en' >> win32.var
	echo 'Content-language: en' >> win32.var
	echo 'Content-type: text/html' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.fr' >> win32.var
	echo 'Content-language: fr' >> win32.var
	echo 'Content-type: text/html' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.id' >> win32.var
	echo 'Content-language: id' >> win32.var
	echo 'Content-type: text/html' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.nl' >> win32.var
	echo 'Content-language: nl' >> win32.var
	echo 'Content-type: text/html' >> win32.var
	echo >> win32.var
	echo 'URI: win32.html.pl' >> win32.var
	echo 'Content-language: pl' >> win32.var
	echo 'Content-type: text/html' >> win32.var
	echo >> win32.var

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

all_pages: freebsd-australia.html.de freebsd-australia.html.en freebsd-australia.html.fr freebsd-australia.html.id freebsd-australia.html.nl freebsd-australia.html.pl freebsd-australia.var go32v2-australia.html.de go32v2-australia.html.en go32v2-australia.html.fr go32v2-australia.html.id go32v2-australia.html.nl go32v2-australia.html.pl go32v2-australia.var linux-australia.html.de linux-australia.html.en linux-australia.html.fr linux-australia.html.id linux-australia.html.nl linux-australia.html.pl linux-australia.var netware-australia.html.de netware-australia.html.en netware-australia.html.fr netware-australia.html.id netware-australia.html.nl netware-australia.html.pl netware-australia.var os2-australia.html.de os2-australia.html.en os2-australia.html.fr os2-australia.html.id os2-australia.html.nl os2-australia.html.pl os2-australia.var win32-australia.html.de win32-australia.html.en win32-australia.html.fr win32-australia.html.id win32-australia.html.nl win32-australia.html.pl win32-australia.var freebsd-austria.html.de freebsd-austria.html.en freebsd-austria.html.fr freebsd-austria.html.id freebsd-austria.html.nl freebsd-austria.html.pl freebsd-austria.var go32v2-austria.html.de go32v2-austria.html.en go32v2-austria.html.fr go32v2-austria.html.id go32v2-austria.html.nl go32v2-austria.html.pl go32v2-austria.var linux-austria.html.de linux-austria.html.en linux-austria.html.fr linux-austria.html.id linux-austria.html.nl linux-austria.html.pl linux-austria.var netware-austria.html.de netware-austria.html.en netware-austria.html.fr netware-austria.html.id netware-austria.html.nl netware-austria.html.pl netware-austria.var os2-austria.html.de os2-austria.html.en os2-austria.html.fr os2-austria.html.id os2-austria.html.nl os2-austria.html.pl os2-austria.var win32-austria.html.de win32-austria.html.en win32-austria.html.fr win32-austria.html.id win32-austria.html.nl win32-austria.html.pl win32-austria.var freebsd-germany.html.de freebsd-germany.html.en freebsd-germany.html.fr freebsd-germany.html.id freebsd-germany.html.nl freebsd-germany.html.pl freebsd-germany.var go32v2-germany.html.de go32v2-germany.html.en go32v2-germany.html.fr go32v2-germany.html.id go32v2-germany.html.nl go32v2-germany.html.pl go32v2-germany.var linux-germany.html.de linux-germany.html.en linux-germany.html.fr linux-germany.html.id linux-germany.html.nl linux-germany.html.pl linux-germany.var netware-germany.html.de netware-germany.html.en netware-germany.html.fr netware-germany.html.id netware-germany.html.nl netware-germany.html.pl netware-germany.var os2-germany.html.de os2-germany.html.en os2-germany.html.fr os2-germany.html.id os2-germany.html.nl os2-germany.html.pl os2-germany.var win32-germany.html.de win32-germany.html.en win32-germany.html.fr win32-germany.html.id win32-germany.html.nl win32-germany.html.pl win32-germany.var freebsd-hungary.html.de freebsd-hungary.html.en freebsd-hungary.html.fr freebsd-hungary.html.id freebsd-hungary.html.nl freebsd-hungary.html.pl freebsd-hungary.var go32v2-hungary.html.de go32v2-hungary.html.en go32v2-hungary.html.fr go32v2-hungary.html.id go32v2-hungary.html.nl go32v2-hungary.html.pl go32v2-hungary.var linux-hungary.html.de linux-hungary.html.en linux-hungary.html.fr linux-hungary.html.id linux-hungary.html.nl linux-hungary.html.pl linux-hungary.var netware-hungary.html.de netware-hungary.html.en netware-hungary.html.fr netware-hungary.html.id netware-hungary.html.nl netware-hungary.html.pl netware-hungary.var os2-hungary.html.de os2-hungary.html.en os2-hungary.html.fr os2-hungary.html.id os2-hungary.html.nl os2-hungary.html.pl os2-hungary.var win32-hungary.html.de win32-hungary.html.en win32-hungary.html.fr win32-hungary.html.id win32-hungary.html.nl win32-hungary.html.pl win32-hungary.var freebsd-israel.html.de freebsd-israel.html.en freebsd-israel.html.fr freebsd-israel.html.id freebsd-israel.html.nl freebsd-israel.html.pl freebsd-israel.var go32v2-israel.html.de go32v2-israel.html.en go32v2-israel.html.fr go32v2-israel.html.id go32v2-israel.html.nl go32v2-israel.html.pl go32v2-israel.var linux-israel.html.de linux-israel.html.en linux-israel.html.fr linux-israel.html.id linux-israel.html.nl linux-israel.html.pl linux-israel.var netware-israel.html.de netware-israel.html.en netware-israel.html.fr netware-israel.html.id netware-israel.html.nl netware-israel.html.pl netware-israel.var os2-israel.html.de os2-israel.html.en os2-israel.html.fr os2-israel.html.id os2-israel.html.nl os2-israel.html.pl os2-israel.var win32-israel.html.de win32-israel.html.en win32-israel.html.fr win32-israel.html.id win32-israel.html.nl win32-israel.html.pl win32-israel.var freebsd-netherlands.html.de freebsd-netherlands.html.en freebsd-netherlands.html.fr freebsd-netherlands.html.id freebsd-netherlands.html.nl freebsd-netherlands.html.pl freebsd-netherlands.var go32v2-netherlands.html.de go32v2-netherlands.html.en go32v2-netherlands.html.fr go32v2-netherlands.html.id go32v2-netherlands.html.nl go32v2-netherlands.html.pl go32v2-netherlands.var linux-netherlands.html.de linux-netherlands.html.en linux-netherlands.html.fr linux-netherlands.html.id linux-netherlands.html.nl linux-netherlands.html.pl linux-netherlands.var netware-netherlands.html.de netware-netherlands.html.en netware-netherlands.html.fr netware-netherlands.html.id netware-netherlands.html.nl netware-netherlands.html.pl netware-netherlands.var os2-netherlands.html.de os2-netherlands.html.en os2-netherlands.html.fr os2-netherlands.html.id os2-netherlands.html.nl os2-netherlands.html.pl os2-netherlands.var win32-netherlands.html.de win32-netherlands.html.en win32-netherlands.html.fr win32-netherlands.html.id win32-netherlands.html.nl win32-netherlands.html.pl win32-netherlands.var freebsd-norway.html.de freebsd-norway.html.en freebsd-norway.html.fr freebsd-norway.html.id freebsd-norway.html.nl freebsd-norway.html.pl freebsd-norway.var go32v2-norway.html.de go32v2-norway.html.en go32v2-norway.html.fr go32v2-norway.html.id go32v2-norway.html.nl go32v2-norway.html.pl go32v2-norway.var linux-norway.html.de linux-norway.html.en linux-norway.html.fr linux-norway.html.id linux-norway.html.nl linux-norway.html.pl linux-norway.var netware-norway.html.de netware-norway.html.en netware-norway.html.fr netware-norway.html.id netware-norway.html.nl netware-norway.html.pl netware-norway.var os2-norway.html.de os2-norway.html.en os2-norway.html.fr os2-norway.html.id os2-norway.html.nl os2-norway.html.pl os2-norway.var win32-norway.html.de win32-norway.html.en win32-norway.html.fr win32-norway.html.id win32-norway.html.nl win32-norway.html.pl win32-norway.var freebsd-russia.html.de freebsd-russia.html.en freebsd-russia.html.fr freebsd-russia.html.id freebsd-russia.html.nl freebsd-russia.html.pl freebsd-russia.var go32v2-russia.html.de go32v2-russia.html.en go32v2-russia.html.fr go32v2-russia.html.id go32v2-russia.html.nl go32v2-russia.html.pl go32v2-russia.var linux-russia.html.de linux-russia.html.en linux-russia.html.fr linux-russia.html.id linux-russia.html.nl linux-russia.html.pl linux-russia.var netware-russia.html.de netware-russia.html.en netware-russia.html.fr netware-russia.html.id netware-russia.html.nl netware-russia.html.pl netware-russia.var os2-russia.html.de os2-russia.html.en os2-russia.html.fr os2-russia.html.id os2-russia.html.nl os2-russia.html.pl os2-russia.var win32-russia.html.de win32-russia.html.en win32-russia.html.fr win32-russia.html.id win32-russia.html.nl win32-russia.html.pl win32-russia.var freebsd-ftp.freepascal.org.html.de freebsd-ftp.freepascal.org.html.en freebsd-ftp.freepascal.org.html.fr freebsd-ftp.freepascal.org.html.id freebsd-ftp.freepascal.org.html.nl freebsd-ftp.freepascal.org.html.pl freebsd-ftp.freepascal.org.var go32v2-ftp.freepascal.org.html.de go32v2-ftp.freepascal.org.html.en go32v2-ftp.freepascal.org.html.fr go32v2-ftp.freepascal.org.html.id go32v2-ftp.freepascal.org.html.nl go32v2-ftp.freepascal.org.html.pl go32v2-ftp.freepascal.org.var linux-ftp.freepascal.org.html.de linux-ftp.freepascal.org.html.en linux-ftp.freepascal.org.html.fr linux-ftp.freepascal.org.html.id linux-ftp.freepascal.org.html.nl linux-ftp.freepascal.org.html.pl linux-ftp.freepascal.org.var netware-ftp.freepascal.org.html.de netware-ftp.freepascal.org.html.en netware-ftp.freepascal.org.html.fr netware-ftp.freepascal.org.html.id netware-ftp.freepascal.org.html.nl netware-ftp.freepascal.org.html.pl netware-ftp.freepascal.org.var os2-ftp.freepascal.org.html.de os2-ftp.freepascal.org.html.en os2-ftp.freepascal.org.html.fr os2-ftp.freepascal.org.html.id os2-ftp.freepascal.org.html.nl os2-ftp.freepascal.org.html.pl os2-ftp.freepascal.org.var win32-ftp.freepascal.org.html.de win32-ftp.freepascal.org.html.en win32-ftp.freepascal.org.html.fr win32-ftp.freepascal.org.html.id win32-ftp.freepascal.org.html.nl win32-ftp.freepascal.org.html.pl win32-ftp.freepascal.org.var freebsd.html.de freebsd.html.en freebsd.html.fr freebsd.html.id freebsd.html.nl freebsd.html.pl freebsd.var go32v2.html.de go32v2.html.en go32v2.html.fr go32v2.html.id go32v2.html.nl go32v2.html.pl go32v2.var linux.html.de linux.html.en linux.html.fr linux.html.id linux.html.nl linux.html.pl linux.var netware.html.de netware.html.en netware.html.fr netware.html.id netware.html.nl netware.html.pl netware.var os2.html.de os2.html.en os2.html.fr os2.html.id os2.html.nl os2.html.pl os2.var win32.html.de win32.html.en win32.html.fr win32.html.id win32.html.nl win32.html.pl win32.var mirrors.dat


# clean
clean:
	rm -f *.html.* *.var mirrors.dat

