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

var nodedata = [];
function show() {
	database = firebase.database();
	
	var reff = database.ref('USER/user1/node_data/allnodedata');
	reff.on('value', gotData, errData);

	function gotData(data) {
		var users = data.val();

		nodedata[0] = users.node1data;
		nodedata[1] = users.node2data;
		nodedata[2] = users.node3data;
		cssVar();
		viewGraph();
	}
	function errData(err) {
		console.log('error!');
		console.log(err);
	}
}

function reload_page() {
	window.location.reload();
	show();
}

function cssVar() {
	var alpha = 1000;
	for (var j = 0; j < 3; j++) {
		var convert = ((800 - nodedata[j]) / 435) * 100;
		convert = convert.toFixed();
		if (convert < 0) {
			convert = 0;
		}
		if (convert > 100) {
			convert = 100;
		}

		var disp = document.getElementById(alpha);
		disp.innerHTML = convert + "%";
		alpha++;
	}
	alpha = 1000;
}

function viewGraph() {
	$('.column').css('height', '0');
	$('table tr').each(function(index) {
		var ha = $(this).children('td').eq(1).text();
		$('#col' + index).animate({
			height : ha
		}, 1500).html("<div>" + ha + "</div>");
	});
}


