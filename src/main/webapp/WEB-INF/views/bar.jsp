<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>


<html>
<head>
<meta charset="UTF-8" />
<title>Node Values</title>
<link
	href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
	rel="stylesheet" />

<link rel="stylesheet" href="css/bar.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-circle-progress/1.2.0/circle-progress.min.js"></script>
<script src="https://www.gstatic.com/firebasejs/6.4.0/firebase-app.js"></script>
<script
	src="https://www.gstatic.com/firebasejs/3.1.0/firebase-database.js"></script>
</head>
<body onload="show()">
	<!-- Container containing all the elements -->
	<div class="circleBar">
		<h3 class="title">Node Values</h3>
		<div class="container ">
			<div class="row align-items-center">
				<div class="col-md-6">
					<str id="str" class="str">Node 1</str>
					<div id="node1" class="round" data-value="0.65" data-size="160"
						data-thickness="4">
						<strong></strong>
					</div>
				</div>
				<div class="col-md-6">
					<str id="str" class="str">Node 2</str>
					<div id="node2" class="round" data-value="1" data-size="160"
						data-thickness="4">
						<strong></strong>
					</div>
				</div>
				<div class="col-md-6">
					<str id="str" class="str">Node 3</str>
					<div id="node3" class="round" data-value=".121" data-size="160"
						data-thickness="4">
						<strong></strong>
					</div>
				</div>
				<div class="col-md-6">
					<str id="str" class="str">Node 4</str>
					<div id="node4" class="round" data-value=".81" data-size="160"
						data-thickness="4">
						<strong></strong>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- <script src="nodefunction2.js"></script> -->
	<script src="js/bar.js"></script>
</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>
