<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

<!--===============================================================================================-->
<link rel="icon" type="image/png" href="imagesl/icons/favicon.ico" />
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

	<%
		String firstNameValue = request.getParameter("firstNameValue");

		String emailValue = request.getParameter("emailValue");
		String pwdValue = request.getParameter("pwdValue");
		String addressValue = request.getParameter("addressValue");
		String pincodeValue = request.getParameter("pincodeValue");
		String phoneValue = request.getParameter("phoneValue");

		String firstNameError = request.getParameter("firstNameError");
		String emailError = request.getParameter("emailError");
		String pwdError = request.getParameter("pwdError");
		String addressError = request.getParameter("addressError");
		String pincodeError = request.getParameter("pincodeError");
		String phoneError = request.getParameter("phoneError");
	%>

	<form action="signup" method="post">
		<div class="limiter">
			<div class="container-login100">
				<div class="wrap-login100">
					<div class="login100-form validate-form">
						<span class="login100-form-title p-b-26"> Welcome, </span> <span
							class="login100-form-title p-b-48"> <i class="fas fa-seedling" style="font-size:35px;"></i><span>Smart</span>Irrigation
						</span>
						
						<div class="wrap-input100 validate-input">
							
							<input class="input100" type="text" name="name"
								value="<%=firstNameValue != null ? firstNameValue : ""%>" /> <span
								class="focus-input100" data-placeholder="Name"></span>
						</div>
						<div class="inputdata">	
								${firstNameError}
								</div>
						<div class="wrap-input100 validate-input">
							<input class="input100" type="text" name="phone"
								value="<%=phoneValue != null ? phoneValue : ""%>" /> <span
								class="focus-input100" data-placeholder="Phone No."></span>
						</div>
						<div class="inputdata">
						${phoneError}
						</div>

						<div class="wrap-input100 validate-input">
							<input class="input100" type="text" name="address"
								value="<%=addressValue != null ? addressValue : ""%>" /> <span
								class="focus-input100" data-placeholder="Address"></span>
						</div>
						<div class="inputdata">
						${addressError}
						</div>
						
						<div class="wrap-input100 validate-input">
							<input class="input100" type="text" name="pincode"
								value="<%=pincodeValue != null ? pincodeValue : ""%>" /> <span
								class="focus-input100" data-placeholder="Pincode"></span>
						</div>
						
						<div class="inputdata">
						${pincodeError}
						</div>
						
						
						<div class="wrap-input100 validate-input"
							data-validate="Valid email is: a@b.c">
							<input class="input100" type="text" name="email"
								value="<%=emailValue != null ? emailValue : ""%>" /> <span
								class="focus-input100" data-placeholder="Email"></span>
						</div>
						
						<div class="inputdata">
						${emailError}
						</div>
						
						
						<div class="wrap-input100 validate-input"
							data-validate="Enter password">
							<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i>
							</span> <input class="input100" type="password" name="pwd"
								value="<%=pwdValue != null ? pwdValue : ""%>" /><span
								class="focus-input100" data-placeholder="Password"></span>
						</div>
						
						<div class="inputdata">
						${pwdError}
						</div>
						
						
						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button class="login100-form-btn">SignUp</button>
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

	</form>
		<script src="js/jquery.min.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>