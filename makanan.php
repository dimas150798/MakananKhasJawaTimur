<?php
    // membuat koneksi
    $conn=mysqli_connect("localhost","root","","data_sim");
    // mengambil data tabel mahasiswa
    $result=mysqli_query($conn, "SELECT * FROM jenis");
	// var_dump($result);
?>

<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Sistem Informasi Makanan Khas Jawa Timur</title>

  <!-- Stylesheets -->
  <link href="css/bootstrap.css" rel="stylesheet">
  <link href="css/ionicons.css" rel="stylesheet">
  <link href="css/layerslider.css" rel="stylesheet">
  <link href="css/stylecss.css" rel="stylesheet">
  <link href="css/responsive.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="css/stylecss02.css">

<style type="text/css">
	body {
	background-color:pink;
	padding: 20px 20px 20px 20px;
	}
</style>
  
</head>

<body>
<header>
		<div class="top-menu">

			<ul class="left-area welcome-area">
				<li class="hello-blog">Makanan Khas Di Jawa Timur</li>
				<li>mk_jawatimur@gmail.com</a></li>
			</ul><!-- left-area -->

			<div class="right-area">

				<div class="src-area">
					<form action="" method="GET">
						<input class="src-input" type="text" name="cari" placeholder="Search">
						<button class="src-btn" type="submit" name="tombolcari"><i class="ion-ios-search-strong"></i></button>
					</form>
				</div><!-- src-area -->
		</div><!-- top-menu -->

		<div class="middle-menu center-text"><a class="logo"><img src="images/Header02.jpeg" alt="" height="1000" width="150" ></a></div>
		<div class="bottom-area">
			<div class="menu-nav-icon" data-nav-menu="#main-menu"><i class="ion-navicon"></i></div>
			<ul class="main-menu visible-on-click" id="main-menu">
				<li><a href="kota.php">KOTA</a></li>
				<li><a href="makanan.php">MAKANAN</a></li>
				<li><a href="print_makanan.php">PRINT</a></li>
				<li><a href="logout.php">LOGOUT</a></li>
			</ul><!-- main-menu -->

		</div><!-- conatiner -->
	</header>

<div class="main-slider">
		<div id="slider">
					<!-- Slide 1 -->
			<div class="ls-slide" data-ls="bgsize:cover; bgposition:50% 50%; duration:4000; transition2d:104; kenburnsscale:1.00;">
				<img src="images/tampil04.jpeg" class="ls-bg" alt="" />

					<div class="slider-content ls-l" style="top:60%; left:30%;" data-ls="offsetyin:100%; offsetxout:-50%; durationin:800; delayin:100; durationout:400; parallaxlevel:0;">
						<a class="btn" href="#">Masakan</a>
						<h3 class="title"><b>Khas Jawa Timur</b></h3>
						<h6>15 July, 2018</h6>
					</div>

			</div>	<!-- Slide 2 -->
			<div class="ls-slide" data-ls="bgsize:cover; bgposition:50% 50%; duration:7183; transition2d:104; kenburnsscale:1.00;">
				<img src="images/tampil01.jpeg" class="ls-bg" alt="" />

					<div class="slider-content ls-l" style="top:60%; left:30%;" data-ls="offsetyin:100%; offsetxout:-50%; durationin:800; delayin:100; durationout:400; parallaxlevel:0;">
						<a class="btn" href="#">Masakan</a>
						<h3 class="title"><b>Khas Jawa Timur</b></h3>
						<h6>20 July, 2018</h6>
					</div>

			</div>	<!-- Slide 3 -->
			<div class="ls-slide" data-ls="bgsize:cover; bgposition:50% 50%; duration:4000; transition2d:104; kenburnsscale:1.00;">
				<img src="images/tampil03.jpeg" class="ls-bg" alt="" />

					<div class="slider-content ls-l" style="top:60%; left:30%;" data-ls="offsetyin:100%; offsetxout:-50%; durationin:800; delayin:100; durationout:400; parallaxlevel:0;">
						<a class="btn" href="#">Masakan</a>
						<h3 class="title"><b>Khas Jawa Timur</b></h3>
						<h6>25 July, 2018</h6>
					</div>

			</div><!-- ls-slide -->

		</div><!-- slider -->
	</div><!-- main-slider -->
  
  <div class="table-users">
   <div class="header">MASAKAN KHAS DI JAWA TIMUR</div>
   
   <table cellspacing="0">
      <tr>
         <th width="100"><center>NO</th>
         <th width="220"><center>PICTURE</th>
         <th width="180"><center>NAMA KOTA</th>
         <th width="180"><center>NAMA MAKANAN</th>
         <th width="380"><center>KETERANGAN</th>
      </tr>
      <?php $i=1 ?>
		  <?php
	    $koneksi = mysqli_connect("localhost", "root", "", "data_sim");
			  if(isset($_GET['tombolcari'])){
				  $cari = $_GET['cari'];
				  $result = mysqli_query($koneksi ,"select * from jenis_makanan where kota like '%".$cari."%'");				
			  }else{
				  $result = mysqli_query($koneksi, "select * from jenis_makanan");		
			  }
        while($row=mysqli_fetch_assoc($result)){
		  ?>
      <tr>
         <td><center><?= $i++ ?></td>
         <td><center><img src="images/<?php echo $row['gambar']?>" height ="1000px" width="500px"></td>
         <td><center><?= $row['kota'] ?></td>
         <td><center><?= $row['makanan'] ?></td>
         <td><center><?= $row['keterangan'] ?></td>
      </tr>
      <?php } ?>
   </table>
</div>


<br>
	<footer>
		<div class="container">
			<div class="row">

				<div class="col-sm-6">
					<div class="footer-section">
						<p class="copyright">Dimas Bagus W.S &copy; 2018. All rights reserved. | Politeknik Negeri Malang <i class="ion-heart" aria-hidden="true"></i></a></p>
					</div><!-- footer-section -->
				</div><!-- col-lg-4 col-md-6 -->

				<div class="col-sm-6">
					<div class="footer-section">
						<ul class="social-icons">
							<li><a href="#"><i class="ion-social-facebook-outline"></i></a></li>
							<li><a href="#"><i class="ion-social-twitter-outline"></i></a></li>
							<li><a href="#"><i class="ion-social-instagram-outline"></i></a></li>
							<li><a href="#"><i class="ion-social-vimeo-outline"></i></a></li>
							<li><a href="#"><i class="ion-social-pinterest-outline"></i></a></li>
						</ul>
					</div><!-- footer-section -->
				</div><!-- col-lg-4 col-md-6 -->

			</div><!-- row -->
		</div><!-- container -->
	</footer>
  
  

	<!-- SCIPTS -->

	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/tether.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/layerslider.js"></script>
	<script src="js/scripts.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>
