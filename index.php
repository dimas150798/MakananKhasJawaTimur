<!DOCTYPE html>
<html lang="en">
<head>
	<title>Sistem Informasi Makanan Khas Jawa Timur</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util02.css">
	<link rel="stylesheet" type="text/css" href="css/main02.css">
<!--===============================================================================================-->
</head>

<body>

	<div class="limiter">
	<div class="container-login100" style="background-image: url('images/Logo Prov Jawa Timur.jpeg');">
	
	<form action="ceklogin_user.php" method="POST" class="form-horizontal" role="form">
		
		<div class="wrap-login100">
			<form class="login100-form validate-form">
				<span class="login100-form-logo">
					<i class="logo"><img src="images/Logo Prov Jawa Timur.jpeg" alt="" height="150" width="180" ></i>
				</span>

				<span class="login100-form-title p-b-34 p-t-27">
					Log in User
				</span>

				<div class="wrap-input100 validate-input" data-validate = "Enter username">
					<input class="input100" type="text" name="username" placeholder="Username" required>
					<span class="focus-input100" data-placeholder="&#xf207;"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Enter password">
					<input class="input100" type="password" name="password" id="myInput" placeholder="Password" required>
					<span class="focus-input100" data-placeholder="&#xf191;"></span>
					<br>
					<input type="checkbox" onclick="myFunction()"> Show password
				</div>

				<div class="container-login100-form-btn">
					<button type="submit" class="login100-form-btn"> Login </button>
				</div>

				<br>
		        <div class="container-login100-form-btn"></div>
    			    <td> <a href="login_admin.php" class="login100-form-btn">Login Admin</a> <br> </td>
			        <div class="container-login100-form-btn"></div>
        		    <td> <a href="register.php" class="login100-form-btn">Register Baru</a> <br> </td>
        		</div>
				</div>

				</form>
			</div>
		</div>
	</div>
	
	<script>
		function myFunction() {
    	var x = document.getElementById("myInput");
    		if (x.type === "password") {
       			 x.type = "text";
    		} else {
        		x.type = "password";
   			}
		}
	</script>

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
	<script src="js/main3.js"></script>

</body>
</html>