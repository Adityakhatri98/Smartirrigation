<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Signup</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="../imagesl/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendorl/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../fontsl/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../fontsl/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendorl/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendorl/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendorl/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendorl/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendorl/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../cssl/util.css">
<link rel="stylesheet" type="text/css" href="../cssl/main.css">
<!--===============================================================================================-->
<script type="text/javascript" src="jsl/main.js"></script>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<s:form action="../update" method="post" modelAttribute="user">
		<div class="limiter">
			<div class="container-login100">
				<div class="wrap-login100">
					<div class="login100-form validate-form">
						<span class="login100-form-title p-b-26"> Welcome, </span> <span
							class="login100-form-title p-b-48"> <i
							class="fas fa-seedling" style="font-size: 35px;"></i><span>Smart</span>Irrigation
						</span>

						<div class="wrap-input100 validate-input">

							<s:input class="input100 has-val" type="text" path="name"/><span
								class="focus-input100" data-placeholder="Name"></span>
						</div>
						<div class="inputdata">${firstNameError}</div>
						<div class="wrap-input100 validate-input">
							<s:input class="input100  has-val" type="text" path="phone"/> <span
								class="focus-input100" data-placeholder="Phone No."></span>
						</div>
						<div class="inputdata">${phoneError}</div>

						<div class="wrap-input100 validate-input">
							<s:input class="input100  has-val" type="text" path="address"/> <span
								class="focus-input100" data-placeholder="Address"></span>
						</div>
						<div class="inputdata">${addressError}</div>

						<div class="wrap-input100 validate-input">
							<s:input class="input100 has-val" type="text" path="pincode"/> <span
								class="focus-input100" data-placeholder="Pincode"></span>
						</div>

						<div class="inputdata">${pincodeError}</div>


						<div class="wrap-input100 validate-input"
							data-validate="Valid email is: a@b.c">
							<s:input class="input100 has-val" type="text" path="email" readonly="true" 
							cssStyle="color:grey; font-weight:bold;"/> <span
								class="focus-input100" data-placeholder="Email"></span>
						</div>

						<div class="inputdata">${emailError}</div>


						<div class="wrap-input100 validate-input"
							data-validate="Enter password">
							<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i>
							</span> <s:input class="input100 has-val" type="password" path="pwd"/><span
								class="focus-input100" data-placeholder="Password"></span>
						</div>

						<div class="inputdata">${pwdError}</div>


						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button class="login100-form-btn">Submit</button>
							</div>
						</div>

						<div class="text-center p-t-115">
							<span class="txt1"> </span> <a class="txt2" href="#"> </a>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div id="dropDownSelect1"></div>

	</s:form>
	<!--===============================================================================================-->
	<script src="../vendorl/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendorl/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendorl/bootstrap/js/popper.js"></script>
	<script src="../vendorl/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendorl/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendorl/daterangepicker/moment.min.js"></script>
	<script src="../vendorl/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="../vendorl/countdowntime/countdowntime.js"></script>
	<script src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../jsl/main.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>