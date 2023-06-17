<?php
   require_once("koneksi.php");
   $username = $_GET['username'];
   $pass = $_GET['password'];
   $notlp = $_GET['notlp'];
  if ($_GET['password']==$_GET['conpassword'] ) {
      //proses simpan data, $_POST['pw'] dan $_POST['pw1'] adalah name dari masing masing text password 
	}else {
	echo"gagal1";
	}
   $cekuser = mysql_query("SELECT * FROM user WHERE username = '$username'");
   if(mysql_num_rows($cekuser) > 0) {
     echo"gagal2";
   } else {
     if(!$username || !$pass) {
       echo"gagal3";
     } else {
       $simpan = mysql_query("INSERT INTO user(username, password, notlp) VALUES('$username','$pass','$notlp')");
       if($simpan) {
         echo"sukses";
       } else {
         echo"gagal";
       }
     }
   }
?>