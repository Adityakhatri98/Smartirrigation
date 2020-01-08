<!DOCTYPE html>
<html lang="en">
<head>
<title>Report</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrapt/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animatet/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2t/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/perfect-scrollbart/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.6.1/firebase-app.js"></script>
<script
	src="https://www.gstatic.com/firebasejs/7.6.1/firebase-database.js"></script>
<!-- <script src="https://www.gstatic.com/firebasejs/7.6.1/firebase.js"></script> -->
<!-- TODO: Add SDKs for Firebase products that you want to use
            https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="js/report.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table id="tid">
						<thead>
							<tr class="table100-head">
								<td>Date</td>
								<td>Time</td>
								<td>Node1</td>
								<td>Node2</td>
								<td>Node3</td>
								<td>Node4</td>
							</tr>
						</thead>
						<tbody id="table_body">

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>




	<!--===============================================================================================-->
	<script src="vendor/jqueryt/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrapt/js/popper.js"></script>
	<script src="vendor/bootstrapt/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2t/select2.min.js"></script>

	<!-- -------------------- THIS IS THE configuration FILE FOR THE DATABASE------------------- -->
	<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>