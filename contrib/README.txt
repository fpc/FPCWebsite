This is the contributed units cgi script for Free Pascal.
It needs the uncgi unit (2.0.4) and mysql unit (3.21)

Before compiling: EDIT THE MAKEFILE ! you MUST set :

- TEMPLATEDIR  (where are the head,foot,form.tmpl files)
- EMAIL        (will be displayed in the error messages)
- DB           (what database to use          - default is test)
- DBUSER       (what username to connect with - default is none) 
- DBPASWD      (what password to use for user - default is none)
- DBHOST       (what host is the database on  - default is localhost)
and maybe some other settings (where the units are, etc.)
 
To compile :
  make config; make;

To install :
  make install

You need to run 'contrib -i' once, manually, to initialize the table.
(the table name used is 'contribs'). You need create permission on 
the database for this to work. 

This will copy the binary and the *.tmpl files to their places.

Usage:
------
Contrib -h shows how. contrib -c shows the configuration variables.
(as compiled in after 'make config')

Files:
------
*.pp       Sources
Config.pp  Is made with 'make config'.
table.def  Is the result of a 'show columns from contribs;' query in the  
            database
env        can be used to set your environment for command-line testing.

Michael.
