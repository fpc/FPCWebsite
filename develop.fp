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
  <LI><A HREF="#svn">Connect to Source Repository with SVN</A></LI>
  <LI><A HREF="#future">Bugs and the Future</A></LI>
<!-- IDXEND -->
</Ul>

<hr>


<A NAME="sourcesv21"></A><H3>Download Daily Source Snapshot of Development Tree (version 2.1.x)</H3>
<P>
You can download todays development (v2.1.x) sources in form of a packed
snapshot from the SVN source repository: these snapshots are updated on
a daily basis, and reflect the state of the source repository.
The files are kept at the site which has the SVN archive.
</P>
<p>
Entire public sources archive of v2.1.x:
<A href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v21/source/fpc.zip">fpc.zip</a> (24 MB)
</p>

<A NAME="sourcesv20"></A><H3>Download Daily Source Snapshot of Release Tree (version 2.0.x)</H3>
<P>
You can download todays development (v2.0.x) sources that will lead to the next
stable release in form of a packed
snapshot from the SVN source repository: these snapshots are updated on
a daily basis, and reflect the state of the source repository.
The files are kept at the site which has the SVN archive.
</P>
<p>
Entire public sources archive of v2.0.x:
<A href="ftp://ftp.freepascal.org/pub/fpc/snapshot/v20/source/fpc.zip">fpc.zip</a> (24 MB)
</p>

<br>


<hr>

<A NAME="snapshotsv21"></A><H3>Download Daily Update of Development Tree (version 2.1.x)</H3>
<p>
These snapshots contain the latest development updates and bug fixes. There is no
guarantee that the new development updates are fully working and that the snapshot
is bugfree.
</p>
<p> The files are available from the <A HREF="ftp://ftp.freepascal.org/pub/fpc/snapshot/v21/">Freepascal ftp site</A>. 
</p>

<H3><A NAME="snapshotsv20">Download Daily Update of Release Tree (version 2.0.x)</a></H3>
<p>
These snapshots contain the latest bug fixes, without any major new
feature. This should be more stable than the development snapshots (and even
the last official release), but there is still no guarantee that these
snapshots are bugfree.
</p>
<p> The files are available from the <A HREF="ftp://ftp.freepascal.org/pub/fpc/snapshot/v20/">Freepascal ftp site</A>. 
</p>

<br>

<hr>

<A NAME="svn"></A><H3>Connect to Source Repository with SVN</H3>
<p>
As an alternative to the daily zip files of the SVN sources,
the SVN repository has been made accessible for everyone,
with read-only access. This means that you can directly access the code, and
you will have really the last-minute sources available. It is also a method
which requires less bandwidth once you have done the first download (checkout in SVN lingo).
</P>
<p>
Together with the release of version 2.0, FPC has migrated to SVN. For now,
there is no CVS mirror yet, so you've to use SVN to get the FPC sources.
</p>
<p>
<b>Development snapshots</b>
</p>
<p>
How to do this? Generally, you need 3 steps:<BR>
(If you have SVN installed, of course. Look <a href="http://subversion.tigris.org">here</A> for instructions on
how to do that.)
</P>

<OL>
<LI> To retrieve the full fpc source repository,
type
<font size="-1">
<PRE>
svn checkout http://svn.freepascal.org/svn/fpc/trunk fpc
</PRE>
</font>
This will create a directory fpc in your SVN repository directory, containing
subdirectories with the following packages:

<UL>
<LI><B>rtl</B>, the RunTime Library source for all platforms.</LI>
<LI><B>compiler</B>, the compiler source.</LI>
<LI><B>fcl</B>, the Free Component Library source.
<LI><B>packages</B>, Packages source (contains gtk, ncurses, mysql and many more)</LI>
<LI><B>utils</B>, the utils sources.</li>
<LI><B>fv</b>, Free Vision</li>
<LI><B>tests</b>, the compiler and RTL tests.</LI>
<LI><B>ide</b>, the IDE sources.</LI>
<LI><B>installer</b>, the text mode installer sources.</LI>
</UL>
</P>

If you don't want the entire repository, you could try to check out parts
with

<font size="-1">
<PRE>
svn checkout http://svn.freepascal.org/svn/fpc/trunk/rtl fpc/rtl
</PRE>
</font>

<P>
Normally, you should perform this step just once.
</p>
<LI> To update the sources which were downloaded (checkout) above
<font size="-1">
<PRE>
svn update fpc
</PRE>
</font>
or
<font size="-1">
<PRE>
svn update fpc/rtl
</PRE>
</font>
if you only downloaded some separate packages, the rtl sources in this case.<BR>
This will retrieve patches <em>ONLY</EM> for the files that have
changed. <BR>
<P>
This step you can repeat whenever you want to update your sources. It is by
far the most economic in terms of bandwidth.

</OL>
<p>
<b>Fixes to 2.0.x </b>
</p>
<p>
The fixes need a separate directory, create a separate directory fixes, enter it, and repeat
the above checkout command with the URL http://svn.freepascal.org/svn/fpc/branches/fixes&undersc;2&undersc;0:
</p>
<pre>
cd mysvn/fixes
svn checkout http://svn.freepascal.org/svn/fpc/branches/fixes&undersc;2&undersc;0 fpc
</pre>

and to update:

<pre>
svn update fpc
</pre>

<P>
To checkout release, you've to checkout the tagged versions, e.g.
svn checkout http://svn.freepascal.org/svn/fpc/tags/release&undersc;2&undersc;0&undersc;2 fpc
</P>

<p>
The sources of docs are in a separate repository called fpcdocs, so the command to get them is
<pre>
svn checkout http://svn.freepascal.org/svn/fpcdocs/trunk fpcdocs
</pre>

<p>
If you want to learn more about subversion, read this excellent <a href="http://svnbook.red-bean.com/">Subversion book</a> 
which is also available online in different formats for free.
</p>

<hr>

<p>
<a name="morerepos"></a><h3>Other repositories</h3>
The fpc svn server hosts more repositories than only the fpc repository, you can get them by
svn co http://svn.freepascal.org/svn/&lt;repository&gt; where &lt;repository&gt; is:<br>
<b>fpcprojects</b> Several fpc related projects like a converted TTT 5.10, gdbpas or the FPC irc bot.<br>
<b>lazarus</b> <a href="http://www.lazarus.freepascal.org">Lazarus</a>.<br>
<b>fpcdocs</b> The fpc documentation sources.<br>
<b>html</b> The sources of the fpc website you're just browsing.<br> 
<b>fpcbuild</b> Everything needed to build fpc releases. This links
to several other repositories, so this checkout is really big.<br>
<b>logs</b> Log files of the repositories mentioned above.<br>
</p>

<hr>

<a name="svnweb"></A><H3>Browse the Source Repository with a Web Browser</H3>

<p>
The contents of the SVN archive can also be browsed with your web-browser
through this <a href="http://www.freepascal.org/cgi-bin/viewcvs.cgi/?root=fpc">viewcvs</A> interface.
</P>

<hr>

<A NAME="future"></A><H3>Bugs and the Future</H3>
<P>
A list of known bugs is available <a href="bugs.html">here</a>.<br>
And the future plans of Free Pascal can be viewed <A HREF="future.html">here</A>.<br>
If you're interested in FPC development, you might be also interested in the 
<a href="http://www.freepascal.org/wiki">wiki</a>.
</P>
