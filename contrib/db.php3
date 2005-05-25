<HTML>
<BODY>
<?php
 /* input some needed stuff */
 require "html.php";
 require "contribs.php";
/*
 * Start of program
 */
readfile ($head);
EmitContribsMenu ();
include('contribpwd.php');
$db = mysql_connect($DBHost,$DBUser,$DBPassword);
CheckMySQLError($foot);
mysql_select_db('FPC');
if (($category=="all") || ($category=="")) {
  if ($category<>'') { 
    Header1("Contributed units, sorted by category");
  } else {
    Header1("Contributed units: Select a category");
  }
  $query = "select category from contribs group by category order by category";
  $res = mysql_query($query,$db);
  CheckMySQLError($foot);
  Rule ();
  if ($category<>'') { 
    Header2 ("Quick jump table:");
  } else {
    Header2 ("Available categories:");
  }
  ListStart ($Ordered);
  $row = mysql_fetch_object($res);
  while ($row) {
    if ( $category!='' ) {
      ListItem (MakeAnchor("#$row->category",$row->category));
    } else {
      ListItem (MakeAnchor("db.php3?category=$row->category",$row->category));
    }
   
    $row = mysql_fetch_object($res);
  }
  ListEnd($Ordered);
  mysql_free_result($res);
  CheckMySQLError($foot);
  $query="select * from contribs order by category,ID";
  $LastOrder="";
}
else {
  Header1("Contributed units, category: $category");
  $query="select * from contribs where Category=\"$category\"";  
  $LastOrder = $category;
}
if ($category<>'') {
    $res = mysql_query($query,$db);
    CheckMySQLError($foot);
    $row = mysql_fetch_object($res);
  CheckMySQLError($foot);
  while ($row) {
   if ($row->category != $LastOrder) {
    $LastOrder=$row->category;
    Rule ();
    echo "<A NAME=\"$LastOrder\"><H2>Category: $LastOrder</H2></A>\n";
   }
   DumpRecord($row);
   echo "<P>";
   $row = mysql_fetch_object($res);
}
mysql_free_result($res);
}
mysql_close($db);
EmitContribsMenu ();
readfile ($foot);
?>
</BODY>
</HTML>
