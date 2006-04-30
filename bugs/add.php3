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
function DoCheck($ATitle,$ADescr,$AText) {
  if (!(strpos($ADescr,$AText)===false)) {
    return True;
  }
  if (!(strpos($ATitle,$AText)===false)) {
    return True;
  }
  return False;
}

$SpamWords = array('viagra','cialis','porno','valium','reductil');

function Spam($ATitle,$ADescr) {
  global $SpamWords;
  $ATitle=strtolower($ATitle);
  $ADescr=strtolower($ADescr);
  while ( list($key,$val) = each($SpamWords) ) {
    if (DoCheck($ADescr,$ATitle,$val)) {
      return True;
    }
  }
  return False;
/*
  if (!(strpos($ADescr,'valium')===false)) {
    return True;
  }
  if (!(strpos($ATitle,'valium')===false)) {
    return True;
  }
  return FALSE;
*/
}
readfile ($head);
if ( $confirm == "yes") {
  if (Spam($title,$descr)) {
    exit('Spam entry not allowed');
  }
/* Connect to database */
$db = ConnectToFPC();
/*
 * is this confirmed with password ? See if we can delete...
 */ 
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
  Header1("Entry $ID successfully added :");
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
