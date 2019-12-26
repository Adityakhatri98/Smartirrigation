<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" href="css/chart.css"/>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://www.gstatic.com/firebasejs/6.4.0/firebase-app.js"></script>
	<script
		src="https://www.gstatic.com/firebasejs/3.1.0/firebase-database.js"></script>
<script src="js/extv.js"></script>

</head>
 	<jsp:include page="header.jsp"></jsp:include> 
<body>

	<div id="contenitore">
		<div class="left">

			<table>
				<caption>Date table</caption>
				<tbody>
					<tr>
						<td>Node1</td>
						<td id="1000"></td>
						<td style="background-color: #336699">&nbsp;</td>
					</tr>
					<tr>
						<td>Node2</td>
						<td id="1001"></td>
						<td style="background-color: #003366">&nbsp;</td>
					</tr>
					<tr>
						<td>Node3</td>
						<td id="1002"></td>
						<td style="background-color: #45334f">&nbsp;</td>
					</tr>
					
				</tbody>
			</table>
			
		</div>
		<div class="left">
			<div id="grafico">
				<div class="riga" style="top: 0%">
					<div>100%</div>
				</div>
				<div class="riga" style="top: 25%">
					<div>75%</div>
				</div>
				<div class="riga" style="top: 50%">
					<div>50%</div>
				</div>
				<div class="riga" style="top: 75%">
					<div>25%</div>
				</div>
				
				<div id="col0" style="left: 0; background-color: #336699;"
					class="column"></div>
				<div id="col1" style="left: 25%; background-color: #003366;"
					class="column"></div>
				<div id="col2" style="left: 50%; background-color: #45334f;"
					class="column"></div>
				<div id="col3" style="left: 75%; background-color: #ffcc00;"
					class="column"></div>
			</div>
		</div>
		
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			show();			
		});
	</script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>