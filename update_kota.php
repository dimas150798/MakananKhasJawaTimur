<?php
include "koneksi/koneksi.php"; // memanggil file koneksi.php untuk menghubungkan ke database
 //memberikan perintah query sql menampilkan data berdasarkan id yang dipilih
$data = mysqli_query($mysqli, "SELECT * FROM jenis WHERE id ='$_GET[id]'");
$datashow = mysqli_fetch_array($data); // menampilkan data yang sudah di pilih untuk di edit
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Sistem Informasi Makanan Khas Jawa Timur</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

<style type="text/css">
body {
background-color:pink;
}
</style>

</head>

<body>
	<div class="container-contact100">
		<div class="wrap-contact100">
			<div class="contact100-form-title" style="background-image: url(images/bg-01.jpg);">
				<span class="contact100-form-title-1">
				</span>

				<span class="contact100-form-title-2">
					<form method="POST" enctype="multipart/form-data" action="update_kotasql.php">
					Masukkan Kota Yang Ada Di Jawa Timur 
				</span>
			</div>

			<form class="contact100-form validate-form">
				<div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100">Id:</span>
					<input class="input100" type="hidden" name="id" value ="<?php echo $_GET['id'];?>" id="textfield" placeholder="Id">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100">Nama Kota:</span>
					<input class="input100" type="text" name="kota" value="<?php echo $datashow['kota']; ?>" id="textfield" placeholder="Masukkan nama kota">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100">Nama Kota:</span>
					<input class="input100" type="text" name="kabupaten" value="<?php echo $datashow['kabupaten']; ?>" id="textfield" placeholder="Masukkan nama kota">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<span class="label-input100">Nama Makanan:</span>
					<input class="input100" type="text" name="pusat" value="<?php echo $datashow['pusat']; ?>" id="textfield" placeholder="Masukkan nama makanan">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Phone is required">
						<span class="label-input100">Image:</span>
						<input class="input100" type="file" name="gambar" value="<?php echo $datashow['gambar']; ?>" id="textfield" placeholder="Masukkan gambar">
						<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Phone is required">
						<span class="label-input100">Informasi:</span>
						<input class="input100" type="text" name="keterangan" value="<?php echo $datashow['keterangan']; ?>" id="textfield" placeholder="Masukkan informasi">
						<span class="focus-input100"></span>
				</div>

				<button type="submit" name="update" id="update" value="update" class="btn btn-primary btn-lg btn-block">Update</button>
				<button type="reset" name="reset" id="reset" value="Batal" class="btn btn-secondary btn-lg btn-block">Reset</button>

			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="js/map-custom.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
