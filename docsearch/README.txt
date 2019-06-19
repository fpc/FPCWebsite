The documentation search database is created with the docindexer project.
located in the packages/fpindexer/examples directory.

The script (createdocsindex.sh) can be executed on the FPC server.
(see the comments in the file to see how to create the database if it does
not exist yet)

Searching is done using 2 programs:
- the pas2js program docsearch.lpr, found in this directory
- A CGI program that can also be found in packages/fpindexer/examples
directory: httpsearcher.pp

The documentation database connection is described in /etc/docsearch.ini on the
server. 


