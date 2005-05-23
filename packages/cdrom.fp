<HTML>
<!--
#TITLE Free Pascal - cdrom package
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY cdrom
#MAINDIR ..
#HEADER cdrom packagee
-->
<!--
(<A HREF="http://www.freepascal.org/docs-html/packages/cdrom">View interface</A>)
 -->
<H1>CDROM package</H1>
The cdrom package contains some routines to read the table of contents (TOC)
of a CD-ROM. From this TOC a DISC ID can be computed which can be used to
query a CDDB server such as the one on freecddb.org. The package consists of
2 main units, and some auxiliary units:
<UL>
<LI> <B>cdrom</B> this unit contains the routines to determine which CD-ROM
devices exist on the system, and to read the TOC of a cdrom in one of the
devices.
(<A HREF="http://www.freepascal.org/docs-html/packages/cdrom/cdrom">View interface</A>)

<LI> <B>discid</B> this unit calculates a DISC ID based on the TOC of a
CD-ROM. This disc-id can be used to send a query to a cddb database server.
A routine exists which returns the exact query string for the CDDB server.
(<A HREF="http://www.freepascal.org/docs-html/packages/cdrom/discid">View interface</A>)
</UL>
Other than these units, there exist some auxiliary units:
<UL>
<LI><B>lincd</B> a unit which contains essentially the translation of the
linux kernel cdrom interface (<TT>linux/cdrom.h</TT> header file).
<LI><B>major</B> a unit containing the definitions of the major device
numbers on linux.
<LI><B>wincd</B> a unit containing windows routines to enumerate cd-rom
drives and read the TOC of a CDROM. It supports SPTI, IOCTL and ASPI
interface calls to accomplish this task. 
<LI><B>wnaspi32</B> the win32 interface to ASPI (scsi programming interface
for windows)
<LI><B>scsidefs</B> some constant and type definitions for the SCSI layer on 
windows.
</UL>
There are also 2 test programs to demonstrate the capabilities of these
units:
<UL>
<LI><B>showcds</B> demonstrates the cdrom unit, shows the available CD-ROM disc
drives on the system.
<LI><B>getdiscid</B> demonstrates the cdrom and discid unit by calculating
the disc-id from a cdrom in a disc drive.
</UL>
<HR></HR>
Back to <A HREF="packages.html">packages</A>
<HR></HR>
</HTML>
