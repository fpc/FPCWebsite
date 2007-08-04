<?php
/*
 * Some contribs variables
 */
$head="head.tmpl";
$foot="foot.tmpl";
/*
 * Connect to the contribs database.
*/
function ConnectToFPC () {
  include('contribpwd.php');
  $db = mysql_connect($DBhost,$DBUser,$DBPassword);
  CheckMySQLError($foot);
  mysql_select_db('FPC');
  CheckMySQLError($foot);
  return $db;
}

/*
 * Verify a community user account. 
 * Input: username, password.
 * Output: username as ASCII, or empty if verification failed.
 */

function GetCommunityUser($AUserName,$APassword) { 
  include('contribpwd.php');
  $ch = curl_init("http://community.freepascal.org:10000/freepascal/auth_mantis");
  # Encryption. Not really secure, but much better than plain text.
  $encrypted = strtr($APassword, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890.@_", $OpenACSKey);

  curl_setopt($ch, CURLOPT_POST, 1);
  curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 2);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
  curl_setopt($ch, CURLOPT_HEADER, 0);

  curl_setopt($ch, CURLOPT_POSTFIELDS, "u=$AUserName&p=$encrypted");


  $result = curl_exec($ch);
  if (curl_errno($ch) != 0 || $result == "") {
      curl_close($ch);
      return "";
  }
  $result_array = explode (":", $result);
  curl_close($ch);


  if ($result_array[0] == "ok") {
    return mb_convert_encoding($result_array[1], 'ISO-8859-1', 'ASCII');
  } else {
    return "";
  };
}
/*
 * Check username of an entry. 
 * Input: DB connection, username for entry (name returned by authentication method) and ID
 * Returns FALSE if no match, authentication method otherwise.
 */
function VerifyEntryUser($db,$user,$ID) {
  $query="select auth_method from contribs where (ID=$ID) and (user=\"$user\")";
  /* echo "Query : $query"; */
  $res = mysql_query($query,$db);
  
  CheckMySQLError($foot);
  $row = mysql_fetch_object($res);
  if ($row) {
    return $row->auth_method;
  } else {
    echo 'No user match';
    return 0;
  }
}
/*
 * Check authentication method of an entry.
 * Input: DB connection, ID of entry
 * Returns -1 if no match, authentication method otherwise.
*/
    
function GetEntryAuthMeth ($db, $ID) {
  $query="select auth_method from contribs where ID=$ID";
  $res = mysql_query($query,$db);
  CheckMySQLError($foot);
  $row = mysql_fetch_object($res);
  if ($row) {
    return $row->auth_method;
  } else {
    return -1;
  }
}
/*
 * Check if a username/password/oldpassword has the right to modify an entry. 
 * Input: db connection, ID of entry, username password for login, 
 *        Oldpassword is only used for older entries.
 * Output: FALSE if no rights, authentication method if user has right to modify.
 */
function VerifyAuthenticated($db,$ID,$username,$pwd,$oldpwd='') {
  /* Get authentication method of entry */
  if (($EntryAuthMeth=GetEntryAuthMeth($db,$ID))==-1) {
    exit('Could not verify entry authentication method');
  }
  /* Check username  */
  if (!($user=GetCommunityUser($username,$pwd))) {
    exit('Username not known in community system, please create an account first, or verify password');
  } else {
    $newauth_meth = 1;
  }
  if ($EntryAuthMeth==0) {
    return VerifyPassword($db,$pwd,$ID);
  } else if ($EntryAuthMeth==1) {
    if (VerifyEntryUser($db,$user,$ID)) {
      return $newauth_meth;
    } else {
      return FALSE;
    }
  } else {
    return FALSE;
  }
}
/*
 * Dump one record of the Contribs database in a table.
 */
function DumpRecord ($row) {
echo "<TABLE WIDTH=\"100%\"CELLPADDING=2 CELLSPACING=1 BORDER=1>";
RowStart; 
  CellStart(); 
  echo "Name: "; doanchor ($row->ftpfile,$row->name);
  CellEnd();
  CellStart(); echo "Version: $row->version"; CellEnd();
  CellStart(); echo "Date: <B>$row->date</B>"; CellEnd();
  CellStart(); echo "Supported OS: <B>$row->os</B>"; CellEnd();
  CellStart('ALIGN="RIGHT"');
  doanchor ("edit.php3?ID=$row->ID","Update");
  echo " ";
  doanchor ("delete.php3?ID=$row->ID","Delete");
  CellEnd();
RowEnd();
RowStart();
  CellStart("COLSPAN=3");
  echo "Email: ";
  $email = str_replace("@","&#x040;",$row->email);
  doanchor("mailto:".$email,$row->author);
  CellEnd();
  CellStart("COLSPAN=3");
  echo "Homepage: ";
  if ($row->homepage) {
   doanchor ($row->homepage,$row->homepage);
  } else {
   echo "None";
  }
  CellEnd();
RowEnd();
RowStart();
  CellStart ("COLSPAN=5");
  echo "<B>Description:</B><Br>$row->descr";
  CellEnd() ;
RowEnd();
echo "</TABLE>";
}

function MailRecord ($row,$email,$adding=0) {
  if ($adding==1) {
    $mailtext    = "The following entry was added to the Free Pascal contributed units:\n\n";
    $mailsubject = "New entry in Free Pascal Contributed units. ($row->name)";
  } else {
    $mailtext    = "The following entry in the Free Pascal contributed units was modified:\n\n";
    $mailsubject = "Free Pascal Contributed units modified entry. ($row->name)";
  }
  $mailtext .= "Name         : $row->name\n";
  if ( $email==$row->email ) {
    $mailtext .= "Password     : $row->pwd\n";
  }
  $mailtext .= "Author       : $row->author\n";
  $mailtext .= "Email        : $row->email\n";
  $mailtext .= "Homepage     : $row->homepage\n";
  $mailtext .= "FTP site     : $row->ftpfile\n";
  $mailtext .= "Version      : $row->version\n";
  $mailtext .= "Date         : $row->date\n";
  $mailtext .= "Category     : $row->category\n";
  $mailtext .= "Supported OS : $row->os\n";
  $mailtext .= "Description  :\n$row->descr\n";
  mail($email,$mailsubject,$mailtext,"From: contribs@freepascal.org"
);
}


/*
 * Emit a menu for contributed units.
 */ 
function EmitContribsMenu () {
/*
  $this="db.php3";
  doanchor($this . "?category=all","<IMG SRC=\"all.gif\" WIDTH=96 HEIGHT=23 BORDER=0 ALT=\"ALL categories\"></IMG>");
  doanchor($this . "?category=Database","<IMG SRC=\"database.gif\" WIDTH=70 HEIGHT=23 BORDER=0 ALT=\"Database units\"></IMG>");
  doanchor($this . "?category=File+Handling","<IMG SRC=\"file.gif\" WIDTH=89 HEIGHT=23 BORDER=0 ALT=\"File Handling units\"></IMG>");
  doanchor($this . "?category=Graphics","<IMG SRC=\"graphics.gif\" WIDTH=67 HEIGHT=23 BORDER=0 ALT=\"Graphics units\"></IMG>");
  doanchor($this . "?category=Internet","<IMG SRC=\"internet.gif\" WIDTH=61 HEIGHT=23 BORDER=0 ALT=\"Internet units\"></IMG>");
  doanchor($this . "?category=Miscellaneous","<IMG SRC=\"miscellaneous.gif\" WIDTH=99 HEIGHT=23 BORDER=0 ALT=\"Miscellaneous units\"></IMG>");
  doanchor("add.php3","<IMG SRC=\"add.gif\" WIDTH=77 HEIGHT=23 BORDER=0 ALT=\"Add a unit\"></IMG>");
*/
}
function VerifyPassword ($db,$pwd, $ID) {
  if ($pwd==$FallBackPassword) {
    return TRUE;
  } 
  $query = "select * from contribs where pwd=\"$pwd\" and ID=$ID";
  $res = mysql_query($query,$db);
  $nr = mysql_num_rows ($res);
  mysql_free_result ($res);
  return $nr ;
}
function WrongPassword () {
  Header1("Warning: Authentication failed.");
  echo "Sorry, but the password you provided doesn't match the password in the database.<P>";
  echo "You can try to provide it again below or go back to the main menu.<P>";
  Rule ();
}
?>
