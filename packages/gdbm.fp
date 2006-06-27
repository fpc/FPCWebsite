<html>
<!--
#TITLE Free Pascal - GDBM package
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY gdbm
#MAINDIR ..
#HEADER gdbm
-->
<!--
(<a href="http://www.freepascal.org/docs-html/packages/gdbm">View interface</a>)
 -->
<h1>GDBM : GNU database management routines</h1>
The  <b>gdbm</b> unit is a translation of the <tt>gdbm.h</tt> header files, with some
additional routines. The headers translated without any problems, the only thing that should
be taken into account is that the 
<TT>GDBM_SYNC</TT> constant (for open flags) has been renamed to
<TT>GDMB_DOSYNC</TT>
because it conflicts with the <tt>gdbm_sync</tt> function. 
<p>

Be careful: the TDatum.dptr data pointer which is allocated by the
gdbm routines should be freed by the C free() call, NOT with the 
pascal FreeMem() call. 
</p>

A solution for this is to use the 'cmem' unit, which replaces the standard
FPC memory manager with the C memory manager. In that case, freemem()
may be used to free the dptr field of the TDatum record.
<p>

On top of the plain C header translations, The GDBM routines have been 
overloaded with routines that accept plain strings as key or data 
parameters. This means the following routines have been added:
<p>
<PRE>
function gdbm_open(Const para1:string; para2:longint; para3:longint; para4:longint; para5:TGDBMErrorCallBack ):PGDBM_FILE;
function gdbm_store(para1:PGDBM_FILE; Const para2:string; Const para3:string; para4:longint):Boolean;
function gdbm_fetch(para1:PGDBM_FILE; Const para2:string):string;
function gdbm_delete(para1:PGDBM_FILE; Const para2:string):boolean;
procedure gdbm_firstkey(para1:PGDBM_FILE; var key :string);
function gdbm_nextkey(para1:PGDBM_FILE; Const para2:string):string;
function gdbm_exists(para1:PGDBM_FILE; Const para2:string):boolean;
</PRE>
They are just the C routines, but with the TDatum type (a record) 
replaced by a string. The routines take automatically care of memory
deallocation.
<p>
Functions that returned an integer to indicate success or failure have been
replaced by functions that return a boolean.
<p>
(<a href="http://www.freepascal.org/docs-html/packages/gdbm">View interface</a>)
<p>
There are two example programs, <tt>testgdbm</tt> and <tt>testgdbm2</tt>
which test the routines.
<hr></hr>
Back to <a href="packages.html">packages</a>
<hr></hr>
</html>
