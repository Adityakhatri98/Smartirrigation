var firebaseConfig = {
	apiKey : "AIzaSyAS4O2P0xde6bt7KSIARhFBtcIM_uwisTE",
	authDomain : "temp-nodewise.firebaseapp.com",
	databaseURL : "https://temp-nodewise.firebaseio.com",
	projectId : "temp-nodewise",
	storageBucket : "temp-nodewise.appspot.com",
	messagingSenderId : "698349958185",
	appId : "1:698349958185:web:8df63c7d85c0b3dd"
};
firebase.initializeApp(firebaseConfig);

var nodedata = [];
function show() {
	database = firebase.database();
	
	var reff = database.ref('node_data/allnodedata');
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


