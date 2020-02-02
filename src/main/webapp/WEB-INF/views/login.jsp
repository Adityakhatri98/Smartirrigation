<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/imagesl/icons/favicon.ico" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendorl/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fontsl/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fontsl/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendorl/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendorl/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendorl/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendorl/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendorl/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/cssl/util.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/cssl/main.css">
<!--===============================================================================================-->
<style type="text/css">
.error {
	color: red;
	margin-top: 10px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<s:form action="login" method="post" modelAttribute="customerBean">

		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form validate-form">
					<span class="login100-form-title p-b-26"> Welcome </span> <span
						class="login100-form-title p-b-48"> <i
						class="fas fa-seedling" style="font-size: 30px;"></i><span>Smart</span>Irrigation
					</span>

					<div class="wrap-input100 validate-input"
						data-validate="Valid email is: a@b.c">
						<s:input class="input100" type="text" path="email"/> <span
							class="focus-input100" data-placeholder="Email"></span>
					</div>
					<s:errors path="email" cssClass="error"></s:errors>
					<%String error = (String)request.getAttribute("error");%>
					<div class="inputdata"></div>

				</div>

				<div class="wrap-input100 validate-input"
					data-validate="Enter password">
					<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i>
					</span> <s:input class="input100" type="password" path="pwd"/> <span
						class="focus-input100" data-placeholder="Password"></span>
				</div>
				<s:errors path="pwd" cssClass="error"></s:errors>
				
				<div class="error"><%=error!= null ? error :""%></div>
				<div class="inputdata"></div>

				<div class="container-login100-form-btn">
					<div class="wrap-login100-form-btn">
						<div class="login100-form-bgbtn"></div>
						<button class="login100-form-btn">Login</button>
					</div>
				</div>

				<div class="text-center p-t-115">
					<span class="txt1"> Don't have an account? </span> <a class="txt2"
						href="signup"> SignUp </a>
				</div>
			</div>
		</div>
		</div>
		</div>
		<div id="dropDownSelect1"></div>

	</s:form>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendorl/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendorl/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendorl/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/vendorl/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendorl/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendorl/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendorl/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendorl/countdowntime/countdowntime.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/jsl/main.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<jsp:include page="jsfragment.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>