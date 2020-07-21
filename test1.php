<?php
require "db_fns.php";

function generateUniqueFileID($case_type)
{
    $resulty = mysql_query("SELECT COUNT(case_type) AS case_count FROM case_files
    WHERE case_type=".$case_type."");
    $rowy = mysql_fetch_array($resulty);
   $tid= stripslashes($rowy['case_count']) + 1;
   if($case_type=="WARRANT"){
       $initials = 'CW';
   }elseif($case_type=="DISTRESS") {
       $initials = 'DC';
   }
   return sprintf("%s%04d",$initials, $tid);
   //return $rowy['case_count'];
}



 echo generateUniqueFileID("DISTRESS");


?>