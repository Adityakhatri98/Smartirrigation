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

function show() {
	database = firebase.database();
	
	var reff = database.ref('settings/MASTER_MODE/manual');
//	reff.on('value', gotData, errData);
//
//	function gotData(data) {
		
//		var mode = data.val();
		$(document).ready(function() {
			$("#mode").click(function() {
				var a=reff.val();
//				if(a==1){
//					if()
//				}
				if($("input[type=checkbox]").is(":checked")) {
					alert("hello");
					reff.set(1);
//					mode.manual = 1;
					alert("Check box in Checked");
					
				} else {
					reff.set(0);
					alert("Check box is Unchecked");
				}
			});
		});
				
	}
//	function errData(err) {
//		console.log('error!');
//		console.log(err);
//	}
}




