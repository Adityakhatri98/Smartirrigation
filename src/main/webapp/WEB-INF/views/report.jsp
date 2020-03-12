<!DOCTYPE html>
<html lang="en">
<head>
<title>Report</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/bootstrapt/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/animatet/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/select2t/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/perfect-scrollbart/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/util.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">
<!--===============================================================================================-->
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.6.1/firebase-app.js"></script>
<script
	src="https://www.gstatic.com/firebasejs/7.6.1/firebase-database.js"></script>
<!-- <script src="https://www.gstatic.com/firebasejs/7.6.1/firebase.js"></script> -->
<!-- TODO: Add SDKs for Firebase products that you want to use
            https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="${pageContext.request.contextPath}/js/report.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<div class="dropdown" id="DropList">
						<button class="btn btn-secondary dropdown-toggle" type="button"
							id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">Select Your Date</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenu2"
							id="mySelect"></div>
					</div>
			<!-- 		<div class="input-field col s12" id="DropList1">
						<select id="mySelect1">
							<option value="" id="dropdownMenu" disabled selected>Choose your option</option>
						</select> <label>Date : </label>
					</div>
			 -->		<table id="tid">
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
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>