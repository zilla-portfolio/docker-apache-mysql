<?php

# Same security issues. If you need a Production Environment
# the MySQL connection informations MUST BE in a .env file
$db = [
    'server' => 'my-database',
    'user' => 'root',
    'password' => 'rootpwd',
    'dbname' => 'email_sender'
];

$connectionError = false;
if(!empty($db['dbname'])) {
    $conn = new mysqli($db['server'],$db['user'],$db['password'],$db['dbname']);
    if ($conn->connect_errno) {
        $connectionError = true;
    }
} else {
    $connectionError = true;
}
if($connectionError) { echo 'Failure'; }