<html>
<!--
#TITLE Free Pascal - cdrom package
#ENTRY prog
#SUBENTRY packages
#SUBSUBENTRY cdrom
#MAINDIR ..
#HEADER cdrom packagee
-->
<!--
(<a href="http://www.freepascal.org/docs-html/packages/cdrom">View interface</a>)
 -->
<h1>CDROM package</h1>
The cdrom package contains some routines to read the table of contents (TOC)
of a CD-ROM. From this TOC a DISC ID can be computed which can be used to
query a CDDB server such as the one on freecddb.org. The package consists of
2 main units, and some auxiliary units:
<ul>
<li> <b>cdrom</b> this unit contains the routines to determine which CD-ROM
devices exist on the system, and to read the TOC of a cdrom in one of the
devices.
(<a href="http://www.freepascal.org/docs-html/packages/cdrom/cdrom">View interface</a>)

<li> <b>discid</b> this unit calculates a DISC ID based on the TOC of a
CD-ROM. This disc-id can be used to send a query to a cddb database server.
A routine exists which returns the exact query string for the CDDB server.
(<a href="http://www.freepascal.org/docs-html/packages/cdrom/discid">View interface</a>)
</ul>
Other than these units, there exist some auxiliary units:
<ul>
<li><b>lincd</b> a unit which contains essentially the translation of the
linux kernel cdrom interface (<TT>linux/cdrom.h</TT> header file).
<li><b>major</b> a unit containing the definitions of the major device
numbers on linux.
<li><b>wincd</b> a unit containing windows routines to enumerate cd-rom
drives and read the TOC of a CDROM. It supports SPTI, IOCTL and ASPI
interface calls to accomplish this task. 
<li><b>wnaspi32</b> the win32 interface to ASPI (scsi programming interface
for windows)
<li><b>scsidefs</b> some constant and type definitions for the SCSI layer on 
windows.
</ul>
There are also 2 test programs to demonstrate the capabilities of these
units:
<ul>
<li><b>showcds</b> demonstrates the cdrom unit, shows the available CD-ROM disc
drives on the system.
<li><b>getdiscid</b> demonstrates the cdrom and discid unit by calculating
the disc-id from a cdrom in a disc drive.
</ul>
<hr></hr>
Back to <a href="packages.html">packages</a>
<hr></hr>
</html>
