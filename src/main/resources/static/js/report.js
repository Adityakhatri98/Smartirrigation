var firebaseConfig = {
	apiKey : "AIzaSyCOsmsmUhZe_K_-_nn3d4mzrRtZhQ-gfA8",
	authDomain : "official-database.firebaseapp.com",
	databaseURL : "https://official-database.firebaseio.com",
	projectId : "official-database",
	storageBucket : "official-database.appspot.com",
	messagingSenderId : "992211092659",
	appId : "1:992211092659:web:0c0055f716b6d855cddcc6",
	measurementId : "G-7D1FBPWZE9"
};
// Initialize Firebase
firebase.initializeApp(firebaseConfig);

var n1;
var n2;
var n3;
var n4;
var database1 = firebase.database();
var rootRef = database1.ref('USER/user1/LOGS/');
var rootRef1;
rootRef.on('value', gotData, errData);

function reply_click(clicked_id) {
	after(clicked_id);
}

function gotData(data) {
	// console.log(data.val());

	var usrData = data.val();
	var keys = Object.keys(usrData);
	for (var i = 0; i < keys.length; i++) {
		$("#mySelect").append(
				"<button onClick='reply_click(this.id)' class='dropdown-item' id="
						+ keys[i] + " type='button'>" + keys[i] + "</button>")
		init(keys);
	}
}

function after(clicked_id) {
	rootRef1 = database1.ref('USER/user1/LOGS/' + clicked_id);
	rootRef1.on('value', gotData1, errData1);
	function gotData1(data) {
		resetTable();
		var usrData1 = data.val();
		var keys1 = Object.keys(usrData1);
		for (var i = 0; i < keys1.length; i++) {
			k = keys1[i];
			n1 = usrData1[k].node1;
			n2 = usrData1[k].node2;
			n3 = usrData1[k].node3;
			n4 = usrData1[k].node4;
			check();
			document.getElementById("dropdownMenu2").innerHTML = clicked_id;
			$("#table_body").append(
					"<tr><td>" + clicked_id + "</td><td>" + k + "</td>" + n1
							+ n2 + n3 + n4 + "</tr>");
			document.getElementById("dropdownMenu2").innerHTML = clicked_id;
		}
	}
	function errData1(err) {

	}

}
function init(keys) {

	rootRef1 = database1.ref('USER/user1/LOGS/' + keys[keys.length-1]);
	rootRef1.on('value', gotData1, errData1);
	function gotData1(data) {
		resetTable();
		var usrData1 = data.val();
		var keys1 = Object.keys(usrData1);
		for (var i = 0; i < keys1.length; i++) {
			k = keys1[i];
			n1 = usrData1[k].node1;
			n2 = usrData1[k].node2;
			n3 = usrData1[k].node3;
			n4 = usrData1[k].node4;
			check();
			document.getElementById("dropdownMenu2").innerHTML = keys[keys.length-1];
			$("#table_body").append(
					"<tr><td>" + keys[keys.length-1] + "</td><td>" + k + "</td>" + n1 + n2
							+ n3 + n4 + "</tr>");
			document.getElementById("dropdownMenu2").innerHTML = keys[keys.length-1];
		}
	}
	function errData1(err) {

	}

}

rootRef.on('child_changed', function(data) {
	document.getElementById("mySelect").innerHTML = "";
});

rootRef.on('child_removed', function(data) {
	document.getElementById("mySelect").innerHTML = "";
});

rootRef.on('child_added', function(data) {
	document.getElementById("mySelect").innerHTML = "";
});


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
