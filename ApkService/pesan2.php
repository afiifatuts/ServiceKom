 <?php
   session_start();
?>

<title>Pemesanan</title>
<div align='center'>
  <form action="prosespesan2.php" method="get">
  <table>
  <tbody>
  <tr><td colspan="2" align="center"><h1>Pemesanan</h1></td></tr>
  <tr><td>Tanggal</td><td> : <select name="tanggal" class="form">
<?php 
   for($tanggal = 1; $tanggal <= 31; $tanggal++) {
       if($tanggal < 10) {
           echo '<option value="0'. $tanggal .'">0'. $tanggal .'</option>';
       }
       else {
           echo '<option value="'. $tanggal .'">'. $tanggal .'</option>';
       }
    }
 ?>
 </select>
 <select name="bulan" class="form">
<?php 
    for($bulan = 1; $bulan <= 12; $bulan++) {
        if($bulan < 10) {
            echo '<option value="0'. $bulan .'">0'. $bulan .'</option>';
        }
        else {
            echo '<option value="'. $bulan .'">'. $bulan .'</option>';
        }
    }
?>
</select>
<select name="tahun" class="form">
<?php 
    for($tahun = date('Y'); $tahun >= 1980; $tahun--) {
        echo '<option value="'. $tahun .'">'. $tahun .'</option>';
    }
?>
</select>
        
		
		</td></tr>
  <tr><td>Jam</td><td> : <input name="jam" type="text"><input name="menit" type="text"></td></tr>
  <tr><td>Alamat</td>: <td> <textarea name="alamat" id="alamat" class="form" cols="50" rows="8"></textarea></td></tr>
   <tr><td>Jenis Barang </td>: <td> <select name="jenis" class="form">
    <option value="laptop">Laptop</option>
    <option value="komputer">Komputer</option>
</select></td></tr>

 <tr><td>Jumlah barang</td><td> : <input name="jumlah" type="text"></td></tr>

 <tr><td>Kerusakan Barang </td>: <td> <select name="kerusakan" class="form">
    <option value="hardware">Hardware</option>
    <option value="software">Software</option>
</select></td></tr>

  <tr><td>Detail Kerusakan</td>: <td> <textarea name="detail" id="detail" class="form" cols="50" rows="8"></textarea></td></tr>
  <tr><td>Jangka waktu </td>: <td> <select name="jangkawaktu" class="form">
    <option value="sehari">1 Hari</option>
  <option value="duahari">2 Hari</option>
  <option value="tigahari">3 Hari</option>
  <option value="lebihdaritiga">>3</option>
</select></td></tr>
  
  
  <tr><td colspan="2" align="right"><input value="Simpan" type="submit"> <input value="Batal" type="reset"></td></tr>
  </tbody>
  </table>
  </form>
</div>