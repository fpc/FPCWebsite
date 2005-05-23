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
- if you check-in binary files use -kb when adding the file
  if you forgot it, change the file name and add the file under the new name
  else you will get trouble, so don't forget -kb  (-ko makes trouble because
  DOS/Win CVS will replace #10 with #13#10)


Layout of the header of the .fp files:
--------------------------------------

<HTML>
<!--
#TITLE  <set the title>
#ENTRY  <the entry in the main menu, this is also used to 'expand' the
        subentries, all the other subentries from the other main menu entries
        are closed>
#SUBENTRY <highlight this entry, default is #ENTRY>
#MODIFY <include a 'modified at date' at the bottom>
#ADDS   <put some adds at the bottom of the page, yuck!>
#COUNTER <put the pagecounter at the bottom of the page>
-->

The .fp files can start with <HTML> and end with </HTML>, this is easy.
Because netscape/ie detects it as a html file, else it'll show only the
sourcecode.

To insert a 'new' Image, type 'NEW!' and it will automaticly be expanded to
<IMG SRC="pic/new.gif>

To convert a file to a .html file run:

fp2html <file>

wildcards are ofcourse allowed and work under dos and linux.



MakeIdx tool:
-------------

makeidx makes a index for the page which is written using <A NAME="anchor></A>
parts. The line below the anchor contains the item name, which may be prefixed
and postfixed with <H3> and/or <LI>. The index is created/updated between the
tags <!-- STARTIDX --> and <!-- ENDIDX -->

It's especially made for the FAQ and Newsletters

Run: makeidx <file>  It will update <file>

