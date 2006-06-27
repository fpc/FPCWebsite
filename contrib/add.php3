<?php
 /* input some needed stuff */
 require "html.php";
 require "contribs.php";
/*
 * Emit form to confirm password.
 */ 
function EmitAddForm ( ) {
  StartForm("add.php3");
  echo "Enter the required values below, and press 'submit' to enter your unit in the database.<P>";
  $row = 0;
  include ('form.php');
  EndForm ();
}
/*
 * Start of program
 */
readfile ($head);
EmitContribsMenu ();
/* Connect to database */
$db = ConnectToFPC();
/*
 * is this confirmed with password ? See if we can delete...
 */ 
if ( $confirm == "yes") {
  /* Add the entry */
  $query = "INSERT INTO contribs (Name,Author,Email,ftpFile,homepage,date,os,category,descr,version,pwd) VALUES (";
  $query .= EscapeSQL ($name);
  $query .= "," . EscapeSQL ($author);
  $query .= "," . EscapeSQL ($email);
  $query .= "," . EscapeSQL ($ftpfile);
  $query .= "," . EscapeSQL ($homepage);
  $query .= ", CURRENT_DATE()";
  $query .= "," . EscapeSQL ($os);
  $query .= "," . EscapeSQL ($category);
  $query .= "," . EscapeSQL ($descr);
  $query .= "," . EscapeSQL ($version);
  $query .= "," . EscapeSQL ($pwd) . ")";
  $res = mysql_query ($query,$db);
  CheckMySQLError ($foot);
  Header1("Entry \"$name\" successfully Added :");
  echo "Your entry has been successfull added in the database with the following data:<P>\n";
  $ID = mysql_insert_id ();
  $res = mysql_query ("select * from contribs where ID=$ID",$db);
  CheckMySQLError ($foot);
  $row = mysql_fetch_object($res);
  DumpRecord ($row);
  if ($NotifyMe==1) {
    MailRecord($row,$row->email,1);
    echo "<p>Sent a mail to \"$row->email\"<p>";
  }
  if ($NotifyList==1) {
    MailRecord($row,"fpc-announce@lists.freepascal.org",1);
    echo "<p>Sent a mail to \"fpc-announce@lists.freepascal.org\"<p>";
  }
  mysql_free_result($res);
  Rule ();
} else {
  /* 
   * We need to emit a confirmation form.
   */
  Header1("Contribute a unit:");
  EmitAddForm();
}
EmitContribsMenu ();
readfile($foot);
?>
