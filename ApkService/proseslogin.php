<?php
   session_start();
   require_once("koneksi.php");
   $username = $_GET['username'];
   $password = $_GET['password'];
   $cekuser = mysql_query("SELECT * FROM user WHERE username = '$username'");
   $hasil = mysql_fetch_array($cekuser);
   if(mysql_num_rows($cekuser) == 0) {
     echo "gagal1";
   } else {
     if($password <> $hasil['password']) {
       echo "gagal2";
     } else {
       echo "berhasil";
     }
   }
?>