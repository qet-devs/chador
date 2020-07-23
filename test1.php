<?php
require "db_fns.php";


if (isset($_GET['loadex'])) {

    $tenants = '';
    $resulta = mysql_query("select * from tenants where status=1");
    $num_resultsa = mysql_num_rows($resulta);
    for ($i = 0; $i < $num_resultsa; $i++) {
        $row = mysql_fetch_array($resulta);
        $item = stripslashes($row['tid']) . '  ' . stripslashes($row['bname']) . ' ' . stripslashes($row['dname']) . ' ' . $row['roomno'];
        $tenants .= '"' . $item . '",';
    }
    $len = strlen($tenants);
    $a = $len - 1;
    $tenants = substr($tenants, 0, $a);


} else {

    $tenants = $_SESSION['tenants'];
}

?>