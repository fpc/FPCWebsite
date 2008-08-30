<?php
 /* input some needed stuff */
 require "html.php";
 require "contribs.php";
/*
 * Emit form to confirm password.
 */ 
$confirm=$_REQUEST['confirm'];
$ID=$_REQUEST['ID'];

function EmitConfirmForm ( $db, $ID ) {
  $query="select * from contribs where ID=$ID";  
  $res = mysql_query($query,$db);
  CheckMySQLError($foot);
  $row = mysql_fetch_object($res);
  echo "Please confirm that you would like to delete the following record by ";
  echo "providing a community username and password used to create this entry";
  if ($row->auth_method==0) {
     echo "Additionally, specify the password that was stored in the database together with the entry.<P>";
     echo "This is needed to be able to delete an entry created before user authentication was performed.</P>";
  }
  StartForm("delete.php3");
  HiddenVar("ID",$ID);
  HiddenVar("confirm","yes");
  echo "<TABLE><TR><TD>Username</TD><TD>";
  echo '<INPUT NAME="username" SIZE=30 MAXLENGTH=30/>';
  echo "</TD></TR><TR><TD>Password:</TD><TD>";
  EmitPasswordInput ('pwd',30,30);
  echo "</TD></TR>";
  if ($row->auth_method==0) {
    echo "<TR><TD>Entry password:</TD><TD>";
    EmitPasswordInput ('oldpwd',30,30);
    echo "</TD></TR>";
  }
  echo "</TABLE><P>";
  SubmitButton ("Delete");
  ResetButton ("Clear Password");
  echo "<P>";
  EndForm();
  Dumprecord($row);
  echo "<P>";
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
  if (VerifyAuthenticated($db,$ID,$_REQUEST['username'],$_REQUEST['pwd'],$_REQUEST['oldpwd'])) {
    $query = "delete from contribs where ID = $ID";
    $res=mysql_query($query,$db);
    CheckMySQLError;
    if ( mysql_affected_rows($db)==1 ) {
      Header1("Confirmation of deletion:");
      echo "The record was successfully deleted.<P>";
    } else { 
      Header1("Deletion failed:");
      echo "The record was NOT successfully deleted, please try again.<P>";
      Header2("Try again:");
      EmitConfirmForm ($db,$ID);
      Rule ();
    }
  } else {
    /* Password was wrong. reconfirm ? */ 
    WrongPassword ();
    Header2("Try again:");
    EmitConfirmForm ($db,$ID);
    Rule ();
  }
} else {
  /* 
   * We need to emit a confirmation form.
   */
  Header1("Please confirm deletion: ");
  EmitConfirmForm($db,$ID);
}
EmitContribsMenu ();
readfile($foot);
?>
