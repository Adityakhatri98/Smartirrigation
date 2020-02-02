<%@page import="com.bean.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="../images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css" href="../css/util.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" />
<title>Profile</title>
<link rel="stylesheet" href="css/profile.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.6.1/firebase-app.js"></script>
<script
	src="https://www.gstatic.com/firebasejs/7.6.1/firebase-database.js"></script>

<script src="js/profile.js"></script>

</head>
<body>
<div class="back">

	<jsp:include page="header.jsp"></jsp:include>
	<%
		CustomerBean temp = (CustomerBean) (session.getAttribute("user"));
		if (temp != null) {
	%>
	<div class="main">
		<div class="cont">
			<b>Name</b><br> <span><%=temp.getName()%></span>
		</div>
		<div class="cont">
			<b>Email</b><br> <span><%=temp.getEmail()%></span>
		</div>
		<div class="cont">
			<b>Phone</b><br> <span><%=temp.getPhone()%></span>
		</div>
		<div class="cont">
			<b>Address</b><br> <span style="margin-right: 50px;"><%=temp.getAddress()%></span>
		</div>
		<div class="cont">
			<b>Password</b><br> <span><%=temp.getPwd()%></span>
		</div>
		<div class="cont">
			<b>Pincode</b><br> <span><%=temp.getPincode()%></span>
		</div>
		<div class="cont">
			<b>ManualMode</b><span class="toogle"><label class="switch">
					<input type="checkbox" id="mode"><span
					class="slider round"></span>
			</label></span>
		</div>
		<div class="cont">
			<b>MasterReset</b></span> <span class="toogle"><label
				class="switch"> <input type="checkbox" id="mreset" ><span
					class="slider round"></span></label></span>
		</div>
		<div class="cont">
			<b>SlaveReset</b></span> <span class="toogle"><label
				class="switch"> <input type="checkbox" id="sreset" ><span
					class="slider round"></span></label></span>
		</div>
	</div>
	<c:set var="email" value="<%=temp.getEmail()%>"></c:set>
	<center>
		<a href="user/${email}"><button type="button" id="update"
				class="btn btn-info btn-lg col-2">Update Profile</button></a>
	</center>
	<%
		} else {
	%>
	<h2>Somthing went to wrong</h2>
	<%
		}
	%>
	<br/>
</div>	
	<script src="../js/jquery.min.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>