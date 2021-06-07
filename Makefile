
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
GENVARFILE=./genvarfile$(EXE)

PAGES:=aboutus advantage credits develop download docs faq fpc fpcmac future lang_howto links maillist mirrors moreinfo news port prog probs units unitsrtl privacy
HTMLPAGES=$(addsuffix .html,$(PAGES))
ADPPAGES=$(addsuffix .adp,$(PAGES))

ifndef PP
 PP=fpc
endif

.PHONY: all all_pages clean zip tar output_directory

default: all

all: english output_directory index.html

index.html: fpc.html
	ln -s fpc.html index.html

english: all_pages

%.html: %.adp default-master.adp site-master.adp ./catalog.bg.adp
	$(ADP2HTML) -m default-master.adp -o $@ $<


mirrors.dat:
	echo -e 'name\tnamel\turl' > mirrors.dat
 	echo -e 'Hungary\thungary\tftp://ftp.hu.freepascal.org/pub/fpc/' >> mirrors.dat
	echo -e 'Canada\tcanada\tftp://mirror.freemirror.org/pub/fpc/' >> mirrors.dat

all_pages: $(GENVARFILE) $(ADP2HTML) mirrors.dat
	$(ADP2HTML) -a 

#adp2html tool
$(ADP2HTML): adp2html.pp adpconverter.pp adputils.pp adpdata.pp
	$(PP) $(OPT) -Xs adp2html.pp

$(GENVARFILE): genvarfile.pp
	$(PP) $(OPT) -Xs genvarfile.pp

# clean
clean: clean_down clean_fcl clean_tools clean_contribs clean_docsearch
	rm -f *.html.* *.html *.var mirrors.dat $(ADP2HTML)
	rm -f *.o *.ppu

clean_down:
	rm -f down/*.html* down/*/*.html* down/*.var down/*/*.var

clean_fcl:
	rm -f fcl/*.html* */*.bat

clean_tools:
	rm -f tools/*.html* tools/*.var

clean_contribs:
	rm -f contrib/*.html* contrib/*.var contrib/*.cgi contrib/*.o contrib/*.ppu

clean_docsearch:
	rm -f docsearch/*.html* docsearch/*.var  

# archives (unix only)
tar: all
	find -name '*.html' -or -name '*.html.*' -or -name '*.var' -or -name '*.gif' -or -name '*.png' -or -name '*.css' -or -name '*.jpg' -or -name '*.ico' -or -name '*.js' > file_list
	tar -C ./ -czf htmls.tar.gz -T file_list $(OTHERFILES)

zip: all
	zip ./htmls.zip `find -name '*.html' -or -name '*.html.*' -or -name '*.var' -or -name '*.gif' -or -name '*.png' -or -name '*.css' -or -name '*.jpg' -or -name '*.ico' -or -name '*.js'` $(OTHERFILES)

english_tar: english
	find -name '*.html' -or -name '*.html.*' -or -name '*.var' -or -name '*.gif' -or -name '*.png' -or -name '*.css' -or -name '*.jpg' -or -name '*.ico' -or -name '*.js' > file_list
	tar -czf ./htmls.tar.gz -T file_list $(OTHERFILES)

english_zip: english
	zip ./htmls.zip `find -name '*.html' -or -name '*.html.*' -or -name '*.var' -or -name '*.gif' -or -name '*.png' -or -name '*.css' -or -name '*.jpg' -or -name '*.ico' -or -name '*.js'` $(OTHERFILES)

