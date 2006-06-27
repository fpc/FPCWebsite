<!--
#TITLE Free Pascal - Download
#ENTRY download
#HEADER Download
#MODIFY
-->

<h1>Offizielle Release Versionen</h1></li>
<p>
  Dies sind fertig gemachte Pakete, geb&uuml;ndelt mit einem Installations-Programm,
  die Ihnen helfen sollen sofort los zu legen. Alle Pakete enthalten eine
  README Datei, die Sie lesen sollten um Installataions-Anweisungen und
  letzte Neuigkeiten zu erhalten.
<p>
  Das neueste Release ist 0.99.14(a) (auch bekannt als Version 1.0 beta 4(a)).
  Sie k&ouml;nnen diese Version f&uuml;r die folgenden Betriebssysteme
  herunterladen:
<ul>
  <li><a href="#Dos">DOS</a> (basierend auf dem Go32V2 DOS Extender)
  <li><a href="#Linux">Linux</a>
  <li><a href="#OS2">OS/2 & DOS</a> (basierend auf Emx)
  <li><a href="#Win32">Win32</a> (f&uuml;r Windows 95, 98, NT)
</ul>

<p>
  Release des m68k Compilers (auf Stand von FPC 0.99.5):
<ul>
  <li><a href="#Amiga">Amiga</a>
</ul>

<p>
Weiterhin k&ouml;nnen sie folgendes herunterladen:
<ul>
  <li><a href="#Documentation">Dokumentation</a> in verschiedenen Formaten.
  <li><a href="#Utils">Utilities</a> f&uuml;r die Verwendung mit Free Pascal.
</ul>

<p>
Zus&auml;tzlich zu den offiziellen Releases gibt es auch sogenannte "snapshots" des Compilers, der RTL,
der IDE und ein paar weiterer Pakete auf der <a href="develop.html">Entwicklungs-Seite</a>.
Dabei handelt es sich um compilierte Versionen der aktuellen Quellen mit allen
Fehler-Korrekturen und Verbesserungen seit dem letzten offiziellen Release.
In diesem Sinne, probieren Sie diese aus wenn Sie ein Problem haben. Es ist
gut m&ouml;glich, dass dort wiederum neue Fehler enthalten sind.

<!--
*****************************************************************************
                                    Dos
*****************************************************************************
-->

<hr>
<a name="Dos"><h1>DOS</h1></a>

Die j&uuml;ngste Version ist 0.99.14a (auch bekannt als 1.0 beta 4a)

<a name="dosbig"><h3>Download als eine grosse Datei</h3></a>
<ul>
  <li>Sie k&ouml;nnen das ganze Paket als eine grosse gezippte Datei herunterladen:
  <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/dos09914full.zip">dos09914full.zip</a> (9.7 MB)
  <li>Oder Sie k&ouml;nnen eine Datei herunterladen mit dem selben Inhalt, jedoch ohne Quellen, gdb und GNU Utilities:
  <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/dos09914.zip">dos09914.zip</a> (5.4 MB)
  <li>Oder Sie k&ouml;nnen das ganze Paket, inclusive der Win32 Dateien als eine grosse gezippte Datei herunterladen:
  <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/dosw3209914full.zip">dosw3209914full.zip</a> (16 MB)
</ul>

<a name="dossep"><h3>Download als getrennte Dateien</h3></a>
Sie k&ouml;nnen die Inhalte der obigen ZIP-Dateien als separate Dateien herunterladen:<br>
<OL>
  <li><b>Notwendige Dateien:</b>
  <ul>
    <li> Installations-Programm: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/install.exe">install.exe</a> (79 kB)
    und das zugeh&ouml;rige Installations-Skript: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/install.dat">install.dat</a> (7 kB)
    <li> Basis Dateien (Programme und alle Units): <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/basego32.zip">basego32.zip</a> (730 kB)
    <li> GNU <tt>as</TT> und <tt>ld</tt> f&uuml;r DOS/go32: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/asldgo32.zip">asldgo32.zip</a> (561 kB)
  </ul>
  <li><b>Optionale Dateien:</b>
  <ul>
    <li> Die README Datei: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/readme.txt">readme.txt</a> (11 kB)
    <li> Die "what's new?" Datei: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/whatsnew.txt">whatsnew.txt</a> (7 kB)
    <li> Kompilierte Base Units (ben&ouml;tigt von der FCL): <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/ubasgo32.zip">ubasgo32.zip</a> (125 kB)
    <li> Kompilierte FCL Units: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/ufclgo32.zip">ufclgo32.zip</a> (420 kB)
    <li> Kompilierte API Units: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/uapigo32.zip">uapigo32.zip</a> (56 kB)
    <li> Kompilierte Netzwerk Units: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/unetgo32.zip">unetgo32.zip</a> (10 kB)
    <li> Kompilierte diverse Units: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/umisgo32.zip">umisgo32.zip</a> (29 kB)
    <li> Utilities: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/utilgo32.zip">utilgo32.zip</a> (715 kB)
    <li> Der GNU Debugger, <tt>gdb</TT>: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/gdbgo32.zip">gdbgo32.zip</a> (520 kB)
    <li> Demo Dateien: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/demo.zip">demo.zip</a> (72 kB)
    <li> Dokumentation als PDF: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/separate/docs-pdf.zip">docs-pdf.zip</a> (1.6 MB)
  </ul>
  <li><b>Optionale Quell-Dateien:</b>
  <ul>
    <li> Basis-Quellen (ben&ouml;tigt): <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/basesrc.zip">basesrc.zip</a> (17 kB)
    <li> Die Compiler Quellen: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/compsrc.zip">compsrc.zip</a> (1.3 MB)
    <li> Die Quellen der Runtime Library: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/rtlsrc.zip">rtlsrc.zip</a> (1.2 MB)
    <li> API Quellen: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/apisrc.zip">apisrc.zip</a> (114 kB)
    <li> Free Component Library (FCL) Quellen: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/fclsrc.zip">fclsrc.zip</a> (290 kB)
    <li> Quellen der Pakete: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/pkgssrc.zip">pkgssrc.zip</a> (890 kB)
    <li> Quellen der Utilities: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/utilssrc.zip">utilssrc.zip</a> (344 kB)
    <li> Quellen des Installations-Programms: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/instsrc.zip">instsrc.zip</a> (45 kB)
    <li> Dokumentation Quellen: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/docsrc.zip">docsrc.zip</a> (1.0 MB)
  </ul>
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

<hr>
<a name="Linux"><h1>Linux</h1></a>

Die j&uuml;ngste Version ist 0.99.14 (auch bekannt als Version 1.0 beta 4),
diese ist verf&uuml;gbar in verschiedenen Formen:
<ul>
  <li> <a href="#linuxbig">Alles in einem grossen Paket</a>
  <li> <a href="#linuxsep">Separate Pakete</a>
  <li> <a href="#linuxrpm">RedHat Pakete (.rpm)</a>
  <li> <a href="#linuxdeb">Debian Pakete (.deb)</a>
  <li> <a href="#linuxtarball">Tar-Archiv mit Quellen</a>
</ul>

<a name="linuxbig"><h3>Download als eine grosse Datei:</h3></a>
<ul>
  <li> <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/fpc-0.99.14.ELF.tar">fpc-0.99.14.ELF.tar</a> (9.4 MB)
  enth&auml;lt ein Standard-TAR Archif mit einem Installations-Skript.<br>
  Nach dem Entpacken des Archivs f&uuml;hren Sie das Installations-Skript im
  erzeugten Verzeichnis aus indem sie "<TT>sh install.sh</TT>" eingeben.
</ul>

<a name="linuxsep"><h3>Download als separate Dateien:</h3></a>
Wenn sie Probleme haben die komplette TAR-Datei herunterzuladen,
dann k&ouml;nnen Sie die Inhalte der TAR-Datei auch separat herunterladen:<br>
<OL>
  <li><b>Notwendige Dateien:</b>
  <ul>
    <li> Das Installations-Skript: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/separate/install.sh">install.sh</a> (4 kB)
    <li> Die Compiler-Bin&auml;rdatei und ALLE Units (RTL, FCL, gtk usw.): <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/separate/binary.tar">binary.tar</a> (3.2 MB)
  </ul>
  <li><b>Optionale Dateien:</b>
  <ul>
    <li> Die Dokumentation: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/separate/docs.tar.gz">docs.tar.gz</a> (1.6 MB)
    <li> Die Demos: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/separate/demo.tar.gz">demo.tar.gz</a> (63 kB)
    <li> Die Quellen: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/separate/sources.tar">sources.tar</a> (4.5 MB)
  </ul>
</OL>
Sie sollten alle diese Dateien in ein Verzeichnis herunterladen.
Solange sie die Dateinamen nicht &auml;ndern wird das Installations-Skript
die von ihnen heruntergeladnene Dateien erkennen und ihnen deren
Installation anbieten.

<a name="linuxrpm"><h3>Redhat Pakete:</h3></a>
<ul>
  <li><b>Bin&auml;re Pakete:</b></li>
  <ul>
    <li> <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/rpm/fpc-0.99.14-1.i386.rpm">fpc-0.99.14-1.i386.rpm</a> (2.1 MB)
         enth&auml;lt den Compiler, die Utils, die RTL und alle Units.<br>
    <li> <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/rpm/fpc-docs-0.99.14-1.i386.rpm">fpc-docs-0.99.14-1.i386.rpm</a> (1.6 MB)
         enth&auml;lt die Dokumentation.<br>
  </ul>
  <li><b>Quell-Pakete:</b></li>
  <ul>
    <li> <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/rpm/fpc-0.99.14-1.src.rpm">fpc-0.99.14-1.src.rpm</a> (3.8 MB)
         enth&auml;lt die Quellen des Compilers, der RTL und aller anderen Units.<br>
    <li> <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/rpm/fpc-docs-0.99.14-1.i386.rpm">fpc-docs-0.99.14-1.i386.rpm</a> (880 kB)
         dieses Quellen-RPM enth&auml;lt die Sourcen.<br>
  </ul>
</ul>

<a name="linuxdeb"><h3>Debian Pakete:</h3></a>
<ul>
  <li> Debian 2.2 und neuer enth&auml;lt Free Pascal.
       Die j&uuml;ngste offizielle (instabile) Version welche f&uuml;r Debian verf&uuml;gbar ist ist
       <a href="http://www.debian.org/Packages/unstable/devel/fp-compiler.html">hier</a>
       verf&uuml;gbar.
  <li> <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/deb/">Dieses Verzeichnis</a>
       enth&auml;lt inoffizielle Debian Pakete des letzten Relese.<br>
</ul>

<a name="linuxtarball"><h3>Tar-Archiv mit Quellen:</h3></a>
<ul>
  <li> <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Linux/separate/sources.tar">sources.tar</a> (4.5 MB)
</ul>


<!--
*****************************************************************************
                                   OS/2
*****************************************************************************
-->

<hr>
<a name="OS2"><h1>OS/2 & DOS (EMX)</h1></a>

Die j&uuml;ngste Version ist 0.99.14 (auch bekannt als 1.0 beta 4)

<h3>Download in einer grossen Datei:</h3>
<ul>
  <li> <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/os209914full.zip">os209914full.zip</a> (7.9 MB)
  enth&auml;lt alle Archive und das Installations-Programm.<br>
  <li>Oder Sie laden eine Datei herunger welche das selbe enth&auml;lt, jedoch ohne Quellen, gdb und GNU Utilities:
  <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/os209914.zip">os209914.zip</a> (3.7 MB)
</ul>

<h3>Download als separate Dateien:</h3>
Wen Sie Probleme haben die komplette ZIP-Datei herunterzuladen,
dann k&ouml;nnen Sie ebenso die Inhalte der gepackten Datei separat herunterladen:<br>
<OL>
  <li><b>Notwendige Dateien:</b>
  <ul>
    <li> Das Compiler-Binary und die Units der RTL: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/separate/baseemx.zip">baseemx.zip</a> (840 kB)
    <li> Das Installationsprogramm: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/separate/install.exe">install.exe</a>(139 kB)<br>
    und das zugeh&ouml;rige Installations-Skript <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/separate/install.dat">install.dat</a>(6 kB)<br>
    sowie weiterhin die Unzip-Dll: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/separate/unzip32.dll">unzip32.dll</a>(227 kB)<br>
    <li> Ausserdem ben&ouml;tigen Sie EMX in einer der folgendne Formen.<br>
      Als Archiv mit ausgew&auml;hlte EMX Utilities f&uuml;r Free Pascal:
      <ul>
        <li> GNU <tt>as</TT> und <tt>ld</tt> f&uuml;r emx: <a href=ftp://ftp.freepascal.org/pub/fpc/dist/Os2/separate/asldemx.zip>asldemx.zip</a></li>
      </ul>
      Oder als eine vollst&auml;ndige EMX Installation; Sie erhalten diese von einer der folgenden Stellen:
      <ul>
        <li> <a href=http://www.leo.org/pub/comp/os/os2/leo/gnu/emx+gcc/index.html>www.leo.org</a></li>
        <li> <a href=ftp://ftp.cdrom.com/pub/os2/emx09c>ftp.cdrom.com</a></li>
        <li> <a href=http://src.doc.ic.ac.uk/Mirrors/ftp.cdrom.com/pub/os2/emx09c>src.doc.ic.ac.uk</a></li>
        <li> <a href=ftp://ftp.funet.fi/mirrors/ftp.cdrom.com/pub/os2/emx09c>ftp.funet.fi</a></li>
      </ul>
      Sie ben&ouml;tigen dabei mindestens diese Dateien:<br>
      Emxrt.zip, emxdev1.zip, emxdev2.zip, gnudev1.zip und gnudev2.zip.
    </li>
  </ul>

  <li><b>Optionale Dateien:</b>
  <ul>
    <li> Demo Dateien: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/separate/demo.zip">demo.zip</a> (72 kB)
    <li> Dokumentation in PDF: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Os2/separate/docs-pdf.zip">docs-pdf.zip</a> (1.6 MB)
  </ul>
  <li> <b>Optionale Quell-Dateien:</b>
  <ul>
    <li> Basis-Quellen (notwendig): <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/basesrc.zip">basesrc.zip</a> (17 kB)
    <li> Die Compiler-Quellen: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/compsrc.zip">compsrc.zip</a> (1.3 MB)
    <li> Die Quellen der Runtime Library: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/rtlsrc.zip">rtlsrc.zip</a> (1.2 MB)
    <li> API Quellen: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/apisrc.zip">apisrc.zip</a> (114 kB)
    <li> Quellen der Free Component Library (FCL): <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/fclsrc.zip">fclsrc.zip</a> (290 kB)
    <li> Quellen der Pakete: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/pkgssrc.zip">pkgssrc.zip</a> (890 kB)
    <li> Quellen der Utilities: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/utilssrc.zip">utilssrc.zip</a> (344 kB)
    <li> Quellen des Installers: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/instsrc.zip">instsrc.zip</a> (45 kB)
    <li> Quellen der Dokumentation: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/docsrc.zip">docsrc.zip</a> (1.0 MB)
  </ul>
</OL>
Sie sollten alle Dateien in ein Verzeichnis kopieren und dann das
Installations-Porgramm in diesem Verzeichnis starten. Es wird erkennen welche
Dateien Sie heruntergeladen haben und ihnen auch nur die Installation der
Dateien anbieten, die vorhanden sind. Aus diesem Grund sollten Sie die
Dateinamen nicht &auml;ndern!

</ul><!-- separate section of OS2 part -->
</ul><!-- complete OS2 part -->


<!--
*****************************************************************************
                                  Win32
*****************************************************************************
-->

<hr>
<a name="Win32"><h1>Win32 (Windows 95, 98, NT)</h1></a>

Die j&uuml;ngste Version ist 0.99.14a (auch bekannt als Version 1.0 beta 4a)

<h3>Download als eine grosse Datei:</h3>
<ul>
  <li> Sie k&ouml;nnen das gesamte Paket als eine grosse gezippte Datei herunterladen:
  <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/w3209914full.zip">w3209914full.zip</a> (12.2 MB)
  <li> Oder Sie k&ouml;nnen ein Archiv herunterladen das weder Quellen, gdb noch die GNU Utilities enth&auml;lt:
  <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/w3209914.zip">w3209914.zip</a> (7.1 MB)
  <li> Oder Sie k&ouml;nnen das komplette Paket als eine grosse gezippte Datei herunterladen, inclusive der DOS/Go32v2 Dateien:
  <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Dos/dosw3209914full.zip">dosw3209914full.zip</a> (16 MB)
</ul>

<h3>Download als separate Dateien:</h3>
Sie k&ouml;nnen die Inhalte des obigen Archives als separate Dateien herunterladen:<br>
<OL>
  <li> <b>Notwendige Dateien:</b>
  <ul>
    <li> Installations-Programm: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/install.exe">install.exe</a> (102 kB)
         und das zugeh&ouml;rige Installations-Skript <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/install.dat">install.dat</a> (7 kB)
    <li> Basis-Dateien (Programme und Units): <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/basew32.zip">basew32.zip</a> (2.0 MB)
    <li> GNU <tt>as</TT> und <tt>ld</tt> f&uuml;r Win32: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/asldw32.zip">asldw32.zip</a> (882 kB)
  </ul>
  <li> <b>Optionale Dateien:</b>
  <ul>
    <li> Kompilierte Basis Units (ben&ouml;tigt von der FCL): <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/ubasw32.zip">ubasw32.zip</a> (121 kB)
    <li> Kompilierte FCL Units: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/ufclw32.zip">ufclw32.zip</a> (420 kB)
    <li> Kompilierte API Units: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/uapiw32.zip">uapiw32.zip</a> (79 kB)
    <li> Kompilierte GTK Units: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/ugtkw32.zip">ugtkw32.zip</a> (346 kB)
    <li> Kompilierte Datenbank Units: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/udbw32.zip">udbw32.zip</a> (57 kB)
    <li> Kompilierte Netzwerk Units: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/unetw32.zip">unetw32.zip</a> (11 kB)
    <li> Kompilierte diverse Units: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/umisw32.zip">umisw32.zip</a> (27 kB)
    <li> Utilities: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/utilw32.zip">utilw32.zip</a> (715 kB)
    <li> Der GNU Debugger, <tt>gdb</TT>: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/gdbw32.zip">gdbw32.zip</a> (711 kB)
    <li> Demo Dateien: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/demo.zip">demo.zip</a> (72 kB)
    <li> Dokumentation in PDF: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Win32/separate/docs-pdf.zip">docs-pdf.zip</a> (1.6 MB)
  </ul>
  <li> <b>Optionale Quell-Dateien:</b>
  <ul>
    <li> Basis-Quellen (notwendig): <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/basesrc.zip">basesrc.zip</a> (17 kB)
    <li> The Compiler-Quellen: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/compsrc.zip">compsrc.zip</a> (1.3 MB)
    <li> The Quellen der Runtime Library: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/rtlsrc.zip">rtlsrc.zip</a> (1.2 MB)
    <li> API Quellen: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/apisrc.zip">apisrc.zip</a> (114 kB)
    <li> Quellen der Free Component Library (FCL): <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/fclsrc.zip">fclsrc.zip</a> (290 kB)
    <li> Quellen der Pakete: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/pkgssrc.zip">pkgssrc.zip</a> (890 kB)
    <li> Quellen der Utilities: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/utilssrc.zip">utilssrc.zip</a> (344 kB)
    <li> Quellen des Installationsprogramms: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/instsrc.zip">instsrc.zip</a> (45 kB)
    <li> Quellen der Dokumentation: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Source/docsrc.zip">docsrc.zip</a> (1.0 MB)
  </ul>
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

<hr>
<a name="Amiga"><h1>Amiga</h1></a>

Die Amiga Version basiert auf dem Release 0.99.5 des Compilers, hat jedoch
einige tiefergehende Anpassungen erfahren.

<h3>Download als eine grosse Datei:</h3>
Sie k&ouml;nnen das gesamte Paket als eine grosse gepackte Datei herunterladen:
<a href="ftp://ftp.freepascal.org/pub/fpc/dist/Amiga/am09905c.zip">am09905c.zip</a> (2.4 MB)

<h3> Download als separate Dateien:</h3>
Sie k&ouml;nnen die Inhalte des obigen Archivs als separate Dateien herunterladen:<br>
<OL>
  <li> <b>Notwendige Dateien:</b>
  <ul>
    <li> Basis Dateien (Programme und Units): <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Amiga/fpc09905c.lha">fpc09905c.lha</a> (512 kB)
    <li> GNU <tt>as</TT> und <tt>ld</tt> f&uuml;r Amiga: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Amiga/fpcgnu.lha">fpcgnu.lha</a> (360 kB)
    <li> Amiga Units: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Amiga/fpcaunit.lha">fpcaunit.lha</a> (264 kB)
  </ul>
  <li> <b>Optionale Dateien:</b>
  <ul>
    <li> Dokumentation in html: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Amiga/ref-html.zip">ref-html.zip</a> (526 kB)
  </ul>
  <li> <b>Optionale Quell-Dateien:</b>
  <ul>
    <li> Quellen: <a href="ftp://ftp.freepascal.org/pub/fpc/dist/Amiga/fpcsrc.lha">fpcsrc.lha</a> (654 kB)
  </ul>
</OL>


<!--
*****************************************************************************
                           Alternative Dokumentation
*****************************************************************************
-->

<hr>
<a name="Documentation"><h1>Dokumentation in verschiedenen Formaten</h1></a>

Die Dokumentation in den Release-Paketen ist im <a href="ftp://ftp.freepascal.org/pub/fpc/docs/docs-pdf.zip">PDF</a> Format.
Sie kann ebenso in folgenden alternativen Formaten herunter geladen werden:
<ul>
  <li> <a href="ftp://ftp.freepascal.org/pub/fpc/docs/docs-ps.zip">PostScript</a>
  <li> <a href="ftp://ftp.freepascal.org/pub/fpc/docs/docs-dvi.zip">DVI</a>
  <li> <a href="ftp://ftp.freepascal.org/pub/fpc/docs/docs-txt.zip">reiner Text</a>
</ul>


<!--
*****************************************************************************
                                  Handy Utils
*****************************************************************************
-->

<hr>
<a name="Utils"><h1>Utilities</h1></a>

Es gibt verschiedene Utilities, die hilfreich sein k&ouml;nnen, wenn man den
Compiler benutzt. Einige davon stehen unter den folgenden Adressen zum
Download bereit.
<ul>
  <li><a href="ftp://ftp.freepascal.org/pub/fpc/contrib/rhide/rhid147b.zip">RHIde 1.4.7 f&uuml;r djgpp</a>
  ist eine IDE die urspr&uuml;nglich f&uuml;r C(++) geschrieben wurden, aber ebenso f&uuml;r Pascal tauglich ist.
  Es gibt eine spezielle Option um Free Pascal anstelle von GPC einzusetzten.
  Weiterhin ist RHGdb enthalten, welches ein Front-End f&uuml;r GDB ist und
  eine Turbo-Debugger &auml;hnliche Ausf&uuml;hrungs-Umgebung bereitstellt.</li>
  <li><a href="ftp://ftp.freepascal.org/pub/fpc/contrib/rhide/rhide-1.4.7.bin.Linux-2.0.29.tar.gz">RHIde 1.4.7 f&uuml;r Linux</a>
  ist die Linux Version von Rhide. Sie arbeitet vergleichbar der djgpp Version.</li>
  <li><a href="http://wildsau.idv.uni-linz.ac.at/mfx/upx.html">UPX</a>
  ist ein guter Komprimierer f&uuml;r ausf&uuml;hrbare Dateien. UPX arbeitet mit einer
  Vielzahl von Dateitypen zusammen, einschliesslich DOS/Go32, Win32 und Linux.
  Die verteilten Exe-Dateien von FreePascal f&uuml;r DOS und Win32 sind mit
  diesem Komprimierer gepackt.
  <li><a href="ftp://ftp.freepascal.org/pub/fpc/contrib/libgdb/">LibGDB</a>
  ist eine Bibliothek die ben&ouml;titgt wird, wenn Sie ein Programm linken
  wollen das gdbint f&uuml;r die Implementierung eines programm-internen Debuggers
  verwendet.
  Vorkompilierte Bibliotheken sind f&uuml;r DOS/Go32v2, Win32 und Linux verf&uuml;gbar.
</ul>

</html>
