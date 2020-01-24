<%@page import="com.bean.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<title>Document</title>
<link rel="stylesheet" href="css/profile.css">
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<%
		CustomerBean temp = (CustomerBean) (session.getAttribute("user"));
		if (temp != null) {
	%>

	<div class="main">
		<div class="cont">
			<b>Name</b><br> <span><%=temp.getName()%></span> <span
				class="sp"><div class="temp">
					<a href="#">Edit</a>
				</div></span>
		</div>
		<div class="cont">
			<b>Email</b><br> <span><%=temp.getEmail()%></span> <span
				class="sp"><div class="temp">
					<a href="#">Edit</a>
				</div></span>
		</div>
		<div class="cont">
			<b>Phone</b><br> <span><%=temp.getPhone()%></span> <span
				class="sp"><div class="temp">
					<a href="#">Edit</a>
				</div></span>
		</div>
		<!-- 		<div class="cont"> -->
		<!-- 			<b>Address</b><br> <span><textarea rows="5" cols="20" id="address" disabled>13 Virat Society,&#13;&#10;New Sharda Mandir Road,&#13;&#10;Paldi Ahmedabad,&#13;&#10;380007</textarea></span> <span class="sp"><a -->
		<!-- 				href="#" class="btn">Edit</a></span> -->
		<!-- 		</div> -->
		<div class="cont">
			<b>Address</b><br> <span><%=temp.getAddress()%></span> <span
				class="sp"><div class="temp">
					<a href="#">Edit</a>
				</div></span>
		</div>

		<div class="cont">
			<b>Password</b><br> <span><%=temp.getPwd()%></span> <span
				class="sp"><div class="temp">
					<a href="#">Edit</a>
				</div></span>
		</div>
		<div class="cont">
			<b>Pincode</b><br> <span><%=temp.getPincode()%></span> <span
				class="sp"><div class="temp">
					<a href="#">Edit</a>
				</div></span>
		</div>
		<div class="cont">
			<b>Manual</b><br> <span><b>Mode</b></span> <span class="toogle"><label
				class="switch"> <input type="checkbox"><span
					class="slider round"></span></label></span>
		</div>
		<div class="cont">
			<b>Trouble</b><br> <span><b>shooting</b></span> <span
				class="toogle"><label class="switch"> <input
					type="checkbox"><span class="slider round"></span></label></span>
		</div>
	</div>
	<%
		} else {
	%>
	<h2>Somthing went to wrong</h2>
	<%
		}
	%>
	<script src="js/jquery.min.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>