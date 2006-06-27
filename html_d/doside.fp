<html>
<!--
#TITLE Free Pascal - IDE f&uuml;r Dos
#ENTRY moreinfo
#SUBENTRY doside
#HEADER IDE for DOS
-->

<ul>
<h2>Integrierte Entwicklungsumgebung f&uuml;r DOS</h2>
<h2>einschliesslich Editor, Compiler und Debugger</h2>
<p>
<i>(J&uuml;ngste Neuigkeiten: Eine DOS-IDE f&uuml;r Free Pascal befindet sich nun in der Entwicklung,
siehe <a href="#update2">unten</a>)</i>
<p>
Anmerkung:<br>
Dieser Link zeigte einmal auf <a href="http://www.uidaho.edu/~bradw/pascal/fpk/">
http://www.uidaho.edu/~bradw/pascal/fpk/</a> wo verschiedene Informationen
zu geplanten IDE zu finden waren, aber dieser Link funktioniert nicht mehr.
Es ist unbekannt warum dieser Link nicht mehr funktioniert, und dies kann
von uns nicht ge&auml;ndert werden, deshalb wurde er um diesen Informationstext
erweitert.
<p>
Die Geschichte der IDE geht wie folgt:
</p>
<p>
Die Arbeit begann mit Free Vision, ein Ersatz f&uuml;r Turbo Vision. Die IDE
soll darauf aufbauen. Wir haben sp&auml;ter die Erlaubnis von Borland erhalten
f&uuml;r diesen Zweck deren Turbo Vision Quellen zu verwenden.
<p>
Danach wurde die Arbeit an Free Vision gestoppt zugunsten eines mehr hardware
unabh&auml;ngigen orientierten APIs. Free Vision soll sp&auml;ter auf diesem aufbauen,
was bedeuten w&uuml;rde, dass es auf allen Platformen lauff&auml;hig ist auf denen der
Compiler verf&uuml;gbar ist.
<p>
Da es m&ouml;glicherweise etwas Zeit dauern wird bis dieses API verf&uuml;gbar ist
wurde eine andere M&ouml;glichkeit erwogen: die Benutzung von RHide, eine bereits
existierende freie IDE f&uuml;r andere Compiler.
<p>

<b><a name="update">Update vom November 1998:</name></b><br>

Die Entwicklung von Free Vision hat so grossen Fortschritt in den letzten
Wochen gemacht, dass die Arbeit an der IDE jetzt beginnen kann!
<p>

<b><a name="update2">Update vom Februar 1999:</name></b><br>

Die erste lauff&auml;hige Version der IDE f&uuml;r DOS mit integriertem Debugger
ist fertib. Jetzt im Moment wird die IDE selbst Debuggt.
<p>

Test-Versionen stehen im ftp Schnappschuss-Verzeichnis zum Download bereit.
Download-Links f&uuml;r snapshot.zip und ide_full.zip sind auf der
<a href="develop.html">Entwicklungs</a> Seite zu finden.
<p>

Seien Sie hiermit gewarnt: einige Funktionen sind noch nicht implementiert,
einige arbeiten noch nicht einwandfrei, insbesondere der Debugger.
Eine Linux-Version ist noch nicht verf&uuml;gbar, da einige Free Vision
Funktionalit&auml;ten dort bis jetzt noch nicht komplett realisiert sind.
<p>

Wenn Sie die IDE testen wollen, dann beginnen Sie mit der j&uuml;ngsten
Version des Compilers 0.99.10 f&uuml;r Go32v2, danach aktualiseren Sie mit
dem j&uuml;ngsten Schnappschuss (extrahieren sie snapshot.zip in ein leeres
Verzeichnis mit 'pkunzip -d', &uuml;berschreiben sie die Dateien von 0.99.10
mit denen vom Schnappschuss), dann kopieren sie die IDE im BIN Verzeichnis.
Starten sie die IDE, w&auml;hlen sie Options/Directories und geben sie das Unit
Verzeichnis ein (&uuml;blicherweise c:\pp\rtl\go32v2), dann w&auml;hlen sie
Compiler/Targer und setzen es auf go32v2. Nun sollte die IDE laufen.
<p>

Senden Sie Fehler-Berichte bitte an die fpc-devel Mailing Liste.
<p>

Klaus
</ul>

</html>
