<?php
require_once('conn.php');

$sql = "SELECT name,email FROM emails";
$res = mysqli_query($conn,$sql);
while($lnh = mysqli_fetch_array($res))  {
	echo $lnh['name'].'<br />';
    echo $lnh['email'].'<br />';
    echo '<hr />';
}
mysqli_close($conn);
?>