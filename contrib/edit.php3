<HTML>
<BODY>
<?php
 /* input some needed stuff */
 require "html.php";
 require "contribs.php";
/*
 * Emit form to confirm password.
 */ 
function EmitEditForm ( $db, $ID ) {
  StartForm("edit.php3");
  echo "Change the values below, and press 'submit' to confirm your changes.<P>";
  $query="select * from contribs where ID=$ID";  
  $res = mysql_query($query,$db);
  CheckMySQLError($foot);
  $row = mysql_fetch_object($res);
  include ('form.php');
  mysql_free_result($res);
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
  /* 
   * Verify password first
   */
  if (($pwd=='Fixme') || VerifyPassword($db,$pwd,$ID)) {
    /* Change the entry */
    $query = "UPDATE contribs SET ";
    $query .= "name=" . EscapeSQL ($name);
    $query .= ", author=" . EscapeSQL ($author);
    $query .= ", email=" . EscapeSQL ($email);
    $query .= ", ftpfile=" . EscapeSQL ($ftpfile);
    $query .= ", homepage=" . EscapeSQL ($homepage);
    $query .= ", date=" . EscapeSQL (date("Y\-m\-d"));
    $query .= ", os=" . EscapeSQL ($os);
    $query .= ", category=" . EscapeSQL ($category);
    $query .= ", descr=" . EscapeSQL ($descr);
    $query .= ", version=" . EscapeSQL ($version);
    $query .= " WHERE ID=$ID ";
    $res = mysql_query ($query,$db);
    CheckMySQLError ($foot);
    Header1("Entry \"$name\" successfully updated :");
    echo "Your entry has been successfully updated with the following data:<P>\n";
    $res = mysql_query ("select * from contribs where ID=$ID",$db);
    CheckMySQLError ($foot);
    $row = mysql_fetch_object($res);
    DumpRecord ($row);
    if ($NotifyMe==1) {
      MailRecord($row,$row->email,0);
      echo "<p>Sent a mail to \"$row->email.\"<p>";
    }
    if ($NotifyList==1) {
      MailRecord($row,"fpc-announce@lists.freepascal.org",0);
      echo "<p>Sent a mail to \"fpc-announce@lists.freepascal.org\".<p>";
    }
    mysql_free_result($res);
    Rule ();
  } else {
    /* Wrong password */ 
    WrongPassword ();
    Header2("Try again:");
    EmitEditForm ($db,$ID);
    Rule ();
  }
} else {
  /* 
   * We need to emit a confirmation form.
   */
  Header1("Update entry:");
  EmitEditForm($db,$ID);
}
EmitContribsMenu ();
readfile($foot);
?>
</BODY>
</HTML>
