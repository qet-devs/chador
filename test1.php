<?php
require "db_fns.php";
require "functions.php";

$date = "04/08/2020";
//$stamp = stampreverse($date);

$rev =  datereverse($date);

$stamp = preg_replace('~/~', '', $rev);

echo var_dump($_SESSION['tenants']);