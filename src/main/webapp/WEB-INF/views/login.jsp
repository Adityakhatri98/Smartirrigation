<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="imagesl/icons/favicon.ico" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendorl/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fontsl/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fontsl/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendorl/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendorl/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendorl/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendorl/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendorl/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="cssl/util.css">
<link rel="stylesheet" type="text/css" href="cssl/main.css">
<!--===============================================================================================-->
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form action="login" method="post">
		
			<div class="container-login100">
				<div class="wrap-login100">
					<div class="login100-form validate-form">
						<span class="login100-form-title p-b-26"> Welcome </span> <span
							class="login100-form-title p-b-48"> <i class="fas fa-seedling" style="font-size:35px;"></i><span>Smart</span>Irrigation
						</span>

						<div class="wrap-input100 validate-input"
							data-validate="Valid email is: a@b.c">
							<input class="input100" type="text" name="email"> <span
								class="focus-input100" data-placeholder="Email"></span>
						</div>
						
						<div class="inputdata">
						</div>
						
						<div class="wrap-input100 validate-input"
							data-validate="Enter password">
							<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i>
							</span> <input class="input100" type="password" name="pwd"> <span
								class="focus-input100" data-placeholder="Password"></span>
						</div>
						<div class="inputdata"></div>
									
						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button class="login100-form-btn">Login</button>
							</div>
						</div>

						<div class="text-center p-t-115">
							<span class="txt1"> Don't have an account? </span> <a
								class="txt2" href="signup"> SignUp </a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="dropDownSelect1"></div>

		<!--===============================================================================================-->
		<script src="vendorl/jquery/jquery-3.2.1.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendorl/animsition/js/animsition.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendorl/bootstrap/js/popper.js"></script>
		<script src="vendorl/bootstrap/js/bootstrap.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendorl/select2/select2.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendorl/daterangepicker/moment.min.js"></script>
		<script src="vendorl/daterangepicker/daterangepicker.js"></script>
		<!--===============================================================================================-->
		<script src="vendorl/countdowntime/countdowntime.js"></script>
		<!--===============================================================================================-->
		<script src="jsl/main.js"></script>
	</form>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>