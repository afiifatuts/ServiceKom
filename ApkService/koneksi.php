 <?php
	@mysql_connect("localhost","root","")or die("Koneksi Gagal");
	mysql_select_db("service")or die("Database tidak ditemukan!");
 ?>