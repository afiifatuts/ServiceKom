 <?php
   require_once("koneksi.php");
   $tanggal = $_GET['tanggal'];
   $bulan = $_GET['bulan'];
   $tahun = $_GET['tahun'];
   $jam = $_GET['jam'];
   $menit = $_GET['menit'];
   $alamat = $_GET['alamat'];
   
   $cekuser = mysql_query("SELECT * FROM pesandetail WHERE tanggal = '$tanggal'");
     if(!$tanggal || !$bulan || !$tahun || !$jam || !$menit || !$alamat) {
       echo "gagal1";
     } else {
       $simpan = mysql_query("INSERT INTO pesandetail(tanggal, bulan, tahun, jam, menit, alamat) VALUES('$tanggal','$bulan','$tahun','$jam','$menit','$alamat')");
       if($simpan) {
         echo "sukses";
       } else {
         echo "gagal2";
       }
     }
?>