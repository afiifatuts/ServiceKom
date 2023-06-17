  <?php
   require_once("koneksi.php");
   $jenis =$_GET['jenis'];
   $jumlah =$_GET['jumlah'];
   $kerusakan =$_GET['kerusakan'];
   $detail =$_GET['detail'];
   $jangkawaktu =$_GET['jangkawaktu'];
   
   
   $cekuser = mysql_query("SELECT * FROM pemesanan WHERE jenis = '$jenis'");
     if( !$jenis || !$jumlah || !$kerusakan || !$detail || !$jangkawaktu) {
       echo "gagal1";
     } else {
       $simpan = mysql_query("INSERT INTO pemesanan(jenis,jumlah,kerusakan,detail,jangkawaktu ) VALUES('$jenis','$jumlah','$kerusakan','$detail','$jangkawaktu')");
       if($simpan) {
         echo "sukses";
       } else {
         echo "gagal2";
       }
     }

?>