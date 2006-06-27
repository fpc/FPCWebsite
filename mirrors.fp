<html>
<!--
#TITLE Free Pascal - Links
#ENTRY links
#HEADER Links
-->

<h1>Mirroring:</h1>
If you want to mirror our site, please contact 
<a href="mailto:mirrors&#x040;freepascal.org">us</a> to let us know about it.
How to mirror depends on whether you want to mirror the web site or the FTP
site. Setting up a mirror is not a very hard job, and can be done within an
hour.
<h2> Using the mirror account</h2>
Since the FTP site restricts the number of simultaneous connections, we've
set up a mirror account which can be used by mirrors, so they are not
counted in the <I>anonymous</I> users count.
If you want to mirror our site and want use to the mirror account, mail 
<a href="mailto:mirrors&#x040;freepascal.org">us</a> to obtain the password for
the mirroring account.

<h2> Some help to get you going</h2>

Below are some quick tips for setting up a mirror. Probably you need more
information; but as this depends on your computer, operating system and
other factors, we recommend you to send us an email, so we can help you.

<h2> Mirroring the WWW pages</h2>
To mirror the WWW pages there are 3 possibilities; 
<OL>
<li> Use some script to get all the pages one by one; there are many on the
net that do this.
<li>Get the file 
<a href="ftp://ftpmaster.freepascal.org/pub/fpc/dist/htmls.tar.gz">htmls.tar.gz</a>
from our ftp site. It contains the complete web-site in tar.gz format.
<li>Use svn. By doing anonymous svn you can receive the html pages directly
from our svn repository. You need repository html.
</OL>
The URL's are relative, so you should be able to set it up under any
directory tree (with the exception of the images, maybe).
<h2> Mirroring the FTP site</h2>
Mirroring the FTP site can be done using:
<OL>
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
The ftpsync files have to reside in the homedir of the user that will rsync, 
preferably an ordinary user.
If you want your mirrorsite to be push mirrored, you will have to add the key 
to ~/.ssh/authorized_keys in order to be pushed. After you have setup 
everything mail <a href="mailto:mirrors&#x040;freepascal.org">us</a>, so we can add 
you to the push-list. Your e-mail has to include the user that will be used 
for push-mirroring!
</OL>
<p>
<a href="links.html">Back to links page.</a>
<p>
</html>

