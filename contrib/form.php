
<P>
<INPUT NAME="confirm" TYPE="hidden" VALUE="yes">
<?php if ($row) { HiddenVar('ID',$row->ID); } ?>

<TABLE WIDTH="100%" CELLPADDING=2 CELLSPACING=1 BORDER=1>
<TR><TD>Name:</TD><TD><INPUT NAME="name" MAXLENGTH=128 SIZE=50 <?php 
if ( $row) {echo "VALUE =\"$row->name\"";}
?>
></TD></TR>
<TR><TD>Author:</TD><TD><INPUT NAME="author" MAXLENGTH=128 SIZE=50 <?php
if ( $row) {echo "VALUE =\"$row->author\"";}
?>
></TD></TR>
<TR><TD>Version:</TD><TD><INPUT NAME="version" MAXLENGTH=30 SIZE=30 <?php
if ( $row) {echo "VALUE =\"$row->version\"";}
?>
></TD></TR>
<TR><TD>File URL:</TD><TD><INPUT NAME="ftpfile" MAXLENGTH=80 SIZE=50 <?php
if ( $row) {echo "VALUE =\"$row->ftpfile\"";} else
  { echo "VALUE=\"ftp://\""; }
?>
></TD></TR>
<TR><TD>Homepage URL:</TD><TD><INPUT NAME="homepage" MAXLENGTH=80 SIZE=50 <?php
if ( $row) {echo "VALUE =\"$row->homepage\"";} else 
  { echo "VALUE=\"http://\""; }
?>
></TD></TR>
<TR><TD>E-mail:</TD><TD><INPUT NAME="email" MAXLENGTH=80 SIZE=50 <?php
if ( $row) {echo "VALUE =\"$row->email\"";}
?>
></TD></TR>
<TR><TD>Date:</TD><TD><INPUT NAME="date" MAXLENGTH=8 SIZE=12 <?php
if ( $row) {echo "VALUE =\"$row->date\"";} else 
  { echo "VALUE=\"DD/MM/YY\"";}
?>
></TD></TR>
<TR><TD>Supported OSes:</TD><TD><INPUT NAME="os" MAXLENGTH=30 SIZE=30 <?php
if ( $row) {echo "VALUE =\"$row->os\"";}
?>
></TD></TR>
<TR><TD>description:<BR></TD><TD><TEXTAREA NAME="descr" ROWS=10 COLS=50><?php
if ( $row) {echo "$row->descr";}
?>
</TEXTAREA></TD></TR>
<TR>
<TD><b>Category:</b></TD><TD>
<SELECT NAME="category">
<OPTION <?php if ($row) { if ($row->category=="Database") { echo 'SELECTED';}}?> >Database
<OPTION <?php if ($row) { if ($row->category=="File Handling") { echo 'SELECTED';}}?> >File Handling
<OPTION <?php if ($row) { if ($row->category=="Graphics") { echo 'SELECTED';}}?> >Graphics
<OPTION <?php if ($row) { if ($row->category=="Internet") { echo 'SELECTED';}}?> >Internet
<OPTION <?php if ((!$row) || ($row->category=="Miscellaneous")) { echo 'SELECTED';}?> >Miscellaneous
</SELECT>
</TD>
</TR>
</TABLE>
<P>
Please provide username and password of a valid community user:<BR>
<?php 
if (!$row) {
  echo "Only you will be able to access your entry using this username and password.";
} else {
  echo "After authentication, this username will be checked against the username stored in the database";
  echo "when the entry was first added, to make sure you own this entry.<P>";
  if ($row->auth_method==0) {
    echo 'This entry was created prior to the use of the Mantis/Community authentication, using a password';
    echo 'Please also provide the password that was used when this entry was created.<P>';
  }
}
?>
<TABLE>
<TR><TD>Username:</TD><TD><INPUT NAME="username" MAXLENGTH=30></TD></TR>
<TR><TD>Password:</TD><TD><INPUT TYPE="password" NAME="pwd" MAXLENGTH=30></TD></TR>
<?php
  if (($row) && ($row->auth_method==0)) {
    echo '<TR><TD>Old entry Password:</TD><TD><INPUT TYPE="password" NAME="oldpwd" MAXLENGTH=30></TD></TR>';
  }
?>
</TABLE>
<P>
<INPUT NAME="NotifyMe" TYPE="checkbox" VALUE="1" checked="checked">Send me a mail with confirmation.<p>
<INPUT NAME="NotifyList" TYPE="checkbox" VALUE="1" checked="checked">Send a mail to the announcement mailing list.<p>

<INPUT TYPE="submit" VALUE="Submit">
<INPUT TYPE="reset" VALUE="Clear form">