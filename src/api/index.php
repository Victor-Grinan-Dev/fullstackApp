<?php
include 'DBconnect.php';

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token');

echo "<h1> Testing PHP API </h1> ";

//phpinfo();

$objectDB = new DBconnect;
var_dump($objectDB);
