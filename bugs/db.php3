<?php
 /* input some needed stuff */
 require "html.php";
 require "bugs.php";
/*
 * Start of program
 */
readfile ($head);
$db = ConnectToFPC();
if ((isset($format)) || ($format=="summary")) {
  $query = "SELECT BugId,Status,Title,Category,BugType FROM bugs";
} else {
  $query = "SELECT * FROM bugs";
}
if (($statusfield) && ($statusfield!="Any")) {
  if (($statusfield=='Unfixed') && ($versionfield) && ($versionfield!="Any")) {
    $addtoquery = "(((Status=\"Unfixed\") AND (BugVersion<=\"$versionfield\"))"
                  ."or ((Status=\"Fixed\") AND (FixVersion>\"$versionfield\")"
                  ."AND (FixVersion<>\"N/A\") AND (FixVersion<>\"Earlier\")))";
  } else {
    $addtoquery = "(Status=\"$statusfield\")";
  }
} else {
  if (($versionfield) && ($versionfield!="Any")) {
    $addtoquery = "(BugVersion=\"$versionfield\")";
  }
}
if (($osfield) && ($osfield!="Any")) {
  if ($addtoquery) {
    $addtoquery .= ' AND ';
  }
  $addtoquery .= "(OS=\"$osfield\")";
}
if ((isset($categoryfield)) && ($categoryfield!=-1)) {
  $ShowCategory=0;
  if ($addtoquery) {
    $addtoquery .= ' AND ';
  }
  $addtoquery .= "(CATEGORY=$categoryfield)";
} else {
  $ShowCategory=1;
}
if ((isset($bugtypefield)) && ($bugtypefield!=-1)) {
  $ShowBugType=0;
  if ($addtoquery) {
    $addtoquery .= ' AND ';
  }
  $addtoquery .= "(BUGTYPE=$bugtypefield)";
} else {
  $ShowBugType=1;
}
if (($age) && ($age!="The start of the epoch")) {
  if ($addtoquery) {
    $addtoquery .= ' AND ';
  }
 if ($age=="Today") {
   $addtoquery .= "(adddate=Curdate())";
 } else {
   $addtoquery .= "(TO_DAYS(NOW()) - TO_DAYS(adddate) < 8)";
 }
}
if ($addtoquery) {
  $addtoquery = ' WHERE ' . $addtoquery;
}
$query .= $addtoquery;
if ($sortfield) {
  $query .= " ORDER BY $sortfield";
} else {
  $query .= " ORDER BY BugId";
}
/*
echo " query : $query";
*/

Header1("Bugs matching the following criteria:");
ListStart('Ordered');
ListItem("<B>OS</B> :");
if ($osfield) { echo $osfield; } else { echo 'Any';}
ListItem("<B>Status</B> :");
if ($statusfield) {echo $statusfield; } else {echo 'Any';}
ListItem("<B>Version</B> :");
if ($versionfield) {echo $versionfield; } else {echo 'Any';}
ListItem("<B>Added since</B> :");
if ($age) { echo $age; } else {echo 'The start of the epoch';}
ListItem("<b>with category</b>");
if ($categoryfield!=-1) { echo NumToCategory($categoryfield); } else {echo 'Any';}
ListItem("<b>with Type</b>");
if ($bugtypefield!=-1) { echo NumToBugType($bugtypefield); } else {echo 'Any';}
ListItem("Listed in ");
if ($format) { echo " <B>$format</B>"; } else { echo 'Summary'; }
echo " view.";
ListEnd('');
Rule();
/* echo $query; */
$res = mysql_query($query,$db);
CheckMySQLError($foot);
if (!$res) {
  echo "Sorry. No records were found matching your criteria.<P>";
  echo "Please try selecting different criteria.";
} else {
  $nr = mysql_num_rows($res);
  echo "$nr records matched the search criteria:<P>";
  $row = mysql_fetch_object($res);
  CheckMySQLError($foot);
  if ($format=="detailed") {
    while ($row) {
      DumpRecord($row);
      echo "<P>";
      $row = mysql_fetch_object($res);
    }
  } else {
    echo "<TABLE WIDTH=\"100%\"CELLPADDING=2 CELLSPACING=1 BORDER=1>";
    echo '<TR><TH>ID</TH><TH>Status</TH>';
    if ($ShowCategory) {
      echo '<TH>Category</TH>';
    }
    if ($ShowBugType) {
      echo '<TH>Type</TH>';
    }
    echo '<TH>Bug Title</TH></TR>';
    while ($row) {
      DumpSummaryRecord ($row,$ShowCategory,$ShowBugType);
      $row = mysql_fetch_object($res);
    }
    echo "</TABLE><P>";
  }
  mysql_free_result($res);
}
mysql_close($db);
echo "<P>";
EmitBugsMenu ();
echo "<P>";
readfile ($foot);
?>
