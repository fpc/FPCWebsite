<!--
#TITLE Free Pascal - Development
#ENTRY develop
#HEADER Development
-->

<p>
Free Pascal is always under development. When you want to see how the
development is progressing you can take a peek at the developer versions.</p>

<p><B>Note:</B> There is no support for the development versions.</p>

<p>You have the following options:</p>

<UL>
<!-- IDXSTART -->
  <LI><A HREF="#sourcesv21">Download Daily Source Snapshot of Development Tree (version 2.1.x)</A></LI>
  <LI><A HREF="#sourcesv20">Download Daily Source Snapshot of Release Tree (version 2.0.x)</A></LI>
  <LI><A HREF="#snapshotsv21">Download Daily Update of Development Tree (version 2.1.x)</A></LI>
  <LI><A HREF="#cvs">Connect to Source Repository with GNU CVS</A></LI>
  <LI><A HREF="#cvsweb">Browse the Source Repository with a Web Browser</A></LI>
  <LI><A HREF="#future">Bugs and the Future</A></LI>
<!-- IDXEND -->
</Ul>

<hr>

<A NAME="sourcesv21"></A><H3><LI>Download Daily Source Snapshot of Development Tree (version 2.1.x)</LI></H3>
<P>
You can download todays development (v2.1.x) sources in form of a packed
snapshot from the CVS source repository: these snapshots are updated on
a daily basis, and reflect the state of the source repository.
The files are kept at the site which has the CVS archive.
</P>
<p>
Entire public sources archive of v2.1.x:
<A href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v21/source/fpc.zip">fpc.zip</a> (24 MB)
</p>

<A NAME="sourcesv20"></A><H3><LI>Download Daily Source Snapshot of Release Tree (version 2.0.x)</LI></H3>
<P>
You can download todays development (v2.0.x) sources that will lead to the next
stable release in form of a packed
snapshot from the CVS source repository: these snapshots are updated on
a daily basis, and reflect the state of the source repository.
The files are kept at the site which has the CVS archive.
</P>
<p>
Entire public sources archive of v2.0.x:
<A href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v20/source/fpc.zip">fpc.zip</a> (24 MB)
</p>

</UL>
<br>


<hr>

<A NAME="snapshotsv21"></A><H3><LI>Download Daily Update of Development Tree (version 2.1.x)</LI></H3>
<p>
These snapshots contain the latest development updates and bug fixes. There is no
guarantee that the new development updates are fully working and that the snapshot
is bugfree.
</p>
<p> The files are available from the <A HREF="ftp://ftp.freepascal.org/pub/fpc/snapshot/v21/">Freepascal ftp site</A>. 
</p>

<H3><LI><A NAME="snapshotsv20">Download Daily Update of Release Tree (version 2.0.x)</a></LI></H3>
<p>
These snapshots contain the latest bug fixes, without any major new
feature. This should be more stable than the development snapshots (and even
the last official release), but there is still no guarantee that these
snapshots are bugfree.
</p>
<p> The files are available from the <A HREF="ftp://ftp.freepascal.org/pub/fpc/snapshot/v20/">Freepascal ftp site</A>. 
</p>

</UL>
<br>


<hr>

<A NAME="cvs"></A><H3><LI>Connect to Source Repository with GNU CVS</LI></H3>
<p>
As an alternative to the daily zip files of the CVS sources,
the CVS repository has been made accessible for everyone,
with read-only access. This means that you can directly access the code, and
you will have really the last-minute sources available. It is also a method
which requires less bandwidth once you have done the first download (checkout in CVS lingo).
</P>
<p>
Together with the release of version 1.0, the CVS archive has been freshly set up,
all the modules are now available with a single CVS command. Besides
the development snapshots, also the fixes branch of the 1.0 release is publically
available.
</p>
<p>
<b>Development snapshots</b>
</p>
<p>
How to do this? Generally, you need 3 steps:<BR>
(If you have CVS installed, of course. Look <A HREF="http://www.cyclic.com/">here</A> for instructions on
how to do that.)
</P>

<OL>
<LI> Log in to the server. <BR>
To do that, type the following on the command line:
<font size="-1">
<PRE>
cvs -d :pserver:cvs&#x040;cvs.freepascal.org:/FPC/CVS login
</PRE>
</font>
You will be prompted for a password:
<PRE>
(Logging in to cvs&#x040;cvs.freepascal.org)
CVS password:
</PRE>
<p>
The password is '<TT>cvs</TT>' (don't type the quotes). <BR>
This step needs to be performed only once. Your CVS client will remember the
password.
</P>
<LI> To retrieve the full source repository, all publically available modules,
type
<font size="-1">
<PRE>
cvs -z 3 -d :pserver:cvs&#x040;cvs.freepascal.org:/FPC/CVS checkout fpc
</PRE>
</font>
This will create a directory fpc in your CVS repository directory, containing
subdirectories with the following packages:

<UL>
<LI><B>rtl</B>, the RunTime Library source for all platforms.</LI>
<LI><B>compiler</B>, the compiler source.</LI>
<LI><B>docs</B>, the documentation (LaTeX) source.</LI>
<LI><B>fcl</B>, the Free Component Library source.
<LI><B>packages</B>, Packages source (contains gtk, ncurses, mysql and many more)</LI>
<LI><B>utils</B>, the utils sources.</li>
<LI><B>fvision</b>, the start of the new Free Vision that doesn't have copyright problems</li>
<LI><B>tests</b>, the compiler and RTL tests.</LI>
<LI><B>ide</b>, the IDE sources. (can't be build. Need proprietary library)</LI>
<LI><B>install</b>, everything needed to create a release. Installer, demoes etc</LI>
<LI><B>logs</b>, Daily changelogs</LI>
</UL>
</P>

If you don't want the entire repository, you could try to check out parts
with

<font size="-1">
<PRE>
cvs -d :pserver:cvs&#x040;cvs.freepascal.org:/FPC/CVS checkout fpc/rtl fpc/compiler
</PRE>
</font>

<P>
Normally, you should perform this step just once.
</p>
<LI> To update the sources which were downloaded (checkout) above
<font size="-1">
<PRE>
cvs -d :pserver:cvs&#x040;cvs.freepascal.org:/FPC/CVS -z 3 update -Pd fpc
</PRE>
</font>
or
<font size="-1">
<PRE>
cvs -d :pserver:cvs&#x040;cvs.freepascal.org:/FPC/CVS -z 3 update -Pd fpc/compiler
</PRE>
</font>
if you only downloaded some separate packages, the compiler sources in this case.

(please do not use factor 9, since it will burden our server a lot, and will
give no significant gain in bandwidth).<BR>
This will retrieve patches <em>ONLY</EM> for the files that have
changed. <BR>
The <TT>-z 3</TT> tells cvs to use the compression when sending files over the net.
<P>
This step you can repeat whenever you want to update your sources. It is by
far the most economic in terms of bandwidth.

</OL>
<p>
<b>Fixes to 1.0.x </b>
</p>
<p>
Note: The Free Pascal team has stopped applying bugfixes to the 1.0.x compiler branch. The current
1.9.x releases are already more stable than 1.0.x ever will get.<br>
</p>
<p>
The fixes need a separate directory, create a separate directory fixes, enter it, and repeat
the above commands with  -r FIXES&undersc;1&undersc;0&undersc;0 (case sensitive) appended after the update or checkout command:
</p>
<pre>
cd \mycvs\fixes
cvs -d :pserver:cvs&#x040;cvs.freepascal.org:/FPC/CVS -z 3 checkout -r FIXES&undersc;1&undersc;0&undersc;0 fpc
</pre>

and to update:

<pre>
cvs -d :pserver:cvs&#x040;cvs.freepascal.org:/FPC/CVS -z 3 update -r FIXES&undersc;1&undersc;0&undersc;0 -Pd fpc
</pre>

<P>
To checkout the 1.00 release use RELEASE&undersc;1&undersc;0&undersc;0 as the tag. And
for the 1.0.2 release use RELEASE&undersc;1&undersc;0&undersc;2 as the tag, etc.
</P>

<P>
For the curious: You have only read-only access, so don't try to commit
anything :-)
</P>


<hr>

<A NAME="cvsweb"></A><H3><LI>Browse the Source Repository with a Web Browser</LI></H3>

<p>
The contents of the CVS archive can also be browsed with your web-browser
through this <A HREF="http://www.freepascal.org/cgi-bin/viewcvs.cgi/fpc">viewcvs</A> interface.
</P>


<hr>

<A NAME="future"></A><H3><LI>Bugs and the Future</LI></H3>
<P>
A list of known bugs is available <A HREF="bugs.html">here</A>.<BR>
And the future plans of Free Pascal can be viewed <A HREF="future.html">here</A>.
</P>
