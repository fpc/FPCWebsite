<!--
#TITLE Free Pascal - Download
#ENTRY download
#HEADER Download
#MODIFY
-->

<H1>Offizielle Release Versionen</H1></LI>
<P>
  Dies sind fertig gemachte Pakete, geb&uuml;ndelt mit einem Installations-Programm,
  die Ihnen helfen sollen sofort los zu legen. Alle Pakete enthalten eine
  README Datei, die Sie lesen sollten um Installataions-Anweisungen und
  letzte Neuigkeiten zu erhalten.
<P>
  Das neueste Release ist 0.99.14(a) (auch bekannt als Version 1.0 beta 4(a)).
  Sie k&ouml;nnen diese Version f&uuml;r die folgenden Betriebssysteme
  herunterladen:
<UL>
  <LI><A HREF="#Dos">DOS</A> (basierend auf dem Go32V2 DOS Extender)
  <LI><A HREF="#Linux">Linux</A>
  <LI><A HREF="#OS2">OS/2 & DOS</A> (basierend auf Emx)
  <LI><A HREF="#Win32">Win32</A> (f&uuml;r Windows 95, 98, NT)
</UL>

<P>
  Release des m68k Compilers (auf Stand von FPC 0.99.5):
<UL>
  <LI><A HREF="#Amiga">Amiga</A>
</UL>

<P>
Weiterhin k&ouml;nnen sie folgendes herunterladen:
<UL>
  <LI><A HREF="#Documentation">Dokumentation</A> in verschiedenen Formaten.
  <LI><A HREF="#Utils">Utilities</A> f&uuml;r die Verwendung mit Free Pascal.
</UL>

<P>
Zus&auml;tzlich zu den offiziellen Releases gibt es auch sogenannte "snapshots" des Compilers, der RTL,
der IDE und ein paar weiterer Pakete auf der <A HREF="develop.html">Entwicklungs-Seite</A>.
Dabei handelt es sich um compilierte Versionen der aktuellen Quellen mit allen
Fehler-Korrekturen und Verbesserungen seit dem letzten offiziellen Release.
In diesem Sinne, probieren Sie diese aus wenn Sie ein Problem haben. Es ist
gut m&ouml;glich, dass dort wiederum neue Fehler enthalten sind.

<!--
*****************************************************************************
                                    Dos
*****************************************************************************
-->

<HR>
<A NAME="Dos"><H1>DOS</H1></A>

Die j&uuml;ngste Version ist 0.99.14a (auch bekannt als 1.0 beta 4a)

<A NAME="dosbig"><H3>Download als eine grosse Datei</H3></A>
<UL>
  <LI>Sie k&ouml;nnen das ganze Paket als eine grosse gezippte Datei herunterladen:
  <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/dos09914full.zip">dos09914full.zip</A> (9.7 MB)
  <LI>Oder Sie k&ouml;nnen eine Datei herunterladen mit dem selben Inhalt, jedoch ohne Quellen, gdb und GNU Utilities:
  <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/dos09914.zip">dos09914.zip</A> (5.4 MB)
  <LI>Oder Sie k&ouml;nnen das ganze Paket, inclusive der Win32 Dateien als eine grosse gezippte Datei herunterladen:
  <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/dosw3209914full.zip">dosw3209914full.zip</A> (16 MB)
</UL>

<A NAME="dossep"><H3>Download als getrennte Dateien</H3></A>
Sie k&ouml;nnen die Inhalte der obigen ZIP-Dateien als separate Dateien herunterladen:<BR>
<OL>
  <LI><B>Notwendige Dateien:</B>
  <UL>
    <LI> Installations-Programm: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/install.exe">install.exe</A> (79 kB)
    und das zugeh&ouml;rige Installations-Skript: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/install.dat">install.dat</A> (7 kB)
    <LI> Basis Dateien (Programme und alle Units): <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/basego32.zip">basego32.zip</A> (730 kB)
    <LI> GNU <tt>as</TT> und <tt>ld</tt> f&uuml;r DOS/go32: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/asldgo32.zip">asldgo32.zip</A> (561 kB)
  </UL>
  <LI><B>Optionale Dateien:</B>
  <UL>
    <LI> Die README Datei: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/readme.txt">readme.txt</A> (11 kB)
    <LI> Die "what's new?" Datei: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/whatsnew.txt">whatsnew.txt</A> (7 kB)
    <LI> Kompilierte Base Units (ben&ouml;tigt von der FCL): <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/ubasgo32.zip">ubasgo32.zip</A> (125 kB)
    <LI> Kompilierte FCL Units: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/ufclgo32.zip">ufclgo32.zip</A> (420 kB)
    <LI> Kompilierte API Units: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/uapigo32.zip">uapigo32.zip</A> (56 kB)
    <LI> Kompilierte Netzwerk Units: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/unetgo32.zip">unetgo32.zip</A> (10 kB)
    <LI> Kompilierte diverse Units: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/umisgo32.zip">umisgo32.zip</A> (29 kB)
    <LI> Utilities: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/utilgo32.zip">utilgo32.zip</A> (715 kB)
    <LI> Der GNU Debugger, <tt>gdb</TT>: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/gdbgo32.zip">gdbgo32.zip</A> (520 kB)
    <LI> Demo Dateien: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/demo.zip">demo.zip</A> (72 kB)
    <LI> Dokumentation als PDF: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/docs-pdf.zip">docs-pdf.zip</A> (1.6 MB)
  </UL>
  <LI><B>Optionale Quell-Dateien:</B>
  <UL>
    <LI> Basis-Quellen (ben&ouml;tigt): <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/basesrc.zip">basesrc.zip</A> (17 kB)
    <LI> Die Compiler Quellen: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/compsrc.zip">compsrc.zip</A> (1.3 MB)
    <LI> Die Quellen der Runtime Library: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/rtlsrc.zip">rtlsrc.zip</A> (1.2 MB)
    <LI> API Quellen: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/apisrc.zip">apisrc.zip</A> (114 kB)
    <LI> Free Component Library (FCL) Quellen: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/fclsrc.zip">fclsrc.zip</A> (290 kB)
    <LI> Quellen der Pakete: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/pkgssrc.zip">pkgssrc.zip</A> (890 kB)
    <LI> Quellen der Utilities: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/utilssrc.zip">utilssrc.zip</A> (344 kB)
    <LI> Quellen des Installations-Programms: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/instsrc.zip">instsrc.zip</A> (45 kB)
    <LI> Dokumentation Quellen: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/docsrc.zip">docsrc.zip</A> (1.0 MB)
  </UL>
</OL>
Laden Sie sich alle diese Dateien in ein Verzeichnis herunter und dann starten
Sie dort das Installationsprogramm. Es wird erkennen welche Dateien sie
heruntergeladen haben und Ihnen nur die vorhandenen Dateien zur Auswahl anbieten.
Aus diesem Grund d&uuml;rfen Sie die Namen der Dateien nicht ver&auml;ndern!


<!--
*****************************************************************************
                                 Linux
*****************************************************************************
-->

<HR>
<A NAME="Linux"><H1>Linux</H1></A>

Die j&uuml;ngste Version ist 0.99.14 (auch bekannt als Version 1.0 beta 4),
diese ist verf&uuml;gbar in verschiedenen Formen:
<UL>
  <LI> <A HREF="#linuxbig">Alles in einem grossen Paket</A>
  <LI> <A HREF="#linuxsep">Separate Pakete</A>
  <LI> <A HREF="#linuxrpm">RedHat Pakete (.rpm)</A>
  <LI> <A HREF="#linuxdeb">Debian Pakete (.deb)</A>
  <LI> <A HREF="#linuxtarball">Tar-Archiv mit Quellen</A>
</UL>

<A NAME="linuxbig"><H3>Download als eine grosse Datei:</H3></A>
<UL>
  <LI> <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/fpc-0.99.14.ELF.tar">fpc-0.99.14.ELF.tar</A> (9.4 MB)
  enth&auml;lt ein Standard-TAR Archif mit einem Installations-Skript.<BR>
  Nach dem Entpacken des Archivs f&uuml;hren Sie das Installations-Skript im
  erzeugten Verzeichnis aus indem sie "<TT>sh install.sh</TT>" eingeben.
</UL>

<A NAME="linuxsep"><H3>Download als separate Dateien:</H3></A>
Wenn sie Probleme haben die komplette TAR-Datei herunterzuladen,
dann k&ouml;nnen Sie die Inhalte der TAR-Datei auch separat herunterladen:<BR>
<OL>
  <LI><B>Notwendige Dateien:</B>
  <UL>
    <LI> Das Installations-Skript: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/separate/install.sh">install.sh</A> (4 kB)
    <LI> Die Compiler-Bin&auml;rdatei und ALLE Units (RTL, FCL, gtk usw.): <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/separate/binary.tar">binary.tar</A> (3.2 MB)
  </UL>
  <LI><B>Optionale Dateien:</B>
  <UL>
    <LI> Die Dokumentation: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/separate/docs.tar.gz">docs.tar.gz</A> (1.6 MB)
    <LI> Die Demos: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/separate/demo.tar.gz">demo.tar.gz</A> (63 kB)
    <LI> Die Quellen: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/separate/sources.tar">sources.tar</A> (4.5 MB)
  </UL>
</OL>
Sie sollten alle diese Dateien in ein Verzeichnis herunterladen.
Solange sie die Dateinamen nicht &auml;ndern wird das Installations-Skript
die von ihnen heruntergeladnene Dateien erkennen und ihnen deren
Installation anbieten.

<A NAME="linuxrpm"><H3>Redhat Pakete:</H3></A>
<UL>
  <LI><B>Bin&auml;re Pakete:</B></LI>
  <UL>
    <LI> <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/rpm/fpc-0.99.14-1.i386.rpm">fpc-0.99.14-1.i386.rpm</A> (2.1 MB)
         enth&auml;lt den Compiler, die Utils, die RTL und alle Units.<BR>
    <LI> <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/rpm/fpc-docs-0.99.14-1.i386.rpm">fpc-docs-0.99.14-1.i386.rpm</A> (1.6 MB)
         enth&auml;lt die Dokumentation.<BR>
  </UL>
  <LI><B>Quell-Pakete:</B></LI>
  <UL>
    <LI> <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/rpm/fpc-0.99.14-1.src.rpm">fpc-0.99.14-1.src.rpm</A> (3.8 MB)
         enth&auml;lt die Quellen des Compilers, der RTL und aller anderen Units.<BR>
    <LI> <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/rpm/fpc-docs-0.99.14-1.i386.rpm">fpc-docs-0.99.14-1.i386.rpm</A> (880 kB)
         dieses Quellen-RPM enth&auml;lt die Sourcen.<BR>
  </UL>
</UL>

<A NAME="linuxdeb"><H3>Debian Pakete:</H3></A>
<UL>
  <LI> Debian 2.2 und neuer enth&auml;lt Free Pascal.
       Die j&uuml;ngste offizielle (instabile) Version welche f&uuml;r Debian verf&uuml;gbar ist ist
       <A HREF="http://www.debian.org/Packages/unstable/devel/fp-compiler.html">hier</A>
       verf&uuml;gbar.
  <LI> <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/deb/">Dieses Verzeichnis</A>
       enth&auml;lt inoffizielle Debian Pakete des letzten Relese.<BR>
</UL>

<A NAME="linuxtarball"><H3>Tar-Archiv mit Quellen:</H3></A>
<UL>
  <LI> <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/separate/sources.tar">sources.tar</A> (4.5 MB)
</UL>


<!--
*****************************************************************************
                                   OS/2
*****************************************************************************
-->

<HR>
<A NAME="OS2"><H1>OS/2 & DOS (EMX)</H1></A>

Die j&uuml;ngste Version ist 0.99.14 (auch bekannt als 1.0 beta 4)

<H3>Download in einer grossen Datei:</H3>
<UL>
  <LI> <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/os209914full.zip">os209914full.zip</A> (7.9 MB)
  enth&auml;lt alle Archive und das Installations-Programm.<BR>
  <LI>Oder Sie laden eine Datei herunger welche das selbe enth&auml;lt, jedoch ohne Quellen, gdb und GNU Utilities:
  <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/os209914.zip">os209914.zip</A> (3.7 MB)
</UL>

<H3>Download als separate Dateien:</H3>
Wen Sie Probleme haben die komplette ZIP-Datei herunterzuladen,
dann k&ouml;nnen Sie ebenso die Inhalte der gepackten Datei separat herunterladen:<BR>
<OL>
  <LI><B>Notwendige Dateien:</B>
  <UL>
    <LI> Das Compiler-Binary und die Units der RTL: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/separate/baseemx.zip">baseemx.zip</A> (840 kB)
    <LI> Das Installationsprogramm: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/separate/install.exe">install.exe</A>(139 kB)<BR>
    und das zugeh&ouml;rige Installations-Skript <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/separate/install.dat">install.dat</A>(6 kB)<BR>
    sowie weiterhin die Unzip-Dll: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/separate/unzip32.dll">unzip32.dll</A>(227 kB)<BR>
    <LI> Ausserdem ben&ouml;tigen Sie EMX in einer der folgendne Formen.<BR>
      Als Archiv mit ausgew&auml;hlte EMX Utilities f&uuml;r Free Pascal:
      <UL>
        <LI> GNU <tt>as</TT> und <tt>ld</tt> f&uuml;r emx: <A HREF=ftp://ftp.freepascal.org/pub/fpc/dist/Os2/separate/asldemx.zip>asldemx.zip</A></LI>
      </UL>
      Oder als eine vollst&auml;ndige EMX Installation; Sie erhalten diese von einer der folgenden Stellen:
      <UL>
        <LI> <A HREF=http://www.leo.org/pub/comp/os/os2/leo/gnu/emx+gcc/index.html>www.leo.org</A></LI>
        <LI> <A HREF=ftp://ftp.cdrom.com/pub/os2/emx09c>ftp.cdrom.com</A></LI>
        <LI> <A HREF=http://src.doc.ic.ac.uk/Mirrors/ftp.cdrom.com/pub/os2/emx09c>src.doc.ic.ac.uk</A></LI>
        <LI> <A HREF=ftp://ftp.funet.fi/mirrors/ftp.cdrom.com/pub/os2/emx09c>ftp.funet.fi</A></LI>
      </UL>
      Sie ben&ouml;tigen dabei mindestens diese Dateien:<BR>
      Emxrt.zip, emxdev1.zip, emxdev2.zip, gnudev1.zip und gnudev2.zip.
    </LI>
  </UL>

  <LI><B>Optionale Dateien:</B>
  <UL>
    <LI> Demo Dateien: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/separate/demo.zip">demo.zip</A> (72 kB)
    <LI> Dokumentation in PDF: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/separate/docs-pdf.zip">docs-pdf.zip</A> (1.6 MB)
  </UL>
  <LI> <B>Optionale Quell-Dateien:</B>
  <UL>
    <LI> Basis-Quellen (notwendig): <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/basesrc.zip">basesrc.zip</A> (17 kB)
    <LI> Die Compiler-Quellen: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/compsrc.zip">compsrc.zip</A> (1.3 MB)
    <LI> Die Quellen der Runtime Library: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/rtlsrc.zip">rtlsrc.zip</A> (1.2 MB)
    <LI> API Quellen: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/apisrc.zip">apisrc.zip</A> (114 kB)
    <LI> Quellen der Free Component Library (FCL): <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/fclsrc.zip">fclsrc.zip</A> (290 kB)
    <LI> Quellen der Pakete: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/pkgssrc.zip">pkgssrc.zip</A> (890 kB)
    <LI> Quellen der Utilities: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/utilssrc.zip">utilssrc.zip</A> (344 kB)
    <LI> Quellen des Installers: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/instsrc.zip">instsrc.zip</A> (45 kB)
    <LI> Quellen der Dokumentation: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/docsrc.zip">docsrc.zip</A> (1.0 MB)
  </UL>
</OL>
Sie sollten alle Dateien in ein Verzeichnis kopieren und dann das
Installations-Porgramm in diesem Verzeichnis starten. Es wird erkennen welche
Dateien Sie heruntergeladen haben und ihnen auch nur die Installation der
Dateien anbieten, die vorhanden sind. Aus diesem Grund sollten Sie die
Dateinamen nicht &auml;ndern!

</UL><!-- separate section of OS2 part -->
</UL><!-- complete OS2 part -->


<!--
*****************************************************************************
                                  Win32
*****************************************************************************
-->

<HR>
<A NAME="Win32"><H1>Win32 (Windows 95, 98, NT)</H1></A>

Die j&uuml;ngste Version ist 0.99.14a (auch bekannt als Version 1.0 beta 4a)

<H3>Download als eine grosse Datei:</H3>
<UL>
  <LI> Sie k&ouml;nnen das gesamte Paket als eine grosse gezippte Datei herunterladen:
  <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/w3209914full.zip">w3209914full.zip</A> (12.2 MB)
  <LI> Oder Sie k&ouml;nnen ein Archiv herunterladen das weder Quellen, gdb noch die GNU Utilities enth&auml;lt:
  <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/w3209914.zip">w3209914.zip</A> (7.1 MB)
  <LI> Oder Sie k&ouml;nnen das komplette Paket als eine grosse gezippte Datei herunterladen, inclusive der DOS/Go32v2 Dateien:
  <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/dosw3209914full.zip">dosw3209914full.zip</A> (16 MB)
</UL>

<H3>Download als separate Dateien:</H3>
Sie k&ouml;nnen die Inhalte des obigen Archives als separate Dateien herunterladen:<BR>
<OL>
  <LI> <B>Notwendige Dateien:</B>
  <UL>
    <LI> Installations-Programm: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/install.exe">install.exe</A> (102 kB)
         und das zugeh&ouml;rige Installations-Skript <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/install.dat">install.dat</A> (7 kB)
    <LI> Basis-Dateien (Programme und Units): <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/basew32.zip">basew32.zip</A> (2.0 MB)
    <LI> GNU <tt>as</TT> und <tt>ld</tt> f&uuml;r Win32: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/asldw32.zip">asldw32.zip</A> (882 kB)
  </UL>
  <LI> <B>Optionale Dateien:</B>
  <UL>
    <LI> Kompilierte Basis Units (ben&ouml;tigt von der FCL): <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/ubasw32.zip">ubasw32.zip</A> (121 kB)
    <LI> Kompilierte FCL Units: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/ufclw32.zip">ufclw32.zip</A> (420 kB)
    <LI> Kompilierte API Units: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/uapiw32.zip">uapiw32.zip</A> (79 kB)
    <LI> Kompilierte GTK Units: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/ugtkw32.zip">ugtkw32.zip</A> (346 kB)
    <LI> Kompilierte Datenbank Units: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/udbw32.zip">udbw32.zip</A> (57 kB)
    <LI> Kompilierte Netzwerk Units: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/unetw32.zip">unetw32.zip</A> (11 kB)
    <LI> Kompilierte diverse Units: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/umisw32.zip">umisw32.zip</A> (27 kB)
    <LI> Utilities: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/utilw32.zip">utilw32.zip</A> (715 kB)
    <LI> Der GNU Debugger, <tt>gdb</TT>: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/gdbw32.zip">gdbw32.zip</A> (711 kB)
    <LI> Demo Dateien: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/demo.zip">demo.zip</A> (72 kB)
    <LI> Dokumentation in PDF: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/docs-pdf.zip">docs-pdf.zip</A> (1.6 MB)
  </UL>
  <LI> <B>Optionale Quell-Dateien:</B>
  <UL>
    <LI> Basis-Quellen (notwendig): <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/basesrc.zip">basesrc.zip</A> (17 kB)
    <LI> The Compiler-Quellen: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/compsrc.zip">compsrc.zip</A> (1.3 MB)
    <LI> The Quellen der Runtime Library: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/rtlsrc.zip">rtlsrc.zip</A> (1.2 MB)
    <LI> API Quellen: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/apisrc.zip">apisrc.zip</A> (114 kB)
    <LI> Quellen der Free Component Library (FCL): <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/fclsrc.zip">fclsrc.zip</A> (290 kB)
    <LI> Quellen der Pakete: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/pkgssrc.zip">pkgssrc.zip</A> (890 kB)
    <LI> Quellen der Utilities: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/utilssrc.zip">utilssrc.zip</A> (344 kB)
    <LI> Quellen des Installationsprogramms: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/instsrc.zip">instsrc.zip</A> (45 kB)
    <LI> Quellen der Dokumentation: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Source/docsrc.zip">docsrc.zip</A> (1.0 MB)
  </UL>
</OL>
Sie sollten alle Dateien in ein Verzeichnis kopieren und dann das
Installations-Porgramm in diesem Verzeichnis starten. Es wird erkennen welche
Dateien Sie heruntergeladen haben und ihnen auch nur die Installation der
Dateien anbieten, die vorhanden sind. Aus diesem Grund sollten Sie die
Dateinamen nicht &auml;ndern!


<!--
*****************************************************************************
                                  Amiga
*****************************************************************************
-->

<HR>
<A NAME="Amiga"><H1>Amiga</H1></A>

Die Amiga Version basiert auf dem Release 0.99.5 des Compilers, hat jedoch
einige tiefergehende Anpassungen erfahren.

<H3>Download als eine grosse Datei:</H3>
Sie k&ouml;nnen das gesamte Paket als eine grosse gepackte Datei herunterladen:
<A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Amiga/am09905c.zip">am09905c.zip</A> (2.4 MB)

<H3> Download als separate Dateien:</H3>
Sie k&ouml;nnen die Inhalte des obigen Archivs als separate Dateien herunterladen:<BR>
<OL>
  <LI> <B>Notwendige Dateien:</B>
  <UL>
    <LI> Basis Dateien (Programme und Units): <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Amiga/fpc09905c.lha">fpc09905c.lha</A> (512 kB)
    <LI> GNU <tt>as</TT> und <tt>ld</tt> f&uuml;r Amiga: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Amiga/fpcgnu.lha">fpcgnu.lha</A> (360 kB)
    <LI> Amiga Units: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Amiga/fpcaunit.lha">fpcaunit.lha</A> (264 kB)
  </UL>
  <LI> <B>Optionale Dateien:</B>
  <UL>
    <LI> Dokumentation in html: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Amiga/ref-html.zip">ref-html.zip</A> (526 kB)
  </UL>
  <LI> <B>Optionale Quell-Dateien:</B>
  <UL>
    <LI> Quellen: <A HREF="ftp://ftp.freepascal.org/pub/fpc/dist/Amiga/fpcsrc.lha">fpcsrc.lha</A> (654 kB)
  </UL>
</OL>


<!--
*****************************************************************************
                           Alternative Dokumentation
*****************************************************************************
-->

<HR>
<A NAME="Documentation"><H1>Dokumentation in verschiedenen Formaten</H1></A>

Die Dokumentation in den Release-Paketen ist im <A HREF="ftp://ftp.freepascal.org/pub/fpc/docs/docs-pdf.zip">PDF</A> Format.
Sie kann ebenso in folgenden alternativen Formaten herunter geladen werden:
<UL>
  <LI> <A HREF="ftp://ftp.freepascal.org/pub/fpc/docs/docs-ps.zip">PostScript</A>
  <LI> <A HREF="ftp://ftp.freepascal.org/pub/fpc/docs/docs-dvi.zip">DVI</A>
  <LI> <A HREF="ftp://ftp.freepascal.org/pub/fpc/docs/docs-txt.zip">reiner Text</A>
</UL>


<!--
*****************************************************************************
                                  Handy Utils
*****************************************************************************
-->

<HR>
<A NAME="Utils"><H1>Utilities</H1></A>

Es gibt verschiedene Utilities, die hilfreich sein k&ouml;nnen, wenn man den
Compiler benutzt. Einige davon stehen unter den folgenden Adressen zum
Download bereit.
<UL>
  <LI><A HREF="ftp://ftp.freepascal.org/pub/fpc/contrib/rhide/rhid147b.zip">RHIde 1.4.7 f&uuml;r djgpp</A>
  ist eine IDE die urspr&uuml;nglich f&uuml;r C(++) geschrieben wurden, aber ebenso f&uuml;r Pascal tauglich ist.
  Es gibt eine spezielle Option um Free Pascal anstelle von GPC einzusetzten.
  Weiterhin ist RHGdb enthalten, welches ein Front-End f&uuml;r GDB ist und
  eine Turbo-Debugger &auml;hnliche Ausf&uuml;hrungs-Umgebung bereitstellt.</LI>
  <LI><A HREF="ftp://ftp.freepascal.org/pub/fpc/contrib/rhide/rhide-1.4.7.bin.Linux-2.0.29.tar.gz">RHIde 1.4.7 f&uuml;r Linux</A>
  ist die Linux Version von Rhide. Sie arbeitet vergleichbar der djgpp Version.</LI>
  <LI><A HREF="http://wildsau.idv.uni-linz.ac.at/mfx/upx.html">UPX</A>
  ist ein guter Komprimierer f&uuml;r ausf&uuml;hrbare Dateien. UPX arbeitet mit einer
  Vielzahl von Dateitypen zusammen, einschliesslich DOS/Go32, Win32 und Linux.
  Die verteilten Exe-Dateien von FreePascal f&uuml;r DOS und Win32 sind mit
  diesem Komprimierer gepackt.
  <LI><A HREF="ftp://ftp.freepascal.org/pub/fpc/contrib/libgdb/">LibGDB</A>
  ist eine Bibliothek die ben&ouml;titgt wird, wenn Sie ein Programm linken
  wollen das gdbint f&uuml;r die Implementierung eines programm-internen Debuggers
  verwendet.
  Vorkompilierte Bibliotheken sind f&uuml;r DOS/Go32v2, Win32 und Linux verf&uuml;gbar.
</UL>

</HTML>
