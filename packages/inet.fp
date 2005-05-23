<HTML>
<!--
#TITLE Free Pascal - The INET unit
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY inet
#MAINDIR ..
#HEADER The INET unit
-->
<H1>The INET unit</H1>
The INET unit is designed to give you access to DNS routines in the C
libraries of your linux system.
<P>
All the calls needed to get host entries based on IP numbers or host names are there:
<PRE>
function GetHostEnt : PHostEnt;
function GetHostByName ( Name : Pchar) : PHostEnt;
function GetHostByAddr ( Addr : PHostAddr; Len : Longint; HType : Longint) : PHostEnt
procedure SetHostEnt (stayopen : longint);
procedure EndHostEnt;

function GetNetEnt : PNetEnt;
function GetNetByName ( Name : pchar) : PNetEnt;
function GetNetByAddr ( Net : Longint; NetType : Longint) : PNetEnt;
procedure SetNetEnt ( Stayopen : Longint);
procedure EndNetEnt;

function getservent : PServEnt;
function getservbyname (name : pchar  ; protocol : pchar) : PServEnt;
function getservbyport (port : longint; protocol : pchar) : PServEnt;
procedure setservent (StayOpen : longint);
procedure endservent;
</PRE>
<P>
Other than that, it implements three objects (THost, TService TNet) to do
these lookups in a more pascal like manner.<P>

View the complete interface <A HREF="http://www.freepascal.org/docs-html/packages/inet">here</a>.
<P>

Provided in the archive is a makefile and two testprograms, under which a
finger client.<P>

You can get the source of the unit in the packages source
<A HREF="ftp://ftp.freepascal.org/pub/fpc/source/packages.zip">here</A>.
The arhive contains a testprogram which shows what the unit can do, and
how to use it.<P>


<HR></HR>
<A HREF="packages.html">Back to packages page</A>. 
<HR></HR>
</HTML>
