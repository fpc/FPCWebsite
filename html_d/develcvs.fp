<!--
#TITLE Free Pascal - Umgang mit CVS
#ENTRY develop
#SUBENTRY How to CVS
#HEADER Development
-->

<H3><a name="cvs">Abrufen mit GNU CVS</a></H3>

<ol>
<!-- IDXSTART -->
  <LI><A HREF="#introduc">CVS, eine Einf&uuml;hrung</A></LI>
  <LI><A HREF="#obtaincvs">Bezug von CVS</A></LI>
  <LI><A HREF="#setup">Installation und Einrichtung von CVS</A></LI>
  <LI><A HREF="#login">Einloggen in den CVS Server</A></LI>
  <LI><A HREF="#checkout">Erstmaliges Herunterladen (checkout) eines Paketes</A></LI>
  <LI><A HREF="#update">Aktualisieren eines Paketes</A></LI>
<!-- IDXEND -->
</ol>

Dieses Dokument wurde zuletzt aktualisiert: 2000-Jan-18.<BR>
(&Uuml;bersetzung ins Deutsche: 2000-Apr-21.)<BR>
Kommentare und Anregungen an
<a href="mailto:marco@freepascal.org">Marco@freepascal.org</a>.

<ol>
<A NAME="introduc"></A>
<H3><LI>CVS, eine Einf&uuml;hrung</LI></H3>
<p>
<A HREF="http://www.cyclic.com/">CVS</A> ist eine <a href="http://www.gnu.org">GNU</a> Anwendung
die Versions-Management vereinfacht und das Arbeiten an grossen Projekten mit mehreren
Entwicklern gleichzeitig erlaubt.
</p>

<p>
Alternativ zu den t&auml;glichen ZIP Dateien der CVS-Quellen wurde
das FreePascal CVS Archiv f&uuml;r jeden m Nur-Lesen Modus zug&auml;nglich gemacht.
Dies bedeutet, dass der komplette Code des Projekts zu jeder Zeit verf&uuml;gbar ist.
</p>

<p>
In dem Moment wo ein Entwickler eine Korrektur f&uuml;r einen Fehler in das Archiv
einspielt ist dieser auch f&uuml;r jeden verf&uuml;gbar. CVS, sofern richtig angewendet
ist aussderm die &ouml;konomischte Form die Sourcen zu erhalten, insbesondere dann
wenn Sie ihre Sourcen z.B. alle 2 Wochen oder &ouml;fter aktualisieren wollen.
Nach dem anf&auml;nglichen grossen Download werden die t&auml;glichen Updates relativ
klein und schnell.
</p>

<A NAME="obtaincvs"></A>
<H3><LI>Bezug von CVS</LI></H3>
<p>
<ol>
<lI><b>Linux/FreeBSD</b> - Die meisten grossen Linux Distributionen enthalten
CVS. Mit dem Installationsprogramm der Distribution (Paket-Manager) sollte sich
CVS installieren lassen. (Slackware: pkgtool, RedHat: RPM or its X-windows companion).
CVS benutzt das RCS Paket, darum sollte RCS ebenfalls Installiert werden.
Beide Pakete zusammen ben&ouml;tigen etwa 5 MB Plattenplatz, je nach Distribution.
</li>
<lI><b>Windows</b> - Am einfachsten laden sie sich WinCVS herunter (etwa 1,7 MB)
welche unter <a href="www.wincvs.org">www.wincvs.org</a> zu finden ist.
Dieses Archiv enth&auml;lt auch eine Datei namens cvs.hlp welche eine gute Referenz zu CVS ist.</li>
<li><b>MAC</b> - Ein Client ist verf&uuml;gbar auf der <a href="http://www.wincvs.org">WinCVS</a> Homepage.
<li><b>Andere Betriebssysteme</b> - M&ouml;glicherweise exisitert ein passender Client auf der
<A HREF="http://www.cyclic.com/">cyclic</a> CVS web site.</li>
</ol>

<A NAME="setup"></A>
<H3><LI>Installation und Einrichtung von CVS</LI></H3>

Erzeugen sie zuerst ein leeres Basis-Verzeichnis f&uuml;r die Sourcen,
z.B.<p>
<pre>
mkdir /usr/src/fpc/     unter Linux  oder
md    d:\source\fpc\    unter DOS,
</pre>
Die Position ist beliebig, aber sie m&uuml;ssen Schreibrechte in diesem Verzeichnis
besitzen.<p>

Dieses Verzeichnis ist das Basis Verzeichnis f&uuml;r die Sourcen und alle CVS
Befehle m&uuml;ssen in diesem Verzeichnis ausgef&uuml;hrt werden.<p>

Das WinCVS Verzeichnus sollte zur PATH-Varaible erg&auml;nzt werden.
Das folgende Beispiel ist f&uuml;r DOS und 4Dos:<p>

<pre>
path %PATH%;c:\tools\wincvs
</pre>
<p>
Sie k&ouml;nnen dieses Verzeichnis auch zur PATH-Zeile in Ihrer autoexec.bat
hinzuf&uuml;gen.</P>
Weiterhin ben&uuml;tzt CVS ein Verzeichnis f&uuml;r mehrere sehr kleine Konfigurationsdateien.
Unter Unix/Linux wird automatisch das Home-Verzeichnis f&uuml;r diesen Zweck verwendet.
Unter DOS/Win32 dagegen muss das Verzeichnis das f&uuml;r diesen Zweck verwendet wird
erst mit der Umgebungsvariable HOME bekannt gemacht werden:
</p>
<pre>
set HOME=c:\tools\wincvs
</pre>
<p>
Es kann jeder Verzeichnis verwendet werden das NICHT unter CVS genutzt wird.
In diesem Sinne darf das Verzeichnis im dem die FPC Sourcen abgelegt werden
nicht angegeben werden.
</P>
<p>
Um unn&ouml;tig lange Befehlszeilen zu vermeiden geben wir weiterhin den Server
mit dem CVS eine Verbindung aufbauen soll in einer Umgebungsvaraiblen an,
sowohl unter Linux wie auch unter DOS.
</P>
DOS: (in Ihrer autoexec.bat oder Ihrer Login Batch-Datei)
<pre>
set CVSROOT=:pserver:cvs@cvs.freepascal.org:/FPC/CVS
</pre>

Linux(bash): (in Ihre .bash_profile Datei einf&uuml;gen)
<pre>
export CVSROOT=":pserver:cvs@cvs.freepascal.org:/FPC/CVS"
</pre>

<A NAME="login"></A>
<H3><LI>Einloggen in den CVS Server</LI></H3>
<p>
Sie m&uuml;ssen sich nur einmal mit dieser Prozedur einloggen. Das Client-Programm
speichert ihre Login-Information in einer .cvspass Datei in ihrem Home-Verzeichnis ab.
</p>

Das Login Kommando lautet
<pre>
cvs login
</pre>
oder wen sie keine CVSROOT Umgebungsvariable gesetzt haben:
<pre>
cvs -d :pserver:cvs@cvs.freepascal.org:/FPC/CVS login
</pre>
<p>
Das Client-Programm wird Sie nach einem Passwort fragen:

<PRE>
(Logging in to cvs@cvs.freepascal.org)
CVS password:
</PRE>
welches f&uuml;r den allgemeinen Nur-Lesen Zugriff auf das FreePascal Archiv
&quot;cvs&quot; lautet (ohne Hochkommas und in Kleinschreibung eingeben).
</p>

Unter Win32 kann Ihnen die folgende Batch-Datei den Prozess vereinfachen:<p>

<pre>
@echo off
path %PATH%;d:\tools\wincvs
set home=d:\cvssource\fpc
set CVSROOT=:pserver:cvs@cvs.freepascal.org:/FPC/CVS
echo Bitte Passwort eingeben (="cvs")
cvs login
</pre>
<p>
<A NAME="checkout"></A>
<H3><LI>Erstmaliges Herunterladen (checkout) eines Paketes</LI></H3>
<p>
Um den allerersten Download (auch checkout genannt) eines Paketes zu intieren geben sie folgendes ein:
</P>
<pre>
cvs -z 3 checkout &lt;modulename&gt;
</pre>
oder (falls sie die CVSROOT Umgebungsvariable nicht gesetzt haben)
<pre>
cvs -z 3 -d :pserver:cvs@cvs.freepascal.org:/FPC/CVS checkout &lt;modulename&gt;
</pre>

wobei &lt;modulename&gt; eines der follogenden Module sein kann:

<UL>
<LI><B>base</B> enth&auml;lt mehrere Makefile Vorlagen, nicht notwendig f&uuml;r normales Compilieren.</li>
<LI><B>rtl</B> enth&auml;lt die Quellen der RTL (Run-Time Library).</li>
<LI><B>compiler</B> enth&auml;lt die Quellen des Compilers (ben&ouml;tigt die RTL f&uuml;r die šbersetzung).</lI>
<LI><B>fcl</B> enth&auml;lt die Quellen der Free Component Library (ben&ouml;tigt PACKAGES/paszlib).</li>
<LI><b>utils</b> enth&auml;lt die Quellen mehrerer Utilitys die innerhalb des FPC-Projekts benutzt werden (manche ben&ouml;tigen die FCL).</li>
<LI><B>gtk</B> enth&auml;lt die GTK Bindings Quellen.</li>
<LI><B>api</B> enth&auml;lt die API Quellen (ben&ouml;tigt von FV und allem das darauf aufbaut).</li>
<LI><B>docs</B> enth&auml;lt die Quellen der Dokumentation (TeX).</LI>
<li><b>gdbpas</b> enth&auml;lt einen Patch f&uuml;r die GDB Quellen um Pascal in GDB zu integrieren.
Sie werden gcc (oder djgpp) und bevorzugt die GDB v4.18 Quellen ben&ouml;tigen um dies zu &uuml;bersetzten.</li>
<li><b>ide</b> enth&auml;lt die Textmodus-IDE.
Diese l&auml;sst sich derzeit nicht &uuml;bersetzen, da die FreeVision
Quellen wegen eines Copyright Problems nicht &ouml;ffentlich verf&uuml;gbar sind.</li>
<LI><B>bugs</B> enth&auml;lt das Fehler Archiv.
<LI><b>install</b> enth&auml;lt Dateien die erg&auml;nzt und verwendet werden
um Releases zu erzeugen.
(RPM Steuer-Dateien, die Quellen des Installations-Programms und die Demos).</li>
<!-- noch nicht aktiv...
<Li><b>kcl</b> enth&auml;lt das Kassandra/KCL Projekt, das zum Ziel hat
eine portable Visual Component Library zu erzeugen, die nicht notwendigerweise Delphi's entpsricht (ben&ouml;tigt FCL und GTK).</lI>
-->
<li><b>lazarus</b> enth&auml;lt die Dateien des Lazarus Projekts, welches zum Ziel hat eine Delphi compatible VCL zu erzeugen.</lI>
<li><b>packages</b> enth&auml;lt mehrere kleinere Packete und das KCL/Kassandra Projekt
(api, forms, gdbint, ggi, gtk, ibase, inet, mysql, ncurses,
opengl, paszlib, postgres, svgalib, uncgi, utmp, x11, zlib).</li>
</ul>

<p>
Das Auschecken des kompletten CVS Archives dauert zirka 40 Minuten mit
einer 44k0 Verbindung. Im Vergleich dazu: Das einmalige Herunterladen
von lediglich der RTL und dem Compiler als ZIP gepackte Sourcen ben&ouml;tigt
lediglich 20 Minuten bei bleicher Verbindungs-Geschwindigkeit.
</p>

<A NAME="update"></A>
<H3><LI>Aktualisieren eines Paketes</LI></H3>
<p>
Den Vorteil: das Updaten eines ausgecheckten Paketes am n&auml;chsten Tag geht
schnell vor sich. Typischerweise werden nur 1,5 Minuten ben&ouml;tigt um das
komplette Projekt zu aktualisieren (unter der Annahme dass Žnderungen im
Archiv stattgefunden haben und die Verbindung mit 44k0 l&auml;uft).
</P>
Die Syntax f&uuml;r das Aktualiserungs-Kommando ist &auml;hnlich dem checkout Kommando:<p>
<pre>
cvs -z 3 update -Pd &lt;modulename&gt;
</pre>
or f&uuml;r den Fall, dass CVSROOT nicht gesetzt ist:<p>
<pre>
cvs -z 3 -d :pserver:cvs@cvs.freepascal.org:/FPC/CVS update -Pd &lt;modulename&gt;
</pre>
<p>
Der Schalter -Pd sagt Ihrem Client dass er leere Verzeichnisse entfernen soll (diese
sollte man nie per Hand entfernen!). Verschieben sie den Schalter -Pd nie vor das
Schl&uuml;sselwort update, or vor einen der anderen Schalter nach dem update Schl&uuml;sselwort.
Die Reihenfolge der Schalter ist wichtig!
</P>
Der Schalter -z 3 sagt dem CVS Server dass er alle Daten vor dem Versenden packen soll.
Bitte verwenden Sie die maximale Kompression (-z 9) nicht, da dies kaum schneller ist,
aber dem Server eine grosse Auslastung beschert.
<p>
Die folgende Batch-Datei ist f&uuml;r den Win32 CVS (wincvs) Client und Aktualisert
das komplette Archiv (wenn CVSROOT gesetzt ist, ansonsten erg&auml;nzen Sie bitte
den -d parameter zu jeder CVS Zeile):
<p>

<pre>
@echo off
cvs  -z 3 update -Pd compiler
cvs  -z 3 update -Pd rtl
cvs  -z 3 update -Pd api
cvs  -z 3 update -Pd fcl
cvs  -z 3 update -Pd ide
cvs  -z 3 update -Pd utils
cvs  -z 3 update -Pd tests
cvs  -z 3 update -Pd packages
cvs  -z 3 update -Pd bugs
cvs  -z 3 update -Pd docs
cvs  -z 3 update -Pd gdbpas
cvs  -z 3 update -Pd gtk
cvs  -z 3 update -Pd install
cvs  -z 3 update -Pd kcl
cvs  -z 3 update -Pd lazarus
cvs  -z 3 update -Pd base
cvs  -z 3 update -Pd html
</pre>

Das &Auml;quivalent f&uuml;r Linux sieht so aus (wieder unter der Annahme dass CVSROOT
gesetzt ist):<p>

<pre>
#/bin/sh
cvs  -z 3 update -Pd compiler 
cvs  -z 3 update -Pd rtl 
cvs  -z 3 update -Pd api 
cvs  -z 3 update -Pd fcl 
cvs  -z 3 update -Pd ide 
cvs  -z 3 update -Pd utils 
cvs  -z 3 update -Pd tests 
cvs  -z 3 update -Pd packages 
cvs  -z 3 update -Pd bugs 
cvs  -z 3 update -Pd docs 
cvs  -z 3 update -Pd gdbpas 
cvs  -z 3 update -Pd gtk 
cvs  -z 3 update -Pd install 
cvs  -z 3 update -Pd kcl 
cvs  -z 3 update -Pd lazarus 
cvs  -z 3 update -Pd base 
cvs  -z 3 update -Pd html 
</pre>

<P>
F&uuml;r die Neugierigen und Experimentierfreudigen:<BR>
Sie haben lediglich Nur-Lesen Zugriff, versuchen sie nicht irgendetwas zu erg&auml;nzen. :-)
</p>
</HTML>
