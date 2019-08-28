<master>
<property name="title"><trn key="website.mirrors.title" locale="en_US">Free Pascal - Links</trn></property>
<property name="entry">links</property>
<property name="header"><trn key="website.mirrors.header" locale="en_US">Links</trn></property>

<h1><trn key="website.mirrors.mirroring" locale="en_US">Mirroring:</trn></h1>
<trn key="website.mirrors.contact" locale="en_US">
If you want to mirror our site, please contact
<a href="mailto:mirrors&#x040;freepascal.org">us</a> to let us know about it.
How to mirror depends on whether you want to mirror the web site or the FTP
site. Setting up a mirror is not a very hard job, and can be done within an
hour.
</trn>

<h2> <trn key="website.mirrors.account" locale="en_US">Using the mirror account</trn></h2>
<trn key="website.mirrors.ftp" locale="en_US">
Since the FTP site restricts the number of simultaneous connections, we've
set up a mirror account which can be used by mirrors, so they are not
counted in the <I>anonymous</I> users count.
If you want to mirror our site and want use to the mirror account, mail
<a href="mailto:mirrors&#x040;freepascal.org">us</a> to obtain the password for
the mirroring account.
</trn>

<h2> <trn key="website.mirrors.help" locale="en_US">Some help to get you going</trn></h2>

<trn key="website.mirrors.tips" locale="en_US">
Below are some quick tips for setting up a mirror. Probably you need more
information; but as this depends on your computer, operating system and
other factors, we recommend you to send us an email, so we can help you.
</trn>

<h2> <trn key="website.mirrors.www" locale="en_US">Mirroring the WWW pages</trn></h2>

<trn key="website.mirrors.possibilities3" locale="en_US">To mirror the WWW pages there are 3 possibilities;</trn>

<trn key="website.mirrors.www.list" locale="en_US">
<OL>
<li> Use some script to get all the pages one by one; there are many on the
net that do this.
<li>Get the file
<a href="ftp://ftpmaster.freepascal.org/pub/fpc/dist/htmls.tar.gz">htmls.tar.gz</a>
from our ftp site. It contains the complete web-site in tar.gz format.
<li>Use svn. By doing anonymous svn you can receive the html pages directly
from our svn repository. You need repository html.
</OL>
</trn>

<trn key="website.mirrors.www.note" locale="en_US">
The URL's are relative, so you should be able to set it up under any
directory tree (with the exception of the images, maybe).
</trn>

<h2> <trn key="website.mirrors.ftp" locale="en_US">Mirroring the FTP site</trn></h2>
<trn key="website.mirrors.ftp.using" locale="en_US">Mirroring the FTP site can be done using:</trn>

<OL>
<trn key="website.mirrors.ftp.using" locale="en_US">
<li> the <a href="ftp://ftp.freepascal.org/pub/fpc/mirror/mirror-2.9-wuftpd-patched.tar.gz">mirror</a>
perl script.
There is also a <a href="ftp://ftp.freepascal.org/pub/fpc/mirror/www.freepascal.org">configuration
file</a> for the mirror script with a description for mirroring our site.
<li> rsync, ftpmaster.freepascal.org is offering rsync services both as a normal
rsync server and as a Push server.
Push mirroring minimalizes the time it takes for changed to propagate to
mirrors by signaling immediately after ftpmaster.freepascal.org has been
updated. It uses a ssh-trigger to signal the mirrors to execute the mirrorscript, for details see
<a href="http://www.debian.org/mirror/explain">this page at www.debian.org</a>
For using rsync you will need the following need the following files:
<OL>
<li><a href=ftp://ftpmaster.freepascal.org/pub/fpc/mirror/ftpsync>ftpsync</a>,the rsync script.
<li><a href=ftp://ftpmaster.freepascal.org/pub/fpc/mirror/ftpsync.conf>ftpsync.conf</a>,the configfile for the rsync script.
<li><a href=ftp://ftpmaster.freepascal.org/pub/fpc/mirror/fpc-mirror.pub>fpc-mirror.pub</a>,the public key needed if you want your mirror to be pushed.
</OL>
</trn>

<trn key="website.mirrors.ftp.note" locale="en_US">
The ftpsync files have to reside in the homedir of the user that will rsync,
preferably an ordinary user.
If you want your mirrorsite to be push mirrored, you will have to add the key
to ~/.ssh/authorized_keys in order to be pushed. After you have setup
everything mail <a href="mailto:mirrors&#x040;freepascal.org">us</a>, so we can add
you to the push-list. Your e-mail has to include the user that will be used
for push-mirroring!
</trn>
</OL>
<p>
<a href="links.html"><trn key="website.mirrors.back.links" locale="en_US">Back to links page.</trn></a>
<p>
</html>

