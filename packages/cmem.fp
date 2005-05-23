<HTML>
<!--
#TITLE Free Pascal - cmem package
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY cmem
#MAINDIR ..
#HEADER cmem
-->
<!--
(<A HREF="http://www.freepascal.org/docs-html/packages/cmem">View interface</A>)
 -->
<H1>cmem : C memory manager interface</H1>
This package (more specific, the <tt>cmem</tt> unit) replaces the native Free 
Pascal memory manager with the C library memory manager. 
All memory management is done by the C memory manager when the <tt>cmem</tt>
is package is included in the <tt>uses</tt> clause of your program. The unit
should be the first unit in the uses clause, otherwise memory can already be
allocated by initialization routines in units that are initialized before
the C memory manager is installed. 
(<A HREF="http://www.freepascal.org/docs-html/packages/cmem">View interface</A>)
<P>
There is a small example program <tt>testcmem</tt>, which demonstrates the
use of the cmem unit.
<HR></HR>
Back to <A HREF="packages.html">packages</A>
<HR></HR>
</HTML>
