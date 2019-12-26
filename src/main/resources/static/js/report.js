var firebaseConfig = {
	apiKey : "AIzaSyAS4O2P0xde6bt7KSIARhFBtcIM_uwisTE",
	authDomain : "temp-nodewise.firebaseapp.com",
	databaseURL : "https://temp-nodewise.firebaseio.com",
	projectId : "temp-nodewise",
	storageBucket : "temp-nodewise.appspot.com",
	messagingSenderId : "698349958185",
	appId : "1:698349958185:web:898c131387ac4ec7bb1838"
};

// Initialize Firebase
firebase.initializeApp(firebaseConfig);

var n1;
var n2;
var n3;
var n4;
var database1 = firebase.database();
var rootRef = database1.ref('LOGS/');

rootRef.on('value', gotData, errData);

function gotData(data) {
	// console.log(data.val());

	var usrData = data.val();
	var keys = Object.keys(usrData);
	resetTable();
	var date = new Date(); 	

//	alert(k1);
	for (var i = 0; i < keys.length; i++) {
		
		//All Dates
		var k1 = keys[i];
		//var k1 =  date.getFullYear() + "-" + (date.getMonth()+1) + "-"+ (date.getDate()+1);
		
		var rootRef1 = database1.ref('LOGS/' + k1);
		rootRef1.on('value', gotData1, errData1);

		function gotData1(data) {

			console.log(data.val());

			var usrData1 = data.val();
			var keys1 = Object.keys(usrData1);
			for (var i = 0; i < keys1.length; i++) {
				k = keys1[i];
				n1 = usrData1[k].node1;
				n2 = usrData1[k].node2;
				n3 = usrData1[k].node3;
				n4 = usrData1[k].node4;
				check();

				$("#table_body").append(
						"<tr><td>" + k1 + "</td><td>" + k + "</td>" + n1 + n2
								+ n3 + n4 + "</tr>");
			}
		}
		function errData1(err) {
			console.log('ERROR!');
			console.log(err);
		}
	}
}

function errData(err) {
	console.log('ERROR!');
	console.log(err);
}

function check() {
	if (n1 != 1) {
		n1 = "<td style='color:red'>OFF</td>";
	} else {
		n1 = "<td style='color:green'>ON</td>";
	}
	if (n2 != 1) {
		n2 = "<td style='color:red'>OFF</td>";
	} else {
		n2 = "<td style='color:green'>ON</td>";
	}
	if (n3 != 1) {
		n3 = "<td style='color:red'>OFF</td>";
	} else {
		n3 = "<td style='color:green'>ON</td>";
	}
	if (n4 != 1) {
		n4 = "<td style='color:red'>OFF</td>";
	} else {
		n4 = "<td style='color:green'>ON</td>";
	}
}

function resetTable() {
	var table = document.getElementById("tid");

	for (var i = table.rows.length - 1; i > 0; i--) {

		table.deleteRow(i);
	}
}