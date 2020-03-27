<%@page import="com.bean.CustomerBean"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>SmartIrrigation System</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fontsl/iconic/css/material-design-iconic-font.min.css">

<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/animate.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/magnific-popup.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/aos.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/ionicons.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.timepicker.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/icomoon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<!-- ftco-navbar -->
</head>
<body>
	<%
		CustomerBean node = (CustomerBean) (session.getAttribute("user"));
	%>
	<input type="hidden" id="hidenode" value="<%=node.getNode()%>"/>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/index"
				style="font-family: Poppins-Regular;"> <i
				class="fas fa-seedling" style="font-size: 30px;"></i><span
				style="font-family: Poppins-Regular;">Smart</span>Crop
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation"
				style="font-family: Poppins-Regular;">
				<span class="oi oi-menu"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<%
						CustomerBean temp = (CustomerBean) (session.getAttribute("user"));
						if (temp == null) {
					%>
					<li class="nav-item"><a href="#Home" class="nav-link"
						style="font-family: Poppins-Regular;">Home</a></li>
					<li class="nav-item"><a href="#service" class="nav-link"
						style="font-family: Poppins-Regular;">Services</a></li>
					<li class="nav-item"><a href="#About" class="nav-link"
						style="font-family: Poppins-Regular;">About</a></li>
					<li class="nav-item"><a
						href="${pageContext.request.contextPath}/login" class="nav-link"
						style="font-family: Poppins-Regular;">Login</a></li>
					<%
						} else {
					%>
					<li class="nav-item"><a
						href="${pageContext.request.contextPath}/bar" class="nav-link"
						style="font-family: Poppins-Regular;">Monitor</a></li>
					<li class="nav-item"><a
						href="${pageContext.request.contextPath}/report" class="nav-link"
						style="font-family: Poppins-Regular;">Logs</a></li>
					<li class="nav-item"><a
						href="${pageContext.request.contextPath}/profile" class="nav-link"
						style="font-family: Poppins-Regular;">Profile</a></li>
					<li class="nav-item"><a
						href="${pageContext.request.contextPath}/logout" class="nav-link"
						style="font-family: Poppins-Regular;">Logout</a></li>
					<%
						}
					%>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>