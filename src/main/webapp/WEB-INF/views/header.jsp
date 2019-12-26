<%@page import="com.bean.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>SmartIrrigation System</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700"
	rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.jsp"><i
				class="fas fa-seedling" style="font-size: 35px;"></i><span>Smart</span>Irrigation</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<%
						CustomerBean temp = (CustomerBean)(session.getAttribute("user"));
						if (temp == null) {
					%>
					<a href="#Home" class="nav-link">Home</a>
					<a href="#Service" class="nav-link">Our Services</a>
					<a href="#About" class="nav-link">About</a>
					<a href="login" class="nav-link">Login</a>
					<%
						} else {
					%>
					<a href="#" class="nav-link">Monitor</a>
					<a href="#" class="nav-link">Report</a>
					<a href="#" class="nav-link">Troubleshoot</a>
					<a href="#" class="nav-link">Contact Us</a>

					<!-- Example single danger button -->
					<div class="btn-group">
						<button type="button" class="btn btn-primary dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Hi <%=temp.getName()%>
						</button>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="updateUserData">UpdateInfo</a> <a
								class="dropdown-item" href="report">Report</a> <a
								class="dropdown-item" href="chart">LiveView</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="logout">Logout</a>
						</div>
					</div>
					<%
						}
					%>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->
</body>
</html>