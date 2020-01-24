
<%@page import="com.bean.CustomerBean"%>



<!DOCTYPE html>
<html lang="en">
<head>
<title>SmartIrrigation System</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
			<a class="navbar-brand" href="index"><i
				class="flaticon-pharmacy"></i><span>Smart</span>Crop</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<%
						CustomerBean temp = (CustomerBean) (session.getAttribute("user"));
						if (temp == null) {
					%>
					<li class="nav-item"><a href="#Home" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="#service" class="nav-link">Services</a></li>
					<li class="nav-item"><a href="#About" class="nav-link">About</a></li>
					<li class="nav-item"><a href="login" class="nav-link">Login</a></li>
					<%
						} else {
					%>
					<li class="nav-item"><a href="bar" class="nav-link">Monitor</a></li>
					<li class="nav-item"><a href="report" class="nav-link">Logs</a></li>
					<li class="nav-item"><a href="profile" class="nav-link">Profile</a></li>
					<li class="nav-item"><a href="logout" class="nav-link">Logout</a></li>
					<%
						}
					%>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>