 <?php
   require_once("koneksi.php");
   $tanggal = $_GET['tanggal'];
   $bulan = $_GET['bulan'];
   $tahun = $_GET['tahun'];
   $jam = $_GET['jam'];
   $menit = $_GET['menit'];
   $alamat = $_GET['alamat'];
   
   $jenis =$_GET['jenis'];
   $jumlah =$_GET['jumlah'];
   $kerusakan =$_GET['kerusakan'];
   $detail =$_GET['detail'];
   $jangkawaktu =$_GET['jangkawaktu'];
   
   $cekuser = mysql_query("SELECT * FROM pesan WHERE tanggal = '$tanggal'");
     if(!$tanggal || !$bulan || !$tahun || !$jam || !$menit || !$alamat || !$jenis || !$jumlah || !$kerusakan || !$detail || !$jangkawaktu) {
       echo "gagal1";
     } else {
       $simpan = mysql_query("INSERT INTO pesan(tanggal, bulan, tahun, jam, menit, alamat,jenis,jumlah,kerusakan,detail,jangkawaktu) VALUES('$tanggal','$bulan','$tahun','$jam','$menit','$alamat','$jenis','$jumlah','$kerusakan','$detail','$jangkawaktu')");
       if($simpan) {
         echo "sukses";
       } else {
         echo "gagal2";
       }
     }
?>