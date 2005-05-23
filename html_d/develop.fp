<HTML>
<!--
#TITLE Free Pascal - Entwicklung
#ENTRY develop
#HEADER Development
-->

<p>
Free Pascal ist st&auml;nding in der Entwicklung. Wenn Sie sehen wollen wie sich
die Dinge weiter entwickeln, so k&ouml;nnen Sie sich mit einer Entwickler-Version
einen Eindruck verschaffen.
</p>

<p><B>Anmerkung:</B> Es gibt keinen Support f&uuml;r die Entwikler Versionen.</p>

<p>Sie haben die folgenden Optionen:</p>

<ul>
<li><a href="#sources">Download der t&auml;glichen CVS Quellen</a>
<li><a href="#snapshots">Download der t&auml;glichen Schnappsch&uuml;sse (ebenso die Beta IDE f&uuml;r Dos und Win32!)</a>
<li><a href="#cvs">Abrufen mit GNU CVS</a>
<li><a href="#ports">Portierung auf andere Platformen</a>
<li><a href="#future">Einsicht in die Fehlerliste und zuk&uuml;nfitge Pl&auml;ne</a>
</ul>

<hr>

<H3><a name="sources">Download der t&auml;glichen CVS Quellen</a></H3>
<P>
Sie k&ouml;nnen die aktuellen Quellen direkt aus dem CVS-Archiv herunterladen.
Diese Quellen werden im t&auml;glich Turnus aktualisiert und entsprechen dem
Status des Quellcode Archives. Sie werden auf dem Server (in Belgien) parat
gehalten, auf dem sich das CVS-Arhciv befindet.
</P>
<P>
Sie k&ouml;nnen die aktuellen Quellen der folgenden Pakete herunterladen:
<UL>
<LI><A HREF="ftp://ftp.freepascal.org/pub/fpc/source/base.zip">base</A>
    (mit <A HREF="ftp://ftp.freepascal.org/pub/fpc/source/Changes.base">Changes</A> Datei) Nicht mehr l&auml;nger notwendig. Enth&auml;lt ein paar Batch-Dateien und Makefile Vorlagen.
<LI><A HREF="ftp://ftp.freepascal.org/pub/fpc/source/compiler.zip">compiler</A>
    (mit <A HREF="ftp://ftp.freepascal.org/pub/fpc/source/Changes.compiler">Changes</A> Datei).
<LI><A HREF="ftp://ftp.freepascal.org/pub/fpc/source/rtl.zip">RTL</A>
    (mit <A HREF="ftp://ftp.freepascal.org/pub/fpc/source/Changes.rtl">Changes</A> Datei).
<LI><A HREF="ftp://ftp.freepascal.org/pub/fpc/source/fcl.zip">fcl</A>
    (mit <A HREF="ftp://ftp.freepascal.org/pub/fpc/source/Changes.fcl">Changes</A> Datei).
<LI><A HREF="ftp://ftp.freepascal.org/pub/fpc/source/gtk.zip">GTK</A>
    (mit <A HREF="ftp://ftp.freepascal.org/pub/fpc/source/Changes.gtk">Changes</A> Datei).
<LI><A HREF="ftp://ftp.freepascal.org/pub/fpc/source/api.zip">API</A>
    (mit <A HREF="ftp://ftp.freepascal.org/pub/fpc/source/Changes.api">Changes</A> Datei).
<!-- derzeit nicht verf&uuml;gbar
<LI><A HREF="ftp://ftp.freepascal.org/pub/fpc/source/fv.zip">Free Vision</A>
    (mit <A HREF="ftp://ftp.freepascal.org/pub/fpc/source/Changes.fv">Changes</A> Datei).
-->
</UL>


<hr>

<H3><a name="snapshots">Download der t&auml;glichen Schnappsch&uuml;sse</a></H3>

<p>
Alternativ k&ouml;nnen sie einen sogenannten Snapshot herunterladen. Ein solcher
Schnappschuss ist ein Archiv, das lediglich eine compilierte Version des
Compilers und der RTL enth&auml;lt. Die Schnappsch&uuml;sse werden t&auml;glich aktualisiert.
</p>

<p>
<B>ACHTUNG:</B> wir leisten KEINERLEI support f&uuml;r diese Entwickler-Versionen!
Sie werden lediglich aush H&ouml;flichkeit zur Verf&uuml;gung gestellt. Wenn sie nicht
korrekt arbeiten - nicht gut! Sollte ihr System dabei abstuerzen oder ihre
Daten auf Platte besch&auml;digt werden: Pech gehabt! (es soll einfach gesagt werden,
dass Sie KEINEN SUPPORT BEKOMMEN WENN SIE DIESE VERSIONEN VERWENDEN)</p>

<p>
Die folgenden Schnappschuesse sind verf&uuml;gbar
(siehe <a href="#snapshot">unten</a> f&uuml;r Download Links von einem Mirror-System).</p>

<p>
<UL>
<LI>DOS - GO32V2: die Archive in untenstehender Tabelle haben die selben Namen wie
    die Release Version, enthalten aber neuere Versionen der Dateien welche Sie in den
    offiziellen Releases finden k&ouml;nnen. basego32 enth&auml;lt dementsprechend den Compiler,
    die RTL und dergleichen. Die einzige Ausnahme ist optcompgo32, das einen compiler
    enth&auml;lt der einen einen deutlich verbesserten Optimizer besitzt (benutzten Sie
    den Schalter -OG3p3 f&uuml;r beste Ergebnisse, erg&auml;nzen sie weiterhin -Or wenn sie sehr
    viel Fliesskomma-Operationen einsetzten).
<LI>WIN32: es gilt das gleiche wie f&uuml;r DOS - GO32V2
<LI>Linux: es gilt ebenso das gleiche wie f&uuml;r DOS - GO32V2.<BR>
    Nachfolgend finden Sie ein paar Instuktionen die es Ihnen
    leichter machen sollen die offiziellen Release Versionen
    neben den Entwicklerversionen zu verwenden.<BR>
    Um einen Linux Schnappschuss zu installieren machen sie das folgende:<BR>
    (Diese Prozedure ist f&uuml;r das Installieren eines 0.99.15 Schnappschusses
    &uuml;ber eine 0.99.14 Release Version)
    <OL>
    <LI> Falls nicht vorhanden, machen Sie ein Verzeichnis <TT>/usr/lib/fpc/0.99.15</TT>.
    <LI> Falls nicht vorhanden, machen Sie ein Verzeichnis <TT>/usr/lib/fpc/0.99.15/linuxunits</TT>.
    <LI> Kopieren Sie die Compiler Bin&auml;rdatei (<TT>compiler/ppc386</TT>) nach <TT>/usr/lib/fpc/0.99.15</TT>.
    <LI> Kopieren sie die Units (Inhalte von <TT>rtl/linux</TT>) nach <TT>/usr/lib/fpc/0.99.15/linuxunits</TT>.
    <LI> Passen sie den symbolischen Link in /usr/bin wie folgt an:
    <PRE>
    cd /usr/bin
    mv ppc386 ppc386-0.99.14
    ln -s /usr/lib/fpc/0.99.15/ppc386
    </PRE>
    <LI> Erg&auml;nzen sie diesen Pfad in <TT>/etc/ppc386.cfg</TT>:
    <PRE>
    #IFDEF VER0&nbsp;99&nbsp;15
    -Fp/usr/lib/fpc/0.99.15/linuxunits
    #ENDIF
    </PRE>
    </OL>
<LI>OS/2: auch hier gilt das selbe wie f&uuml;r die zuvor.<BR>
    Lediglich baseemx.zip wird derzeit erzeugt. Die EMX Hilfs-Dateien
    (EMX.DLL f&uuml;r OS/2, EMX.EXE f&uuml;r DOS, etc.) sind <U>nicht</U> in den
    Schnappsch&uuml;ssen enthalten. Wenn sie diese noch nciht installiert haben
    holen Sie sich diese entweder vom regul&auml;ren Release oder besorgen Sie
    sich das EMX-Paket (z.B. von <A HREF="ftp://ftp.leo.org/">LEO</A> oder
    <A HREF="http://hobbes.nmsu.edu">Hobbes</A>).
<li>IDE (derzeitig nur DOS Go32v2 Versionen)<br>
    <ul>
    <li>ide-full-[target].zip: IDE mit Compiler and Debugger (700Kb)<br>
    <li>ide-comp-[target].zip: IDE mit Compiler (320Kb)
    <li>ide-gdb-[target].zip: IDE mit Debugger (523Kb)
    <li>ide-fake-[target].zip: IDE pur (ohne Compiler/Debugger) (143Kb)
    </ul>
    Anmerkung: Sie ben&ouml;tigen einen aktuellen Compiler Schnappschuss damit
    die IDE arbeiten kann! <br>
    Siehe auch die <a href="faq.html">FAQ-Eintr&auml;ge</a> zur IDE,
    insbesondere f&uuml;r mehr Informationen wie man diese einrichtet.
</UL>

<p><a name="snapshot">Download Links:</a></p>

<table border=1>
<tr>
  <th>Datei</th><th>Gr&ouml;sse</th><th colspan=$MIRRORCNT>Mirrors</th>
</tr>
<tr>
  <td colspan=2><b>Dos - Go32v2</b></td>
</tr><tr>
  <td>basego32.zip</td><td>750 KB</td>
    <td><A HREF="$MIRRORLINK/go32v2/basego32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>utilgo32.zip</td><td>600 KB</td>
    <td><A HREF="$MIRRORLINK/go32v2/utilgo32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>ubasgo32.zip</td><td>130 KB</td>
    <td><A HREF="$MIRRORLINK/go32v2/ubasgo32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>ufclgo32.zip</td><td>420 KB</td>
    <td><A HREF="$MIRRORLINK/go32v2/ufclgo32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>uapigo32.zip</td><td>60 KB</td>
    <td><A HREF="$MIRRORLINK/go32v2/uapigo32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>umisgo32.zip</td><td>30 KB</td>
    <td><A HREF="$MIRRORLINK/go32v2/umisgo32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>unetgo32.zip</td><td>10 KB</td>
    <td><A HREF="$MIRRORLINK/go32v2/unetgo32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>optcompgo32.zip</td><td>750 KB</td>
    <td><A HREF="$MIRRORLINK/go32v2/optcompgo32.zip">$MIRRORNAME</A></td>
</tr>
</tr><tr>
  <td>idego32.zip</td><td>910 KB</td>
    <td><A HREF="$MIRRORLINK/go32v2/idego32.zip">$MIRRORNAME</A></td>
</tr>

<tr>
  <td colspan=2><b>Win32</b></td>
</tr><tr>
  <td>basew32.zip</td><td>750 KB</td>
    <td><A HREF="$MIRRORLINK/win32/basew32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>utilw32.zip</td><td>600 KB</td>
    <td><A HREF="$MIRRORLINK/win32/utilw32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>ubasw32.zip</td><td>130 KB</td>
    <td><A HREF="$MIRRORLINK/win32/ubasw32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>ufclw32.zip</td><td>420 KB</td>
    <td><A HREF="$MIRRORLINK/win32/ufclw32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>uapiw32.zip</td><td>60 KB</td>
    <td><A HREF="$MIRRORLINK/win32/uapiw32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>ugtkw32.zip</td><td>400 KB</td>
    <td><A HREF="$MIRRORLINK/win32/ugtkw32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>udbw32.zip</td><td>60 KB</td>
    <td><A HREF="$MIRRORLINK/win32/udbw32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>umisw32.zip</td><td>30 KB</td>
    <td><A HREF="$MIRRORLINK/win32/umisw32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>unetw32.zip</td><td>10 KB</td>
    <td><A HREF="$MIRRORLINK/win32/unetw32.zip">$MIRRORNAME</A></td>
</tr><tr>
  <td>optcompw32.zip</td><td>750 KB</td>
    <td><A HREF="$MIRRORLINK/win32/optcompw32.zip">$MIRRORNAME</A></td>
</tr>
</tr><tr>
  <td>idew32.zip</td><td>910 KB</td>
    <td><A HREF="$MIRRORLINK/win32/idew32.zip">$MIRRORNAME</A></td>
</tr>

<tr>
  <td colspan=2><b>Linux</b></td>
</tr><tr>
  <td>baselinux.tar.gz</td><td>750 KB</td>
    <td><A HREF="$MIRRORLINK/linux/baselinux.tar.gz">$MIRRORNAME</A></td>
</tr><tr>
  <td>utillinux.tar.gz</td><td>580 KB</td>
    <td><A HREF="$MIRRORLINK/linux/utillinux.tar.gz">$MIRRORNAME</A></td>
</tr><tr>
  <td>unitsbaselinux.tar.gz</td><td>90 KB</td>
    <td><A HREF="$MIRRORLINK/linux/unitsbaselinux.tar.gz">$MIRRORNAME</A></td>
</tr><tr>
  <td>unitsfcllinux.tar.gz</td><td>208 KB</td>
    <td><A HREF="$MIRRORLINK/linux/unitsfcllinux.tar.gz">$MIRRORNAME</A></td>
</tr><tr>
  <td>unitsapilinux.tar.gz</td><td>40 KB</td>
    <td><A HREF="$MIRRORLINK/linux/unitsapilinux.tar.gz">$MIRRORNAME</A></td>
</tr><tr>
  <td>unitsgtklinux.tar.gz</td><td>20 KB</td>
    <td><A HREF="$MIRRORLINK/linux/unitsgtklinux.tar.gz">$MIRRORNAME</A></td>
</tr><tr>
  <td>unitsdblinux.tar.gz</td><td>50 KB</td>
    <td><A HREF="$MIRRORLINK/linux/unitsdblinux.tar.gz">$MIRRORNAME</A></td>
</tr><tr>
  <td>unitsmisclinux.tar.gz</td><td>80 KB</td>
    <td><A HREF="$MIRRORLINK/linux/unitsmisclinux.tar.gz">$MIRRORNAME</A></td>
</tr><tr>
  <td>unitgfxlinux.tar.gz</td><td>140 KB</td>
    <td><A HREF="$MIRRORLINK/linux/unitsgfxlinux.tar.gz">$MIRRORNAME</A></td>
</tr><tr>
  <td>unitsnetlinux.tar.gz</td><td>10 KB</td>
    <td><A HREF="$MIRRORLINK/linux/unitsnetlinux.tar.gz">$MIRRORNAME</A></td>
</tr><tr>
  <td>optcomplinux.tar.gz</td><td>750 KB</td>
    <td><A HREF="$MIRRORLINK/linux/optcomplinux.tar.gz">$MIRRORNAME</A></td>
</tr>
<tr>
  <td colspan=2><b>OS/2</b></td>
</tr><tr>
  <td>snapshot-os2.zip</td><td>620 KB</td>
    <td><A HREF="$MIRRORLINK/os2/baseemx.zip">$MIRRORNAME</A></td>
</tr>
</table>

<hr>

<H3><a name="cvs">Abrufen mit GNU CVS</a></H3>

<p>
Als Alternative zu den t&auml;glichen ZIP-Dateien der CVS-Sourcen
wurde das CVS-Archiv jedermann im Nur-Lesen Modus zug&auml;nglich gemacht.
Dies bedeutet dass Sie direkt auf die Quellen zugreifen k&ouml;nnen
und dass Ihnen wirklich die Quellen auf die Minute aktuell zur
Verf&uuml;gung stehen. Ebenso handelt es sich um eine Methode die weniger
Bandbreite ben&ouml;tigt, sobald Sie den ersten Download hinter sich haben.
</P>
<p>
Wie macht man das? Im allgemeinen ben&ouml;tigen Sie drei Schritte:<BR>
(Es wird hier vorausgesetzt, dass Sie CVS installiert haben.
Siehe <A HREF="http://www.cyclic.com/">here</A> f&uuml;r Anweisungen
wie Sie dies tun k&ouml;nnen.)
</P>

<OL>
<LI>In den CVS Server einloggen.<BR>
Um dies zu erreichen, geben Sie die folgende Befehlszeile ein:
<PRE>
cvs -d :pserver:cvs@cvs.freepascal.org:/FPC/CVS login
</PRE>
Sie werden in der Folge nach einem Passwort gefragt:
<PRE>
(Logging in to cvs@cvs.freepascal.org)
CVS password:
</PRE>
Das Passwort ist '<TT>cvs</TT>' (bitte ohne Hochkommas eingeben).<BR>
Dieser Schritt ist nur einmal notwendig. Ihr CVS Client-Programm wird sich
das Passwort merken.
<LI>Um das komplette Sourcen Archiv zu erhalten, geben Sie ein:
<PRE>
cvs -d :pserver:cvs@cvs.freepascal.org:/FPC/CVS checkout SRC
</PRE>
Hierbei m&uuml;ssen Sie <TT>SRC</TT> mit einem oder mehreren der folgenden Schl&uuml;sselworte ersetzen:
<UL>
<LI><B>base</B> liefert die Basis-Dateien, welche von allen anderen Quellen ben&ouml;titgt werden.
<LI><B>rtl</B> liefert die Quellen der RTL (Run-Time Library).
<LI><B>compiler</B> liefert die Quellen des Compilers.
<LI><B>docs</B> liefert die Quellen der Documentation (im TeX Format).
<LI><B>fcl</B> liefert die Quellen der Free Component Library (FCL).
<LI><B>api</B> liefert die API Quellen (wird von FV ben&ouml;titgt).
<LI><B>packages</B> liefert die Packet Quellen.
<LI><B>utils</B> liefert die Quellen der Utilities.
<LI><B>bugs</B> liefert die Fehler-Datenbank.
</UL>
Sie k&ouml;nnen zum Beispiel eingeben:
<PRE>
cvs -d :pserver:cvs@cvs.freepascal.org:/FPC/CVS checkout rtl compiler
cd compiler
make cycle
</PRE>
um die RTL und den Compiler zu erhalten und diesen danach via Make neu zu &uuml;bersetzen.
<P>
Normalerweise sollten Sie diesen schritt nur einmal machen.
<LI>Um die Quellen die in Schritt 2 heruntergeladen wurden zu aktualisieren
sollten Sie folgendes im Verzeichnis (z.B. im Verzeichnis der RTL oder des Compilers)
eingeben das Sie aktualisieren wollen:
<PRE>
cvs -z 3 update -Pd
</PRE>
<P>
Die Option <TT>-z 3</TT> teilt CVS mit, dass Kompression benutzt werden soll
f&uuml;r die Dateien die &uuml;ber das Netz gesendet werden.<BR>
(Bitte benutzen Sie nicht die Option '-z 9',
da dies unserem Server eine gr&ouml;sere Last aufladen w&uuml;rde
ohne besondere Gewinne bei der Bandbreite zu bewirken.).<BR>
Mit diesem Befehl werden <em>NUR</EM> Patches f&uuml;r die Dateien bezogen,
die sich ge&auml;ndert haben<BR>
Diesen Schritt k&ouml;nnen Sie wiederholen wann immer Sie ihre Kopie der Quellen
aktualisieren wollen. Es handelt sich um die bei weitem &ouml;konomischte Methode
der Aktualisierung im Sinne der Bandbreite.
</OL>

<P>
F&uuml;r die Neugierigen:<BR>
Sie haben lediglich Nur-Lesen Zugriff, versuchen Sie also nicht Daten zu
erg&auml;nzen. :-)
</p>

<hr>
<H3><a name ="ports">Portierung auf andere Platformen</A></H3>
<!-- Inaktiver Text
Im Augenblick wird ein Port f&uuml;r FreeBSD von
<A HREF="mailto:tps@internet.sk">Tomas TPS Ulej</A> erprobt:<BR>
es gibt eine Version von FPC die auf FreeBSD l&auml;uft, diese benutzt jedoch
den FreeBSD Linux emulations Mechanismus.
Sie k&ouml;nnen den <A HREF="ftp://netlab.sk/pub/fpc/fpc-port.tgz">Port</A>
als Datei von seinem Mirror erhalten und ebenso die
<A HREF="ftp://netlab.sk/pub/fpc/dist/fpc-0.99.10-freebsd.tar.gz">Quellen
f&uuml;r diesen Port</A>.<P>
Eine native Version k&ouml;nnte in B&auml;lde erscheinen, oder auch nicht,
je nach verf&uuml;gbarer Zeit und Freiwilligen. F&uuml;r weitere Informationen
setzen sie sich bitte Thomas in Verbindung.
-->
<P>
Die Portierung auf andere Platformen wird erwogen. Im Augenblick wird
lediglich Linux/Alpha und Linux/Mac untersucht. Freiwillige sind eingeladen
mit den Entwicklern Kontakt aufzunehmen. Das Hauptproblem ist (wie immer)
die verf&uuml;gbare Zeit und die Ger&auml;te um darauf zu arbeiten.

<H3><a name="future">Einsicht in die Fehlerleiste und zuk&uuml;nftige Pl&auml;ne</a></H3>
<P>
Eine Liste bekannter Fehler ist <A HREF="bugs.html">hier</A> verf&uuml;gbar.<BR>
Und die weiteren Pl&auml;ne f&uuml;r Free Pascal sind <A HREF="future.html">hier</A> einsehbar.
</P>

</TD>
</TR>

</HTML>
