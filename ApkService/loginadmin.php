<?php
   $username = $_GET['username'];
   $password = $_GET['password'];
   
   if($username=="admin" && $password=="admin") {
     echo "sukses";
   } else {
     echo "gagal";
   }
?>