<?php
ini_set("display_errors", 0);
include "koneksi/koneksi.php"; // memanggil file koneksi.php untuk menghubungkan ke database

// Ambil Data yang Dikirim dari Form
if(isset($_POST['simpan'])){
  $id         = $_POST['id']; // memanggil nama variabel id untuk dibuat menjadi variabel baru $id
  $kota       = $_POST['kota']; // memanggil nama variabel kota untuk dibuat menjadi variabel baru $kota
  $makanan    = $_POST['makanan']; // memanggil nama variabel makanan untuk dibuat menjadi variabel baru $makanan
  $gambar     = $_POST['gambar']; // memanggil nama variabel gambar untuk dibuat menjadi variabel baru $gambar
  $keterangan = $_POST['keterangan']; // memanggil nama variabel keterangan untuk dibuat menjadi variabel baru $keterangan

$nama_file = $_FILES['gambar']['name'];
$ukuran_file = $_FILES['gambar']['size'];
$tipe_file = $_FILES['gambar']['type'];
$tmp_file = $_FILES['gambar']['tmp_name'];

// Set path folder tempat menyimpan gambarnya
$path = "images/".$nama_file;

if($tipe_file == "image/jpg" || $tipe_file == "image/jpeg" || $tipe_file == "image/png"){ // Cek apakah tipe file yang diupload adalah JPG / JPEG / PNG
  // Jika tipe file yang diupload JPG / JPEG / PNG, lakukan :
  if($ukuran_file <= 1000000){ // Cek apakah ukuran file yang diupload kurang dari sama dengan 1MB
    // Jika ukuran file kurang dari sama dengan 1MB, lakukan :
    // Proses upload
    if(move_uploaded_file($tmp_file, $path)){ // Cek apakah gambar berhasil diupload atau tidak
      // Jika gambar berhasil diupload, Lakukan :	
      // Proses simpan ke 

      $query = "INSERT INTO jenis_makanan SET id='$id', kota='$kota', makanan='$makanan', gambar='$nama_file', keterangan='$keterangan' " or die ("data salah : ".mysqli_error($mysqli));
      $sql = mysqli_query($mysqli, $query); // Eksekusi/ Jalankan query dari variabel $query
      
      if($sql){ // Cek jika proses simpan ke database sukses atau tidak
        // Jika Sukses, Lakukan :
        header("location: edit_makanan.php"); // Redirectke halaman index.php
      }else{
        echo "
        <script>
            alert('Terjadi kesalahan saat mencoba untuk menyimpan data ke database');
        </script>
      ";
        // Jika Gagal, Lakukan :
        echo "Gagal Input Data!!!";                 
        echo "<br><a href='dm_makanan.php'>Kembali Ke Form</a>";
      }
    }else{
      echo "
      <script>
          alert('Gambar gagal untuk diupload');
      </script>
    ";
      // Jika gambar gagal diupload, Lakukan :
      echo "Gagal Input Data!!!";          
      echo "<br><a href='dm_makanan.php'>Kembali Ke Form</a>";
    }
  }else{
    echo "
    <script>
        alert('Ukuran gambar yang diupload tidak boleh lebih dari 1MB');
    </script>
  ";
    // Jika ukuran file lebih dari 1MB, lakukan :
    echo "Gagal Input Data!!!";    
    echo "<br><a href='dm_makanan.php'>Kembali Ke Form</a>";
  }
}else{
  // Jika tipe file yang diupload bukan JPG / JPEG / PNG, lakukan :
  echo "
  <script>
      alert('Tipe gambar yang diupload harus JPG / JPEG / PNG');
  </script>
";
  // Jika gambar gagal diupload, Lakukan :
  echo "Gagal Input Data!!!";
  echo "<br><a href='dm_makanan.php'>Kembali Ke Form</a>";
}
}
?>