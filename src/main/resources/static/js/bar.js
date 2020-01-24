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
		nodedata[3] = users.node4data;
		cssVar();
				
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
var nodedatadisp = [];
function cssVar() {
	var alpha = 1000;
	for (var j = 0; j < 4; j++) {
		var convert = ((800 - nodedata[j]) / 435) * 100;
		convert = convert.toFixed();
		if (convert < 0) {
			convert = 0;
		}
		if (convert > 100) {
			convert = 100;
		}
		nodedatadisp[j] = convert;
	
		alpha++;
	}
	alpha = 1000;

	CircleBar(".round");
}
function CircleBar(e) {

	var m=document.getElementById('node1');
	m.setAttribute("data-value",nodedatadisp[0]/100); 
	var m=document.getElementById('node2');
	m.setAttribute("data-value",nodedatadisp[1]/100);
	var m=document.getElementById('node3');
	m.setAttribute("data-value",nodedatadisp[2]/100);
	var m=document.getElementById('node4');
	m.setAttribute("data-value",nodedatadisp[3]/100);
	
	$(e)
	  .circleProgress({ fill: { color: "#00EAFF" } })
	  .on("circle-animation-progress", function(_event, _progress, stepValue) {
		$(this)
		  .find("strong")
		  .text(String(parseInt(100 * stepValue)) + "%");
  
	  });
  }
  