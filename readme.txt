This repositry contains the html sources for the Free Pascal Home Page.

Some design rules:
------------------
- try to minimize the number of images
- don't use frames
- don't make a page bigger than one or two screens (assuming a
  resolution of 800x600)
- each page needs a possibilty to go back
- no page should contain more than 5-7 links in the menu
- don't nest the level of pages deeper than 3


Using .adp files:
-----------------

The pages are marked up in an enhanced html language called adp. Extra
tags are provided to handle server-side preprocessing. The adp syntax is
documented in the file tags.txt.

To convert a .adp file into a .html file, the adp2html tool is used. The
command line opt

To convert a file to a .html file run:

adp2html -o output_file <input_file>


Catalog files:
--------------

Adp2html supports multilingual websites. A multilingual web site is created by
adding <TRN> tags to your adp files and supplying a catalog file to adp2html with
the translated texts.

For Free Pascal the catalog files are downloaded from the Community, you can do
this with the download_catalog script in svn. It doesn't make much sense to
modify these manually, since they are redownloaded regularily.

To modify translated texts, you have to update the website copy the
community has, by visiting
http://community.freepascal.org:10000/website/svn_update , then you modify
the texts by visiting the translatable website or the translation manager,
and run the download_catalog script.

Currently, translated texts get priority over untranslated text; even for
English. So, once a "translated" version of an English message is in the
Community database, the adp2html tool uses that. It is probably more
comfortable to give text in the .adp files prority, which is a future
change to the adp2html tool.


Commandline options:
--------------------
adp2html takes several commandline options
-c catalogfile         Speficy the catalog file, the file with translated
                       texts to use.
-ce catalog_encoding   Specify what character encoding the catalog file uses.
-d datasource_prefix   This is where adp2html searched datasource files, for the
                       <MULTIPLE> tag
-ie input_encoding     Specify what character encouding the input file uses.
-l locale              Specify in what language you would like the html file
-lb fallback_locale    If messages are not available in the preffered language
                       use messages in this language
-m default_master      Specify the default master template, the template the
                       <MASTER> tag will use if no "src" attribute is present.
-p key=value           Set a property to a value, which can be expanded in the
                       .adp file.
-o outputfile          Specify the name of the html file
-oe output_encoding    Specify the character encoding of the output file


Adding a page:
--------------

* Create the page
* Add it to generate_makefile.conf
* Regenerate the Makefile using "/path/to/generate_makefile > Makefile"

Adding a directory:
-------------------

* Create the directory.
* Create a generate_makefile.conf. Use another directory as example.
* Modify the generate_makefile script by adding a rule to descent into the
  subdirectory. Search for "down_all" for an example.

MakeIdx tool:
-------------

makeidx makes a index for the page which is written using <A NAME="anchor></A>
parts. The line below the anchor contains the item name, which may be prefixed
and postfixed with <H3> and/or <LI>. The index is created/updated between the
tags <!-- STARTIDX --> and <!-- ENDIDX -->

It's especially made for the FAQ and Newsletters

Run: makeidx <file>  It will update <file>

