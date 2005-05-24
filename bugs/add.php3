<?php
 /* input some needed stuff */
 require "html.php";
 require "bugs.php";
/*
 * Emit form to confirm password.
 */ 
function EmitAddForm ( ) {
  include ('form.tmpl');
}
/*
 * Start of program
 */
readfile ($head);
/* Connect to database */
$db = ConnectToFPC();
/*
 * is this confirmed with password ? See if we can delete...
 */ 
if ( $confirm == "yes") {
  /* Add the entry */
  $query = "INSERT INTO bugs (Title,Name,Email,AddDate,BugVersion,Os,Category,Bugtype,descr,Prog) VALUES (";
  $query .= EscapeSQL ($title);
  $query .= ',' . EscapeSQL ($name);
  $query .= ',' . EscapeSQL ($email);
  $query .= ', NOW()';
  $query .= ',' . EscapeSQL ($BugVersion); 
  $query .= ',' . EscapeSQL ($os);
  $query .= ", $category ";
  $query .= ", $BugType ";
  $query .= ',' . EscapeSQL ($descr);
  $query .= ',' . EscapeSQL ($prog);
  $query .= ')';
  $res = mysql_query ($query,$db);
  CheckMySQLError ($foot);
  $ID = mysql_insert_id ();
  $res = mysql_query ("select * from bugs where BugId=$ID",$db);
  CheckMySQLError ($foot);
  Header1("Entry $ID successfully Added :");
  echo "Your entry has been successfull added in the database with the following data:<P>\n";
  $row = mysql_fetch_object($res);
  DumpRecord ($row);
  MailRecord ($row,-1);
  mysql_free_result($res);
  Rule ();
} else {
  /* 
   * We need to emit a confirmation form.
   */
  EmitAddForm();
}
readfile($foot);
?>
