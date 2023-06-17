  <?php
   session_start();
?>

<title>Pemesanan</title>
<div align='center'>
  <form action="prosespemesanan.php" method="GET">
  <table>
  <tbody>
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