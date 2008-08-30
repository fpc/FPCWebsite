<?php
 /* input some needed stuff */
 require "html.php";
 require "contribs.php";

$confirm=$_REQUEST['confirm'];
$ID=$_REQUEST['ID'];

/*
 * Emit form to confirm password.
 */ 
function EmitAddForm ( ) {
  StartForm("add.php3");
  echo "Enter the required values below, and press 'submit' to enter your unit in the database.<P>";
  echo 'The username and password must be the ones from a valid community account, so you may have';
  echo 'to create one there first.<P>';
  $row = 0;
  include ('form.php');
  EndForm ();
}

function DoCheck($ATitle,$ADescr,$AText) {
  if (!(strpos($ADescr,$AText)===false)) {
    return True;
  }
  if (!(strpos($ATitle,$AText)===false)) {
    return True;
  }
  return False;
}

$SpamWords = array('xanax','viagra','cialis','porno','valium','reductil');

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
  if (Spam($_REQUEST['name'],$_REQUEST['descr'])) {
    exit('Spam entry not allowed');
  }
  if (Spam($_REQUEST['homepage'],$_REQUEST['email'])) {
    exit('Spam entry not allowed');
  }
  if (!$_REQUEST['category']) {
    exit('No category specified');
  }

  if (!($user=GetCommunityUser($_REQUEST['username'],$_REQUEST['pwd']))) {
    exit('Username not known in community system, please create an account first, or verify password');
  } else {
    $auth_meth = 1;
  }

  $query = "INSERT INTO contribs (Name,Author,Email,ftpFile,homepage,date,os,category,descr,version,auth_method,user) VALUES (";
  $query .= EscapeSQL ($_REQUEST['name']);
  $query .= "," . EscapeSQL ($_REQUEST['author']);
  $query .= "," . EscapeSQL ($_REQUEST['email']);
  $query .= "," . EscapeSQL ($_REQUEST['ftpfile']);
  $query .= "," . EscapeSQL ($_REQUEST['homepage']);
  $query .= ", CURRENT_DATE()";
  $query .= "," . EscapeSQL ($_REQUEST['os']);
  $query .= "," . EscapeSQL ($_REQUEST['category']);
  $query .= "," . EscapeSQL ($_REQUEST['descr']);
  $query .= "," . EscapeSQL ($_REQUEST['version']);
  $query .= ",  $auth_meth ";
  $query .= "," . EscapeSQL ($_REQUEST['username']) . ")";
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
