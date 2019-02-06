<?php
require 'database.php';
$log = $_POST['login'];
$pass=$_POST['passAdm'];
$passC=md5($pass);
$db = Database::connect();
$stock = $db->prepare("SELECT * FROM user WHERE login = ? AND password = ? ");
$stock ->execute(array($log ,$passC));
if ($p=$stock->fetch()) {
    session_start();
    $_SESSION['id_admin'] = $p['id_user'];
    header ("location:../index.php");
}else {
    header ("location:../page-login.php");
}
?>