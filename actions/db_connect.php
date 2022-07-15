<?php
$localhost = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "library_mohamad";



$connect = mysqli_connect($localhost, $username, $password, $dbname);

if (!$connect){
    die("connection failed :" . mysqli_connect_error());
}
// else {
//     echo "connected successfully";
// }
